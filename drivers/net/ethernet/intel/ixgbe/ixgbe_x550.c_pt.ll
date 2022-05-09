; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ixgbe_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_eeprom_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_link_operations = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%union.anon.121 = type { %struct.ixgbe_hic_phy_activity_req }
%struct.ixgbe_hic_phy_activity_req = type { %struct.ixgbe_hic_hdr, i8, i8, i16, [4 x i32] }
%struct.ixgbe_hic_hdr = type { i8, i8, %union.anon.122, i8 }
%union.anon.122 = type { i8 }
%struct.ixgbe_hw = type { ptr, ptr, %struct.ixgbe_mac_info, %struct.ixgbe_addr_filter_info, %struct.ixgbe_fc_info, %struct.ixgbe_phy_info, %struct.ixgbe_link_info, %struct.ixgbe_eeprom_info, %struct.ixgbe_bus_info, %struct.ixgbe_mbx_info, ptr, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.ixgbe_mac_info = type { %struct.ixgbe_mac_operations, i32, [6 x i8], [6 x i8], [6 x i8], i16, i16, i16, [128 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, %struct.ixgbe_thermal_sensor_data, i8, i8 }
%struct.ixgbe_thermal_sensor_data = type { [3 x %struct.ixgbe_thermal_diode_data] }
%struct.ixgbe_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.ixgbe_addr_filter_info = type { i32, i32, i32, i32, i8, i8 }
%struct.ixgbe_fc_info = type { [8 x i32], [8 x i32], i16, i8, i8, i8, i8, i32, i32 }
%struct.ixgbe_phy_info = type { %struct.ixgbe_phy_operations, %struct.mdio_if_info, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ixgbe_link_info = type { %struct.ixgbe_link_operations, i8 }
%struct.ixgbe_eeprom_info = type { %struct.ixgbe_eeprom_operations, i32, i32, i16, i16, i16, i16 }
%struct.ixgbe_bus_info = type { i32, i32, i32, i8, i8, i8 }
%struct.ixgbe_mbx_info = type { ptr, %struct.ixgbe_mbx_stats, i32, i32, i32, i16 }
%struct.ixgbe_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.ixgbe_hic_drv_info2 = type { %struct.ixgbe_hic_hdr, i8, i8, i8, i8, i8, [39 x i8] }
%struct.ixgbe_hic_disable_rxen = type { %struct.ixgbe_hic_hdr, i8, i8, i16 }
%struct.ixgbe_adapter = type { [128 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i64, i32, i16, i64, i16, i16, i32, [64 x ptr], ptr, [52 x i8], [64 x ptr], i64, i64, i32, [64 x ptr], i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, [64 x ptr], ptr, ptr, %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config, i8, i8, i8, i32, i32, i32, [68 x i8], [5 x %struct.ixgbe_ring_feature], ptr, i32, [120 x i8], %struct.ixgbe_ring, %struct.ixgbe_ring, %struct.ixgbe_hw, i16, %struct.ixgbe_hw_stats, i64, i32, i32, i32, i32, i8, i32, i32, %struct.timer_list, %struct.work_struct, %struct.hlist_head, i32, %union.ixgbe_atr_input, i32, i32, i32, %struct.spinlock, %struct.ixgbe_fcoe, ptr, i32, i16, [32 x i8], i16, i32, i32, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i32, ptr, [2 x i32], i32, ptr, i32, %struct.vf_macvlans, ptr, i32, i32, ptr, ptr, ptr, ptr, i8, [2 x i32], [10 x ptr], i32, [512 x i8], ptr, ptr, [88 x i8] }
%struct.ixgbe_dcb_config = type { %struct.dcb_support, %struct.dcb_num_tcs, [8 x %struct.tc_configuration], [2 x [8 x i8]], i8, i32, i32 }
%struct.dcb_support = type { i32, i8, i8 }
%struct.dcb_num_tcs = type { i8, i8 }
%struct.tc_configuration = type { [2 x %struct.tc_bw_alloc], i32, i16, i8 }
%struct.tc_bw_alloc = type { i8, i8, i8, i8, i16, i16, i32 }
%struct.ixgbe_ring_feature = type { i16, i16, i16, i16, [120 x i8] }
%struct.ixgbe_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.125, i32, ptr, i32, i32, i16, i8, i8, i16, i16, i32, %union.anon.132, i8, %struct.ixgbe_queue_stats, %struct.u64_stats_sync, %union.anon.134, i16, [86 x i8], %struct.xdp_rxq_info, %struct.spinlock, ptr, i16, i16, [76 x i8] }
%union.anon.125 = type { ptr }
%union.anon.132 = type { i16 }
%struct.ixgbe_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.134 = type { %struct.ixgbe_rx_queue_stats }
%struct.ixgbe_rx_queue_stats = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ixgbe_hw_stats = type { i64, i64, i64, i64, i64, [8 x i64], i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [16 x i64], [8 x i64], [16 x i64], [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%union.ixgbe_atr_input = type { %struct.anon.135 }
%struct.anon.135 = type { i8, i8, i16, [4 x i32], [4 x i32], i16, i16, i16, i16 }
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
%struct.ixgbe_hic_read_shadow_ram = type { %union.ixgbe_hic_hdr2, i32, i16, i16, i16, i16 }
%union.ixgbe_hic_hdr2 = type { %struct.ixgbe_hic_hdr2_req }
%struct.ixgbe_hic_hdr2_req = type { i8, i8, i8, i8 }
%struct.ixgbe_hic_write_shadow_ram = type { %union.ixgbe_hic_hdr2, i32, i16, i16, i16, i16 }
%struct.ixgbe_hic_phy_token_req = type { %struct.ixgbe_hic_hdr, i8, i8, i16 }
%union.anon.140 = type { %struct.ixgbe_hic_internal_phy_resp, [8 x i8] }
%struct.ixgbe_hic_internal_phy_resp = type { %struct.ixgbe_hic_hdr, i32 }
%struct.ixgbe_hic_internal_phy_req = type <{ %struct.ixgbe_hic_hdr, i8, i8, i16, i16, i32, i16 }>

@mac_ops_X550 = internal constant { %struct.ixgbe_mac_operations, [80 x i8] } { %struct.ixgbe_mac_operations { ptr @ixgbe_init_hw_generic, ptr @ixgbe_reset_hw_X540, ptr @ixgbe_start_hw_X540, ptr @ixgbe_clear_hw_cntrs_generic, ptr @ixgbe_get_media_type_X540, ptr @ixgbe_get_mac_addr_generic, ptr @ixgbe_get_san_mac_addr_generic, ptr @ixgbe_get_device_caps_generic, ptr @ixgbe_get_wwn_prefix_generic, ptr @ixgbe_stop_adapter_generic, ptr @ixgbe_get_bus_info_generic, ptr @ixgbe_set_lan_id_multi_port_pcie, ptr null, ptr null, ptr null, ptr @ixgbe_disable_rx_buff_generic, ptr @ixgbe_enable_rx_buff_generic, ptr @ixgbe_enable_rx_dma_generic, ptr @ixgbe_acquire_swfw_sync_X540, ptr @ixgbe_release_swfw_sync_X540, ptr @ixgbe_init_swfw_sync_X540, ptr @prot_autoc_read_generic, ptr @prot_autoc_write_generic, ptr null, ptr null, ptr null, ptr null, ptr @ixgbe_setup_mac_link_X540, ptr null, ptr @ixgbe_check_mac_link_generic, ptr @ixgbe_get_copper_link_capabilities_generic, ptr null, ptr @ixgbe_set_rxpba_generic, ptr @ixgbe_led_on_generic, ptr @ixgbe_led_off_generic, ptr @ixgbe_blink_led_start_X540, ptr @ixgbe_blink_led_stop_X540, ptr @ixgbe_init_led_link_act_generic, ptr @ixgbe_set_rar_generic, ptr @ixgbe_clear_rar_generic, ptr @ixgbe_set_vmdq_generic, ptr @ixgbe_set_vmdq_san_mac_generic, ptr @ixgbe_clear_vmdq_generic, ptr @ixgbe_init_rx_addrs_generic, ptr @ixgbe_update_mc_addr_list_generic, ptr @ixgbe_enable_mc_generic, ptr @ixgbe_disable_mc_generic, ptr @ixgbe_clear_vfta_generic, ptr @ixgbe_set_vfta_generic, ptr @ixgbe_init_uta_tables_generic, ptr @ixgbe_set_mac_anti_spoofing, ptr @ixgbe_set_vlan_anti_spoofing, ptr @ixgbe_fc_enable_generic, ptr @ixgbe_setup_fc_generic, ptr @ixgbe_fc_autoneg, ptr @ixgbe_set_fw_drv_ver_x550, ptr null, ptr null, ptr @ixgbe_fw_recovery_mode_X550, ptr @ixgbe_disable_rx_x550, ptr @ixgbe_enable_rx_generic, ptr @ixgbe_set_source_address_pruning_X550, ptr @ixgbe_set_ethertype_anti_spoofing_X550, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@eeprom_ops_X550 = internal constant { %struct.ixgbe_eeprom_operations, [32 x i8] } { %struct.ixgbe_eeprom_operations { ptr @ixgbe_init_eeprom_params_X550, ptr @ixgbe_read_ee_hostif_X550, ptr @ixgbe_read_ee_hostif_buffer_X550, ptr @ixgbe_write_ee_hostif_X550, ptr @ixgbe_write_ee_hostif_buffer_X550, ptr @ixgbe_validate_eeprom_checksum_X550, ptr @ixgbe_update_eeprom_checksum_X550, ptr @ixgbe_calc_eeprom_checksum_X550 }, [32 x i8] zeroinitializer }, align 32
@phy_ops_X550 = internal constant { %struct.ixgbe_phy_operations, [36 x i8] } { %struct.ixgbe_phy_operations { ptr @ixgbe_identify_phy_generic, ptr @ixgbe_identify_module_generic, ptr null, ptr null, ptr @ixgbe_read_phy_reg_generic, ptr @ixgbe_write_phy_reg_generic, ptr null, ptr null, ptr @ixgbe_setup_phy_link_generic, ptr null, ptr @ixgbe_setup_phy_link_speed_generic, ptr null, ptr @ixgbe_read_i2c_byte_generic, ptr @ixgbe_write_i2c_byte_generic, ptr @ixgbe_read_i2c_sff8472_generic, ptr @ixgbe_read_i2c_eeprom_generic, ptr @ixgbe_write_i2c_eeprom_generic, ptr @ixgbe_tn_check_overtemp, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mbx_ops_generic = external dso_local constant %struct.ixgbe_mbx_operations, align 4
@ixgbe_mvals_X550 = internal constant { [23 x i32], [36 x i8] } { [23 x i32] [i32 65552, i32 65564, i32 66048, i32 65872, i32 65856, i32 65888, i32 65864, i32 2, i32 4, i32 8, i32 33554432, i32 67108864, i32 134217728, i32 70920, i32 70928, i32 16384, i32 512, i32 4096, i32 1024, i32 2048, i32 256, i32 8192, i32 89948], [36 x i8] zeroinitializer }, align 32
@ixgbe_X550_info = dso_local constant { %struct.ixgbe_info, [32 x i8] } { %struct.ixgbe_info { i32 4, ptr @ixgbe_get_invariants_X540, ptr @mac_ops_X550, ptr @eeprom_ops_X550, ptr @phy_ops_X550, ptr @mbx_ops_generic, ptr null, ptr @ixgbe_mvals_X550 }, [32 x i8] zeroinitializer }, align 32
@mac_ops_X550EM_x = internal constant { %struct.ixgbe_mac_operations, [80 x i8] } { %struct.ixgbe_mac_operations { ptr @ixgbe_init_hw_generic, ptr @ixgbe_reset_hw_X550em, ptr @ixgbe_start_hw_X540, ptr @ixgbe_clear_hw_cntrs_generic, ptr @ixgbe_get_media_type_X550em, ptr @ixgbe_get_mac_addr_generic, ptr null, ptr @ixgbe_get_device_caps_generic, ptr null, ptr @ixgbe_stop_adapter_generic, ptr @ixgbe_get_bus_info_X550em, ptr @ixgbe_set_lan_id_multi_port_pcie, ptr null, ptr null, ptr @ixgbe_setup_sfp_modules_X550em, ptr @ixgbe_disable_rx_buff_generic, ptr @ixgbe_enable_rx_buff_generic, ptr @ixgbe_enable_rx_dma_generic, ptr @ixgbe_acquire_swfw_sync_X550em, ptr @ixgbe_release_swfw_sync_X550em, ptr @ixgbe_init_swfw_sync_X540, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ixgbe_setup_mac_link_X540, ptr null, ptr @ixgbe_check_mac_link_generic, ptr @ixgbe_get_link_capabilities_X550em, ptr null, ptr @ixgbe_set_rxpba_generic, ptr @ixgbe_led_on_t_x550em, ptr @ixgbe_led_off_t_x550em, ptr @ixgbe_blink_led_start_X540, ptr @ixgbe_blink_led_stop_X540, ptr @ixgbe_init_led_link_act_generic, ptr @ixgbe_set_rar_generic, ptr @ixgbe_clear_rar_generic, ptr @ixgbe_set_vmdq_generic, ptr @ixgbe_set_vmdq_san_mac_generic, ptr @ixgbe_clear_vmdq_generic, ptr @ixgbe_init_rx_addrs_generic, ptr @ixgbe_update_mc_addr_list_generic, ptr @ixgbe_enable_mc_generic, ptr @ixgbe_disable_mc_generic, ptr @ixgbe_clear_vfta_generic, ptr @ixgbe_set_vfta_generic, ptr @ixgbe_init_uta_tables_generic, ptr @ixgbe_set_mac_anti_spoofing, ptr @ixgbe_set_vlan_anti_spoofing, ptr @ixgbe_fc_enable_generic, ptr null, ptr @ixgbe_fc_autoneg, ptr @ixgbe_set_fw_drv_ver_x550, ptr null, ptr null, ptr @ixgbe_fw_recovery_mode_X550, ptr @ixgbe_disable_rx_x550, ptr @ixgbe_enable_rx_generic, ptr @ixgbe_set_source_address_pruning_X550, ptr @ixgbe_set_ethertype_anti_spoofing_X550, ptr null, ptr null, ptr null, ptr @ixgbe_read_iosf_sb_reg_x550, ptr @ixgbe_write_iosf_sb_reg_x550 }, [80 x i8] zeroinitializer }, align 32
@eeprom_ops_X550EM_x = internal constant { %struct.ixgbe_eeprom_operations, [32 x i8] } { %struct.ixgbe_eeprom_operations { ptr @ixgbe_init_eeprom_params_X540, ptr @ixgbe_read_ee_hostif_X550, ptr @ixgbe_read_ee_hostif_buffer_X550, ptr @ixgbe_write_ee_hostif_X550, ptr @ixgbe_write_ee_hostif_buffer_X550, ptr @ixgbe_validate_eeprom_checksum_X550, ptr @ixgbe_update_eeprom_checksum_X550, ptr @ixgbe_calc_eeprom_checksum_X550 }, [32 x i8] zeroinitializer }, align 32
@phy_ops_X550EM_x = internal constant { %struct.ixgbe_phy_operations, [36 x i8] } { %struct.ixgbe_phy_operations { ptr @ixgbe_identify_phy_x550em, ptr @ixgbe_identify_module_generic, ptr @ixgbe_init_phy_ops_X550em, ptr null, ptr @ixgbe_read_phy_reg_generic, ptr @ixgbe_write_phy_reg_generic, ptr null, ptr null, ptr @ixgbe_setup_phy_link_generic, ptr null, ptr @ixgbe_setup_phy_link_speed_generic, ptr null, ptr @ixgbe_read_i2c_byte_generic, ptr @ixgbe_write_i2c_byte_generic, ptr @ixgbe_read_i2c_sff8472_generic, ptr @ixgbe_read_i2c_eeprom_generic, ptr @ixgbe_write_i2c_eeprom_generic, ptr @ixgbe_tn_check_overtemp, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@link_ops_x550em_x = internal constant { %struct.ixgbe_link_operations, [16 x i8] } { %struct.ixgbe_link_operations { ptr @ixgbe_read_i2c_combined_generic, ptr @ixgbe_read_i2c_combined_generic_unlocked, ptr @ixgbe_write_i2c_combined_generic, ptr @ixgbe_write_i2c_combined_generic_unlocked }, [16 x i8] zeroinitializer }, align 32
@ixgbe_mvals_X550EM_x = internal constant { [23 x i32], [36 x i8] } { [23 x i32] [i32 65552, i32 65564, i32 66048, i32 65872, i32 65856, i32 65888, i32 65864, i32 2, i32 4, i32 8, i32 33554432, i32 67108864, i32 134217728, i32 70920, i32 70928, i32 16384, i32 512, i32 4096, i32 1024, i32 2048, i32 256, i32 8192, i32 89948], [36 x i8] zeroinitializer }, align 32
@ixgbe_X550EM_x_info = dso_local constant { %struct.ixgbe_info, [32 x i8] } { %struct.ixgbe_info { i32 5, ptr @ixgbe_get_invariants_X550_x, ptr @mac_ops_X550EM_x, ptr @eeprom_ops_X550EM_x, ptr @phy_ops_X550EM_x, ptr @mbx_ops_generic, ptr @link_ops_x550em_x, ptr @ixgbe_mvals_X550EM_x }, [32 x i8] zeroinitializer }, align 32
@mac_ops_X550EM_x_fw = internal constant { %struct.ixgbe_mac_operations, [80 x i8] } { %struct.ixgbe_mac_operations { ptr @ixgbe_init_hw_generic, ptr @ixgbe_reset_hw_X550em, ptr @ixgbe_start_hw_X540, ptr @ixgbe_clear_hw_cntrs_generic, ptr @ixgbe_get_media_type_X550em, ptr @ixgbe_get_mac_addr_generic, ptr null, ptr @ixgbe_get_device_caps_generic, ptr null, ptr @ixgbe_stop_adapter_generic, ptr @ixgbe_get_bus_info_X550em, ptr @ixgbe_set_lan_id_multi_port_pcie, ptr null, ptr null, ptr @ixgbe_setup_sfp_modules_X550em, ptr @ixgbe_disable_rx_buff_generic, ptr @ixgbe_enable_rx_buff_generic, ptr @ixgbe_enable_rx_dma_generic, ptr @ixgbe_acquire_swfw_sync_X550em, ptr @ixgbe_release_swfw_sync_X550em, ptr @ixgbe_init_swfw_sync_X540, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ixgbe_setup_mac_link_X540, ptr null, ptr @ixgbe_check_mac_link_generic, ptr @ixgbe_get_link_capabilities_X550em, ptr null, ptr @ixgbe_set_rxpba_generic, ptr null, ptr null, ptr @ixgbe_blink_led_start_X540, ptr @ixgbe_blink_led_stop_X540, ptr null, ptr @ixgbe_set_rar_generic, ptr @ixgbe_clear_rar_generic, ptr @ixgbe_set_vmdq_generic, ptr @ixgbe_set_vmdq_san_mac_generic, ptr @ixgbe_clear_vmdq_generic, ptr @ixgbe_init_rx_addrs_generic, ptr @ixgbe_update_mc_addr_list_generic, ptr @ixgbe_enable_mc_generic, ptr @ixgbe_disable_mc_generic, ptr @ixgbe_clear_vfta_generic, ptr @ixgbe_set_vfta_generic, ptr @ixgbe_init_uta_tables_generic, ptr @ixgbe_set_mac_anti_spoofing, ptr @ixgbe_set_vlan_anti_spoofing, ptr @ixgbe_fc_enable_generic, ptr null, ptr @ixgbe_fc_autoneg, ptr @ixgbe_set_fw_drv_ver_x550, ptr null, ptr null, ptr @ixgbe_fw_recovery_mode_X550, ptr @ixgbe_disable_rx_x550, ptr @ixgbe_enable_rx_generic, ptr @ixgbe_set_source_address_pruning_X550, ptr @ixgbe_set_ethertype_anti_spoofing_X550, ptr null, ptr null, ptr null, ptr @ixgbe_read_iosf_sb_reg_x550, ptr @ixgbe_write_iosf_sb_reg_x550 }, [80 x i8] zeroinitializer }, align 32
@phy_ops_x550em_x_fw = internal constant { %struct.ixgbe_phy_operations, [36 x i8] } { %struct.ixgbe_phy_operations { ptr @ixgbe_identify_phy_x550em, ptr @ixgbe_identify_module_generic, ptr @ixgbe_init_phy_ops_X550em, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ixgbe_setup_phy_link_generic, ptr null, ptr @ixgbe_setup_phy_link_speed_generic, ptr null, ptr @ixgbe_read_i2c_byte_generic, ptr @ixgbe_write_i2c_byte_generic, ptr @ixgbe_read_i2c_sff8472_generic, ptr @ixgbe_read_i2c_eeprom_generic, ptr @ixgbe_write_i2c_eeprom_generic, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ixgbe_x550em_x_fw_info = dso_local constant { %struct.ixgbe_info, [32 x i8] } { %struct.ixgbe_info { i32 5, ptr @ixgbe_get_invariants_X550_x_fw, ptr @mac_ops_X550EM_x_fw, ptr @eeprom_ops_X550EM_x, ptr @phy_ops_x550em_x_fw, ptr @mbx_ops_generic, ptr null, ptr @ixgbe_mvals_X550EM_x }, [32 x i8] zeroinitializer }, align 32
@mac_ops_x550em_a = internal constant { %struct.ixgbe_mac_operations, [80 x i8] } { %struct.ixgbe_mac_operations { ptr @ixgbe_init_hw_generic, ptr @ixgbe_reset_hw_X550em, ptr @ixgbe_start_hw_X540, ptr @ixgbe_clear_hw_cntrs_generic, ptr @ixgbe_get_media_type_X550em, ptr @ixgbe_get_mac_addr_generic, ptr null, ptr @ixgbe_get_device_caps_generic, ptr null, ptr @ixgbe_stop_adapter_generic, ptr @ixgbe_get_bus_info_X550em, ptr @ixgbe_set_lan_id_multi_port_pcie, ptr null, ptr null, ptr @ixgbe_setup_sfp_modules_X550em, ptr @ixgbe_disable_rx_buff_generic, ptr @ixgbe_enable_rx_buff_generic, ptr @ixgbe_enable_rx_dma_generic, ptr @ixgbe_acquire_swfw_sync_x550em_a, ptr @ixgbe_release_swfw_sync_x550em_a, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ixgbe_setup_mac_link_X540, ptr null, ptr @ixgbe_check_mac_link_generic, ptr @ixgbe_get_link_capabilities_X550em, ptr null, ptr @ixgbe_set_rxpba_generic, ptr @ixgbe_led_on_t_x550em, ptr @ixgbe_led_off_t_x550em, ptr @ixgbe_blink_led_start_X540, ptr @ixgbe_blink_led_stop_X540, ptr @ixgbe_init_led_link_act_generic, ptr @ixgbe_set_rar_generic, ptr @ixgbe_clear_rar_generic, ptr @ixgbe_set_vmdq_generic, ptr @ixgbe_set_vmdq_san_mac_generic, ptr @ixgbe_clear_vmdq_generic, ptr @ixgbe_init_rx_addrs_generic, ptr @ixgbe_update_mc_addr_list_generic, ptr @ixgbe_enable_mc_generic, ptr @ixgbe_disable_mc_generic, ptr @ixgbe_clear_vfta_generic, ptr @ixgbe_set_vfta_generic, ptr @ixgbe_init_uta_tables_generic, ptr @ixgbe_set_mac_anti_spoofing, ptr @ixgbe_set_vlan_anti_spoofing, ptr @ixgbe_fc_enable_generic, ptr @ixgbe_setup_fc_x550em, ptr @ixgbe_fc_autoneg, ptr @ixgbe_set_fw_drv_ver_x550, ptr null, ptr null, ptr @ixgbe_fw_recovery_mode_X550, ptr @ixgbe_disable_rx_x550, ptr @ixgbe_enable_rx_generic, ptr @ixgbe_set_source_address_pruning_X550, ptr @ixgbe_set_ethertype_anti_spoofing_X550, ptr null, ptr null, ptr null, ptr @ixgbe_read_iosf_sb_reg_x550a, ptr @ixgbe_write_iosf_sb_reg_x550a }, [80 x i8] zeroinitializer }, align 32
@phy_ops_x550em_a = internal constant { %struct.ixgbe_phy_operations, [36 x i8] } { %struct.ixgbe_phy_operations { ptr @ixgbe_identify_phy_x550em, ptr @ixgbe_identify_module_generic, ptr @ixgbe_init_phy_ops_X550em, ptr null, ptr @ixgbe_read_phy_reg_x550a, ptr @ixgbe_write_phy_reg_x550a, ptr @ixgbe_read_phy_reg_mdi, ptr @ixgbe_write_phy_reg_mdi, ptr @ixgbe_setup_phy_link_generic, ptr null, ptr @ixgbe_setup_phy_link_speed_generic, ptr null, ptr @ixgbe_read_i2c_byte_generic, ptr @ixgbe_write_i2c_byte_generic, ptr @ixgbe_read_i2c_sff8472_generic, ptr @ixgbe_read_i2c_eeprom_generic, ptr @ixgbe_write_i2c_eeprom_generic, ptr @ixgbe_tn_check_overtemp, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ixgbe_mvals_x550em_a = internal constant { [23 x i32], [36 x i8] } { [23 x i32] [i32 90104, i32 89960, i32 89956, i32 90092, i32 89968, i32 89976, i32 89972, i32 2, i32 4, i32 8, i32 33554432, i32 67108864, i32 134217728, i32 70920, i32 70928, i32 16384, i32 512, i32 4096, i32 1024, i32 2048, i32 256, i32 8192, i32 89948], [36 x i8] zeroinitializer }, align 32
@ixgbe_x550em_a_info = dso_local constant { %struct.ixgbe_info, [32 x i8] } { %struct.ixgbe_info { i32 6, ptr @ixgbe_get_invariants_X550_a, ptr @mac_ops_x550em_a, ptr @eeprom_ops_X550EM_x, ptr @phy_ops_x550em_a, ptr @mbx_ops_generic, ptr null, ptr @ixgbe_mvals_x550em_a }, [32 x i8] zeroinitializer }, align 32
@mac_ops_x550em_a_fw = internal constant { %struct.ixgbe_mac_operations, [80 x i8] } { %struct.ixgbe_mac_operations { ptr @ixgbe_init_hw_generic, ptr @ixgbe_reset_hw_X550em, ptr @ixgbe_start_hw_X540, ptr @ixgbe_clear_hw_cntrs_generic, ptr @ixgbe_get_media_type_X550em, ptr @ixgbe_get_mac_addr_generic, ptr null, ptr @ixgbe_get_device_caps_generic, ptr null, ptr @ixgbe_stop_adapter_generic, ptr @ixgbe_get_bus_info_X550em, ptr @ixgbe_set_lan_id_multi_port_pcie, ptr null, ptr null, ptr @ixgbe_setup_sfp_modules_X550em, ptr @ixgbe_disable_rx_buff_generic, ptr @ixgbe_enable_rx_buff_generic, ptr @ixgbe_enable_rx_dma_generic, ptr @ixgbe_acquire_swfw_sync_x550em_a, ptr @ixgbe_release_swfw_sync_x550em_a, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ixgbe_check_mac_link_generic, ptr @ixgbe_get_link_capabilities_X550em, ptr null, ptr @ixgbe_set_rxpba_generic, ptr @ixgbe_led_on_generic, ptr @ixgbe_led_off_generic, ptr @ixgbe_blink_led_start_X540, ptr @ixgbe_blink_led_stop_X540, ptr @ixgbe_init_led_link_act_generic, ptr @ixgbe_set_rar_generic, ptr @ixgbe_clear_rar_generic, ptr @ixgbe_set_vmdq_generic, ptr @ixgbe_set_vmdq_san_mac_generic, ptr @ixgbe_clear_vmdq_generic, ptr @ixgbe_init_rx_addrs_generic, ptr @ixgbe_update_mc_addr_list_generic, ptr @ixgbe_enable_mc_generic, ptr @ixgbe_disable_mc_generic, ptr @ixgbe_clear_vfta_generic, ptr @ixgbe_set_vfta_generic, ptr @ixgbe_init_uta_tables_generic, ptr @ixgbe_set_mac_anti_spoofing, ptr @ixgbe_set_vlan_anti_spoofing, ptr @ixgbe_fc_enable_generic, ptr @ixgbe_setup_fc_x550em, ptr @ixgbe_fc_autoneg, ptr @ixgbe_set_fw_drv_ver_x550, ptr null, ptr null, ptr @ixgbe_fw_recovery_mode_X550, ptr @ixgbe_disable_rx_x550, ptr @ixgbe_enable_rx_generic, ptr @ixgbe_set_source_address_pruning_X550, ptr @ixgbe_set_ethertype_anti_spoofing_X550, ptr null, ptr null, ptr null, ptr @ixgbe_read_iosf_sb_reg_x550a, ptr @ixgbe_write_iosf_sb_reg_x550a }, [80 x i8] zeroinitializer }, align 32
@phy_ops_x550em_a_fw = internal constant { %struct.ixgbe_phy_operations, [36 x i8] } { %struct.ixgbe_phy_operations { ptr @ixgbe_identify_phy_fw, ptr @ixgbe_identify_module_generic, ptr @ixgbe_init_phy_ops_X550em, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ixgbe_setup_phy_link_generic, ptr null, ptr @ixgbe_setup_phy_link_speed_generic, ptr null, ptr @ixgbe_read_i2c_byte_generic, ptr @ixgbe_write_i2c_byte_generic, ptr @ixgbe_read_i2c_sff8472_generic, ptr @ixgbe_read_i2c_eeprom_generic, ptr @ixgbe_write_i2c_eeprom_generic, ptr @ixgbe_check_overtemp_fw, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ixgbe_x550em_a_fw_info = dso_local constant { %struct.ixgbe_info, [32 x i8] } { %struct.ixgbe_info { i32 6, ptr @ixgbe_get_invariants_X550_a_fw, ptr @mac_ops_x550em_a_fw, ptr @eeprom_ops_X550EM_x, ptr @phy_ops_x550em_a_fw, ptr @mbx_ops_generic, ptr null, ptr @ixgbe_mvals_x550em_a }, [32 x i8] zeroinitializer }, align 32
@ixgbe_init_eeprom_params_X550.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ixgbe\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ixgbe_init_eeprom_params_X550\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Eeprom params: type = %d, size = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ixgbe_read_ee_hostif_buffer_X550.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ixgbe_read_ee_hostif_buffer_X550\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"EEPROM read buffer - semaphore failed\0A\00", [57 x i8] zeroinitializer }, align 32
@ixgbe_read_ee_hostif_buffer_X550.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 -34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Host interface command failed\0A\00", [33 x i8] zeroinitializer }, align 32
@ixgbe_write_ee_hostif_X550.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 1, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ixgbe_write_ee_hostif_X550\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"write ee hostif failed to get semaphore\00", [56 x i8] zeroinitializer }, align 32
@ixgbe_write_ee_hostif_buffer_X550.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 1, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ixgbe_write_ee_hostif_buffer_X550\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"EEPROM write buffer - semaphore failed\0A\00", [56 x i8] zeroinitializer }, align 32
@ixgbe_write_ee_hostif_buffer_X550.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 1, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Eeprom buffered write failed\0A\00", [34 x i8] zeroinitializer }, align 32
@ixgbe_validate_eeprom_checksum_X550.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 1, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ixgbe_validate_eeprom_checksum_X550\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EEPROM read failed\0A\00", [44 x i8] zeroinitializer }, align 32
@ixgbe_validate_eeprom_checksum_X550.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 1, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid EEPROM checksum\00", [40 x i8] zeroinitializer }, align 32
@ixgbe_update_eeprom_checksum_X550.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.13, i8 1, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ixgbe_update_eeprom_checksum_X550\00", [62 x i8] zeroinitializer }, align 32
@ixgbe_calc_checksum_X550.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ixgbe_calc_checksum_X550\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read EEPROM image\0A\00", [35 x i8] zeroinitializer }, align 32
@ixgbe_checksum_ptr_x550.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.17, i8 0, i8 -22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ixgbe_checksum_ptr_x550\00", [40 x i8] zeroinitializer }, align 32
@ixgbe_checksum_ptr_x550.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.17, i8 0, i8 -12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_reset_hw_X550em.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 3, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ixgbe_reset_hw_X550em\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"semaphore failed with %d\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ixgbe_reset_hw_X550em.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 3, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Reset polling failed to complete.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ixgbe_fc_rx_pause not valid in strict IEEE mode\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Flow control param set incorrectly\0A\00", [60 x i8] zeroinitializer }, align 32
@ixgbe_restart_an_internal_phy_x550em.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 1, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ixgbe_restart_an_internal_phy_x550em\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Auto-negotiation did not complete\0A\00", [61 x i8] zeroinitializer }, align 32
@ixgbe_restart_an_internal_phy_x550em.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 1, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"rx_pause not valid in strict IEEE mode\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Flow control autoneg is disabled\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"The link is down\00", [47 x i8] zeroinitializer }, align 32
@ixgbe_fc_autoneg_backplane_x550em_a.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 2, i8 -27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ixgbe_fc_autoneg_backplane_x550em_a\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Auto-Negotiation did not complete\0A\00", [61 x i8] zeroinitializer }, align 32
@ixgbe_fc_autoneg_backplane_x550em_a.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 2, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_fc_autoneg_backplane_x550em_a.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 2, i8 -22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_setup_fc_backplane_x550em_a.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.30, i8 3, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ixgbe_setup_fc_backplane_x550em_a\00", [62 x i8] zeroinitializer }, align 32
@ixgbe_read_iosf_sb_reg_x550.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ixgbe_read_iosf_sb_reg_x550\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to read, error %x\0A\00", [38 x i8] zeroinitializer }, align 32
@ixgbe_iosf_wait.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 -87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ixgbe_iosf_wait\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IOSF wait timed out\0A\00", [43 x i8] zeroinitializer }, align 32
@ixgbe_write_iosf_sb_reg_x550.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 1, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ixgbe_write_iosf_sb_reg_x550\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to write, error %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"semaphore failed with %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CS4227 reset failed: %d\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CS4227 reset did not complete\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CS4227 EEPROM did not load successfully\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"port expander access failed with %d\0A\00", [59 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_calc_checksum_X550 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 36, i16 8, i16 8], [26 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_setup_fw_link = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 131072, i32 65536, i32 196608], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967279]
@__sancov_gen_cov_switch_values.45 = internal global [17 x i64] [i64 15, i64 16, i64 5546, i64 5547, i64 5548, i64 5549, i64 5550, i64 5552, i64 5570, i64 5571, i64 5572, i64 5574, i64 5575, i64 5576, i64 5582, i64 5604, i64 5605]
@__sancov_gen_cov_switch_values.46 = internal global [13 x i64] [i64 11, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 11, i64 12, i64 13, i64 14, i64 65534]
@__sancov_gen_cov_switch_values.47 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 5, i64 6, i64 8, i64 26]
@__sancov_gen_cov_switch_values.48 = internal global [9 x i64] [i64 7, i64 16, i64 5549, i64 5574, i64 5575, i64 5576, i64 5582, i64 5604, i64 5605]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 16, i64 5547, i64 5552, i64 5570, i64 5571]
@__sancov_gen_cov_switch_values.53 = internal global [13 x i64] [i64 11, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 11, i64 12, i64 13, i64 14, i64 65534]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 128]
@__sancov_gen_cov_switch_values.55 = internal global [13 x i64] [i64 11, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 11, i64 12, i64 13, i64 14, i64 65534]
@__sancov_gen_cov_switch_values.56 = internal global [13 x i64] [i64 11, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 11, i64 12, i64 13, i64 14, i64 65534]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 128]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [15 x i64] [i64 13, i64 16, i64 5546, i64 5547, i64 5548, i64 5549, i64 5550, i64 5552, i64 5570, i64 5571, i64 5572, i64 5576, i64 5582, i64 5604, i64 5605]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 4951, i64 23205]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967279]
@__sancov_gen_cov_switch_values.62 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 5, i64 6, i64 7, i64 8, i64 26, i64 27]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"mac_ops_X550\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3842, i32 42 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"eeprom_ops_X550\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3959, i32 45 }
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"phy_ops_X550\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3981, i32 42 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"ixgbe_mvals_X550\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 4039, i32 18 }
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"ixgbe_X550_info\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 4051, i32 25 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"mac_ops_X550EM_x\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3864, i32 42 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"eeprom_ops_X550EM_x\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3964, i32 45 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"phy_ops_X550EM_x\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3990, i32 42 }
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"link_ops_x550em_x\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 4032, i32 43 }
@___asan_gen_.93 = private unnamed_addr constant [21 x i8] c"ixgbe_mvals_X550EM_x\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 4043, i32 18 }
@___asan_gen_.96 = private unnamed_addr constant [20 x i8] c"ixgbe_X550EM_x_info\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 4061, i32 25 }
@___asan_gen_.99 = private unnamed_addr constant [20 x i8] c"mac_ops_X550EM_x_fw\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3886, i32 42 }
@___asan_gen_.102 = private unnamed_addr constant [20 x i8] c"phy_ops_x550em_x_fw\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3999, i32 42 }
@___asan_gen_.105 = private unnamed_addr constant [23 x i8] c"ixgbe_x550em_x_fw_info\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 4072, i32 25 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"mac_ops_x550em_a\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3908, i32 42 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"phy_ops_x550em_a\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 4010, i32 42 }
@___asan_gen_.114 = private unnamed_addr constant [21 x i8] c"ixgbe_mvals_x550em_a\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 4047, i32 18 }
@___asan_gen_.117 = private unnamed_addr constant [20 x i8] c"ixgbe_x550em_a_info\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 4082, i32 25 }
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c"mac_ops_x550em_a_fw\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3929, i32 42 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"phy_ops_x550em_a_fw\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 4021, i32 42 }
@___asan_gen_.126 = private unnamed_addr constant [23 x i8] c"ixgbe_x550em_a_fw_info\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 4092, i32 25 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 644, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 865, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 890, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1205, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1362, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1370, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1132, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1152, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1323, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1009, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 939, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3453, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3473, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 2859, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 2894, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1515, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 570, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 2949, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 2955, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 2965, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3583, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 717, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 677, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1417, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 235, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 264, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 208, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 214, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.256 = private constant [49 x i8] c"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 126, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [38 x i8] c"switch.table.ixgbe_calc_checksum_X550\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [33 x i8] c"switch.table.ixgbe_setup_fw_link\00", align 1
@llvm.compiler.used = appending global [66 x ptr] [ptr @mac_ops_X550, ptr @eeprom_ops_X550, ptr @phy_ops_X550, ptr @ixgbe_mvals_X550, ptr @ixgbe_X550_info, ptr @mac_ops_X550EM_x, ptr @eeprom_ops_X550EM_x, ptr @phy_ops_X550EM_x, ptr @link_ops_x550em_x, ptr @ixgbe_mvals_X550EM_x, ptr @ixgbe_X550EM_x_info, ptr @mac_ops_X550EM_x_fw, ptr @phy_ops_x550em_x_fw, ptr @ixgbe_x550em_x_fw_info, ptr @mac_ops_x550em_a, ptr @phy_ops_x550em_a, ptr @ixgbe_mvals_x550em_a, ptr @ixgbe_x550em_a_info, ptr @mac_ops_x550em_a_fw, ptr @phy_ops_x550em_a_fw, ptr @ixgbe_x550em_a_fw_info, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @switch.table.ixgbe_calc_checksum_X550, ptr @switch.table.ixgbe_setup_fw_link], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_ops_X550 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_ops_X550 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_ops_X550 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_mvals_X550 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_X550_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_ops_X550EM_x to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_ops_X550EM_x to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_ops_X550EM_x to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_ops_x550em_x to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_mvals_X550EM_x to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_X550EM_x_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_ops_X550EM_x_fw to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_ops_x550em_x_fw to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_x550em_x_fw_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_ops_x550em_a to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_ops_x550em_a to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_mvals_x550em_a to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_x550em_a_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_ops_x550em_a_fw to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_ops_x550em_a_fw to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_x550em_a_fw_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_calc_checksum_X550 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_setup_fw_link to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_fw_phy_activity(ptr noundef %hw, i16 noundef zeroext %activity, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %hic = alloca %union.anon.121, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hic) #7
  %0 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %hic, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %hic, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %hic, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic, i32 0, i32 3
  %5 = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic, i32 0, i32 4
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %6 = call i16 @llvm.bswap.i16(i16 %activity)
  br label %do.body

do.body:                                          ; preds = %if.end19.do.body_crit_edge, %entry
  %retries.0 = phi i16 [ 50, %entry ], [ %dec, %if.end19.do.body_crit_edge ]
  %7 = ptrtoint ptr %hic to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %hic, align 8
  store i8 5, ptr %hic, align 8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 20, ptr %0, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %2, align 1
  %10 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lan_id, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %6, ptr %4, align 2
  %14 = call ptr @memcpy(ptr %5, ptr %data, i32 16)
  %call = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %hic, i32 noundef 24, i32 noundef 500, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %do.body
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp6 = icmp eq i8 %16, 1
  br i1 %cmp6, label %for.body12.preheader, label %if.end19

for.body12.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = call ptr @memcpy(ptr %data, ptr %3, i32 16)
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #7
  %dec = add nsw i16 %retries.0, -1
  %cmp21.not = icmp eq i16 %dec, 0
  br i1 %cmp21.not, label %if.end19.cleanup_crit_edge, label %if.end19.do.body_crit_edge

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19.cleanup_crit_edge, %for.body12.preheader, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body12.preheader ], [ -33, %if.end19.cleanup_crit_edge ], [ %call, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hic) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_host_interface_command(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_invariants_X540(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_get_invariants_X550_x(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_get_invariants_X540(ptr noundef %hw) #7
  %get_media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 4
  %0 = ptrtoint ptr %get_media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_media_type, align 4
  %call4 = tail call i32 %1(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %set_phy_power = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %2 = ptrtoint ptr %set_phy_power to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %set_phy_power, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -66, ptr %addr, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_get_invariants_X550_x_fw(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_get_invariants_X540(ptr noundef %hw) #7
  %set_phy_power = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %0 = ptrtoint ptr %set_phy_power to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %set_phy_power, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_get_invariants_X550_a(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_get_invariants_X540(ptr noundef %hw) #7
  %get_media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 4
  %0 = ptrtoint ptr %get_media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_media_type, align 4
  %call3 = tail call i32 %1(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %set_phy_power = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %2 = ptrtoint ptr %set_phy_power to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %set_phy_power, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_get_invariants_X550_a_fw(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_get_invariants_X540(ptr noundef %hw) #7
  %set_phy_power = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %0 = ptrtoint ptr %set_phy_power to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %set_phy_power, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_init_hw_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_reset_hw_X540(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_start_hw_X540(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_clear_hw_cntrs_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_media_type_X540(ptr noundef) #3

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
declare dso_local i32 @ixgbe_acquire_swfw_sync_X540(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_release_swfw_sync_X540(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_init_swfw_sync_X540(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prot_autoc_read_generic(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prot_autoc_write_generic(ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_mac_link_X540(ptr noundef, i32 noundef, i1 noundef zeroext) #3

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
declare dso_local i32 @ixgbe_blink_led_start_X540(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_blink_led_stop_X540(ptr noundef, i32 noundef) #3

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_set_fw_drv_ver_x550(ptr noundef %hw, i8 noundef zeroext %maj, i8 noundef zeroext %min, i8 noundef zeroext %build, i8 noundef zeroext %sub, i16 noundef zeroext %len, ptr noundef readonly %driver_ver) #0 align 64 {
entry:
  %fw_cmd = alloca %struct.ixgbe_hic_drv_info2, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fw_cmd) #7
  %0 = getelementptr inbounds i8, ptr %fw_cmd, i32 9
  %1 = call ptr @memset(ptr %0, i32 255, i32 39)
  %tobool1.not = icmp eq ptr %driver_ver, null
  %2 = add i16 %len, -40
  call void @__sanitizer_cov_trace_const_cmp2(i16 -39, i16 %2)
  %3 = icmp ult i16 %2, -39
  %4 = or i1 %3, %tobool1.not
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %len to i32
  %5 = ptrtoint ptr %fw_cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -35, ptr %fw_cmd, align 1
  %6 = trunc i16 %len to i8
  %conv5 = add nuw nsw i8 %6, 5
  %buf_len = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %fw_cmd, i32 0, i32 1
  %7 = ptrtoint ptr %buf_len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %buf_len, align 1
  %cmd_or_resp = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %fw_cmd, i32 0, i32 2
  %8 = ptrtoint ptr %cmd_or_resp to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %cmd_or_resp, align 1
  %func = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 3
  %9 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %func, align 4
  %port_num = getelementptr inbounds %struct.ixgbe_hic_drv_info2, ptr %fw_cmd, i32 0, i32 1
  %11 = ptrtoint ptr %port_num to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %port_num, align 1
  %ver_maj = getelementptr inbounds %struct.ixgbe_hic_drv_info2, ptr %fw_cmd, i32 0, i32 5
  %12 = ptrtoint ptr %ver_maj to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %maj, ptr %ver_maj, align 1
  %ver_min = getelementptr inbounds %struct.ixgbe_hic_drv_info2, ptr %fw_cmd, i32 0, i32 4
  %13 = ptrtoint ptr %ver_min to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %min, ptr %ver_min, align 1
  %ver_build = getelementptr inbounds %struct.ixgbe_hic_drv_info2, ptr %fw_cmd, i32 0, i32 3
  %14 = ptrtoint ptr %ver_build to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %build, ptr %ver_build, align 1
  %ver_sub = getelementptr inbounds %struct.ixgbe_hic_drv_info2, ptr %fw_cmd, i32 0, i32 2
  %15 = ptrtoint ptr %ver_sub to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %sub, ptr %ver_sub, align 1
  %checksum = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %fw_cmd, i32 0, i32 3
  %16 = ptrtoint ptr %checksum to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %checksum, align 1
  %driver_string = getelementptr inbounds %struct.ixgbe_hic_drv_info2, ptr %fw_cmd, i32 0, i32 6
  %17 = call ptr @memcpy(ptr %driver_string, ptr %driver_ver, i32 %conv)
  %narrow = add nuw nsw i16 %len, 9
  %add13 = zext i16 %narrow to i32
  %call = call zeroext i8 @ixgbe_calculate_checksum(ptr noundef nonnull %fw_cmd, i32 noundef %add13) #7
  %18 = ptrtoint ptr %checksum to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call, ptr %checksum, align 1
  %call18 = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %fw_cmd, i32 noundef 48, i32 noundef 500, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end.if.end21_crit_edge, label %for.cond

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.cond:                                         ; preds = %if.end
  %call18.1 = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %fw_cmd, i32 noundef 48, i32 noundef 500, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.1)
  %tobool19.not.1 = icmp eq i32 %call18.1, 0
  br i1 %tobool19.not.1, label %for.cond.if.end21_crit_edge, label %for.cond.1

for.cond.if.end21_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.cond.1:                                       ; preds = %for.cond
  %call18.2 = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %fw_cmd, i32 noundef 48, i32 noundef 500, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.2)
  %tobool19.not.2 = icmp eq i32 %call18.2, 0
  br i1 %tobool19.not.2, label %for.cond.1.if.end21_crit_edge, label %for.cond.2

for.cond.1.if.end21_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.cond.2:                                       ; preds = %for.cond.1
  %call18.3 = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %fw_cmd, i32 noundef 48, i32 noundef 500, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.3)
  %tobool19.not.3 = icmp eq i32 %call18.3, 0
  br i1 %tobool19.not.3, label %for.cond.2.if.end21_crit_edge, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2.if.end21_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end21:                                         ; preds = %for.cond.2.if.end21_crit_edge, %for.cond.1.if.end21_crit_edge, %for.cond.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %19 = ptrtoint ptr %cmd_or_resp to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cmd_or_resp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp25.not = icmp eq i8 %20, 1
  %. = select i1 %cmp25.not, i32 0, i32 -33
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %for.cond.2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %entry.cleanup_crit_edge ], [ %., %if.end21 ], [ %call18.3, %for.cond.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fw_cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ixgbe_fw_recovery_mode_X550(ptr noundef %hw) #0 align 64 {
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
  %and = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_disable_rx_x550(ptr noundef %hw) #0 align 64 {
entry:
  %fw_cmd = alloca %struct.ixgbe_hic_disable_rxen, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fw_cmd) #7
  %0 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %fw_cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %fw_cmd, i32 0, i32 3
  %2 = getelementptr inbounds %struct.ixgbe_hic_disable_rxen, ptr %fw_cmd, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %fw_cmd, i32 2
  %4 = call ptr @memset(ptr %3, i32 255, i32 6)
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 12288) #7
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 33312) #7
  %and2 = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then4:                                         ; preds = %if.then
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.then4.if.end_crit_edge, label %do.body1.i

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body1.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %and5 = and i32 %call1, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %and5) #7
  %add.ptr.i = getelementptr i8, ptr %6, i32 33312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #7, !srcloc !153
  br label %if.end

if.end:                                           ; preds = %do.body1.i, %if.then4.if.end_crit_edge, %if.then.if.end_crit_edge
  %.sink = phi i8 [ 1, %if.then4.if.end_crit_edge ], [ 1, %do.body1.i ], [ 0, %if.then.if.end_crit_edge ]
  %set_lben7 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 24
  %8 = ptrtoint ptr %set_lben7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %set_lben7, align 4
  %9 = ptrtoint ptr %fw_cmd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -34, ptr %fw_cmd, align 2
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %0, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %1, align 1
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %12 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %lan_id, align 1
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %2, align 2
  %call10 = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %fw_cmd, i32 noundef 8, i32 noundef 500, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end.if.end20_crit_edge, label %if.then12

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then12:                                        ; preds = %if.end
  %call13 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 12288) #7
  %and14 = and i32 %call13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then12.if.end20_crit_edge, label %if.then16

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then16:                                        ; preds = %if.then12
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i34 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i34, label %if.then16.if.end20_crit_edge, label %do.body1.i36

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.body1.i36:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %and17 = and i32 %call13, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  call void @arm_heavy_mb() #7
  %17 = call i32 @llvm.bswap.i32(i32 %and17) #7
  %add.ptr.i35 = getelementptr i8, ptr %16, i32 12288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %17) #7, !srcloc !153
  br label %if.end20

if.end20:                                         ; preds = %do.body1.i36, %if.then16.if.end20_crit_edge, %if.then12.if.end20_crit_edge, %if.end.if.end20_crit_edge, %entry.if.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fw_cmd) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_enable_rx_generic(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_set_source_address_pruning_X550(ptr noundef %hw, i1 noundef zeroext %enable, i32 noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %pool)
  %cmp = icmp ugt i32 %pool, 63
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 20656) #7
  %conv = zext i32 %call to i64
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 20660) #7
  %conv2 = zext i32 %call1 to i64
  %shl = shl nuw i64 %conv2, 32
  %or = or i64 %shl, %conv
  %sh_prom = zext i32 %pool to i64
  %shl4 = shl nuw i64 1, %sh_prom
  br i1 %enable, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or5 = or i64 %or, %shl4
  %extract.t35 = trunc i64 %or5 to i32
  %extract38 = lshr i64 %or5, 32
  %extract.t39 = trunc i64 %extract38 to i32
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i64 %shl4, -1
  %and = and i64 %or, %neg
  %extract.t34 = trunc i64 %and to i32
  %extract36 = lshr i64 %and, 32
  %extract.t37 = trunc i64 %extract36 to i32
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3
  %and.sink33.off0 = phi i32 [ %extract.t34, %if.else ], [ %extract.t35, %if.then3 ]
  %and.sink33.off32 = phi i32 [ %extract.t37, %if.else ], [ %extract.t39, %if.then3 ]
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end8.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end8.ixgbe_write_reg.exit_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %and.sink33.off0) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 20656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !153
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end8.ixgbe_write_reg.exit_crit_edge
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i24 = icmp eq ptr %4, null
  br i1 %tobool.not.i.i24, label %ixgbe_write_reg.exit.cleanup_crit_edge, label %do.body1.i26

ixgbe_write_reg.exit.cleanup_crit_edge:           ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i26:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %and.sink33.off32) #7
  %add.ptr.i25 = getelementptr i8, ptr %4, i32 20660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %5) #7, !srcloc !153
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i26, %ixgbe_write_reg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_set_ethertype_anti_spoofing_X550(ptr noundef %hw, i1 noundef zeroext %enable, i32 noundef %vf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ashr i32 %vf, 1
  %1 = add nsw i32 %0, 33280
  %add1 = and i32 %1, -4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add1) #7
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rem = srem i32 %vf, 8
  %add = add nsw i32 %rem, 16
  %shl = shl nuw nsw i32 1, %add
  %or = or i32 %call, %shl
  %neg = xor i32 %shl, -1
  %and = and i32 %call, %neg
  %pfvfspoof.0 = select i1 %enable, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %pfvfspoof.0) #7
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !153
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ixgbe_calculate_checksum(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_init_eeprom_params_X550(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %7) #7
  %8 = lshr i32 %call, 11
  %conv = and i32 %8, 15
  %shl = shl nuw nsw i32 64, %conv
  %conv4 = trunc i32 %shl to i16
  %word_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 3
  %9 = ptrtoint ptr %word_size to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv4, ptr %word_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_init_eeprom_params_X550.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_init_eeprom_params_X550, %if.then9)) #7
          to label %if.end15 [label %if.then9], !srcloc !154

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_init_eeprom_params_X550.__UNIQUE_ID_ddebug357, ptr noundef %13, ptr noundef nonnull @.str.3, i32 noundef %15, i32 noundef %conv12) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.then, %entry.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_ee_hostif_X550(ptr noundef %hw, i16 noundef zeroext %offset, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %buffer = alloca %struct.ixgbe_hic_read_shadow_ram, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer) #7
  %0 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, ptr %buffer, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, ptr %buffer, i32 0, i32 2
  %5 = getelementptr inbounds i8, ptr %buffer, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 -1, ptr %5, align 4
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 49, ptr %buffer, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %0, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %1, align 2
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %2, align 1
  %conv = zext i16 %offset to i32
  %mul = shl nuw nsw i32 %conv, 1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %4, align 4
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %13 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %14(ptr noundef %hw, i32 noundef 1025) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @ixgbe_hic_unlocked(ptr noundef %hw, ptr noundef nonnull %buffer, i32 noundef 16, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 88076) #7
  %conv8 = trunc i32 %call7 to i16
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv8, ptr %data, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %16 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %release_swfw_sync, align 4
  call void %17(ptr noundef %hw, i32 noundef 1025) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end9 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_ee_hostif_buffer_X550(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %buffer = alloca %struct.ixgbe_hic_read_shadow_ram, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer) #7
  %0 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, ptr %buffer, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, ptr %buffer, i32 0, i32 2
  %5 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, ptr %buffer, i32 0, i32 3
  %6 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, ptr %buffer, i32 0, i32 5
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %7 = call ptr @memset(ptr %buffer, i32 255, i32 16)
  %8 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %9(ptr noundef %hw, i32 noundef 1025) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %do.body1

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %tobool10.not109 = icmp eq i16 %words, 0
  br i1 %tobool10.not109, label %while.cond.preheader.out_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %conv17 = zext i16 %offset to i32
  br label %while.body

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_ee_hostif_buffer_X550.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_ee_hostif_buffer_X550, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !154

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_ee_hostif_buffer_X550.__UNIQUE_ID_ddebug360, ptr noundef %13, ptr noundef nonnull @.str.5) #7
  br label %cleanup

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %words.addr.0111 = phi i16 [ %words, %while.body.lr.ph ], [ %sub, %for.end.while.body_crit_edge ]
  %current_word.0110 = phi i32 [ 0, %while.body.lr.ph ], [ %current_word.2, %for.end.while.body_crit_edge ]
  %14 = call i16 @llvm.umin.i16(i16 %words.addr.0111, i16 512)
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 49, ptr %buffer, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %0, align 1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 6, ptr %1, align 2
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %2, align 1
  %add = add i32 %current_word.0110, %conv17
  %mul = shl i32 %add, 1
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %3, align 4
  %conv18 = zext i16 %14 to i32
  %mul19 = shl nuw nsw i16 %14, 1
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %mul19, ptr %4, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %5, align 2
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %6, align 2
  %call21 = call i32 @ixgbe_hic_unlocked(ptr noundef %hw, ptr noundef nonnull %buffer, i32 noundef 16, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %while.body.for.body_crit_edge, label %do.body25

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

do.body25:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_ee_hostif_buffer_X550.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_ee_hostif_buffer_X550, %if.then37)) #7
          to label %out [label %if.then37], !srcloc !154

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %back38 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %23 = ptrtoint ptr %back38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %back38, align 4
  %netdev39 = getelementptr inbounds %struct.ixgbe_adapter, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %netdev39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev39, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_ee_hostif_buffer_X550.__UNIQUE_ID_ddebug361, ptr noundef %26, ptr noundef nonnull @.str.6) #7
  br label %out

for.body:                                         ; preds = %if.end62.for.body_crit_edge, %while.body.for.body_crit_edge
  %current_word.1108 = phi i32 [ %current_word.2, %if.end62.for.body_crit_edge ], [ %current_word.0110, %while.body.for.body_crit_edge ]
  %i.0107 = phi i32 [ %inc63, %if.end62.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %mul49 = shl nuw i32 %i.0107, 1
  %add50 = add nuw nsw i32 %mul49, 88076
  %call51 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add50) #7
  %conv52 = trunc i32 %call51 to i16
  %arrayidx = getelementptr i16, ptr %data, i32 %current_word.1108
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv52, ptr %arrayidx, align 2
  %inc = add i32 %current_word.1108, 1
  %inc53 = or i32 %i.0107, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc53, i32 %conv18)
  %cmp55 = icmp ult i32 %inc53, %conv18
  br i1 %cmp55, label %if.then57, label %for.body.if.end62_crit_edge

for.body.if.end62_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then57:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %call51, 16
  %conv59 = trunc i32 %shr to i16
  %arrayidx60 = getelementptr i16, ptr %data, i32 %inc
  %28 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv59, ptr %arrayidx60, align 2
  %inc61 = add i32 %current_word.1108, 2
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %for.body.if.end62_crit_edge
  %current_word.2 = phi i32 [ %inc61, %if.then57 ], [ %inc, %for.body.if.end62_crit_edge ]
  %inc63 = add nuw nsw i32 %i.0107, 2
  %cmp47 = icmp ult i32 %inc63, %conv18
  br i1 %cmp47, label %if.end62.for.body_crit_edge, label %for.end

if.end62.for.body_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end62
  %sub = sub i16 %words.addr.0111, %14
  %tobool10.not = icmp eq i16 %sub, 0
  br i1 %tobool10.not, label %for.end.out_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %for.end.out_crit_edge, %if.then37, %do.body25, %while.cond.preheader.out_crit_edge
  %status.1 = phi i32 [ %call21, %if.then37 ], [ %call21, %do.body25 ], [ 0, %while.cond.preheader.out_crit_edge ], [ 0, %for.end.out_crit_edge ]
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %29 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %release_swfw_sync, align 4
  call void %30(ptr noundef %hw, i32 noundef 1025) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then6, %do.body1
  %retval.0 = phi i32 [ %status.1, %out ], [ %call, %if.then6 ], [ %call, %do.body1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_write_ee_hostif_X550(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %data) #0 align 64 {
entry:
  %buffer.i = alloca %struct.ixgbe_hic_write_shadow_ram, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %0 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %1(ptr noundef %hw, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer.i) #7
  %2 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, ptr %buffer.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, ptr %buffer.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, ptr %buffer.i, i32 0, i32 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 844424930131967, ptr %6, align 4
  %9 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 51, ptr %buffer.i, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %2, align 1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 10, ptr %3, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %4, align 1
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %data, ptr %7, align 4
  %conv.i = zext i16 %offset to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul.i, ptr %5, align 4
  %call.i = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %buffer.i, i32 noundef 16, i32 noundef 500, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i) #7
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %15 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %release_swfw_sync, align 4
  call void %16(ptr noundef %hw, i32 noundef 1) #7
  br label %if.end11

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_write_ee_hostif_X550.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_write_ee_hostif_X550, %if.then8)) #7
          to label %if.end11 [label %if.then8], !srcloc !154

if.then8:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %17 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_write_ee_hostif_X550.__UNIQUE_ID_ddebug367, ptr noundef %20, ptr noundef nonnull @.str.8) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.body4, %if.then
  %status.0 = phi i32 [ %call.i, %if.then ], [ -16, %if.then8 ], [ -16, %do.body4 ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_write_ee_hostif_buffer_X550(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %buffer.i = alloca %struct.ixgbe_hic_write_shadow_ram, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %0 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %1(ptr noundef %hw, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.body1

for.cond.preheader:                               ; preds = %entry
  %conv = zext i16 %words to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp58.not = icmp eq i16 %words, 0
  br i1 %cmp58.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %2 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, ptr %buffer.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, ptr %buffer.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, ptr %buffer.i, i32 0, i32 4
  br label %for.body

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_write_ee_hostif_buffer_X550.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_write_ee_hostif_buffer_X550, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !154

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_write_ee_hostif_buffer_X550.__UNIQUE_ID_ddebug369, ptr noundef %11, ptr noundef nonnull @.str.10) #7
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %12 = trunc i32 %i.059 to i16
  %conv12 = add i16 %12, %offset
  %arrayidx = getelementptr i16, ptr %data, i32 %i.059
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer.i) #7
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 844424930131967, ptr %6, align 4
  %16 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 51, ptr %buffer.i, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %2, align 1
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %3, align 2
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %4, align 1
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %14, ptr %7, align 4
  %conv.i = zext i16 %conv12 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul.i, ptr %5, align 4
  %call.i = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %buffer.i, i32 noundef 16, i32 noundef 500, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %for.cond, label %do.body17

do.body17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_write_ee_hostif_buffer_X550.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_write_ee_hostif_buffer_X550, %if.then29)) #7
          to label %for.end [label %if.then29], !srcloc !154

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %back30 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %22 = ptrtoint ptr %back30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %back30, align 4
  %netdev31 = getelementptr inbounds %struct.ixgbe_adapter, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %netdev31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev31, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_write_ee_hostif_buffer_X550.__UNIQUE_ID_ddebug370, ptr noundef %25, ptr noundef nonnull @.str.11) #7
  br label %for.end

for.end:                                          ; preds = %if.then29, %do.body17, %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %status.1 = phi i32 [ %call.i, %if.then29 ], [ %call.i, %do.body17 ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %26 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %release_swfw_sync, align 4
  call void %27(ptr noundef %hw, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then6, %do.body1
  %retval.0 = phi i32 [ %status.1, %for.end ], [ %call, %if.then6 ], [ %call, %do.body1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_validate_eeprom_checksum_X550(ptr noundef %hw, ptr noundef writeonly %checksum_val) #0 align 64 {
entry:
  %buffer.i = alloca %struct.ixgbe_hic_read_shadow_ram, align 4
  %checksum = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %checksum) #7
  %0 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %checksum, align 2, !annotation !155
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_validate_eeprom_checksum_X550.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_validate_eeprom_checksum_X550, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !154

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
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_validate_eeprom_checksum_X550.__UNIQUE_ID_ddebug365, ptr noundef %6, ptr noundef nonnull @.str.13) #7
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
  %conv = trunc i32 %call12 to i16
  %9 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %checksum, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer.i) #7
  %10 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i, i32 0, i32 3
  %13 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, ptr %buffer.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, ptr %buffer.i, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 844424930131967, ptr %14, align 4
  %16 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 49, ptr %buffer.i, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %10, align 1
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 6, ptr %11, align 2
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %12, align 1
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 126, ptr %13, align 4
  %acquire_swfw_sync.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %21 = ptrtoint ptr %acquire_swfw_sync.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %acquire_swfw_sync.i, align 4
  %call.i = call i32 %22(ptr noundef %hw, i32 noundef 1025) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ixgbe_read_ee_hostif_X550.exit.thread

ixgbe_read_ee_hostif_X550.exit.thread:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end14
  %call4.i = call i32 @ixgbe_hic_unlocked(ptr noundef %hw, ptr noundef nonnull %buffer.i, i32 noundef 16, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end18, label %ixgbe_read_ee_hostif_X550.exit

ixgbe_read_ee_hostif_X550.exit:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %release_swfw_sync.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %23 = ptrtoint ptr %release_swfw_sync.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %release_swfw_sync.i, align 4
  call void %24(ptr noundef %hw, i32 noundef 1025) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end.i
  %call7.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 88076) #7
  %conv8.i = trunc i32 %call7.i to i16
  %release_swfw_sync.i75 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %25 = ptrtoint ptr %release_swfw_sync.i75 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %release_swfw_sync.i75, align 4
  call void %26(ptr noundef %hw, i32 noundef 1025) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i) #7
  %27 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %checksum, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %conv8.i)
  %cmp21.not = icmp eq i16 %28, %conv8.i
  br i1 %cmp21.not, label %if.end18.if.end45_crit_edge, label %if.then23

if.end18.if.end45_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_validate_eeprom_checksum_X550.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_validate_eeprom_checksum_X550, %if.then37)) #7
          to label %if.end45 [label %if.then37], !srcloc !154

if.then37:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %back38 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %29 = ptrtoint ptr %back38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %back38, align 4
  %netdev39 = getelementptr inbounds %struct.ixgbe_adapter, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %netdev39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev39, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_validate_eeprom_checksum_X550.__UNIQUE_ID_ddebug366, ptr noundef %32, ptr noundef nonnull @.str.14) #7
  br label %if.end45

if.end45:                                         ; preds = %if.then37, %if.then23, %if.end18.if.end45_crit_edge
  %status.0 = phi i32 [ -2, %if.then37 ], [ 0, %if.end18.if.end45_crit_edge ], [ -2, %if.then23 ]
  %tobool46.not = icmp eq ptr %checksum_val, null
  br i1 %tobool46.not, label %if.end45.cleanup_crit_edge, label %if.then47

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %checksum, align 2
  %35 = ptrtoint ptr %checksum_val to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %checksum_val, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end45.cleanup_crit_edge, %ixgbe_read_ee_hostif_X550.exit, %ixgbe_read_ee_hostif_X550.exit.thread, %if.end9.cleanup_crit_edge, %if.then6, %do.body1
  %retval.0 = phi i32 [ %call, %if.then6 ], [ %call12, %if.end9.cleanup_crit_edge ], [ %call4.i, %ixgbe_read_ee_hostif_X550.exit ], [ %status.0, %if.then47 ], [ %status.0, %if.end45.cleanup_crit_edge ], [ %call, %do.body1 ], [ %call.i, %ixgbe_read_ee_hostif_X550.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %checksum) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_update_eeprom_checksum_X550(ptr noundef %hw) #0 align 64 {
entry:
  %buffer.i35 = alloca %union.ixgbe_hic_hdr2, align 1
  %buffer.i.i = alloca %struct.ixgbe_hic_write_shadow_ram, align 4
  %buffer.i = alloca %struct.ixgbe_hic_read_shadow_ram, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer.i) #7
  %0 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, ptr %buffer.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ixgbe_hic_read_shadow_ram, ptr %buffer.i, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 844424930131967, ptr %4, align 4
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 49, ptr %buffer.i, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 6, ptr %1, align 2
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %2, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %3, align 4
  %acquire_swfw_sync.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %11 = ptrtoint ptr %acquire_swfw_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %acquire_swfw_sync.i, align 4
  %call.i = tail call i32 %12(ptr noundef %hw, i32 noundef 1025) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ixgbe_read_ee_hostif_X550.exit.thread

ixgbe_read_ee_hostif_X550.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i) #7
  br label %do.body1

if.end.i:                                         ; preds = %entry
  %call4.i = call i32 @ixgbe_hic_unlocked(ptr noundef %hw, ptr noundef nonnull %buffer.i, i32 noundef 16, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end9, label %ixgbe_read_ee_hostif_X550.exit

ixgbe_read_ee_hostif_X550.exit:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %release_swfw_sync.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %13 = ptrtoint ptr %release_swfw_sync.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %release_swfw_sync.i, align 4
  call void %14(ptr noundef %hw, i32 noundef 1025) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i) #7
  br label %do.body1

do.body1:                                         ; preds = %ixgbe_read_ee_hostif_X550.exit, %ixgbe_read_ee_hostif_X550.exit.thread
  %retval.0.i3039 = phi i32 [ %call.i, %ixgbe_read_ee_hostif_X550.exit.thread ], [ %call4.i, %ixgbe_read_ee_hostif_X550.exit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_update_eeprom_checksum_X550.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_update_eeprom_checksum_X550, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !154

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_update_eeprom_checksum_X550.__UNIQUE_ID_ddebug368, ptr noundef %18, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end.i
  %call7.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 88076) #7
  %release_swfw_sync.i41 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %19 = ptrtoint ptr %release_swfw_sync.i41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %release_swfw_sync.i41, align 4
  call void %20(ptr noundef %hw, i32 noundef 1025) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i) #7
  %call.i31 = call fastcc i32 @ixgbe_calc_checksum_X550(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp = icmp slt i32 %call.i31, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %21 = ptrtoint ptr %acquire_swfw_sync.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %acquire_swfw_sync.i, align 4
  %call.i33 = call i32 %22(ptr noundef %hw, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp.i = icmp eq i32 %call.i33, 0
  br i1 %cmp.i, label %if.then.i, label %do.body4.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %call.i31 to i16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer.i.i) #7
  %23 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i.i, i32 0, i32 2
  %25 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i.i, i32 0, i32 3
  %26 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, ptr %buffer.i.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, ptr %buffer.i.i, i32 0, i32 2
  %28 = getelementptr inbounds %struct.ixgbe_hic_write_shadow_ram, ptr %buffer.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 844424930131967, ptr %27, align 4
  %30 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 51, ptr %buffer.i.i, align 4
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %23, align 1
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 10, ptr %24, align 2
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %25, align 1
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv, ptr %28, align 4
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 126, ptr %26, align 4
  %call.i.i = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %buffer.i.i, i32 noundef 16, i32 noundef 500, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i.i) #7
  %36 = ptrtoint ptr %release_swfw_sync.i41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %release_swfw_sync.i41, align 4
  call void %37(ptr noundef %hw, i32 noundef 1) #7
  br label %ixgbe_write_ee_hostif_X550.exit

do.body4.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_write_ee_hostif_X550.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_update_eeprom_checksum_X550, %ixgbe_write_ee_hostif_X550.exit.thread)) #7
          to label %ixgbe_write_ee_hostif_X550.exit [label %ixgbe_write_ee_hostif_X550.exit.thread], !srcloc !154

ixgbe_write_ee_hostif_X550.exit.thread:           ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  %back.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %38 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %back.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %netdev.i, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_write_ee_hostif_X550.__UNIQUE_ID_ddebug367, ptr noundef %41, ptr noundef nonnull @.str.8) #7
  br label %cleanup

ixgbe_write_ee_hostif_X550.exit:                  ; preds = %do.body4.i, %if.then.i
  %status.0.i = phi i32 [ %call.i.i, %if.then.i ], [ -16, %do.body4.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %tobool14.not = icmp eq i32 %status.0.i, 0
  br i1 %tobool14.not, label %if.end16, label %ixgbe_write_ee_hostif_X550.exit.cleanup_crit_edge

ixgbe_write_ee_hostif_X550.exit.cleanup_crit_edge: ; preds = %ixgbe_write_ee_hostif_X550.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %ixgbe_write_ee_hostif_X550.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i35) #7
  %42 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i35, i32 0, i32 1
  %43 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i35, i32 0, i32 2
  %44 = getelementptr inbounds %struct.ixgbe_hic_hdr2_req, ptr %buffer.i35, i32 0, i32 3
  %45 = ptrtoint ptr %buffer.i35 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 54, ptr %buffer.i35, align 1
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %42, align 1
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %43, align 1
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %44, align 1
  %call.i36 = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %buffer.i35, i32 noundef 4, i32 noundef 500, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i35) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %ixgbe_write_ee_hostif_X550.exit.cleanup_crit_edge, %ixgbe_write_ee_hostif_X550.exit.thread, %if.end9.cleanup_crit_edge, %if.then6, %do.body1
  %retval.0 = phi i32 [ %call.i36, %if.end16 ], [ %retval.0.i3039, %if.then6 ], [ %call.i31, %if.end9.cleanup_crit_edge ], [ %status.0.i, %ixgbe_write_ee_hostif_X550.exit.cleanup_crit_edge ], [ %retval.0.i3039, %do.body1 ], [ -16, %ixgbe_write_ee_hostif_X550.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_calc_eeprom_checksum_X550(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbe_calc_checksum_X550(ptr noundef %hw)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_hic_unlocked(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_calc_checksum_X550(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %eeprom_ptrs = alloca [66 x i16], align 2
  %checksum = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %eeprom_ptrs) #7
  %0 = call ptr @memset(ptr %eeprom_ptrs, i32 255, i32 132)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %checksum) #7
  %1 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %checksum, align 2
  %eeprom = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7
  %2 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eeprom, align 4
  %call = tail call i32 %3(ptr noundef %hw) #7
  %call1 = call i32 @ixgbe_read_ee_hostif_buffer_X550(ptr noundef %hw, i16 noundef zeroext 0, i16 noundef zeroext 66, ptr noundef nonnull %eeprom_ptrs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %do.body4

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %4)
  %checksum.promoted = load i16, ptr %checksum, align 2
  br label %for.body

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_calc_checksum_X550.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_calc_checksum_X550, %if.then9)) #7
          to label %cleanup [label %if.then9], !srcloc !154

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_calc_checksum_X550.__UNIQUE_ID_ddebug364, ptr noundef %8, ptr noundef nonnull @.str.17) #7
  br label %cleanup

for.cond27.preheader:                             ; preds = %for.inc
  %9 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %add2, ptr %checksum, align 2
  %word_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 3
  br label %for.body31

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %add34 = phi i16 [ %checksum.promoted, %for.cond.preheader ], [ %add2, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %indvars.iv)
  %cmp20.not = icmp eq i32 %indvars.iv, 63
  br i1 %cmp20.not, label %for.body.for.inc_crit_edge, label %if.then22

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i16, ptr %eeprom_ptrs, i32 %indvars.iv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %add = add i16 %add34, %11
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %for.body.for.inc_crit_edge
  %add2 = phi i16 [ %add34, %for.body.for.inc_crit_edge ], [ %add, %if.then22 ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 66
  br i1 %exitcond.not, label %for.cond27.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body31:                                       ; preds = %for.inc63.for.body31_crit_edge, %for.cond27.preheader
  %indvars.iv10 = phi i32 [ 2, %for.cond27.preheader ], [ %indvars.iv.next11, %for.inc63.for.body31_crit_edge ]
  %i.17 = phi i16 [ 2, %for.cond27.preheader ], [ %inc64, %for.inc63.for.body31_crit_edge ]
  %12 = and i32 %indvars.iv10, 32766
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %switch = icmp eq i32 %12, 4
  br i1 %switch, label %for.body31.for.inc63_crit_edge, label %if.end39

for.body31.for.inc63_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc63

if.end39:                                         ; preds = %for.body31
  %arrayidx41 = getelementptr i16, ptr %eeprom_ptrs, i32 %indvars.iv10
  %13 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx41, align 2
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i16 %14, label %lor.lhs.false49 [
    i16 -1, label %if.end39.for.inc63_crit_edge
    i16 0, label %if.end39.for.inc63_crit_edge13
  ]

if.end39.for.inc63_crit_edge13:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc63

if.end39.for.inc63_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc63

lor.lhs.false49:                                  ; preds = %if.end39
  %16 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %word_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %17)
  %cmp53.not = icmp ult i16 %14, %17
  br i1 %cmp53.not, label %if.end56, label %lor.lhs.false49.for.inc63_crit_edge

lor.lhs.false49.for.inc63_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc63

if.end56:                                         ; preds = %lor.lhs.false49
  %trunc = trunc i16 %i.17 to i15
  %switch.tableidx = add i15 %trunc, -6
  %18 = sext i15 %switch.tableidx to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %18)
  %19 = icmp ult i15 %switch.tableidx, 3
  br i1 %19, label %switch.lookup, label %if.end56.sw.epilog_crit_edge

if.end56.sw.epilog_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %20 = sext i15 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.ixgbe_calc_checksum_X550, i32 0, i32 %20
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %21)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end56.sw.epilog_crit_edge
  %size.0 = phi i16 [ %switch.load, %switch.lookup ], [ 0, %if.end56.sw.epilog_crit_edge ]
  %call59 = call fastcc i32 @ixgbe_checksum_ptr_x550(ptr noundef %hw, i16 noundef zeroext %14, i16 noundef zeroext %size.0, ptr noundef nonnull %checksum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %sw.epilog.for.inc63_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog.for.inc63_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc63

for.inc63:                                        ; preds = %sw.epilog.for.inc63_crit_edge, %lor.lhs.false49.for.inc63_crit_edge, %if.end39.for.inc63_crit_edge, %if.end39.for.inc63_crit_edge13, %for.body31.for.inc63_crit_edge
  %indvars.iv.next11 = add nuw nsw i32 %indvars.iv10, 1
  %inc64 = add nuw nsw i16 %i.17, 1
  %exitcond12.not = icmp eq i32 %indvars.iv.next11, 15
  br i1 %exitcond12.not, label %for.end65, label %for.inc63.for.body31_crit_edge

for.inc63.for.body31_crit_edge:                   ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body31

for.end65:                                        ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %checksum, align 2
  %sub = sub i16 -17734, %23
  %conv68 = zext i16 %sub to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end65, %sw.epilog.cleanup_crit_edge, %if.then9, %do.body4
  %retval.0 = phi i32 [ %conv68, %for.end65 ], [ %call1, %if.then9 ], [ %call1, %do.body4 ], [ %call59, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %checksum) #7
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %eeprom_ptrs) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_checksum_ptr_x550(ptr noundef %hw, i16 noundef zeroext %ptr, i16 noundef zeroext %size, ptr nocapture noundef %csum) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [256 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 512)
  %call = call i32 @ixgbe_read_ee_hostif_buffer_X550(ptr noundef %hw, i16 noundef zeroext %ptr, i16 noundef zeroext 256, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end16, label %do.body3

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_checksum_ptr_x550.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_checksum_ptr_x550, %cleanup.sink.split)) #7
          to label %cleanup [label %cleanup.sink.split], !srcloc !154

if.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %tobool17.not = icmp eq i16 %size, 0
  br i1 %tobool17.not, label %if.else19, label %if.end16.for.body.preheader_crit_edge

if.end16.for.body.preheader_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.else19:                                        ; preds = %if.end16
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %buf, align 2
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %2, label %lor.lhs.false27 [
    i16 -1, label %if.else19.cleanup_crit_edge
    i16 0, label %if.else19.cleanup_crit_edge12
  ]

if.else19.cleanup_crit_edge12:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else19.cleanup_crit_edge:                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false27:                                  ; preds = %if.else19
  %conv21 = zext i16 %2 to i32
  %conv28 = zext i16 %ptr to i32
  %add = add nuw nsw i32 %conv21, %conv28
  %word_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %word_size, align 4
  %conv30 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv30)
  %cmp31.not = icmp ult i32 %add, %conv30
  br i1 %cmp31.not, label %lor.lhs.false27.for.body.preheader_crit_edge, label %lor.lhs.false27.cleanup_crit_edge

lor.lhs.false27.cleanup_crit_edge:                ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false27.for.body.preheader_crit_edge:     ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false27.for.body.preheader_crit_edge, %if.end16.for.body.preheader_crit_edge
  %length.19.ph = phi i16 [ %2, %lor.lhs.false27.for.body.preheader_crit_edge ], [ %size, %if.end16.for.body.preheader_crit_edge ]
  %i.08.ph = phi i16 [ 1, %lor.lhs.false27.for.body.preheader_crit_edge ], [ 0, %if.end16.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %if.end88.for.body_crit_edge, %for.body.preheader
  %ptr.addr.011 = phi i16 [ %ptr.addr.1, %if.end88.for.body_crit_edge ], [ %ptr, %for.body.preheader ]
  %length.19 = phi i16 [ %dec, %if.end88.for.body_crit_edge ], [ %length.19.ph, %for.body.preheader ]
  %i.08 = phi i16 [ %inc, %if.end88.for.body_crit_edge ], [ %i.08.ph, %for.body.preheader ]
  %bufsz.07 = phi i16 [ %bufsz.2, %if.end88.for.body_crit_edge ], [ 256, %for.body.preheader ]
  call void @__sanitizer_cov_trace_cmp2(i16 %i.08, i16 %bufsz.07)
  %cmp47 = icmp eq i16 %i.08, %bufsz.07
  br i1 %cmp47, label %if.then51, label %for.body.if.end88_crit_edge

for.body.if.end88_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then51:                                        ; preds = %for.body
  %add54 = add i16 %ptr.addr.011, %i.08
  %6 = tail call i16 @llvm.umin.i16(i16 %length.19, i16 %i.08)
  %call63 = call i32 @ixgbe_read_ee_hostif_buffer_X550(ptr noundef %hw, i16 noundef zeroext %add54, i16 noundef zeroext %6, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then51.if.end88_crit_edge, label %do.body67

if.then51.if.end88_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

do.body67:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_checksum_ptr_x550.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_checksum_ptr_x550, %cleanup.sink.split)) #7
          to label %cleanup [label %cleanup.sink.split], !srcloc !154

if.end88:                                         ; preds = %if.then51.if.end88_crit_edge, %for.body.if.end88_crit_edge
  %bufsz.2 = phi i16 [ %6, %if.then51.if.end88_crit_edge ], [ %bufsz.07, %for.body.if.end88_crit_edge ]
  %i.1 = phi i16 [ 0, %if.then51.if.end88_crit_edge ], [ %i.08, %for.body.if.end88_crit_edge ]
  %ptr.addr.1 = phi i16 [ %add54, %if.then51.if.end88_crit_edge ], [ %ptr.addr.011, %for.body.if.end88_crit_edge ]
  %idxprom89 = zext i16 %i.1 to i32
  %arrayidx90 = getelementptr i16, ptr %buf, i32 %idxprom89
  %7 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx90, align 2
  %9 = ptrtoint ptr %csum to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %csum, align 2
  %add93 = add i16 %10, %8
  store i16 %add93, ptr %csum, align 2
  %inc = add i16 %i.1, 1
  %dec = add i16 %length.19, -1
  %tobool44.not = icmp eq i16 %dec, 0
  br i1 %tobool44.not, label %if.end88.cleanup_crit_edge, label %if.end88.for.body_crit_edge

if.end88.for.body_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body67, %do.body3
  %ixgbe_checksum_ptr_x550.__UNIQUE_ID_ddebug363.sink = phi ptr [ @ixgbe_checksum_ptr_x550.__UNIQUE_ID_ddebug362, %do.body3 ], [ @ixgbe_checksum_ptr_x550.__UNIQUE_ID_ddebug363, %do.body67 ]
  %retval.0.ph = phi i32 [ %call, %do.body3 ], [ %call63, %do.body67 ]
  call void @__sanitizer_cov_trace_pc() #9
  %back80 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %11 = ptrtoint ptr %back80 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %back80, align 4
  %netdev81 = getelementptr inbounds %struct.ixgbe_adapter, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %netdev81 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev81, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull %ixgbe_checksum_ptr_x550.__UNIQUE_ID_ddebug363.sink, ptr noundef %14, ptr noundef nonnull @.str.17) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end88.cleanup_crit_edge, %do.body67, %lor.lhs.false27.cleanup_crit_edge, %if.else19.cleanup_crit_edge, %if.else19.cleanup_crit_edge12, %do.body3
  %retval.0 = phi i32 [ 0, %if.else19.cleanup_crit_edge ], [ 0, %if.else19.cleanup_crit_edge12 ], [ 0, %lor.lhs.false27.cleanup_crit_edge ], [ %call, %do.body3 ], [ %call63, %do.body67 ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %if.end88.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_identify_phy_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_identify_module_generic(ptr noundef) #3

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_reset_hw_X550em(ptr noundef %hw) #0 align 64 {
entry:
  %reg.i = alloca i16, align 2
  %link_speed = alloca i32, align 4
  %link_up = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_speed) #7
  %0 = ptrtoint ptr %link_speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_speed, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up) #7
  %1 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %link_up, align 1
  %phy_semaphore_mask = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %phy_semaphore_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_semaphore_mask, align 4
  %stop_adapter = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 9
  %4 = ptrtoint ptr %stop_adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop_adapter, align 4
  %call = tail call i32 %5(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ixgbe_clear_tx_pending(ptr noundef %hw) #7
  tail call fastcc void @ixgbe_set_mdio_speed(ptr noundef %hw)
  %init = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 2
  %6 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init, align 4
  %call3 = tail call i32 %7(ptr noundef %hw) #7
  %8 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call3, label %if.end6 [
    i32 -19, label %if.end.cleanup_crit_edge
    i32 -17, label %if.end.cleanup_crit_edge197
  ]

if.end.cleanup_crit_edge197:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp8 = icmp eq i32 %10, 7
  br i1 %cmp8, label %if.then9, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then9:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #7
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %reg.i, align 2, !annotation !155
  %read_reg.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %12 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %13(ptr noundef %hw, i32 noundef 52226, i32 noundef 1, ptr noundef nonnull %reg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then9.ixgbe_init_ext_t_x550em.exit.thread_crit_edge

if.then9.ixgbe_init_ext_t_x550em.exit.thread_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_init_ext_t_x550em.exit.thread

if.end.i:                                         ; preds = %if.then9
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %reg.i, align 2
  %16 = and i16 %15, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool1.not.i = icmp eq i16 %16, 0
  br i1 %tobool1.not.i, label %if.end.i.ixgbe_init_ext_t_x550em.exit_crit_edge, label %if.then2.i

if.end.i.ixgbe_init_ext_t_x550em.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_init_ext_t_x550em.exit

if.then2.i:                                       ; preds = %if.end.i
  %17 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_reg.i, align 4
  %call6.i = call i32 %18(ptr noundef %hw, i32 noundef 50297, i32 noundef 30, ptr noundef nonnull %reg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.then2.i.ixgbe_init_ext_t_x550em.exit.thread_crit_edge

if.then2.i.ixgbe_init_ext_t_x550em.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_init_ext_t_x550em.exit.thread

if.end9.i:                                        ; preds = %if.then2.i
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %reg.i, align 2
  %21 = and i16 %20, 32767
  store i16 %21, ptr %reg.i, align 2
  %write_reg.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %22 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_reg.i, align 4
  %call15.i = call i32 %23(ptr noundef %hw, i32 noundef 50297, i32 noundef 30, i16 noundef zeroext %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end9.i.ixgbe_init_ext_t_x550em.exit_crit_edge, label %if.end9.i.ixgbe_init_ext_t_x550em.exit.thread_crit_edge

if.end9.i.ixgbe_init_ext_t_x550em.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_init_ext_t_x550em.exit.thread

if.end9.i.ixgbe_init_ext_t_x550em.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_init_ext_t_x550em.exit

ixgbe_init_ext_t_x550em.exit.thread:              ; preds = %if.end9.i.ixgbe_init_ext_t_x550em.exit.thread_crit_edge, %if.then2.i.ixgbe_init_ext_t_x550em.exit.thread_crit_edge, %if.then9.ixgbe_init_ext_t_x550em.exit.thread_crit_edge
  %retval.0.i183.ph = phi i32 [ %call15.i, %if.end9.i.ixgbe_init_ext_t_x550em.exit.thread_crit_edge ], [ %call6.i, %if.then2.i.ixgbe_init_ext_t_x550em.exit.thread_crit_edge ], [ %call.i, %if.then9.ixgbe_init_ext_t_x550em.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #7
  br label %cleanup

ixgbe_init_ext_t_x550em.exit:                     ; preds = %if.end9.i.ixgbe_init_ext_t_x550em.exit_crit_edge, %if.end.i.ixgbe_init_ext_t_x550em.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #7
  br label %if.end14

if.end14:                                         ; preds = %ixgbe_init_ext_t_x550em.exit, %if.end6.if.end14_crit_edge
  %status.0 = phi i32 [ 0, %ixgbe_init_ext_t_x550em.exit ], [ %call3, %if.end6.if.end14_crit_edge ]
  %sfp_setup_needed = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 5
  %24 = ptrtoint ptr %sfp_setup_needed to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sfp_setup_needed, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool16.not = icmp eq i8 %25, 0
  br i1 %tobool16.not, label %if.end14.if.end23_crit_edge, label %if.then17

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %setup_sfp = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 14
  %26 = ptrtoint ptr %setup_sfp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %setup_sfp, align 4
  %call20 = call i32 %27(ptr noundef %hw) #7
  %28 = ptrtoint ptr %sfp_setup_needed to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %sfp_setup_needed, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end14.if.end23_crit_edge
  %status.1 = phi i32 [ %call20, %if.then17 ], [ %status.0, %if.end14.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %status.1)
  %cmp24 = icmp eq i32 %status.1, -19
  br i1 %cmp24, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %reset_disable = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 9
  %29 = ptrtoint ptr %reset_disable to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %reset_disable, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool28.not = icmp eq i8 %30, 0
  br i1 %tobool28.not, label %land.lhs.true, label %if.end26.if.end37_crit_edge

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end26
  %reset = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %31 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reset, align 4
  %tobool31.not = icmp eq ptr %32, null
  br i1 %tobool31.not, label %land.lhs.true.if.end37_crit_edge, label %if.then32

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = call i32 %32(ptr noundef %hw) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %land.lhs.true.if.end37_crit_edge, %if.end26.if.end37_crit_edge
  %force_full_reset = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 17
  %check_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 29
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %back88 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %flags = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 21
  br label %mac_reset_top

mac_reset_top:                                    ; preds = %if.then99, %if.end37
  %33 = ptrtoint ptr %force_full_reset to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %force_full_reset, align 2, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool38.not = icmp eq i8 %34, 0
  br i1 %tobool38.not, label %if.then39, label %mac_reset_top.if.end46_crit_edge

mac_reset_top.if.end46_crit_edge:                 ; preds = %mac_reset_top
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then39:                                        ; preds = %mac_reset_top
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %check_link, align 4
  %call42 = call i32 %36(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  %37 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %link_up, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool43.not = icmp eq i8 %38, 0
  %spec.select = select i1 %tobool43.not, i32 8, i32 67108864
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %mac_reset_top.if.end46_crit_edge
  %ctrl.0 = phi i32 [ 8, %mac_reset_top.if.end46_crit_edge ], [ %spec.select, %if.then39 ]
  %39 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %acquire_swfw_sync, align 4
  %call49 = call i32 %40(ptr noundef %hw, i32 noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end61, label %do.body52

do.body52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reset_hw_X550em.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_hw_X550em, %if.then57)) #7
          to label %cleanup [label %if.then57], !srcloc !154

if.then57:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %back88 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %back88, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reset_hw_X550em.__UNIQUE_ID_ddebug377, ptr noundef %44, ptr noundef nonnull @.str.20, i32 noundef %call49) #7
  br label %cleanup

if.end61:                                         ; preds = %if.end46
  %call62 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %if.end61.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end61.ixgbe_write_reg.exit_crit_edge:          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call62, %ctrl.0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  call void @arm_heavy_mb() #7
  %47 = call i32 @llvm.bswap.i32(i32 %or) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %46, i32 %47) #7, !srcloc !153
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end61.ixgbe_write_reg.exit_crit_edge
  %call63 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %48 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %release_swfw_sync, align 4
  call void %49(ptr noundef %hw, i32 noundef %3) #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #7
  %call67 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and = and i32 %call67, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %ixgbe_write_reg.exit.if.end95_crit_edge, label %if.end70

ixgbe_write_reg.exit.if.end95_crit_edge:          ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.end70:                                         ; preds = %ixgbe_write_reg.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748) #7
  %call67.1 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and.1 = and i32 %call67.1, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool68.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool68.not.1, label %if.end70.if.end95_crit_edge, label %if.end70.1

if.end70.if.end95_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.end70.1:                                       ; preds = %if.end70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748) #7
  %call67.2 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and.2 = and i32 %call67.2, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool68.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool68.not.2, label %if.end70.1.if.end95_crit_edge, label %if.end70.2

if.end70.1.if.end95_crit_edge:                    ; preds = %if.end70.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.end70.2:                                       ; preds = %if.end70.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748) #7
  %call67.3 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and.3 = and i32 %call67.3, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool68.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool68.not.3, label %if.end70.2.if.end95_crit_edge, label %if.end70.3

if.end70.2.if.end95_crit_edge:                    ; preds = %if.end70.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.end70.3:                                       ; preds = %if.end70.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 214748) #7
  %call67.4 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and.4 = and i32 %call67.4, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool68.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool68.not.4, label %if.end70.3.if.end95_crit_edge, label %if.end70.4

if.end70.3.if.end95_crit_edge:                    ; preds = %if.end70.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.end70.4:                                       ; preds = %if.end70.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748) #7
  %call67.5 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and.5 = and i32 %call67.5, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool68.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool68.not.5, label %if.end70.4.if.end95_crit_edge, label %if.end70.5

if.end70.4.if.end95_crit_edge:                    ; preds = %if.end70.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.end70.5:                                       ; preds = %if.end70.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %55(i32 noundef 214748) #7
  %call67.6 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and.6 = and i32 %call67.6, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool68.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool68.not.6, label %if.end70.5.if.end95_crit_edge, label %if.end70.6

if.end70.5.if.end95_crit_edge:                    ; preds = %if.end70.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.end70.6:                                       ; preds = %if.end70.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %56(i32 noundef 214748) #7
  %call67.7 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and.7 = and i32 %call67.7, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool68.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool68.not.7, label %if.end70.6.if.end95_crit_edge, label %if.end70.7

if.end70.6.if.end95_crit_edge:                    ; preds = %if.end70.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.end70.7:                                       ; preds = %if.end70.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 214748) #7
  %call67.8 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and.8 = and i32 %call67.8, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool68.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool68.not.8, label %if.end70.7.if.end95_crit_edge, label %if.end70.8

if.end70.7.if.end95_crit_edge:                    ; preds = %if.end70.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.end70.8:                                       ; preds = %if.end70.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %58(i32 noundef 214748) #7
  %call67.9 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and.9 = and i32 %call67.9, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool68.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool68.not.9, label %if.end70.8.if.end95_crit_edge, label %if.then73

if.end70.8.if.end95_crit_edge:                    ; preds = %if.end70.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then73:                                        ; preds = %if.end70.8
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %59(i32 noundef 214748) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reset_hw_X550em.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_hw_X550em, %if.then87)) #7
          to label %if.end95 [label %if.then87], !srcloc !154

if.then87:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %back88 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %back88, align 4
  %netdev89 = getelementptr inbounds %struct.ixgbe_adapter, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %netdev89 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %netdev89, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reset_hw_X550em.__UNIQUE_ID_ddebug378, ptr noundef %63, ptr noundef nonnull @.str.21) #7
  br label %if.end95

if.end95:                                         ; preds = %if.then87, %if.then73, %if.end70.8.if.end95_crit_edge, %if.end70.7.if.end95_crit_edge, %if.end70.6.if.end95_crit_edge, %if.end70.5.if.end95_crit_edge, %if.end70.4.if.end95_crit_edge, %if.end70.3.if.end95_crit_edge, %if.end70.2.if.end95_crit_edge, %if.end70.1.if.end95_crit_edge, %if.end70.if.end95_crit_edge, %ixgbe_write_reg.exit.if.end95_crit_edge
  %status.2 = phi i32 [ -15, %if.then87 ], [ -15, %if.then73 ], [ 0, %if.end70.8.if.end95_crit_edge ], [ 0, %if.end70.7.if.end95_crit_edge ], [ 0, %if.end70.6.if.end95_crit_edge ], [ 0, %if.end70.5.if.end95_crit_edge ], [ 0, %if.end70.4.if.end95_crit_edge ], [ 0, %if.end70.3.if.end95_crit_edge ], [ 0, %if.end70.2.if.end95_crit_edge ], [ 0, %if.end70.1.if.end95_crit_edge ], [ 0, %if.end70.if.end95_crit_edge ], [ 0, %ixgbe_write_reg.exit.if.end95_crit_edge ]
  call void @msleep(i32 noundef 50) #7
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %flags, align 2
  %66 = and i8 %65, 1
  %tobool98.not = icmp eq i8 %66, 0
  br i1 %tobool98.not, label %if.end105, label %if.then99

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %and103 = and i8 %65, -2
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %and103, ptr %flags, align 2
  br label %mac_reset_top

if.end105:                                        ; preds = %if.end95
  %get_mac_addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 5
  %68 = ptrtoint ptr %get_mac_addr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %get_mac_addr, align 4
  %perm_addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 3
  %call109 = call i32 %69(ptr noundef %hw, ptr noundef %perm_addr) #7
  %num_rar_entries = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 12
  %70 = ptrtoint ptr %num_rar_entries to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 128, ptr %num_rar_entries, align 4
  %init_rx_addrs = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 43
  %71 = ptrtoint ptr %init_rx_addrs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %init_rx_addrs, align 4
  %call113 = call i32 %72(ptr noundef %hw) #7
  call fastcc void @ixgbe_set_mdio_speed(ptr noundef %hw)
  %device_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %73 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %device_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5548, i16 %74)
  %cmp115 = icmp eq i16 %74, 5548
  br i1 %cmp115, label %if.then117, label %if.end105.cleanup_crit_edge

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then117:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @ixgbe_setup_mux_ctl(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.then117, %if.end105.cleanup_crit_edge, %if.then57, %do.body52, %if.end23.cleanup_crit_edge, %ixgbe_init_ext_t_x550em.exit.thread, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge197, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge197 ], [ -19, %if.end23.cleanup_crit_edge ], [ -16, %if.then57 ], [ %status.2, %if.then117 ], [ %status.2, %if.end105.cleanup_crit_edge ], [ %retval.0.i183.ph, %ixgbe_init_ext_t_x550em.exit.thread ], [ -16, %do.body52 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_speed) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbe_get_media_type_X550em(ptr nocapture noundef %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %0 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device_id, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %1, label %sw.default [
    i16 5574, label %entry.sw.bb_crit_edge
    i16 5575, label %entry.sw.bb_crit_edge5
    i16 5547, label %entry.sw.epilog_crit_edge
    i16 5546, label %entry.sw.epilog_crit_edge6
    i16 5552, label %entry.sw.epilog_crit_edge7
    i16 5570, label %entry.sw.epilog_crit_edge8
    i16 5571, label %entry.sw.epilog_crit_edge9
    i16 5548, label %entry.sw.bb2_crit_edge
    i16 5582, label %entry.sw.bb2_crit_edge10
    i16 5572, label %entry.sw.bb2_crit_edge11
    i16 5550, label %entry.sw.bb3_crit_edge
    i16 5549, label %entry.sw.bb3_crit_edge12
    i16 5576, label %entry.sw.bb3_crit_edge13
    i16 5604, label %entry.sw.bb3_crit_edge14
    i16 5605, label %entry.sw.bb3_crit_edge15
  ]

entry.sw.bb3_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb2_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.epilog_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge8:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge5
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 26, ptr %type, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge10, %entry.sw.bb2_crit_edge11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge12, %entry.sw.bb3_crit_edge13, %entry.sw.bb3_crit_edge14, %entry.sw.bb3_crit_edge15
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge6, %entry.sw.epilog_crit_edge7, %entry.sw.epilog_crit_edge8, %entry.sw.epilog_crit_edge9
  %media_type.0 = phi i32 [ 0, %sw.default ], [ 4, %sw.bb3 ], [ 1, %sw.bb2 ], [ 5, %entry.sw.epilog_crit_edge ], [ 5, %entry.sw.epilog_crit_edge6 ], [ 5, %entry.sw.epilog_crit_edge7 ], [ 5, %entry.sw.epilog_crit_edge8 ], [ 5, %entry.sw.epilog_crit_edge9 ], [ 5, %sw.bb ]
  ret i32 %media_type.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_get_bus_info_X550em(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 4
  %width = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %width, align 4
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bus, align 4
  %set_lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 11
  %3 = ptrtoint ptr %set_lan_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_lan_id, align 4
  tail call void %4(ptr noundef %hw) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_sfp_modules_X550em(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sfp_type.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 4
  %0 = ptrtoint ptr %sfp_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sfp_type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %1, label %sw.default.i [
    i32 65534, label %entry.cleanup_crit_edge
    i32 3, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge7
    i32 5, label %entry.if.end_crit_edge8
    i32 6, label %entry.if.end_crit_edge9
    i32 7, label %entry.if.end_crit_edge10
    i32 8, label %entry.if.end_crit_edge11
    i32 11, label %entry.if.end_crit_edge12
    i32 12, label %entry.if.end_crit_edge13
    i32 13, label %entry.if.end_crit_edge14
    i32 14, label %entry.if.end_crit_edge15
  ]

entry.if.end_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge7, %entry.if.end_crit_edge8, %entry.if.end_crit_edge9, %entry.if.end_crit_edge10, %entry.if.end_crit_edge11, %entry.if.end_crit_edge12, %entry.if.end_crit_edge13, %entry.if.end_crit_edge14, %entry.if.end_crit_edge15
  tail call fastcc void @ixgbe_init_mac_link_ops_X550em(ptr noundef %hw)
  %reset = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %3 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %reset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.default.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -20, %entry.cleanup_crit_edge ], [ -19, %sw.default.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_acquire_swfw_sync_X550em(ptr noundef %hw, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_acquire_swfw_sync_X540(ptr noundef %hw, i32 noundef %mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %and = and i32 %mask, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %entry
  %lan_id.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %lan_id.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lan_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then2.cleanup_crit_edge, label %if.end.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then2
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
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
  %esdp.0.i = or i32 %call.i, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %esdp.0.i) #7
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #7, !srcloc !153
  br label %ixgbe_write_reg.exit.i

ixgbe_write_reg.exit.i:                           ; preds = %do.body1.i.i, %if.end.i.ixgbe_write_reg.exit.i_crit_edge
  %call4.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit.i, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_release_swfw_sync_X550em(ptr noundef %hw, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %lan_id.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %lan_id.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lan_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
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
  %and.i = and i32 %call.i, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #7, !srcloc !153
  br label %ixgbe_write_reg.exit.i

ixgbe_write_reg.exit.i:                           ; preds = %do.body1.i.i, %if.end.i.ixgbe_write_reg.exit.i_crit_edge
  %call4.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  br label %if.end

if.end:                                           ; preds = %ixgbe_write_reg.exit.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @ixgbe_release_swfw_sync_X540(ptr noundef %hw, i32 noundef %mask) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbe_get_link_capabilities_X550em(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %speed, ptr nocapture noundef writeonly %autoneg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %1)
  %cmp = icmp eq i32 %1, 27
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %autoneg, align 1
  %speeds_supported = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 11
  %3 = ptrtoint ptr %speeds_supported to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %speeds_supported, align 4
  %5 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %speed, align 4
  br label %return

if.end:                                           ; preds = %entry
  %media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 7
  %6 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp3 = icmp eq i32 %7, 1
  br i1 %cmp3, label %if.then4, label %if.else23

if.then4:                                         ; preds = %if.end
  %8 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %autoneg, align 1
  %sfp_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 4
  %9 = ptrtoint ptr %sfp_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sfp_type, align 4
  %.off = add i32 %10, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32, ptr %speed, align 4
  br label %return

if.end19:                                         ; preds = %if.then4
  %multispeed_fiber = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 16
  %12 = ptrtoint ptr %multispeed_fiber to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %multispeed_fiber, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 160, ptr %speed, align 4
  br label %return

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 128, ptr %speed, align 4
  br label %return

if.else23:                                        ; preds = %if.end
  %16 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %1, label %if.else23.sw.default_crit_edge [
    i32 5, label %if.else23.sw.epilog_crit_edge
    i32 6, label %sw.bb26
    i32 8, label %if.else23.sw.bb27_crit_edge
    i32 26, label %if.else23.sw.bb27_crit_edge66
    i32 4, label %sw.bb28
  ]

if.else23.sw.bb27_crit_edge66:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27

if.else23.sw.bb27_crit_edge:                      ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27

if.else23.sw.epilog_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else23.sw.default_crit_edge:                   ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb26:                                          ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.else23.sw.bb27_crit_edge, %if.else23.sw.bb27_crit_edge66
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.else23
  %type29 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %type29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cmp30 = icmp eq i32 %18, 6
  br i1 %cmp30, label %if.then31, label %sw.bb28.sw.default_crit_edge

sw.bb28.sw.default_crit_edge:                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

if.then31:                                        ; preds = %sw.bb28
  %nw_mng_if_sel = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 19
  %19 = ptrtoint ptr %nw_mng_if_sel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nw_mng_if_sel, align 4
  %and = and i32 %20, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.else35, label %if.then31.sw.epilog_crit_edge

if.then31.sw.epilog_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else35:                                        ; preds = %if.then31
  %device_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %21 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %device_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5571, i16 %22)
  %cmp36 = icmp eq i16 %22, 5571
  br i1 %cmp36, label %if.else35.sw.epilog_crit_edge, label %if.else35.sw.default_crit_edge

if.else35.sw.default_crit_edge:                   ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

if.else35.sw.epilog_crit_edge:                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.else35.sw.default_crit_edge, %sw.bb28.sw.default_crit_edge, %if.else23.sw.default_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else35.sw.epilog_crit_edge, %if.then31.sw.epilog_crit_edge, %sw.bb27, %sw.bb26, %if.else23.sw.epilog_crit_edge
  %.sink = phi i32 [ 160, %sw.default ], [ 32, %sw.bb27 ], [ 160, %sw.bb26 ], [ 1184, %if.else23.sw.epilog_crit_edge ], [ 1024, %if.then31.sw.epilog_crit_edge ], [ 32, %if.else35.sw.epilog_crit_edge ]
  %23 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %speed, align 4
  %24 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %autoneg, align 1
  br label %return

return:                                           ; preds = %sw.epilog, %if.else, %if.then21, %if.then18, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_led_on_t_x550em(ptr noundef %hw, i32 noundef %led_idx) #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #7
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %led_idx)
  %cmp = icmp ugt i32 %led_idx, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %add = add nuw nsw i32 %led_idx, 50224
  %call = call i32 %2(ptr noundef %hw, i32 noundef %add, i32 noundef 30, ptr noundef nonnull %phy_data) #7
  %3 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_data, align 2
  %5 = or i16 %4, 256
  store i16 %5, ptr %phy_data, align 2
  %write_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %6 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg, align 4
  %call5 = call i32 %7(ptr noundef %hw, i32 noundef %add, i32 noundef 30, i16 noundef zeroext %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_led_off_t_x550em(ptr noundef %hw, i32 noundef %led_idx) #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #7
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %led_idx)
  %cmp = icmp ugt i32 %led_idx, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %add = add nuw nsw i32 %led_idx, 50224
  %call = call i32 %2(ptr noundef %hw, i32 noundef %add, i32 noundef 30, ptr noundef nonnull %phy_data) #7
  %3 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_data, align 2
  %5 = and i16 %4, -257
  store i16 %5, ptr %phy_data, align 2
  %write_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %6 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg, align 4
  %call5 = call i32 %7(ptr noundef %hw, i32 noundef %add, i32 noundef 30, i16 noundef zeroext %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_iosf_sb_reg_x550(ptr noundef %hw, i32 noundef %reg_addr, i32 noundef %device_type, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %0 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %1(ptr noundef %hw, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 69956) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not.i = icmp sgt i32 %call.i, -1
  br i1 %tobool.not.i, label %for.end.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #7
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i.do.body6.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i.do.body6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.023.i)
  %cmp4.i = icmp eq i32 %i.023.i, 100
  br i1 %cmp4.i, label %for.end.i.do.body6.i_crit_edge, label %if.end4

for.end.i.do.body6.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6.i

do.body6.i:                                       ; preds = %for.end.i.do.body6.i_crit_edge, %if.end.i.do.body6.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_iosf_wait.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_iosf_sb_reg_x550, %if.then11.i)) #7
          to label %out [label %if.then11.i], !srcloc !154

if.then11.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  %back.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %back.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev.i, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_iosf_wait.__UNIQUE_ID_ddebug358, ptr noundef %6, ptr noundef nonnull @.str.35) #7
  br label %out

if.end4:                                          ; preds = %for.end.i
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end4.for.body.i45.preheader_crit_edge, label %do.body1.i

if.end4.for.body.i45.preheader_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i45.preheader

do.body1.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %shl5 = shl i32 %device_type, 28
  %or = or i32 %shl5, %reg_addr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %8, i32 69956
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #7, !srcloc !153
  br label %for.body.i45.preheader

for.body.i45.preheader:                           ; preds = %do.body1.i, %if.end4.for.body.i45.preheader_crit_edge
  br label %for.body.i45

for.body.i45:                                     ; preds = %if.end.i48.for.body.i45_crit_edge, %for.body.i45.preheader
  %i.023.i42 = phi i32 [ %inc.i46, %if.end.i48.for.body.i45_crit_edge ], [ 0, %for.body.i45.preheader ]
  %call.i43 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 69956) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i43)
  %tobool.not.i44 = icmp sgt i32 %call.i43, -1
  br i1 %tobool.not.i44, label %for.end.i50, label %if.end.i48

if.end.i48:                                       ; preds = %for.body.i45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #7
  %inc.i46 = add nuw nsw i32 %i.023.i42, 1
  %exitcond.not.i47 = icmp eq i32 %inc.i46, 100
  br i1 %exitcond.not.i47, label %if.end.i48.do.body6.i52_crit_edge, label %if.end.i48.for.body.i45_crit_edge

if.end.i48.for.body.i45_crit_edge:                ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i45

if.end.i48.do.body6.i52_crit_edge:                ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6.i52

for.end.i50:                                      ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.023.i42)
  %cmp4.i51 = icmp eq i32 %i.023.i42, 100
  br i1 %cmp4.i51, label %for.end.i50.do.body6.i52_crit_edge, label %ixgbe_iosf_wait.exit57.thread

for.end.i50.do.body6.i52_crit_edge:               ; preds = %for.end.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6.i52

do.body6.i52:                                     ; preds = %for.end.i50.do.body6.i52_crit_edge, %if.end.i48.do.body6.i52_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_iosf_wait.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_iosf_sb_reg_x550, %if.then11.i55)) #7
          to label %ixgbe_iosf_wait.exit57 [label %if.then11.i55], !srcloc !154

if.then11.i55:                                    ; preds = %do.body6.i52
  call void @__sanitizer_cov_trace_pc() #9
  %back.i53 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %11 = ptrtoint ptr %back.i53 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %back.i53, align 4
  %netdev.i54 = getelementptr inbounds %struct.ixgbe_adapter, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %netdev.i54 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev.i54, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_iosf_wait.__UNIQUE_ID_ddebug358, ptr noundef %14, ptr noundef nonnull @.str.35) #7
  br label %ixgbe_iosf_wait.exit57

ixgbe_iosf_wait.exit57:                           ; preds = %if.then11.i55, %do.body6.i52
  %and = and i32 %call.i43, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %ixgbe_iosf_wait.exit57.out_crit_edge, label %ixgbe_iosf_wait.exit57.if.then7_crit_edge

ixgbe_iosf_wait.exit57.if.then7_crit_edge:        ; preds = %ixgbe_iosf_wait.exit57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

ixgbe_iosf_wait.exit57.out_crit_edge:             ; preds = %ixgbe_iosf_wait.exit57
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

ixgbe_iosf_wait.exit57.thread:                    ; preds = %for.end.i50
  %and66 = and i32 %call.i43, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %cmp.not67 = icmp eq i32 %and66, 0
  br i1 %cmp.not67, label %if.then20, label %ixgbe_iosf_wait.exit57.thread.if.then7_crit_edge

ixgbe_iosf_wait.exit57.thread.if.then7_crit_edge: ; preds = %ixgbe_iosf_wait.exit57.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %ixgbe_iosf_wait.exit57.thread.if.then7_crit_edge, %ixgbe_iosf_wait.exit57.if.then7_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_iosf_sb_reg_x550.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_iosf_sb_reg_x550, %if.then14)) #7
          to label %cleanup [label %if.then14], !srcloc !154

if.then14:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %and8 = lshr i32 %call.i43, 20
  %shr = and i32 %and8, 255
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_iosf_sb_reg_x550.__UNIQUE_ID_ddebug359, ptr noundef %18, ptr noundef nonnull @.str.33, i32 noundef %shr) #7
  br label %cleanup

if.then20:                                        ; preds = %ixgbe_iosf_wait.exit57.thread
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 69960) #7
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call21, ptr %data, align 4
  br label %out

out:                                              ; preds = %if.then20, %ixgbe_iosf_wait.exit57.out_crit_edge, %if.then11.i, %do.body6.i
  %ret.0 = phi i32 [ 0, %if.then20 ], [ -3, %if.then11.i ], [ -3, %do.body6.i ], [ -3, %ixgbe_iosf_wait.exit57.out_crit_edge ]
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %20 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %21(ptr noundef %hw, i32 noundef 6) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then14, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call, %entry.cleanup_crit_edge ], [ -3, %if.then14 ], [ -3, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_write_iosf_sb_reg_x550(ptr noundef %hw, i32 noundef %reg_addr, i32 noundef %device_type, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %0 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %1(ptr noundef %hw, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 69956) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not.i = icmp sgt i32 %call.i, -1
  br i1 %tobool.not.i, label %for.end.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #7
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i.do.body6.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i.do.body6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.023.i)
  %cmp4.i = icmp eq i32 %i.023.i, 100
  br i1 %cmp4.i, label %for.end.i.do.body6.i_crit_edge, label %if.end4

for.end.i.do.body6.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6.i

do.body6.i:                                       ; preds = %for.end.i.do.body6.i_crit_edge, %if.end.i.do.body6.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_iosf_wait.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_write_iosf_sb_reg_x550, %if.then11.i)) #7
          to label %out [label %if.then11.i], !srcloc !154

if.then11.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  %back.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %back.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev.i, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_iosf_wait.__UNIQUE_ID_ddebug358, ptr noundef %6, ptr noundef nonnull @.str.35) #7
  br label %out

if.end4:                                          ; preds = %for.end.i
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end4.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end4.ixgbe_write_reg.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %shl5 = shl i32 %device_type, 28
  %or = or i32 %shl5, %reg_addr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %8, i32 69956
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #7, !srcloc !153
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end4.ixgbe_write_reg.exit_crit_edge
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i37 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i37, label %ixgbe_write_reg.exit.for.body.i44.preheader_crit_edge, label %do.body1.i39

ixgbe_write_reg.exit.for.body.i44.preheader_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i44.preheader

do.body1.i39:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %data) #7
  %add.ptr.i38 = getelementptr i8, ptr %11, i32 69960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %12) #7, !srcloc !153
  br label %for.body.i44.preheader

for.body.i44.preheader:                           ; preds = %do.body1.i39, %ixgbe_write_reg.exit.for.body.i44.preheader_crit_edge
  br label %for.body.i44

for.body.i44:                                     ; preds = %if.end.i47.for.body.i44_crit_edge, %for.body.i44.preheader
  %i.023.i41 = phi i32 [ %inc.i45, %if.end.i47.for.body.i44_crit_edge ], [ 0, %for.body.i44.preheader ]
  %call.i42 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 69956) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i42)
  %tobool.not.i43 = icmp sgt i32 %call.i42, -1
  br i1 %tobool.not.i43, label %for.end.i49, label %if.end.i47

if.end.i47:                                       ; preds = %for.body.i44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #7
  %inc.i45 = add nuw nsw i32 %i.023.i41, 1
  %exitcond.not.i46 = icmp eq i32 %inc.i45, 100
  br i1 %exitcond.not.i46, label %if.end.i47.do.body6.i51_crit_edge, label %if.end.i47.for.body.i44_crit_edge

if.end.i47.for.body.i44_crit_edge:                ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i44

if.end.i47.do.body6.i51_crit_edge:                ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6.i51

for.end.i49:                                      ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.023.i41)
  %cmp4.i50 = icmp eq i32 %i.023.i41, 100
  br i1 %cmp4.i50, label %for.end.i49.do.body6.i51_crit_edge, label %for.end.i49.ixgbe_iosf_wait.exit56_crit_edge

for.end.i49.ixgbe_iosf_wait.exit56_crit_edge:     ; preds = %for.end.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_iosf_wait.exit56

for.end.i49.do.body6.i51_crit_edge:               ; preds = %for.end.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6.i51

do.body6.i51:                                     ; preds = %for.end.i49.do.body6.i51_crit_edge, %if.end.i47.do.body6.i51_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_iosf_wait.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_write_iosf_sb_reg_x550, %if.then11.i54)) #7
          to label %ixgbe_iosf_wait.exit56 [label %if.then11.i54], !srcloc !154

if.then11.i54:                                    ; preds = %do.body6.i51
  call void @__sanitizer_cov_trace_pc() #9
  %back.i52 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %14 = ptrtoint ptr %back.i52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %back.i52, align 4
  %netdev.i53 = getelementptr inbounds %struct.ixgbe_adapter, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %netdev.i53 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev.i53, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_iosf_wait.__UNIQUE_ID_ddebug358, ptr noundef %17, ptr noundef nonnull @.str.35) #7
  br label %ixgbe_iosf_wait.exit56

ixgbe_iosf_wait.exit56:                           ; preds = %if.then11.i54, %do.body6.i51, %for.end.i49.ixgbe_iosf_wait.exit56_crit_edge
  %retval.0.i55 = phi i32 [ -3, %if.then11.i54 ], [ 0, %for.end.i49.ixgbe_iosf_wait.exit56_crit_edge ], [ -3, %do.body6.i51 ]
  %and = and i32 %call.i42, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %ixgbe_iosf_wait.exit56.out_crit_edge, label %if.then7

ixgbe_iosf_wait.exit56.out_crit_edge:             ; preds = %ixgbe_iosf_wait.exit56
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then7:                                         ; preds = %ixgbe_iosf_wait.exit56
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_write_iosf_sb_reg_x550.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_write_iosf_sb_reg_x550, %if.then14)) #7
          to label %cleanup [label %if.then14], !srcloc !154

if.then14:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %and8 = lshr i32 %call.i42, 20
  %shr = and i32 %and8, 255
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %18 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_write_iosf_sb_reg_x550.__UNIQUE_ID_ddebug371, ptr noundef %21, ptr noundef nonnull @.str.37, i32 noundef %shr) #7
  br label %cleanup

out:                                              ; preds = %ixgbe_iosf_wait.exit56.out_crit_edge, %if.then11.i, %do.body6.i
  %ret.0 = phi i32 [ %retval.0.i55, %ixgbe_iosf_wait.exit56.out_crit_edge ], [ -3, %if.then11.i ], [ -3, %do.body6.i ]
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %22 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %23(ptr noundef %hw, i32 noundef 6) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then14, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call, %entry.cleanup_crit_edge ], [ -3, %if.then14 ], [ -3, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_clear_tx_pending(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_set_mdio_speed(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %0 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device_id, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %1, label %entry.sw.epilog_crit_edge [
    i16 5549, label %entry.sw.bb_crit_edge
    i16 5574, label %entry.sw.bb_crit_edge14
    i16 5575, label %entry.sw.bb_crit_edge15
    i16 5576, label %entry.sw.bb_crit_edge16
    i16 5582, label %entry.sw.bb_crit_edge17
    i16 5604, label %entry.sw.bb1_crit_edge
    i16 5605, label %entry.sw.bb1_crit_edge18
  ]

entry.sw.bb1_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge14, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16, %entry.sw.bb_crit_edge17
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16960) #7
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %sw.bb.sw.epilog_crit_edge, label %do.body1.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body1.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %add.ptr.i = getelementptr i8, ptr %4, i32 16960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #7, !srcloc !153
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge18
  %call2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16960) #7
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i10 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i10, label %sw.bb1.sw.epilog_crit_edge, label %do.body1.i12

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body1.i12:                                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call2, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i11 = getelementptr i8, ptr %7, i32 16960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %8) #7, !srcloc !153
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body1.i12, %sw.bb1.sw.epilog_crit_edge, %do.body1.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_setup_mux_ctl(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lan_id, align 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %and = and i32 %call, -197379
  %or = or i32 %and, 512
  %esdp.0 = select i1 %tobool.not, i32 %call, i32 %or
  %and1 = and i32 %esdp.0, -65793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %and1) #7
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !153
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_init_mac_link_ops_X550em(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_fc = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 53
  %0 = ptrtoint ptr %setup_fc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ixgbe_setup_fc_x550em, ptr %setup_fc, align 4
  %get_media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 4
  %1 = ptrtoint ptr %get_media_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_media_type, align 4
  %call = tail call i32 %2(ptr noundef %hw) #7
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call, label %entry.sw.epilog38_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb15
    i32 5, label %sw.bb24
  ]

entry.sw.epilog38_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog38

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %disable_tx_laser = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 23
  %4 = ptrtoint ptr %disable_tx_laser to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %disable_tx_laser, align 4
  %enable_tx_laser = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 24
  %5 = ptrtoint ptr %enable_tx_laser to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %enable_tx_laser, align 4
  %flap_tx_laser = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 25
  %6 = ptrtoint ptr %flap_tx_laser to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %flap_tx_laser, align 4
  %setup_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 27
  %7 = ptrtoint ptr %setup_link to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ixgbe_setup_mac_link_multispeed_fiber, ptr %setup_link, align 4
  %device_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %8 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5582, i16 %9)
  %switch.selectcmp = icmp eq i16 %9, 5582
  %switch.select = select i1 %switch.selectcmp, ptr @ixgbe_setup_mac_link_sfp_x550a, ptr @ixgbe_setup_mac_link_sfp_x550em
  call void @__sanitizer_cov_trace_const_cmp2(i16 5572, i16 %9)
  %switch.selectcmp64 = icmp eq i16 %9, 5572
  %switch.select65 = select i1 %switch.selectcmp64, ptr @ixgbe_setup_mac_link_sfp_n, ptr %switch.select
  %setup_mac_link13 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 28
  %10 = ptrtoint ptr %setup_mac_link13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %switch.select65, ptr %setup_mac_link13, align 4
  %set_rate_select_speed = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 31
  %11 = ptrtoint ptr %set_rate_select_speed to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ixgbe_set_soft_rate_select_speed, ptr %set_rate_select_speed, align 4
  br label %sw.epilog38

sw.bb15:                                          ; preds = %entry
  %device_id16 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %12 = ptrtoint ptr %device_id16 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device_id16, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5550, i16 %13)
  %cmp = icmp eq i16 %13, 5550
  br i1 %cmp, label %sw.bb15.sw.epilog38_crit_edge, label %if.end

sw.bb15.sw.epilog38_crit_edge:                    ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog38

if.end:                                           ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  %setup_link20 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 27
  %14 = ptrtoint ptr %setup_link20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ixgbe_setup_mac_link_t_X550em, ptr %setup_link20, align 4
  %15 = ptrtoint ptr %setup_fc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ixgbe_setup_fc_generic, ptr %setup_fc, align 4
  %check_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 29
  %16 = ptrtoint ptr %check_link to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ixgbe_check_link_t_X550em, ptr %check_link, align 4
  br label %sw.epilog38

sw.bb24:                                          ; preds = %entry
  %device_id25 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %17 = ptrtoint ptr %device_id25 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device_id25, align 4
  %19 = and i16 %18, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5574, i16 %19)
  %switch = icmp eq i16 %19, 5574
  br i1 %switch, label %if.then33, label %sw.bb24.sw.epilog38_crit_edge

sw.bb24.sw.epilog38_crit_edge:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog38

if.then33:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %setup_link35 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 27
  %20 = ptrtoint ptr %setup_link35 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ixgbe_setup_sgmii, ptr %setup_link35, align 4
  br label %sw.epilog38

sw.epilog38:                                      ; preds = %if.then33, %sw.bb24.sw.epilog38_crit_edge, %if.end, %sw.bb15.sw.epilog38_crit_edge, %sw.bb, %entry.sw.epilog38_crit_edge
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %22)
  %cmp40 = icmp eq i32 %22, 6
  br i1 %cmp40, label %if.then42, label %sw.epilog38.if.end43_crit_edge

sw.epilog38.if.end43_crit_edge:                   ; preds = %sw.epilog38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then42:                                        ; preds = %sw.epilog38
  %23 = ptrtoint ptr %get_media_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_media_type, align 4
  %call.i = tail call i32 %24(ptr noundef %hw) #7
  %25 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call.i, label %if.then42.if.end43_crit_edge [
    i32 1, label %sw.bb.i
    i32 4, label %sw.bb4.i
    i32 5, label %sw.bb18.i
  ]

if.then42.if.end43_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

sw.bb.i:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %setup_fc to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %setup_fc, align 4
  %fc_autoneg.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 54
  %27 = ptrtoint ptr %fc_autoneg.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ixgbe_fc_autoneg_fiber_x550em_a, ptr %fc_autoneg.i, align 4
  br label %if.end43

sw.bb4.i:                                         ; preds = %if.then42
  %device_id.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %28 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %device_id.i, align 4
  %30 = and i16 %29, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5604, i16 %30)
  %switch.i = icmp eq i16 %30, 5604
  br i1 %switch.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  %setup_link.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 27
  %31 = ptrtoint ptr %setup_link.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ixgbe_setup_mac_link_t_X550em, ptr %setup_link.i, align 4
  br label %if.end43

if.end.i:                                         ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  %fc_autoneg12.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 54
  %32 = ptrtoint ptr %fc_autoneg12.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ixgbe_fc_autoneg_sgmii_x550em_a, ptr %fc_autoneg12.i, align 4
  %33 = ptrtoint ptr %setup_fc to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ixgbe_fc_autoneg_fw, ptr %setup_fc, align 4
  %setup_link16.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 27
  %34 = ptrtoint ptr %setup_link16.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ixgbe_setup_sgmii_fw, ptr %setup_link16.i, align 4
  %check_link.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 29
  %35 = ptrtoint ptr %check_link.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ixgbe_check_mac_link_generic, ptr %check_link.i, align 4
  br label %if.end43

sw.bb18.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %fc_autoneg20.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 54
  %36 = ptrtoint ptr %fc_autoneg20.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ixgbe_fc_autoneg_backplane_x550em_a, ptr %fc_autoneg20.i, align 4
  %37 = ptrtoint ptr %setup_fc to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ixgbe_setup_fc_backplane_x550em_a, ptr %setup_fc, align 4
  br label %if.end43

if.end43:                                         ; preds = %sw.bb18.i, %if.end.i, %if.then.i, %sw.bb.i, %if.then42.if.end43_crit_edge, %sw.epilog38.if.end43_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_fc_x550em(ptr noundef %hw) #0 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #7
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !155
  %strict_ieee = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 4
  %1 = ptrtoint ptr %strict_ieee to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %strict_ieee, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %requested_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %requested_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %requested_mode3 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %requested_mode3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %requested_mode3, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %10, label %sw.default [
    i32 4, label %if.end8.thread
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb11
    i32 1, label %if.end.sw.bb13_crit_edge
    i32 3, label %if.end.sw.bb13_crit_edge64
  ]

if.end.sw.bb13_crit_edge64:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end.sw.bb13_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end8.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %requested_mode3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %requested_mode3, align 4
  br label %sw.bb13

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end8.thread, %if.end.sw.bb13_crit_edge, %if.end.sw.bb13_crit_edge64
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %back14 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %back14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %back14, align 4
  %netdev15 = getelementptr inbounds %struct.ixgbe_adapter, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %netdev15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev15, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.23) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb11, %if.end.sw.epilog_crit_edge
  %pause.0.off0 = phi i1 [ true, %sw.bb13 ], [ false, %sw.bb11 ], [ false, %if.end.sw.epilog_crit_edge ]
  %asm_dir.0.off0 = phi i1 [ true, %sw.bb13 ], [ true, %sw.bb11 ], [ false, %if.end.sw.epilog_crit_edge ]
  %device_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %17 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device_id, align 4
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %18, label %sw.epilog.cleanup_crit_edge [
    i16 5547, label %sw.epilog.sw.bb16_crit_edge
    i16 5570, label %sw.epilog.sw.bb16_crit_edge65
    i16 5571, label %sw.epilog.sw.bb16_crit_edge66
    i16 5552, label %sw.bb38
  ]

sw.epilog.sw.bb16_crit_edge66:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

sw.epilog.sw.bb16_crit_edge65:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

sw.epilog.sw.bb16_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb16:                                          ; preds = %sw.epilog.sw.bb16_crit_edge, %sw.epilog.sw.bb16_crit_edge65, %sw.epilog.sw.bb16_crit_edge66
  %read_iosf_sb_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 66
  %20 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_iosf_sb_reg, align 4
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %22 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool18.not = icmp eq i8 %23, 0
  %cond = select i1 %tobool18.not, i32 16940, i32 33324
  %call = call i32 %21(ptr noundef %hw, i32 noundef %cond, i32 noundef 0, ptr noundef nonnull %reg_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool19.not = icmp eq i32 %call, 0
  br i1 %tobool19.not, label %if.end21, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_val, align 4
  %and = and i32 %25, -805306369
  %or = or i32 %and, 268435456
  %spec.select = select i1 %pause.0.off0, i32 %or, i32 %and
  %or27 = or i32 %spec.select, 536870912
  %spec.select63 = select i1 %asm_dir.0.off0, i32 %or27, i32 %spec.select
  store i32 %spec.select63, ptr %reg_val, align 4
  %write_iosf_sb_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 67
  %26 = ptrtoint ptr %write_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_iosf_sb_reg, align 4
  %28 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool34.not = icmp eq i8 %29, 0
  %cond35 = select i1 %tobool34.not, i32 16940, i32 33324
  %call36 = call i32 %27(ptr noundef %hw, i32 noundef %cond35, i32 noundef 0, i32 noundef %spec.select63) #7
  %disable_fc_autoneg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 5
  %30 = ptrtoint ptr %disable_fc_autoneg to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %disable_fc_autoneg, align 4
  br label %cleanup

sw.bb38:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %disable_fc_autoneg40 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 5
  %31 = ptrtoint ptr %disable_fc_autoneg40 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %disable_fc_autoneg40, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb38, %if.end21, %sw.bb16.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.default, %if.then
  %retval.0 = phi i32 [ -13, %if.then ], [ -4, %sw.default ], [ %call, %sw.bb16.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.bb38 ], [ %call36, %if.end21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_mac_link_multispeed_fiber(ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_mac_link_sfp_n(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete) #0 align 64 {
entry:
  %reg_val.i = alloca i32, align 4
  %reg_phy_int = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_phy_int) #7
  %0 = ptrtoint ptr %reg_phy_int to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_phy_int, align 4, !annotation !155
  %sfp_type.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 4
  %1 = ptrtoint ptr %sfp_type.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sfp_type.i, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 65534, label %ixgbe_supported_sfp_modules_X550em.exit.thread43
    i32 3, label %entry.if.end2_crit_edge
    i32 4, label %entry.if.end2_crit_edge46
    i32 5, label %entry.sw.bb2.i_crit_edge
    i32 6, label %entry.sw.bb2.i_crit_edge47
    i32 7, label %entry.sw.bb2.i_crit_edge48
    i32 8, label %entry.sw.bb2.i_crit_edge49
    i32 11, label %entry.sw.bb2.i_crit_edge50
    i32 12, label %entry.sw.bb2.i_crit_edge51
    i32 13, label %entry.sw.bb2.i_crit_edge52
    i32 14, label %entry.sw.bb2.i_crit_edge53
  ]

entry.sw.bb2.i_crit_edge53:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge52:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge51:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge50:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge49:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge48:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge47:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.if.end2_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ixgbe_supported_sfp_modules_X550em.exit.thread43: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge47, %entry.sw.bb2.i_crit_edge48, %entry.sw.bb2.i_crit_edge49, %entry.sw.bb2.i_crit_edge50, %entry.sw.bb2.i_crit_edge51, %entry.sw.bb2.i_crit_edge52, %entry.sw.bb2.i_crit_edge53
  br label %if.end2

if.end2:                                          ; preds = %sw.bb2.i, %entry.if.end2_crit_edge, %entry.if.end2_crit_edge46
  %tobool8.not = phi i1 [ true, %sw.bb2.i ], [ false, %entry.if.end2_crit_edge ], [ false, %entry.if.end2_crit_edge46 ]
  %read_iosf_sb_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 66
  %4 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_iosf_sb_reg, align 4
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %6 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool3.not, i32 20564, i32 36948
  %call4 = call i32 %5(ptr noundef %hw, i32 noundef %cond, i32 noundef 0, ptr noundef nonnull %reg_phy_int) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %reg_phy_int to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_phy_int, align 4
  %and = and i32 %9, -3145729
  %or = or i32 %and, 1048576
  %spec.select = select i1 %tobool8.not, i32 %or, i32 %and
  store i32 %spec.select, ptr %reg_phy_int, align 4
  %write_iosf_sb_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 67
  %10 = ptrtoint ptr %write_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_iosf_sb_reg, align 4
  %12 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool16.not = icmp eq i8 %13, 0
  %cond17 = select i1 %tobool16.not, i32 20564, i32 36948
  %call18 = call i32 %11(ptr noundef %hw, i32 noundef %cond17, i32 noundef 0, i32 noundef %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #7
  %14 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !155
  %15 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_iosf_sb_reg, align 4
  %17 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  %cond.i = select i1 %tobool.not.i, i32 20564, i32 36948
  %call.i = call i32 %16(ptr noundef %hw, i32 noundef %cond.i, i32 noundef 0, ptr noundef nonnull %reg_val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.end21.ixgbe_setup_sfi_x550a.exit_crit_edge

if.end21.ixgbe_setup_sfi_x550a.exit_crit_edge:    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_setup_sfi_x550a.exit

if.end.i:                                         ; preds = %if.end21
  %19 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_val.i, align 4
  %and5.i = and i32 %20, -2113929217
  %21 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %speed, label %if.end.i.ixgbe_setup_sfi_x550a.exit_crit_edge [
    i32 128, label %if.end.i.sw.epilog.i38_crit_edge
    i32 32, label %sw.bb6.i
  ]

if.end.i.sw.epilog.i38_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i38

if.end.i.ixgbe_setup_sfi_x550a.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_setup_sfi_x550a.exit

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i38

sw.epilog.i38:                                    ; preds = %sw.bb6.i, %if.end.i.sw.epilog.i38_crit_edge
  %.sink.i = phi i32 [ 536870912, %sw.bb6.i ], [ 805306368, %if.end.i.sw.epilog.i38_crit_edge ]
  %or7.i = or i32 %.sink.i, %and5.i
  %22 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or7.i, ptr %reg_val.i, align 4
  %23 = ptrtoint ptr %write_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_iosf_sb_reg, align 4
  %25 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not.i = icmp eq i8 %26, 0
  %cond13.i = select i1 %tobool12.not.i, i32 20564, i32 36948
  %call14.i = call i32 %24(ptr noundef %hw, i32 noundef %cond13.i, i32 noundef 0, i32 noundef %or7.i) #7
  %call15.i = call fastcc i32 @ixgbe_restart_an_internal_phy_x550em(ptr noundef %hw) #7
  br label %ixgbe_setup_sfi_x550a.exit

ixgbe_setup_sfi_x550a.exit:                       ; preds = %sw.epilog.i38, %if.end.i.ixgbe_setup_sfi_x550a.exit_crit_edge, %if.end21.ixgbe_setup_sfi_x550a.exit_crit_edge
  %retval.0.i39 = phi i32 [ %call15.i, %sw.epilog.i38 ], [ %call.i, %if.end21.ixgbe_setup_sfi_x550a.exit_crit_edge ], [ -8, %if.end.i.ixgbe_setup_sfi_x550a.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #7
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_setup_sfi_x550a.exit, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %ixgbe_supported_sfp_modules_X550em.exit.thread43, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i39, %ixgbe_setup_sfi_x550a.exit ], [ %call4, %if.end2.cleanup_crit_edge ], [ %call18, %if.end7.cleanup_crit_edge ], [ 0, %ixgbe_supported_sfp_modules_X550em.exit.thread43 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_phy_int) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_mac_link_sfp_x550a(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete) #0 align 64 {
entry:
  %reg_phy_ext = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_phy_ext) #7
  %0 = ptrtoint ptr %reg_phy_ext to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg_phy_ext, align 2, !annotation !155
  %sfp_type.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 4
  %1 = ptrtoint ptr %sfp_type.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sfp_type.i, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 65534, label %ixgbe_supported_sfp_modules_X550em.exit.thread83
    i32 3, label %entry.if.end2_crit_edge
    i32 4, label %entry.if.end2_crit_edge86
    i32 5, label %entry.sw.bb2.i_crit_edge
    i32 6, label %entry.sw.bb2.i_crit_edge87
    i32 7, label %entry.sw.bb2.i_crit_edge88
    i32 8, label %entry.sw.bb2.i_crit_edge89
    i32 11, label %entry.sw.bb2.i_crit_edge90
    i32 12, label %entry.sw.bb2.i_crit_edge91
    i32 13, label %entry.sw.bb2.i_crit_edge92
    i32 14, label %entry.sw.bb2.i_crit_edge93
  ]

entry.sw.bb2.i_crit_edge93:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge92:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge91:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge90:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge89:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge88:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge87:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.if.end2_crit_edge86:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ixgbe_supported_sfp_modules_X550em.exit.thread83: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge87, %entry.sw.bb2.i_crit_edge88, %entry.sw.bb2.i_crit_edge89, %entry.sw.bb2.i_crit_edge90, %entry.sw.bb2.i_crit_edge91, %entry.sw.bb2.i_crit_edge92, %entry.sw.bb2.i_crit_edge93
  br label %if.end2

if.end2:                                          ; preds = %sw.bb2.i, %entry.if.end2_crit_edge, %entry.if.end2_crit_edge86
  %tobool34.not = phi i16 [ 9, %sw.bb2.i ], [ 5, %entry.if.end2_crit_edge ], [ 5, %entry.if.end2_crit_edge86 ]
  %call3 = tail call fastcc i32 @ixgbe_setup_kr_speed_x550em(ptr noundef %hw, i32 noundef %speed)
  %mdio = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp4 = icmp eq i32 %5, -1
  br i1 %cmp4, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %6 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg, align 4
  %call8 = call i32 %7(ptr noundef %hw, i32 noundef 415, i32 noundef 0, ptr noundef nonnull %reg_phy_ext) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %reg_phy_ext to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg_phy_ext, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %9)
  %cmp12 = icmp eq i16 %9, 16
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %10 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lan_id, align 1
  %conv15 = zext i8 %11 to i32
  br i1 %cmp12, label %if.then14, label %if.end11.if.end23_crit_edge

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %instance_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 5
  %12 = ptrtoint ptr %instance_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %instance_id, align 2
  %conv17 = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %conv17, 1
  %add = add nuw nsw i32 %shl, %conv15
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %if.end11.if.end23_crit_edge
  %slice_offset.0.in = phi i32 [ %add, %if.then14 ], [ %conv15, %if.end11.if.end23_crit_edge ]
  %slice_offset.0 = shl nuw nsw i32 %slice_offset.0.in, 12
  %add24 = add nuw nsw i32 %slice_offset.0, 4784
  %14 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_reg, align 4
  %call28 = call i32 %15(ptr noundef %hw, i32 noundef %add24, i32 noundef 0, ptr noundef nonnull %reg_phy_ext) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %16 = ptrtoint ptr %reg_phy_ext to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reg_phy_ext, align 2
  %18 = and i16 %17, -14
  %storemerge = or i16 %18, %tobool34.not
  store i16 %storemerge, ptr %reg_phy_ext, align 2
  %write_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %19 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_reg, align 4
  %call45 = call i32 %20(ptr noundef %hw, i32 noundef %add24, i32 noundef 0, i16 noundef zeroext %storemerge) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_reg, align 4
  %call52 = call i32 %22(ptr noundef %hw, i32 noundef %add24, i32 noundef 0, ptr noundef nonnull %reg_phy_ext) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end31.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %ixgbe_supported_sfp_modules_X550em.exit.thread83, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call52, %if.end48 ], [ -17, %if.end2.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ], [ %call28, %if.end23.cleanup_crit_edge ], [ %call45, %if.end31.cleanup_crit_edge ], [ 0, %ixgbe_supported_sfp_modules_X550em.exit.thread83 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_phy_ext) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_mac_link_sfp_x550em(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sfp_type.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 4
  %0 = ptrtoint ptr %sfp_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sfp_type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 65534, label %ixgbe_supported_sfp_modules_X550em.exit.thread24
    i32 3, label %entry.if.end2_crit_edge
    i32 4, label %entry.if.end2_crit_edge27
    i32 5, label %entry.sw.bb2.i_crit_edge
    i32 6, label %entry.sw.bb2.i_crit_edge28
    i32 7, label %entry.sw.bb2.i_crit_edge29
    i32 8, label %entry.sw.bb2.i_crit_edge30
    i32 11, label %entry.sw.bb2.i_crit_edge31
    i32 12, label %entry.sw.bb2.i_crit_edge32
    i32 13, label %entry.sw.bb2.i_crit_edge33
    i32 14, label %entry.sw.bb2.i_crit_edge34
  ]

entry.sw.bb2.i_crit_edge34:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge33:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge32:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge31:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge30:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge29:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge28:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.if.end2_crit_edge27:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ixgbe_supported_sfp_modules_X550em.exit.thread24: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge28, %entry.sw.bb2.i_crit_edge29, %entry.sw.bb2.i_crit_edge30, %entry.sw.bb2.i_crit_edge31, %entry.sw.bb2.i_crit_edge32, %entry.sw.bb2.i_crit_edge33, %entry.sw.bb2.i_crit_edge34
  br label %if.end2

if.end2:                                          ; preds = %sw.bb2.i, %entry.if.end2_crit_edge, %entry.if.end2_crit_edge27
  %tobool5.not = phi i16 [ 9, %sw.bb2.i ], [ 5, %entry.if.end2_crit_edge ], [ 5, %entry.if.end2_crit_edge27 ]
  %call3 = tail call fastcc i32 @ixgbe_setup_kr_speed_x550em(ptr noundef %hw, i32 noundef %speed)
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %3 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lan_id, align 1
  %conv = zext i8 %4 to i16
  %shl = shl i16 %conv, 12
  %add = add i16 %shl, 4784
  %write_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 6, i32 0, i32 2
  %5 = ptrtoint ptr %write_link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_link, align 4
  %addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr, align 4
  %call9 = tail call i32 %6(ptr noundef %hw, i8 noundef zeroext %8, i16 noundef zeroext %add, i16 noundef zeroext %tobool5.not) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %ixgbe_supported_sfp_modules_X550em.exit.thread24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end2 ], [ 0, %ixgbe_supported_sfp_modules_X550em.exit.thread24 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_set_soft_rate_select_speed(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_mac_link_t_X550em(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait) #0 align 64 {
entry:
  %force_speed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %force_speed) #7
  %and = and i32 %speed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 32, i32 128
  %0 = ptrtoint ptr %force_speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %., ptr %force_speed, align 4
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %land.lhs.true, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %nw_mng_if_sel = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 19
  %3 = ptrtoint ptr %nw_mng_if_sel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nw_mng_if_sel, align 4
  %and1 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then3, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then3:                                         ; preds = %land.lhs.true
  %call = call fastcc i32 @ixgbe_setup_ixfi_x550em(ptr noundef %hw, ptr noundef nonnull %force_speed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then3.if.end7_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %if.then3.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %setup_link_speed = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %5 = ptrtoint ptr %setup_link_speed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %setup_link_speed, align 4
  %call10 = tail call i32 %6(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ %call, %if.then3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %force_speed) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_check_link_t_X550em(ptr noundef %hw, ptr noundef %speed, ptr noundef %link_up, i1 noundef zeroext %link_up_wait_to_complete) #0 align 64 {
entry:
  %autoneg_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %autoneg_status) #7
  %0 = ptrtoint ptr %autoneg_status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %autoneg_status, align 2, !annotation !155
  %get_media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 4
  %1 = ptrtoint ptr %get_media_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_media_type, align 4
  %call = tail call i32 %2(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp.not = icmp eq i32 %call, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ixgbe_check_mac_link_generic(ptr noundef %hw, ptr noundef %speed, ptr noundef %link_up, i1 noundef zeroext %link_up_wait_to_complete) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %link_up, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %5 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg, align 4
  %call9 = call i32 %6(ptr noundef %hw, i32 noundef 1, i32 noundef 7, ptr noundef nonnull %autoneg_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.cond, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.cond.preheader
  %7 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_reg, align 4
  %call9.1 = call i32 %8(ptr noundef %hw, i32 noundef 1, i32 noundef 7, ptr noundef nonnull %autoneg_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %tobool10.not.1 = icmp eq i32 %call9.1, 0
  br i1 %tobool10.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %9 = ptrtoint ptr %autoneg_status to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %autoneg_status, align 2
  %11 = and i16 %10, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool14.not = icmp eq i16 %11, 0
  br i1 %tobool14.not, label %if.then15, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %link_up, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %for.cond.1.cleanup_crit_edge ], [ %call9, %for.cond.preheader.cleanup_crit_edge ], [ %call9.1, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %autoneg_status) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_sgmii(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete) #0 align 64 {
entry:
  %lval = alloca i32, align 4
  %sval = alloca i32, align 4
  %flx_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lval) #7
  %0 = ptrtoint ptr %lval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lval, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sval) #7
  %1 = ptrtoint ptr %sval to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %sval, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flx_val) #7
  %2 = ptrtoint ptr %flx_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flx_val, align 4, !annotation !155
  %read_iosf_sb_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 66
  %3 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_iosf_sb_reg, align 4
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %5 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool.not, i32 16908, i32 33292
  %call = call i32 %4(ptr noundef %hw, i32 noundef %cond, i32 noundef 0, ptr noundef nonnull %lval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %lval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lval, align 4
  %and3 = and i32 %8, -536884993
  %or5 = or i32 %and3, 12800
  store i32 %or5, ptr %lval, align 4
  %write_iosf_sb_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 67
  %9 = ptrtoint ptr %write_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_iosf_sb_reg, align 4
  %11 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  %cond11 = select i1 %tobool10.not, i32 16908, i32 33292
  %call12 = call i32 %10(ptr noundef %hw, i32 noundef %cond11, i32 noundef 0, i32 noundef %or5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %13 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_iosf_sb_reg, align 4
  %15 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool21.not = icmp eq i8 %16, 0
  %cond22 = select i1 %tobool21.not, i32 17056, i32 33440
  %call23 = call i32 %14(ptr noundef %hw, i32 noundef %cond22, i32 noundef 0, ptr noundef nonnull %sval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  %17 = ptrtoint ptr %sval to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sval, align 4
  %or28 = or i32 %18, 528384
  store i32 %or28, ptr %sval, align 4
  %19 = ptrtoint ptr %write_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_iosf_sb_reg, align 4
  %21 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool34.not = icmp eq i8 %22, 0
  %cond35 = select i1 %tobool34.not, i32 17056, i32 33440
  %call36 = call i32 %20(ptr noundef %hw, i32 noundef %cond35, i32 noundef 0, i32 noundef %or28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.end26
  %23 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_iosf_sb_reg, align 4
  %25 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool45.not = icmp eq i8 %26, 0
  %cond46 = select i1 %tobool45.not, i32 20564, i32 36948
  %call47 = call i32 %24(ptr noundef %hw, i32 noundef %cond46, i32 noundef 0, ptr noundef nonnull %flx_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %if.end39
  %27 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_iosf_sb_reg, align 4
  %29 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool56.not = icmp eq i8 %30, 0
  %cond57 = select i1 %tobool56.not, i32 20564, i32 36948
  %call58 = call i32 %28(ptr noundef %hw, i32 noundef %cond57, i32 noundef 0, ptr noundef nonnull %flx_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end61:                                         ; preds = %if.end50
  %31 = ptrtoint ptr %flx_val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flx_val, align 4
  %and62 = and i32 %32, -2113929217
  %or66 = or i32 %and62, 637534208
  store i32 %or66, ptr %flx_val, align 4
  %33 = ptrtoint ptr %write_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_iosf_sb_reg, align 4
  %35 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool72.not = icmp eq i8 %36, 0
  %cond73 = select i1 %tobool72.not, i32 20564, i32 36948
  %call74 = call i32 %34(ptr noundef %hw, i32 noundef %cond73, i32 noundef 0, i32 noundef %or66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end77:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %call78 = call fastcc i32 @ixgbe_restart_an_internal_phy_x550em(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.end61.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call78, %if.end77 ], [ %call, %entry.cleanup_crit_edge ], [ %call12, %if.end.cleanup_crit_edge ], [ %call23, %if.end15.cleanup_crit_edge ], [ %call36, %if.end26.cleanup_crit_edge ], [ %call47, %if.end39.cleanup_crit_edge ], [ %call58, %if.end50.cleanup_crit_edge ], [ %call74, %if.end61.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flx_val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sval) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lval) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_restart_an_internal_phy_x550em(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %link_ctrl = alloca i32, align 4
  %flx_mask_st20 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_ctrl) #7
  %0 = ptrtoint ptr %link_ctrl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_ctrl, align 4, !annotation !155
  %read_iosf_sb_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 66
  %1 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_iosf_sb_reg, align 4
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %3 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool.not, i32 16908, i32 33292
  %call = call i32 %2(ptr noundef %hw, i32 noundef %cond, i32 noundef 0, ptr noundef nonnull %link_ctrl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end10, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_restart_an_internal_phy_x550em.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_restart_an_internal_phy_x550em, %if.then7)) #7
          to label %cleanup66 [label %if.then7], !srcloc !154

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
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_restart_an_internal_phy_x550em.__UNIQUE_ID_ddebug372, ptr noundef %8, ptr noundef nonnull @.str.25) #7
  br label %cleanup66

if.end10:                                         ; preds = %entry
  %9 = ptrtoint ptr %link_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %link_ctrl, align 4
  %or = or i32 %10, -2147483648
  store i32 %or, ptr %link_ctrl, align 4
  %write_iosf_sb_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 67
  %11 = ptrtoint ptr %write_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_iosf_sb_reg, align 4
  %13 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  %cond17 = select i1 %tobool16.not, i32 16908, i32 33292
  %call18 = call i32 %12(ptr noundef %hw, i32 noundef %cond17, i32 noundef 0, i32 noundef %or) #7
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %cmp = icmp eq i32 %16, 6
  br i1 %cmp, label %if.then21, label %if.end10.cleanup66_crit_edge

if.end10.cleanup66_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup66

if.then21:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flx_mask_st20) #7
  %17 = ptrtoint ptr %flx_mask_st20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %flx_mask_st20, align 4, !annotation !155
  %18 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_iosf_sb_reg, align 4
  %20 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool28.not = icmp eq i8 %21, 0
  %cond29 = select i1 %tobool28.not, i32 20564, i32 36948
  %call30 = call i32 %19(ptr noundef %hw, i32 noundef %cond29, i32 noundef 0, ptr noundef nonnull %flx_mask_st20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup.thread, label %do.body34

do.body34:                                        ; preds = %if.then21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_restart_an_internal_phy_x550em.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_restart_an_internal_phy_x550em, %if.then46)) #7
          to label %cleanup [label %if.then46], !srcloc !154

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %back47 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %22 = ptrtoint ptr %back47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %back47, align 4
  %netdev48 = getelementptr inbounds %struct.ixgbe_adapter, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %netdev48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev48, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_restart_an_internal_phy_x550em.__UNIQUE_ID_ddebug373, ptr noundef %25, ptr noundef nonnull @.str.25) #7
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %flx_mask_st20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flx_mask_st20, align 4
  %or55 = or i32 %27, -2147483648
  store i32 %or55, ptr %flx_mask_st20, align 4
  %28 = ptrtoint ptr %write_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_iosf_sb_reg, align 4
  %30 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool62.not = icmp eq i8 %31, 0
  %cond63 = select i1 %tobool62.not, i32 20564, i32 36948
  %call64 = call i32 %29(ptr noundef %hw, i32 noundef %cond63, i32 noundef 0, i32 noundef %or55) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flx_mask_st20) #7
  br label %cleanup66

cleanup:                                          ; preds = %if.then46, %do.body34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flx_mask_st20) #7
  br label %cleanup66

cleanup66:                                        ; preds = %cleanup, %cleanup.thread, %if.end10.cleanup66_crit_edge, %if.then7, %do.body2
  %retval.1 = phi i32 [ %call30, %cleanup ], [ %call, %if.then7 ], [ %call, %do.body2 ], [ %call18, %if.end10.cleanup66_crit_edge ], [ %call64, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_ctrl) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_setup_kr_speed_x550em(ptr noundef %hw, i32 noundef %speed) unnamed_addr #0 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #7
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !155
  %read_iosf_sb_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 66
  %1 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_iosf_sb_reg, align 4
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %3 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool.not, i32 16908, i32 33292
  %call = call i32 %2(ptr noundef %hw, i32 noundef %cond, i32 noundef 0, ptr noundef nonnull %reg_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_val, align 4
  %or = and i32 %6, -537198593
  %and2 = and i32 %speed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %spec.select.v = select i1 %tobool3.not, i32 536870912, i32 537133056
  %spec.select = or i32 %or, %spec.select.v
  %and7 = shl i32 %speed, 11
  %7 = and i32 %and7, 65536
  %8 = or i32 %7, %spec.select
  %9 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %reg_val, align 4
  %write_iosf_sb_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 67
  %10 = ptrtoint ptr %write_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_iosf_sb_reg, align 4
  %12 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool17.not = icmp eq i8 %13, 0
  %cond18 = select i1 %tobool17.not, i32 16908, i32 33292
  %call19 = call i32 %11(ptr noundef %hw, i32 noundef %cond18, i32 noundef 0, i32 noundef %8) #7
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp = icmp eq i32 %15, 6
  br i1 %cmp, label %if.then22, label %if.end.if.end49_crit_edge

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then22:                                        ; preds = %if.end
  %16 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_iosf_sb_reg, align 4
  %18 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool29.not = icmp eq i8 %19, 0
  %cond30 = select i1 %tobool29.not, i32 20564, i32 36948
  %call31 = call i32 %17(ptr noundef %hw, i32 noundef %cond30, i32 noundef 0, ptr noundef nonnull %reg_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_val, align 4
  %and35 = and i32 %21, -2113929217
  %or37 = or i32 %and35, 1207959552
  store i32 %or37, ptr %reg_val, align 4
  %22 = ptrtoint ptr %write_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_iosf_sb_reg, align 4
  %24 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool46.not = icmp eq i8 %25, 0
  %cond47 = select i1 %tobool46.not, i32 20564, i32 36948
  %call48 = call i32 %23(ptr noundef %hw, i32 noundef %cond47, i32 noundef 0, i32 noundef %or37) #7
  br label %if.end49

if.end49:                                         ; preds = %if.end34, %if.end.if.end49_crit_edge
  %call50 = call fastcc i32 @ixgbe_restart_an_internal_phy_x550em(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call50, %if.end49 ], [ %call, %entry.cleanup_crit_edge ], [ %call31, %if.then22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_setup_ixfi_x550em(ptr noundef %hw, ptr nocapture noundef readonly %speed) unnamed_addr #0 align 64 {
entry:
  %reg_val.i = alloca i32, align 4
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #7
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !155
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp.not = icmp eq i32 %2, 5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %3 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool.not, i32 16908, i32 33292
  %call = call i32 @ixgbe_read_iosf_sb_reg_x550(ptr noundef %hw, i32 noundef %cond, i32 noundef 0, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_val, align 4
  %and5 = and i32 %6, -536872705
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %8, label %if.end4.cleanup_crit_edge [
    i32 128, label %if.end4.sw.epilog_crit_edge
    i32 32, label %sw.bb6
  ]

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb6:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %if.end4.sw.epilog_crit_edge
  %.sink = phi i32 [ 512, %sw.bb6 ], [ 1024, %if.end4.sw.epilog_crit_edge ]
  %or7 = or i32 %and5, %.sink
  %10 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  %cond12 = select i1 %tobool11.not, i32 16908, i32 33292
  %call13 = tail call i32 @ixgbe_write_iosf_sb_reg_x550(ptr noundef %hw, i32 noundef %cond12, i32 noundef 0, i32 noundef %or7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %sw.epilog
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp19 = icmp eq i32 %13, 5
  br i1 %cmp19, label %if.then21, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then21:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #7
  %14 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !155
  %15 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  %cond.i = select i1 %tobool.not.i, i32 19200, i32 35584
  %call.i = call i32 @ixgbe_read_iosf_sb_reg_x550(ptr noundef %hw, i32 noundef %cond.i, i32 noundef 0, ptr noundef nonnull %reg_val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then21.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge

if.then21.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_setup_ixfi_x550em_x.exit.thread

if.end.i:                                         ; preds = %if.then21
  %17 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_val.i, align 4
  %or.i = or i32 %18, 16
  store i32 %or.i, ptr %reg_val.i, align 4
  %19 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool5.not.i = icmp eq i8 %20, 0
  %cond6.i = select i1 %tobool5.not.i, i32 19200, i32 35584
  %call7.i = tail call i32 @ixgbe_write_iosf_sb_reg_x550(ptr noundef %hw, i32 noundef %cond6.i, i32 noundef 0, i32 noundef %or.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge

if.end.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_setup_ixfi_x550em_x.exit.thread

if.end10.i:                                       ; preds = %if.end.i
  %21 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool14.not.i = icmp eq i8 %22, 0
  %cond15.i = select i1 %tobool14.not.i, i32 17972, i32 34356
  %call16.i = call i32 @ixgbe_read_iosf_sb_reg_x550(ptr noundef %hw, i32 noundef %cond15.i, i32 noundef 0, ptr noundef nonnull %reg_val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end10.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge

if.end10.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_setup_ixfi_x550em_x.exit.thread

if.end19.i:                                       ; preds = %if.end10.i
  %23 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_val.i, align 4
  %and21.i = and i32 %24, -98369
  store i32 %and21.i, ptr %reg_val.i, align 4
  %25 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool25.not.i = icmp eq i8 %26, 0
  %cond26.i = select i1 %tobool25.not.i, i32 17972, i32 34356
  %call27.i = tail call i32 @ixgbe_write_iosf_sb_reg_x550(ptr noundef %hw, i32 noundef %cond26.i, i32 noundef 0, i32 noundef %and21.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end19.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge

if.end19.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_setup_ixfi_x550em_x.exit.thread

if.end30.i:                                       ; preds = %if.end19.i
  %27 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool34.not.i = icmp eq i8 %28, 0
  %cond35.i = select i1 %tobool34.not.i, i32 17976, i32 34360
  %call36.i = call i32 @ixgbe_read_iosf_sb_reg_x550(ptr noundef %hw, i32 noundef %cond35.i, i32 noundef 0, ptr noundef nonnull %reg_val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end30.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge

if.end30.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_setup_ixfi_x550em_x.exit.thread

if.end39.i:                                       ; preds = %if.end30.i
  %29 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_val.i, align 4
  %and42.i = and i32 %30, -98369
  store i32 %and42.i, ptr %reg_val.i, align 4
  %31 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool46.not.i = icmp eq i8 %32, 0
  %cond47.i = select i1 %tobool46.not.i, i32 17976, i32 34360
  %call48.i = tail call i32 @ixgbe_write_iosf_sb_reg_x550(ptr noundef %hw, i32 noundef %cond47.i, i32 noundef 0, i32 noundef %and42.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %if.end39.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge

if.end39.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_setup_ixfi_x550em_x.exit.thread

if.end51.i:                                       ; preds = %if.end39.i
  %33 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool55.not.i = icmp eq i8 %34, 0
  %cond56.i = select i1 %tobool55.not.i, i32 21792, i32 38176
  %call57.i = call i32 @ixgbe_read_iosf_sb_reg_x550(ptr noundef %hw, i32 noundef %cond56.i, i32 noundef 0, ptr noundef nonnull %reg_val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %ixgbe_setup_ixfi_x550em_x.exit, label %if.end51.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge

if.end51.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_setup_ixfi_x550em_x.exit.thread

ixgbe_setup_ixfi_x550em_x.exit.thread:            ; preds = %if.end51.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge, %if.end39.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge, %if.end30.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge, %if.end19.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge, %if.end10.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge, %if.end.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge, %if.then21.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call57.i, %if.end51.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge ], [ %call48.i, %if.end39.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge ], [ %call36.i, %if.end30.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge ], [ %call27.i, %if.end19.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge ], [ %call16.i, %if.end10.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge ], [ %call7.i, %if.end.i.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge ], [ %call.i, %if.then21.ixgbe_setup_ixfi_x550em_x.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #7
  br label %cleanup

ixgbe_setup_ixfi_x550em_x.exit:                   ; preds = %if.end51.i
  %35 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_val.i, align 4
  %or64.i = or i32 %36, -2147483634
  %37 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool68.not.i = icmp eq i8 %38, 0
  %cond69.i = select i1 %tobool68.not.i, i32 21792, i32 38176
  %call70.i = tail call i32 @ixgbe_write_iosf_sb_reg_x550(ptr noundef %hw, i32 noundef %cond69.i, i32 noundef 0, i32 noundef %or64.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool23.not = icmp eq i32 %call70.i, 0
  br i1 %tobool23.not, label %ixgbe_setup_ixfi_x550em_x.exit.if.end26_crit_edge, label %ixgbe_setup_ixfi_x550em_x.exit.cleanup_crit_edge

ixgbe_setup_ixfi_x550em_x.exit.cleanup_crit_edge: ; preds = %ixgbe_setup_ixfi_x550em_x.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ixgbe_setup_ixfi_x550em_x.exit.if.end26_crit_edge: ; preds = %ixgbe_setup_ixfi_x550em_x.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end26:                                         ; preds = %ixgbe_setup_ixfi_x550em_x.exit.if.end26_crit_edge, %if.end16.if.end26_crit_edge
  %call27 = tail call fastcc i32 @ixgbe_restart_an_internal_phy_x550em(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %ixgbe_setup_ixfi_x550em_x.exit.cleanup_crit_edge, %ixgbe_setup_ixfi_x550em_x.exit.thread, %sw.epilog.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end26 ], [ -8, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -8, %if.end4.cleanup_crit_edge ], [ %call13, %sw.epilog.cleanup_crit_edge ], [ %call70.i, %ixgbe_setup_ixfi_x550em_x.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %ixgbe_setup_ixfi_x550em_x.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ixgbe_fc_autoneg_fiber_x550em_a(ptr nocapture noundef %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_was_autonegged = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %fc_was_autonegged to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %fc_was_autonegged, align 1
  %requested_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %requested_mode, align 4
  %current_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %current_mode, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_fc_autoneg_sgmii_x550em_a(ptr noundef %hw) #0 align 64 {
entry:
  %hic.i = alloca %union.anon.121, align 8
  %speed = alloca i32, align 4
  %link_up = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #7
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %speed, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up) #7
  %1 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %link_up, align 1, !annotation !155
  %disable_fc_autoneg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 5
  %2 = ptrtoint ptr %disable_fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disable_fc_autoneg, align 4, !range !156
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
  %7 = load i8, ptr %link_up, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end.if.else_crit_edge, label %if.end3

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hic.i) #7
  %8 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %hic.i, i32 0, i32 2
  %9 = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic.i, i32 0, i32 4
  %lan_id.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end19.i.do.body.i_crit_edge, %if.end3
  %retries.0.i = phi i16 [ 50, %if.end3 ], [ %dec.i, %if.end19.i.do.body.i_crit_edge ]
  %11 = ptrtoint ptr %hic.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 365918564940514048, ptr %hic.i, align 8
  %12 = ptrtoint ptr %lan_id.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %lan_id.i, align 1
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %9, align 4
  %15 = call ptr @memset(ptr %10, i32 0, i32 16)
  %call.i = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %hic.i, i32 noundef 24, i32 noundef 500, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.ixgbe_fw_phy_activity.exit.thread_crit_edge

do.body.i.ixgbe_fw_phy_activity.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_fw_phy_activity.exit.thread

if.end.i:                                         ; preds = %do.body.i
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %8, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp6.i = icmp eq i8 %17, 1
  br i1 %cmp6.i, label %lor.lhs.false, label %if.end19.i

if.end19.i:                                       ; preds = %if.end.i
  call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #7
  %dec.i = add nsw i16 %retries.0.i, -1
  %cmp21.not.i = icmp eq i16 %dec.i, 0
  br i1 %cmp21.not.i, label %if.end19.i.ixgbe_fw_phy_activity.exit.thread_crit_edge, label %if.end19.i.do.body.i_crit_edge

if.end19.i.do.body.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end19.i.ixgbe_fw_phy_activity.exit.thread_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_fw_phy_activity.exit.thread

ixgbe_fw_phy_activity.exit.thread:                ; preds = %if.end19.i.ixgbe_fw_phy_activity.exit.thread_crit_edge, %do.body.i.ixgbe_fw_phy_activity.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hic.i) #7
  br label %if.else

lor.lhs.false:                                    ; preds = %if.end.i
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %info.sroa.0.0.copyload32 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hic.i) #7
  %and = and i32 %info.sroa.0.0.copyload32, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.else_crit_edge, label %if.end8

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end8:                                          ; preds = %lor.lhs.false
  %call11 = call i32 @ixgbe_negotiate_fc(ptr noundef %hw, i32 noundef %info.sroa.0.0.copyload32, i32 noundef %info.sroa.0.0.copyload32, i32 noundef 2097152, i32 noundef 1048576, i32 noundef 536870912, i32 noundef 268435456) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %phi.cmp = icmp eq i32 %call11, 0
  br i1 %phi.cmp, label %if.then13, label %if.end8.if.else_crit_edge

if.end8.if.else_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %fc_was_autonegged = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 6
  %19 = ptrtoint ptr %fc_was_autonegged to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %fc_was_autonegged, align 1
  br label %if.end19

if.else:                                          ; preds = %if.end8.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge, %ixgbe_fw_phy_activity.exit.thread, %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  %fc_was_autonegged16 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 6
  %20 = ptrtoint ptr %fc_was_autonegged16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %fc_was_autonegged16, align 1
  %requested_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 8
  %21 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %requested_mode, align 4
  %current_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 7
  %23 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %current_mode, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_fc_autoneg_fw(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %requested_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %requested_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %requested_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @ixgbe_setup_fw_link(ptr noundef %hw)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_sgmii_fw(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait) #0 align 64 {
entry:
  %lval = alloca i32, align 4
  %sval = alloca i32, align 4
  %flx_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lval) #7
  %0 = ptrtoint ptr %lval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lval, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sval) #7
  %1 = ptrtoint ptr %sval to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %sval, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flx_val) #7
  %2 = ptrtoint ptr %flx_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flx_val, align 4, !annotation !155
  %read_iosf_sb_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 66
  %3 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_iosf_sb_reg, align 4
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %5 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool.not, i32 16908, i32 33292
  %call = call i32 %4(ptr noundef %hw, i32 noundef %cond, i32 noundef 0, ptr noundef nonnull %lval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %lval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lval, align 4
  %and3 = and i32 %8, -536884993
  %or4 = or i32 %and3, 12288
  store i32 %or4, ptr %lval, align 4
  %write_iosf_sb_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 67
  %9 = ptrtoint ptr %write_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_iosf_sb_reg, align 4
  %11 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  %cond11 = select i1 %tobool10.not, i32 16908, i32 33292
  %call12 = call i32 %10(ptr noundef %hw, i32 noundef %cond11, i32 noundef 0, i32 noundef %or4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %13 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_iosf_sb_reg, align 4
  %15 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool21.not = icmp eq i8 %16, 0
  %cond22 = select i1 %tobool21.not, i32 17056, i32 33440
  %call23 = call i32 %14(ptr noundef %hw, i32 noundef %cond22, i32 noundef 0, ptr noundef nonnull %sval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  %17 = ptrtoint ptr %sval to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sval, align 4
  %and28 = and i32 %18, -528385
  store i32 %and28, ptr %sval, align 4
  %19 = ptrtoint ptr %write_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_iosf_sb_reg, align 4
  %21 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool34.not = icmp eq i8 %22, 0
  %cond35 = select i1 %tobool34.not, i32 17056, i32 33440
  %call36 = call i32 %20(ptr noundef %hw, i32 noundef %cond35, i32 noundef 0, i32 noundef %and28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.end26
  %23 = ptrtoint ptr %write_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_iosf_sb_reg, align 4
  %25 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool45.not = icmp eq i8 %26, 0
  %cond46 = select i1 %tobool45.not, i32 16908, i32 33292
  %27 = ptrtoint ptr %lval to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lval, align 4
  %call47 = call i32 %24(ptr noundef %hw, i32 noundef %cond46, i32 noundef 0, i32 noundef %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %if.end39
  %29 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_iosf_sb_reg, align 4
  %31 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool56.not = icmp eq i8 %32, 0
  %cond57 = select i1 %tobool56.not, i32 20564, i32 36948
  %call58 = call i32 %30(ptr noundef %hw, i32 noundef %cond57, i32 noundef 0, ptr noundef nonnull %flx_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end61:                                         ; preds = %if.end50
  %33 = ptrtoint ptr %flx_val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flx_val, align 4
  %and62 = and i32 %34, -2113929217
  %or66 = or i32 %and62, 1174405120
  store i32 %or66, ptr %flx_val, align 4
  %35 = ptrtoint ptr %write_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_iosf_sb_reg, align 4
  %37 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool72.not = icmp eq i8 %38, 0
  %cond73 = select i1 %tobool72.not, i32 20564, i32 36948
  %call74 = call i32 %36(ptr noundef %hw, i32 noundef %cond73, i32 noundef 0, i32 noundef %or66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end77:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %call78 = call fastcc i32 @ixgbe_restart_an_internal_phy_x550em(ptr noundef %hw)
  %setup_link_speed = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %39 = ptrtoint ptr %setup_link_speed to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %setup_link_speed, align 4
  %call81 = call i32 %40(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.end61.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call81, %if.end77 ], [ %call, %entry.cleanup_crit_edge ], [ %call12, %if.end.cleanup_crit_edge ], [ %call23, %if.end15.cleanup_crit_edge ], [ %call36, %if.end26.cleanup_crit_edge ], [ %call47, %if.end39.cleanup_crit_edge ], [ %call58, %if.end50.cleanup_crit_edge ], [ %call74, %if.end61.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flx_val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sval) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lval) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_fc_autoneg_backplane_x550em_a(ptr noundef %hw) #0 align 64 {
entry:
  %link_s1 = alloca i32, align 4
  %lp_an_page_low = alloca i32, align 4
  %an_cntl_1 = alloca i32, align 4
  %speed = alloca i32, align 4
  %link_up = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_s1) #7
  %0 = ptrtoint ptr %link_s1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_s1, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lp_an_page_low) #7
  %1 = ptrtoint ptr %lp_an_page_low to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %lp_an_page_low, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %an_cntl_1) #7
  %2 = ptrtoint ptr %an_cntl_1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %an_cntl_1, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #7
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %speed, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up) #7
  %4 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %link_up, align 1, !annotation !155
  %disable_fc_autoneg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 5
  %5 = ptrtoint ptr %disable_fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %disable_fc_autoneg, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.27) #10
  br label %if.else

if.end:                                           ; preds = %entry
  %check_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 29
  %11 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %check_link, align 4
  %call = call i32 %12(ptr noundef %hw, ptr noundef nonnull %speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  %13 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %link_up, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not = icmp eq i8 %14, 0
  br i1 %tobool1.not, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %back3 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %back3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %back3, align 4
  %netdev4 = getelementptr inbounds %struct.ixgbe_adapter, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %netdev4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev4, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.28) #10
  br label %if.else

if.end5:                                          ; preds = %if.end
  %read_iosf_sb_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 66
  %19 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_iosf_sb_reg, align 4
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %21 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool8.not = icmp eq i8 %22, 0
  %cond = select i1 %tobool8.not, i32 16896, i32 33280
  %call9 = call i32 %20(ptr noundef %hw, i32 noundef %cond, i32 noundef 0, ptr noundef nonnull %link_s1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.end5.do.body13_crit_edge

if.end5.do.body13_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

lor.lhs.false:                                    ; preds = %if.end5
  %23 = ptrtoint ptr %link_s1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %link_s1, align 4
  %and = and i32 %24, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %lor.lhs.false.do.body13_crit_edge, label %if.end24

lor.lhs.false.do.body13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

do.body13:                                        ; preds = %lor.lhs.false.do.body13_crit_edge, %if.end5.do.body13_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fc_autoneg_backplane_x550em_a.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fc_autoneg_backplane_x550em_a, %if.then18)) #7
          to label %if.else [label %if.then18], !srcloc !154

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %back19 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %25 = ptrtoint ptr %back19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %back19, align 4
  %netdev20 = getelementptr inbounds %struct.ixgbe_adapter, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev20, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fc_autoneg_backplane_x550em_a.__UNIQUE_ID_ddebug374, ptr noundef %28, ptr noundef nonnull @.str.30) #7
  br label %if.else

if.end24:                                         ; preds = %lor.lhs.false
  %29 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_iosf_sb_reg, align 4
  %31 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool31.not = icmp eq i8 %32, 0
  %cond32 = select i1 %tobool31.not, i32 16940, i32 33324
  %call33 = call i32 %30(ptr noundef %hw, i32 noundef %cond32, i32 noundef 0, ptr noundef nonnull %an_cntl_1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end57, label %do.body37

do.body37:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fc_autoneg_backplane_x550em_a.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fc_autoneg_backplane_x550em_a, %if.then49)) #7
          to label %if.else [label %if.then49], !srcloc !154

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  %back50 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %33 = ptrtoint ptr %back50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %back50, align 4
  %netdev51 = getelementptr inbounds %struct.ixgbe_adapter, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %netdev51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %netdev51, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fc_autoneg_backplane_x550em_a.__UNIQUE_ID_ddebug375, ptr noundef %36, ptr noundef nonnull @.str.30) #7
  br label %if.else

if.end57:                                         ; preds = %if.end24
  %37 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_iosf_sb_reg, align 4
  %39 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool64.not = icmp eq i8 %40, 0
  %cond65 = select i1 %tobool64.not, i32 17260, i32 33644
  %call66 = call i32 %38(ptr noundef %hw, i32 noundef %cond65, i32 noundef 0, ptr noundef nonnull %lp_an_page_low) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end90, label %do.body70

do.body70:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fc_autoneg_backplane_x550em_a.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fc_autoneg_backplane_x550em_a, %if.then82)) #7
          to label %if.else [label %if.then82], !srcloc !154

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %back83 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %41 = ptrtoint ptr %back83 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %back83, align 4
  %netdev84 = getelementptr inbounds %struct.ixgbe_adapter, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %netdev84 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev84, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fc_autoneg_backplane_x550em_a.__UNIQUE_ID_ddebug376, ptr noundef %44, ptr noundef nonnull @.str.30) #7
  br label %if.else

if.end90:                                         ; preds = %if.end57
  %45 = ptrtoint ptr %an_cntl_1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %an_cntl_1, align 4
  %47 = ptrtoint ptr %lp_an_page_low to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %lp_an_page_low, align 4
  %call91 = call i32 @ixgbe_negotiate_fc(ptr noundef %hw, i32 noundef %46, i32 noundef %48, i32 noundef 268435456, i32 noundef 536870912, i32 noundef 1024, i32 noundef 2048) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %phi.cmp = icmp eq i32 %call91, 0
  br i1 %phi.cmp, label %if.then93, label %if.end90.if.else_crit_edge

if.end90.if.else_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %fc_was_autonegged = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 6
  %49 = ptrtoint ptr %fc_was_autonegged to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %fc_was_autonegged, align 1
  br label %if.end99

if.else:                                          ; preds = %if.end90.if.else_crit_edge, %if.then82, %do.body70, %if.then49, %do.body37, %if.then18, %do.body13, %if.then2, %if.then
  %fc_was_autonegged96 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 6
  %50 = ptrtoint ptr %fc_was_autonegged96 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %fc_was_autonegged96, align 1
  %requested_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 8
  %51 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %requested_mode, align 4
  %current_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 7
  %53 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %current_mode, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.else, %if.then93
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %an_cntl_1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lp_an_page_low) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_s1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_fc_backplane_x550em_a(ptr noundef %hw) #0 align 64 {
entry:
  %an_cntl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %an_cntl) #7
  %0 = ptrtoint ptr %an_cntl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %an_cntl, align 4
  %strict_ieee = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 4
  %1 = ptrtoint ptr %strict_ieee to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %strict_ieee, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %requested_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %requested_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %requested_mode3 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %requested_mode3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %requested_mode3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp4 = icmp eq i32 %10, 4
  br i1 %cmp4, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %requested_mode3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %requested_mode3, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %read_iosf_sb_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 66
  %12 = ptrtoint ptr %read_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_iosf_sb_reg, align 4
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %14 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not = icmp eq i8 %15, 0
  %cond = select i1 %tobool9.not, i32 16940, i32 33324
  %call = call i32 %13(ptr noundef %hw, i32 noundef %cond, i32 noundef 0, ptr noundef nonnull %an_cntl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end23, label %do.body12

do.body12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_setup_fc_backplane_x550em_a.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_setup_fc_backplane_x550em_a, %if.then17)) #7
          to label %cleanup [label %if.then17], !srcloc !154

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %back18 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %16 = ptrtoint ptr %back18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %back18, align 4
  %netdev19 = getelementptr inbounds %struct.ixgbe_adapter, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %netdev19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev19, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_setup_fc_backplane_x550em_a.__UNIQUE_ID_ddebug379, ptr noundef %19, ptr noundef nonnull @.str.30) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end8
  %20 = ptrtoint ptr %requested_mode3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %requested_mode3, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %21, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb26
    i32 1, label %if.end23.sw.bb28_crit_edge
    i32 3, label %if.end23.sw.bb28_crit_edge59
  ]

if.end23.sw.bb28_crit_edge59:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end23.sw.bb28_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %an_cntl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %an_cntl, align 4
  %and = and i32 %24, -805306369
  store i32 %and, ptr %an_cntl, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %an_cntl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %an_cntl, align 4
  %or = and i32 %26, -805306369
  %and27 = or i32 %or, 536870912
  store i32 %and27, ptr %an_cntl, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end23.sw.bb28_crit_edge, %if.end23.sw.bb28_crit_edge59
  %27 = ptrtoint ptr %an_cntl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %an_cntl, align 4
  %or29 = or i32 %28, 805306368
  store i32 %or29, ptr %an_cntl, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %back30 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %29 = ptrtoint ptr %back30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %back30, align 4
  %netdev31 = getelementptr inbounds %struct.ixgbe_adapter, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %netdev31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev31, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %32, ptr noundef nonnull @.str.23) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb26, %sw.bb
  %write_iosf_sb_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 67
  %33 = ptrtoint ptr %write_iosf_sb_reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_iosf_sb_reg, align 4
  %35 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool37.not = icmp eq i8 %36, 0
  %cond38 = select i1 %tobool37.not, i32 16940, i32 33324
  %37 = ptrtoint ptr %an_cntl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %an_cntl, align 4
  %call39 = call i32 %34(ptr noundef %hw, i32 noundef %cond38, i32 noundef 0, i32 noundef %38) #7
  %call40 = call fastcc i32 @ixgbe_restart_an_internal_phy_x550em(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then17, %do.body12, %if.then
  %retval.0 = phi i32 [ -13, %if.then ], [ -4, %sw.default ], [ %call40, %sw.epilog ], [ %call, %if.then17 ], [ %call, %do.body12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %an_cntl) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_negotiate_fc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_fw_link(ptr noundef %hw) #0 align 64 {
entry:
  %hic.i = alloca %union.anon.121, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_disable = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 9
  %0 = ptrtoint ptr %reset_disable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reset_disable, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i1 @ixgbe_check_reset_blocked(ptr noundef %hw) #7
  br i1 %call, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %strict_ieee = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %strict_ieee to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %strict_ieee, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %requested_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %requested_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then3, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %requested_mode6 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %requested_mode6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %requested_mode6, align 4
  %switch.tableidx = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 3
  br i1 %12, label %switch.lookup, label %if.end4.sw.epilog_crit_edge

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ixgbe_setup_fw_link, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end4.sw.epilog_crit_edge
  %setup.sroa.0.0 = phi i32 [ 0, %if.end4.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %autoneg_advertised = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 10
  %14 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %autoneg_advertised, align 4
  %and = lshr i32 %15, 1
  %16 = and i32 %and, 1
  %17 = or i32 %16, %setup.sroa.0.0
  %and.1 = lshr i32 %15, 2
  %18 = and i32 %and.1, 2
  %19 = or i32 %18, %17
  %and.2 = lshr i32 %15, 3
  %20 = and i32 %and.2, 4
  %21 = or i32 %20, %19
  %and.3 = lshr i32 %15, 7
  %22 = and i32 %and.3, 8
  %23 = or i32 %22, %21
  %and.4 = lshr i32 %15, 7
  %24 = and i32 %and.4, 16
  %25 = or i32 %24, %23
  %and.5 = lshr i32 %15, 2
  %26 = and i32 %and.5, 32
  %27 = or i32 %26, %25
  %eee_speeds_advertised = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 13
  %28 = ptrtoint ptr %eee_speeds_advertised to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %eee_speeds_advertised, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool28.not = icmp eq i32 %29, 0
  %spec.select.v = select i1 %tobool28.not, i32 4718592, i32 5767168
  %spec.select = or i32 %spec.select.v, %27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hic.i) #7
  %30 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %hic.i, i32 0, i32 2
  %31 = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic.i, i32 0, i32 1
  %32 = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic.i, i32 0, i32 4
  %lan_id.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %setup.sroa.17.0..sroa_idx = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic.i, i32 0, i32 4, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end19.i.do.body.i_crit_edge, %sw.epilog
  %retries.0.i = phi i16 [ 50, %sw.epilog ], [ %dec.i, %if.end19.i.do.body.i_crit_edge ]
  %33 = ptrtoint ptr %hic.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 365918564940513792, ptr %hic.i, align 8
  %34 = ptrtoint ptr %lan_id.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %lan_id.i, align 1
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %31, align 4
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select, ptr %32, align 8
  %38 = call ptr @memset(ptr %setup.sroa.17.0..sroa_idx, i32 0, i32 12)
  %call.i = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %hic.i, i32 noundef 24, i32 noundef 500, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.ixgbe_fw_phy_activity.exit.thread_crit_edge

do.body.i.ixgbe_fw_phy_activity.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_fw_phy_activity.exit.thread

if.end.i:                                         ; preds = %do.body.i
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %30, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp6.i = icmp eq i8 %40, 1
  br i1 %cmp6.i, label %if.end36, label %if.end19.i

if.end19.i:                                       ; preds = %if.end.i
  call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #7
  %dec.i = add nsw i16 %retries.0.i, -1
  %cmp21.not.i = icmp eq i16 %dec.i, 0
  br i1 %cmp21.not.i, label %if.end19.i.ixgbe_fw_phy_activity.exit.thread_crit_edge, label %if.end19.i.do.body.i_crit_edge

if.end19.i.do.body.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end19.i.ixgbe_fw_phy_activity.exit.thread_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_fw_phy_activity.exit.thread

ixgbe_fw_phy_activity.exit.thread:                ; preds = %if.end19.i.ixgbe_fw_phy_activity.exit.thread_crit_edge, %do.body.i.ixgbe_fw_phy_activity.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %do.body.i.ixgbe_fw_phy_activity.exit.thread_crit_edge ], [ -33, %if.end19.i.ixgbe_fw_phy_activity.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hic.i) #7
  br label %cleanup

if.end36:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %setup.sroa.0.0.copyload61 = load i32, ptr %31, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hic.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %setup.sroa.0.0.copyload61)
  %cmp38 = icmp eq i32 %setup.sroa.0.0.copyload61, 1
  %. = select i1 %cmp38, i32 -26, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %ixgbe_fw_phy_activity.exit.thread, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %if.then3 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %., %if.end36 ], [ %retval.0.i.ph, %ixgbe_fw_phy_activity.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ixgbe_check_reset_blocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_init_eeprom_params_X540(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_identify_phy_x550em(ptr noundef %hw) #0 align 64 {
entry:
  %value.i.i = alloca i16, align 2
  %reg.i.i = alloca i8, align 1
  %value.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %0 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device_id, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %1, label %entry.return_crit_edge [
    i16 5582, label %sw.bb
    i16 5548, label %sw.bb3
    i16 5572, label %entry.sw.bb6_crit_edge
    i16 5546, label %sw.bb8
    i16 5552, label %sw.bb10
    i16 5547, label %entry.sw.bb13_crit_edge
    i16 5570, label %entry.sw.bb13_crit_edge74
    i16 5571, label %entry.sw.bb13_crit_edge75
    i16 5576, label %sw.bb16
    i16 5549, label %entry.sw.bb27_crit_edge
    i16 5550, label %sw.bb29
    i16 5604, label %entry.sw.bb32_crit_edge
    i16 5605, label %entry.sw.bb32_crit_edge76
  ]

entry.sw.bb32_crit_edge76:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

entry.sw.bb32_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

entry.sw.bb27_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27

entry.sw.bb13_crit_edge75:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

entry.sw.bb13_crit_edge74:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %3 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %spec.select = select i1 %tobool.not, i32 2, i32 4
  %5 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %5, align 4
  %call = tail call i32 @ixgbe_identify_module_generic(ptr noundef %hw) #7
  br label %return

sw.bb3:                                           ; preds = %entry
  %phy_semaphore_mask5 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %7 = ptrtoint ptr %phy_semaphore_mask5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6150, ptr %phy_semaphore_mask5, align 4
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
  %lan_id.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %8 = ptrtoint ptr %lan_id.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lan_id.i, align 1
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %sw.bb3.ixgbe_setup_mux_ctl.exit_crit_edge, label %do.body1.i.i

sw.bb3.ixgbe_setup_mux_ctl.exit_crit_edge:        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_setup_mux_ctl.exit

do.body1.i.i:                                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %and.i = and i32 %call.i, -197379
  %or.i = or i32 %and.i, 512
  %esdp.0.i = select i1 %tobool.not.i, i32 %call.i, i32 %or.i
  %and1.i = and i32 %esdp.0.i, -65793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #7
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #7, !srcloc !153
  br label %ixgbe_setup_mux_ctl.exit

ixgbe_setup_mux_ctl.exit:                         ; preds = %do.body1.i.i, %sw.bb3.ixgbe_setup_mux_ctl.exit_crit_edge
  %call2.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %13 = ptrtoint ptr %phy_semaphore_mask5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phy_semaphore_mask5, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #7
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %value.i, align 2, !annotation !155
  %acquire_swfw_sync.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %back.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %read_link_unlocked.i.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 6, i32 0, i32 1
  %addr.i.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 6, i32 1
  %release_swfw_sync.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %ixgbe_setup_mux_ctl.exit
  %retry.0129.i = phi i8 [ 0, %ixgbe_setup_mux_ctl.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %acquire_swfw_sync.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %acquire_swfw_sync.i, align 4
  %call.i71 = call i32 %17(ptr noundef %hw, i32 noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool.not.i72 = icmp eq i32 %call.i71, 0
  br i1 %tobool.not.i72, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %back.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.38, i32 noundef %call.i71) #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %22 = ptrtoint ptr %read_link_unlocked.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_link_unlocked.i.i, align 4
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %addr.i.i, align 4
  %call.i.i = call i32 %23(ptr noundef %hw, i8 noundef zeroext %25, i16 noundef zeroext 2, ptr noundef nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.end.i.if.end30.i_crit_edge

if.end.i.if.end30.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %26 = ptrtoint ptr %value.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %value.i, align 2
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %27, label %land.lhs.true.i.if.end30.i_crit_edge [
    i16 23205, label %land.lhs.true.i.out.i_crit_edge
    i16 4951, label %if.end14.i
  ]

land.lhs.true.i.out.i_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

land.lhs.true.i.if.end30.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.end14.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %release_swfw_sync.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %release_swfw_sync.i, align 4
  call void %30(ptr noundef %hw, i32 noundef %14) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i, %if.then.i
  call void @msleep(i32 noundef 30) #7
  %inc.i = add nuw nsw i8 %retry.0129.i, 1
  %cmp.i = icmp ult i8 %retry.0129.i, 14
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %if.then20.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.then20.i:                                      ; preds = %for.inc.i
  %31 = ptrtoint ptr %acquire_swfw_sync.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %acquire_swfw_sync.i, align 4
  %call24.i = call i32 %32(ptr noundef %hw, i32 noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then20.i.if.end30.i_crit_edge, label %if.then26.i

if.then20.i.if.end30.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then26.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %back.i, align 4
  %netdev28.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %netdev28.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %netdev28.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %36, ptr noundef nonnull @.str.38, i32 noundef %call24.i) #10
  br label %ixgbe_check_cs4227.exit

if.end30.i:                                       ; preds = %if.then20.i.if.end30.i_crit_edge, %land.lhs.true.i.if.end30.i_crit_edge, %if.end.i.if.end30.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i.i) #7
  %37 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %value.i.i, align 2, !annotation !155
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i.i) #7
  %38 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %reg.i.i, align 1, !annotation !155
  %call.i.i.i = call i32 @ixgbe_read_i2c_byte_generic_unlocked(ptr noundef %hw, i8 noundef zeroext 1, i8 noundef zeroext -32, ptr noundef nonnull %reg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i73 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i73, label %if.end.i.i, label %ixgbe_read_pe.exit.i.i

ixgbe_read_pe.exit.i.i:                           ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %back.i, align 4
  %netdev.i.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %netdev.i.i.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.42, i32 noundef %call.i.i.i) #10
  br label %if.then33.i

if.end.i.i:                                       ; preds = %if.end30.i
  %43 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %reg.i.i, align 1
  %45 = or i8 %44, 2
  store i8 %45, ptr %reg.i.i, align 1
  %call.i92.i.i = call i32 @ixgbe_write_i2c_byte_generic_unlocked(ptr noundef %hw, i8 noundef zeroext 1, i8 noundef zeroext -32, i8 noundef zeroext %45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i.i)
  %tobool.not.i93.i.i = icmp eq i32 %call.i92.i.i, 0
  br i1 %tobool.not.i93.i.i, label %if.end5.i.i, label %ixgbe_write_pe.exit.i.i

ixgbe_write_pe.exit.i.i:                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %back.i, align 4
  %netdev.i95.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %netdev.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %netdev.i95.i.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull @.str.42, i32 noundef %call.i92.i.i) #10
  br label %if.then33.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call.i97.i.i = call i32 @ixgbe_read_i2c_byte_generic_unlocked(ptr noundef %hw, i8 noundef zeroext 3, i8 noundef zeroext -32, ptr noundef nonnull %reg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i.i)
  %tobool.not.i98.i.i = icmp eq i32 %call.i97.i.i, 0
  br i1 %tobool.not.i98.i.i, label %if.end9.i.i, label %ixgbe_read_pe.exit102.i.i

ixgbe_read_pe.exit102.i.i:                        ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %back.i, align 4
  %netdev.i100.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %netdev.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %netdev.i100.i.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %53, ptr noundef nonnull @.str.42, i32 noundef %call.i97.i.i) #10
  br label %if.then33.i

if.end9.i.i:                                      ; preds = %if.end5.i.i
  %54 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %reg.i.i, align 1
  %56 = and i8 %55, -3
  store i8 %56, ptr %reg.i.i, align 1
  %call.i103.i.i = call i32 @ixgbe_write_i2c_byte_generic_unlocked(ptr noundef %hw, i8 noundef zeroext 3, i8 noundef zeroext -32, i8 noundef zeroext %56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i.i)
  %tobool.not.i104.i.i = icmp eq i32 %call.i103.i.i, 0
  br i1 %tobool.not.i104.i.i, label %if.end15.i.i, label %ixgbe_write_pe.exit108.i.i

ixgbe_write_pe.exit108.i.i:                       ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %back.i, align 4
  %netdev.i106.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %netdev.i106.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %netdev.i106.i.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %60, ptr noundef nonnull @.str.42, i32 noundef %call.i103.i.i) #10
  br label %if.then33.i

if.end15.i.i:                                     ; preds = %if.end9.i.i
  %call.i116.i = call i32 @ixgbe_read_i2c_byte_generic_unlocked(ptr noundef %hw, i8 noundef zeroext 1, i8 noundef zeroext -32, ptr noundef nonnull %reg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116.i)
  %tobool.not.i117.i = icmp eq i32 %call.i116.i, 0
  br i1 %tobool.not.i117.i, label %if.end19.i.i, label %ixgbe_read_pe.exit122.i

ixgbe_read_pe.exit122.i:                          ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %back.i, align 4
  %netdev.i119.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %netdev.i119.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %netdev.i119.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %64, ptr noundef nonnull @.str.42, i32 noundef %call.i116.i) #10
  br label %if.then33.i

if.end19.i.i:                                     ; preds = %if.end15.i.i
  %65 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %reg.i.i, align 1
  %67 = and i8 %66, -3
  store i8 %67, ptr %reg.i.i, align 1
  %call.i109.i = call i32 @ixgbe_write_i2c_byte_generic_unlocked(ptr noundef %hw, i8 noundef zeroext 1, i8 noundef zeroext -32, i8 noundef zeroext %67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109.i)
  %tobool.not.i110.i = icmp eq i32 %call.i109.i, 0
  br i1 %tobool.not.i110.i, label %if.end26.i.i, label %ixgbe_write_pe.exit115.i

ixgbe_write_pe.exit115.i:                         ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %back.i, align 4
  %netdev.i112.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %netdev.i112.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %netdev.i112.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %71, ptr noundef nonnull @.str.42, i32 noundef %call.i109.i) #10
  br label %if.then33.i

if.end26.i.i:                                     ; preds = %if.end19.i.i
  call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #7
  %call.i103.i = call i32 @ixgbe_read_i2c_byte_generic_unlocked(ptr noundef %hw, i8 noundef zeroext 1, i8 noundef zeroext -32, ptr noundef nonnull %reg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %tobool.not.i104.i = icmp eq i32 %call.i103.i, 0
  br i1 %tobool.not.i104.i, label %if.end30.i.i, label %ixgbe_read_pe.exit.i

ixgbe_read_pe.exit.i:                             ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %back.i, align 4
  %netdev.i106.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %netdev.i106.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %netdev.i106.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %75, ptr noundef nonnull @.str.42, i32 noundef %call.i103.i) #10
  br label %if.then33.i

if.end30.i.i:                                     ; preds = %if.end26.i.i
  %76 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %reg.i.i, align 1
  %78 = or i8 %77, 2
  store i8 %78, ptr %reg.i.i, align 1
  %call.i99.i = call i32 @ixgbe_write_i2c_byte_generic_unlocked(ptr noundef %hw, i8 noundef zeroext 1, i8 noundef zeroext -32, i8 noundef zeroext %78) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i)
  %tobool.not.i.i = icmp eq i32 %call.i99.i, 0
  br i1 %tobool.not.i.i, label %if.end37.i.i, label %ixgbe_write_pe.exit.i

ixgbe_write_pe.exit.i:                            ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %back.i, align 4
  %netdev.i101.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %netdev.i101.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %netdev.i101.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %82, ptr noundef nonnull @.str.42, i32 noundef %call.i99.i) #10
  br label %if.then33.i

if.end37.i.i:                                     ; preds = %if.end30.i.i
  call void @msleep(i32 noundef 500) #7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end45.i.i.for.body.i.i_crit_edge, %if.end37.i.i
  %retry.0115.i.i = phi i32 [ 0, %if.end37.i.i ], [ %inc.i.i, %if.end45.i.i.for.body.i.i_crit_edge ]
  %83 = ptrtoint ptr %read_link_unlocked.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read_link_unlocked.i.i, align 4
  %85 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %addr.i.i, align 4
  %call.i109.i.i = call i32 %84(ptr noundef %hw, i8 noundef zeroext %86, i16 noundef zeroext 385, ptr noundef nonnull %value.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109.i.i)
  %tobool40.not.i.i = icmp eq i32 %call.i109.i.i, 0
  br i1 %tobool40.not.i.i, label %land.lhs.true.i.i, label %for.body.i.i.if.end45.i.i_crit_edge

for.body.i.i.if.end45.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %87 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %value.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %88)
  %cmp42.i.i = icmp eq i16 %88, 1
  br i1 %cmp42.i.i, label %if.end49.i.i, label %land.lhs.true.i.i.if.end45.i.i_crit_edge

land.lhs.true.i.i.if.end45.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %land.lhs.true.i.i.if.end45.i.i_crit_edge, %for.body.i.i.if.end45.i.i_crit_edge
  call void @msleep(i32 noundef 30) #7
  %inc.i.i = add nuw nsw i32 %retry.0115.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 15
  br i1 %exitcond.not.i.i, label %if.then48.i.i, label %if.end45.i.i.for.body.i.i_crit_edge

if.end45.i.i.for.body.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.then48.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %back.i, align 4
  %netdev.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %netdev.i.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %92, ptr noundef nonnull @.str.40) #10
  br label %if.then33.i

if.end49.i.i:                                     ; preds = %land.lhs.true.i.i
  %93 = ptrtoint ptr %read_link_unlocked.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read_link_unlocked.i.i, align 4
  %95 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %addr.i.i, align 4
  %call.i112.i.i = call i32 %94(ptr noundef %hw, i8 noundef zeroext %96, i16 noundef zeroext 20481, ptr noundef nonnull %value.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112.i.i)
  %tobool51.not.i.i = icmp eq i32 %call.i112.i.i, 0
  br i1 %tobool51.not.i.i, label %lor.lhs.false.i.i, label %if.end49.i.i.if.then55.i.i_crit_edge

if.end49.i.i.if.then55.i.i_crit_edge:             ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.i.i

lor.lhs.false.i.i:                                ; preds = %if.end49.i.i
  %97 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %value.i.i, align 2
  %99 = and i16 %98, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool54.not.i.i = icmp eq i16 %99, 0
  br i1 %tobool54.not.i.i, label %lor.lhs.false.i.i.if.then55.i.i_crit_edge, label %if.end36.i

lor.lhs.false.i.i.if.then55.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.i.i

if.then55.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then55.i.i_crit_edge, %if.end49.i.i.if.then55.i.i_crit_edge
  %100 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %back.i, align 4
  %netdev57.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %netdev57.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %netdev57.i.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %103, ptr noundef nonnull @.str.41) #10
  br label %if.then33.i

if.then33.i:                                      ; preds = %if.then55.i.i, %if.then48.i.i, %ixgbe_write_pe.exit.i, %ixgbe_read_pe.exit.i, %ixgbe_write_pe.exit115.i, %ixgbe_read_pe.exit122.i, %ixgbe_write_pe.exit108.i.i, %ixgbe_read_pe.exit102.i.i, %ixgbe_write_pe.exit.i.i, %ixgbe_read_pe.exit.i.i
  %retval.0.i.ph.i = phi i32 [ %call.i99.i, %ixgbe_write_pe.exit.i ], [ %call.i103.i, %ixgbe_read_pe.exit.i ], [ %call.i109.i, %ixgbe_write_pe.exit115.i ], [ %call.i116.i, %ixgbe_read_pe.exit122.i ], [ %call.i103.i.i, %ixgbe_write_pe.exit108.i.i ], [ %call.i97.i.i, %ixgbe_read_pe.exit102.i.i ], [ %call.i92.i.i, %ixgbe_write_pe.exit.i.i ], [ %call.i.i.i, %ixgbe_read_pe.exit.i.i ], [ -3, %if.then55.i.i ], [ -3, %if.then48.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i) #7
  %104 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %back.i, align 4
  %netdev35.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %netdev35.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %netdev35.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %107, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i.ph.i) #10
  br label %out.i

if.end36.i:                                       ; preds = %lor.lhs.false.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i) #7
  %write_link_unlocked.i.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 6, i32 0, i32 3
  %108 = ptrtoint ptr %write_link_unlocked.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write_link_unlocked.i.i, align 4
  %110 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %addr.i.i, align 4
  %call.i95.i = call i32 %109(ptr noundef %hw, i8 noundef zeroext %111, i16 noundef zeroext 2, i16 noundef zeroext 4951) #7
  %112 = ptrtoint ptr %release_swfw_sync.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %release_swfw_sync.i, align 4
  call void %113(ptr noundef %hw, i32 noundef %14) #7
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #7
  %114 = ptrtoint ptr %acquire_swfw_sync.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %acquire_swfw_sync.i, align 4
  %call44.i = call i32 %115(ptr noundef %hw, i32 noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end49.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %back.i, align 4
  %netdev48.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %netdev48.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %netdev48.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %119, ptr noundef nonnull @.str.20, i32 noundef %call44.i) #10
  br label %ixgbe_check_cs4227.exit

if.end49.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %write_link_unlocked.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write_link_unlocked.i.i, align 4
  %122 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %addr.i.i, align 4
  %call.i98.i = call i32 %121(ptr noundef %hw, i8 noundef zeroext %123, i16 noundef zeroext 2, i16 noundef zeroext 23205) #7
  br label %out.i

out.i:                                            ; preds = %if.end49.i, %if.then33.i, %land.lhs.true.i.out.i_crit_edge
  %124 = ptrtoint ptr %release_swfw_sync.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %release_swfw_sync.i, align 4
  call void %125(ptr noundef %hw, i32 noundef %14) #7
  %semaphore_delay.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 2
  %126 = ptrtoint ptr %semaphore_delay.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %semaphore_delay.i, align 4
  call void @msleep(i32 noundef %127) #7
  br label %ixgbe_check_cs4227.exit

ixgbe_check_cs4227.exit:                          ; preds = %out.i, %if.then46.i, %if.then26.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #7
  br label %sw.bb6

sw.bb6:                                           ; preds = %ixgbe_check_cs4227.exit, %entry.sw.bb6_crit_edge
  %call7 = call i32 @ixgbe_identify_module_generic(ptr noundef %hw) #7
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %128 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 5, ptr %type, align 4
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %type12 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %129 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 6, ptr %type12, align 4
  br label %return

sw.bb13:                                          ; preds = %entry.sw.bb13_crit_edge, %entry.sw.bb13_crit_edge74, %entry.sw.bb13_crit_edge75
  %type15 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %130 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 4, ptr %type15, align 4
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lan_id18 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %131 = ptrtoint ptr %lan_id18 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %lan_id18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool19.not = icmp eq i8 %132, 0
  %phy_semaphore_mask25 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %. = select i1 %tobool19.not, i32 2, i32 4
  %133 = ptrtoint ptr %phy_semaphore_mask25 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %., ptr %phy_semaphore_mask25, align 4
  br label %sw.bb27

sw.bb27:                                          ; preds = %sw.bb16, %entry.sw.bb27_crit_edge
  %call28 = tail call i32 @ixgbe_identify_phy_generic(ptr noundef %hw) #7
  br label %return

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %type31 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %134 = ptrtoint ptr %type31 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 8, ptr %type31, align 4
  br label %return

sw.bb32:                                          ; preds = %entry.sw.bb32_crit_edge, %entry.sw.bb32_crit_edge76
  %type34 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %135 = ptrtoint ptr %type34 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 27, ptr %type34, align 4
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %136 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %read_reg, align 4
  %write_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %137 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %write_reg, align 4
  %lan_id39 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %138 = ptrtoint ptr %lan_id39 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %lan_id39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool40.not = icmp eq i8 %139, 0
  %phy_semaphore_mask46 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %140 = ptrtoint ptr %phy_semaphore_mask46 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %phy_semaphore_mask46, align 4
  br i1 %tobool40.not, label %if.else44, label %if.then41

if.then41:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %141, 4
  %142 = ptrtoint ptr %phy_semaphore_mask46 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %or, ptr %phy_semaphore_mask46, align 4
  br label %return

if.else44:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  %or47 = or i32 %141, 2
  %143 = ptrtoint ptr %phy_semaphore_mask46 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %or47, ptr %phy_semaphore_mask46, align 4
  br label %return

return:                                           ; preds = %if.else44, %if.then41, %sw.bb29, %sw.bb27, %sw.bb13, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call28, %sw.bb27 ], [ %call7, %sw.bb6 ], [ %call, %sw.bb ], [ 0, %entry.return_crit_edge ], [ 0, %if.then41 ], [ 0, %if.else44 ], [ 0, %sw.bb29 ], [ 0, %sw.bb13 ], [ 0, %sw.bb10 ], [ 0, %sw.bb8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_init_phy_ops_X550em(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5
  %set_lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 11
  %0 = ptrtoint ptr %set_lan_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_lan_id, align 4
  tail call void %1(ptr noundef %hw) #7
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 70008) #7
  %nw_mng_if_sel.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 19
  %2 = ptrtoint ptr %nw_mng_if_sel.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call.i, ptr %nw_mng_if_sel.i, align 4
  %type.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp.i = icmp ne i32 %4, 6
  %and.i = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %entry.ixgbe_read_mng_if_sel_x550em.exit_crit_edge, label %if.then.i

entry.ixgbe_read_mng_if_sel_x550em.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_read_mng_if_sel_x550em.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and5.i = lshr i32 %call.i, 3
  %shr.i = and i32 %and5.i, 31
  %mdio.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %mdio.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr.i, ptr %mdio.i, align 4
  br label %ixgbe_read_mng_if_sel_x550em.exit

ixgbe_read_mng_if_sel_x550em.exit:                ; preds = %if.then.i, %entry.ixgbe_read_mng_if_sel_x550em.exit_crit_edge
  %get_media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 4
  %6 = ptrtoint ptr %get_media_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_media_type, align 4
  %call = tail call i32 %7(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %ixgbe_read_mng_if_sel_x550em.exit.if.end_crit_edge

ixgbe_read_mng_if_sel_x550em.exit.if.end_crit_edge: ; preds = %ixgbe_read_mng_if_sel_x550em.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %ixgbe_read_mng_if_sel_x550em.exit
  %phy_semaphore_mask = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %8 = ptrtoint ptr %phy_semaphore_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6150, ptr %phy_semaphore_mask, align 4
  %call.i102 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
  %lan_id.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %9 = ptrtoint ptr %lan_id.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lan_id.i, align 1
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %if.then.ixgbe_setup_mux_ctl.exit_crit_edge, label %do.body1.i.i

if.then.ixgbe_setup_mux_ctl.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_setup_mux_ctl.exit

do.body1.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i103 = icmp eq i8 %10, 0
  %and.i104 = and i32 %call.i102, -197379
  %or.i = or i32 %and.i104, 512
  %esdp.0.i = select i1 %tobool.not.i103, i32 %call.i102, i32 %or.i
  %and1.i = and i32 %esdp.0.i, -65793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #7
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %13) #7, !srcloc !153
  br label %ixgbe_setup_mux_ctl.exit

ixgbe_setup_mux_ctl.exit:                         ; preds = %do.body1.i.i, %if.then.ixgbe_setup_mux_ctl.exit_crit_edge
  %call2.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  br label %if.end

if.end:                                           ; preds = %ixgbe_setup_mux_ctl.exit, %ixgbe_read_mng_if_sel_x550em.exit.if.end_crit_edge
  %14 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy1, align 4
  %call5 = tail call i32 %15(ptr noundef %hw) #7
  %16 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call5, label %if.end9 [
    i32 -19, label %if.end.cleanup_crit_edge
    i32 -17, label %if.end.cleanup_crit_edge105
  ]

if.end.cleanup_crit_edge105:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  tail call fastcc void @ixgbe_init_mac_link_ops_X550em(ptr noundef %hw)
  %sfp_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 4
  %17 = ptrtoint ptr %sfp_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sfp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %18)
  %cmp10.not = icmp eq i32 %18, 65535
  br i1 %cmp10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %reset = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %19 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %reset, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %21, label %if.end13.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 4, label %sw.bb18
    i32 6, label %sw.bb25
    i32 7, label %sw.bb32
    i32 26, label %sw.bb45
    i32 27, label %sw.bb48
    i32 8, label %sw.bb53
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %setup_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 8
  %23 = ptrtoint ptr %setup_link to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %setup_link, align 4
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %24 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ixgbe_read_phy_reg_x550em, ptr %read_reg, align 4
  %write_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %25 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ixgbe_write_phy_reg_x550em, ptr %write_reg, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %setup_link20 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 8
  %26 = ptrtoint ptr %setup_link20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ixgbe_setup_kr_x550em, ptr %setup_link20, align 4
  %read_reg22 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %27 = ptrtoint ptr %read_reg22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ixgbe_read_phy_reg_x550em, ptr %read_reg22, align 4
  %write_reg24 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %28 = ptrtoint ptr %write_reg24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ixgbe_write_phy_reg_x550em, ptr %write_reg24, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %setup_link27 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 8
  %29 = ptrtoint ptr %setup_link27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %setup_link27, align 4
  %read_reg29 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %30 = ptrtoint ptr %read_reg29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ixgbe_read_phy_reg_x550em, ptr %read_reg29, align 4
  %write_reg31 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %31 = ptrtoint ptr %write_reg31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ixgbe_write_phy_reg_x550em, ptr %write_reg31, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %if.end13
  %call33 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 70008) #7
  %32 = ptrtoint ptr %nw_mng_if_sel.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call33, ptr %nw_mng_if_sel.i, align 4
  %setup_internal_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 9
  %33 = ptrtoint ptr %setup_internal_link to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ixgbe_setup_internal_phy_t_x550em, ptr %setup_internal_link, align 4
  %34 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %35)
  %cmp37 = icmp eq i32 %35, 5
  br i1 %cmp37, label %land.lhs.true, label %sw.bb32.if.end41_crit_edge

sw.bb32.if.end41_crit_edge:                       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

land.lhs.true:                                    ; preds = %sw.bb32
  %call38 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 69976) #7
  %and = and i32 %call38, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then39, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %enter_lplu = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 19
  %36 = ptrtoint ptr %enter_lplu to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ixgbe_enter_lplu_t_x550em, ptr %enter_lplu, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %land.lhs.true.if.end41_crit_edge, %sw.bb32.if.end41_crit_edge
  %handle_lasi = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 20
  %37 = ptrtoint ptr %handle_lasi to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ixgbe_handle_lasi_ext_t_x550em, ptr %handle_lasi, align 4
  %reset44 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %38 = ptrtoint ptr %reset44 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ixgbe_reset_phy_t_X550em, ptr %reset44, align 4
  br label %cleanup

sw.bb45:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %setup_link47 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 8
  %39 = ptrtoint ptr %setup_link47 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %setup_link47, align 4
  br label %cleanup

sw.bb48:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %setup_link50 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 8
  %40 = ptrtoint ptr %setup_link50 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @ixgbe_setup_fw_link, ptr %setup_link50, align 4
  %reset52 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %41 = ptrtoint ptr %reset52 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @ixgbe_reset_phy_fw, ptr %reset52, align 4
  br label %cleanup

sw.bb53:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %setup_link55 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 8
  %42 = ptrtoint ptr %setup_link55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %setup_link55, align 4
  %read_reg57 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %43 = ptrtoint ptr %read_reg57 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %read_reg57, align 4
  %write_reg59 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %44 = ptrtoint ptr %write_reg59 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %write_reg59, align 4
  %reset61 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %45 = ptrtoint ptr %reset61 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %reset61, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb53, %sw.bb48, %sw.bb45, %if.end41, %sw.bb25, %sw.bb18, %sw.bb, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge105
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_i2c_byte_generic_unlocked(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_write_i2c_byte_generic_unlocked(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbe_read_phy_reg_x550em(ptr nocapture noundef readnone %hw, i32 noundef %reg_addr, i32 noundef %device_type, ptr nocapture noundef readnone %phy_data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2147483647
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbe_write_phy_reg_x550em(ptr nocapture noundef readnone %hw, i32 noundef %reg_addr, i32 noundef %device_type, i16 noundef zeroext %phy_data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2147483647
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_kr_x550em(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg_advertised = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 10
  %0 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg_advertised, align 4
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @ixgbe_check_reset_blocked(ptr noundef %hw) #7
  br i1 %call, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %autoneg_advertised, align 4
  %call5 = tail call fastcc i32 @ixgbe_setup_kr_speed_x550em(ptr noundef %hw, i32 noundef %3)
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end2 ], [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_internal_phy_t_x550em(ptr noundef %hw) #0 align 64 {
entry:
  %autoneg_status.i = alloca i16, align 2
  %force_speed = alloca i32, align 4
  %link_up = alloca i8, align 1
  %speed = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %force_speed) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %speed) #7
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %speed, align 2, !annotation !155
  %get_media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 4
  %1 = ptrtoint ptr %get_media_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_media_type, align 4
  %call = tail call i32 %2(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp.not = icmp eq i32 %call, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp2 = icmp eq i32 %4, 5
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

land.lhs.true:                                    ; preds = %if.end
  %nw_mng_if_sel = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 19
  %5 = ptrtoint ptr %nw_mng_if_sel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nw_mng_if_sel, align 4
  %and = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %land.lhs.true.if.then3_crit_edge

land.lhs.true.if.then3_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %land.lhs.true.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 160, ptr %speed, align 2
  %call4 = tail call fastcc i32 @ixgbe_setup_kr_speed_x550em(ptr noundef %hw, i32 noundef 160)
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %autoneg_status.i) #7
  %8 = ptrtoint ptr %autoneg_status.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %autoneg_status.i, align 2, !annotation !155
  %read_reg.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %9 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %10(ptr noundef %hw, i32 noundef 1, i32 noundef 7, ptr noundef nonnull %autoneg_status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.ixgbe_ext_phy_t_x550em_get_link.exit.thread_crit_edge

if.end5.ixgbe_ext_phy_t_x550em_get_link.exit.thread_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_ext_phy_t_x550em_get_link.exit.thread

if.end.i:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg.i, align 4
  %call4.i = call i32 %12(ptr noundef %hw, i32 noundef 1, i32 noundef 7, ptr noundef nonnull %autoneg_status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end9, label %if.end.i.ixgbe_ext_phy_t_x550em_get_link.exit.thread_crit_edge

if.end.i.ixgbe_ext_phy_t_x550em_get_link.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_ext_phy_t_x550em_get_link.exit.thread

ixgbe_ext_phy_t_x550em_get_link.exit.thread:      ; preds = %if.end.i.ixgbe_ext_phy_t_x550em_get_link.exit.thread_crit_edge, %if.end5.ixgbe_ext_phy_t_x550em_get_link.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call4.i, %if.end.i.ixgbe_ext_phy_t_x550em_get_link.exit.thread_crit_edge ], [ %call.i, %if.end5.ixgbe_ext_phy_t_x550em_get_link.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %autoneg_status.i) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end.i
  %13 = ptrtoint ptr %autoneg_status.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %autoneg_status.i, align 2
  %15 = trunc i16 %14 to i8
  %16 = lshr i8 %15, 2
  %17 = and i8 %16, 1
  %18 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %link_up, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %autoneg_status.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool10.not = icmp eq i8 %17, 0
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %19 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_reg.i, align 4
  %call15 = call i32 %20(ptr noundef %hw, i32 noundef 51200, i32 noundef 7, ptr noundef nonnull %speed) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %call19 = call fastcc i32 @ixgbe_ext_phy_t_x550em_get_link(ptr noundef %hw, ptr noundef nonnull %link_up)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %21 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %link_up, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool23.not = icmp eq i8 %22, 0
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %23 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %speed, align 2
  %25 = and i16 %24, 7
  store i16 %25, ptr %speed, align 2
  %conv29 = zext i16 %25 to i32
  %26 = zext i32 %conv29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %conv29, label %if.end25.cleanup_crit_edge [
    i32 7, label %if.end25.sw.epilog_crit_edge
    i32 5, label %sw.bb30
  ]

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb30:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb30, %if.end25.sw.epilog_crit_edge
  %storemerge = phi i32 [ 32, %sw.bb30 ], [ 128, %if.end25.sw.epilog_crit_edge ]
  %27 = ptrtoint ptr %force_speed to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge, ptr %force_speed, align 4
  %call31 = call fastcc i32 @ixgbe_setup_ixfi_x550em(ptr noundef %hw, ptr noundef nonnull %force_speed)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end25.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %ixgbe_ext_phy_t_x550em_get_link.exit.thread, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ %call31, %sw.epilog ], [ -4, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ %call15, %if.end12.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ -13, %if.end25.cleanup_crit_edge ], [ %retval.0.i.ph, %ixgbe_ext_phy_t_x550em_get_link.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %force_speed) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_enter_lplu_t_x550em(ptr noundef %hw) #0 align 64 {
entry:
  %autoneg_status.i = alloca i16, align 2
  %an_10g_cntl_reg = alloca i16, align 2
  %autoneg_reg = alloca i16, align 2
  %speed = alloca i16, align 2
  %lcd_speed = alloca i32, align 4
  %link_up = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %an_10g_cntl_reg) #7
  %0 = ptrtoint ptr %an_10g_cntl_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %an_10g_cntl_reg, align 2, !annotation !155
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %autoneg_reg) #7
  %1 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %autoneg_reg, align 2, !annotation !155
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %speed) #7
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %speed, align 2, !annotation !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcd_speed) #7
  %3 = ptrtoint ptr %lcd_speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %lcd_speed, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up) #7
  %call = tail call zeroext i1 @ixgbe_check_reset_blocked(ptr noundef %hw) #7
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %autoneg_status.i) #7
  %4 = ptrtoint ptr %autoneg_status.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %autoneg_status.i, align 2, !annotation !155
  %read_reg.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %5 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %6(ptr noundef %hw, i32 noundef 1, i32 noundef 7, ptr noundef nonnull %autoneg_status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.ixgbe_ext_phy_t_x550em_get_link.exit.thread_crit_edge

if.end.ixgbe_ext_phy_t_x550em_get_link.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_ext_phy_t_x550em_get_link.exit.thread

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_reg.i, align 4
  %call4.i = call i32 %8(ptr noundef %hw, i32 noundef 1, i32 noundef 7, ptr noundef nonnull %autoneg_status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end3, label %if.end.i.ixgbe_ext_phy_t_x550em_get_link.exit.thread_crit_edge

if.end.i.ixgbe_ext_phy_t_x550em_get_link.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_ext_phy_t_x550em_get_link.exit.thread

ixgbe_ext_phy_t_x550em_get_link.exit.thread:      ; preds = %if.end.i.ixgbe_ext_phy_t_x550em_get_link.exit.thread_crit_edge, %if.end.ixgbe_ext_phy_t_x550em_get_link.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call4.i, %if.end.i.ixgbe_ext_phy_t_x550em_get_link.exit.thread_crit_edge ], [ %call.i, %if.end.ixgbe_ext_phy_t_x550em_get_link.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %autoneg_status.i) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end.i
  %9 = ptrtoint ptr %autoneg_status.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %autoneg_status.i, align 2
  %11 = trunc i16 %10 to i8
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 1
  %14 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %link_up, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %autoneg_status.i) #7
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %15 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read, align 4
  %ctrl_word_3 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 6
  %call5 = call i32 %16(ptr noundef %hw, i16 noundef zeroext 56, ptr noundef %ctrl_word_3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %17 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %link_up, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool9.not = icmp eq i8 %18, 0
  br i1 %tobool9.not, label %if.end8.if.then19_crit_edge, label %lor.lhs.false

if.end8.if.then19_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end8
  %19 = ptrtoint ptr %ctrl_word_3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ctrl_word_3, align 2
  %21 = and i16 %20, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool12.not = icmp eq i16 %21, 0
  br i1 %tobool12.not, label %lor.lhs.false.if.then19_crit_edge, label %lor.lhs.false13

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %wol_enabled = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 19
  %22 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %wol_enabled, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool14.not = icmp eq i8 %23, 0
  br i1 %tobool14.not, label %lor.lhs.false16, label %lor.lhs.false13.if.end21_crit_edge

lor.lhs.false13.if.end21_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %call17 = call zeroext i1 @ixgbe_mng_present(ptr noundef %hw) #7
  br i1 %call17, label %lor.lhs.false16.if.end21_crit_edge, label %lor.lhs.false16.if.then19_crit_edge

lor.lhs.false16.if.then19_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

lor.lhs.false16.if.end21_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %lor.lhs.false16.if.then19_crit_edge, %lor.lhs.false.if.then19_crit_edge, %if.end8.if.then19_crit_edge
  %call20 = call i32 @ixgbe_set_copper_phy_power(ptr noundef %hw, i1 noundef zeroext false) #7
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false16.if.end21_crit_edge, %lor.lhs.false13.if.end21_crit_edge
  %call22 = call fastcc i32 @ixgbe_get_lcd_t_x550em(ptr noundef %hw, ptr noundef nonnull %lcd_speed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %24 = ptrtoint ptr %lcd_speed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lcd_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = call i32 @ixgbe_set_copper_phy_power(ptr noundef %hw, i1 noundef zeroext false) #7
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %26 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_reg.i, align 4
  %call31 = call i32 %27(ptr noundef %hw, i32 noundef 51200, i32 noundef 7, ptr noundef nonnull %speed) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %call35 = call fastcc i32 @ixgbe_ext_phy_t_x550em_get_link(ptr noundef %hw, ptr noundef nonnull %link_up)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = call i32 @ixgbe_set_copper_phy_power(ptr noundef %hw, i1 noundef zeroext false) #7
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %28 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %speed, align 2
  %30 = and i16 %29, 6
  store i16 %30, ptr %speed, align 2
  %trunc = trunc i16 %30 to i3
  %31 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.64)
  switch i3 %trunc, label %if.end39.if.end56_crit_edge [
    i3 -4, label %land.lhs.true
    i3 -2, label %land.lhs.true52
  ]

if.end39.if.end56_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %25)
  %cmp46 = icmp eq i32 %25, 32
  br i1 %cmp46, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end56_crit_edge

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true52:                                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %25)
  %cmp53 = icmp eq i32 %25, 128
  br i1 %cmp53, label %land.lhs.true52.cleanup_crit_edge, label %land.lhs.true52.if.end56_crit_edge

land.lhs.true52.if.end56_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

land.lhs.true52.cleanup_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56:                                         ; preds = %land.lhs.true52.if.end56_crit_edge, %land.lhs.true.if.end56_crit_edge, %if.end39.if.end56_crit_edge
  %32 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_reg.i, align 4
  %call60 = call i32 %33(ptr noundef %hw, i32 noundef 52224, i32 noundef 7, ptr noundef nonnull %autoneg_reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end63:                                         ; preds = %if.end56
  %34 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read_reg.i, align 4
  %call67 = call i32 %35(ptr noundef %hw, i32 noundef 32, i32 noundef 7, ptr noundef nonnull %an_10g_cntl_reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end70:                                         ; preds = %if.end63
  %36 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_reg.i, align 4
  %call74 = call i32 %37(ptr noundef %hw, i32 noundef 50176, i32 noundef 7, ptr noundef nonnull %autoneg_reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %autoneg_advertised = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 10
  %38 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %autoneg_advertised, align 4
  %setup_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 27
  %40 = ptrtoint ptr %setup_link to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %setup_link, align 4
  %call80 = call i32 %41(ptr noundef %hw, i32 noundef %25, i1 noundef zeroext false) #7
  %42 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %autoneg_advertised, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.end70.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %land.lhs.true52.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then37, %if.end29.cleanup_crit_edge, %if.then27, %if.end21.cleanup_crit_edge, %if.then19, %if.end3.cleanup_crit_edge, %ixgbe_ext_phy_t_x550em_get_link.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.then27 ], [ %call38, %if.then37 ], [ %call80, %if.end77 ], [ %call20, %if.then19 ], [ 0, %entry.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call31, %if.end29.cleanup_crit_edge ], [ 0, %land.lhs.true52.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call60, %if.end56.cleanup_crit_edge ], [ %call67, %if.end63.cleanup_crit_edge ], [ %call74, %if.end70.cleanup_crit_edge ], [ %retval.0.i.ph, %ixgbe_ext_phy_t_x550em_get_link.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcd_speed) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %autoneg_reg) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %an_10g_cntl_reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_handle_lasi_ext_t_x550em(ptr noundef %hw) #0 align 64 {
entry:
  %lsc = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsc) #7
  %0 = ptrtoint ptr %lsc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %lsc, align 1, !annotation !155
  %call = call fastcc i32 @ixgbe_get_lasi_ext_t_x550em(ptr noundef %hw, ptr noundef nonnull %lsc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %lsc to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %lsc, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %setup_internal_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 9
  %3 = ptrtoint ptr %setup_internal_link to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %setup_internal_link, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 %4(ptr noundef %hw) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then4 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_reset_phy_t_X550em(ptr noundef %hw) #0 align 64 {
entry:
  %reg.i = alloca i16, align 2
  %lsc.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_reset_phy_generic(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #7
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg.i, align 2, !annotation !155
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsc.i) #7
  %1 = ptrtoint ptr %lsc.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %lsc.i, align 1, !annotation !155
  %call.i = call fastcc i32 @ixgbe_get_lasi_ext_t_x550em(ptr noundef %hw, ptr noundef nonnull %lsc.i) #7
  %type.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 6
  br i1 %cmp.not.i, label %if.end.if.end10.i_crit_edge, label %if.then.i

if.end.if.end10.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then.i:                                        ; preds = %if.end
  %read_reg.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %4 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg.i, align 4
  %call1.i = call i32 %5(ptr noundef %hw, i32 noundef 54273, i32 noundef 7, ptr noundef nonnull %reg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge

if.then.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_enable_lasi_ext_t_x550em.exit

if.end.i:                                         ; preds = %if.then.i
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg.i, align 2
  %8 = or i16 %7, 1
  store i16 %8, ptr %reg.i, align 2
  %write_reg.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %9 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg.i, align 4
  %call6.i = call i32 %10(ptr noundef %hw, i32 noundef 54273, i32 noundef 7, i16 noundef zeroext %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.end.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge

if.end.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_enable_lasi_ext_t_x550em.exit

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i.if.end10.i_crit_edge, %if.end.if.end10.i_crit_edge
  %read_reg13.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %11 = ptrtoint ptr %read_reg13.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg13.i, align 4
  %call14.i = call i32 %12(ptr noundef %hw, i32 noundef 54272, i32 noundef 30, ptr noundef nonnull %reg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end10.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge

if.end10.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_enable_lasi_ext_t_x550em.exit

if.end17.i:                                       ; preds = %if.end10.i
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %reg.i, align 2
  %15 = or i16 %14, 16400
  store i16 %15, ptr %reg.i, align 2
  %write_reg23.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %16 = ptrtoint ptr %write_reg23.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg23.i, align 4
  %call24.i = call i32 %17(ptr noundef %hw, i32 noundef 54272, i32 noundef 30, i16 noundef zeroext %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end17.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge

if.end17.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_enable_lasi_ext_t_x550em.exit

if.end27.i:                                       ; preds = %if.end17.i
  %18 = ptrtoint ptr %read_reg13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg13.i, align 4
  %call31.i = call i32 %19(ptr noundef %hw, i32 noundef 65281, i32 noundef 30, ptr noundef nonnull %reg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end27.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge

if.end27.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_enable_lasi_ext_t_x550em.exit

if.end34.i:                                       ; preds = %if.end27.i
  %20 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %reg.i, align 2
  %22 = or i16 %21, 4100
  store i16 %22, ptr %reg.i, align 2
  %23 = ptrtoint ptr %write_reg23.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg23.i, align 4
  %call41.i = call i32 %24(ptr noundef %hw, i32 noundef 65281, i32 noundef 30, i16 noundef zeroext %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end34.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge

if.end34.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_enable_lasi_ext_t_x550em.exit

if.end44.i:                                       ; preds = %if.end34.i
  %25 = ptrtoint ptr %read_reg13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_reg13.i, align 4
  %call48.i = call i32 %26(ptr noundef %hw, i32 noundef 65280, i32 noundef 30, ptr noundef nonnull %reg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %if.end44.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge

if.end44.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_enable_lasi_ext_t_x550em.exit

if.end51.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %reg.i, align 2
  %29 = or i16 %28, 1
  store i16 %29, ptr %reg.i, align 2
  %30 = ptrtoint ptr %write_reg23.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_reg23.i, align 4
  %call58.i = call i32 %31(ptr noundef %hw, i32 noundef 65280, i32 noundef 30, i16 noundef zeroext %29) #7
  br label %ixgbe_enable_lasi_ext_t_x550em.exit

ixgbe_enable_lasi_ext_t_x550em.exit:              ; preds = %if.end51.i, %if.end44.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge, %if.end34.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge, %if.end27.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge, %if.end17.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge, %if.end10.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge, %if.end.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge, %if.then.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge
  %retval.0.i = phi i32 [ %call58.i, %if.end51.i ], [ %call1.i, %if.then.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge ], [ %call6.i, %if.end.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge ], [ %call14.i, %if.end10.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge ], [ %call24.i, %if.end17.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge ], [ %call31.i, %if.end27.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge ], [ %call41.i, %if.end34.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge ], [ %call48.i, %if.end44.i.ixgbe_enable_lasi_ext_t_x550em.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsc.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #7
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_enable_lasi_ext_t_x550em.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ixgbe_enable_lasi_ext_t_x550em.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_reset_phy_fw(ptr noundef %hw) #0 align 64 {
entry:
  %hic.i18 = alloca %union.anon.121, align 8
  %hic.i = alloca %union.anon.121, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_disable = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 9
  %0 = ptrtoint ptr %reset_disable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reset_disable, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i1 @ixgbe_check_reset_blocked(ptr noundef %hw) #7
  br i1 %call, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hic.i) #7
  %2 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %hic.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic.i, i32 0, i32 4
  %lan_id.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end19.i.do.body.i_crit_edge, %if.end
  %retries.0.i = phi i16 [ 50, %if.end ], [ %dec.i, %if.end19.i.do.body.i_crit_edge ]
  %5 = ptrtoint ptr %hic.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 365918564940514560, ptr %hic.i, align 8
  %6 = ptrtoint ptr %lan_id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lan_id.i, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %3, align 4
  %9 = call ptr @memset(ptr %4, i32 0, i32 16)
  %call.i = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %hic.i, i32 noundef 24, i32 noundef 500, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.ixgbe_fw_phy_activity.exit.thread_crit_edge

do.body.i.ixgbe_fw_phy_activity.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_fw_phy_activity.exit.thread

if.end.i:                                         ; preds = %do.body.i
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp6.i = icmp eq i8 %11, 1
  br i1 %cmp6.i, label %if.end4, label %if.end19.i

if.end19.i:                                       ; preds = %if.end.i
  call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #7
  %dec.i = add nsw i16 %retries.0.i, -1
  %cmp21.not.i = icmp eq i16 %dec.i, 0
  br i1 %cmp21.not.i, label %if.end19.i.ixgbe_fw_phy_activity.exit.thread_crit_edge, label %if.end19.i.do.body.i_crit_edge

if.end19.i.do.body.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end19.i.ixgbe_fw_phy_activity.exit.thread_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_fw_phy_activity.exit.thread

ixgbe_fw_phy_activity.exit.thread:                ; preds = %if.end19.i.ixgbe_fw_phy_activity.exit.thread_crit_edge, %do.body.i.ixgbe_fw_phy_activity.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %do.body.i.ixgbe_fw_phy_activity.exit.thread_crit_edge ], [ -33, %if.end19.i.ixgbe_fw_phy_activity.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hic.i) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hic.i) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hic.i18) #7
  %12 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %hic.i18, i32 0, i32 2
  %13 = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic.i18, i32 0, i32 1
  %14 = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic.i18, i32 0, i32 4
  br label %do.body.i23

do.body.i23:                                      ; preds = %if.end19.i29.do.body.i23_crit_edge, %if.end4
  %retries.0.i20 = phi i16 [ 50, %if.end4 ], [ %dec.i27, %if.end19.i29.do.body.i23_crit_edge ]
  %15 = ptrtoint ptr %hic.i18 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 365918564940513536, ptr %hic.i18, align 8
  %16 = ptrtoint ptr %lan_id.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %lan_id.i, align 1
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %13, align 4
  %19 = call ptr @memset(ptr %14, i32 0, i32 16)
  %call.i21 = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %hic.i18, i32 noundef 24, i32 noundef 500, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i22 = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i22, label %if.end.i25, label %do.body.i23.ixgbe_fw_phy_activity.exit31.thread_crit_edge

do.body.i23.ixgbe_fw_phy_activity.exit31.thread_crit_edge: ; preds = %do.body.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_fw_phy_activity.exit31.thread

if.end.i25:                                       ; preds = %do.body.i23
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %12, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp6.i24 = icmp eq i8 %21, 1
  br i1 %cmp6.i24, label %if.end8, label %if.end19.i29

if.end19.i29:                                     ; preds = %if.end.i25
  call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #7
  %dec.i27 = add nsw i16 %retries.0.i20, -1
  %cmp21.not.i28 = icmp eq i16 %dec.i27, 0
  br i1 %cmp21.not.i28, label %if.end19.i29.ixgbe_fw_phy_activity.exit31.thread_crit_edge, label %if.end19.i29.do.body.i23_crit_edge

if.end19.i29.do.body.i23_crit_edge:               ; preds = %if.end19.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i23

if.end19.i29.ixgbe_fw_phy_activity.exit31.thread_crit_edge: ; preds = %if.end19.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_fw_phy_activity.exit31.thread

ixgbe_fw_phy_activity.exit31.thread:              ; preds = %if.end19.i29.ixgbe_fw_phy_activity.exit31.thread_crit_edge, %do.body.i23.ixgbe_fw_phy_activity.exit31.thread_crit_edge
  %retval.0.i30.ph = phi i32 [ %call.i21, %do.body.i23.ixgbe_fw_phy_activity.exit31.thread_crit_edge ], [ -33, %if.end19.i29.ixgbe_fw_phy_activity.exit31.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hic.i18) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hic.i18) #7
  %call9 = call i32 @ixgbe_setup_fw_link(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %ixgbe_fw_phy_activity.exit31.thread, %ixgbe_fw_phy_activity.exit.thread, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %ixgbe_fw_phy_activity.exit.thread ], [ %retval.0.i30.ph, %ixgbe_fw_phy_activity.exit31.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_ext_phy_t_x550em_get_link(ptr noundef %hw, ptr nocapture noundef writeonly %link_up) unnamed_addr #0 align 64 {
entry:
  %autoneg_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %autoneg_status) #7
  %0 = ptrtoint ptr %autoneg_status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %autoneg_status, align 2, !annotation !155
  %1 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %link_up, align 1
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %2 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg, align 4
  %call = call i32 %3(ptr noundef %hw, i32 noundef 1, i32 noundef 7, ptr noundef nonnull %autoneg_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg, align 4
  %call4 = call i32 %5(ptr noundef %hw, i32 noundef 1, i32 noundef 7, ptr noundef nonnull %autoneg_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %autoneg_status to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %autoneg_status, align 2
  %8 = trunc i16 %7 to i8
  %9 = lshr i8 %8, 2
  %10 = and i8 %9, 1
  %11 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %link_up, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %autoneg_status) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ixgbe_mng_present(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_set_copper_phy_power(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_get_lcd_t_x550em(ptr noundef %hw, ptr nocapture noundef writeonly %lcd_speed) unnamed_addr #0 align 64 {
entry:
  %an_lp_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %an_lp_status) #7
  %0 = ptrtoint ptr %an_lp_status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %an_lp_status, align 2, !annotation !155
  %ctrl_word_3 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 6
  %1 = ptrtoint ptr %ctrl_word_3 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ctrl_word_3, align 2
  %3 = ptrtoint ptr %lcd_speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %lcd_speed, align 4
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %4 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg, align 4
  %call = call i32 %5(ptr noundef %hw, i32 noundef 59424, i32 noundef 7, ptr noundef nonnull %an_lp_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %an_lp_status to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %an_lp_status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %tobool1.not = icmp sgt i16 %7, -1
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %8 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  %10 = and i16 %2, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool8.not = icmp eq i16 %10, 0
  %or.cond = select i1 %tobool5.not, i1 true, i1 %tobool8.not
  %11 = and i16 %2, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool11.not = icmp eq i16 %11, 0
  %or.cond26 = select i1 %or.cond, i1 %tobool11.not, i1 false
  br i1 %or.cond26, label %if.end3.cleanup.sink.split_crit_edge, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end3.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 32, %if.end.cleanup.sink.split_crit_edge ], [ 128, %if.end3.cleanup.sink.split_crit_edge ]
  %12 = ptrtoint ptr %lcd_speed to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %lcd_speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %an_lp_status) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_get_lasi_ext_t_x550em(ptr noundef %hw, ptr nocapture noundef writeonly %lsc) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !155
  %1 = ptrtoint ptr %lsc to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %lsc, align 1
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %2 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg, align 4
  %call = call i32 %3(ptr noundef %hw, i32 noundef 64512, i32 noundef 30, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg, align 2
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool1.not = icmp eq i16 %6, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_reg, align 4
  %call5 = call i32 %8(ptr noundef %hw, i32 noundef 64513, i32 noundef 30, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false7:                                   ; preds = %if.end
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reg, align 2
  %11 = and i16 %10, 4100
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool10.not = icmp eq i16 %11, 0
  br i1 %tobool10.not, label %lor.lhs.false7.cleanup_crit_edge, label %if.end12

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false7
  %12 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg, align 4
  %call16 = call i32 %13(ptr noundef %hw, i32 noundef 52224, i32 noundef 30, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %reg, align 2
  %conv20 = zext i16 %15 to i32
  %and21 = and i32 %conv20, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = call i32 @ixgbe_set_copper_phy_power(ptr noundef %hw, i1 noundef zeroext false) #7
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %and27 = and i32 %conv20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end42_crit_edge, label %if.then29

if.end25.if.end42_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then29:                                        ; preds = %if.end25
  %16 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_reg, align 4
  %call33 = call i32 %17(ptr noundef %hw, i32 noundef 51280, i32 noundef 30, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.then29
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %reg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32761, i16 %19)
  %cmp = icmp eq i16 %19, -32761
  br i1 %cmp, label %if.then39, label %if.end36.if.end42_crit_edge

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = call i32 @ixgbe_set_copper_phy_power(ptr noundef %hw, i1 noundef zeroext false) #7
  br label %cleanup

if.end42:                                         ; preds = %if.end36.if.end42_crit_edge, %if.end25.if.end42_crit_edge
  %20 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_reg, align 4
  %call46 = call i32 %21(ptr noundef %hw, i32 noundef 64512, i32 noundef 7, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %lor.lhs.false48, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false48:                                  ; preds = %if.end42
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %reg, align 2
  %24 = and i16 %23, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool51.not = icmp eq i16 %24, 0
  br i1 %tobool51.not, label %lor.lhs.false48.cleanup_crit_edge, label %if.end53

lor.lhs.false48.cleanup_crit_edge:                ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %lor.lhs.false48
  %25 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_reg, align 4
  %call57 = call i32 %26(ptr noundef %hw, i32 noundef 52225, i32 noundef 7, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60:                                         ; preds = %if.end53
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %reg, align 2
  %29 = and i16 %28, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool63.not = icmp eq i16 %29, 0
  br i1 %tobool63.not, label %if.end60.cleanup_crit_edge, label %if.then64

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %lsc to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %lsc, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.end60.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %lor.lhs.false48.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.then39, %if.then29.cleanup_crit_edge, %if.then23, %if.end12.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -26, %if.then23 ], [ -26, %if.then39 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false7.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call16, %if.end12.cleanup_crit_edge ], [ %call33, %if.then29.cleanup_crit_edge ], [ 0, %lor.lhs.false48.cleanup_crit_edge ], [ %call46, %if.end42.cleanup_crit_edge ], [ %call57, %if.end53.cleanup_crit_edge ], [ 0, %if.then64 ], [ 0, %if.end60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_reset_phy_generic(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_i2c_combined_generic(ptr noundef %hw, i8 noundef zeroext %addr, i16 noundef zeroext %reg, ptr noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_i2c_combined_generic_int(ptr noundef %hw, i8 noundef zeroext %addr, i16 noundef zeroext %reg, ptr noundef %val, i1 noundef zeroext true) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_i2c_combined_generic_unlocked(ptr noundef %hw, i8 noundef zeroext %addr, i16 noundef zeroext %reg, ptr noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_i2c_combined_generic_int(ptr noundef %hw, i8 noundef zeroext %addr, i16 noundef zeroext %reg, ptr noundef %val, i1 noundef zeroext false) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_write_i2c_combined_generic(ptr noundef %hw, i8 noundef zeroext %addr, i16 noundef zeroext %reg, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_write_i2c_combined_generic_int(ptr noundef %hw, i8 noundef zeroext %addr, i16 noundef zeroext %reg, i16 noundef zeroext %val, i1 noundef zeroext true) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_write_i2c_combined_generic_unlocked(ptr noundef %hw, i8 noundef zeroext %addr, i16 noundef zeroext %reg, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_write_i2c_combined_generic_int(ptr noundef %hw, i8 noundef zeroext %addr, i16 noundef zeroext %reg, i16 noundef zeroext %val, i1 noundef zeroext false) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_i2c_combined_generic_int(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_write_i2c_combined_generic_int(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_acquire_swfw_sync_x550em_a(ptr noundef %hw, i32 noundef %mask) #0 align 64 {
entry:
  %token_cmd.i = alloca %struct.ixgbe_hic_phy_token_req, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, -1073741825
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %and5 = and i32 %mask, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %0 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %token_cmd.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %token_cmd.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %token_cmd.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ixgbe_hic_phy_token_req, ptr %token_cmd.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ixgbe_hic_phy_token_req, ptr %token_cmd.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.ixgbe_hic_phy_token_req, ptr %token_cmd.i, i32 0, i32 3
  %lan_id.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %entry
  %dec36 = phi i32 [ 999, %entry ], [ %dec, %if.end17.while.body_crit_edge ]
  br i1 %tobool1.not, label %if.end4, label %if.end

if.end:                                           ; preds = %while.body
  %call = call i32 @ixgbe_acquire_swfw_sync_X540(ptr noundef %hw, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp ne i32 %call, 0
  %brmerge = or i1 %tobool2.not, %tobool6.not
  br i1 %brmerge, label %if.end.cleanup_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %while.body
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4.if.end8_crit_edge, %if.end.if.end8_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %token_cmd.i) #7
  %6 = ptrtoint ptr %token_cmd.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %token_cmd.i, align 2
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %1, align 2
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %2, align 1
  %10 = ptrtoint ptr %lan_id.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lan_id.i, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %3, align 2
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %4, align 1
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %5, align 2
  %call.i = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %token_cmd.i, i32 noundef 8, i32 noundef 500, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end.i:                                         ; preds = %if.end8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %16)
  %switch.selectcmp.i = icmp eq i8 %16, -128
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -40, i32 -39
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %switch.selectcmp19.i = icmp eq i8 %16, 1
  br i1 %switch.selectcmp19.i, label %ixgbe_get_phy_token.exit, label %if.end.i.if.end12_crit_edge

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

ixgbe_get_phy_token.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %token_cmd.i) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end.i.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  %retval.0.i.ph = phi i32 [ %switch.select.i, %if.end.i.if.end12_crit_edge ], [ %call.i, %if.end8.if.end12_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %token_cmd.i) #7
  br i1 %tobool1.not, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @ixgbe_release_swfw_sync_X540(ptr noundef %hw, i32 noundef %and) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -40, i32 %retval.0.i.ph)
  %cmp.not = icmp eq i32 %retval.0.i.ph, -40
  br i1 %cmp.not, label %if.end17, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end15
  call void @msleep(i32 noundef 5) #7
  %dec = add nsw i32 %dec36, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end17.cleanup_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end17.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %ixgbe_get_phy_token.exit, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ixgbe_get_phy_token.exit ], [ -40, %if.end17.cleanup_crit_edge ], [ %retval.0.i.ph, %if.end15.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_release_swfw_sync_x550em_a(ptr noundef %hw, i32 noundef %mask) #0 align 64 {
entry:
  %token_cmd.i = alloca %struct.ixgbe_hic_phy_token_req, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, -1073741825
  %and1 = and i32 %mask, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %token_cmd.i) #7
  %0 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %token_cmd.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %token_cmd.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %token_cmd.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ixgbe_hic_phy_token_req, ptr %token_cmd.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ixgbe_hic_phy_token_req, ptr %token_cmd.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.ixgbe_hic_phy_token_req, ptr %token_cmd.i, i32 0, i32 3
  %6 = ptrtoint ptr %token_cmd.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %token_cmd.i, align 2
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %1, align 2
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %2, align 1
  %lan_id.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %10 = ptrtoint ptr %lan_id.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lan_id.i, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %3, align 2
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %4, align 1
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %5, align 2
  %call.i = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %token_cmd.i, i32 noundef 8, i32 noundef 500, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %token_cmd.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @ixgbe_release_swfw_sync_X540(ptr noundef %hw, i32 noundef %and) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_iosf_sb_reg_x550a(ptr noundef %hw, i32 noundef %reg_addr, i32 noundef %device_type, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %hic = alloca %union.anon.140, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hic) #7
  %0 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %hic, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %hic, i32 0, i32 3
  %2 = getelementptr inbounds %struct.ixgbe_hic_internal_phy_resp, ptr %hic, i32 0, i32 1
  %3 = call ptr @memset(ptr %hic, i32 0, i32 16)
  %4 = ptrtoint ptr %hic to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 11, ptr %hic, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %0, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %1, align 1
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %7 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %lan_id, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %2, align 4
  %conv = trunc i32 %reg_addr to i16
  %address = getelementptr inbounds %struct.ixgbe_hic_internal_phy_req, ptr %hic, i32 0, i32 3
  %10 = ptrtoint ptr %address to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %address, align 2
  %call = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %hic, i32 noundef 16, i32 noundef 500, i1 noundef zeroext true) #7
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hic) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_write_iosf_sb_reg_x550a(ptr noundef %hw, i32 noundef %reg_addr, i32 noundef %device_type, i32 noundef %data) #0 align 64 {
entry:
  %write_cmd = alloca %struct.ixgbe_hic_internal_phy_req, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %write_cmd) #7
  %0 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %write_cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %write_cmd, i32 0, i32 3
  %2 = getelementptr inbounds %struct.ixgbe_hic_internal_phy_req, ptr %write_cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ixgbe_hic_internal_phy_req, ptr %write_cmd, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ixgbe_hic_internal_phy_req, ptr %write_cmd, i32 0, i32 3
  %5 = getelementptr inbounds %struct.ixgbe_hic_internal_phy_req, ptr %write_cmd, i32 0, i32 5
  %6 = getelementptr inbounds i8, ptr %write_cmd, i32 2
  %7 = call ptr @memset(ptr %6, i32 0, i32 14)
  %8 = ptrtoint ptr %write_cmd to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 11, ptr %write_cmd, align 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 10, ptr %0, align 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %1, align 1
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %11 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %lan_id, align 1
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %2, align 1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %3, align 1
  %conv = trunc i32 %reg_addr to i16
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %conv, ptr %4, align 1
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %data, ptr %5, align 1
  %call = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %write_cmd, i32 noundef 16, i32 noundef 500, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %write_cmd) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_phy_reg_x550a(ptr noundef %hw, i32 noundef %reg_addr, i32 noundef %device_type, ptr noundef %phy_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_semaphore_mask = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %phy_semaphore_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_semaphore_mask, align 4
  %or = or i32 %1, 1073741824
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %2 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %3(ptr noundef %hw, i32 noundef %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read_reg_mdi = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 6
  %4 = ptrtoint ptr %read_reg_mdi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg_mdi, align 4
  %call3 = tail call i32 %5(ptr noundef %hw, i32 noundef %reg_addr, i32 noundef %device_type, ptr noundef %phy_data) #7
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %6 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %7(ptr noundef %hw, i32 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_write_phy_reg_x550a(ptr noundef %hw, i32 noundef %reg_addr, i32 noundef %device_type, i16 noundef zeroext %phy_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_semaphore_mask = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %phy_semaphore_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_semaphore_mask, align 4
  %or = or i32 %1, 1073741824
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %2 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %3(ptr noundef %hw, i32 noundef %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @ixgbe_write_phy_reg_mdi(ptr noundef %hw, i32 noundef %reg_addr, i32 noundef %device_type, i16 noundef zeroext %phy_data) #7
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %4 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %5(ptr noundef %hw, i32 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_phy_reg_mdi(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_write_phy_reg_mdi(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_identify_phy_fw(ptr noundef %hw) #0 align 64 {
entry:
  %hic.i.i = alloca %union.anon.121, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool.not, i32 2, i32 4
  %2 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 4
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 27, ptr %type, align 4
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %5 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %read_reg, align 4
  %write_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %6 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %write_reg, align 4
  %id.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 3
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ixgbe_get_phy_id_fw.exit_crit_edge

entry.ixgbe_get_phy_id_fw.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_get_phy_id_fw.exit

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hic.i.i) #7
  %9 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %hic.i.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic.i.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic.i.i, i32 0, i32 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end19.i.i.do.body.i.i_crit_edge, %if.end.i
  %retries.0.i.i = phi i16 [ 50, %if.end.i ], [ %dec.i.i, %if.end19.i.i.do.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %hic.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 365918564940515072, ptr %hic.i.i, align 8
  %13 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %lan_id, align 1
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %10, align 4
  %16 = call ptr @memset(ptr %11, i32 0, i32 16)
  %call.i.i = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %hic.i.i, i32 noundef 24, i32 noundef 500, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body.i.i.ixgbe_fw_phy_activity.exit.thread.i_crit_edge

do.body.i.i.ixgbe_fw_phy_activity.exit.thread.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_fw_phy_activity.exit.thread.i

if.end.i.i:                                       ; preds = %do.body.i.i
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp6.i.i = icmp eq i8 %18, 1
  br i1 %cmp6.i.i, label %if.end3.i, label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.end.i.i
  call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #7
  %dec.i.i = add nsw i16 %retries.0.i.i, -1
  %cmp21.not.i.i = icmp eq i16 %dec.i.i, 0
  br i1 %cmp21.not.i.i, label %if.end19.i.i.ixgbe_fw_phy_activity.exit.thread.i_crit_edge, label %if.end19.i.i.do.body.i.i_crit_edge

if.end19.i.i.do.body.i.i_crit_edge:               ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

if.end19.i.i.ixgbe_fw_phy_activity.exit.thread.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_fw_phy_activity.exit.thread.i

ixgbe_fw_phy_activity.exit.thread.i:              ; preds = %if.end19.i.i.ixgbe_fw_phy_activity.exit.thread.i_crit_edge, %do.body.i.i.ixgbe_fw_phy_activity.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %do.body.i.i.ixgbe_fw_phy_activity.exit.thread.i_crit_edge ], [ -33, %if.end19.i.i.ixgbe_fw_phy_activity.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hic.i.i) #7
  br label %ixgbe_get_phy_id_fw.exit

if.end3.i:                                        ; preds = %if.end.i.i
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %info.sroa.0.0.copyload72.i = load i32, ptr %10, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %info.sroa.7.0.copyload74.i = load i32, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hic.i.i) #7
  %speeds_supported.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 11
  %and10.i = shl i32 %info.sroa.0.0.copyload72.i, 1
  %21 = and i32 %and10.i, 2
  %22 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %speeds_supported.i, align 4
  %and10.1.i = and i32 %info.sroa.0.0.copyload72.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.1.i)
  %tobool11.not.1.i = icmp eq i32 %and10.1.i, 0
  br i1 %tobool11.not.1.i, label %if.end3.i.for.inc.1.i_crit_edge, label %if.then12.1.i

if.end3.i.for.inc.1.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.then12.1.i:                                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %speeds_supported.i, align 4
  %or.1.i = or i32 %24, 8
  store i32 %or.1.i, ptr %speeds_supported.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then12.1.i, %if.end3.i.for.inc.1.i_crit_edge
  %and10.2.i = and i32 %info.sroa.0.0.copyload72.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.2.i)
  %tobool11.not.2.i = icmp eq i32 %and10.2.i, 0
  br i1 %tobool11.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then12.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.then12.2.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speeds_supported.i, align 4
  %or.2.i = or i32 %26, 32
  store i32 %or.2.i, ptr %speeds_supported.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then12.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %and10.3.i = and i32 %info.sroa.0.0.copyload72.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.3.i)
  %tobool11.not.3.i = icmp eq i32 %and10.3.i, 0
  br i1 %tobool11.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then12.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

if.then12.3.i:                                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speeds_supported.i, align 4
  %or.3.i = or i32 %28, 1024
  store i32 %or.3.i, ptr %speeds_supported.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then12.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %and10.4.i = and i32 %info.sroa.0.0.copyload72.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.4.i)
  %tobool11.not.4.i = icmp eq i32 %and10.4.i, 0
  br i1 %tobool11.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then12.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

if.then12.4.i:                                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %speeds_supported.i, align 4
  %or.4.i = or i32 %30, 2048
  store i32 %or.4.i, ptr %speeds_supported.i, align 4
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then12.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %and10.5.i = and i32 %info.sroa.0.0.copyload72.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.5.i)
  %tobool11.not.5.i = icmp eq i32 %and10.5.i, 0
  br i1 %tobool11.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then12.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5.i

if.then12.5.i:                                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %speeds_supported.i, align 4
  %or.5.i = or i32 %32, 128
  store i32 %or.5.i, ptr %speeds_supported.i, align 4
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then12.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %and19.i = and i32 %info.sroa.0.0.copyload72.i, -65536
  %and26.i = and i32 %info.sroa.7.0.copyload74.i, 65520
  %or29.i = or i32 %and26.i, %and19.i
  %33 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or29.i, ptr %id.i, align 4
  %and31.i = and i32 %info.sroa.7.0.copyload74.i, 15
  %revision.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 6
  %34 = ptrtoint ptr %revision.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and31.i, ptr %revision.i, align 4
  %35 = zext i32 %or29.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %or29.i, label %if.end41.i [
    i32 0, label %for.inc.5.i.ixgbe_get_phy_id_fw.exit_crit_edge
    i32 -16, label %for.inc.5.i.ixgbe_get_phy_id_fw.exit_crit_edge13
  ]

for.inc.5.i.ixgbe_get_phy_id_fw.exit_crit_edge13: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_get_phy_id_fw.exit

for.inc.5.i.ixgbe_get_phy_id_fw.exit_crit_edge:   ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_get_phy_id_fw.exit

if.end41.i:                                       ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %speeds_supported.i, align 4
  %autoneg_advertised.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 10
  %38 = ptrtoint ptr %autoneg_advertised.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %autoneg_advertised.i, align 4
  %eee_speeds_supported.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 12
  %39 = ptrtoint ptr %eee_speeds_supported.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 40, ptr %eee_speeds_supported.i, align 4
  %eee_speeds_advertised.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 13
  %40 = ptrtoint ptr %eee_speeds_advertised.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 40, ptr %eee_speeds_advertised.i, align 4
  br label %ixgbe_get_phy_id_fw.exit

ixgbe_get_phy_id_fw.exit:                         ; preds = %if.end41.i, %for.inc.5.i.ixgbe_get_phy_id_fw.exit_crit_edge, %for.inc.5.i.ixgbe_get_phy_id_fw.exit_crit_edge13, %ixgbe_fw_phy_activity.exit.thread.i, %entry.ixgbe_get_phy_id_fw.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end41.i ], [ 0, %entry.ixgbe_get_phy_id_fw.exit_crit_edge ], [ -17, %for.inc.5.i.ixgbe_get_phy_id_fw.exit_crit_edge ], [ -17, %for.inc.5.i.ixgbe_get_phy_id_fw.exit_crit_edge13 ], [ %retval.0.i.ph.i, %ixgbe_fw_phy_activity.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_check_overtemp_fw(ptr noundef %hw) #0 align 64 {
entry:
  %hic.i.i = alloca %union.anon.121, align 8
  %hic.i = alloca %union.anon.121, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hic.i) #7
  %0 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %hic.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic.i, i32 0, i32 4
  %lan_id.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end19.i.do.body.i_crit_edge, %entry
  %retries.0.i = phi i16 [ 50, %entry ], [ %dec.i, %if.end19.i.do.body.i_crit_edge ]
  %3 = ptrtoint ptr %hic.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 365918564940514048, ptr %hic.i, align 8
  %4 = ptrtoint ptr %lan_id.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lan_id.i, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %1, align 4
  %7 = call ptr @memset(ptr %2, i32 0, i32 16)
  %call.i = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %hic.i, i32 noundef 24, i32 noundef 500, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.ixgbe_fw_phy_activity.exit.thread_crit_edge

do.body.i.ixgbe_fw_phy_activity.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_fw_phy_activity.exit.thread

if.end.i:                                         ; preds = %do.body.i
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp6.i = icmp eq i8 %9, 1
  br i1 %cmp6.i, label %if.end, label %if.end19.i

if.end19.i:                                       ; preds = %if.end.i
  call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #7
  %dec.i = add nsw i16 %retries.0.i, -1
  %cmp21.not.i = icmp eq i16 %dec.i, 0
  br i1 %cmp21.not.i, label %if.end19.i.ixgbe_fw_phy_activity.exit.thread_crit_edge, label %if.end19.i.do.body.i_crit_edge

if.end19.i.do.body.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end19.i.ixgbe_fw_phy_activity.exit.thread_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_fw_phy_activity.exit.thread

ixgbe_fw_phy_activity.exit.thread:                ; preds = %if.end19.i.ixgbe_fw_phy_activity.exit.thread_crit_edge, %do.body.i.ixgbe_fw_phy_activity.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %do.body.i.ixgbe_fw_phy_activity.exit.thread_crit_edge ], [ -33, %if.end19.i.ixgbe_fw_phy_activity.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hic.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %store.sroa.0.0.copyload8 = load i32, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hic.i) #7
  %and = and i32 %store.sroa.0.0.copyload8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hic.i.i) #7
  %11 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %hic.i.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic.i.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic.i.i, i32 0, i32 4
  %setup.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.ixgbe_hic_phy_activity_req, ptr %hic.i.i, i32 0, i32 4, i32 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end19.i.i.do.body.i.i_crit_edge, %if.then2
  %retries.0.i.i = phi i16 [ 50, %if.then2 ], [ %dec.i.i, %if.end19.i.i.do.body.i.i_crit_edge ]
  %14 = ptrtoint ptr %hic.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 365918564940514304, ptr %hic.i.i, align 8
  %15 = ptrtoint ptr %lan_id.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lan_id.i, align 1
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %12, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %13, align 8
  %19 = call ptr @memset(ptr %setup.sroa.6.0..sroa_idx.i, i32 0, i32 12)
  %call.i.i = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %hic.i.i, i32 noundef 24, i32 noundef 500, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body.i.i.ixgbe_shutdown_fw_phy.exit_crit_edge

do.body.i.i.ixgbe_shutdown_fw_phy.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_shutdown_fw_phy.exit

if.end.i.i:                                       ; preds = %do.body.i.i
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %11, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp6.i.i = icmp eq i8 %21, 1
  br i1 %cmp6.i.i, label %if.end.i.i.ixgbe_shutdown_fw_phy.exit_crit_edge, label %if.end19.i.i

if.end.i.i.ixgbe_shutdown_fw_phy.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_shutdown_fw_phy.exit

if.end19.i.i:                                     ; preds = %if.end.i.i
  call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #7
  %dec.i.i = add nsw i16 %retries.0.i.i, -1
  %cmp21.not.i.i = icmp eq i16 %dec.i.i, 0
  br i1 %cmp21.not.i.i, label %if.end19.i.i.ixgbe_shutdown_fw_phy.exit_crit_edge, label %if.end19.i.i.do.body.i.i_crit_edge

if.end19.i.i.do.body.i.i_crit_edge:               ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

if.end19.i.i.ixgbe_shutdown_fw_phy.exit_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_shutdown_fw_phy.exit

ixgbe_shutdown_fw_phy.exit:                       ; preds = %if.end19.i.i.ixgbe_shutdown_fw_phy.exit_crit_edge, %if.end.i.i.ixgbe_shutdown_fw_phy.exit_crit_edge, %do.body.i.i.ixgbe_shutdown_fw_phy.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hic.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_shutdown_fw_phy.exit, %if.end.cleanup_crit_edge, %ixgbe_fw_phy_activity.exit.thread
  %retval.0 = phi i32 [ -26, %ixgbe_shutdown_fw_phy.exit ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %ixgbe_fw_phy_activity.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !44, !45, !47, !48, !50, !51, !52, !54, !55, !57, !59, !61, !63, !65, !66, !67, !69, !70, !72, !74, !76, !77, !78, !80, !82, !84, !86, !88, !90, !91, !92, !94, !96, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @ixgbe_X550_info, !1, !"ixgbe_X550_info", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 4051, i32 25}
!2 = !{ptr @ixgbe_X550EM_x_info, !3, !"ixgbe_X550EM_x_info", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 4061, i32 25}
!4 = !{ptr @ixgbe_x550em_x_fw_info, !5, !"ixgbe_x550em_x_fw_info", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 4072, i32 25}
!6 = !{ptr @ixgbe_x550em_a_info, !7, !"ixgbe_x550em_a_info", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 4082, i32 25}
!8 = !{ptr @ixgbe_x550em_a_fw_info, !9, !"ixgbe_x550em_a_fw_info", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 4092, i32 25}
!10 = !{ptr @mac_ops_X550, !11, !"mac_ops_X550", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 3842, i32 42}
!12 = !{ptr @eeprom_ops_X550, !13, !"eeprom_ops_X550", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 3959, i32 45}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 644, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ixgbe_init_eeprom_params_X550.__UNIQUE_ID_ddebug357, !15, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 865, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ixgbe_read_ee_hostif_buffer_X550.__UNIQUE_ID_ddebug360, !21, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 890, i32 4}
!26 = !{ptr @ixgbe_read_ee_hostif_buffer_X550.__UNIQUE_ID_ddebug361, !25, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 1205, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ixgbe_write_ee_hostif_X550.__UNIQUE_ID_ddebug367, !28, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 1362, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ixgbe_write_ee_hostif_buffer_X550.__UNIQUE_ID_ddebug369, !32, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 1370, i32 4}
!37 = !{ptr @ixgbe_write_ee_hostif_buffer_X550.__UNIQUE_ID_ddebug370, !36, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 1132, i32 3}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ixgbe_validate_eeprom_checksum_X550.__UNIQUE_ID_ddebug365, !39, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 1152, i32 3}
!44 = !{ptr @ixgbe_validate_eeprom_checksum_X550.__UNIQUE_ID_ddebug366, !43, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 1323, i32 3}
!47 = !{ptr @ixgbe_update_eeprom_checksum_X550.__UNIQUE_ID_ddebug368, !46, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 1009, i32 4}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ixgbe_calc_checksum_X550.__UNIQUE_ID_ddebug364, !49, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 939, i32 4}
!54 = !{ptr @ixgbe_checksum_ptr_x550.__UNIQUE_ID_ddebug362, !53, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!55 = !{ptr @ixgbe_checksum_ptr_x550.__UNIQUE_ID_ddebug363, !56, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 976, i32 5}
!57 = !{ptr @phy_ops_X550, !58, !"phy_ops_X550", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 3981, i32 42}
!59 = !{ptr @ixgbe_mvals_X550, !60, !"ixgbe_mvals_X550", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 4039, i32 18}
!61 = !{ptr @mac_ops_X550EM_x, !62, !"mac_ops_X550EM_x", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 3864, i32 42}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 3453, i32 3}
!65 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ixgbe_reset_hw_X550em.__UNIQUE_ID_ddebug377, !64, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 3473, i32 3}
!69 = !{ptr @ixgbe_reset_hw_X550em.__UNIQUE_ID_ddebug378, !68, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 2859, i32 3}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 2894, i32 3}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 1515, i32 3}
!76 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ixgbe_restart_an_internal_phy_x550em.__UNIQUE_ID_ddebug372, !75, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!78 = !{ptr @ixgbe_restart_an_internal_phy_x550em.__UNIQUE_ID_ddebug373, !79, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 1533, i32 4}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 570, i32 3}
!82 = distinct !{null, !83, !"ixgbe_fw_map", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 472, i32 3}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 2949, i32 3}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 2955, i32 3}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 2965, i32 3}
!90 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ixgbe_fc_autoneg_backplane_x550em_a.__UNIQUE_ID_ddebug374, !89, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!92 = !{ptr @ixgbe_fc_autoneg_backplane_x550em_a.__UNIQUE_ID_ddebug375, !93, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 2978, i32 3}
!94 = !{ptr @ixgbe_fc_autoneg_backplane_x550em_a.__UNIQUE_ID_ddebug376, !95, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 2987, i32 3}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 3583, i32 3}
!98 = !{ptr @ixgbe_setup_fc_backplane_x550em_a.__UNIQUE_ID_ddebug379, !97, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!99 = !{ptr @.str.32, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 717, i32 3}
!101 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ixgbe_read_iosf_sb_reg_x550.__UNIQUE_ID_ddebug359, !100, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!103 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 677, i32 3}
!105 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @ixgbe_iosf_wait.__UNIQUE_ID_ddebug358, !104, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!107 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 1417, i32 3}
!109 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ixgbe_write_iosf_sb_reg_x550.__UNIQUE_ID_ddebug371, !108, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!111 = !{ptr @eeprom_ops_X550EM_x, !112, !"eeprom_ops_X550EM_x", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 3964, i32 45}
!113 = !{ptr @phy_ops_X550EM_x, !114, !"phy_ops_X550EM_x", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 3990, i32 42}
!115 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 235, i32 4}
!117 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 264, i32 3}
!119 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 208, i32 3}
!121 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 214, i32 3}
!123 = !{ptr @.str.42, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 126, i32 3}
!125 = !{ptr @link_ops_x550em_x, !126, !"link_ops_x550em_x", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 4032, i32 43}
!127 = !{ptr @ixgbe_mvals_X550EM_x, !128, !"ixgbe_mvals_X550EM_x", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 4043, i32 18}
!129 = !{ptr @mac_ops_X550EM_x_fw, !130, !"mac_ops_X550EM_x_fw", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 3886, i32 42}
!131 = !{ptr @phy_ops_x550em_x_fw, !132, !"phy_ops_x550em_x_fw", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 3999, i32 42}
!133 = !{ptr @mac_ops_x550em_a, !134, !"mac_ops_x550em_a", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 3908, i32 42}
!135 = !{ptr @phy_ops_x550em_a, !136, !"phy_ops_x550em_a", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 4010, i32 42}
!137 = !{ptr @ixgbe_mvals_x550em_a, !138, !"ixgbe_mvals_x550em_a", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 4047, i32 18}
!139 = !{ptr @mac_ops_x550em_a_fw, !140, !"mac_ops_x550em_a_fw", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 3929, i32 42}
!141 = !{ptr @phy_ops_x550em_a_fw, !142, !"phy_ops_x550em_a_fw", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c", i32 4021, i32 42}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{i64 2157374270}
!153 = !{i64 6496460}
!154 = !{i64 2149068701, i64 2149068706, i64 2149068719, i64 2149068763, i64 2149068797, i64 2149068818}
!155 = !{!"auto-init"}
!156 = !{i8 0, i8 2}
