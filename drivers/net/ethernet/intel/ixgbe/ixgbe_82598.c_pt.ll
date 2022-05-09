; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ixgbe_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_eeprom_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
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

@mac_ops_82598 = internal constant { %struct.ixgbe_mac_operations, [80 x i8] } { %struct.ixgbe_mac_operations { ptr @ixgbe_init_hw_generic, ptr @ixgbe_reset_hw_82598, ptr @ixgbe_start_hw_82598, ptr @ixgbe_clear_hw_cntrs_generic, ptr @ixgbe_get_media_type_82598, ptr @ixgbe_get_mac_addr_generic, ptr null, ptr null, ptr null, ptr @ixgbe_stop_adapter_generic, ptr @ixgbe_get_bus_info_generic, ptr @ixgbe_set_lan_id_multi_port_pcie_82598, ptr @ixgbe_read_analog_reg8_82598, ptr @ixgbe_write_analog_reg8_82598, ptr null, ptr null, ptr null, ptr @ixgbe_enable_rx_dma_generic, ptr @ixgbe_acquire_swfw_sync, ptr @ixgbe_release_swfw_sync, ptr null, ptr @prot_autoc_read_generic, ptr @prot_autoc_write_generic, ptr null, ptr null, ptr null, ptr null, ptr @ixgbe_setup_mac_link_82598, ptr null, ptr @ixgbe_check_mac_link_82598, ptr @ixgbe_get_link_capabilities_82598, ptr null, ptr @ixgbe_set_rxpba_82598, ptr @ixgbe_led_on_generic, ptr @ixgbe_led_off_generic, ptr @ixgbe_blink_led_start_generic, ptr @ixgbe_blink_led_stop_generic, ptr @ixgbe_init_led_link_act_generic, ptr @ixgbe_set_rar_generic, ptr @ixgbe_clear_rar_generic, ptr @ixgbe_set_vmdq_82598, ptr null, ptr @ixgbe_clear_vmdq_82598, ptr @ixgbe_init_rx_addrs_generic, ptr @ixgbe_update_mc_addr_list_generic, ptr @ixgbe_enable_mc_generic, ptr @ixgbe_disable_mc_generic, ptr @ixgbe_clear_vfta_82598, ptr @ixgbe_set_vfta_82598, ptr null, ptr null, ptr null, ptr @ixgbe_fc_enable_82598, ptr @ixgbe_setup_fc_generic, ptr @ixgbe_fc_autoneg, ptr null, ptr null, ptr null, ptr null, ptr @ixgbe_disable_rx_generic, ptr @ixgbe_enable_rx_generic, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@eeprom_ops_82598 = internal constant { %struct.ixgbe_eeprom_operations, [32 x i8] } { %struct.ixgbe_eeprom_operations { ptr @ixgbe_init_eeprom_params_generic, ptr @ixgbe_read_eerd_generic, ptr @ixgbe_read_eerd_buffer_generic, ptr @ixgbe_write_eeprom_generic, ptr @ixgbe_write_eeprom_buffer_bit_bang_generic, ptr @ixgbe_validate_eeprom_checksum_generic, ptr @ixgbe_update_eeprom_checksum_generic, ptr @ixgbe_calc_eeprom_checksum_generic }, [32 x i8] zeroinitializer }, align 32
@phy_ops_82598 = internal constant { %struct.ixgbe_phy_operations, [36 x i8] } { %struct.ixgbe_phy_operations { ptr @ixgbe_identify_phy_generic, ptr @ixgbe_identify_module_generic, ptr @ixgbe_init_phy_ops_82598, ptr @ixgbe_reset_phy_generic, ptr @ixgbe_read_phy_reg_generic, ptr @ixgbe_write_phy_reg_generic, ptr @ixgbe_read_phy_reg_mdi, ptr @ixgbe_write_phy_reg_mdi, ptr @ixgbe_setup_phy_link_generic, ptr null, ptr @ixgbe_setup_phy_link_speed_generic, ptr null, ptr null, ptr null, ptr @ixgbe_read_i2c_sff8472_82598, ptr @ixgbe_read_i2c_eeprom_82598, ptr null, ptr @ixgbe_tn_check_overtemp, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ixgbe_mvals_8259X = external dso_local constant [23 x i32], align 4
@ixgbe_82598_info = dso_local constant { %struct.ixgbe_info, [32 x i8] } { %struct.ixgbe_info { i32 1, ptr @ixgbe_get_invariants_82598, ptr @mac_ops_82598, ptr @eeprom_ops_82598, ptr @phy_ops_82598, ptr null, ptr null, ptr @ixgbe_mvals_8259X }, [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ixgbe_reset_hw_82598.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ixgbe\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ixgbe_reset_hw_82598\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Reset polling failed to complete.\0A\00", [61 x i8] zeroinitializer }, align 32
@ixgbe_start_mac_link_82598.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ixgbe_start_mac_link_82598\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Autonegotiation did not complete.\0A\00", [61 x i8] zeroinitializer }, align 32
@ixgbe_validate_link_ready.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ixgbe_validate_link_ready\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Link was indicated but link is down\0A\00", [59 x i8] zeroinitializer }, align 32
@ixgbe_set_vmdq_82598.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ixgbe_set_vmdq_82598\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RAR index %d is out of range.\0A\00", [33 x i8] zeroinitializer }, align 32
@ixgbe_clear_vmdq_82598.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.9, i8 0, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ixgbe_clear_vmdq_82598\00", [41 x i8] zeroinitializer }, align 32
@ixgbe_fc_enable_82598.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ixgbe_fc_enable_82598\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid water mark configuration\0A\00", [62 x i8] zeroinitializer }, align 32
@ixgbe_fc_enable_82598.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Flow control param set incorrectly\0A\00", [60 x i8] zeroinitializer }, align 32
@ixgbe_read_i2c_phy_82598.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ixgbe_read_i2c_phy_82598\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EEPROM read did not pass.\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967276, i64 4294967277]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 9]
@__sancov_gen_cov_switch_values.17 = internal global [14 x i64] [i64 12, i64 16, i64 4278, i64 4294, i64 4295, i64 4296, i64 4315, i64 4317, i64 4321, i64 4332, i64 4337, i64 4340, i64 5384, i64 5387]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.19 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 32768, i64 49152]
@__sancov_gen_cov_switch_values.21 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 32768, i64 49152]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"mac_ops_82598\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1115, i32 42 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"eeprom_ops_82598\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1162, i32 45 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"phy_ops_82598\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1173, i32 42 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"ixgbe_82598_info\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1189, i32 25 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 731, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 442, i32 5 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 480, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 791, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 816, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 294, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 371, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [50 x i8] c"../drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 995, i32 4 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @mac_ops_82598, ptr @eeprom_ops_82598, ptr @phy_ops_82598, ptr @ixgbe_82598_info, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_ops_82598 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_ops_82598 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_ops_82598 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_82598_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_get_invariants_82598(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_identify_phy_generic(ptr noundef %hw) #5
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
  store i32 16, ptr %num_rar_entries, align 4
  %rx_pb_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 14
  %3 = ptrtoint ptr %rx_pb_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 512, ptr %rx_pb_size, align 4
  %max_rx_queues = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 16
  %4 = ptrtoint ptr %max_rx_queues to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 64, ptr %max_rx_queues, align 4
  %max_tx_queues = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 15
  %5 = ptrtoint ptr %max_tx_queues to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %max_tx_queues, align 4
  %call2 = tail call zeroext i16 @ixgbe_get_pcie_msix_count_generic(ptr noundef %hw) #5
  %max_msix_vectors = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 7
  %6 = ptrtoint ptr %max_msix_vectors to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %call2, ptr %max_msix_vectors, align 2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_identify_phy_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ixgbe_get_pcie_msix_count_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_init_hw_generic(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_reset_hw_82598(ptr noundef %hw) #0 align 64 {
entry:
  %analog_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %analog_val) #5
  %0 = ptrtoint ptr %analog_val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %analog_val, align 1, !annotation !49
  %stop_adapter = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 9
  %1 = ptrtoint ptr %stop_adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stop_adapter, align 4
  %call = tail call i32 %2(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_analog_reg8 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 12
  %3 = ptrtoint ptr %read_analog_reg8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_analog_reg8, align 4
  %call3 = call i32 %4(ptr noundef %hw, i32 noundef 36, ptr noundef nonnull %analog_val) #5
  %5 = ptrtoint ptr %analog_val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %analog_val, align 1
  %7 = and i8 %6, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end.if.end49_crit_edge, label %if.then5

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %read_analog_reg8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_analog_reg8, align 4
  %call9 = call i32 %9(ptr noundef %hw, i32 noundef 36, ptr noundef nonnull %analog_val) #5
  %10 = ptrtoint ptr %analog_val to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %analog_val, align 1
  %12 = and i8 %11, -17
  store i8 %12, ptr %analog_val, align 1
  %write_analog_reg8 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 13
  %13 = ptrtoint ptr %write_analog_reg8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_analog_reg8, align 4
  %call15 = call i32 %14(ptr noundef %hw, i32 noundef 36, i8 noundef zeroext %12) #5
  %15 = ptrtoint ptr %read_analog_reg8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_analog_reg8, align 4
  %call19 = call i32 %16(ptr noundef %hw, i32 noundef 11, ptr noundef nonnull %analog_val) #5
  %17 = ptrtoint ptr %analog_val to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %analog_val, align 1
  %19 = and i8 %18, 15
  store i8 %19, ptr %analog_val, align 1
  %20 = ptrtoint ptr %write_analog_reg8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_analog_reg8, align 4
  %call26 = call i32 %21(ptr noundef %hw, i32 noundef 11, i8 noundef zeroext %19) #5
  %22 = ptrtoint ptr %read_analog_reg8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_analog_reg8, align 4
  %call30 = call i32 %23(ptr noundef %hw, i32 noundef 12, ptr noundef nonnull %analog_val) #5
  %24 = ptrtoint ptr %analog_val to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %analog_val, align 1
  %26 = and i8 %25, 15
  store i8 %26, ptr %analog_val, align 1
  %27 = ptrtoint ptr %write_analog_reg8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_analog_reg8, align 4
  %call37 = call i32 %28(ptr noundef %hw, i32 noundef 12, i8 noundef zeroext %26) #5
  %29 = ptrtoint ptr %read_analog_reg8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_analog_reg8, align 4
  %call41 = call i32 %30(ptr noundef %hw, i32 noundef 13, ptr noundef nonnull %analog_val) #5
  %31 = ptrtoint ptr %analog_val to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %analog_val, align 1
  %33 = and i8 %32, 15
  store i8 %33, ptr %analog_val, align 1
  %34 = ptrtoint ptr %write_analog_reg8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_analog_reg8, align 4
  %call48 = call i32 %35(ptr noundef %hw, i32 noundef 13, i8 noundef zeroext %33) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then5, %if.end.if.end49_crit_edge
  %reset_disable = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 9
  %36 = ptrtoint ptr %reset_disable to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reset_disable, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp = icmp eq i8 %37, 0
  br i1 %cmp, label %if.then53, label %if.end49.mac_reset_top.preheader_crit_edge

if.end49.mac_reset_top.preheader_crit_edge:       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %mac_reset_top.preheader

if.then53:                                        ; preds = %if.end49
  %init = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 2
  %38 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init, align 4
  %call56 = call i32 %39(ptr noundef %hw) #5
  %40 = zext i32 %call56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call56, label %if.end64 [
    i32 -19, label %if.then53.cleanup_crit_edge
    i32 -20, label %if.then53.mac_reset_top.preheader_crit_edge
  ]

if.then53.mac_reset_top.preheader_crit_edge:      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %mac_reset_top.preheader

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end64:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %reset = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %41 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reset, align 4
  %call67 = call i32 %42(ptr noundef %hw) #5
  br label %mac_reset_top.preheader

mac_reset_top.preheader:                          ; preds = %if.end64, %if.then53.mac_reset_top.preheader_crit_edge, %if.end49.mac_reset_top.preheader_crit_edge
  %phy_status.1.ph = phi i32 [ %call56, %if.then53.mac_reset_top.preheader_crit_edge ], [ %call56, %if.end64 ], [ 0, %if.end49.mac_reset_top.preheader_crit_edge ]
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %flags = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 21
  br label %mac_reset_top

mac_reset_top:                                    ; preds = %if.then95, %mac_reset_top.preheader
  %status.0 = phi i32 [ %status.1, %if.then95 ], [ 0, %mac_reset_top.preheader ]
  %call69 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %mac_reset_top.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

mac_reset_top.ixgbe_write_reg.exit_crit_edge:     ; preds = %mac_reset_top
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %mac_reset_top
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %call69, 67108864
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  call void @arm_heavy_mb() #5
  %45 = call i32 @llvm.bswap.i32(i32 %or) #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %44, i32 %45) #5, !srcloc !52
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %mac_reset_top.ixgbe_write_reg.exit_crit_edge
  %call70 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #5
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #5
  %call73 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and74 = and i32 %call73, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %ixgbe_write_reg.exit.if.end90_crit_edge, label %if.end77

ixgbe_write_reg.exit.if.end90_crit_edge:          ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.end77:                                         ; preds = %ixgbe_write_reg.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 214748) #5
  %call73.1 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and74.1 = and i32 %call73.1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.1)
  %tobool75.not.1 = icmp eq i32 %and74.1, 0
  br i1 %tobool75.not.1, label %if.end77.if.end90_crit_edge, label %if.end77.1

if.end77.if.end90_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.end77.1:                                       ; preds = %if.end77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748) #5
  %call73.2 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and74.2 = and i32 %call73.2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.2)
  %tobool75.not.2 = icmp eq i32 %and74.2, 0
  br i1 %tobool75.not.2, label %if.end77.1.if.end90_crit_edge, label %if.end77.2

if.end77.1.if.end90_crit_edge:                    ; preds = %if.end77.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.end77.2:                                       ; preds = %if.end77.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748) #5
  %call73.3 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and74.3 = and i32 %call73.3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.3)
  %tobool75.not.3 = icmp eq i32 %and74.3, 0
  br i1 %tobool75.not.3, label %if.end77.2.if.end90_crit_edge, label %if.end77.3

if.end77.2.if.end90_crit_edge:                    ; preds = %if.end77.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.end77.3:                                       ; preds = %if.end77.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748) #5
  %call73.4 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and74.4 = and i32 %call73.4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.4)
  %tobool75.not.4 = icmp eq i32 %and74.4, 0
  br i1 %tobool75.not.4, label %if.end77.3.if.end90_crit_edge, label %if.end77.4

if.end77.3.if.end90_crit_edge:                    ; preds = %if.end77.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.end77.4:                                       ; preds = %if.end77.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748) #5
  %call73.5 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and74.5 = and i32 %call73.5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.5)
  %tobool75.not.5 = icmp eq i32 %and74.5, 0
  br i1 %tobool75.not.5, label %if.end77.4.if.end90_crit_edge, label %if.end77.5

if.end77.4.if.end90_crit_edge:                    ; preds = %if.end77.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.end77.5:                                       ; preds = %if.end77.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748) #5
  %call73.6 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and74.6 = and i32 %call73.6, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.6)
  %tobool75.not.6 = icmp eq i32 %and74.6, 0
  br i1 %tobool75.not.6, label %if.end77.5.if.end90_crit_edge, label %if.end77.6

if.end77.5.if.end90_crit_edge:                    ; preds = %if.end77.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.end77.6:                                       ; preds = %if.end77.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748) #5
  %call73.7 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and74.7 = and i32 %call73.7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.7)
  %tobool75.not.7 = icmp eq i32 %and74.7, 0
  br i1 %tobool75.not.7, label %if.end77.6.if.end90_crit_edge, label %if.end77.7

if.end77.6.if.end90_crit_edge:                    ; preds = %if.end77.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.end77.7:                                       ; preds = %if.end77.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 214748) #5
  %call73.8 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and74.8 = and i32 %call73.8, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.8)
  %tobool75.not.8 = icmp eq i32 %and74.8, 0
  br i1 %tobool75.not.8, label %if.end77.7.if.end90_crit_edge, label %if.end77.8

if.end77.7.if.end90_crit_edge:                    ; preds = %if.end77.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.end77.8:                                       ; preds = %if.end77.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748) #5
  %call73.9 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and74.9 = and i32 %call73.9, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.9)
  %tobool75.not.9 = icmp eq i32 %and74.9, 0
  br i1 %tobool75.not.9, label %if.end77.8.if.end90_crit_edge, label %if.then80

if.end77.8.if.end90_crit_edge:                    ; preds = %if.end77.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.then80:                                        ; preds = %if.end77.8
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %55(i32 noundef 214748) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reset_hw_82598.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_hw_82598, %if.then86)) #5
          to label %if.end90 [label %if.then86], !srcloc !53

if.then86:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reset_hw_82598.__UNIQUE_ID_ddebug361, ptr noundef %59, ptr noundef nonnull @.str.3) #5
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %if.then80, %if.end77.8.if.end90_crit_edge, %if.end77.7.if.end90_crit_edge, %if.end77.6.if.end90_crit_edge, %if.end77.5.if.end90_crit_edge, %if.end77.4.if.end90_crit_edge, %if.end77.3.if.end90_crit_edge, %if.end77.2.if.end90_crit_edge, %if.end77.1.if.end90_crit_edge, %if.end77.if.end90_crit_edge, %ixgbe_write_reg.exit.if.end90_crit_edge
  %status.1 = phi i32 [ -15, %if.then86 ], [ -15, %if.then80 ], [ %status.0, %if.end77.8.if.end90_crit_edge ], [ %status.0, %if.end77.7.if.end90_crit_edge ], [ %status.0, %if.end77.6.if.end90_crit_edge ], [ %status.0, %if.end77.5.if.end90_crit_edge ], [ %status.0, %if.end77.4.if.end90_crit_edge ], [ %status.0, %if.end77.3.if.end90_crit_edge ], [ %status.0, %if.end77.2.if.end90_crit_edge ], [ %status.0, %if.end77.1.if.end90_crit_edge ], [ %status.0, %if.end77.if.end90_crit_edge ], [ %status.0, %ixgbe_write_reg.exit.if.end90_crit_edge ]
  call void @msleep(i32 noundef 50) #5
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %flags, align 2
  %62 = and i8 %61, 1
  %tobool94.not = icmp eq i8 %62, 0
  br i1 %tobool94.not, label %if.end101, label %if.then95

if.then95:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %and99 = and i8 %61, -2
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %and99, ptr %flags, align 2
  br label %mac_reset_top

if.end101:                                        ; preds = %if.end90
  %call102 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 69808) #5
  %64 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i195 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i195, label %if.end101.ixgbe_write_reg.exit197_crit_edge, label %do.body1.i196

if.end101.ixgbe_write_reg.exit197_crit_edge:      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit197

do.body1.i196:                                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  %and103 = and i32 %call102, -2359873
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  call void @arm_heavy_mb() #5
  %66 = call i32 @llvm.bswap.i32(i32 %and103) #5
  %add.ptr.i = getelementptr i8, ptr %65, i32 69808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %66) #5, !srcloc !52
  br label %ixgbe_write_reg.exit197

ixgbe_write_reg.exit197:                          ; preds = %do.body1.i196, %if.end101.ixgbe_write_reg.exit197_crit_edge
  %call104 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17056) #5
  %orig_link_settings_stored = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 19
  %67 = ptrtoint ptr %orig_link_settings_stored to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %orig_link_settings_stored, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp108 = icmp eq i8 %68, 0
  %orig_autoc = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 17
  br i1 %cmp108, label %if.then110, label %if.else

if.then110:                                       ; preds = %ixgbe_write_reg.exit197
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %orig_autoc to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call104, ptr %orig_autoc, align 4
  %70 = ptrtoint ptr %orig_link_settings_stored to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %orig_link_settings_stored, align 4
  br label %if.end122

if.else:                                          ; preds = %ixgbe_write_reg.exit197
  %71 = ptrtoint ptr %orig_autoc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %orig_autoc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call104, i32 %72)
  %cmp116.not = icmp eq i32 %call104, %72
  br i1 %cmp116.not, label %if.else.if.end122_crit_edge, label %if.then118

if.else.if.end122_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122

if.then118:                                       ; preds = %if.else
  %73 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i198 = icmp eq ptr %74, null
  br i1 %tobool.not.i.i198, label %if.then118.if.end122_crit_edge, label %do.body1.i200

if.then118.if.end122_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122

do.body1.i200:                                    ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  call void @arm_heavy_mb() #5
  %75 = call i32 @llvm.bswap.i32(i32 %72) #5
  %add.ptr.i199 = getelementptr i8, ptr %74, i32 17056
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199, i32 %75) #5, !srcloc !52
  br label %if.end122

if.end122:                                        ; preds = %do.body1.i200, %if.then118.if.end122_crit_edge, %if.else.if.end122_crit_edge, %if.then110
  %get_mac_addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 5
  %76 = ptrtoint ptr %get_mac_addr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %get_mac_addr, align 4
  %perm_addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 3
  %call126 = call i32 %77(ptr noundef %hw, ptr noundef %perm_addr) #5
  %init_rx_addrs = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 43
  %78 = ptrtoint ptr %init_rx_addrs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %init_rx_addrs, align 4
  %call129 = call i32 %79(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_status.1.ph)
  %tobool130.not = icmp eq i32 %phy_status.1.ph, 0
  %spec.select = select i1 %tobool130.not, i32 %status.1, i32 %phy_status.1.ph
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %if.then53.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end122 ], [ %call, %entry.cleanup_crit_edge ], [ %call56, %if.then53.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %analog_val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_start_hw_82598(ptr noundef %hw) #0 align 64 {
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
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 69632) #5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %and.i = and i32 %call.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

if.end3.i:                                        ; preds = %if.end.i
  %and4.i = and i32 %call.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %call.i, 4096
  br label %out.i

if.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call zeroext i16 @ixgbe_read_pci_cfg_word(ptr noundef %hw, i32 noundef 200) #5
  %2 = or i16 %call8.i, 5
  tail call void @ixgbe_write_pci_cfg_word(ptr noundef %hw, i32 noundef 200, i16 noundef zeroext %2) #5
  br label %out.i

out.i:                                            ; preds = %if.end7.i, %if.then6.i, %if.end.i.out.i_crit_edge
  %gcr.0.i = phi i32 [ %call.i, %if.end.i.out.i_crit_edge ], [ %call.i, %if.end7.i ], [ %or.i, %if.then6.i ]
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %out.i.cleanup_crit_edge, label %do.body1.i.i

out.i.cleanup_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1.i.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #7
  %and11.i = and i32 %gcr.0.i, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %and11.i) #5
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 69632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #5, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i.i, %out.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_clear_hw_cntrs_generic(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbe_get_media_type_82598(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %1, label %sw.epilog [
    i32 9, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge7
  ]

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.epilog:                                        ; preds = %entry
  %device_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %3 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device_id, align 4
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %4, label %sw.default5 [
    i16 4278, label %sw.epilog.return_crit_edge
    i16 5384, label %sw.epilog.return_crit_edge8
    i16 4294, label %sw.epilog.sw.bb2_crit_edge
    i16 4295, label %sw.epilog.sw.bb2_crit_edge9
    i16 4337, label %sw.epilog.sw.bb2_crit_edge10
    i16 4321, label %sw.epilog.sw.bb2_crit_edge11
    i16 4340, label %sw.epilog.sw.bb2_crit_edge12
    i16 4315, label %sw.epilog.sw.bb2_crit_edge13
    i16 4317, label %sw.epilog.sw.bb3_crit_edge
    i16 4332, label %sw.epilog.sw.bb3_crit_edge14
    i16 4296, label %sw.epilog.sw.bb4_crit_edge
    i16 5387, label %sw.epilog.sw.bb4_crit_edge15
  ]

sw.epilog.sw.bb4_crit_edge15:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

sw.epilog.sw.bb4_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

sw.epilog.sw.bb3_crit_edge14:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

sw.epilog.sw.bb2_crit_edge13:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

sw.epilog.sw.bb2_crit_edge12:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

sw.epilog.sw.bb2_crit_edge11:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

sw.epilog.sw.bb2_crit_edge10:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

sw.epilog.sw.bb2_crit_edge9:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

sw.epilog.sw.bb2_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

sw.epilog.return_crit_edge8:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb2:                                           ; preds = %sw.epilog.sw.bb2_crit_edge, %sw.epilog.sw.bb2_crit_edge9, %sw.epilog.sw.bb2_crit_edge10, %sw.epilog.sw.bb2_crit_edge11, %sw.epilog.sw.bb2_crit_edge12, %sw.epilog.sw.bb2_crit_edge13
  br label %return

sw.bb3:                                           ; preds = %sw.epilog.sw.bb3_crit_edge, %sw.epilog.sw.bb3_crit_edge14
  br label %return

sw.bb4:                                           ; preds = %sw.epilog.sw.bb4_crit_edge, %sw.epilog.sw.bb4_crit_edge15
  br label %return

sw.default5:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %sw.default5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.epilog.return_crit_edge, %sw.epilog.return_crit_edge8, %entry.return_crit_edge, %entry.return_crit_edge7
  %retval.0 = phi i32 [ 0, %sw.default5 ], [ 4, %sw.bb4 ], [ 6, %sw.bb3 ], [ 1, %sw.bb2 ], [ 4, %entry.return_crit_edge ], [ 4, %entry.return_crit_edge7 ], [ 5, %sw.epilog.return_crit_edge ], [ 5, %sw.epilog.return_crit_edge8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_mac_addr_generic(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_stop_adapter_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_bus_info_generic(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_set_lan_id_multi_port_pcie_82598(ptr noundef %hw) #0 align 64 {
entry:
  %pci_gen = alloca i16, align 2
  %pci_ctrl2 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_gen) #5
  %0 = ptrtoint ptr %pci_gen to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %pci_gen, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_ctrl2) #5
  %1 = ptrtoint ptr %pci_ctrl2 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %pci_ctrl2, align 2
  tail call void @ixgbe_set_lan_id_multi_port_pcie(ptr noundef %hw) #5
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %call = call i32 %3(ptr noundef %hw, i16 noundef zeroext 6, ptr noundef nonnull %pci_gen) #5
  %4 = ptrtoint ptr %pci_gen to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pci_gen, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %5, label %if.then [
    i16 0, label %entry.if.end22_crit_edge
    i16 -1, label %entry.if.end22_crit_edge29
  ]

entry.if.end22_crit_edge29:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read, align 4
  %add = add i16 %5, 5
  %call11 = call i32 %8(ptr noundef %hw, i16 noundef zeroext %add, ptr noundef nonnull %pci_ctrl2) #5
  %9 = ptrtoint ptr %pci_ctrl2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pci_ctrl2, align 2
  %11 = and i16 %10, 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %11)
  %12 = icmp eq i16 %11, 2
  br i1 %12, label %if.then21, label %if.then.if.end22_crit_edge

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %func = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 3
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %func, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then.if.end22_crit_edge, %entry.if.end22_crit_edge, %entry.if.end22_crit_edge29
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_ctrl2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_gen) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_analog_reg8_82598(ptr noundef %hw, i32 noundef %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl i32 %reg, 8
  %or = or i32 %shl, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %add.ptr.i = getelementptr i8, ptr %1, i32 18432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #5, !srcloc !52
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 2147480) #5
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 18432) #5
  %conv = trunc i32 %call1 to i8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %val, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_write_analog_reg8_82598(ptr noundef %hw, i32 noundef %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl i32 %reg, 8
  %conv = zext i8 %val to i32
  %or = or i32 %shl, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %add.ptr.i = getelementptr i8, ptr %1, i32 18432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #5, !srcloc !52
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 2147480) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_enable_rx_dma_generic(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_acquire_swfw_sync(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_release_swfw_sync(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prot_autoc_read_generic(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prot_autoc_write_generic(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_mac_link_82598(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17056) #5
  %orig_link_settings_stored.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 19
  %0 = ptrtoint ptr %orig_link_settings_stored.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %orig_link_settings_stored.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %orig_autoc.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 17
  %2 = ptrtoint ptr %orig_autoc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %orig_autoc.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17056) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %autoc.0.i = phi i32 [ %3, %if.then.i ], [ %call.i, %if.else.i ]
  %and.i = lshr i32 %autoc.0.i, 13
  %4 = and i32 %and.i, 7
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %4, label %if.end.i.ixgbe_get_link_capabilities_82598.exit_crit_edge [
    i32 0, label %if.end.i.cleanup.sink.split.i_crit_edge
    i32 1, label %sw.bb2.i
    i32 2, label %if.end.i.cleanup.sink.split.i_crit_edge38
    i32 4, label %if.end.i.sw.bb4.i_crit_edge
    i32 6, label %if.end.i.sw.bb4.i_crit_edge39
  ]

if.end.i.sw.bb4.i_crit_edge39:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

if.end.i.sw.bb4.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

if.end.i.cleanup.sink.split.i_crit_edge38:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i.ixgbe_get_link_capabilities_82598.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_get_link_capabilities_82598.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

sw.bb4.i:                                         ; preds = %if.end.i.sw.bb4.i_crit_edge, %if.end.i.sw.bb4.i_crit_edge39
  %6 = lshr i32 %autoc.0.i, 24
  %7 = and i32 %6, 128
  %and9.i = lshr i32 %autoc.0.i, 25
  %8 = and i32 %and9.i, 32
  %9 = or i32 %8, %7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb4.i, %sw.bb2.i, %if.end.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge38
  %.sink26.i = phi i32 [ 128, %sw.bb2.i ], [ %9, %sw.bb4.i ], [ 32, %if.end.i.cleanup.sink.split.i_crit_edge ], [ 32, %if.end.i.cleanup.sink.split.i_crit_edge38 ]
  br label %ixgbe_get_link_capabilities_82598.exit

ixgbe_get_link_capabilities_82598.exit:           ; preds = %cleanup.sink.split.i, %if.end.i.ixgbe_get_link_capabilities_82598.exit_crit_edge
  %link_capabilities.0 = phi i32 [ 0, %if.end.i.ixgbe_get_link_capabilities_82598.exit_crit_edge ], [ %.sink26.i, %cleanup.sink.split.i ]
  %and2 = and i32 %link_capabilities.0, %speed
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp = icmp eq i32 %and2, 0
  br i1 %cmp, label %ixgbe_get_link_capabilities_82598.exit.cleanup_crit_edge, label %if.else

ixgbe_get_link_capabilities_82598.exit.cleanup_crit_edge: ; preds = %ixgbe_get_link_capabilities_82598.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %ixgbe_get_link_capabilities_82598.exit
  %10 = trunc i32 %call to i16
  %trunc = and i16 %10, -8192
  %11 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %trunc, label %if.else.if.end18_crit_edge [
    i16 -32768, label %if.else.if.then5_crit_edge
    i16 -16384, label %if.else.if.then5_crit_edge40
  ]

if.else.if.then5_crit_edge40:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

if.else.if.then5_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then5:                                         ; preds = %if.else.if.then5_crit_edge, %if.else.if.then5_crit_edge40
  %and6 = and i32 %call, 1073741823
  %and7 = shl i32 %and2, 24
  %12 = and i32 %and7, -2147483648
  %13 = or i32 %12, %and6
  %and9 = shl i32 %and2, 25
  %14 = and i32 %and9, 1073741824
  %15 = or i32 %13, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %call)
  %cmp14.not = icmp eq i32 %15, %call
  br i1 %cmp14.not, label %if.then5.if.end18_crit_edge, label %if.then15

if.then5.if.end18_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then15:                                        ; preds = %if.then5
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.then15.if.end18_crit_edge, label %do.body1.i

if.then15.if.end18_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.body1.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %add.ptr.i = getelementptr i8, ptr %17, i32 17056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #5, !srcloc !52
  br label %if.end18

if.end18:                                         ; preds = %do.body1.i, %if.then15.if.end18_crit_edge, %if.then5.if.end18_crit_edge, %if.else.if.end18_crit_edge
  %call20 = tail call fastcc i32 @ixgbe_start_mac_link_82598(ptr noundef %hw, i1 noundef zeroext %autoneg_wait_to_complete)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %ixgbe_get_link_capabilities_82598.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end18 ], [ -8, %ixgbe_get_link_capabilities_82598.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_check_mac_link_82598(ptr noundef %hw, ptr nocapture noundef writeonly %speed, ptr nocapture noundef %link_up, i1 noundef zeroext %link_up_wait_to_complete) #0 align 64 {
entry:
  %an_reg.i = alloca i16, align 2
  %link_reg = alloca i16, align 2
  %adapt_comp_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %link_reg) #5
  %0 = ptrtoint ptr %link_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %link_reg, align 2, !annotation !49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %adapt_comp_reg) #5
  %1 = ptrtoint ptr %adapt_comp_reg to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %adapt_comp_reg, align 2, !annotation !49
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp = icmp eq i32 %3, 12
  br i1 %cmp, label %if.then, label %entry.if.end42_crit_edge

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then:                                          ; preds = %entry
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %4 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg, align 4
  %call = call i32 %5(ptr noundef %hw, i32 noundef 51103, i32 noundef 1, ptr noundef nonnull %link_reg) #5
  %6 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg, align 4
  %call5 = call i32 %7(ptr noundef %hw, i32 noundef 51103, i32 noundef 1, ptr noundef nonnull %link_reg) #5
  %8 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg, align 4
  %call9 = call i32 %9(ptr noundef %hw, i32 noundef 49164, i32 noundef 1, ptr noundef nonnull %adapt_comp_reg) #5
  br i1 %link_up_wait_to_complete, label %if.then.for.body_crit_edge, label %if.else26

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %if.else.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.0125 = phi i32 [ %inc, %if.else.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %10 = ptrtoint ptr %link_reg to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %link_reg, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool12.not = icmp eq i16 %12, 0
  br i1 %tobool12.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %13 = ptrtoint ptr %adapt_comp_reg to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %adapt_comp_reg, align 2
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp15 = icmp eq i16 %15, 0
  br i1 %cmp15, label %if.then17, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %link_up, align 1
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %17 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %link_up, align 1
  call void @msleep(i32 noundef 100) #5
  %18 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg, align 4
  %call21 = call i32 %19(ptr noundef %hw, i32 noundef 51103, i32 noundef 1, ptr noundef nonnull %link_reg) #5
  %20 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_reg, align 4
  %call25 = call i32 %21(ptr noundef %hw, i32 noundef 49164, i32 noundef 1, ptr noundef nonnull %adapt_comp_reg) #5
  %inc = add nuw nsw i32 %i.0125, 1
  %exitcond.not = icmp eq i32 %inc, 90
  br i1 %exitcond.not, label %if.end38, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.else26:                                        ; preds = %if.then
  %22 = ptrtoint ptr %link_reg to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %link_reg, align 2
  %24 = and i16 %23, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool29.not = icmp eq i16 %24, 0
  br i1 %tobool29.not, label %if.else26.if.end38.thread118_crit_edge, label %land.lhs.true30

if.else26.if.end38.thread118_crit_edge:           ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.thread118

land.lhs.true30:                                  ; preds = %if.else26
  %25 = ptrtoint ptr %adapt_comp_reg to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %adapt_comp_reg, align 2
  %27 = and i16 %26, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp33 = icmp eq i16 %27, 0
  br i1 %cmp33, label %if.end42.thread, label %land.lhs.true30.if.end38.thread118_crit_edge

land.lhs.true30.if.end38.thread118_crit_edge:     ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.thread118

if.end42.thread:                                  ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %link_up, align 1
  %call43122 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17060) #5
  br label %if.else59

if.end38.thread118:                               ; preds = %land.lhs.true30.if.end38.thread118_crit_edge, %if.else26.if.end38.thread118_crit_edge
  %29 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %link_up, align 1
  br label %cleanup

if.end38:                                         ; preds = %if.else
  %30 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %30)
  %.pr = load i8, ptr %link_up, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool39.not = icmp eq i8 %.pr, 0
  br i1 %tobool39.not, label %if.end38.cleanup_crit_edge, label %if.end38.if.end42_crit_edge

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %if.end38.if.end42_crit_edge, %if.then17, %entry.if.end42_crit_edge
  %call43 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17060) #5
  br i1 %link_up_wait_to_complete, label %if.end42.for.body49_crit_edge, label %if.end42.if.else59_crit_edge

if.end42.if.else59_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else59

if.end42.for.body49_crit_edge:                    ; preds = %if.end42
  br label %for.body49

for.body49:                                       ; preds = %if.else53.for.body49_crit_edge, %if.end42.for.body49_crit_edge
  %i.1127 = phi i32 [ %inc57, %if.else53.for.body49_crit_edge ], [ 0, %if.end42.for.body49_crit_edge ]
  %links_reg.0126 = phi i32 [ %call55, %if.else53.for.body49_crit_edge ], [ %call43, %if.end42.for.body49_crit_edge ]
  %and50 = and i32 %links_reg.0126, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.else53, label %for.body49.if.end65.sink.split_crit_edge

for.body49.if.end65.sink.split_crit_edge:         ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65.sink.split

if.else53:                                        ; preds = %for.body49
  %31 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %link_up, align 1
  call void @msleep(i32 noundef 100) #5
  %call55 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17060) #5
  %inc57 = add nuw nsw i32 %i.1127, 1
  %exitcond129.not = icmp eq i32 %inc57, 90
  br i1 %exitcond129.not, label %if.else53.if.end65_crit_edge, label %if.else53.for.body49_crit_edge

if.else53.for.body49_crit_edge:                   ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body49

if.else53.if.end65_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.else59:                                        ; preds = %if.end42.if.else59_crit_edge, %if.end42.thread
  %call43123 = phi i32 [ %call43122, %if.end42.thread ], [ %call43, %if.end42.if.else59_crit_edge ]
  %and60 = lshr i32 %call43123, 30
  %32 = trunc i32 %and60 to i8
  %33 = and i8 %32, 1
  br label %if.end65.sink.split

if.end65.sink.split:                              ; preds = %if.else59, %for.body49.if.end65.sink.split_crit_edge
  %.sink = phi i8 [ %33, %if.else59 ], [ 1, %for.body49.if.end65.sink.split_crit_edge ]
  %links_reg.1.ph = phi i32 [ %call43123, %if.else59 ], [ %links_reg.0126, %for.body49.if.end65.sink.split_crit_edge ]
  %34 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.sink, ptr %link_up, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.end65.sink.split, %if.else53.if.end65_crit_edge
  %links_reg.1 = phi i32 [ %links_reg.1.ph, %if.end65.sink.split ], [ %call55, %if.else53.if.end65_crit_edge ]
  %and66 = and i32 %links_reg.1, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %. = select i1 %tobool67.not, i32 32, i32 128
  %35 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %., ptr %speed, align 4
  %device_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %36 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %device_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5387, i16 %37)
  %cmp72 = icmp eq i16 %37, 5387
  br i1 %cmp72, label %land.lhs.true74, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true74:                                  ; preds = %if.end65
  %38 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %link_up, align 1, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool75.not = icmp eq i8 %39, 0
  br i1 %tobool75.not, label %land.lhs.true74.cleanup_crit_edge, label %for.cond.preheader.i

land.lhs.true74.cleanup_crit_edge:                ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.i:                             ; preds = %land.lhs.true74
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %an_reg.i) #5
  %40 = ptrtoint ptr %an_reg.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -1, ptr %an_reg.i, align 2, !annotation !49
  %read_reg.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %for.cond.preheader.i
  %timeout.032.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %if.end9.i.for.body.i_crit_edge ]
  %41 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %42(ptr noundef %hw, i32 noundef 1, i32 noundef 7, ptr noundef nonnull %an_reg.i) #5
  %43 = ptrtoint ptr %an_reg.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %an_reg.i, align 2
  %45 = and i16 %44, 36
  call void @__sanitizer_cov_trace_const_cmp2(i16 36, i16 %45)
  %.not.i = icmp eq i16 %45, 36
  br i1 %.not.i, label %ixgbe_validate_link_ready.exit.thread, label %if.end9.i

ixgbe_validate_link_ready.exit.thread:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %an_reg.i) #5
  br label %cleanup

if.end9.i:                                        ; preds = %for.body.i
  call void @msleep(i32 noundef 100) #5
  %inc.i = add nuw nsw i32 %timeout.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %do.body13.i, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.body13.i:                                      ; preds = %if.end9.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_validate_link_ready.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_check_mac_link_82598, %if.then18.i)) #5
          to label %if.then81 [label %if.then18.i], !srcloc !53

if.then18.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  %back.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %46 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %back.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %netdev.i, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_validate_link_ready.__UNIQUE_ID_ddebug360, ptr noundef %49, ptr noundef nonnull @.str.7) #5
  br label %if.then81

if.then81:                                        ; preds = %if.then18.i, %do.body13.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %an_reg.i) #5
  %50 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %link_up, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %ixgbe_validate_link_ready.exit.thread, %land.lhs.true74.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end38.thread118
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %adapt_comp_reg) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %link_reg) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_get_link_capabilities_82598(ptr noundef %hw, ptr nocapture noundef %speed, ptr nocapture noundef writeonly %autoneg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %orig_link_settings_stored = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 19
  %0 = ptrtoint ptr %orig_link_settings_stored to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %orig_link_settings_stored, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %orig_autoc = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 17
  %2 = ptrtoint ptr %orig_autoc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %orig_autoc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17056) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %autoc.0 = phi i32 [ %3, %if.then ], [ %call, %if.else ]
  %and = lshr i32 %autoc.0, 13
  %4 = and i32 %and, 7
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.cleanup.sink.split_crit_edge
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 4, label %if.end.sw.bb4_crit_edge
    i32 6, label %if.end.sw.bb4_crit_edge27
  ]

if.end.sw.bb4_crit_edge27:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge27
  %6 = lshr i32 %autoc.0, 24
  %7 = and i32 %6, 128
  %and9 = lshr i32 %autoc.0, 25
  %8 = and i32 %and9, 32
  %9 = or i32 %8, %7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %if.end.cleanup.sink.split_crit_edge
  %.sink26 = phi i32 [ 128, %sw.bb2 ], [ 32, %sw.bb3 ], [ %9, %sw.bb4 ], [ 32, %if.end.cleanup.sink.split_crit_edge ]
  %.sink = phi i8 [ 0, %sw.bb2 ], [ 1, %sw.bb3 ], [ 1, %sw.bb4 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink26, ptr %speed, align 4
  %11 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %autoneg, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -8, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_set_rxpba_82598(ptr noundef %hw, i32 noundef %num_pb, i32 noundef %headroom, i32 noundef %strategy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pb)
  %tobool.not = icmp eq i32 %num_pb, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %strategy)
  %cond = icmp eq i32 %strategy, 1
  br i1 %cond, label %for.body.preheader, label %if.end.for.body8.lr.ph_crit_edge

if.end.for.body8.lr.ph_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.lr.ph

for.body.preheader:                               ; preds = %if.end
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %for.body.preheader.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

for.body.preheader.ixgbe_write_reg.exit_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i = getelementptr i8, ptr %1, i32 15360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 4194560) #5, !srcloc !52
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %for.body.preheader.ixgbe_write_reg.exit_crit_edge
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.1 = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.1, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit.1_crit_edge, label %do.body1.i.1

ixgbe_write_reg.exit.ixgbe_write_reg.exit.1_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit.1

do.body1.i.1:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.1 = getelementptr i8, ptr %3, i32 15364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 4194560) #5, !srcloc !52
  br label %ixgbe_write_reg.exit.1

ixgbe_write_reg.exit.1:                           ; preds = %do.body1.i.1, %ixgbe_write_reg.exit.ixgbe_write_reg.exit.1_crit_edge
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.2 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.2, label %ixgbe_write_reg.exit.1.ixgbe_write_reg.exit.2_crit_edge, label %do.body1.i.2

ixgbe_write_reg.exit.1.ixgbe_write_reg.exit.2_crit_edge: ; preds = %ixgbe_write_reg.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit.2

do.body1.i.2:                                     ; preds = %ixgbe_write_reg.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.2 = getelementptr i8, ptr %5, i32 15368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 4194560) #5, !srcloc !52
  br label %ixgbe_write_reg.exit.2

ixgbe_write_reg.exit.2:                           ; preds = %do.body1.i.2, %ixgbe_write_reg.exit.1.ixgbe_write_reg.exit.2_crit_edge
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.3 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.3, label %ixgbe_write_reg.exit.2.for.body8.lr.ph_crit_edge, label %do.body1.i.3

ixgbe_write_reg.exit.2.for.body8.lr.ph_crit_edge: ; preds = %ixgbe_write_reg.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.lr.ph

do.body1.i.3:                                     ; preds = %ixgbe_write_reg.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.3 = getelementptr i8, ptr %7, i32 15372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 4194560) #5, !srcloc !52
  br label %for.body8.lr.ph

for.body8.lr.ph:                                  ; preds = %do.body1.i.3, %ixgbe_write_reg.exit.2.for.body8.lr.ph_crit_edge, %if.end.for.body8.lr.ph_crit_edge
  %rxpktsize.0 = phi i32 [ 65536, %if.end.for.body8.lr.ph_crit_edge ], [ 49152, %do.body1.i.3 ], [ 49152, %ixgbe_write_reg.exit.2.for.body8.lr.ph_crit_edge ]
  %i.1 = phi i32 [ 0, %if.end.for.body8.lr.ph_crit_edge ], [ 4, %do.body1.i.3 ], [ 4, %ixgbe_write_reg.exit.2.for.body8.lr.ph_crit_edge ]
  %8 = tail call i32 @llvm.bswap.i32(i32 %rxpktsize.0) #5
  br label %for.body8

for.cond15.preheader:                             ; preds = %ixgbe_write_reg.exit41
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i42 = icmp eq ptr %10, null
  br i1 %tobool.not.i.i42, label %for.cond15.preheader.ixgbe_write_reg.exit45_crit_edge, label %do.body1.i44

for.cond15.preheader.ixgbe_write_reg.exit45_crit_edge: ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit45

for.body8:                                        ; preds = %ixgbe_write_reg.exit41.for.body8_crit_edge, %for.body8.lr.ph
  %indvars.iv = phi i32 [ %i.1, %for.body8.lr.ph ], [ %indvars.iv.next, %ixgbe_write_reg.exit41.for.body8_crit_edge ]
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i38 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i38, label %for.body8.ixgbe_write_reg.exit41_crit_edge, label %do.body1.i40

for.body8.ixgbe_write_reg.exit41_crit_edge:       ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit41

do.body1.i40:                                     ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  %mul10 = shl nuw nsw i32 %indvars.iv, 2
  %add11 = or i32 %mul10, 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i39 = getelementptr i8, ptr %12, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %8) #5, !srcloc !52
  br label %ixgbe_write_reg.exit41

ixgbe_write_reg.exit41:                           ; preds = %do.body1.i40, %for.body8.ixgbe_write_reg.exit41_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.cond15.preheader, label %ixgbe_write_reg.exit41.for.body8_crit_edge

ixgbe_write_reg.exit41.for.body8_crit_edge:       ; preds = %ixgbe_write_reg.exit41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8

do.body1.i44:                                     ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i43 = getelementptr i8, ptr %10, i32 52224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 10485760) #5, !srcloc !52
  br label %ixgbe_write_reg.exit45

ixgbe_write_reg.exit45:                           ; preds = %do.body1.i44, %for.cond15.preheader.ixgbe_write_reg.exit45_crit_edge
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i42.1 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i42.1, label %ixgbe_write_reg.exit45.ixgbe_write_reg.exit45.1_crit_edge, label %do.body1.i44.1

ixgbe_write_reg.exit45.ixgbe_write_reg.exit45.1_crit_edge: ; preds = %ixgbe_write_reg.exit45
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit45.1

do.body1.i44.1:                                   ; preds = %ixgbe_write_reg.exit45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i43.1 = getelementptr i8, ptr %14, i32 52228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.1, i32 10485760) #5, !srcloc !52
  br label %ixgbe_write_reg.exit45.1

ixgbe_write_reg.exit45.1:                         ; preds = %do.body1.i44.1, %ixgbe_write_reg.exit45.ixgbe_write_reg.exit45.1_crit_edge
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i42.2 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i42.2, label %ixgbe_write_reg.exit45.1.ixgbe_write_reg.exit45.2_crit_edge, label %do.body1.i44.2

ixgbe_write_reg.exit45.1.ixgbe_write_reg.exit45.2_crit_edge: ; preds = %ixgbe_write_reg.exit45.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit45.2

do.body1.i44.2:                                   ; preds = %ixgbe_write_reg.exit45.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i43.2 = getelementptr i8, ptr %16, i32 52232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.2, i32 10485760) #5, !srcloc !52
  br label %ixgbe_write_reg.exit45.2

ixgbe_write_reg.exit45.2:                         ; preds = %do.body1.i44.2, %ixgbe_write_reg.exit45.1.ixgbe_write_reg.exit45.2_crit_edge
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i42.3 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i42.3, label %ixgbe_write_reg.exit45.2.ixgbe_write_reg.exit45.3_crit_edge, label %do.body1.i44.3

ixgbe_write_reg.exit45.2.ixgbe_write_reg.exit45.3_crit_edge: ; preds = %ixgbe_write_reg.exit45.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit45.3

do.body1.i44.3:                                   ; preds = %ixgbe_write_reg.exit45.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i43.3 = getelementptr i8, ptr %18, i32 52236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.3, i32 10485760) #5, !srcloc !52
  br label %ixgbe_write_reg.exit45.3

ixgbe_write_reg.exit45.3:                         ; preds = %do.body1.i44.3, %ixgbe_write_reg.exit45.2.ixgbe_write_reg.exit45.3_crit_edge
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i42.4 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i42.4, label %ixgbe_write_reg.exit45.3.ixgbe_write_reg.exit45.4_crit_edge, label %do.body1.i44.4

ixgbe_write_reg.exit45.3.ixgbe_write_reg.exit45.4_crit_edge: ; preds = %ixgbe_write_reg.exit45.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit45.4

do.body1.i44.4:                                   ; preds = %ixgbe_write_reg.exit45.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i43.4 = getelementptr i8, ptr %20, i32 52240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.4, i32 10485760) #5, !srcloc !52
  br label %ixgbe_write_reg.exit45.4

ixgbe_write_reg.exit45.4:                         ; preds = %do.body1.i44.4, %ixgbe_write_reg.exit45.3.ixgbe_write_reg.exit45.4_crit_edge
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i42.5 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i42.5, label %ixgbe_write_reg.exit45.4.ixgbe_write_reg.exit45.5_crit_edge, label %do.body1.i44.5

ixgbe_write_reg.exit45.4.ixgbe_write_reg.exit45.5_crit_edge: ; preds = %ixgbe_write_reg.exit45.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit45.5

do.body1.i44.5:                                   ; preds = %ixgbe_write_reg.exit45.4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i43.5 = getelementptr i8, ptr %22, i32 52244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.5, i32 10485760) #5, !srcloc !52
  br label %ixgbe_write_reg.exit45.5

ixgbe_write_reg.exit45.5:                         ; preds = %do.body1.i44.5, %ixgbe_write_reg.exit45.4.ixgbe_write_reg.exit45.5_crit_edge
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i42.6 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i42.6, label %ixgbe_write_reg.exit45.5.ixgbe_write_reg.exit45.6_crit_edge, label %do.body1.i44.6

ixgbe_write_reg.exit45.5.ixgbe_write_reg.exit45.6_crit_edge: ; preds = %ixgbe_write_reg.exit45.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit45.6

do.body1.i44.6:                                   ; preds = %ixgbe_write_reg.exit45.5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i43.6 = getelementptr i8, ptr %24, i32 52248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.6, i32 10485760) #5, !srcloc !52
  br label %ixgbe_write_reg.exit45.6

ixgbe_write_reg.exit45.6:                         ; preds = %do.body1.i44.6, %ixgbe_write_reg.exit45.5.ixgbe_write_reg.exit45.6_crit_edge
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i42.7 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i42.7, label %ixgbe_write_reg.exit45.6.cleanup_crit_edge, label %do.body1.i44.7

ixgbe_write_reg.exit45.6.cleanup_crit_edge:       ; preds = %ixgbe_write_reg.exit45.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1.i44.7:                                   ; preds = %ixgbe_write_reg.exit45.6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i43.7 = getelementptr i8, ptr %26, i32 52252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.7, i32 10485760) #5, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i44.7, %ixgbe_write_reg.exit45.6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_set_vmdq_82598(ptr noundef %hw, i32 noundef %rar, i32 noundef %vmdq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rar_entries = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 12
  %0 = ptrtoint ptr %num_rar_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rar_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rar)
  %cmp.not = icmp ugt i32 %1, %rar
  br i1 %cmp.not, label %if.end7, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_set_vmdq_82598.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_set_vmdq_82598, %if.then4)) #5
          to label %cleanup [label %if.then4], !srcloc !53

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_set_vmdq_82598.__UNIQUE_ID_ddebug362, ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %rar) #5
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %rar)
  %cmp8 = icmp ult i32 %rar, 16
  %mul = shl i32 %rar, 3
  %cond.v = select i1 %cmp8, i32 21508, i32 41476
  %cond = add i32 %cond.v, %mul
  %call11 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %cond) #5
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end7.cleanup_crit_edge, label %do.body1.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %call11, -3932161
  %shl = shl i32 %vmdq, 18
  %and12 = and i32 %shl, 3932160
  %or = or i32 %and, %and12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %add.ptr.i = getelementptr i8, ptr %7, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #5, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i, %if.end7.cleanup_crit_edge, %if.then4, %do.body1
  %retval.0 = phi i32 [ -32, %if.then4 ], [ -32, %do.body1 ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %do.body1.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_clear_vmdq_82598(ptr noundef %hw, i32 noundef %rar, i32 noundef %vmdq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rar_entries = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 12
  %0 = ptrtoint ptr %num_rar_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rar_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rar)
  %cmp.not = icmp ugt i32 %1, %rar
  br i1 %cmp.not, label %if.end7, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_clear_vmdq_82598.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_clear_vmdq_82598, %if.then4)) #5
          to label %cleanup [label %if.then4], !srcloc !53

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_clear_vmdq_82598.__UNIQUE_ID_ddebug363, ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %rar) #5
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %rar)
  %cmp8 = icmp ult i32 %rar, 16
  %mul = shl i32 %rar, 3
  %cond.v = select i1 %cmp8, i32 21508, i32 41476
  %cond = add i32 %cond.v, %mul
  %call11 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %cond) #5
  %and = and i32 %call11, 3932160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end7.cleanup_crit_edge, label %if.then13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13:                                        ; preds = %if.end7
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then13.cleanup_crit_edge, label %do.body1.i

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %and14 = and i32 %call11, -3932161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %and14) #5
  %add.ptr.i = getelementptr i8, ptr %7, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #5, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i, %if.then13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then4, %do.body1
  %retval.0 = phi i32 [ -32, %if.then4 ], [ 0, %if.end7.cleanup_crit_edge ], [ -32, %do.body1 ], [ 0, %if.then13.cleanup_crit_edge ], [ 0, %do.body1.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_init_rx_addrs_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_update_mc_addr_list_generic(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_enable_mc_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_disable_mc_generic(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_clear_vfta_82598(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vft_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %vft_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vft_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp33.not = icmp eq i32 %1, 0
  br i1 %cmp33.not, label %entry.for.inc16.3_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.inc16.3_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc16.3

for.cond1.preheader:                              ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp736.not = icmp eq i32 %5, 0
  br i1 %cmp736.not, label %for.cond1.preheader.for.inc16.1thread-pre-split_crit_edge, label %for.cond1.preheader.for.body8_crit_edge

for.cond1.preheader.for.body8_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body8

for.cond1.preheader.for.inc16.1thread-pre-split_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc16.1thread-pre-split

for.body:                                         ; preds = %ixgbe_write_reg.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %offset.034 = phi i32 [ %inc, %ixgbe_write_reg.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %for.body.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

for.body.ixgbe_write_reg.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i32 %offset.034, 2
  %add = add i32 %mul, 40960
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !52
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %for.body.ixgbe_write_reg.exit_crit_edge
  %inc = add nuw i32 %offset.034, 1
  %4 = ptrtoint ptr %vft_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vft_size, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %ixgbe_write_reg.exit.for.body_crit_edge, label %for.cond1.preheader

ixgbe_write_reg.exit.for.body_crit_edge:          ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body8:                                        ; preds = %ixgbe_write_reg.exit32.for.body8_crit_edge, %for.cond1.preheader.for.body8_crit_edge
  %offset.137 = phi i32 [ %inc14, %ixgbe_write_reg.exit32.for.body8_crit_edge ], [ 0, %for.cond1.preheader.for.body8_crit_edge ]
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i29 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i29, label %for.body8.ixgbe_write_reg.exit32_crit_edge, label %do.body1.i31

for.body8.ixgbe_write_reg.exit32_crit_edge:       ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit32

do.body1.i31:                                     ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  %mul11 = shl i32 %offset.137, 2
  %add12 = add i32 %mul11, 41472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i30 = getelementptr i8, ptr %7, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 0) #5, !srcloc !52
  br label %ixgbe_write_reg.exit32

ixgbe_write_reg.exit32:                           ; preds = %do.body1.i31, %for.body8.ixgbe_write_reg.exit32_crit_edge
  %inc14 = add nuw i32 %offset.137, 1
  %8 = ptrtoint ptr %vft_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vft_size, align 4
  %cmp7 = icmp ult i32 %inc14, %9
  br i1 %cmp7, label %ixgbe_write_reg.exit32.for.body8_crit_edge, label %for.inc16.loopexit

ixgbe_write_reg.exit32.for.body8_crit_edge:       ; preds = %ixgbe_write_reg.exit32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8

for.inc16.loopexit:                               ; preds = %ixgbe_write_reg.exit32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %phi.cmp = icmp eq i32 %9, 0
  br i1 %phi.cmp, label %for.inc16.loopexit.for.inc16.1thread-pre-split_crit_edge, label %for.inc16.loopexit.for.body8.1_crit_edge

for.inc16.loopexit.for.body8.1_crit_edge:         ; preds = %for.inc16.loopexit
  br label %for.body8.1

for.inc16.loopexit.for.inc16.1thread-pre-split_crit_edge: ; preds = %for.inc16.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc16.1thread-pre-split

for.body8.1:                                      ; preds = %ixgbe_write_reg.exit32.1.for.body8.1_crit_edge, %for.inc16.loopexit.for.body8.1_crit_edge
  %offset.137.1 = phi i32 [ %inc14.1, %ixgbe_write_reg.exit32.1.for.body8.1_crit_edge ], [ 0, %for.inc16.loopexit.for.body8.1_crit_edge ]
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i29.1 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i29.1, label %for.body8.1.ixgbe_write_reg.exit32.1_crit_edge, label %do.body1.i31.1

for.body8.1.ixgbe_write_reg.exit32.1_crit_edge:   ; preds = %for.body8.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit32.1

do.body1.i31.1:                                   ; preds = %for.body8.1
  call void @__sanitizer_cov_trace_pc() #7
  %mul11.1 = shl i32 %offset.137.1, 2
  %add12.1 = add i32 %mul11.1, 41984
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i30.1 = getelementptr i8, ptr %11, i32 %add12.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.1, i32 0) #5, !srcloc !52
  br label %ixgbe_write_reg.exit32.1

ixgbe_write_reg.exit32.1:                         ; preds = %do.body1.i31.1, %for.body8.1.ixgbe_write_reg.exit32.1_crit_edge
  %inc14.1 = add nuw i32 %offset.137.1, 1
  %12 = ptrtoint ptr %vft_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vft_size, align 4
  %cmp7.1 = icmp ult i32 %inc14.1, %13
  br i1 %cmp7.1, label %ixgbe_write_reg.exit32.1.for.body8.1_crit_edge, label %ixgbe_write_reg.exit32.1.for.inc16.1_crit_edge

ixgbe_write_reg.exit32.1.for.inc16.1_crit_edge:   ; preds = %ixgbe_write_reg.exit32.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc16.1

ixgbe_write_reg.exit32.1.for.body8.1_crit_edge:   ; preds = %ixgbe_write_reg.exit32.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.1

for.inc16.1thread-pre-split:                      ; preds = %for.inc16.loopexit.for.inc16.1thread-pre-split_crit_edge, %for.cond1.preheader.for.inc16.1thread-pre-split_crit_edge
  %14 = ptrtoint ptr %vft_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %vft_size, align 4
  br label %for.inc16.1

for.inc16.1:                                      ; preds = %for.inc16.1thread-pre-split, %ixgbe_write_reg.exit32.1.for.inc16.1_crit_edge
  %15 = phi i32 [ %.pr, %for.inc16.1thread-pre-split ], [ %13, %ixgbe_write_reg.exit32.1.for.inc16.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp736.not.2 = icmp eq i32 %15, 0
  br i1 %cmp736.not.2, label %for.inc16.2thread-pre-split, label %for.inc16.1.for.body8.2_crit_edge

for.inc16.1.for.body8.2_crit_edge:                ; preds = %for.inc16.1
  br label %for.body8.2

for.body8.2:                                      ; preds = %ixgbe_write_reg.exit32.2.for.body8.2_crit_edge, %for.inc16.1.for.body8.2_crit_edge
  %offset.137.2 = phi i32 [ %inc14.2, %ixgbe_write_reg.exit32.2.for.body8.2_crit_edge ], [ 0, %for.inc16.1.for.body8.2_crit_edge ]
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i29.2 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i29.2, label %for.body8.2.ixgbe_write_reg.exit32.2_crit_edge, label %do.body1.i31.2

for.body8.2.ixgbe_write_reg.exit32.2_crit_edge:   ; preds = %for.body8.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit32.2

do.body1.i31.2:                                   ; preds = %for.body8.2
  call void @__sanitizer_cov_trace_pc() #7
  %mul11.2 = shl i32 %offset.137.2, 2
  %add12.2 = add i32 %mul11.2, 42496
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i30.2 = getelementptr i8, ptr %17, i32 %add12.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.2, i32 0) #5, !srcloc !52
  br label %ixgbe_write_reg.exit32.2

ixgbe_write_reg.exit32.2:                         ; preds = %do.body1.i31.2, %for.body8.2.ixgbe_write_reg.exit32.2_crit_edge
  %inc14.2 = add nuw i32 %offset.137.2, 1
  %18 = ptrtoint ptr %vft_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vft_size, align 4
  %cmp7.2 = icmp ult i32 %inc14.2, %19
  br i1 %cmp7.2, label %ixgbe_write_reg.exit32.2.for.body8.2_crit_edge, label %ixgbe_write_reg.exit32.2.for.inc16.2_crit_edge

ixgbe_write_reg.exit32.2.for.inc16.2_crit_edge:   ; preds = %ixgbe_write_reg.exit32.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc16.2

ixgbe_write_reg.exit32.2.for.body8.2_crit_edge:   ; preds = %ixgbe_write_reg.exit32.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.2

for.inc16.2thread-pre-split:                      ; preds = %for.inc16.1
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %vft_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr44 = load i32, ptr %vft_size, align 4
  br label %for.inc16.2

for.inc16.2:                                      ; preds = %for.inc16.2thread-pre-split, %ixgbe_write_reg.exit32.2.for.inc16.2_crit_edge
  %21 = phi i32 [ %.pr44, %for.inc16.2thread-pre-split ], [ %19, %ixgbe_write_reg.exit32.2.for.inc16.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp736.not.3 = icmp eq i32 %21, 0
  br i1 %cmp736.not.3, label %for.inc16.2.for.inc16.3_crit_edge, label %for.inc16.2.for.body8.3_crit_edge

for.inc16.2.for.body8.3_crit_edge:                ; preds = %for.inc16.2
  br label %for.body8.3

for.inc16.2.for.inc16.3_crit_edge:                ; preds = %for.inc16.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc16.3

for.body8.3:                                      ; preds = %ixgbe_write_reg.exit32.3.for.body8.3_crit_edge, %for.inc16.2.for.body8.3_crit_edge
  %offset.137.3 = phi i32 [ %inc14.3, %ixgbe_write_reg.exit32.3.for.body8.3_crit_edge ], [ 0, %for.inc16.2.for.body8.3_crit_edge ]
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i29.3 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i29.3, label %for.body8.3.ixgbe_write_reg.exit32.3_crit_edge, label %do.body1.i31.3

for.body8.3.ixgbe_write_reg.exit32.3_crit_edge:   ; preds = %for.body8.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit32.3

do.body1.i31.3:                                   ; preds = %for.body8.3
  call void @__sanitizer_cov_trace_pc() #7
  %mul11.3 = shl i32 %offset.137.3, 2
  %add12.3 = add i32 %mul11.3, 43008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %add.ptr.i30.3 = getelementptr i8, ptr %23, i32 %add12.3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.3, i32 0) #5, !srcloc !52
  br label %ixgbe_write_reg.exit32.3

ixgbe_write_reg.exit32.3:                         ; preds = %do.body1.i31.3, %for.body8.3.ixgbe_write_reg.exit32.3_crit_edge
  %inc14.3 = add nuw i32 %offset.137.3, 1
  %24 = ptrtoint ptr %vft_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vft_size, align 4
  %cmp7.3 = icmp ult i32 %inc14.3, %25
  br i1 %cmp7.3, label %ixgbe_write_reg.exit32.3.for.body8.3_crit_edge, label %ixgbe_write_reg.exit32.3.for.inc16.3_crit_edge

ixgbe_write_reg.exit32.3.for.inc16.3_crit_edge:   ; preds = %ixgbe_write_reg.exit32.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc16.3

ixgbe_write_reg.exit32.3.for.body8.3_crit_edge:   ; preds = %ixgbe_write_reg.exit32.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.3

for.inc16.3:                                      ; preds = %ixgbe_write_reg.exit32.3.for.inc16.3_crit_edge, %for.inc16.2.for.inc16.3_crit_edge, %entry.for.inc16.3_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_set_vfta_82598(ptr noundef %hw, i32 noundef %vlan, i32 noundef %vind, i1 noundef zeroext %vlan_on, i1 noundef zeroext %vlvf_bypass) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %vlan)
  %cmp = icmp ugt i32 %vlan, 4095
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = shl nuw nsw i32 %vlan, 6
  %mul = and i32 %0, 1536
  %add = add nuw nsw i32 %mul, 41472
  %1 = lshr i32 %vlan, 3
  %mul5 = and i32 %1, 508
  %add6 = or i32 %add, %mul5
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add6) #5
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end.ixgbe_write_reg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and4 = shl nuw nsw i32 %vlan, 2
  %shl = and i32 %and4, 28
  %shl7 = shl nuw i32 15, %shl
  %neg = xor i32 %shl7, -1
  %and8 = and i32 %call, %neg
  %shl9 = shl i32 %vind, %shl
  %or = or i32 %and8, %shl9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #5, !srcloc !52
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end.ixgbe_write_reg.exit_crit_edge
  %add16 = or i32 %mul5, 40960
  %call17 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add16) #5
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i49 = icmp eq ptr %6, null
  br i1 %tobool.not.i.i49, label %ixgbe_write_reg.exit.cleanup_crit_edge, label %do.body1.i51

ixgbe_write_reg.exit.cleanup_crit_edge:           ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1.i51:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and14 = and i32 %vlan, 31
  %shl19 = shl nuw i32 1, %and14
  %or20 = or i32 %call17, %shl19
  %neg22 = xor i32 %shl19, -1
  %and23 = and i32 %call17, %neg22
  %bits.0 = select i1 %vlan_on, i32 %or20, i32 %and23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %bits.0) #5
  %add.ptr.i50 = getelementptr i8, ptr %6, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %7) #5, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i51, %ixgbe_write_reg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %ixgbe_write_reg.exit.cleanup_crit_edge ], [ 0, %do.body1.i51 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_fc_enable_82598(ptr noundef %hw) #0 align 64 {
entry:
  %link_speed = alloca i32, align 4
  %link_up = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_speed) #5
  %0 = ptrtoint ptr %link_speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %link_speed, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up) #5
  %1 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %link_up, align 1, !annotation !49
  %fc = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4
  %pause_time = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %pause_time to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pause_time, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %current_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 7
  %4 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_mode, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.cond.preheader.for.inc.7_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc.7_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

land.lhs.true:                                    ; preds = %for.cond.preheader
  %6 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.land.lhs.true.1_crit_edge, label %if.then5

land.lhs.true.land.lhs.true.1_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.1

if.then5:                                         ; preds = %land.lhs.true
  %arrayidx7 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp15.not = icmp ult i32 %9, %7
  %or.cond = select i1 %tobool8.not, i1 %cmp15.not, i1 false
  br i1 %or.cond, label %if.then5.land.lhs.true.1_crit_edge, label %if.then5.do.body17_crit_edge

if.then5.do.body17_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body17

if.then5.land.lhs.true.1_crit_edge:               ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.1

do.body17:                                        ; preds = %if.then5.7.do.body17_crit_edge, %if.then5.6.do.body17_crit_edge, %if.then5.5.do.body17_crit_edge, %if.then5.4.do.body17_crit_edge, %if.then5.3.do.body17_crit_edge, %if.then5.2.do.body17_crit_edge, %if.then5.1.do.body17_crit_edge, %if.then5.do.body17_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fc_enable_82598.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fc_enable_82598, %if.then21)) #5
          to label %cleanup [label %if.then21], !srcloc !53

if.then21:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fc_enable_82598.__UNIQUE_ID_ddebug357, ptr noundef %13, ptr noundef nonnull @.str.12) #5
  br label %cleanup

land.lhs.true.1:                                  ; preds = %if.then5.land.lhs.true.1_crit_edge, %land.lhs.true.land.lhs.true.1_crit_edge
  %arrayidx.1 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not.1 = icmp eq i32 %15, 0
  br i1 %tobool4.not.1, label %land.lhs.true.1.land.lhs.true.2_crit_edge, label %if.then5.1

land.lhs.true.1.land.lhs.true.2_crit_edge:        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.2

if.then5.1:                                       ; preds = %land.lhs.true.1
  %arrayidx7.1 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool8.not.1 = icmp ne i32 %17, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp15.not.1 = icmp ult i32 %17, %15
  %or.cond.1 = select i1 %tobool8.not.1, i1 %cmp15.not.1, i1 false
  br i1 %or.cond.1, label %if.then5.1.land.lhs.true.2_crit_edge, label %if.then5.1.do.body17_crit_edge

if.then5.1.do.body17_crit_edge:                   ; preds = %if.then5.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body17

if.then5.1.land.lhs.true.2_crit_edge:             ; preds = %if.then5.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %if.then5.1.land.lhs.true.2_crit_edge, %land.lhs.true.1.land.lhs.true.2_crit_edge
  %arrayidx.2 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not.2 = icmp eq i32 %19, 0
  br i1 %tobool4.not.2, label %land.lhs.true.2.land.lhs.true.3_crit_edge, label %if.then5.2

land.lhs.true.2.land.lhs.true.3_crit_edge:        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.3

if.then5.2:                                       ; preds = %land.lhs.true.2
  %arrayidx7.2 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 2
  %20 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx7.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool8.not.2 = icmp ne i32 %21, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp15.not.2 = icmp ult i32 %21, %19
  %or.cond.2 = select i1 %tobool8.not.2, i1 %cmp15.not.2, i1 false
  br i1 %or.cond.2, label %if.then5.2.land.lhs.true.3_crit_edge, label %if.then5.2.do.body17_crit_edge

if.then5.2.do.body17_crit_edge:                   ; preds = %if.then5.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body17

if.then5.2.land.lhs.true.3_crit_edge:             ; preds = %if.then5.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %if.then5.2.land.lhs.true.3_crit_edge, %land.lhs.true.2.land.lhs.true.3_crit_edge
  %arrayidx.3 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool4.not.3 = icmp eq i32 %23, 0
  br i1 %tobool4.not.3, label %land.lhs.true.3.land.lhs.true.4_crit_edge, label %if.then5.3

land.lhs.true.3.land.lhs.true.4_crit_edge:        ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.4

if.then5.3:                                       ; preds = %land.lhs.true.3
  %arrayidx7.3 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 3
  %24 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx7.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8.not.3 = icmp ne i32 %25, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp15.not.3 = icmp ult i32 %25, %23
  %or.cond.3 = select i1 %tobool8.not.3, i1 %cmp15.not.3, i1 false
  br i1 %or.cond.3, label %if.then5.3.land.lhs.true.4_crit_edge, label %if.then5.3.do.body17_crit_edge

if.then5.3.do.body17_crit_edge:                   ; preds = %if.then5.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body17

if.then5.3.land.lhs.true.4_crit_edge:             ; preds = %if.then5.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %if.then5.3.land.lhs.true.4_crit_edge, %land.lhs.true.3.land.lhs.true.4_crit_edge
  %arrayidx.4 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool4.not.4 = icmp eq i32 %27, 0
  br i1 %tobool4.not.4, label %land.lhs.true.4.land.lhs.true.5_crit_edge, label %if.then5.4

land.lhs.true.4.land.lhs.true.5_crit_edge:        ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.5

if.then5.4:                                       ; preds = %land.lhs.true.4
  %arrayidx7.4 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 4
  %28 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx7.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool8.not.4 = icmp ne i32 %29, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp15.not.4 = icmp ult i32 %29, %27
  %or.cond.4 = select i1 %tobool8.not.4, i1 %cmp15.not.4, i1 false
  br i1 %or.cond.4, label %if.then5.4.land.lhs.true.5_crit_edge, label %if.then5.4.do.body17_crit_edge

if.then5.4.do.body17_crit_edge:                   ; preds = %if.then5.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body17

if.then5.4.land.lhs.true.5_crit_edge:             ; preds = %if.then5.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %if.then5.4.land.lhs.true.5_crit_edge, %land.lhs.true.4.land.lhs.true.5_crit_edge
  %arrayidx.5 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 0, i32 5
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool4.not.5 = icmp eq i32 %31, 0
  br i1 %tobool4.not.5, label %land.lhs.true.5.land.lhs.true.6_crit_edge, label %if.then5.5

land.lhs.true.5.land.lhs.true.6_crit_edge:        ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.6

if.then5.5:                                       ; preds = %land.lhs.true.5
  %arrayidx7.5 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 5
  %32 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx7.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool8.not.5 = icmp ne i32 %33, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp15.not.5 = icmp ult i32 %33, %31
  %or.cond.5 = select i1 %tobool8.not.5, i1 %cmp15.not.5, i1 false
  br i1 %or.cond.5, label %if.then5.5.land.lhs.true.6_crit_edge, label %if.then5.5.do.body17_crit_edge

if.then5.5.do.body17_crit_edge:                   ; preds = %if.then5.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body17

if.then5.5.land.lhs.true.6_crit_edge:             ; preds = %if.then5.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %if.then5.5.land.lhs.true.6_crit_edge, %land.lhs.true.5.land.lhs.true.6_crit_edge
  %arrayidx.6 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 0, i32 6
  %34 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool4.not.6 = icmp eq i32 %35, 0
  br i1 %tobool4.not.6, label %land.lhs.true.6.land.lhs.true.7_crit_edge, label %if.then5.6

land.lhs.true.6.land.lhs.true.7_crit_edge:        ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.7

if.then5.6:                                       ; preds = %land.lhs.true.6
  %arrayidx7.6 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 6
  %36 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx7.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool8.not.6 = icmp ne i32 %37, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %35)
  %cmp15.not.6 = icmp ult i32 %37, %35
  %or.cond.6 = select i1 %tobool8.not.6, i1 %cmp15.not.6, i1 false
  br i1 %or.cond.6, label %if.then5.6.land.lhs.true.7_crit_edge, label %if.then5.6.do.body17_crit_edge

if.then5.6.do.body17_crit_edge:                   ; preds = %if.then5.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body17

if.then5.6.land.lhs.true.7_crit_edge:             ; preds = %if.then5.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.7

land.lhs.true.7:                                  ; preds = %if.then5.6.land.lhs.true.7_crit_edge, %land.lhs.true.6.land.lhs.true.7_crit_edge
  %arrayidx.7 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 0, i32 7
  %38 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool4.not.7 = icmp eq i32 %39, 0
  br i1 %tobool4.not.7, label %land.lhs.true.7.for.inc.7_crit_edge, label %if.then5.7

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

if.then5.7:                                       ; preds = %land.lhs.true.7
  %arrayidx7.7 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 7
  %40 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx7.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool8.not.7 = icmp ne i32 %41, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %39)
  %cmp15.not.7 = icmp ult i32 %41, %39
  %or.cond.7 = select i1 %tobool8.not.7, i1 %cmp15.not.7, i1 false
  br i1 %or.cond.7, label %if.then5.7.for.inc.7_crit_edge, label %if.then5.7.do.body17_crit_edge

if.then5.7.do.body17_crit_edge:                   ; preds = %if.then5.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body17

if.then5.7.for.inc.7_crit_edge:                   ; preds = %if.then5.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then5.7.for.inc.7_crit_edge, %land.lhs.true.7.for.inc.7_crit_edge, %for.cond.preheader.for.inc.7_crit_edge
  %check_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 29
  %42 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %check_link, align 4
  %call27 = call i32 %43(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #5
  %44 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %link_up, align 1, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool28.not = icmp eq i8 %45, 0
  br i1 %tobool28.not, label %for.inc.7.if.end38_crit_edge, label %land.lhs.true29

for.inc.7.if.end38_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true29:                                  ; preds = %for.inc.7
  %46 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %link_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %47)
  %cmp30 = icmp eq i32 %47, 32
  br i1 %cmp30, label %if.then31, label %land.lhs.true29.if.end38_crit_edge

land.lhs.true29.if.end38_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then31:                                        ; preds = %land.lhs.true29
  %requested_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 8
  %48 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %requested_mode, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %49, label %if.then31.if.end38_crit_edge [
    i32 3, label %if.then31.if.end38.sink.split_crit_edge
    i32 1, label %sw.bb35
  ]

if.then31.if.end38.sink.split_crit_edge:          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.sink.split

if.then31.if.end38_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

sw.bb35:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %sw.bb35, %if.then31.if.end38.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb35 ], [ 2, %if.then31.if.end38.sink.split_crit_edge ]
  %51 = ptrtoint ptr %requested_mode to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink, ptr %requested_mode, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %if.then31.if.end38_crit_edge, %land.lhs.true29.if.end38_crit_edge, %for.inc.7.if.end38_crit_edge
  %fc_autoneg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 54
  %52 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fc_autoneg, align 4
  call void %53(ptr noundef %hw) #5
  %call41 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 20608) #5
  %and42 = and i32 %call41, -49153
  %call43 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 15616) #5
  %and44 = and i32 %call43, -25
  %54 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %current_mode, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %55, label %do.body55 [
    i32 0, label %if.end38.sw.epilog75_crit_edge
    i32 1, label %sw.bb47
    i32 2, label %sw.bb48
    i32 3, label %sw.bb50
  ]

if.end38.sw.epilog75_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog75

sw.bb47:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %and42, 32768
  br label %sw.epilog75

sw.bb48:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %or49 = or i32 %and44, 8
  br label %sw.epilog75

sw.bb50:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %or51 = or i32 %and42, 32768
  %or52 = or i32 %and44, 8
  br label %sw.epilog75

do.body55:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fc_enable_82598.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fc_enable_82598, %if.then67)) #5
          to label %cleanup [label %if.then67], !srcloc !53

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #7
  %back68 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %57 = ptrtoint ptr %back68 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %back68, align 4
  %netdev69 = getelementptr inbounds %struct.ixgbe_adapter, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %netdev69 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %netdev69, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fc_enable_82598.__UNIQUE_ID_ddebug358, ptr noundef %60, ptr noundef nonnull @.str.13) #5
  br label %cleanup

sw.epilog75:                                      ; preds = %sw.bb50, %sw.bb48, %sw.bb47, %if.end38.sw.epilog75_crit_edge
  %rmcs_reg.0 = phi i32 [ %or52, %sw.bb50 ], [ %or49, %sw.bb48 ], [ %and44, %sw.bb47 ], [ %and44, %if.end38.sw.epilog75_crit_edge ]
  %fctrl_reg.0 = phi i32 [ %or51, %sw.bb50 ], [ %and42, %sw.bb48 ], [ %or, %sw.bb47 ], [ %and42, %if.end38.sw.epilog75_crit_edge ]
  %61 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i, label %sw.epilog75.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

sw.epilog75.ixgbe_write_reg.exit_crit_edge:       ; preds = %sw.epilog75
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %sw.epilog75
  call void @__sanitizer_cov_trace_pc() #7
  %or76 = or i32 %fctrl_reg.0, 8192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  call void @arm_heavy_mb() #5
  %63 = call i32 @llvm.bswap.i32(i32 %or76) #5
  %add.ptr.i = getelementptr i8, ptr %62, i32 20608
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %63) #5, !srcloc !52
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %sw.epilog75.ixgbe_write_reg.exit_crit_edge
  %64 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i191 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i191, label %ixgbe_write_reg.exit.for.body79.preheader_crit_edge, label %do.body1.i193

ixgbe_write_reg.exit.for.body79.preheader_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body79.preheader

do.body1.i193:                                    ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  call void @arm_heavy_mb() #5
  %66 = call i32 @llvm.bswap.i32(i32 %rmcs_reg.0) #5
  %add.ptr.i192 = getelementptr i8, ptr %65, i32 15616
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192, i32 %66) #5, !srcloc !52
  br label %for.body79.preheader

for.body79.preheader:                             ; preds = %do.body1.i193, %ixgbe_write_reg.exit.for.body79.preheader_crit_edge
  br label %for.body79

for.body79:                                       ; preds = %for.inc106.for.body79_crit_edge, %for.body79.preheader
  %i.1223 = phi i32 [ %inc107, %for.inc106.for.body79_crit_edge ], [ 0, %for.body79.preheader ]
  %67 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %current_mode, align 4
  %and82 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %for.body79.if.else_crit_edge, label %land.lhs.true84

for.body79.if.else_crit_edge:                     ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true84:                                  ; preds = %for.body79
  %arrayidx87 = getelementptr [8 x i32], ptr %fc, i32 0, i32 %i.1223
  %69 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool88.not = icmp eq i32 %70, 0
  br i1 %tobool88.not, label %land.lhs.true84.if.else_crit_edge, label %if.then89

land.lhs.true84.if.else_crit_edge:                ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then89:                                        ; preds = %land.lhs.true84
  %arrayidx92 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 %i.1223
  %71 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx92, align 4
  %shl97 = shl i32 %70, 10
  %or98 = or i32 %shl97, -2147483648
  %mul = shl i32 %i.1223, 3
  %73 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i195 = icmp eq ptr %74, null
  br i1 %tobool.not.i.i195, label %if.then89.ixgbe_write_reg.exit198_crit_edge, label %do.body1.i197

if.then89.ixgbe_write_reg.exit198_crit_edge:      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit198

do.body1.i197:                                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nuw nsw i32 %mul, 12832
  %shl = shl i32 %72, 10
  %or93 = or i32 %shl, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  call void @arm_heavy_mb() #5
  %75 = call i32 @llvm.bswap.i32(i32 %or93) #5
  %add.ptr.i196 = getelementptr i8, ptr %74, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196, i32 %75) #5, !srcloc !52
  br label %ixgbe_write_reg.exit198

ixgbe_write_reg.exit198:                          ; preds = %do.body1.i197, %if.then89.ixgbe_write_reg.exit198_crit_edge
  %76 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i199 = icmp eq ptr %77, null
  br i1 %tobool.not.i.i199, label %ixgbe_write_reg.exit198.for.inc106_crit_edge, label %do.body1.i201

ixgbe_write_reg.exit198.for.inc106_crit_edge:     ; preds = %ixgbe_write_reg.exit198
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc106

do.body1.i201:                                    ; preds = %ixgbe_write_reg.exit198
  call void @__sanitizer_cov_trace_pc() #7
  %add100 = add nuw nsw i32 %mul, 12896
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  call void @arm_heavy_mb() #5
  %78 = call i32 @llvm.bswap.i32(i32 %or98) #5
  %add.ptr.i200 = getelementptr i8, ptr %77, i32 %add100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200, i32 %78) #5, !srcloc !52
  br label %for.inc106

if.else:                                          ; preds = %land.lhs.true84.if.else_crit_edge, %for.body79.if.else_crit_edge
  %mul101 = shl i32 %i.1223, 3
  %79 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i203 = icmp eq ptr %80, null
  br i1 %tobool.not.i.i203, label %if.else.ixgbe_write_reg.exit206_crit_edge, label %do.body1.i205

if.else.ixgbe_write_reg.exit206_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit206

do.body1.i205:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %add102 = add nuw nsw i32 %mul101, 12832
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  call void @arm_heavy_mb() #5
  %add.ptr.i204 = getelementptr i8, ptr %80, i32 %add102
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204, i32 0) #5, !srcloc !52
  br label %ixgbe_write_reg.exit206

ixgbe_write_reg.exit206:                          ; preds = %do.body1.i205, %if.else.ixgbe_write_reg.exit206_crit_edge
  %81 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i207 = icmp eq ptr %82, null
  br i1 %tobool.not.i.i207, label %ixgbe_write_reg.exit206.for.inc106_crit_edge, label %do.body1.i209

ixgbe_write_reg.exit206.for.inc106_crit_edge:     ; preds = %ixgbe_write_reg.exit206
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc106

do.body1.i209:                                    ; preds = %ixgbe_write_reg.exit206
  call void @__sanitizer_cov_trace_pc() #7
  %add104 = add nuw nsw i32 %mul101, 12896
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  call void @arm_heavy_mb() #5
  %add.ptr.i208 = getelementptr i8, ptr %82, i32 %add104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i208, i32 0) #5, !srcloc !52
  br label %for.inc106

for.inc106:                                       ; preds = %do.body1.i209, %ixgbe_write_reg.exit206.for.inc106_crit_edge, %do.body1.i201, %ixgbe_write_reg.exit198.for.inc106_crit_edge
  %inc107 = add nuw nsw i32 %i.1223, 1
  %exitcond.not = icmp eq i32 %inc107, 8
  br i1 %exitcond.not, label %for.end108, label %for.inc106.for.body79_crit_edge

for.inc106.for.body79_crit_edge:                  ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body79

for.end108:                                       ; preds = %for.inc106
  %83 = ptrtoint ptr %pause_time to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %pause_time, align 4
  %conv = zext i16 %84 to i32
  %mul111 = mul nuw i32 %conv, 65537
  %85 = call i32 @llvm.bswap.i32(i32 %mul111) #5
  %86 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i211 = icmp eq ptr %87, null
  br i1 %tobool.not.i.i211, label %for.end108.ixgbe_write_reg.exit214_crit_edge, label %do.body1.i213

for.end108.ixgbe_write_reg.exit214_crit_edge:     ; preds = %for.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit214

do.body1.i213:                                    ; preds = %for.end108
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  call void @arm_heavy_mb() #5
  %add.ptr.i212 = getelementptr i8, ptr %87, i32 12800
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212, i32 %85) #5, !srcloc !52
  br label %ixgbe_write_reg.exit214

ixgbe_write_reg.exit214:                          ; preds = %do.body1.i213, %for.end108.ixgbe_write_reg.exit214_crit_edge
  %88 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i211.1 = icmp eq ptr %89, null
  br i1 %tobool.not.i.i211.1, label %ixgbe_write_reg.exit214.ixgbe_write_reg.exit214.1_crit_edge, label %do.body1.i213.1

ixgbe_write_reg.exit214.ixgbe_write_reg.exit214.1_crit_edge: ; preds = %ixgbe_write_reg.exit214
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit214.1

do.body1.i213.1:                                  ; preds = %ixgbe_write_reg.exit214
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  call void @arm_heavy_mb() #5
  %add.ptr.i212.1 = getelementptr i8, ptr %89, i32 12804
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212.1, i32 %85) #5, !srcloc !52
  br label %ixgbe_write_reg.exit214.1

ixgbe_write_reg.exit214.1:                        ; preds = %do.body1.i213.1, %ixgbe_write_reg.exit214.ixgbe_write_reg.exit214.1_crit_edge
  %90 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i211.2 = icmp eq ptr %91, null
  br i1 %tobool.not.i.i211.2, label %ixgbe_write_reg.exit214.1.ixgbe_write_reg.exit214.2_crit_edge, label %do.body1.i213.2

ixgbe_write_reg.exit214.1.ixgbe_write_reg.exit214.2_crit_edge: ; preds = %ixgbe_write_reg.exit214.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit214.2

do.body1.i213.2:                                  ; preds = %ixgbe_write_reg.exit214.1
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  call void @arm_heavy_mb() #5
  %add.ptr.i212.2 = getelementptr i8, ptr %91, i32 12808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212.2, i32 %85) #5, !srcloc !52
  br label %ixgbe_write_reg.exit214.2

ixgbe_write_reg.exit214.2:                        ; preds = %do.body1.i213.2, %ixgbe_write_reg.exit214.1.ixgbe_write_reg.exit214.2_crit_edge
  %92 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i211.3 = icmp eq ptr %93, null
  br i1 %tobool.not.i.i211.3, label %ixgbe_write_reg.exit214.2.ixgbe_write_reg.exit214.3_crit_edge, label %do.body1.i213.3

ixgbe_write_reg.exit214.2.ixgbe_write_reg.exit214.3_crit_edge: ; preds = %ixgbe_write_reg.exit214.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit214.3

do.body1.i213.3:                                  ; preds = %ixgbe_write_reg.exit214.2
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  call void @arm_heavy_mb() #5
  %add.ptr.i212.3 = getelementptr i8, ptr %93, i32 12812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212.3, i32 %85) #5, !srcloc !52
  br label %ixgbe_write_reg.exit214.3

ixgbe_write_reg.exit214.3:                        ; preds = %do.body1.i213.3, %ixgbe_write_reg.exit214.2.ixgbe_write_reg.exit214.3_crit_edge
  %94 = ptrtoint ptr %pause_time to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %pause_time, align 4
  %96 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i215 = icmp eq ptr %97, null
  br i1 %tobool.not.i.i215, label %ixgbe_write_reg.exit214.3.cleanup_crit_edge, label %do.body1.i217

ixgbe_write_reg.exit214.3.cleanup_crit_edge:      ; preds = %ixgbe_write_reg.exit214.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1.i217:                                    ; preds = %ixgbe_write_reg.exit214.3
  call void @__sanitizer_cov_trace_pc() #7
  %98 = lshr i16 %95, 1
  %div = zext i16 %98 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  call void @arm_heavy_mb() #5
  %99 = call i32 @llvm.bswap.i32(i32 %div) #5
  %add.ptr.i216 = getelementptr i8, ptr %97, i32 12960
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i216, i32 %99) #5, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i217, %ixgbe_write_reg.exit214.3.cleanup_crit_edge, %if.then67, %do.body55, %if.then21, %do.body17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %entry.cleanup_crit_edge ], [ -13, %if.then21 ], [ -4, %if.then67 ], [ -13, %do.body17 ], [ -4, %do.body55 ], [ 0, %ixgbe_write_reg.exit214.3.cleanup_crit_edge ], [ 0, %do.body1.i217 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_speed) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_fc_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_fc_autoneg(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_disable_rx_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_enable_rx_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_start_hw_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ixgbe_read_pci_cfg_word(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_write_pci_cfg_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_set_lan_id_multi_port_pcie(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_start_mac_link_82598(ptr noundef %hw, i1 noundef zeroext %autoneg_wait_to_complete) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17056) #5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %call, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %add.ptr.i = getelementptr i8, ptr %1, i32 17056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #5, !srcloc !52
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  br i1 %autoneg_wait_to_complete, label %if.then, label %ixgbe_write_reg.exit.if.end24_crit_edge

ixgbe_write_reg.exit.if.end24_crit_edge:          ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then:                                          ; preds = %ixgbe_write_reg.exit
  %3 = trunc i32 %call to i16
  %trunc = and i16 %3, -8192
  %4 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %trunc, label %if.then.if.end24_crit_edge [
    i16 -32768, label %if.then.for.body.preheader_crit_edge
    i16 -16384, label %if.then.for.body.preheader_crit_edge37
  ]

if.then.for.body.preheader_crit_edge37:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

if.then.for.body.preheader_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

for.body.preheader:                               ; preds = %if.then.for.body.preheader_crit_edge, %if.then.for.body.preheader_crit_edge37
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.036 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17060) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %tobool7.not = icmp sgt i32 %call5, -1
  br i1 %tobool7.not, label %if.end, label %for.body.if.end24_crit_edge

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end:                                           ; preds = %for.body
  tail call void @msleep(i32 noundef 100) #5
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, 45
  br i1 %exitcond.not, label %if.then11, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_start_mac_link_82598.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_start_mac_link_82598, %if.then18)) #5
          to label %if.end24 [label %if.then18], !srcloc !53

if.then18:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_start_mac_link_82598.__UNIQUE_ID_ddebug359, ptr noundef %8, ptr noundef nonnull @.str.5) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.then11, %for.body.if.end24_crit_edge, %if.then.if.end24_crit_edge, %ixgbe_write_reg.exit.if.end24_crit_edge
  %status.0 = phi i32 [ -14, %if.then18 ], [ 0, %ixgbe_write_reg.exit.if.end24_crit_edge ], [ 0, %if.then.if.end24_crit_edge ], [ -14, %if.then11 ], [ 0, %for.body.if.end24_crit_edge ]
  tail call void @msleep(i32 noundef 50) #5
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_init_eeprom_params_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_eerd_generic(ptr noundef, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_eerd_buffer_generic(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #2

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
declare dso_local i32 @ixgbe_identify_module_generic(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_init_phy_ops_82598(ptr noundef %hw) #0 align 64 {
entry:
  %list_offset = alloca i16, align 2
  %data_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy2 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %list_offset) #5
  %0 = ptrtoint ptr %list_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %list_offset, align 2, !annotation !49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #5
  %1 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %data_offset, align 2, !annotation !49
  %2 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy2, align 4
  %call = tail call i32 %3(ptr noundef %hw) #5
  %get_media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 4
  %4 = ptrtoint ptr %get_media_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_media_type, align 4
  %call4 = tail call i32 %5(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call4)
  %cmp = icmp eq i32 %call4, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %setup_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 27
  %6 = ptrtoint ptr %setup_link to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ixgbe_setup_copper_link_82598, ptr %setup_link, align 4
  %get_link_capabilities = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 30
  %7 = ptrtoint ptr %get_link_capabilities to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ixgbe_get_copper_link_capabilities_generic, ptr %get_link_capabilities, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %9, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 12, label %sw.bb11
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %setup_link9 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 8
  %11 = ptrtoint ptr %setup_link9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ixgbe_setup_phy_link_tnx, ptr %setup_link9, align 4
  %check_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 11
  %12 = ptrtoint ptr %check_link to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ixgbe_check_phy_link_tnx, ptr %check_link, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %reset = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %13 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ixgbe_reset_phy_nl, ptr %reset, align 4
  %identify_sfp = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 1
  %14 = ptrtoint ptr %identify_sfp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %identify_sfp, align 4
  %call14 = tail call i32 %15(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end16, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %sw.bb11
  %sfp_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 4
  %16 = ptrtoint ptr %sfp_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sfp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %17)
  %cmp18 = icmp eq i32 %17, 65535
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @ixgbe_get_sfp_init_sequence_offsets(ptr noundef %hw, ptr noundef nonnull %list_offset, ptr noundef nonnull %data_offset) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.sw.epilog_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end20.sw.epilog_crit_edge, %sw.bb, %if.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call14, %sw.bb11.cleanup_crit_edge ], [ -19, %if.end16.cleanup_crit_edge ], [ -19, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %list_offset) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_reset_phy_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_phy_reg_generic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_write_phy_reg_generic(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_phy_reg_mdi(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_write_phy_reg_mdi(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_phy_link_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_phy_link_speed_generic(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_i2c_sff8472_82598(ptr noundef %hw, i8 noundef zeroext %byte_offset, ptr nocapture noundef writeonly %sff8472_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbe_read_i2c_phy_82598(ptr noundef %hw, i8 noundef zeroext -94, i8 noundef zeroext %byte_offset, ptr noundef %sff8472_data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_i2c_eeprom_82598(ptr noundef %hw, i8 noundef zeroext %byte_offset, ptr nocapture noundef writeonly %eeprom_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbe_read_i2c_phy_82598(ptr noundef %hw, i8 noundef zeroext -96, i8 noundef zeroext %byte_offset, ptr noundef %eeprom_data)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_tn_check_overtemp(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_copper_link_82598(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_link_speed = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %0 = ptrtoint ptr %setup_link_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %setup_link_speed, align 4
  %call = tail call i32 %1(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete) #5
  %call2 = tail call fastcc i32 @ixgbe_start_mac_link_82598(ptr noundef %hw, i1 noundef zeroext %autoneg_wait_to_complete)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_copper_link_capabilities_generic(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_phy_link_tnx(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_check_phy_link_tnx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_reset_phy_nl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_sfp_init_sequence_offsets(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_read_i2c_phy_82598(ptr noundef %hw, i8 noundef zeroext %dev_addr, i8 noundef zeroext %byte_offset, ptr nocapture noundef writeonly %eeprom_data) unnamed_addr #0 align 64 {
entry:
  %sfp_data = alloca i16, align 2
  %sfp_stat = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sfp_data) #5
  %0 = ptrtoint ptr %sfp_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %sfp_data, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sfp_stat) #5
  %1 = ptrtoint ptr %sfp_stat to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %sfp_stat, align 2
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #5
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 4
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %2 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acquire_swfw_sync, align 4
  %call1 = tail call i32 %3(ptr noundef %hw, i32 noundef %.) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp5 = icmp eq i32 %5, 12
  br i1 %cmp5, label %if.then7, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then7:                                         ; preds = %if.end4
  %conv8 = zext i8 %dev_addr to i16
  %shl = shl nuw i16 %conv8, 8
  %conv9 = zext i8 %byte_offset to i16
  %add = or i16 %shl, %conv9
  %or = or i16 %add, 256
  %write_reg_mdi = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 7
  %6 = ptrtoint ptr %write_reg_mdi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg_mdi, align 4
  %call15 = tail call i32 %7(ptr noundef %hw, i32 noundef 49930, i32 noundef 1, i16 noundef zeroext %or) #5
  %read_reg_mdi = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %if.then7
  %i.075 = phi i32 [ 0, %if.then7 ], [ %inc, %if.end28.for.body_crit_edge ]
  %8 = ptrtoint ptr %read_reg_mdi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg_mdi, align 4
  %call20 = call i32 %9(ptr noundef %hw, i32 noundef 49932, i32 noundef 1, ptr noundef nonnull %sfp_stat) #5
  %10 = ptrtoint ptr %sfp_stat to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sfp_stat, align 2
  %12 = and i16 %11, 3
  store i16 %12, ptr %sfp_stat, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %12)
  %cmp25.not = icmp eq i16 %12, 3
  br i1 %cmp25.not, label %if.end28, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end28:                                         ; preds = %for.body
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #5
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.endthread-pre-split, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.endthread-pre-split:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %sfp_stat to i32
  call void @__asan_load2_noabort(i32 %13)
  %.pr = load i16, ptr %sfp_stat, align 2
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %for.body.for.end_crit_edge
  %14 = phi i16 [ %.pr, %for.endthread-pre-split ], [ %12, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp30.not = icmp eq i16 %14, 1
  br i1 %cmp30.not, label %if.end42, label %do.body33

do.body33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_i2c_phy_82598.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_i2c_phy_82598, %if.then38)) #5
          to label %out [label %if.then38], !srcloc !53

if.then38:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_i2c_phy_82598.__UNIQUE_ID_ddebug364, ptr noundef %18, ptr noundef nonnull @.str.15) #5
  br label %out

if.end42:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %read_reg_mdi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_reg_mdi, align 4
  %call46 = call i32 %20(ptr noundef %hw, i32 noundef 49931, i32 noundef 1, ptr noundef nonnull %sfp_data) #5
  %21 = ptrtoint ptr %sfp_data to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sfp_data, align 2
  %23 = lshr i16 %22, 8
  %conv48 = trunc i16 %23 to i8
  %24 = ptrtoint ptr %eeprom_data to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv48, ptr %eeprom_data, align 1
  br label %out

out:                                              ; preds = %if.end42, %if.then38, %do.body33, %if.end4.out_crit_edge
  %status.0 = phi i32 [ 0, %if.end42 ], [ -20, %if.then38 ], [ -3, %if.end4.out_crit_edge ], [ -20, %do.body33 ]
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %25 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %release_swfw_sync, align 4
  call void %26(ptr noundef %hw, i32 noundef %.) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %out ], [ -16, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sfp_stat) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sfp_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !34, !36, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @ixgbe_82598_info, !1, !"ixgbe_82598_info", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c", i32 1189, i32 25}
!2 = !{ptr @mac_ops_82598, !3, !"mac_ops_82598", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c", i32 1115, i32 42}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c", i32 731, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ixgbe_reset_hw_82598.__UNIQUE_ID_ddebug361, !5, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c", i32 442, i32 5}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ixgbe_start_mac_link_82598.__UNIQUE_ID_ddebug359, !11, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c", i32 480, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ixgbe_validate_link_ready.__UNIQUE_ID_ddebug360, !15, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c", i32 791, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ixgbe_set_vmdq_82598.__UNIQUE_ID_ddebug362, !19, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c", i32 816, i32 3}
!24 = !{ptr @ixgbe_clear_vmdq_82598.__UNIQUE_ID_ddebug363, !23, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c", i32 294, i32 5}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ixgbe_fc_enable_82598.__UNIQUE_ID_ddebug357, !26, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c", i32 371, i32 3}
!31 = !{ptr @ixgbe_fc_enable_82598.__UNIQUE_ID_ddebug358, !30, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!32 = !{ptr @eeprom_ops_82598, !33, !"eeprom_ops_82598", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c", i32 1162, i32 45}
!34 = !{ptr @phy_ops_82598, !35, !"phy_ops_82598", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c", i32 1173, i32 42}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c", i32 995, i32 4}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ixgbe_read_i2c_phy_82598.__UNIQUE_ID_ddebug364, !37, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{i8 0, i8 2}
!51 = !{i64 2157288822}
!52 = !{i64 5012695}
!53 = !{i64 2148518098, i64 2148518103, i64 2148518116, i64 2148518160, i64 2148518194, i64 2148518215}
