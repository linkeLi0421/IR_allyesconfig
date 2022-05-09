; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/e1000e/82571.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/82571.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_info = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.e1000_hw = type { ptr, ptr, ptr, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.e1000_fc_info = type { i32, i32, i16, i16, i8, i8, i32, i32 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_bus_info = type { i32, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i8, [2048 x %struct.e1000_shadow_ram], i8, i8, i16, i32 }
%struct.e1000_shadow_ram = type { i16, i8 }
%struct.e1000_adapter = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, ptr, [128 x i32], i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, [116 x i8], ptr, i32, %struct.napi_struct, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, [44 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i16, i32, i32, ptr, ptr, %struct.e1000_hw, %struct.spinlock, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, %struct.e1000_phy_regs, %struct.e1000_ring, %struct.e1000_ring, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i16, i16, %struct.hwtstamp_config, %struct.delayed_work, ptr, i32, %struct.work_struct, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, ptr, %struct.ptp_clock_info, %struct.pm_qos_request, i32, i16, [122 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_stats = type { i32, i32 }
%struct.e1000_phy_regs = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.e1000_ring = type { ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, [21 x i8], i32, i32, ptr, i32, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.122, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.122 = type { ptr }

@e82571_mac_ops = internal constant { %struct.e1000_mac_operations, [36 x i8] } { %struct.e1000_mac_operations { ptr @e1000e_id_led_init_generic, ptr null, ptr null, ptr null, ptr @e1000e_cleanup_led_generic, ptr @e1000_clear_hw_cntrs_82571, ptr @e1000_clear_vfta_82571, ptr @e1000e_get_bus_info_pcie, ptr @e1000_set_lan_id_multi_port_pcie, ptr null, ptr null, ptr @e1000e_led_off_generic, ptr @e1000e_update_mc_addr_list_generic, ptr @e1000_reset_hw_82571, ptr @e1000_init_hw_82571, ptr @e1000_setup_link_82571, ptr null, ptr @e1000e_setup_led_generic, ptr @e1000_write_vfta_generic, ptr @e1000e_config_collision_dist_generic, ptr @e1000e_rar_set_generic, ptr @e1000_read_mac_addr_82571, ptr @e1000e_rar_get_count_generic }, [36 x i8] zeroinitializer }, align 32
@e82_phy_ops_igp = internal constant { %struct.e1000_phy_operations, [40 x i8] } { %struct.e1000_phy_operations { ptr @e1000_get_hw_semaphore_82571, ptr null, ptr @e1000_check_polarity_igp, ptr @e1000e_check_reset_block_generic, ptr null, ptr @e1000e_phy_force_speed_duplex_igp, ptr @e1000_get_cfg_done_82571, ptr @e1000e_get_cable_length_igp_2, ptr @e1000e_get_phy_info_igp, ptr null, ptr @e1000e_read_phy_reg_igp, ptr null, ptr null, ptr @e1000_put_hw_semaphore_82571, ptr @e1000e_phy_hw_reset_generic, ptr @e1000_set_d0_lplu_state_82571, ptr @e1000e_set_d3_lplu_state, ptr @e1000e_write_phy_reg_igp, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@e82571_nvm_ops = internal constant { %struct.e1000_nvm_operations, [32 x i8] } { %struct.e1000_nvm_operations { ptr @e1000_acquire_nvm_82571, ptr @e1000e_read_nvm_eerd, ptr @e1000_release_nvm_82571, ptr @e1000e_reload_nvm_generic, ptr @e1000_update_nvm_checksum_82571, ptr @e1000_valid_led_default_82571, ptr @e1000_validate_nvm_checksum_82571, ptr @e1000_write_nvm_82571 }, [32 x i8] zeroinitializer }, align 32
@e1000_82571_info = dso_local constant { %struct.e1000_info, [60 x i8] } { %struct.e1000_info { i32 0, i32 6490284, i32 72, i32 38, i32 9234, ptr @e1000_get_variants_82571, ptr @e82571_mac_ops, ptr @e82_phy_ops_igp, ptr @e82571_nvm_ops }, [60 x i8] zeroinitializer }, align 32
@e1000_82572_info = dso_local constant { %struct.e1000_info, [60 x i8] } { %struct.e1000_info { i32 1, i32 4260012, i32 72, i32 38, i32 9234, ptr @e1000_get_variants_82571, ptr @e82571_mac_ops, ptr @e82_phy_ops_igp, ptr @e82571_nvm_ops }, [60 x i8] zeroinitializer }, align 32
@e82_phy_ops_m88 = internal constant { %struct.e1000_phy_operations, [40 x i8] } { %struct.e1000_phy_operations { ptr @e1000_get_hw_semaphore_82571, ptr null, ptr @e1000_check_polarity_m88, ptr @e1000e_check_reset_block_generic, ptr @e1000e_phy_sw_reset, ptr @e1000e_phy_force_speed_duplex_m88, ptr @e1000e_get_cfg_done_generic, ptr @e1000e_get_cable_length_m88, ptr @e1000e_get_phy_info_m88, ptr null, ptr @e1000e_read_phy_reg_m88, ptr null, ptr null, ptr @e1000_put_hw_semaphore_82571, ptr @e1000e_phy_hw_reset_generic, ptr @e1000_set_d0_lplu_state_82571, ptr @e1000e_set_d3_lplu_state, ptr @e1000e_write_phy_reg_m88, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@e1000_82573_info = dso_local constant { %struct.e1000_info, [60 x i8] } { %struct.e1000_info { i32 2, i32 67661, i32 136, i32 20, i32 1522, ptr @e1000_get_variants_82571, ptr @e82571_mac_ops, ptr @e82_phy_ops_m88, ptr @e82571_nvm_ops }, [60 x i8] zeroinitializer }, align 32
@e82_phy_ops_bm = internal constant { %struct.e1000_phy_operations, [40 x i8] } { %struct.e1000_phy_operations { ptr @e1000_get_hw_semaphore_82571, ptr null, ptr @e1000_check_polarity_m88, ptr @e1000e_check_reset_block_generic, ptr @e1000e_phy_sw_reset, ptr @e1000e_phy_force_speed_duplex_m88, ptr @e1000e_get_cfg_done_generic, ptr @e1000e_get_cable_length_m88, ptr @e1000e_get_phy_info_m88, ptr null, ptr @e1000e_read_phy_reg_bm2, ptr null, ptr null, ptr @e1000_put_hw_semaphore_82571, ptr @e1000e_phy_hw_reset_generic, ptr @e1000_set_d0_lplu_state_82571, ptr @e1000e_set_d3_lplu_state, ptr @e1000e_write_phy_reg_bm2, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@e1000_82574_info = dso_local constant { %struct.e1000_info, [60 x i8] } { %struct.e1000_info { i32 3, i32 85165, i32 18120, i32 32, i32 9234, ptr @e1000_get_variants_82571, ptr @e82571_mac_ops, ptr @e82_phy_ops_bm, ptr @e82571_nvm_ops }, [60 x i8] zeroinitializer }, align 32
@e1000_82583_info = dso_local constant { %struct.e1000_info, [60 x i8] } { %struct.e1000_info { i32 4, i32 84141, i32 17544, i32 32, i32 9234, ptr @e1000_get_variants_82571, ptr @e82571_mac_ops, ptr @e82_phy_ops_bm, ptr @e82571_nvm_ops }, [60 x i8] zeroinitializer }, align 32
@e1000_get_variants_82571.global_quad_port_a = internal global { i32, [28 x i8] } zeroinitializer, align 32
@e1000_init_mac_params_82571.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"e1000e\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"e1000_init_mac_params_82571\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/intel/e1000e/82571.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Please update your 82571 Bootagent\0A\00", [60 x i8] zeroinitializer }, align 32
@e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 1, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"e1000_check_for_serdes_link_82571\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"AN_UP     -> AN_PROG\0A\00", [42 x i8] zeroinitializer }, align 32
@e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 1, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FORCED_UP -> AN_PROG\0A\00", [42 x i8] zeroinitializer }, align 32
@e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 1, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AN_PROG   -> AN_UP\0A\00", [44 x i8] zeroinitializer }, align 32
@e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 1, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AN_PROG   -> DOWN\0A\00", [45 x i8] zeroinitializer }, align 32
@e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.9, i8 1, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error config flow control\0A\00", [37 x i8] zeroinitializer }, align 32
@e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.10, i8 1, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AN_PROG   -> FORCED_UP\0A\00", [40 x i8] zeroinitializer }, align 32
@e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.11, i8 1, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DOWN      -> AN_PROG\0A\00", [42 x i8] zeroinitializer }, align 32
@e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.12, i8 1, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ANYSTATE  -> DOWN\0A\00", [45 x i8] zeroinitializer }, align 32
@e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.12, i8 1, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.13, i8 1, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ANYSTATE  -> AN_PROG\0A\00", [42 x i8] zeroinitializer }, align 32
@swflag_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @swflag_mutex, i64 52), ptr getelementptr (i8, ptr @swflag_mutex, i64 52) }, ptr @swflag_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"swflag_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"swflag_mutex\00", [19 x i8] zeroinitializer }, align 32
@e1000_get_hw_semaphore_82573.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"e1000_get_hw_semaphore_82573\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Driver can't access the PHY\0A\00", [35 x i8] zeroinitializer }, align 32
@e1000_init_phy_params_82571.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"e1000_init_phy_params_82571\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error getting PHY ID\0A\00", [42 x i8] zeroinitializer }, align 32
@e1000_init_phy_params_82571.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.20, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PHY ID unknown: type = 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@e1000_reset_hw_82571.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"e1000_reset_hw_82571\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PCI-E Master disable polling has failed.\0A\00", [54 x i8] zeroinitializer }, align 32
@e1000_reset_hw_82571.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 -18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Masking off all interrupts\0A\00", [36 x i8] zeroinitializer }, align 32
@e1000_reset_hw_82571.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 0, i8 -11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Issuing a global reset to MAC\0A\00", [33 x i8] zeroinitializer }, align 32
@e1000_init_hw_82571.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 1, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"e1000_init_hw_82571\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error initializing identification LED\0A\00", [57 x i8] zeroinitializer }, align 32
@e1000_init_hw_82571.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 1, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Initializing the IEEE VLAN\0A\00", [36 x i8] zeroinitializer }, align 32
@e1000_init_hw_82571.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.28, i8 1, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Zeroing the MTA\0A\00", [47 x i8] zeroinitializer }, align 32
@e1000_get_hw_semaphore_82571.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"e1000_get_hw_semaphore_82571\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Driver can't access device - SMBI bit is set.\0A\00", [49 x i8] zeroinitializer }, align 32
@e1000_get_hw_semaphore_82571.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Driver can't access the NVM\0A\00", [35 x i8] zeroinitializer }, align 32
@e1000_get_cfg_done_82571.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"e1000_get_cfg_done_82571\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MNG configuration cycle has not completed.\0A\00", [52 x i8] zeroinitializer }, align 32
@e1000_valid_led_default_82571.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 1, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"e1000_valid_led_default_82571\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NVM Read Error\0A\00", [16 x i8] zeroinitializer }, align 32
@e1000_write_nvm_eewr_82571.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"e1000_write_nvm_eewr_82571\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nvm parameter(s) out of bounds\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 16, i64 4260, i64 4261, i64 4284, i64 4309]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [9 x i64] [i64 7, i64 16, i64 4191, i64 4192, i64 4222, i64 4223, i64 4261, i64 4313, i64 4314]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 16, i64 3, i64 15, i64 47]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.50 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.55 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"e82571_mac_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1857, i32 42 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"e82_phy_ops_igp\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1882, i32 42 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"e82571_nvm_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1936, i32 42 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"e1000_82571_info\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1947, i32 25 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"e1000_82572_info\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1968, i32 25 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"e82_phy_ops_m88\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1900, i32 42 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"e1000_82573_info\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1986, i32 25 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"e82_phy_ops_bm\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1918, i32 42 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"e1000_82574_info\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 2004, i32 25 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"e1000_82583_info\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 2029, i32 25 }
@___asan_gen_.86 = private unnamed_addr constant [19 x i8] c"global_quad_port_a\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 316, i32 13 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 302, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1524, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1543, i32 5 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1558, i32 6 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1564, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1578, i32 6 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1584, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1599, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1606, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1635, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant [13 x i8] c"swflag_mutex\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 553, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 530, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 85, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 111, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 953, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 955, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 983, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1079, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1082, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1095, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 462, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 480, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 857, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1657, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private constant [45 x i8] c"../drivers/net/ethernet/intel/e1000e/82571.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 817, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @e82571_mac_ops, ptr @e82_phy_ops_igp, ptr @e82571_nvm_ops, ptr @e1000_82571_info, ptr @e1000_82572_info, ptr @e82_phy_ops_m88, ptr @e1000_82573_info, ptr @e82_phy_ops_bm, ptr @e1000_82574_info, ptr @e1000_82583_info, ptr @e1000_get_variants_82571.global_quad_port_a, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @swflag_mutex, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e82571_mac_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e82_phy_ops_igp to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e82571_nvm_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_82571_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_82572_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e82_phy_ops_m88 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_82573_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e82_phy_ops_bm to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_82574_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_82583_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_get_variants_82571.global_quad_port_a to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swflag_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @e1000_check_phy_82574(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %status_1kbt = alloca i16, align 2
  %receive_errors = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status_1kbt) #5
  %0 = ptrtoint ptr %status_1kbt to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %status_1kbt, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %receive_errors) #5
  %1 = ptrtoint ptr %receive_errors to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %receive_errors, align 2
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %2 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %3(ptr noundef %hw, i32 noundef 21, ptr noundef nonnull %receive_errors) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %receive_errors to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %receive_errors, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp = icmp eq i16 %5, -1
  br i1 %cmp, label %if.then2, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then2:                                         ; preds = %if.end
  %6 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg.i, align 4
  %call.i18 = call i32 %7(ptr noundef %hw, i32 noundef 10, ptr noundef nonnull %status_1kbt) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool4.not = icmp eq i32 %call.i18, 0
  br i1 %tobool4.not, label %if.end6, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  %8 = ptrtoint ptr %status_1kbt to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %status_1kbt, align 2
  %10 = and i16 %9, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %10)
  %cmp8 = icmp eq i16 %10, 255
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end6.if.end12_crit_edge, %if.end.if.end12_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end6.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end12 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.then2.cleanup_crit_edge ], [ true, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %receive_errors) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status_1kbt) #5
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @e1000e_get_laa_state_82571(ptr nocapture noundef readonly %hw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev_spec = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9
  %2 = ptrtoint ptr %dev_spec to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dev_spec, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_set_laa_state_82571(ptr noundef %hw, i1 noundef zeroext %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end:                                           ; preds = %entry
  %frombool = zext i1 %state to i8
  %dev_spec = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9
  %2 = ptrtoint ptr %dev_spec to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %dev_spec, align 4
  br i1 %state, label %if.then3, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rar_set = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 20
  %3 = ptrtoint ptr %rar_set to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rar_set, align 4
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 1
  %rar_entry_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 18
  %5 = ptrtoint ptr %rar_entry_count to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rar_entry_count, align 4
  %conv = zext i16 %6 to i32
  %sub = add nsw i32 %conv, -1
  %call = tail call i32 %4(ptr noundef %hw, ptr noundef %addr, i32 noundef %sub) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_variants_82571(ptr noundef %adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66
  %pdev2 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 65
  %0 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev2, align 32
  %hw_addr.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 1
  %2 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call fastcc void @e1000_init_mac_params_82571(ptr noundef %hw1)
  %nvm1.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6
  %5 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !122
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %opcode_bits.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 8
  %9 = ptrtoint ptr %opcode_bits.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 8, ptr %opcode_bits.i, align 2
  %delay_usec.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 6
  %10 = ptrtoint ptr %delay_usec.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %delay_usec.i, align 2
  %override.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 2
  %11 = ptrtoint ptr %override.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %override.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %page_size.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 9
  %14 = ptrtoint ptr %page_size.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 32, ptr %page_size.i, align 4
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %page_size3.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 9
  %15 = ptrtoint ptr %page_size3.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 8, ptr %page_size3.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %conv.i = select i1 %tobool.not.i, i16 8, i16 32
  %page_size5.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 9
  %16 = ptrtoint ptr %page_size5.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %page_size5.i, align 4
  %conv9.i = select i1 %tobool.not.i, i16 8, i16 16
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb2.i, %sw.bb.i
  %conv9.sink.i = phi i16 [ %conv9.i, %sw.default.i ], [ 8, %sw.bb2.i ], [ 16, %sw.bb.i ]
  %address_bits10.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 7
  %17 = ptrtoint ptr %address_bits10.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv9.sink.i, ptr %address_bits10.i, align 4
  %type.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 3
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i, align 4
  %.off.i = add i32 %19, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  %20 = and i32 %8, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 98304, i32 %20)
  %cmp.i = icmp eq i32 %20, 98304
  %or.cond.i = select i1 %switch.i, i1 %cmp.i, i1 false
  %type14.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 1
  br i1 %or.cond.i, label %if.then.i, label %sw.default16.i

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %type14.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %type14.i, align 4
  %word_size.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 5
  %22 = ptrtoint ptr %word_size.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 2048, ptr %word_size.i, align 4
  %and15.i = and i32 %8, -1048577
  tail call void @__ew32(ptr noundef %hw1, i32 noundef 16, i32 noundef %and15.i) #5
  br label %sw.epilog31.i

sw.default16.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %type14.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %type14.i, align 4
  %24 = trunc i32 %8 to i16
  %25 = lshr i16 %24, 11
  %26 = and i16 %25, 15
  %27 = tail call i16 @llvm.umin.i16(i16 %26, i16 8) #5
  %28 = add nuw nsw i16 %27, 6
  %conv28.i = zext i16 %28 to i32
  %shl.i = shl nuw nsw i32 1, %conv28.i
  %conv29.i = trunc i32 %shl.i to i16
  %word_size30.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 5
  %29 = ptrtoint ptr %word_size30.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv29.i, ptr %word_size30.i, align 4
  br label %sw.epilog31.i

sw.epilog31.i:                                    ; preds = %sw.default16.i, %if.then.i
  %30 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type.i, align 4
  %.off1.i = add i32 %31, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off1.i)
  %switch2.i = icmp ult i32 %.off1.i, 2
  br i1 %switch2.i, label %sw.bb34.i, label %sw.epilog31.i.e1000_init_nvm_params_82571.exit_crit_edge

sw.epilog31.i.e1000_init_nvm_params_82571.exit_crit_edge: ; preds = %sw.epilog31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000_init_nvm_params_82571.exit

sw.bb34.i:                                        ; preds = %sw.epilog31.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %nvm1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @e1000_get_hw_semaphore_82574, ptr %nvm1.i, align 4
  %release.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 0, i32 2
  %33 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @e1000_put_hw_semaphore_82574, ptr %release.i, align 4
  br label %e1000_init_nvm_params_82571.exit

e1000_init_nvm_params_82571.exit:                 ; preds = %sw.bb34.i, %sw.epilog31.i.e1000_init_nvm_params_82571.exit_crit_edge
  %call8 = tail call fastcc i32 @e1000_init_phy_params_82571(ptr noundef %hw1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %e1000_init_nvm_params_82571.exit.cleanup_crit_edge

e1000_init_nvm_params_82571.exit.cleanup_crit_edge: ; preds = %e1000_init_nvm_params_82571.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %e1000_init_nvm_params_82571.exit
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %device, align 2
  %36 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %35, label %if.end11.sw.epilog_crit_edge [
    i16 4260, label %if.end11.sw.bb_crit_edge
    i16 4261, label %if.end11.sw.bb_crit_edge99
    i16 4284, label %if.end11.sw.bb_crit_edge100
    i16 4309, label %if.end11.sw.bb_crit_edge101
  ]

if.end11.sw.bb_crit_edge101:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end11.sw.bb_crit_edge100:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end11.sw.bb_crit_edge99:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end11.sw.bb_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end11.sw.bb_crit_edge, %if.end11.sw.bb_crit_edge99, %if.end11.sw.bb_crit_edge100, %if.end11.sw.bb_crit_edge101
  %flags = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 85
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 16
  %or = or i32 %38, 8192
  store i32 %or, ptr %flags, align 16
  %39 = load i32, ptr @e1000_get_variants_82571.global_quad_port_a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp = icmp eq i32 %39, 0
  br i1 %cmp, label %if.then13, label %sw.bb.if.end16_crit_edge

sw.bb.if.end16_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %or15 = or i32 %38, 12288
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or15, ptr %flags, align 16
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %sw.bb.if.end16_crit_edge
  %inc = add i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp17 = icmp eq i32 %inc, 4
  %spec.store.select = select i1 %cmp17, i32 0, i32 %inc
  store i32 %spec.store.select, ptr @e1000_get_variants_82571.global_quad_port_a, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end16, %if.end11.sw.epilog_crit_edge
  %41 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %42, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.bb22
    i32 2, label %sw.bb60
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb22:                                          ; preds = %sw.epilog
  %44 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %device, align 2
  %46 = add i16 %45, -4193
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %46)
  %switch = icmp ult i16 %46, -3
  %47 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool36.not = icmp eq i32 %47, 0
  %or.cond98 = select i1 %switch, i1 true, i1 %tobool36.not
  br i1 %or.cond98, label %sw.bb22.if.end40_crit_edge, label %if.then37

sw.bb22.if.end40_crit_edge:                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then37:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  %flags38 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 85
  %48 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags38, align 16
  %and39 = and i32 %49, -9
  store i32 %and39, ptr %flags38, align 16
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %sw.bb22.if.end40_crit_edge
  %flags41 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 85
  %50 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags41, align 16
  %52 = and i32 %51, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %52)
  %53 = icmp eq i32 %52, 8192
  br i1 %53, label %if.then48, label %if.end40.if.end51_crit_edge

if.end40.if.end51_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then48:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %and50 = and i32 %51, -9
  %54 = ptrtoint ptr %flags41 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and50, ptr %flags41, align 16
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end40.if.end51_crit_edge
  %55 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4314, i16 %56)
  %cmp54 = icmp eq i16 %56, 4314
  br i1 %cmp54, label %if.then56, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags41, align 16
  %and58 = and i32 %58, -9
  store i32 %and58, ptr %flags41, align 16
  br label %cleanup

sw.bb60:                                          ; preds = %sw.epilog
  %59 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4250, i16 %60)
  %cmp63 = icmp eq i16 %60, 4250
  br i1 %cmp63, label %if.then65, label %sw.bb60.cleanup_crit_edge

sw.bb60.cleanup_crit_edge:                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then65:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #7
  %flags66 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 85
  %61 = ptrtoint ptr %flags66 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags66, align 16
  %or67 = or i32 %62, 128
  store i32 %or67, ptr %flags66, align 16
  %max_hw_frame_size = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 83
  %63 = ptrtoint ptr %max_hw_frame_size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 9234, ptr %max_hw_frame_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %sw.bb60.cleanup_crit_edge, %if.then56, %if.end51.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %e1000_init_nvm_params_82571.exit.cleanup_crit_edge
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @e1000_init_mac_params_82571(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %pdev = getelementptr inbounds %struct.e1000_adapter, ptr %1, i32 0, i32 65
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 32
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %5, label %sw.default [
    i16 4191, label %entry.sw.epilog_crit_edge
    i16 4222, label %entry.sw.epilog_crit_edge6
    i16 4261, label %entry.sw.epilog_crit_edge7
    i16 4192, label %entry.sw.bb4_crit_edge
    i16 4313, label %entry.sw.bb4_crit_edge8
    i16 4314, label %entry.sw.bb4_crit_edge9
    i16 4223, label %entry.sw.bb4_crit_edge10
  ]

entry.sw.bb4_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb4_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb4_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.epilog_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge8, %entry.sw.bb4_crit_edge9, %entry.sw.bb4_crit_edge10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge6, %entry.sw.epilog_crit_edge7
  %.sink = phi i32 [ 1, %sw.default ], [ 3, %sw.bb4 ], [ 2, %entry.sw.epilog_crit_edge ], [ 2, %entry.sw.epilog_crit_edge6 ], [ 2, %entry.sw.epilog_crit_edge7 ]
  %e1000_setup_copper_link_82571.sink = phi ptr [ @e1000_setup_copper_link_82571, %sw.default ], [ @e1000_setup_fiber_serdes_link_82571, %sw.bb4 ], [ @e1000_setup_fiber_serdes_link_82571, %entry.sw.epilog_crit_edge ], [ @e1000_setup_fiber_serdes_link_82571, %entry.sw.epilog_crit_edge6 ], [ @e1000_setup_fiber_serdes_link_82571, %entry.sw.epilog_crit_edge7 ]
  %e1000e_check_for_copper_link.sink = phi ptr [ @e1000e_check_for_copper_link, %sw.default ], [ @e1000_check_for_serdes_link_82571, %sw.bb4 ], [ @e1000e_check_for_fiber_link, %entry.sw.epilog_crit_edge ], [ @e1000e_check_for_fiber_link, %entry.sw.epilog_crit_edge6 ], [ @e1000e_check_for_fiber_link, %entry.sw.epilog_crit_edge7 ]
  %e1000e_get_speed_and_duplex_copper.sink = phi ptr [ @e1000e_get_speed_and_duplex_copper, %sw.default ], [ @e1000e_get_speed_and_duplex_fiber_serdes, %sw.bb4 ], [ @e1000e_get_speed_and_duplex_fiber_serdes, %entry.sw.epilog_crit_edge ], [ @e1000e_get_speed_and_duplex_fiber_serdes, %entry.sw.epilog_crit_edge6 ], [ @e1000e_get_speed_and_duplex_fiber_serdes, %entry.sw.epilog_crit_edge7 ]
  %media_type14 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 12
  %7 = ptrtoint ptr %media_type14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %media_type14, align 4
  %setup_physical_interface16 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 16
  %8 = ptrtoint ptr %setup_physical_interface16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %e1000_setup_copper_link_82571.sink, ptr %setup_physical_interface16, align 4
  %check_for_link18 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 3
  %9 = ptrtoint ptr %check_for_link18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %e1000e_check_for_copper_link.sink, ptr %check_for_link18, align 4
  %get_link_up_info20 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 9
  %10 = ptrtoint ptr %get_link_up_info20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %e1000e_get_speed_and_duplex_copper.sink, ptr %get_link_up_info20, align 4
  %mta_reg_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 16
  %11 = ptrtoint ptr %mta_reg_count to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 128, ptr %mta_reg_count, align 2
  %rar_entry_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 18
  %12 = ptrtoint ptr %rar_entry_count to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 15, ptr %rar_entry_count, align 4
  %adaptive_ifs = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 20
  %13 = ptrtoint ptr %adaptive_ifs to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %adaptive_ifs, align 1
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %15, label %sw.default35 [
    i32 2, label %sw.bb22
    i32 3, label %sw.epilog.sw.bb28_crit_edge
    i32 4, label %sw.epilog.sw.bb28_crit_edge11
  ]

sw.epilog.sw.bb28_crit_edge11:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28

sw.epilog.sw.bb28_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28

sw.bb22:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %set_lan_id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 8
  %17 = ptrtoint ptr %set_lan_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @e1000_set_lan_id_single_port, ptr %set_lan_id, align 4
  %check_mng_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 2
  %18 = ptrtoint ptr %check_mng_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @e1000e_check_mng_mode_generic, ptr %check_mng_mode, align 4
  %led_on = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 10
  %19 = ptrtoint ptr %led_on to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @e1000e_led_on_generic, ptr %led_on, align 4
  %blink_led = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 1
  %20 = ptrtoint ptr %blink_led to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @e1000e_blink_led_generic, ptr %blink_led, align 4
  %has_fwsm = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 21
  %21 = ptrtoint ptr %has_fwsm to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %has_fwsm, align 4
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %22 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 23380
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %25 = and i32 %24, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool = icmp ne i32 %25, 0
  %arc_subsystem_valid = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 22
  %frombool = zext i1 %tobool to i8
  %26 = ptrtoint ptr %arc_subsystem_valid to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool, ptr %arc_subsystem_valid, align 1
  br label %sw.epilog43

sw.bb28:                                          ; preds = %sw.epilog.sw.bb28_crit_edge, %sw.epilog.sw.bb28_crit_edge11
  %set_lan_id30 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 8
  %27 = ptrtoint ptr %set_lan_id30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @e1000_set_lan_id_single_port, ptr %set_lan_id30, align 4
  %check_mng_mode32 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 2
  %28 = ptrtoint ptr %check_mng_mode32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @e1000_check_mng_mode_82574, ptr %check_mng_mode32, align 4
  %led_on34 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 10
  %29 = ptrtoint ptr %led_on34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @e1000_led_on_82574, ptr %led_on34, align 4
  br label %sw.epilog43

sw.default35:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %check_mng_mode37 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 2
  %30 = ptrtoint ptr %check_mng_mode37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @e1000e_check_mng_mode_generic, ptr %check_mng_mode37, align 4
  %led_on39 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 10
  %31 = ptrtoint ptr %led_on39 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @e1000e_led_on_generic, ptr %led_on39, align 4
  %blink_led41 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 1
  %32 = ptrtoint ptr %blink_led41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @e1000e_blink_led_generic, ptr %blink_led41, align 4
  %has_fwsm42 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 21
  %33 = ptrtoint ptr %has_fwsm42 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %has_fwsm42, align 4
  br label %sw.epilog43

sw.epilog43:                                      ; preds = %sw.default35, %sw.bb28, %sw.bb22
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %switch = icmp ult i32 %35, 2
  br i1 %switch, label %sw.bb46, label %sw.epilog43.if.then53_crit_edge

sw.epilog43.if.then53_crit_edge:                  ; preds = %sw.epilog43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then53

sw.bb46:                                          ; preds = %sw.epilog43
  %hw_addr.i1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %36 = ptrtoint ptr %hw_addr.i1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr.i1, align 4
  %add.ptr.i2 = getelementptr i8, ptr %37, i32 23384
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #5, !srcloc !122
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %and48 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then, label %sw.bb46.if.end72_crit_edge

sw.bb46.if.end72_crit_edge:                       ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.then:                                          ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %39, 2
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23384, i32 noundef %or) #5
  br label %if.then53

if.then53:                                        ; preds = %if.then, %sw.epilog43.if.then53_crit_edge
  %hw_addr.i3 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %40 = ptrtoint ptr %hw_addr.i3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_addr.i3, align 4
  %add.ptr.i4 = getelementptr i8, ptr %41, i32 23376
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #5, !srcloc !122
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %and55 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then53.if.end70_crit_edge, label %do.body58

if.then53.if.end70_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

do.body58:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_init_mac_params_82571.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_init_mac_params_82571, %if.then65)) #5
          to label %if.end70 [label %if.then65], !srcloc !124

if.then65:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %45, i32 0, i32 64
  %46 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_init_mac_params_82571.__UNIQUE_ID_ddebug355, ptr noundef %47, ptr noundef nonnull @.str.3) #5
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %do.body58, %if.then53.if.end70_crit_edge
  %and71 = and i32 %43, -2
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23376, i32 noundef %and71) #5
  br label %if.end72

if.end72:                                         ; preds = %if.end70, %sw.bb46.if.end72_crit_edge
  %smb_counter = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %smb_counter to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %smb_counter, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_init_phy_params_82571(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %phy_id.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %type, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %addr, align 4
  %autoneg_mask = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 14
  %4 = ptrtoint ptr %autoneg_mask to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 47, ptr %autoneg_mask, align 2
  %reset_delay_us = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 10
  %5 = ptrtoint ptr %reset_delay_us to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 100, ptr %reset_delay_us, align 4
  %power_up = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 20
  %6 = ptrtoint ptr %power_up to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @e1000_power_up_phy_copper, ptr %power_up, align 4
  %power_down = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 21
  %7 = ptrtoint ptr %power_down to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @e1000_power_down_phy_copper_82571, ptr %power_down, align 4
  %type4 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type4, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge115
    i32 2, label %sw.epilog.thread
    i32 3, label %if.end.sw.bb8_crit_edge
    i32 4, label %if.end.sw.bb8_crit_edge116
  ]

if.end.sw.bb8_crit_edge116:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8

if.end.sw.bb8_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8

if.end.sw.bb_crit_edge115:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge115
  %type5 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %type5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %type5, align 4
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end
  %type7 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %type7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %type7, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_id.i) #5
  %call.i = tail call i32 @e1000e_get_phy_id(ptr noundef %hw) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_id.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %sw.epilog.thread.if.end24_crit_edge, label %sw.epilog.thread.do.body15_crit_edge

sw.epilog.thread.do.body15_crit_edge:             ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

sw.epilog.thread.if.end24_crit_edge:              ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

sw.bb8:                                           ; preds = %if.end.sw.bb8_crit_edge, %if.end.sw.bb8_crit_edge116
  %type9 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %type9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %type9, align 4
  %14 = ptrtoint ptr %phy1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @e1000_get_hw_semaphore_82574, ptr %phy1, align 4
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %15 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @e1000_put_hw_semaphore_82574, ptr %release, align 4
  %set_d0_lplu_state = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 15
  %16 = ptrtoint ptr %set_d0_lplu_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @e1000_set_d0_lplu_state_82574, ptr %set_d0_lplu_state, align 4
  %set_d3_lplu_state = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 16
  %17 = ptrtoint ptr %set_d3_lplu_state to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @e1000_set_d3_lplu_state_82574, ptr %set_d3_lplu_state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_id.i) #5
  %18 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %phy_id.i, align 2
  %19 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %9, label %sw.epilog.e1000_get_phy_id_82571.exit.thread_crit_edge [
    i32 0, label %sw.epilog.sw.bb.i_crit_edge
    i32 1, label %sw.epilog.sw.bb.i_crit_edge117
    i32 4, label %sw.epilog.sw.bb3.i_crit_edge
    i32 3, label %sw.epilog.sw.bb3.i_crit_edge118
  ]

sw.epilog.sw.bb3.i_crit_edge118:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

sw.epilog.sw.bb3.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

sw.epilog.sw.bb.i_crit_edge117:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.epilog.sw.bb.i_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.epilog.e1000_get_phy_id_82571.exit.thread_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000_get_phy_id_82571.exit.thread

sw.bb.i:                                          ; preds = %sw.epilog.sw.bb.i_crit_edge, %sw.epilog.sw.bb.i_crit_edge117
  %id.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 9
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 44565376, ptr %id.i, align 4
  br label %e1000_get_phy_id_82571.exit.thread107

sw.bb3.i:                                         ; preds = %sw.epilog.sw.bb3.i_crit_edge, %sw.epilog.sw.bb3.i_crit_edge118
  %read_reg.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %21 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i = call i32 %22(ptr noundef %hw, i32 noundef 2, ptr noundef nonnull %phy_id.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb3.i.e1000_get_phy_id_82571.exit.thread_crit_edge

sw.bb3.i.e1000_get_phy_id_82571.exit.thread_crit_edge: ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000_get_phy_id_82571.exit.thread

if.end.i:                                         ; preds = %sw.bb3.i
  %23 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %phy_id.i, align 2
  %conv.i = zext i16 %24 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %id5.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 9
  %25 = ptrtoint ptr %id5.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl.i, ptr %id5.i, align 4
  call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #5
  %26 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_reg.i.i, align 4
  %call.i26.i = call i32 %27(ptr noundef %hw, i32 noundef 3, ptr noundef nonnull %phy_id.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool7.not.i = icmp eq i32 %call.i26.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.e1000_get_phy_id_82571.exit.thread_crit_edge

if.end.i.e1000_get_phy_id_82571.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000_get_phy_id_82571.exit.thread

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %phy_id.i, align 2
  %conv10.i = zext i16 %29 to i32
  %30 = ptrtoint ptr %id5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id5.i, align 4
  %or.i = or i32 %31, %conv10.i
  store i32 %or.i, ptr %id5.i, align 4
  %32 = and i16 %29, 15
  %and.i = zext i16 %32 to i32
  %revision.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 11
  %33 = ptrtoint ptr %revision.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.i, ptr %revision.i, align 4
  br label %e1000_get_phy_id_82571.exit.thread107

e1000_get_phy_id_82571.exit.thread:               ; preds = %if.end.i.e1000_get_phy_id_82571.exit.thread_crit_edge, %sw.bb3.i.e1000_get_phy_id_82571.exit.thread_crit_edge, %sw.epilog.e1000_get_phy_id_82571.exit.thread_crit_edge
  %retval.0.i102.ph = phi i32 [ -2, %sw.epilog.e1000_get_phy_id_82571.exit.thread_crit_edge ], [ %call.i26.i, %if.end.i.e1000_get_phy_id_82571.exit.thread_crit_edge ], [ %call.i.i, %sw.bb3.i.e1000_get_phy_id_82571.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_id.i) #5
  br label %do.body15

e1000_get_phy_id_82571.exit.thread107:            ; preds = %if.end9.i, %sw.bb.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_id.i) #5
  br label %if.end24

do.body15:                                        ; preds = %e1000_get_phy_id_82571.exit.thread, %sw.epilog.thread.do.body15_crit_edge
  %retval.0.i102105 = phi i32 [ %retval.0.i102.ph, %e1000_get_phy_id_82571.exit.thread ], [ %call.i, %sw.epilog.thread.do.body15_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_init_phy_params_82571.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_init_phy_params_82571, %if.then20)) #5
          to label %cleanup [label %if.then20], !srcloc !124

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %35, i32 0, i32 64
  %36 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_init_phy_params_82571.__UNIQUE_ID_ddebug353, ptr noundef %37, ptr noundef nonnull @.str.19) #5
  br label %cleanup

if.end24:                                         ; preds = %e1000_get_phy_id_82571.exit.thread107, %sw.epilog.thread.if.end24_crit_edge
  %38 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type4, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %39, label %if.end24.do.body46_crit_edge [
    i32 0, label %if.end24.sw.bb27_crit_edge
    i32 1, label %if.end24.sw.bb27_crit_edge119
    i32 2, label %sw.bb31
    i32 3, label %if.end24.sw.epilog42_crit_edge
    i32 4, label %if.end24.sw.epilog42_crit_edge120
  ]

if.end24.sw.epilog42_crit_edge120:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog42

if.end24.sw.epilog42_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog42

if.end24.sw.bb27_crit_edge119:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb27

if.end24.sw.bb27_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb27

if.end24.do.body46_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body46

sw.bb27:                                          ; preds = %if.end24.sw.bb27_crit_edge, %if.end24.sw.bb27_crit_edge119
  %id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 9
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44565376, i32 %42)
  %cmp28.not = icmp eq i32 %42, 44565376
  br i1 %cmp28.not, label %sw.bb27.cleanup_crit_edge, label %sw.bb27.do.body46_crit_edge

sw.bb27.do.body46_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body46

sw.bb27.cleanup_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb31:                                          ; preds = %if.end24
  %id32 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 9
  %43 = ptrtoint ptr %id32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21040320, i32 %44)
  %cmp33.not = icmp eq i32 %44, 21040320
  br i1 %cmp33.not, label %sw.bb31.cleanup_crit_edge, label %sw.bb31.do.body46_crit_edge

sw.bb31.do.body46_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body46

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog42:                                      ; preds = %if.end24.sw.epilog42_crit_edge, %if.end24.sw.epilog42_crit_edge120
  %id37 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 9
  %45 = ptrtoint ptr %id37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21040305, i32 %46)
  %cmp38.not = icmp eq i32 %46, 21040305
  br i1 %cmp38.not, label %sw.epilog42.cleanup_crit_edge, label %sw.epilog42.do.body46_crit_edge

sw.epilog42.do.body46_crit_edge:                  ; preds = %sw.epilog42
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body46

sw.epilog42.cleanup_crit_edge:                    ; preds = %sw.epilog42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body46:                                        ; preds = %sw.epilog42.do.body46_crit_edge, %sw.bb31.do.body46_crit_edge, %sw.bb27.do.body46_crit_edge, %if.end24.do.body46_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_init_phy_params_82571.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_init_phy_params_82571, %if.then58)) #5
          to label %cleanup [label %if.then58], !srcloc !124

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw, align 4
  %netdev60 = getelementptr inbounds %struct.e1000_adapter, ptr %48, i32 0, i32 64
  %49 = ptrtoint ptr %netdev60 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %netdev60, align 4
  %id61 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 9
  %51 = ptrtoint ptr %id61 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id61, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_init_phy_params_82571.__UNIQUE_ID_ddebug354, ptr noundef %50, ptr noundef nonnull @.str.20, i32 noundef %52) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %do.body46, %sw.epilog42.cleanup_crit_edge, %sw.bb31.cleanup_crit_edge, %sw.bb27.cleanup_crit_edge, %if.then20, %do.body15, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -2, %if.end.cleanup_crit_edge ], [ %retval.0.i102105, %if.then20 ], [ -2, %if.then58 ], [ 0, %sw.epilog42.cleanup_crit_edge ], [ %retval.0.i102105, %do.body15 ], [ 0, %sw.bb27.cleanup_crit_edge ], [ 0, %sw.bb31.cleanup_crit_edge ], [ -2, %do.body46 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_setup_fiber_serdes_link_82571(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__ew32(ptr noundef %hw, i32 noundef 36, i32 noundef 1024) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %call = tail call i32 @e1000e_setup_fiber_serdes_link(ptr noundef %hw) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_check_for_fiber_link(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_speed_and_duplex_fiber_serdes(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_check_for_serdes_link_82571(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !122
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !122
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %8 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i370 = getelementptr i8, ptr %9, i32 384
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i370) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %11 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i372 = getelementptr i8, ptr %12, i32 384
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i372) #5, !srcloc !122
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %and = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %and5 = and i32 %14, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %tobool.not.not, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %if.then, label %if.else185

if.then:                                          ; preds = %entry
  %serdes_link_state = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 29
  %15 = ptrtoint ptr %serdes_link_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %serdes_link_state, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %16, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb21
    i32 1, label %sw.bb53
  ]

sw.bb:                                            ; preds = %if.then
  %and7 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %serdes_link_state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %serdes_link_state, align 4
  %serdes_has_link = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 27
  %19 = ptrtoint ptr %serdes_has_link to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %serdes_has_link, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_check_for_serdes_link_82571, %if.then16)) #5
          to label %if.end277 [label %if.then16], !srcloc !124

if.then16:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %21, i32 0, i32 64
  %22 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug367, ptr noundef %23, ptr noundef nonnull @.str.5) #5
  br label %if.end277

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %serdes_has_link19 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 27
  %24 = ptrtoint ptr %serdes_has_link19 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %serdes_has_link19, align 2
  br label %if.end277

sw.bb21:                                          ; preds = %if.then
  %and22 = and i32 %14, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else50, label %if.then24

if.then24:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #7
  %txcw25 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 10
  %25 = ptrtoint ptr %txcw25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %txcw25, align 4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 376, i32 noundef %26) #5
  %and26 = and i32 %3, -65
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %and26) #5
  %27 = ptrtoint ptr %serdes_link_state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %serdes_link_state, align 4
  %serdes_has_link28 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 27
  %28 = ptrtoint ptr %serdes_has_link28 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %serdes_has_link28, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_check_for_serdes_link_82571, %if.then42)) #5
          to label %if.end277 [label %if.then42], !srcloc !124

if.then42:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %netdev44 = getelementptr inbounds %struct.e1000_adapter, ptr %30, i32 0, i32 64
  %31 = ptrtoint ptr %netdev44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev44, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug368, ptr noundef %32, ptr noundef nonnull @.str.6) #5
  br label %if.end277

if.else50:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #7
  %serdes_has_link51 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 27
  %33 = ptrtoint ptr %serdes_has_link51 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %serdes_has_link51, align 2
  br label %if.end277

sw.bb53:                                          ; preds = %if.then
  %and54 = and i32 %14, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else107, label %if.then56

if.then56:                                        ; preds = %sw.bb53
  %and57 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.else83, label %if.then59

if.then59:                                        ; preds = %if.then56
  %34 = ptrtoint ptr %serdes_link_state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %serdes_link_state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_check_for_serdes_link_82571, %if.then74)) #5
          to label %do.end81 [label %if.then74], !srcloc !124

if.then74:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 4
  %netdev76 = getelementptr inbounds %struct.e1000_adapter, ptr %36, i32 0, i32 64
  %37 = ptrtoint ptr %netdev76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev76, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug369, ptr noundef %38, ptr noundef nonnull @.str.7) #5
  br label %do.end81

do.end81:                                         ; preds = %if.then74, %if.then59
  %serdes_has_link82 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 27
  %39 = ptrtoint ptr %serdes_has_link82 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %serdes_has_link82, align 2
  br label %if.end277

if.else83:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %serdes_link_state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %serdes_link_state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_check_for_serdes_link_82571, %if.then98)) #5
          to label %if.end277 [label %if.then98], !srcloc !124

if.then98:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw, align 4
  %netdev100 = getelementptr inbounds %struct.e1000_adapter, ptr %42, i32 0, i32 64
  %43 = ptrtoint ptr %netdev100 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev100, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug370, ptr noundef %44, ptr noundef nonnull @.str.8) #5
  br label %if.end277

if.else107:                                       ; preds = %sw.bb53
  %txcw108 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 10
  %45 = ptrtoint ptr %txcw108 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %txcw108, align 4
  %and109 = and i32 %46, 2147483647
  tail call void @__ew32(ptr noundef %hw, i32 noundef 376, i32 noundef %and109) #5
  %or = or i32 %3, 65
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %or) #5
  %call110 = tail call i32 @e1000e_config_fc_after_link_up(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end134, label %do.body114

do.body114:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_check_for_serdes_link_82571, %if.then126)) #5
          to label %if.end277 [label %if.then126], !srcloc !124

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw, align 4
  %netdev128 = getelementptr inbounds %struct.e1000_adapter, ptr %48, i32 0, i32 64
  %49 = ptrtoint ptr %netdev128 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %netdev128, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug371, ptr noundef %50, ptr noundef nonnull @.str.9) #5
  br label %if.end277

if.end134:                                        ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %serdes_link_state to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3, ptr %serdes_link_state, align 4
  %serdes_has_link136 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 27
  %52 = ptrtoint ptr %serdes_has_link136 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %serdes_has_link136, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_check_for_serdes_link_82571, %if.then150)) #5
          to label %if.end277 [label %if.then150], !srcloc !124

if.then150:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw, align 4
  %netdev152 = getelementptr inbounds %struct.e1000_adapter, ptr %54, i32 0, i32 64
  %55 = ptrtoint ptr %netdev152 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %netdev152, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug372, ptr noundef %56, ptr noundef nonnull @.str.10) #5
  br label %if.end277

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %txcw160 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 10
  %57 = ptrtoint ptr %txcw160 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %txcw160, align 4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 376, i32 noundef %58) #5
  %and161 = and i32 %3, -65
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %and161) #5
  %59 = ptrtoint ptr %serdes_link_state to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %serdes_link_state, align 4
  %serdes_has_link163 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 27
  %60 = ptrtoint ptr %serdes_has_link163 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %serdes_has_link163, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_check_for_serdes_link_82571, %if.then177)) #5
          to label %if.end277 [label %if.then177], !srcloc !124

if.then177:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw, align 4
  %netdev179 = getelementptr inbounds %struct.e1000_adapter, ptr %62, i32 0, i32 64
  %63 = ptrtoint ptr %netdev179 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %netdev179, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug373, ptr noundef %64, ptr noundef nonnull @.str.11) #5
  br label %if.end277

if.else185:                                       ; preds = %entry
  br i1 %tobool.not, label %if.then188, label %for.body.preheader

for.body.preheader:                               ; preds = %if.else185
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %65 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i374 = getelementptr i8, ptr %66, i32 384
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i374) #5, !srcloc !122
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %69 = and i32 %68, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %69)
  %.not = icmp eq i32 %69, 1610612736
  %and221 = and i32 %68, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222.not = icmp eq i32 %and221, 0
  %or.cond340 = or i1 %.not, %tobool222.not
  br i1 %or.cond340, label %for.inc, label %for.body.preheader.if.then223_crit_edge

for.body.preheader.if.then223_crit_edge:          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then223

if.then188:                                       ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #7
  %serdes_has_link189 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 27
  %70 = ptrtoint ptr %serdes_has_link189 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %serdes_has_link189, align 2
  %serdes_link_state190 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 29
  %71 = ptrtoint ptr %serdes_link_state190 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %serdes_link_state190, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_check_for_serdes_link_82571, %if.then204)) #5
          to label %if.end277 [label %if.then204], !srcloc !124

if.then204:                                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw, align 4
  %netdev206 = getelementptr inbounds %struct.e1000_adapter, ptr %73, i32 0, i32 64
  %74 = ptrtoint ptr %netdev206 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %netdev206, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug374, ptr noundef %75, ptr noundef nonnull @.str.12) #5
  br label %if.end277

if.then223:                                       ; preds = %for.inc.3.if.then223_crit_edge, %for.inc.2.if.then223_crit_edge, %for.inc.1.if.then223_crit_edge, %for.inc.if.then223_crit_edge, %for.body.preheader.if.then223_crit_edge
  %serdes_has_link224 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 27
  %76 = ptrtoint ptr %serdes_has_link224 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %serdes_has_link224, align 2
  %serdes_link_state225 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 29
  %77 = ptrtoint ptr %serdes_link_state225 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %serdes_link_state225, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_check_for_serdes_link_82571, %for.end.thread)) #5
          to label %if.end277 [label %for.end.thread], !srcloc !124

for.end.thread:                                   ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw, align 4
  %netdev241 = getelementptr inbounds %struct.e1000_adapter, ptr %79, i32 0, i32 64
  %80 = ptrtoint ptr %netdev241 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %netdev241, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug375, ptr noundef %81, ptr noundef nonnull @.str.12) #5
  br label %if.end277

for.inc:                                          ; preds = %for.body.preheader
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %82 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i374.1 = getelementptr i8, ptr %83, i32 384
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i374.1) #5, !srcloc !122
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %86 = and i32 %85, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %86)
  %.not.1 = icmp eq i32 %86, 1610612736
  %and221.1 = and i32 %85, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221.1)
  %tobool222.not.1 = icmp eq i32 %and221.1, 0
  %or.cond340.1 = or i1 %.not.1, %tobool222.not.1
  br i1 %or.cond340.1, label %for.inc.1, label %for.inc.if.then223_crit_edge

for.inc.if.then223_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then223

for.inc.1:                                        ; preds = %for.inc
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %87 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i374.2 = getelementptr i8, ptr %88, i32 384
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i374.2) #5, !srcloc !122
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %91 = and i32 %90, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %91)
  %.not.2 = icmp eq i32 %91, 1610612736
  %and221.2 = and i32 %90, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221.2)
  %tobool222.not.2 = icmp eq i32 %and221.2, 0
  %or.cond340.2 = or i1 %.not.2, %tobool222.not.2
  br i1 %or.cond340.2, label %for.inc.2, label %for.inc.1.if.then223_crit_edge

for.inc.1.if.then223_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then223

for.inc.2:                                        ; preds = %for.inc.1
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %92 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i374.3 = getelementptr i8, ptr %93, i32 384
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i374.3) #5, !srcloc !122
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %96 = and i32 %95, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %96)
  %.not.3 = icmp eq i32 %96, 1610612736
  %and221.3 = and i32 %95, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221.3)
  %tobool222.not.3 = icmp eq i32 %and221.3, 0
  %or.cond340.3 = or i1 %.not.3, %tobool222.not.3
  br i1 %or.cond340.3, label %for.inc.3, label %for.inc.2.if.then223_crit_edge

for.inc.2.if.then223_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then223

for.inc.3:                                        ; preds = %for.inc.2
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %97 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i374.4 = getelementptr i8, ptr %98, i32 384
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i374.4) #5, !srcloc !122
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %101 = and i32 %100, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %101)
  %.not.4 = icmp eq i32 %101, 1610612736
  %and221.4 = and i32 %100, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221.4)
  %tobool222.not.4 = icmp eq i32 %and221.4, 0
  %or.cond340.4 = or i1 %.not.4, %tobool222.not.4
  br i1 %or.cond340.4, label %if.then249, label %for.inc.3.if.then223_crit_edge

for.inc.3.if.then223_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then223

if.then249:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %102 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i376 = getelementptr i8, ptr %103, i32 376
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i376) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %105 = or i32 %104, 128
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 376, i32 noundef %106) #5
  %serdes_link_state252 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 29
  %107 = ptrtoint ptr %serdes_link_state252 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %serdes_link_state252, align 4
  %serdes_has_link253 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 27
  %108 = ptrtoint ptr %serdes_has_link253 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %serdes_has_link253, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_check_for_serdes_link_82571, %if.then267)) #5
          to label %if.end277 [label %if.then267], !srcloc !124

if.then267:                                       ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #7
  %109 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw, align 4
  %netdev269 = getelementptr inbounds %struct.e1000_adapter, ptr %110, i32 0, i32 64
  %111 = ptrtoint ptr %netdev269 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %netdev269, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug376, ptr noundef %112, ptr noundef nonnull @.str.13) #5
  br label %if.end277

if.end277:                                        ; preds = %if.then267, %if.then249, %for.end.thread, %if.then223, %if.then204, %if.then188, %if.then177, %sw.default, %if.then150, %if.end134, %if.then126, %do.body114, %if.then98, %if.else83, %do.end81, %if.else50, %if.then42, %if.then24, %if.else, %if.then16, %if.then9
  %ret_val.0 = phi i32 [ 0, %if.then267 ], [ 0, %if.then204 ], [ 0, %if.then177 ], [ 0, %do.end81 ], [ 0, %if.then98 ], [ %call110, %if.then126 ], [ 0, %if.then150 ], [ 0, %if.then42 ], [ 0, %if.else50 ], [ 0, %if.else ], [ 0, %if.then16 ], [ 0, %if.then9 ], [ 0, %if.then24 ], [ 0, %if.else83 ], [ %call110, %do.body114 ], [ 0, %if.end134 ], [ 0, %sw.default ], [ 0, %if.then188 ], [ 0, %for.end.thread ], [ 0, %if.then249 ], [ 0, %if.then223 ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_setup_copper_link_82571(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %3 = and i32 %2, -1075314689
  %4 = or i32 %3, 1073741824
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %5) #5
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 8, label %entry.sw.bb_crit_edge14
    i32 4, label %sw.bb2
  ]

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge14
  %call1 = tail call i32 @e1000e_copper_link_setup_m88(ptr noundef %hw) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @e1000e_copper_link_setup_igp(ptr noundef %hw) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %ret_val.0 = phi i32 [ %call3, %sw.bb2 ], [ %call1, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0)
  %tobool.not = icmp eq i32 %ret_val.0, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @e1000e_setup_copper_link(ptr noundef %hw) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -2, %entry.cleanup_crit_edge ], [ %ret_val.0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_check_for_copper_link(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_speed_and_duplex_copper(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_set_lan_id_single_port(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @e1000e_check_mng_mode_generic(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_led_on_generic(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_blink_led_generic(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @e1000_check_mng_mode_82574(ptr noundef %hw) #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !125
  %read.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 1
  %1 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i16 noundef zeroext 15, i16 noundef zeroext 1, ptr noundef nonnull %data) #5
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data, align 2
  %5 = and i16 %4, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp ne i16 %5, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_led_on_82574(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ledctl_mode2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ledctl_mode2, align 4
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ledctl_mode2, align 4
  %and3 = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and3)
  %cmp4 = icmp eq i32 %and3, 14
  %or = select i1 %cmp4, i32 64, i32 0
  %ctrl.1 = or i32 %or, %1
  %8 = and i32 %7, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 3584, i32 %8)
  %cmp4.1 = icmp eq i32 %8, 3584
  %or.1 = select i1 %cmp4.1, i32 16384, i32 0
  %ctrl.1.1 = or i32 %or.1, %ctrl.1
  %9 = and i32 %7, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 917504, i32 %9)
  %cmp4.2 = icmp eq i32 %9, 917504
  %or.2 = select i1 %cmp4.2, i32 4194304, i32 0
  %ctrl.1.2 = or i32 %or.2, %ctrl.1.1
  %shr.3.mask = and i32 %7, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %shr.3.mask)
  %cmp4.3 = icmp eq i32 %shr.3.mask, 234881024
  %or.3 = select i1 %cmp4.3, i32 1073741824, i32 0
  %ctrl.1.3 = or i32 %or.3, %ctrl.1.2
  br label %if.end7

if.end7:                                          ; preds = %for.cond.preheader, %entry.if.end7_crit_edge
  %ctrl.2 = phi i32 [ %1, %entry.if.end7_crit_edge ], [ %ctrl.1.3, %for.cond.preheader ]
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3584, i32 noundef %ctrl.2) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_fiber_serdes_link(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_config_fc_after_link_up(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_copper_link_setup_m88(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_copper_link_setup_igp(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_copper_link(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_hw_semaphore_82574(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @swflag_mutex, i32 noundef 0) #5
  %call = tail call fastcc i32 @e1000_get_hw_semaphore_82573(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef nonnull @swflag_mutex) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_put_hw_semaphore_82574(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 3840
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %3 = and i32 %2, -536870913
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3840, i32 noundef %4) #5
  tail call void @mutex_unlock(ptr noundef nonnull @swflag_mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_get_hw_semaphore_82573(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 3840
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !122
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end.do.body_crit_edge ]
  %extcnf_ctrl.0 = phi i32 [ %3, %entry ], [ %7, %if.end.do.body_crit_edge ]
  %or = or i32 %extcnf_ctrl.0, 32
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3840, i32 noundef %or) #5
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %5, i32 3840
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #5, !srcloc !122
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %do.body
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #5
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %if.then3, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 3840
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %11 = and i32 %10, -536870913
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3840, i32 noundef %12) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_get_hw_semaphore_82573.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_get_hw_semaphore_82573, %if.then10)) #5
          to label %cleanup [label %if.then10], !srcloc !124

if.then10:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %14, i32 0, i32 64
  %15 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_get_hw_semaphore_82573.__UNIQUE_ID_ddebug358, ptr noundef %16, ptr noundef nonnull @.str.17) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.then10 ], [ -2, %if.then3 ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_power_up_phy_copper(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_power_down_phy_copper_82571(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %check_reset_block = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %0 = ptrtoint ptr %check_reset_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %check_reset_block, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %check_mng_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 2
  %2 = ptrtoint ptr %check_mng_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_mng_mode, align 4
  %call = tail call zeroext i1 %3(ptr noundef %hw) #5
  br i1 %call, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %4 = ptrtoint ptr %check_reset_block to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %check_reset_block, align 4
  %call6 = tail call i32 %5(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @e1000_power_down_phy_copper(ptr noundef %hw) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_d0_lplu_state_82574(ptr noundef %hw, i1 noundef zeroext %active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 3856
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %3 = and i32 %2, -33554433
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %active, i32 2, i32 0
  %data.0 = or i32 %4, %masksel
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3856, i32 noundef %data.0) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_d3_lplu_state_82574(ptr noundef %hw, i1 noundef zeroext %active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 3856
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !122
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  br i1 %active, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %3, -5
  br label %if.end14

if.else:                                          ; preds = %entry
  %autoneg_advertised = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 13
  %4 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %autoneg_advertised, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %5, label %if.else.if.end14_crit_edge [
    i16 47, label %if.else.if.then13_crit_edge
    i16 15, label %if.else.if.then13_crit_edge21
    i16 3, label %if.else.if.then13_crit_edge22
  ]

if.else.if.then13_crit_edge22:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.else.if.then13_crit_edge21:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.else.if.then13_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then13:                                        ; preds = %if.else.if.then13_crit_edge, %if.else.if.then13_crit_edge21, %if.else.if.then13_crit_edge22
  %or = or i32 %3, 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.else.if.end14_crit_edge, %if.then
  %data.0 = phi i32 [ %or, %if.then13 ], [ %and, %if.then ], [ %3, %if.else.if.end14_crit_edge ]
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3856, i32 noundef %data.0) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_power_down_phy_copper(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_id(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_id_led_init_generic(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_cleanup_led_generic(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_clear_hw_cntrs_82571(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @e1000e_clear_hw_cntrs_base(ptr noundef %hw) #5
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16476
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %4, i32 16480
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %6 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %7, i32 16484
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %9 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %10, i32 16488
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %12 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %13, i32 16492
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %15 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %16, i32 16496
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %18 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %19, i32 16600
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %21 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %22, i32 16604
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %24 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %25, i32 16608
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %27 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %28, i32 16612
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i77) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %30 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %31, i32 16616
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %33 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %34, i32 16620
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %36 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %37, i32 16388
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %39 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %40, i32 16396
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %42 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %43, i32 16436
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %45 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %46, i32 16444
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %48 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %49, i32 16632
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %51 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %52, i32 16636
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %54 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %55, i32 16564
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %57 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %58, i32 16568
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %60 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %61, i32 16572
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %63 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %64, i32 16640
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %66 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i103 = getelementptr i8, ptr %67, i32 16676
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %69 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %70, i32 16644
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %72 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %73, i32 16648
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %75 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %76, i32 16652
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %78 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %79, i32 16656
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %81 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %82, i32 16664
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %84 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %85, i32 16668
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %87 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %88, i32 16672
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_clear_vfta_82571(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %.off = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %vlan_id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vlan_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not = icmp eq i16 %3, 0
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %3 to i32
  %4 = lshr i32 %conv, 5
  %and = and i32 %4, 127
  %and8 = and i32 %conv, 31
  %shl = shl nuw i32 1, %and8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %vfta_offset.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %and, %if.then ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  %vfta_bit_in_reg.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %shl, %if.then ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.epilog
  %offset.022 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.body.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.022, i32 %vfta_offset.0)
  %cmp11 = icmp eq i32 %offset.022, %vfta_offset.0
  %spec.select = select i1 %cmp11, i32 %vfta_bit_in_reg.0, i32 0
  %shl13 = shl nuw nsw i32 %offset.022, 2
  %add = add nuw nsw i32 %shl13, 22016
  tail call void @__ew32(ptr noundef %hw, i32 noundef %add, i32 noundef %spec.select) #5
  %5 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %inc = add nuw nsw i32 %offset.022, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_bus_info_pcie(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_set_lan_id_multi_port_pcie(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_led_off_generic(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_update_mc_addr_list_generic(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_reset_hw_82571(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @e1000e_disable_pcie_master(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.body11_crit_edge, label %do.body1

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body11

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_reset_hw_82571.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_reset_hw_82571, %if.then6)) #5
          to label %do.body11 [label %if.then6], !srcloc !124

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_reset_hw_82571.__UNIQUE_ID_ddebug361, ptr noundef %3, ptr noundef nonnull @.str.22) #5
  br label %do.body11

do.body11:                                        ; preds = %if.then6, %do.body1, %entry.do.body11_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_reset_hw_82571.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_reset_hw_82571, %if.then23)) #5
          to label %do.end30 [label %if.then23], !srcloc !124

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %netdev25 = getelementptr inbounds %struct.e1000_adapter, ptr %5, i32 0, i32 64
  %6 = ptrtoint ptr %netdev25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_reset_hw_82571.__UNIQUE_ID_ddebug362, ptr noundef %7, ptr noundef nonnull @.str.23) #5
  br label %do.end30

do.end30:                                         ; preds = %if.then23, %do.body11
  tail call void @__ew32(ptr noundef %hw, i32 noundef 216, i32 noundef -1) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 256, i32 noundef 0) #5
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 1024
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %11 = and i32 %10, -33554433
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 1024, i32 noundef %12) #5
  %13 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %17, label %do.end30.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %do.end30.sw.bb34_crit_edge
    i32 4, label %do.end30.sw.bb34_crit_edge167
  ]

do.end30.sw.bb34_crit_edge167:                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb34

do.end30.sw.bb34_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb34

do.end30.sw.epilog_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = tail call fastcc i32 @e1000_get_hw_semaphore_82573(ptr noundef %hw)
  br label %sw.epilog

sw.bb34:                                          ; preds = %do.end30.sw.bb34_crit_edge, %do.end30.sw.bb34_crit_edge167
  tail call void @mutex_lock_nested(ptr noundef nonnull @swflag_mutex, i32 noundef 0) #5
  %call.i = tail call fastcc i32 @e1000_get_hw_semaphore_82573(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb34.sw.epilog_crit_edge, label %if.then.i

sw.bb34.sw.epilog_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef nonnull @swflag_mutex) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %sw.bb34.sw.epilog_crit_edge, %sw.bb, %do.end30.sw.epilog_crit_edge
  %ret_val.0 = phi i32 [ %call, %do.end30.sw.epilog_crit_edge ], [ %call33, %sw.bb ], [ 0, %sw.bb34.sw.epilog_crit_edge ], [ %call.i, %if.then.i ]
  %19 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_addr.i, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_reset_hw_82571.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_reset_hw_82571, %if.then50)) #5
          to label %do.end57 [label %if.then50], !srcloc !124

if.then50:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %netdev52 = getelementptr inbounds %struct.e1000_adapter, ptr %23, i32 0, i32 64
  %24 = ptrtoint ptr %netdev52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev52, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_reset_hw_82571.__UNIQUE_ID_ddebug363, ptr noundef %25, ptr noundef nonnull @.str.24) #5
  br label %do.end57

do.end57:                                         ; preds = %if.then50, %sw.epilog
  %26 = or i32 %21, 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %27) #5
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %29, label %do.end57.sw.epilog69_crit_edge [
    i32 2, label %sw.bb60
    i32 3, label %do.end57.sw.bb64_crit_edge
    i32 4, label %do.end57.sw.bb64_crit_edge168
  ]

do.end57.sw.bb64_crit_edge168:                    ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

do.end57.sw.bb64_crit_edge:                       ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

do.end57.sw.epilog69_crit_edge:                   ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog69

sw.bb60:                                          ; preds = %do.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0)
  %tobool61.not = icmp eq i32 %ret_val.0, 0
  br i1 %tobool61.not, label %if.then62, label %sw.bb60.sw.epilog69_crit_edge

sw.bb60.sw.epilog69_crit_edge:                    ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog69

if.then62:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 3840
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %34 = and i32 %33, -536870913
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3840, i32 noundef %35) #5
  br label %sw.epilog69

sw.bb64:                                          ; preds = %do.end57.sw.bb64_crit_edge, %do.end57.sw.bb64_crit_edge168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0)
  %tobool65.not = icmp eq i32 %ret_val.0, 0
  br i1 %tobool65.not, label %if.then66, label %sw.bb64.sw.epilog69_crit_edge

sw.bb64.sw.epilog69_crit_edge:                    ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog69

if.then66:                                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 3840
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %39 = and i32 %38, -536870913
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3840, i32 noundef %40) #5
  tail call void @mutex_unlock(ptr noundef nonnull @swflag_mutex) #5
  br label %sw.epilog69

sw.epilog69:                                      ; preds = %if.then66, %sw.bb64.sw.epilog69_crit_edge, %if.then62, %sw.bb60.sw.epilog69_crit_edge, %do.end57.sw.epilog69_crit_edge
  %type70 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %type70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp = icmp eq i32 %42, 3
  br i1 %cmp, label %if.then71, label %sw.epilog69.if.end75_crit_edge

sw.epilog69.if.end75_crit_edge:                   ; preds = %sw.epilog69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

if.then71:                                        ; preds = %sw.epilog69
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %43 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i156 = getelementptr i8, ptr %44, i32 24
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %46 = or i32 %45, 2097152
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 24, i32 noundef %47) #5
  %48 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i158 = getelementptr i8, ptr %49, i32 8
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i158) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %sw.epilog69.if.end75_crit_edge
  %call76 = tail call i32 @e1000e_get_auto_rd_done(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end79:                                         ; preds = %if.end75
  %51 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %52, label %if.end79.sw.epilog87_crit_edge [
    i32 0, label %if.end79.sw.bb82_crit_edge
    i32 1, label %if.end79.sw.bb82_crit_edge169
    i32 2, label %if.end79.sw.bb85_crit_edge
    i32 3, label %if.end79.sw.bb85_crit_edge170
    i32 4, label %if.end79.sw.bb85_crit_edge171
  ]

if.end79.sw.bb85_crit_edge171:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb85

if.end79.sw.bb85_crit_edge170:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb85

if.end79.sw.bb85_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb85

if.end79.sw.bb82_crit_edge169:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb82

if.end79.sw.bb82_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb82

if.end79.sw.epilog87_crit_edge:                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog87

sw.bb82:                                          ; preds = %if.end79.sw.bb82_crit_edge, %if.end79.sw.bb82_crit_edge169
  %54 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i160 = getelementptr i8, ptr %55, i32 16
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i160) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %57 = and i32 %56, 1073741823
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %58) #5
  br label %sw.epilog87

sw.bb85:                                          ; preds = %if.end79.sw.bb85_crit_edge, %if.end79.sw.bb85_crit_edge170, %if.end79.sw.bb85_crit_edge171
  tail call void @msleep(i32 noundef 25) #5
  br label %sw.epilog87

sw.epilog87:                                      ; preds = %sw.bb85, %sw.bb82, %if.end79.sw.epilog87_crit_edge
  tail call void @__ew32(ptr noundef %hw, i32 noundef 216, i32 noundef -1) #5
  %59 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %60, i32 192
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i162) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %62 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp91 = icmp eq i32 %63, 0
  br i1 %cmp91, label %if.then92, label %sw.epilog87.if.end97_crit_edge

sw.epilog87.if.end97_crit_edge:                   ; preds = %sw.epilog87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then92:                                        ; preds = %sw.epilog87
  %call93 = tail call i32 @e1000_check_alt_mac_addr_generic(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.then92.cleanup_crit_edge

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end96:                                         ; preds = %if.then92
  %64 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.not.i = icmp eq i32 %65, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end96.if.end97_crit_edge

if.end96.if.end97_crit_edge:                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.end.i:                                         ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  %dev_spec.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9
  %66 = ptrtoint ptr %dev_spec.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %dev_spec.i, align 4
  %rar_set.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 20
  %67 = ptrtoint ptr %rar_set.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rar_set.i, align 4
  %addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 1
  %rar_entry_count.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 18
  %69 = ptrtoint ptr %rar_entry_count.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %rar_entry_count.i, align 4
  %conv.i = zext i16 %70 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %call.i163 = tail call i32 %68(ptr noundef %hw, ptr noundef %addr.i, i32 noundef %sub.i) #5
  br label %if.end97

if.end97:                                         ; preds = %if.end.i, %if.end96.if.end97_crit_edge, %sw.epilog87.if.end97_crit_edge
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 12
  %71 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %72)
  %cmp98 = icmp eq i32 %72, 3
  br i1 %cmp98, label %if.then99, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then99:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  %serdes_link_state = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 29
  %73 = ptrtoint ptr %serdes_link_state to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %serdes_link_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %if.end97.cleanup_crit_edge, %if.then92.cleanup_crit_edge, %if.end75.cleanup_crit_edge
  %retval.0 = phi i32 [ %call76, %if.end75.cleanup_crit_edge ], [ %call93, %if.then92.cleanup_crit_edge ], [ 0, %if.then99 ], [ 0, %if.end97.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_init_hw_82571(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mac1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3
  %rar_entry_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 18
  %0 = ptrtoint ptr %rar_entry_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rar_entry_count, align 4
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 14376
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %5 = or i32 %4, 16384
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 14376, i32 noundef %6) #5
  %7 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i131.i = getelementptr i8, ptr %8, i32 14632
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %10 = or i32 %9, 16384
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 14632, i32 noundef %11) #5
  %12 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i133.i = getelementptr i8, ptr %13, i32 14400
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %15 = and i32 %14, -121
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %type.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %18, label %entry.sw.epilog.i_crit_edge [
    i32 0, label %entry.sw.bb.i_crit_edge
    i32 1, label %entry.sw.bb.i_crit_edge125
    i32 3, label %entry.sw.bb5.i_crit_edge
    i32 4, label %entry.sw.bb5.i_crit_edge126
  ]

entry.sw.bb5.i_crit_edge126:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

entry.sw.bb5.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

entry.sw.bb.i_crit_edge125:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge125
  %or4.i = or i32 %16, 125829120
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %entry.sw.bb5.i_crit_edge, %entry.sw.bb5.i_crit_edge126
  %or6.i = or i32 %16, 67108864
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.bb.i, %entry.sw.epilog.i_crit_edge
  %reg.0.i = phi i32 [ %16, %entry.sw.epilog.i_crit_edge ], [ %or6.i, %sw.bb5.i ], [ %or4.i, %sw.bb.i ]
  tail call void @__ew32(ptr noundef %hw, i32 noundef 14400, i32 noundef %reg.0.i) #5
  %20 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i135.i = getelementptr i8, ptr %21, i32 14656
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %switch.i = icmp ult i32 %24, 2
  br i1 %switch.i, label %sw.bb10.i, label %sw.epilog.i.sw.epilog18.i_crit_edge

sw.epilog.i.sw.epilog18.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog18.i

sw.bb10.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i137.i = getelementptr i8, ptr %26, i32 1024
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %28 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  %29 = and i32 %22, -16504
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  %reg.1.v.i = select i1 %tobool.not.i, i32 390070272, i32 121634816
  %reg.1.i = or i32 %reg.1.v.i, %30
  tail call void @__ew32(ptr noundef %hw, i32 noundef 14656, i32 noundef %reg.1.i) #5
  br label %sw.epilog18.i

sw.epilog18.i:                                    ; preds = %sw.bb10.i, %sw.epilog.i.sw.epilog18.i_crit_edge
  %31 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type.i, align 4
  %.off.i = add i32 %32, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch124.i = icmp ult i32 %.off.i, 3
  br i1 %switch124.i, label %sw.bb21.i, label %sw.epilog18.i.sw.epilog25.i_crit_edge

sw.epilog18.i.sw.epilog25.i_crit_edge:            ; preds = %sw.epilog18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog25.i

sw.bb21.i:                                        ; preds = %sw.epilog18.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_addr.i.i, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %36 = and i32 %35, -33
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %37) #5
  br label %sw.epilog25.i

sw.epilog25.i:                                    ; preds = %sw.bb21.i, %sw.epilog18.i.sw.epilog25.i_crit_edge
  %38 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type.i, align 4
  %.off125.i = add i32 %39, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off125.i)
  %switch126.i = icmp ult i32 %.off125.i, 3
  br i1 %switch126.i, label %sw.bb28.i, label %sw.epilog25.i.sw.epilog33.i_crit_edge

sw.epilog25.i.sw.epilog33.i_crit_edge:            ; preds = %sw.epilog25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog33.i

sw.bb28.i:                                        ; preds = %sw.epilog25.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i140.i = getelementptr i8, ptr %41, i32 24
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %43 = and i32 %42, -49153
  %44 = or i32 %43, 16384
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 24, i32 noundef %45) #5
  %46 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr.i = load i32, ptr %type.i, align 4
  br label %sw.epilog33.i

sw.epilog33.i:                                    ; preds = %sw.bb28.i, %sw.epilog25.i.sw.epilog33.i_crit_edge
  %47 = phi i32 [ %39, %sw.epilog25.i.sw.epilog33.i_crit_edge ], [ %.pr.i, %sw.bb28.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i = icmp eq i32 %47, 0
  br i1 %cmp.i, label %if.then36.i, label %sw.epilog33.i.if.end39.i_crit_edge

sw.epilog33.i.if.end39.i_crit_edge:               ; preds = %sw.epilog33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

if.then36.i:                                      ; preds = %sw.epilog33.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i142.i = getelementptr i8, ptr %49, i32 4352
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %51 = or i32 %50, 16777216
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 4352, i32 noundef %52) #5
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %sw.epilog33.i.if.end39.i_crit_edge
  %53 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %switch129.i = icmp ult i32 %54, 2
  br i1 %switch129.i, label %if.then46.i, label %if.end39.i.if.end49.i_crit_edge

if.end39.i.if.end49.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

if.then46.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i144.i = getelementptr i8, ptr %56, i32 24
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %58 = and i32 %57, -2049
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 24, i32 noundef %59) #5
  %60 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr151.i = load i32, ptr %type.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then46.i, %if.end39.i.if.end49.i_crit_edge
  %61 = phi i32 [ %54, %if.end39.i.if.end49.i_crit_edge ], [ %.pr151.i, %if.then46.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %61)
  %cmp52.i = icmp ult i32 %61, 3
  br i1 %cmp52.i, label %if.then53.i, label %if.end49.i.if.end56.i_crit_edge

if.end49.i.if.end56.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

if.then53.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i146.i = getelementptr i8, ptr %63, i32 20488
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %65 = or i32 %64, 768
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 20488, i32 noundef %66) #5
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then53.i, %if.end49.i.if.end56.i_crit_edge
  %67 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %type.i, align 4
  %.off127.i = add i32 %68, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off127.i)
  %switch128.i = icmp ult i32 %.off127.i, 2
  br i1 %switch128.i, label %sw.bb59.i, label %if.end56.i.e1000_initialize_hw_bits_82571.exit_crit_edge

if.end56.i.e1000_initialize_hw_bits_82571.exit_crit_edge: ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000_initialize_hw_bits_82571.exit

sw.bb59.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i148.i = getelementptr i8, ptr %70, i32 23296
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %72 = or i32 %71, 16384
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23296, i32 noundef %73) #5
  %74 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i150.i = getelementptr i8, ptr %75, i32 23396
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %77 = or i32 %76, 16777216
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23396, i32 noundef %78) #5
  br label %e1000_initialize_hw_bits_82571.exit

e1000_initialize_hw_bits_82571.exit:              ; preds = %sw.bb59.i, %if.end56.i.e1000_initialize_hw_bits_82571.exit_crit_edge
  %79 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mac1, align 4
  %call = tail call i32 %80(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %e1000_initialize_hw_bits_82571.exit.do.body12_crit_edge, label %do.body2

e1000_initialize_hw_bits_82571.exit.do.body12_crit_edge: ; preds = %e1000_initialize_hw_bits_82571.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

do.body2:                                         ; preds = %e1000_initialize_hw_bits_82571.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_init_hw_82571.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_init_hw_82571, %if.then7)) #5
          to label %do.body12 [label %if.then7], !srcloc !124

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %82, i32 0, i32 64
  %83 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_init_hw_82571.__UNIQUE_ID_ddebug364, ptr noundef %84, ptr noundef nonnull @.str.26) #5
  br label %do.body12

do.body12:                                        ; preds = %if.then7, %do.body2, %e1000_initialize_hw_bits_82571.exit.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_init_hw_82571.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_init_hw_82571, %if.then24)) #5
          to label %do.end31 [label %if.then24], !srcloc !124

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw, align 4
  %netdev26 = getelementptr inbounds %struct.e1000_adapter, ptr %86, i32 0, i32 64
  %87 = ptrtoint ptr %netdev26 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %netdev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_init_hw_82571.__UNIQUE_ID_ddebug365, ptr noundef %88, ptr noundef nonnull @.str.27) #5
  br label %do.end31

do.end31:                                         ; preds = %if.then24, %do.body12
  %clear_vfta = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 6
  %89 = ptrtoint ptr %clear_vfta to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %clear_vfta, align 4
  tail call void %90(ptr noundef %hw) #5
  %91 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp.not.i = icmp eq i32 %92, 0
  br i1 %cmp.not.i, label %e1000e_get_laa_state_82571.exit, label %do.end31.e1000e_get_laa_state_82571.exit.thread_crit_edge

do.end31.e1000e_get_laa_state_82571.exit.thread_crit_edge: ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000e_get_laa_state_82571.exit.thread

e1000e_get_laa_state_82571.exit:                  ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  %dev_spec.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9
  %93 = ptrtoint ptr %dev_spec.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %dev_spec.i, align 4, !range !121
  %sext = sub nsw i8 0, %94
  %dec = sext i8 %sext to i16
  %spec.select = add i16 %1, %dec
  br label %e1000e_get_laa_state_82571.exit.thread

e1000e_get_laa_state_82571.exit.thread:           ; preds = %e1000e_get_laa_state_82571.exit, %do.end31.e1000e_get_laa_state_82571.exit.thread_crit_edge
  %95 = phi i16 [ %1, %do.end31.e1000e_get_laa_state_82571.exit.thread_crit_edge ], [ %spec.select, %e1000e_get_laa_state_82571.exit ]
  tail call void @e1000e_init_rx_addrs(ptr noundef %hw, i16 noundef zeroext %95) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_init_hw_82571.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_init_hw_82571, %if.then49)) #5
          to label %do.end56 [label %if.then49], !srcloc !124

if.then49:                                        ; preds = %e1000e_get_laa_state_82571.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw, align 4
  %netdev51 = getelementptr inbounds %struct.e1000_adapter, ptr %97, i32 0, i32 64
  %98 = ptrtoint ptr %netdev51 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %netdev51, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_init_hw_82571.__UNIQUE_ID_ddebug366, ptr noundef %99, ptr noundef nonnull @.str.28) #5
  br label %do.end56

do.end56:                                         ; preds = %if.then49, %e1000e_get_laa_state_82571.exit.thread
  %mta_reg_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 16
  %100 = ptrtoint ptr %mta_reg_count to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %mta_reg_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %cmp121.not = icmp eq i16 %101, 0
  br i1 %cmp121.not, label %do.end56.for.end_crit_edge, label %do.end56.for.body_crit_edge

do.end56.for.body_crit_edge:                      ; preds = %do.end56
  br label %for.body

do.end56.for.end_crit_edge:                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end56.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %do.end56.for.body_crit_edge ]
  %shl = shl nuw nsw i32 %indvars.iv, 2
  %add = add nuw nsw i32 %shl, 20992
  tail call void @__ew32(ptr noundef %hw, i32 noundef %add, i32 noundef 0) #5
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %102 = ptrtoint ptr %mta_reg_count to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %mta_reg_count, align 2
  %104 = zext i16 %103 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %104
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end56.for.end_crit_edge
  %setup_link = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 15
  %105 = ptrtoint ptr %setup_link to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %setup_link, align 4
  %call61 = tail call i32 %106(ptr noundef %hw) #5
  %107 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %108, i32 14376
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %110 = and i32 %109, -32514
  %111 = or i32 %110, 16641
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 14376, i32 noundef %112) #5
  %113 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %type.i, align 4
  %115 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %114, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %for.end.sw.bb65_crit_edge
    i32 4, label %for.end.sw.bb65_crit_edge127
  ]

for.end.sw.bb65_crit_edge127:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb65

for.end.sw.bb65_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb65

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call64 = tail call zeroext i1 @e1000e_enable_tx_pkt_filtering(ptr noundef %hw) #5
  br label %sw.bb65

sw.bb65:                                          ; preds = %sw.bb, %for.end.sw.bb65_crit_edge, %for.end.sw.bb65_crit_edge127
  %116 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %117, i32 23296
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %119 = or i32 %118, 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %120 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %121, i32 14632
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %123 = and i32 %122, -32514
  %124 = or i32 %123, 16641
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb65
  %.sink124 = phi i32 [ %124, %sw.default ], [ %119, %sw.bb65 ]
  %.sink = phi i32 [ 14632, %sw.default ], [ 23296, %sw.bb65 ]
  %125 = tail call i32 @llvm.bswap.i32(i32 %.sink124)
  tail call void @__ew32(ptr noundef %hw, i32 noundef %.sink, i32 noundef %125) #5
  tail call void @e1000_clear_hw_cntrs_82571(ptr noundef %hw)
  ret i32 %call61
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_setup_link_82571(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %.off = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %requested_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requested_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %3)
  %cmp = icmp eq i32 %3, 255
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %requested_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %requested_mode, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %call = tail call i32 @e1000e_setup_link_generic(ptr noundef %hw) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_led_generic(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_write_vfta_generic(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_config_collision_dist_generic(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_rar_set_generic(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_read_mac_addr_82571(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then:                                          ; preds = %entry
  %call = tail call i32 @e1000_check_alt_mac_addr_generic(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end2_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %call3 = tail call i32 @e1000_read_mac_addr_generic(ptr noundef %hw) #5
  br label %return

return:                                           ; preds = %if.end2, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.return_crit_edge ], [ %call3, %if.end2 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_rar_get_count_generic(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_clear_hw_cntrs_base(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_disable_pcie_master(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_auto_rd_done(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_alt_mac_addr_generic(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_init_rx_addrs(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @e1000e_enable_tx_pkt_filtering(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_link_generic(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_read_mac_addr_generic(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_hw_semaphore_82571(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %word_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 5
  %0 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %word_size, align 4
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 1
  %smb_counter = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %smb_counter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smb_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  %spec.select = select i1 %cmp, i32 1, i32 %add
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end9.while.body_crit_edge, %entry
  %i.090 = phi i32 [ 0, %entry ], [ %inc, %if.end9.while.body_crit_edge ]
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 23376
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %while.end, label %if.end9

if.end9:                                          ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #5
  %inc = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc, %spec.select
  br i1 %exitcond.not, label %if.end9.do.body13_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end9.do.body13_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.090, i32 %spec.select)
  %cmp10 = icmp eq i32 %i.090, %spec.select
  br i1 %cmp10, label %while.end.do.body13_crit_edge, label %while.end.for.body.preheader_crit_edge

while.end.for.body.preheader_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

while.end.do.body13_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13

do.body13:                                        ; preds = %while.end.do.body13_crit_edge, %if.end9.do.body13_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_get_hw_semaphore_82571.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_get_hw_semaphore_82571, %if.then18)) #5
          to label %do.end21 [label %if.then18], !srcloc !124

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %9, i32 0, i32 64
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_get_hw_semaphore_82571.__UNIQUE_ID_ddebug356, ptr noundef %11, ptr noundef nonnull @.str.30) #5
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body13
  %12 = ptrtoint ptr %smb_counter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %smb_counter, align 4
  %inc24 = add i32 %13, 1
  store i32 %inc24, ptr %smb_counter, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end21, %while.end.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %for.body.preheader
  %i.191 = phi i32 [ %inc34, %if.end33.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %14 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %15, i32 23376
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %17 = or i32 %16, 33554432
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23376, i32 noundef %18) #5
  %19 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %20, i32 23376
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %22 = and i32 %21, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool31.not = icmp eq i32 %22, 0
  br i1 %tobool31.not, label %if.end33, label %for.end

if.end33:                                         ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #5
  %inc34 = add nuw nsw i32 %i.191, 1
  %exitcond92 = icmp eq i32 %i.191, %conv
  br i1 %exitcond92, label %if.end33.if.then37_crit_edge, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end33.if.then37_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.191, i32 %add)
  %cmp35 = icmp eq i32 %i.191, %add
  br i1 %cmp35, label %for.end.if.then37_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.if.then37_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

if.then37:                                        ; preds = %for.end.if.then37_crit_edge, %if.end33.if.then37_crit_edge
  %23 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 23376
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %26 = and i32 %25, -50331649
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23376, i32 noundef %27) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_get_hw_semaphore_82571.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_get_hw_semaphore_82571, %if.then51)) #5
          to label %cleanup [label %if.then51], !srcloc !124

if.then51:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %netdev53 = getelementptr inbounds %struct.e1000_adapter, ptr %29, i32 0, i32 64
  %30 = ptrtoint ptr %netdev53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev53, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_get_hw_semaphore_82571.__UNIQUE_ID_ddebug357, ptr noundef %31, ptr noundef nonnull @.str.31) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.then37, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then51 ], [ 0, %for.end.cleanup_crit_edge ], [ -1, %if.then37 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_polarity_igp(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_check_reset_block_generic(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_force_speed_duplex_igp(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_cfg_done_82571(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %timeout.018 = phi i32 [ 100, %entry ], [ %dec, %if.end.while.body_crit_edge ]
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4112
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %3 = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %dec = add nsw i32 %timeout.018, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body4.critedge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.body4.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_get_cfg_done_82571.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_get_cfg_done_82571, %if.then9)) #5
          to label %cleanup [label %if.then9], !srcloc !124

if.then9:                                         ; preds = %do.body4.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %5, i32 0, i32 64
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_get_cfg_done_82571.__UNIQUE_ID_ddebug360, ptr noundef %7, ptr noundef nonnull @.str.33) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.body4.critedge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %if.then9 ], [ -9, %do.body4.critedge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_cable_length_igp_2(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_info_igp(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_phy_reg_igp(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_put_hw_semaphore_82571(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 23376
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %3 = and i32 %2, -50331649
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23376, i32 noundef %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_hw_reset_generic(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_d0_lplu_state_82571(ptr noundef %hw, i1 noundef zeroext %active) #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !125
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 25, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

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
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %7 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg.i, align 4
  %call.i87 = call i32 %8(ptr noundef %hw, i32 noundef 25, i16 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool6.not = icmp eq i32 %call.i87, 0
  br i1 %tobool6.not, label %if.end8, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  %9 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_reg.i, align 4
  %call.i89 = call i32 %10(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool10.not = icmp eq i32 %call.i89, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data, align 2
  %13 = and i16 %12, -129
  store i16 %13, ptr %data, align 2
  %14 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg.i, align 4
  %call.i91 = call i32 %15(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool16.not = icmp eq i32 %call.i91, 0
  br i1 %tobool16.not, label %if.end12.if.end57_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12.if.end57_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.else:                                          ; preds = %if.end
  %16 = and i16 %4, -3
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %data, align 2
  %write_reg.i92 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %18 = ptrtoint ptr %write_reg.i92 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg.i92, align 4
  %call.i93 = call i32 %19(ptr noundef %hw, i32 noundef 25, i16 noundef zeroext %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool23.not = icmp eq i32 %call.i93, 0
  br i1 %tobool23.not, label %if.end25, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.else
  %smart_speed = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 7
  %20 = ptrtoint ptr %smart_speed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %smart_speed, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %21, label %if.end25.if.end57_crit_edge [
    i32 1, label %if.then27
    i32 2, label %if.then43
  ]

if.end25.if.end57_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then27:                                        ; preds = %if.end25
  %23 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_reg.i, align 4
  %call.i95 = call i32 %24(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool29.not = icmp eq i32 %call.i95, 0
  br i1 %tobool29.not, label %if.end31, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.then27
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %data, align 2
  %27 = or i16 %26, 128
  store i16 %27, ptr %data, align 2
  %28 = ptrtoint ptr %write_reg.i92 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_reg.i92, align 4
  %call.i97 = call i32 %29(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool36.not = icmp eq i32 %call.i97, 0
  br i1 %tobool36.not, label %if.end31.if.end57_crit_edge, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31.if.end57_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then43:                                        ; preds = %if.end25
  %30 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_reg.i, align 4
  %call.i99 = call i32 %31(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool45.not = icmp eq i32 %call.i99, 0
  br i1 %tobool45.not, label %if.end47, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %if.then43
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %data, align 2
  %34 = and i16 %33, -129
  store i16 %34, ptr %data, align 2
  %35 = ptrtoint ptr %write_reg.i92 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg.i92, align 4
  %call.i101 = call i32 %36(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool52.not = icmp eq i32 %call.i101, 0
  br i1 %tobool52.not, label %if.end47.if.end57_crit_edge, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.end57:                                         ; preds = %if.end47.if.end57_crit_edge, %if.end31.if.end57_crit_edge, %if.end25.if.end57_crit_edge, %if.end12.if.end57_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end47.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end57 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i87, %if.then3.cleanup_crit_edge ], [ %call.i89, %if.end8.cleanup_crit_edge ], [ %call.i91, %if.end12.cleanup_crit_edge ], [ %call.i93, %if.else.cleanup_crit_edge ], [ %call.i95, %if.then27.cleanup_crit_edge ], [ %call.i97, %if.end31.cleanup_crit_edge ], [ %call.i99, %if.then43.cleanup_crit_edge ], [ %call.i101, %if.end47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_set_d3_lplu_state(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_phy_reg_igp(ptr noundef, i32 noundef, i16 noundef zeroext) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_acquire_nvm_82571(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @e1000_get_hw_semaphore_82571(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cond = icmp eq i32 %1, 2
  br i1 %cond, label %if.end.cleanup_crit_edge, label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %call1 = tail call i32 @e1000e_acquire_nvm(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %sw.epilog.cleanup_crit_edge, label %if.then3

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 23376
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %5 = and i32 %4, -50331649
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23376, i32 noundef %6) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_nvm_eerd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_release_nvm_82571(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @e1000e_release_nvm(ptr noundef %hw) #5
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 23376
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %3 = and i32 %2, -50331649
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23376, i32 noundef %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_reload_nvm_generic(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_update_nvm_checksum_82571(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @e1000e_update_nvm_checksum_generic(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.067 = phi i16 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %2 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %5 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.end13, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i16 %i.067, 1
  %cmp3 = icmp ult i16 %i.067, 1999
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end13:                                         ; preds = %for.body
  %6 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %7, i32 4156
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %9 = and i32 %8, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 14352384, i32 %9)
  %cmp16 = icmp eq i32 %9, 14352384
  br i1 %cmp16, label %if.then18, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__ew32(ptr noundef %hw, i32 noundef 36608, i32 noundef 64) #5
  %10 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @__ew32(ptr noundef %hw, i32 noundef 36608, i32 noundef 128) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end13.if.end20_crit_edge
  %13 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %14, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %16 = or i32 %15, 2048
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %17) #5
  br label %for.body26

for.body26:                                       ; preds = %for.inc32.for.body26_crit_edge, %if.end20
  %i.168 = phi i16 [ 0, %if.end20 ], [ %inc33, %for.inc32.for.body26_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %18 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %21 = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool29.not = icmp eq i32 %21, 0
  br i1 %tobool29.not, label %for.body26.for.end34_crit_edge, label %for.inc32

for.body26.for.end34_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end34

for.inc32:                                        ; preds = %for.body26
  %inc33 = add nuw nsw i16 %i.168, 1
  %cmp24 = icmp ult i16 %i.168, 1999
  br i1 %cmp24, label %for.inc32.for.body26_crit_edge, label %for.inc32.for.end34_crit_edge

for.inc32.for.end34_crit_edge:                    ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end34

for.inc32.for.body26_crit_edge:                   ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body26

for.end34:                                        ; preds = %for.inc32.for.end34_crit_edge, %for.body26.for.end34_crit_edge
  %i.1.lcssa = phi i16 [ %i.168, %for.body26.for.end34_crit_edge ], [ 2000, %for.inc32.for.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2000, i16 %i.1.lcssa)
  %cmp36 = icmp eq i16 %i.1.lcssa, 2000
  %. = sext i1 %cmp36 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end34, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %., %for.end34 ], [ -1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_valid_led_default_82571(ptr noundef %hw, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 1
  %0 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read.i, align 4
  %call.i = tail call i32 %1(ptr noundef %hw, i16 noundef zeroext 4, i16 noundef zeroext 1, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end9, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_valid_led_default_82571.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_valid_led_default_82571, %if.then6)) #5
          to label %cleanup [label %if.then6], !srcloc !124

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_valid_led_default_82571.__UNIQUE_ID_ddebug377, ptr noundef %5, ptr noundef nonnull @.str.35) #5
  br label %cleanup

if.end9:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %.off = add i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data, align 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2234, i16 %9)
  %cmp = icmp eq i16 %9, -2234
  br i1 %cmp, label %if.then11, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 6161, ptr %data, align 2
  br label %cleanup

sw.default:                                       ; preds = %if.end9
  %11 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %9, label %sw.default.cleanup_crit_edge [
    i16 0, label %sw.default.if.then19_crit_edge
    i16 -1, label %sw.default.if.then19_crit_edge30
  ]

sw.default.if.then19_crit_edge30:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

sw.default.if.then19_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19:                                        ; preds = %sw.default.if.then19_crit_edge, %sw.default.if.then19_crit_edge30
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -30447, ptr %data, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %sw.default.cleanup_crit_edge, %if.then11, %sw.bb.cleanup_crit_edge, %if.then6, %do.body1
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_validate_nvm_checksum_82571(ptr noundef %hw) #0 align 64 {
entry:
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #5
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data.i, align 2, !annotation !125
  %read.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 1
  %3 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read.i.i, align 4
  %call.i.i = call i32 %4(ptr noundef %hw, i16 noundef zeroext 16, i16 noundef zeroext 1, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.e1000_fix_nvm_checksum_82571.exit_crit_edge

if.end.i.e1000_fix_nvm_checksum_82571.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000_fix_nvm_checksum_82571.exit

if.end3.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %data.i, align 2
  %7 = and i16 %6, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not.i = icmp eq i16 %7, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end3.i.e1000_fix_nvm_checksum_82571.exit_crit_edge

if.end3.i.e1000_fix_nvm_checksum_82571.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000_fix_nvm_checksum_82571.exit

if.then5.i:                                       ; preds = %if.end3.i
  %8 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i.i, align 4
  %call.i2.i = call i32 %9(ptr noundef %hw, i16 noundef zeroext 35, i16 noundef zeroext 1, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool7.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.then5.i.e1000_fix_nvm_checksum_82571.exit_crit_edge

if.then5.i.e1000_fix_nvm_checksum_82571.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000_fix_nvm_checksum_82571.exit

if.end9.i:                                        ; preds = %if.then5.i
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %tobool12.not.i = icmp sgt i16 %11, -1
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end9.i.e1000_fix_nvm_checksum_82571.exit_crit_edge

if.end9.i.e1000_fix_nvm_checksum_82571.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000_fix_nvm_checksum_82571.exit

if.then13.i:                                      ; preds = %if.end9.i
  %or.i = or i16 %11, -32768
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %or.i, ptr %data.i, align 2
  %write.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %13 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i.i, align 4
  %call.i3.i = call i32 %14(ptr noundef %hw, i16 noundef zeroext 35, i16 noundef zeroext 1, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool17.not.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.then13.i.e1000_fix_nvm_checksum_82571.exit_crit_edge

if.then13.i.e1000_fix_nvm_checksum_82571.exit_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000_fix_nvm_checksum_82571.exit

if.end19.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  %update.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 4
  %15 = ptrtoint ptr %update.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %update.i.i, align 4
  %call.i4.i = call i32 %16(ptr noundef %hw) #5
  br label %e1000_fix_nvm_checksum_82571.exit

e1000_fix_nvm_checksum_82571.exit:                ; preds = %if.end19.i, %if.then13.i.e1000_fix_nvm_checksum_82571.exit_crit_edge, %if.end9.i.e1000_fix_nvm_checksum_82571.exit_crit_edge, %if.then5.i.e1000_fix_nvm_checksum_82571.exit_crit_edge, %if.end3.i.e1000_fix_nvm_checksum_82571.exit_crit_edge, %if.end.i.e1000_fix_nvm_checksum_82571.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #5
  br label %if.end

if.end:                                           ; preds = %e1000_fix_nvm_checksum_82571.exit, %entry.if.end_crit_edge
  %call1 = call i32 @e1000e_validate_nvm_checksum_generic(ptr noundef %hw) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_write_nvm_82571(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge8
    i32 4, label %entry.sw.bb_crit_edge9
    i32 0, label %entry.sw.bb1_crit_edge
    i32 1, label %entry.sw.bb1_crit_edge10
  ]

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge8, %entry.sw.bb_crit_edge9
  %call = tail call fastcc i32 @e1000_write_nvm_eewr_82571(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr noundef %data)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge10
  %call2 = tail call i32 @e1000e_write_nvm_spi(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr noundef %data) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %ret_val.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -1, %entry.sw.epilog_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_acquire_nvm(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_release_nvm(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_update_nvm_checksum_generic(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_validate_nvm_checksum_generic(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_write_nvm_eewr_82571(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %offset to i32
  %word_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 5
  %0 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %word_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %offset)
  %cmp.not = icmp ugt i16 %1, %offset
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body14_crit_edge

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14

lor.lhs.false:                                    ; preds = %entry
  %conv2 = zext i16 %1 to i32
  %conv4 = zext i16 %words to i32
  %sub = sub nsw i32 %conv2, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv4)
  %cmp8 = icmp slt i32 %sub, %conv4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp12 = icmp eq i16 %words, 0
  %or.cond = or i1 %cmp12, %cmp8
  br i1 %or.cond, label %lor.lhs.false.do.body14_crit_edge, label %lor.lhs.false.for.body_crit_edge

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  br label %for.body

lor.lhs.false.do.body14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14

do.body14:                                        ; preds = %lor.lhs.false.do.body14_crit_edge, %entry.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_write_nvm_eewr_82571.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_write_nvm_eewr_82571, %if.then17)) #5
          to label %cleanup [label %if.then17], !srcloc !124

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_write_nvm_eewr_82571.__UNIQUE_ID_ddebug359, ptr noundef %5, ptr noundef nonnull @.str.37) #5
  br label %cleanup

for.cond:                                         ; preds = %if.end31
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %conv4
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %lor.lhs.false.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %lor.lhs.false.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %data, i32 %i.055
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %call28 = tail call i32 @e1000e_poll_eerd_eewr_done(ptr noundef %hw, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %for.body
  %conv24 = zext i16 %7 to i32
  %shl = shl nuw i32 %conv24, 16
  %add = add nuw nsw i32 %i.055, %conv
  %shl26 = shl i32 %add, 2
  %or = or i32 %shl26, %shl
  %or27 = or i32 %or, 1
  tail call void @__ew32(ptr noundef %hw, i32 noundef 4140, i32 noundef %or27) #5
  %call32 = tail call i32 @e1000e_poll_eerd_eewr_done(ptr noundef %hw, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %for.cond, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.then17, %do.body14
  %retval.0 = phi i32 [ -1, %if.then17 ], [ -1, %do.body14 ], [ %call32, %if.end31.cleanup_crit_edge ], [ %call28, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_nvm_spi(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_poll_eerd_eewr_done(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_polarity_m88(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_sw_reset(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_force_speed_duplex_m88(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_cfg_done_generic(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_cable_length_m88(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_info_m88(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_phy_reg_m88(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_phy_reg_m88(ptr noundef, i32 noundef, i16 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_phy_reg_bm2(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_phy_reg_bm2(ptr noundef, i32 noundef, i16 noundef zeroext) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !67, !68, !69, !71, !72, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !89, !90, !91, !93, !94, !96, !97, !98, !100, !102, !103, !104, !106, !107, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @e1000_82571_info, !1, !"e1000_82571_info", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1947, i32 25}
!2 = !{ptr @e1000_82572_info, !3, !"e1000_82572_info", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1968, i32 25}
!4 = !{ptr @e1000_82573_info, !5, !"e1000_82573_info", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1986, i32 25}
!6 = !{ptr @e1000_82574_info, !7, !"e1000_82574_info", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 2004, i32 25}
!8 = !{ptr @e1000_82583_info, !9, !"e1000_82583_info", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 2029, i32 25}
!10 = !{ptr @e1000_get_variants_82571.global_quad_port_a, !11, !"global_quad_port_a", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 316, i32 13}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 302, i32 4}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @e1000_init_mac_params_82571.__UNIQUE_ID_ddebug355, !13, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1524, i32 5}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug367, !19, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1543, i32 5}
!24 = !{ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug368, !23, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1558, i32 6}
!27 = !{ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug369, !26, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1564, i32 6}
!30 = !{ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug370, !29, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1578, i32 6}
!33 = !{ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug371, !32, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1584, i32 5}
!36 = !{ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug372, !35, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1599, i32 4}
!39 = !{ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug373, !38, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1606, i32 4}
!42 = !{ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug374, !41, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!43 = !{ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug375, !44, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1623, i32 6}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1635, i32 5}
!47 = !{ptr @e1000_check_for_serdes_link_82571.__UNIQUE_ID_ddebug376, !46, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 553, i32 8}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @swflag_mutex, !49, !"swflag_mutex", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 530, i32 3}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @e1000_get_hw_semaphore_82573.__UNIQUE_ID_ddebug358, !53, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 85, i32 3}
!58 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @e1000_init_phy_params_82571.__UNIQUE_ID_ddebug353, !57, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 111, i32 3}
!62 = !{ptr @e1000_init_phy_params_82571.__UNIQUE_ID_ddebug354, !61, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!63 = !{ptr @e82571_mac_ops, !64, !"e82571_mac_ops", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1857, i32 42}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 953, i32 3}
!67 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @e1000_reset_hw_82571.__UNIQUE_ID_ddebug361, !66, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 955, i32 2}
!71 = !{ptr @e1000_reset_hw_82571.__UNIQUE_ID_ddebug362, !70, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 983, i32 2}
!74 = !{ptr @e1000_reset_hw_82571.__UNIQUE_ID_ddebug363, !73, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1079, i32 3}
!77 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @e1000_init_hw_82571.__UNIQUE_ID_ddebug364, !76, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1082, i32 2}
!81 = !{ptr @e1000_init_hw_82571.__UNIQUE_ID_ddebug365, !80, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1095, i32 2}
!84 = !{ptr @e1000_init_hw_82571.__UNIQUE_ID_ddebug366, !83, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!85 = !{ptr @e82_phy_ops_igp, !86, !"e82_phy_ops_igp", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1882, i32 42}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 462, i32 3}
!89 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @e1000_get_hw_semaphore_82571.__UNIQUE_ID_ddebug356, !88, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 480, i32 3}
!93 = !{ptr @e1000_get_hw_semaphore_82571.__UNIQUE_ID_ddebug357, !92, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 857, i32 3}
!96 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @e1000_get_cfg_done_82571.__UNIQUE_ID_ddebug360, !95, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!98 = !{ptr @e82571_nvm_ops, !99, !"e82571_nvm_ops", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1936, i32 42}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1657, i32 3}
!102 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @e1000_valid_led_default_82571.__UNIQUE_ID_ddebug377, !101, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 817, i32 3}
!106 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @e1000_write_nvm_eewr_82571.__UNIQUE_ID_ddebug359, !105, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!108 = !{ptr @e82_phy_ops_m88, !109, !"e82_phy_ops_m88", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1900, i32 42}
!110 = !{ptr @e82_phy_ops_bm, !111, !"e82_phy_ops_bm", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/intel/e1000e/82571.c", i32 1918, i32 42}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i8 0, i8 2}
!122 = !{i64 1946257}
!123 = !{i64 2156955106}
!124 = !{i64 2148946459, i64 2148946464, i64 2148946477, i64 2148946521, i64 2148946555, i64 2148946576}
!125 = !{!"auto-init"}
