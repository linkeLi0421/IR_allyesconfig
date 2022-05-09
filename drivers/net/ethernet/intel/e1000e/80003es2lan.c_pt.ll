; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/e1000e/80003es2lan.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/80003es2lan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_info = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.e1000_adapter = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, ptr, [128 x i32], i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, [116 x i8], ptr, i32, %struct.napi_struct, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, [44 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i16, i32, i32, ptr, ptr, %struct.e1000_hw, %struct.spinlock, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, %struct.e1000_phy_regs, %struct.e1000_ring, %struct.e1000_ring, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i16, i16, %struct.hwtstamp_config, %struct.delayed_work, ptr, i32, %struct.work_struct, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, ptr, %struct.ptp_clock_info, %struct.pm_qos_request, i32, i16, [122 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.e1000_hw = type { ptr, ptr, ptr, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.122 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.e1000_fc_info = type { i32, i32, i16, i16, i8, i8, i32, i32 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_bus_info = type { i32, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.122 = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i8, [2048 x %struct.e1000_shadow_ram], i8, i8, i16, i32 }
%struct.e1000_shadow_ram = type { i16, i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_stats = type { i32, i32 }
%struct.e1000_phy_regs = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.e1000_ring = type { ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, [21 x i8], i32, i32, ptr, i32, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%union.anon.121 = type { ptr }

@es2_mac_ops = internal constant { %struct.e1000_mac_operations, [36 x i8] } { %struct.e1000_mac_operations { ptr @e1000e_id_led_init_generic, ptr @e1000e_blink_led_generic, ptr @e1000e_check_mng_mode_generic, ptr null, ptr @e1000e_cleanup_led_generic, ptr @e1000_clear_hw_cntrs_80003es2lan, ptr @e1000_clear_vfta_generic, ptr @e1000e_get_bus_info_pcie, ptr @e1000_set_lan_id_multi_port_pcie, ptr @e1000_get_link_up_info_80003es2lan, ptr @e1000e_led_on_generic, ptr @e1000e_led_off_generic, ptr @e1000e_update_mc_addr_list_generic, ptr @e1000_reset_hw_80003es2lan, ptr @e1000_init_hw_80003es2lan, ptr @e1000e_setup_link_generic, ptr null, ptr @e1000e_setup_led_generic, ptr @e1000_write_vfta_generic, ptr @e1000e_config_collision_dist_generic, ptr @e1000e_rar_set_generic, ptr @e1000_read_mac_addr_80003es2lan, ptr @e1000e_rar_get_count_generic }, [36 x i8] zeroinitializer }, align 32
@es2_phy_ops = internal constant { %struct.e1000_phy_operations, [40 x i8] } { %struct.e1000_phy_operations { ptr @e1000_acquire_phy_80003es2lan, ptr @e1000_cfg_on_link_up_80003es2lan, ptr @e1000_check_polarity_m88, ptr @e1000e_check_reset_block_generic, ptr @e1000e_phy_sw_reset, ptr @e1000_phy_force_speed_duplex_80003es2lan, ptr @e1000_get_cfg_done_80003es2lan, ptr @e1000_get_cable_length_80003es2lan, ptr @e1000e_get_phy_info_m88, ptr null, ptr @e1000_read_phy_reg_gg82563_80003es2lan, ptr null, ptr null, ptr @e1000_release_phy_80003es2lan, ptr @e1000e_phy_hw_reset_generic, ptr null, ptr @e1000e_set_d3_lplu_state, ptr @e1000_write_phy_reg_gg82563_80003es2lan, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@es2_nvm_ops = internal constant { %struct.e1000_nvm_operations, [32 x i8] } { %struct.e1000_nvm_operations { ptr @e1000_acquire_nvm_80003es2lan, ptr @e1000e_read_nvm_eerd, ptr @e1000_release_nvm_80003es2lan, ptr @e1000e_reload_nvm_generic, ptr @e1000e_update_nvm_checksum_generic, ptr @e1000e_valid_led_default, ptr @e1000e_validate_nvm_checksum_generic, ptr @e1000_write_nvm_80003es2lan }, [32 x i8] zeroinitializer }, align 32
@e1000_es2_info = dso_local constant { %struct.e1000_info, [60 x i8] } { %struct.e1000_info { i32 5, i32 25624748, i32 64, i32 38, i32 9234, ptr @e1000_get_variants_80003es2lan, ptr @es2_mac_ops, ptr @es2_phy_ops, ptr @es2_nvm_ops }, [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@e1000_acquire_swfw_sync_80003es2lan.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"e1000e\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"e1000_acquire_swfw_sync_80003es2lan\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/intel/e1000e/80003es2lan.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Driver can't access resource, SW_FW_SYNC timeout.\0A\00", [45 x i8] zeroinitializer }, align 32
@e1000_copper_link_setup_gg82563_80003es2lan.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"e1000_copper_link_setup_gg82563_80003es2lan\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error Resetting the PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"e1000_reset_hw_80003es2lan\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PCI-E Master disable polling has failed.\0A\00", [54 x i8] zeroinitializer }, align 32
@e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Masking off all interrupts\0A\00", [36 x i8] zeroinitializer }, align 32
@e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Issuing a global reset to MAC\0A\00", [33 x i8] zeroinitializer }, align 32
@e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.10, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error disabling far-end loopback\0A\00", [62 x i8] zeroinitializer }, align 32
@e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.10, i8 0, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"e1000_init_hw_80003es2lan\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error initializing identification LED\0A\00", [57 x i8] zeroinitializer }, align 32
@e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Initializing the IEEE VLAN\0A\00", [36 x i8] zeroinitializer }, align 32
@e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Zeroing the MTA\0A\00", [47 x i8] zeroinitializer }, align 32
@e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.10, i8 0, i8 -64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.10, i8 0, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000_phy_force_speed_duplex_80003es2lan.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"e1000_phy_force_speed_duplex_80003es2lan\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GG82563 PSCR: %X\0A\00", [46 x i8] zeroinitializer }, align 32
@e1000_phy_force_speed_duplex_80003es2lan.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Waiting for forced speed/duplex link on GG82563 phy.\0A\00", [42 x i8] zeroinitializer }, align 32
@e1000_get_cfg_done_80003es2lan.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"e1000_get_cfg_done_80003es2lan\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MNG configuration cycle has not completed.\0A\00", [52 x i8] zeroinitializer }, align 32
@e1000_gg82563_cable_length_table = internal constant { [11 x i16], [42 x i8] } { [11 x i16] [i16 0, i16 60, i16 115, i16 150, i16 150, i16 60, i16 115, i16 150, i16 180, i16 180, i16 255], [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"es2_mac_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1339, i32 42 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"es2_phy_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1365, i32 42 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"es2_nvm_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1383, i32 42 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"e1000_es2_info\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1394, i32 25 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 298, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 942, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 674, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 676, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 691, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 705, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 742, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 745, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 752, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 539, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 557, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 507, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [33 x i8] c"e1000_gg82563_cable_length_table\00", align 1
@___asan_gen_.94 = private constant [51 x i8] c"../drivers/net/ethernet/intel/e1000e/80003es2lan.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 14, i32 18 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @es2_mac_ops, ptr @es2_phy_ops, ptr @es2_nvm_ops, ptr @e1000_es2_info, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @e1000_gg82563_cable_length_table], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es2_mac_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es2_phy_ops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es2_nvm_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_es2_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_gg82563_cable_length_table to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_variants_80003es2lan(ptr noundef %adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %pdev.i = getelementptr inbounds %struct.e1000_adapter, ptr %1, i32 0, i32 65
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 32
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4248, i16 %5)
  %cond.i = icmp eq i16 %5, 4248
  %.sink.i = select i1 %cond.i, i32 3, i32 1
  %e1000e_check_for_copper_link.sink.i = select i1 %cond.i, ptr @e1000e_check_for_serdes_link, ptr @e1000e_check_for_copper_link
  %e1000_setup_copper_link_80003es2lan.sink.i = select i1 %cond.i, ptr @e1000e_setup_fiber_serdes_link, ptr @e1000_setup_copper_link_80003es2lan
  %6 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink.i, ptr %6, align 4
  %8 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %e1000e_check_for_copper_link.sink.i, ptr %8, align 4
  %10 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 16
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %e1000_setup_copper_link_80003es2lan.sink.i, ptr %10, align 4
  %mta_reg_count.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 16
  %12 = ptrtoint ptr %mta_reg_count.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 128, ptr %mta_reg_count.i, align 2
  %rar_entry_count.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 18
  %13 = ptrtoint ptr %rar_entry_count.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 15, ptr %rar_entry_count.i, align 4
  %has_fwsm.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 21
  %14 = ptrtoint ptr %has_fwsm.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %has_fwsm.i, align 4
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 1
  %15 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 23380
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %18 = and i32 %17, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i = icmp ne i32 %18, 0
  %arc_subsystem_valid.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 22
  %frombool.i = zext i1 %tobool.i to i8
  %19 = ptrtoint ptr %arc_subsystem_valid.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool.i, ptr %arc_subsystem_valid.i, align 1
  %adaptive_ifs.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 20
  %20 = ptrtoint ptr %adaptive_ifs.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %adaptive_ifs.i, align 1
  %set_lan_id.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 8
  %21 = ptrtoint ptr %set_lan_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_lan_id.i, align 4
  tail call void %22(ptr noundef %hw1) #4
  %23 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %24, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #4, !srcloc !69
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %opcode_bits.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 8
  %27 = ptrtoint ptr %opcode_bits.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 8, ptr %opcode_bits.i, align 2
  %delay_usec.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 6
  %28 = ptrtoint ptr %delay_usec.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %delay_usec.i, align 2
  %override.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 2
  %29 = ptrtoint ptr %override.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %override.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %30, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %page_size.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 9
  %32 = ptrtoint ptr %page_size.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 32, ptr %page_size.i, align 4
  br label %e1000_init_nvm_params_80003es2lan.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %page_size3.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 9
  %33 = ptrtoint ptr %page_size3.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 8, ptr %page_size3.i, align 4
  br label %e1000_init_nvm_params_80003es2lan.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and.i = and i32 %26, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %conv.i = select i1 %tobool.not.i, i16 8, i16 32
  %page_size5.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 9
  %34 = ptrtoint ptr %page_size5.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i, ptr %page_size5.i, align 4
  %conv9.i = select i1 %tobool.not.i, i16 8, i16 16
  br label %e1000_init_nvm_params_80003es2lan.exit

e1000_init_nvm_params_80003es2lan.exit:           ; preds = %sw.default.i, %sw.bb2.i, %sw.bb.i
  %conv9.sink.i = phi i16 [ %conv9.i, %sw.default.i ], [ 8, %sw.bb2.i ], [ 16, %sw.bb.i ]
  %address_bits10.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 7
  %35 = ptrtoint ptr %address_bits10.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv9.sink.i, ptr %address_bits10.i, align 4
  %type.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 1
  %36 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %type.i, align 4
  %37 = trunc i32 %26 to i16
  %38 = lshr i16 %37, 11
  %39 = and i16 %38, 15
  %40 = tail call i16 @llvm.umin.i16(i16 %39, i16 8) #4
  %41 = add nuw nsw i16 %40, 6
  %conv17.i = zext i16 %41 to i32
  %shl.i = shl nuw nsw i32 1, %conv17.i
  %conv18.i = trunc i32 %shl.i to i16
  %word_size.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 6, i32 5
  %42 = ptrtoint ptr %word_size.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv18.i, ptr %word_size.i, align 4
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.not.i = icmp eq i32 %44, 1
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %e1000_init_nvm_params_80003es2lan.exit
  call void @__sanitizer_cov_trace_pc() #6
  %type.i20 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 1
  %45 = ptrtoint ptr %type.i20 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %type.i20, align 4
  br label %e1000_init_phy_params_80003es2lan.exit

if.else.i:                                        ; preds = %e1000_init_nvm_params_80003es2lan.exit
  call void @__sanitizer_cov_trace_pc() #6
  %power_up.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 20
  %46 = ptrtoint ptr %power_up.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @e1000_power_up_phy_copper, ptr %power_up.i, align 4
  %power_down.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 21
  %47 = ptrtoint ptr %power_down.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @e1000_power_down_phy_copper_80003es2lan, ptr %power_down.i, align 4
  %addr.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 8
  %48 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %addr.i, align 4
  %autoneg_mask.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 14
  %49 = ptrtoint ptr %autoneg_mask.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 47, ptr %autoneg_mask.i, align 2
  %reset_delay_us.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 10
  %50 = ptrtoint ptr %reset_delay_us.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 100, ptr %reset_delay_us.i, align 4
  %type4.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 1
  %51 = ptrtoint ptr %type4.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 5, ptr %type4.i, align 4
  %call.i = tail call i32 @e1000e_get_phy_id(ptr noundef %hw1) #4
  %id.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 9
  %52 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21040288, i32 %53)
  %cmp5.not.i = icmp eq i32 %53, 21040288
  %call..i = select i1 %cmp5.not.i, i32 %call.i, i32 -2
  br label %e1000_init_phy_params_80003es2lan.exit

e1000_init_phy_params_80003es2lan.exit:           ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ 0, %if.then.i ], [ %call..i, %if.else.i ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_check_for_serdes_link(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_fiber_serdes_link(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_check_for_copper_link(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_setup_copper_link_80003es2lan(ptr noundef %hw) #0 align 64 {
entry:
  %reg_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_data) #4
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg_data, align 2, !annotation !71
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_addr.i, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %4 = and i32 %3, -1075314689
  %5 = or i32 %4, 1073741824
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %6) #4
  %call1 = tail call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %hw, i32 noundef 1668, i16 noundef zeroext -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @e1000_read_kmrn_reg_80003es2lan(ptr noundef %hw, i32 noundef 1673, ptr noundef nonnull %reg_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %reg_data to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg_data, align 2
  %9 = or i16 %8, 63
  store i16 %9, ptr %reg_data, align 2
  %call8 = tail call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %hw, i32 noundef 1673, i16 noundef zeroext %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %call12 = call fastcc i32 @e1000_read_kmrn_reg_80003es2lan(ptr noundef %hw, i32 noundef 2, ptr noundef nonnull %reg_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %10 = ptrtoint ptr %reg_data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %reg_data, align 2
  %12 = or i16 %11, 16
  store i16 %12, ptr %reg_data, align 2
  %call19 = tail call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %hw, i32 noundef 2, i16 noundef zeroext %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %call23 = tail call fastcc i32 @e1000_copper_link_setup_gg82563_80003es2lan(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %call27 = tail call i32 @e1000e_setup_copper_link(ptr noundef %hw) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end22.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end26 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call8, %if.end5.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call19, %if.end15.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @e1000_acquire_swfw_sync_80003es2lan(ptr noundef %hw, i16 noundef zeroext 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 %offset, 16
  %and = and i32 %shl, 2031616
  %conv = zext i16 %data to i32
  %or = or i32 %and, %conv
  tail call void @__ew32(ptr noundef %hw, i32 noundef 52, i32 noundef %or) #4
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 429496) #4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end
  %call.i.i = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %hw) #4
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %e1000_release_mac_csr_80003es2lan.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i

e1000_release_mac_csr_80003es2lan.exit:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 23388
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %7 = and i32 %6, -134217729
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23388, i32 noundef %8) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %hw) #4
  br label %cleanup

cleanup:                                          ; preds = %e1000_release_mac_csr_80003es2lan.exit, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_read_kmrn_reg_80003es2lan(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @e1000_acquire_swfw_sync_80003es2lan(ptr noundef %hw, i16 noundef zeroext 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 %offset, 16
  %and = and i32 %shl, 2031616
  %or = or i32 %and, 2097152
  tail call void @__ew32(ptr noundef %hw, i32 noundef 52, i32 noundef %or) #4
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 429496) #4
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %5, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #4, !srcloc !69
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %conv = trunc i32 %7 to i16
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %data, align 2
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end
  %call.i.i = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %hw) #4
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %e1000_release_mac_csr_80003es2lan.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i

e1000_release_mac_csr_80003es2lan.exit:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 23388
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %12 = and i32 %11, -134217729
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23388, i32 noundef %13) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %hw) #4
  br label %cleanup

cleanup:                                          ; preds = %e1000_release_mac_csr_80003es2lan.exit, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_copper_link_setup_gg82563_80003es2lan(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !71
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 85, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data, align 2
  %5 = or i16 %4, 23
  store i16 %5, ptr %data, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  %call.i181 = call i32 %7(ptr noundef %hw, i32 noundef 85, i16 noundef zeroext %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %tobool7.not = icmp eq i32 %call.i181, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %8 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg.i, align 4
  %call.i183 = call i32 %9(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool11.not = icmp eq i32 %call.i183, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data, align 2
  %12 = and i16 %11, -97
  %mdix = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 18
  %13 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mdix, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %14, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %12, ptr %data, align 2
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %17 = or i16 %12, 32
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %data, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %19 = or i16 %11, 96
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %data, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.bb
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %data, align 2
  %23 = and i16 %22, -3
  store i16 %23, ptr %data, align 2
  %disable_polarity_correction = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 19
  %24 = ptrtoint ptr %disable_polarity_correction to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %disable_polarity_correction, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool31.not = icmp eq i8 %25, 0
  br i1 %tobool31.not, label %sw.epilog.if.end36_crit_edge, label %if.then32

sw.epilog.if.end36_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then32:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %26 = or i16 %22, 2
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %data, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %sw.epilog.if.end36_crit_edge
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %data, align 2
  %30 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_reg.i, align 4
  %call.i185 = call i32 %31(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool38.not = icmp eq i32 %call.i185, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %commit = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %32 = ptrtoint ptr %commit to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %commit, align 4
  %call42 = call i32 %33(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end54, label %do.body45

do.body45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_copper_link_setup_gg82563_80003es2lan.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_copper_link_setup_gg82563_80003es2lan, %if.then50)) #4
          to label %cleanup [label %if.then50], !srcloc !73

if.then50:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %35, i32 0, i32 64
  %36 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_copper_link_setup_gg82563_80003es2lan.__UNIQUE_ID_ddebug367, ptr noundef %37, ptr noundef nonnull @.str.5) #4
  br label %cleanup

if.end54:                                         ; preds = %if.end40
  %38 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 2056, ptr %data, align 2
  %call55 = call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext 2056)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end58:                                         ; preds = %if.end54
  %call59 = call fastcc i32 @e1000_read_kmrn_reg_80003es2lan(ptr noundef %hw, i32 noundef 31, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %data, align 2
  %41 = or i16 %40, 8192
  store i16 %41, ptr %data, align 2
  %call66 = call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %hw, i32 noundef 31, i16 noundef zeroext %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end69:                                         ; preds = %if.end62
  %42 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_reg.i, align 4
  %call.i187 = call i32 %43(ptr noundef %hw, i32 noundef 26, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %tobool71.not = icmp eq i32 %call.i187, 0
  br i1 %tobool71.not, label %if.end73, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end73:                                         ; preds = %if.end69
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %data, align 2
  %46 = and i16 %45, -8193
  store i16 %46, ptr %data, align 2
  %47 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_reg.i, align 4
  %call.i189 = call i32 %48(ptr noundef %hw, i32 noundef 26, i16 noundef zeroext %46) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool78.not = icmp eq i32 %call.i189, 0
  br i1 %tobool78.not, label %if.end80, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end80:                                         ; preds = %if.end73
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %49 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 24
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %52 = and i32 %51, -49153
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  call void @__ew32(ptr noundef %hw, i32 noundef 24, i32 noundef %53) #4
  %54 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read_reg.i, align 4
  %call.i191 = call i32 %55(ptr noundef %hw, i32 noundef 6196, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool84.not = icmp eq i32 %call.i191, 0
  br i1 %tobool84.not, label %if.end86, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end86:                                         ; preds = %if.end80
  %check_mng_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 2
  %56 = ptrtoint ptr %check_mng_mode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %check_mng_mode, align 4
  %call88 = call zeroext i1 %57(ptr noundef %hw) #4
  br i1 %call88, label %if.end86.if.end108_crit_edge, label %if.then89

if.end86.if.end108_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end108

if.then89:                                        ; preds = %if.end86
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %data, align 2
  %60 = or i16 %59, 1
  store i16 %60, ptr %data, align 2
  %61 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_reg.i, align 4
  %call.i193 = call i32 %62(ptr noundef %hw, i32 noundef 6196, i16 noundef zeroext %60) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %tobool94.not = icmp eq i32 %call.i193, 0
  br i1 %tobool94.not, label %if.end96, label %if.then89.cleanup_crit_edge

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end96:                                         ; preds = %if.then89
  %63 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read_reg.i, align 4
  %call.i195 = call i32 %64(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %tobool98.not = icmp eq i32 %call.i195, 0
  br i1 %tobool98.not, label %if.end100, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end100:                                        ; preds = %if.end96
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %data, align 2
  %67 = and i16 %66, -2049
  store i16 %67, ptr %data, align 2
  %68 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_reg.i, align 4
  %call.i197 = call i32 %69(ptr noundef %hw, i32 noundef 6192, i16 noundef zeroext %67) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197)
  %tobool105.not = icmp eq i32 %call.i197, 0
  br i1 %tobool105.not, label %if.end100.if.end108_crit_edge, label %if.end100.cleanup_crit_edge

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end100.if.end108_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end108

if.end108:                                        ; preds = %if.end100.if.end108_crit_edge, %if.end86.if.end108_crit_edge
  %70 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read_reg.i, align 4
  %call.i199 = call i32 %71(ptr noundef %hw, i32 noundef 6226, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool110.not = icmp eq i32 %call.i199, 0
  br i1 %tobool110.not, label %if.end112, label %if.end108.cleanup_crit_edge

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end112:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %data, align 2
  %74 = or i16 %73, 16
  store i16 %74, ptr %data, align 2
  %75 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write_reg.i, align 4
  %call.i201 = call i32 %76(ptr noundef %hw, i32 noundef 6226, i16 noundef zeroext %74) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %if.end108.cleanup_crit_edge, %if.end100.cleanup_crit_edge, %if.end96.cleanup_crit_edge, %if.then89.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.then50, %do.body45, %if.end36.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i181, %if.end.cleanup_crit_edge ], [ %call.i183, %if.end9.cleanup_crit_edge ], [ %call.i185, %if.end36.cleanup_crit_edge ], [ %call42, %if.then50 ], [ %call55, %if.end54.cleanup_crit_edge ], [ %call59, %if.end58.cleanup_crit_edge ], [ %call66, %if.end62.cleanup_crit_edge ], [ %call.i187, %if.end69.cleanup_crit_edge ], [ %call.i189, %if.end73.cleanup_crit_edge ], [ %call.i191, %if.end80.cleanup_crit_edge ], [ %call.i193, %if.then89.cleanup_crit_edge ], [ %call.i195, %if.end96.cleanup_crit_edge ], [ %call.i197, %if.end100.cleanup_crit_edge ], [ %call.i199, %if.end108.cleanup_crit_edge ], [ %call.i201, %if.end112 ], [ %call42, %do.body45 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_copper_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_acquire_swfw_sync_80003es2lan(ptr noundef %hw, i16 noundef zeroext %mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %mask to i32
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %or = mul nuw i32 %conv, 65537
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %entry
  %i.050 = phi i32 [ 0, %entry ], [ %inc, %if.end6.while.body_crit_edge ]
  %call = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %while.body
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 23388
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !69
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %and = and i32 %3, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end23, label %if.end6

if.end6:                                          ; preds = %if.end
  tail call void @e1000e_put_hw_semaphore(ptr noundef %hw) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #4
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %do.body14, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

do.body14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_acquire_swfw_sync_80003es2lan.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_acquire_swfw_sync_80003es2lan, %if.then19)) #4
          to label %cleanup [label %if.then19], !srcloc !73

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %10, i32 0, i32 64
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_acquire_swfw_sync_80003es2lan.__UNIQUE_ID_ddebug353, ptr noundef %12, ptr noundef nonnull @.str.3) #4
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %or24 = or i32 %3, %conv
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23388, i32 noundef %or24) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %hw) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then19, %do.body14, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -13, %if.then19 ], [ -13, %do.body14 ], [ -13, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_hw_semaphore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_put_hw_semaphore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_power_up_phy_copper(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_power_down_phy_copper_80003es2lan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %check_mng_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 2
  %0 = ptrtoint ptr %check_mng_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %check_mng_mode, align 4
  %call = tail call zeroext i1 %1(ptr noundef %hw) #4
  br i1 %call, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %check_reset_block = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %2 = ptrtoint ptr %check_reset_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_reset_block, align 4
  %call2 = tail call i32 %3(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @e1000_power_down_phy_copper(ptr noundef %hw) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_power_down_phy_copper(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_id_led_init_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_blink_led_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @e1000e_check_mng_mode_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_cleanup_led_generic(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_clear_hw_cntrs_80003es2lan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @e1000e_clear_hw_cntrs_base(ptr noundef %hw) #4
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16476
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %4, i32 16480
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %6 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %7, i32 16484
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %9 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %10, i32 16488
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %12 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %13, i32 16492
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %15 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %16, i32 16496
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %18 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %19, i32 16600
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %21 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %22, i32 16604
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %24 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %25, i32 16608
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %27 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %28, i32 16612
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i77) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %30 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %31, i32 16616
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %33 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %34, i32 16620
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %36 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %37, i32 16388
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %39 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %40, i32 16396
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %42 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %43, i32 16436
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %45 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %46, i32 16444
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %48 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %49, i32 16632
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %51 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %52, i32 16636
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %54 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %55, i32 16564
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %57 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %58, i32 16568
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %60 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %61, i32 16572
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %63 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %64, i32 16640
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %66 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i103 = getelementptr i8, ptr %67, i32 16676
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %69 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %70, i32 16644
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %72 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %73, i32 16648
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %75 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %76, i32 16652
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %78 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %79, i32 16656
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %81 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %82, i32 16664
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %84 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %85, i32 16668
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %87 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %88, i32 16672
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_clear_vfta_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_bus_info_pcie(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_set_lan_id_multi_port_pcie(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_link_up_info_80003es2lan(ptr noundef %hw, ptr noundef %speed, ptr noundef %duplex) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @e1000e_get_speed_and_duplex_copper(ptr noundef %hw, ptr noundef %speed, ptr noundef %duplex) #4
  %cfg_on_link_up = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 1
  %2 = ptrtoint ptr %cfg_on_link_up to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg_on_link_up, align 4
  %call2 = tail call i32 %3(ptr noundef %hw) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 @e1000e_get_speed_and_duplex_fiber_serdes(ptr noundef %hw, ptr noundef %speed, ptr noundef %duplex) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret_val.0 = phi i32 [ %call, %if.then ], [ %call3, %if.else ]
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_led_on_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_led_off_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_update_mc_addr_list_generic(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_reset_hw_80003es2lan(ptr noundef %hw) #0 align 64 {
entry:
  %kum_reg_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %kum_reg_data) #4
  %0 = ptrtoint ptr %kum_reg_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %kum_reg_data, align 2, !annotation !71
  %call = tail call i32 @e1000e_disable_pcie_master(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.body11_crit_edge, label %do.body1

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body11

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_reset_hw_80003es2lan, %if.then6)) #4
          to label %do.body11 [label %if.then6], !srcloc !73

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 64
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug357, ptr noundef %4, ptr noundef nonnull @.str.7) #4
  br label %do.body11

do.body11:                                        ; preds = %if.then6, %do.body1, %entry.do.body11_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_reset_hw_80003es2lan, %if.then23)) #4
          to label %do.end30 [label %if.then23], !srcloc !73

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %netdev25 = getelementptr inbounds %struct.e1000_adapter, ptr %6, i32 0, i32 64
  %7 = ptrtoint ptr %netdev25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug358, ptr noundef %8, ptr noundef nonnull @.str.8) #4
  br label %do.end30

do.end30:                                         ; preds = %if.then23, %do.body11
  tail call void @__ew32(ptr noundef %hw, i32 noundef 216, i32 noundef -1) #4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 256, i32 noundef 0) #4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 1024, i32 noundef 8) #4
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #4
  %12 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %func.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %func.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i = icmp eq i16 %16, 0
  %conv1.i = select i1 %tobool.not.i, i16 2, i16 4
  %call.i = tail call fastcc i32 @e1000_acquire_swfw_sync_80003es2lan(ptr noundef %hw, i16 noundef zeroext %conv1.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool34.not = icmp eq i32 %call.i, 0
  br i1 %tobool34.not, label %do.body38, label %do.end30.cleanup_crit_edge

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body38:                                        ; preds = %do.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_reset_hw_80003es2lan, %if.then50)) #4
          to label %do.end57 [label %if.then50], !srcloc !73

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %netdev52 = getelementptr inbounds %struct.e1000_adapter, ptr %18, i32 0, i32 64
  %19 = ptrtoint ptr %netdev52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev52, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug359, ptr noundef %20, ptr noundef nonnull @.str.9) #4
  br label %do.end57

do.end57:                                         ; preds = %if.then50, %do.body38
  %21 = or i32 %14, 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %22) #4
  %23 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %func.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %do.end57
  %call.i.i = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %hw) #4
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %e1000_release_phy_80003es2lan.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i

e1000_release_phy_80003es2lan.exit:               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i157 = icmp eq i16 %24, 0
  %25 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 23388
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !69
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %neg.i.i = select i1 %tobool.not.i157, i32 -3, i32 -5
  %and.i.i = and i32 %28, %neg.i.i
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23388, i32 noundef %and.i.i) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %hw) #4
  %call58 = call fastcc i32 @e1000_read_kmrn_reg_80003es2lan(ptr noundef %hw, i32 noundef 9, ptr noundef nonnull %kum_reg_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %do.body89

if.then60:                                        ; preds = %e1000_release_phy_80003es2lan.exit
  %29 = ptrtoint ptr %kum_reg_data to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %kum_reg_data, align 2
  %31 = or i16 %30, 512
  store i16 %31, ptr %kum_reg_data, align 2
  %call63 = tail call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %hw, i32 noundef 9, i16 noundef zeroext %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then60.if.end109_crit_edge, label %do.body67

if.then60.if.end109_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end109

do.body67:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_reset_hw_80003es2lan, %if.end109.sink.split)) #4
          to label %if.end109 [label %if.end109.sink.split], !srcloc !73

do.body89:                                        ; preds = %e1000_release_phy_80003es2lan.exit
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_reset_hw_80003es2lan, %if.end109.sink.split)) #4
          to label %if.end109 [label %if.end109.sink.split], !srcloc !73

if.end109.sink.split:                             ; preds = %do.body89, %do.body67
  %e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug361.sink = phi ptr [ @e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug360, %do.body67 ], [ @e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug361, %do.body89 ]
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %netdev103 = getelementptr inbounds %struct.e1000_adapter, ptr %33, i32 0, i32 64
  %34 = ptrtoint ptr %netdev103 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev103, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull %e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug361.sink, ptr noundef %35, ptr noundef nonnull @.str.10) #4
  br label %if.end109

if.end109:                                        ; preds = %if.end109.sink.split, %do.body89, %do.body67, %if.then60.if.end109_crit_edge
  %call110 = tail call i32 @e1000e_get_auto_rd_done(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end109.cleanup_crit_edge

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end113:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__ew32(ptr noundef %hw, i32 noundef 216, i32 noundef -1) #4
  %36 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %37, i32 192
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %call115 = tail call i32 @e1000_check_alt_mac_addr_generic(ptr noundef %hw) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %if.end109.cleanup_crit_edge, %do.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ %call115, %if.end113 ], [ %call.i, %do.end30.cleanup_crit_edge ], [ %call110, %if.end109.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %kum_reg_data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_init_hw_80003es2lan(ptr noundef %hw) #0 align 64 {
entry:
  %kum_reg_data = alloca i16, align 2
  %i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mac1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %kum_reg_data) #4
  %0 = ptrtoint ptr %kum_reg_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %kum_reg_data, align 2, !annotation !71
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %i) #4
  %1 = ptrtoint ptr %i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %i, align 2, !annotation !71
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 14376
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %5 = or i32 %4, 16384
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 14376, i32 noundef %6) #4
  %7 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %8, i32 14632
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %10 = or i32 %9, 16384
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 14632, i32 noundef %11) #4
  %12 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %13, i32 14400
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #4, !srcloc !69
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %media_type.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 12
  %16 = ptrtoint ptr %media_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %media_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 1
  %spec.select.v.i = select i1 %cmp.not.i, i32 -2013265921, i32 -2014314497
  %spec.select.i = and i32 %spec.select.v.i, %15
  tail call void @__ew32(ptr noundef %hw, i32 noundef 14400, i32 noundef %spec.select.i) #4
  %18 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %19, i32 14656
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %21 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %22, i32 1024
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %24 = and i32 %20, -17
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #4
  %26 = shl i32 %23, 24
  %27 = and i32 %26, 268435456
  %28 = or i32 %27, %25
  %reg.1.i = xor i32 %28, 268435456
  tail call void @__ew32(ptr noundef %hw, i32 noundef 14656, i32 noundef %reg.1.i) #4
  %29 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %30, i32 20488
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45.i) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %32 = or i32 %31, 768
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 20488, i32 noundef %33) #4
  %34 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mac1, align 4
  %call = tail call i32 %35(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_init_hw_80003es2lan, %if.then7)) #4
          to label %do.body12 [label %if.then7], !srcloc !73

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %37, i32 0, i32 64
  %38 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug362, ptr noundef %39, ptr noundef nonnull @.str.12) #4
  br label %do.body12

do.body12:                                        ; preds = %if.then7, %do.body2, %entry.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_init_hw_80003es2lan, %if.then24)) #4
          to label %do.end31 [label %if.then24], !srcloc !73

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 4
  %netdev26 = getelementptr inbounds %struct.e1000_adapter, ptr %41, i32 0, i32 64
  %42 = ptrtoint ptr %netdev26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug363, ptr noundef %43, ptr noundef nonnull @.str.13) #4
  br label %do.end31

do.end31:                                         ; preds = %if.then24, %do.body12
  %clear_vfta = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 6
  %44 = ptrtoint ptr %clear_vfta to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clear_vfta, align 4
  tail call void %45(ptr noundef %hw) #4
  %rar_entry_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 18
  %46 = ptrtoint ptr %rar_entry_count to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %rar_entry_count, align 4
  tail call void @e1000e_init_rx_addrs(ptr noundef %hw, i16 noundef zeroext %47) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_init_hw_80003es2lan, %if.then46)) #4
          to label %do.end53 [label %if.then46], !srcloc !73

if.then46:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw, align 4
  %netdev48 = getelementptr inbounds %struct.e1000_adapter, ptr %49, i32 0, i32 64
  %50 = ptrtoint ptr %netdev48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %netdev48, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug364, ptr noundef %51, ptr noundef nonnull @.str.14) #4
  br label %do.end53

do.end53:                                         ; preds = %if.then46, %do.end31
  %mta_reg_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 16
  %52 = ptrtoint ptr %mta_reg_count to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %mta_reg_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp227.not = icmp eq i16 %53, 0
  br i1 %cmp227.not, label %do.end53.for.end_crit_edge, label %do.end53.for.body_crit_edge

do.end53.for.body_crit_edge:                      ; preds = %do.end53
  br label %for.body

do.end53.for.end_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end53.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %do.end53.for.body_crit_edge ]
  %shl = shl nuw nsw i32 %indvars.iv, 2
  %add = add nuw nsw i32 %shl, 20992
  tail call void @__ew32(ptr noundef %hw, i32 noundef %add, i32 noundef 0) #4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %54 = ptrtoint ptr %mta_reg_count to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %mta_reg_count, align 2
  %56 = zext i16 %55 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %56
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %57 = trunc i32 %indvars.iv.next to i16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %do.end53.for.end_crit_edge
  %storemerge.lcssa = phi i16 [ 0, %do.end53.for.end_crit_edge ], [ %57, %for.end.loopexit ]
  %58 = ptrtoint ptr %i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %storemerge.lcssa, ptr %i, align 2
  %setup_link = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 15
  %59 = ptrtoint ptr %setup_link to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %setup_link, align 4
  %call58 = tail call i32 %60(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end61:                                         ; preds = %for.end
  %call62 = call fastcc i32 @e1000_read_kmrn_reg_80003es2lan(ptr noundef %hw, i32 noundef 9, ptr noundef nonnull %kum_reg_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then64, label %do.body93

if.then64:                                        ; preds = %if.end61
  %61 = ptrtoint ptr %kum_reg_data to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %kum_reg_data, align 2
  %63 = or i16 %62, 512
  store i16 %63, ptr %kum_reg_data, align 2
  %call67 = tail call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %hw, i32 noundef 9, i16 noundef zeroext %63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then64.if.end113_crit_edge, label %do.body71

if.then64.if.end113_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end113

do.body71:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_init_hw_80003es2lan, %if.end113.sink.split)) #4
          to label %if.end113 [label %if.end113.sink.split], !srcloc !73

do.body93:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_init_hw_80003es2lan, %if.end113.sink.split)) #4
          to label %if.end113 [label %if.end113.sink.split], !srcloc !73

if.end113.sink.split:                             ; preds = %do.body93, %do.body71
  %e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug366.sink = phi ptr [ @e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug365, %do.body71 ], [ @e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug366, %do.body93 ]
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw, align 4
  %netdev107 = getelementptr inbounds %struct.e1000_adapter, ptr %65, i32 0, i32 64
  %66 = ptrtoint ptr %netdev107 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %netdev107, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull %e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug366.sink, ptr noundef %67, ptr noundef nonnull @.str.10) #4
  br label %if.end113

if.end113:                                        ; preds = %if.end113.sink.split, %do.body93, %do.body71, %if.then64.if.end113_crit_edge
  %68 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 14376
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %71 = and i32 %70, -32514
  %72 = or i32 %71, 16641
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 14376, i32 noundef %73) #4
  %74 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i215 = getelementptr i8, ptr %75, i32 14632
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %77 = and i32 %76, -32514
  %78 = or i32 %77, 16641
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 14632, i32 noundef %79) #4
  %80 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i217 = getelementptr i8, ptr %81, i32 1024
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i217) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %83 = or i32 %82, 1
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 1024, i32 noundef %84) #4
  %85 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i219 = getelementptr i8, ptr %86, i32 1028
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i219) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %88 = and i32 %87, -16518913
  %89 = or i32 %88, 256
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 1028, i32 noundef %90) #4
  %91 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i221 = getelementptr i8, ptr %92, i32 1040
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i221) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %94 = and i32 %93, 16580607
  %95 = or i32 %94, 134217728
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 1040, i32 noundef %96) #4
  %97 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr129 = getelementptr i8, ptr %98, i32 24324
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !74
  %100 = and i32 %99, -4097
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 24324, i32 noundef %101) #4
  %dev_spec = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9
  %102 = ptrtoint ptr %dev_spec to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %dev_spec, align 4
  %call134 = call fastcc i32 @e1000_read_kmrn_reg_80003es2lan(ptr noundef %hw, i32 noundef 31, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.then136, label %if.end113.if.end145_crit_edge

if.end113.if.end145_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145

if.then136:                                       ; preds = %if.end113
  %103 = ptrtoint ptr %i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %i, align 2
  %105 = and i16 %104, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %105)
  %cmp139 = icmp eq i16 %105, 4
  br i1 %cmp139, label %if.then141, label %if.then136.if.end145_crit_edge

if.then136.if.end145_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145

if.then141:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #6
  %106 = ptrtoint ptr %dev_spec to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %dev_spec, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then141, %if.then136.if.end145_crit_edge, %if.end113.if.end145_crit_edge
  tail call void @e1000_clear_hw_cntrs_80003es2lan(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end145, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call134, %if.end145 ], [ %call58, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %kum_reg_data) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_link_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_led_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_write_vfta_generic(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_config_collision_dist_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_rar_set_generic(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_read_mac_addr_80003es2lan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @e1000_check_alt_mac_addr_generic(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @e1000_read_mac_addr_generic(ptr noundef %hw) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_rar_get_count_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_clear_hw_cntrs_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_speed_and_duplex_copper(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_speed_and_duplex_fiber_serdes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_disable_pcie_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_acquire_phy_80003es2lan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %func, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %conv1 = select i1 %tobool.not, i16 2, i16 4
  %call = tail call fastcc i32 @e1000_acquire_swfw_sync_80003es2lan(ptr noundef %hw, i16 noundef zeroext %conv1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_release_phy_80003es2lan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %func, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %call.i = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %hw) #4
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %e1000_release_swfw_sync_80003es2lan.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

e1000_release_swfw_sync_80003es2lan.exit:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 23388
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !69
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %neg.i = select i1 %tobool.not, i32 -3, i32 -5
  %and.i = and i32 %5, %neg.i
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23388, i32 noundef %and.i) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %hw) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_auto_rd_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_alt_mac_addr_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_init_rx_addrs(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_read_mac_addr_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_cfg_on_link_up_80003es2lan(ptr noundef %hw) #0 align 64 {
entry:
  %reg_data.i16 = alloca i16, align 2
  %reg_data2.i17 = alloca i16, align 2
  %reg_data.i = alloca i16, align 2
  %reg_data2.i = alloca i16, align 2
  %speed = alloca i16, align 2
  %duplex = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %speed) #4
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %speed, align 2, !annotation !71
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %duplex) #4
  %1 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %duplex, align 2, !annotation !71
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 12
  %2 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = call i32 @e1000e_get_speed_and_duplex_copper(ptr noundef %hw, ptr noundef nonnull %speed, ptr noundef nonnull %duplex) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %5)
  %cmp2 = icmp eq i16 %5, 1000
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_data.i) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_data2.i) #4
  %6 = ptrtoint ptr %reg_data2.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %reg_data2.i, align 2, !annotation !71
  %7 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %reg_data.i, align 2
  %call.i = call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge

if.then4.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_1000_80003es2lan.exit

if.end.i:                                         ; preds = %if.then4
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 1040
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %11 = and i32 %10, 16580607
  %12 = or i32 %11, 134217728
  %13 = call i32 @llvm.bswap.i32(i32 %12) #4
  call void @__ew32(ptr noundef %hw, i32 noundef 1040, i32 noundef %13) #4
  %read_reg.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %14 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i = call i32 %15(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge

if.end.i.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_1000_80003es2lan.exit

if.end5.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_reg.i.i, align 4
  %call.i36.i = call i32 %17(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %tobool7.not.i = icmp eq i32 %call.i36.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge

if.end5.i.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_1000_80003es2lan.exit

if.end9.i:                                        ; preds = %if.end5.i
  %18 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %reg_data.i, align 2
  %20 = ptrtoint ptr %reg_data2.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %reg_data2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp.not.i.not = icmp eq i16 %19, %21
  br i1 %cmp.not.i.not, label %if.end9.i.do.end.i_crit_edge, label %do.body.i.1

if.end9.i.do.end.i_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.body.i.1:                                      ; preds = %if.end9.i
  %22 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i.1 = call i32 %23(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool3.not.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool3.not.i.1, label %if.end5.i.1, label %do.body.i.1.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge

do.body.i.1.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge: ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_1000_80003es2lan.exit

if.end5.i.1:                                      ; preds = %do.body.i.1
  %24 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_reg.i.i, align 4
  %call.i36.i.1 = call i32 %25(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i.1)
  %tobool7.not.i.1 = icmp eq i32 %call.i36.i.1, 0
  br i1 %tobool7.not.i.1, label %if.end9.i.1, label %if.end5.i.1.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge

if.end5.i.1.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge: ; preds = %if.end5.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_1000_80003es2lan.exit

if.end9.i.1:                                      ; preds = %if.end5.i.1
  %26 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %reg_data.i, align 2
  %28 = ptrtoint ptr %reg_data2.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %reg_data2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp.not.i.1.not = icmp eq i16 %27, %29
  br i1 %cmp.not.i.1.not, label %if.end9.i.1.do.end.i_crit_edge, label %do.body.i.2

if.end9.i.1.do.end.i_crit_edge:                   ; preds = %if.end9.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.body.i.2:                                      ; preds = %if.end9.i.1
  %30 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i.2 = call i32 %31(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %tobool3.not.i.2 = icmp eq i32 %call.i.i.2, 0
  br i1 %tobool3.not.i.2, label %if.end5.i.2, label %do.body.i.2.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge

do.body.i.2.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge: ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_1000_80003es2lan.exit

if.end5.i.2:                                      ; preds = %do.body.i.2
  %32 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_reg.i.i, align 4
  %call.i36.i.2 = call i32 %33(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i.2)
  %tobool7.not.i.2 = icmp eq i32 %call.i36.i.2, 0
  br i1 %tobool7.not.i.2, label %if.end9.i.2, label %if.end5.i.2.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge

if.end5.i.2.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge: ; preds = %if.end5.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_1000_80003es2lan.exit

if.end9.i.2:                                      ; preds = %if.end5.i.2
  %34 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %reg_data.i, align 2
  %36 = ptrtoint ptr %reg_data2.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %reg_data2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp.not.i.2.not = icmp eq i16 %35, %37
  br i1 %cmp.not.i.2.not, label %if.end9.i.2.do.end.i_crit_edge, label %do.body.i.3

if.end9.i.2.do.end.i_crit_edge:                   ; preds = %if.end9.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.body.i.3:                                      ; preds = %if.end9.i.2
  %38 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i.3 = call i32 %39(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3)
  %tobool3.not.i.3 = icmp eq i32 %call.i.i.3, 0
  br i1 %tobool3.not.i.3, label %if.end5.i.3, label %do.body.i.3.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge

do.body.i.3.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge: ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_1000_80003es2lan.exit

if.end5.i.3:                                      ; preds = %do.body.i.3
  %40 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_reg.i.i, align 4
  %call.i36.i.3 = call i32 %41(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i.3)
  %tobool7.not.i.3 = icmp eq i32 %call.i36.i.3, 0
  br i1 %tobool7.not.i.3, label %if.end9.i.3, label %if.end5.i.3.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge

if.end5.i.3.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge: ; preds = %if.end5.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_1000_80003es2lan.exit

if.end9.i.3:                                      ; preds = %if.end5.i.3
  %42 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %reg_data.i, align 2
  %44 = ptrtoint ptr %reg_data2.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %reg_data2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %45)
  %cmp.not.i.3.not = icmp eq i16 %43, %45
  br i1 %cmp.not.i.3.not, label %if.end9.i.3.do.end.i_crit_edge, label %do.body.i.4

if.end9.i.3.do.end.i_crit_edge:                   ; preds = %if.end9.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.body.i.4:                                      ; preds = %if.end9.i.3
  %46 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i.4 = call i32 %47(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.4)
  %tobool3.not.i.4 = icmp eq i32 %call.i.i.4, 0
  br i1 %tobool3.not.i.4, label %if.end5.i.4, label %do.body.i.4.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge

do.body.i.4.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge: ; preds = %do.body.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_1000_80003es2lan.exit

if.end5.i.4:                                      ; preds = %do.body.i.4
  %48 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_reg.i.i, align 4
  %call.i36.i.4 = call i32 %49(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i.4)
  %tobool7.not.i.4 = icmp eq i32 %call.i36.i.4, 0
  br i1 %tobool7.not.i.4, label %if.end9.i.4, label %if.end5.i.4.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge

if.end5.i.4.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge: ; preds = %if.end5.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_1000_80003es2lan.exit

if.end9.i.4:                                      ; preds = %if.end5.i.4
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %reg_data.i, align 2
  br label %do.end.i

do.end.i:                                         ; preds = %if.end9.i.4, %if.end9.i.3.do.end.i_crit_edge, %if.end9.i.2.do.end.i_crit_edge, %if.end9.i.1.do.end.i_crit_edge, %if.end9.i.do.end.i_crit_edge
  %.lcssa = phi i16 [ %19, %if.end9.i.do.end.i_crit_edge ], [ %27, %if.end9.i.1.do.end.i_crit_edge ], [ %35, %if.end9.i.2.do.end.i_crit_edge ], [ %43, %if.end9.i.3.do.end.i_crit_edge ], [ %51, %if.end9.i.4 ]
  %52 = and i16 %.lcssa, -2049
  %53 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %reg_data.i, align 2
  %write_reg.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %54 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_reg.i.i, align 4
  %call.i37.i = call i32 %55(ptr noundef %hw, i32 noundef 6192, i16 noundef zeroext %52) #4
  br label %e1000_cfg_kmrn_1000_80003es2lan.exit

e1000_cfg_kmrn_1000_80003es2lan.exit:             ; preds = %do.end.i, %if.end5.i.4.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge, %do.body.i.4.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge, %if.end5.i.3.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge, %do.body.i.3.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge, %if.end5.i.2.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge, %do.body.i.2.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge, %if.end5.i.1.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge, %do.body.i.1.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge, %if.end5.i.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge, %if.end.i.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge, %if.then4.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i37.i, %do.end.i ], [ %call.i, %if.then4.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge ], [ %call.i.i, %if.end.i.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge ], [ %call.i36.i, %if.end5.i.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge ], [ %call.i.i.1, %do.body.i.1.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge ], [ %call.i36.i.1, %if.end5.i.1.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge ], [ %call.i.i.2, %do.body.i.2.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge ], [ %call.i36.i.2, %if.end5.i.2.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge ], [ %call.i.i.3, %do.body.i.3.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge ], [ %call.i36.i.3, %if.end5.i.3.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge ], [ %call.i.i.4, %do.body.i.4.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge ], [ %call.i36.i.4, %if.end5.i.4.e1000_cfg_kmrn_1000_80003es2lan.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data2.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data.i) #4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %56 = ptrtoint ptr %duplex to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %duplex, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_data.i16) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_data2.i17) #4
  %58 = ptrtoint ptr %reg_data2.i17 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -1, ptr %reg_data2.i17, align 2, !annotation !71
  %59 = ptrtoint ptr %reg_data.i16 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 4, ptr %reg_data.i16, align 2
  %call.i18 = call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %if.end.i23, label %if.else.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge

if.else.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_10_100_80003es2lan.exit

if.end.i23:                                       ; preds = %if.else
  %hw_addr.i.i20 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %60 = ptrtoint ptr %hw_addr.i.i20 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_addr.i.i20, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %61, i32 1040
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21) #4, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %63 = and i32 %62, 16580607
  %64 = or i32 %63, 150994944
  %65 = call i32 @llvm.bswap.i32(i32 %64) #4
  call void @__ew32(ptr noundef %hw, i32 noundef 1040, i32 noundef %65) #4
  %read_reg.i.i22 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %66 = ptrtoint ptr %read_reg.i.i22 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read_reg.i.i22, align 4
  %call.i.i25 = call i32 %67(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data.i16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25)
  %tobool3.not.i26 = icmp eq i32 %call.i.i25, 0
  br i1 %tobool3.not.i26, label %if.end5.i29, label %if.end.i23.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge

if.end.i23.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge: ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_10_100_80003es2lan.exit

if.end5.i29:                                      ; preds = %if.end.i23
  %68 = ptrtoint ptr %read_reg.i.i22 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read_reg.i.i22, align 4
  %call.i44.i = call i32 %69(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data2.i17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %tobool7.not.i28 = icmp eq i32 %call.i44.i, 0
  br i1 %tobool7.not.i28, label %if.end9.i34, label %if.end5.i29.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge

if.end5.i29.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge: ; preds = %if.end5.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_10_100_80003es2lan.exit

if.end9.i34:                                      ; preds = %if.end5.i29
  %70 = ptrtoint ptr %reg_data.i16 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %reg_data.i16, align 2
  %72 = ptrtoint ptr %reg_data2.i17 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %reg_data2.i17, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %73)
  %cmp.not.i30.not = icmp eq i16 %71, %73
  br i1 %cmp.not.i30.not, label %if.end9.i34.do.end.i36_crit_edge, label %do.body.i27.1

if.end9.i34.do.end.i36_crit_edge:                 ; preds = %if.end9.i34
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i36

do.body.i27.1:                                    ; preds = %if.end9.i34
  %74 = ptrtoint ptr %read_reg.i.i22 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read_reg.i.i22, align 4
  %call.i.i25.1 = call i32 %75(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data.i16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25.1)
  %tobool3.not.i26.1 = icmp eq i32 %call.i.i25.1, 0
  br i1 %tobool3.not.i26.1, label %if.end5.i29.1, label %do.body.i27.1.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge

do.body.i27.1.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge: ; preds = %do.body.i27.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_10_100_80003es2lan.exit

if.end5.i29.1:                                    ; preds = %do.body.i27.1
  %76 = ptrtoint ptr %read_reg.i.i22 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read_reg.i.i22, align 4
  %call.i44.i.1 = call i32 %77(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data2.i17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i.1)
  %tobool7.not.i28.1 = icmp eq i32 %call.i44.i.1, 0
  br i1 %tobool7.not.i28.1, label %if.end9.i34.1, label %if.end5.i29.1.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge

if.end5.i29.1.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge: ; preds = %if.end5.i29.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_10_100_80003es2lan.exit

if.end9.i34.1:                                    ; preds = %if.end5.i29.1
  %78 = ptrtoint ptr %reg_data.i16 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %reg_data.i16, align 2
  %80 = ptrtoint ptr %reg_data2.i17 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %reg_data2.i17, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %79, i16 %81)
  %cmp.not.i30.1.not = icmp eq i16 %79, %81
  br i1 %cmp.not.i30.1.not, label %if.end9.i34.1.do.end.i36_crit_edge, label %do.body.i27.2

if.end9.i34.1.do.end.i36_crit_edge:               ; preds = %if.end9.i34.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i36

do.body.i27.2:                                    ; preds = %if.end9.i34.1
  %82 = ptrtoint ptr %read_reg.i.i22 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read_reg.i.i22, align 4
  %call.i.i25.2 = call i32 %83(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data.i16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25.2)
  %tobool3.not.i26.2 = icmp eq i32 %call.i.i25.2, 0
  br i1 %tobool3.not.i26.2, label %if.end5.i29.2, label %do.body.i27.2.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge

do.body.i27.2.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge: ; preds = %do.body.i27.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_10_100_80003es2lan.exit

if.end5.i29.2:                                    ; preds = %do.body.i27.2
  %84 = ptrtoint ptr %read_reg.i.i22 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read_reg.i.i22, align 4
  %call.i44.i.2 = call i32 %85(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data2.i17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i.2)
  %tobool7.not.i28.2 = icmp eq i32 %call.i44.i.2, 0
  br i1 %tobool7.not.i28.2, label %if.end9.i34.2, label %if.end5.i29.2.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge

if.end5.i29.2.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge: ; preds = %if.end5.i29.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_10_100_80003es2lan.exit

if.end9.i34.2:                                    ; preds = %if.end5.i29.2
  %86 = ptrtoint ptr %reg_data.i16 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %reg_data.i16, align 2
  %88 = ptrtoint ptr %reg_data2.i17 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %reg_data2.i17, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %87, i16 %89)
  %cmp.not.i30.2.not = icmp eq i16 %87, %89
  br i1 %cmp.not.i30.2.not, label %if.end9.i34.2.do.end.i36_crit_edge, label %do.body.i27.3

if.end9.i34.2.do.end.i36_crit_edge:               ; preds = %if.end9.i34.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i36

do.body.i27.3:                                    ; preds = %if.end9.i34.2
  %90 = ptrtoint ptr %read_reg.i.i22 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read_reg.i.i22, align 4
  %call.i.i25.3 = call i32 %91(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data.i16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25.3)
  %tobool3.not.i26.3 = icmp eq i32 %call.i.i25.3, 0
  br i1 %tobool3.not.i26.3, label %if.end5.i29.3, label %do.body.i27.3.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge

do.body.i27.3.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge: ; preds = %do.body.i27.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_10_100_80003es2lan.exit

if.end5.i29.3:                                    ; preds = %do.body.i27.3
  %92 = ptrtoint ptr %read_reg.i.i22 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %read_reg.i.i22, align 4
  %call.i44.i.3 = call i32 %93(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data2.i17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i.3)
  %tobool7.not.i28.3 = icmp eq i32 %call.i44.i.3, 0
  br i1 %tobool7.not.i28.3, label %if.end9.i34.3, label %if.end5.i29.3.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge

if.end5.i29.3.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge: ; preds = %if.end5.i29.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_10_100_80003es2lan.exit

if.end9.i34.3:                                    ; preds = %if.end5.i29.3
  %94 = ptrtoint ptr %reg_data.i16 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %reg_data.i16, align 2
  %96 = ptrtoint ptr %reg_data2.i17 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %reg_data2.i17, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %95, i16 %97)
  %cmp.not.i30.3.not = icmp eq i16 %95, %97
  br i1 %cmp.not.i30.3.not, label %if.end9.i34.3.do.end.i36_crit_edge, label %do.body.i27.4

if.end9.i34.3.do.end.i36_crit_edge:               ; preds = %if.end9.i34.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i36

do.body.i27.4:                                    ; preds = %if.end9.i34.3
  %98 = ptrtoint ptr %read_reg.i.i22 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read_reg.i.i22, align 4
  %call.i.i25.4 = call i32 %99(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data.i16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25.4)
  %tobool3.not.i26.4 = icmp eq i32 %call.i.i25.4, 0
  br i1 %tobool3.not.i26.4, label %if.end5.i29.4, label %do.body.i27.4.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge

do.body.i27.4.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge: ; preds = %do.body.i27.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_10_100_80003es2lan.exit

if.end5.i29.4:                                    ; preds = %do.body.i27.4
  %100 = ptrtoint ptr %read_reg.i.i22 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read_reg.i.i22, align 4
  %call.i44.i.4 = call i32 %101(ptr noundef %hw, i32 noundef 6192, ptr noundef nonnull %reg_data2.i17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i.4)
  %tobool7.not.i28.4 = icmp eq i32 %call.i44.i.4, 0
  br i1 %tobool7.not.i28.4, label %if.end9.i34.4, label %if.end5.i29.4.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge

if.end5.i29.4.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge: ; preds = %if.end5.i29.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_cfg_kmrn_10_100_80003es2lan.exit

if.end9.i34.4:                                    ; preds = %if.end5.i29.4
  call void @__sanitizer_cov_trace_pc() #6
  %102 = ptrtoint ptr %reg_data.i16 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %reg_data.i16, align 2
  br label %do.end.i36

do.end.i36:                                       ; preds = %if.end9.i34.4, %if.end9.i34.3.do.end.i36_crit_edge, %if.end9.i34.2.do.end.i36_crit_edge, %if.end9.i34.1.do.end.i36_crit_edge, %if.end9.i34.do.end.i36_crit_edge
  %.lcssa42 = phi i16 [ %71, %if.end9.i34.do.end.i36_crit_edge ], [ %79, %if.end9.i34.1.do.end.i36_crit_edge ], [ %87, %if.end9.i34.2.do.end.i36_crit_edge ], [ %95, %if.end9.i34.3.do.end.i36_crit_edge ], [ %103, %if.end9.i34.4 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %57)
  %cmp15.i = icmp eq i16 %57, 1
  %104 = and i16 %.lcssa42, -2049
  %masksel.i = select i1 %cmp15.i, i16 2048, i16 0
  %storemerge.i = or i16 %104, %masksel.i
  %105 = ptrtoint ptr %reg_data.i16 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %storemerge.i, ptr %reg_data.i16, align 2
  %write_reg.i.i35 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %106 = ptrtoint ptr %write_reg.i.i35 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write_reg.i.i35, align 4
  %call.i45.i = call i32 %107(ptr noundef %hw, i32 noundef 6192, i16 noundef zeroext %storemerge.i) #4
  br label %e1000_cfg_kmrn_10_100_80003es2lan.exit

e1000_cfg_kmrn_10_100_80003es2lan.exit:           ; preds = %do.end.i36, %if.end5.i29.4.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge, %do.body.i27.4.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge, %if.end5.i29.3.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge, %do.body.i27.3.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge, %if.end5.i29.2.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge, %do.body.i27.2.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge, %if.end5.i29.1.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge, %do.body.i27.1.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge, %if.end5.i29.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge, %if.end.i23.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge, %if.else.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge
  %retval.0.i37 = phi i32 [ %call.i45.i, %do.end.i36 ], [ %call.i18, %if.else.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge ], [ %call.i.i25, %if.end.i23.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge ], [ %call.i44.i, %if.end5.i29.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge ], [ %call.i.i25.1, %do.body.i27.1.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge ], [ %call.i44.i.1, %if.end5.i29.1.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge ], [ %call.i.i25.2, %do.body.i27.2.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge ], [ %call.i44.i.2, %if.end5.i29.2.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge ], [ %call.i.i25.3, %do.body.i27.3.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge ], [ %call.i44.i.3, %if.end5.i29.3.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge ], [ %call.i.i25.4, %do.body.i27.4.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge ], [ %call.i44.i.4, %if.end5.i29.4.e1000_cfg_kmrn_10_100_80003es2lan.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data2.i17) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data.i16) #4
  br label %cleanup

cleanup:                                          ; preds = %e1000_cfg_kmrn_10_100_80003es2lan.exit, %e1000_cfg_kmrn_1000_80003es2lan.exit, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %retval.0.i, %e1000_cfg_kmrn_1000_80003es2lan.exit ], [ %retval.0.i37, %e1000_cfg_kmrn_10_100_80003es2lan.exit ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %duplex) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_polarity_m88(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_check_reset_block_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_sw_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_phy_force_speed_duplex_80003es2lan(ptr noundef %hw) #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  %link = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #4
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !71
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #4
  %1 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %link, align 1, !annotation !71
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %2 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %3(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %phy_data, align 2
  %6 = and i16 %5, -97
  store i16 %6, ptr %phy_data, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %7 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg.i, align 4
  %call.i121 = call i32 %8(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool3.not = icmp eq i32 %call.i121, 0
  br i1 %tobool3.not, label %do.body6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body6:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_phy_force_speed_duplex_80003es2lan.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_phy_force_speed_duplex_80003es2lan, %if.then11)) #4
          to label %do.end15 [label %if.then11], !srcloc !73

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %10, i32 0, i32 64
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  %13 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %phy_data, align 2
  %conv12 = zext i16 %14 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_phy_force_speed_duplex_80003es2lan.__UNIQUE_ID_ddebug355, ptr noundef %12, ptr noundef nonnull @.str.16, i32 noundef %conv12) #4
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body6
  %15 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_reg.i, align 4
  %call.i123 = call i32 %16(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool17.not = icmp eq i32 %call.i123, 0
  br i1 %tobool17.not, label %if.end19, label %do.end15.cleanup_crit_edge

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %do.end15
  call void @e1000e_phy_force_speed_duplex_setup(ptr noundef %hw, ptr noundef nonnull %phy_data) #4
  %17 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %phy_data, align 2
  %19 = or i16 %18, -32768
  store i16 %19, ptr %phy_data, align 2
  %20 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_reg.i, align 4
  %call.i125 = call i32 %21(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool23.not = icmp eq i32 %call.i125, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748) #4
  %autoneg_wait_to_complete = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 24
  %23 = ptrtoint ptr %autoneg_wait_to_complete to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %autoneg_wait_to_complete, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool26.not = icmp eq i8 %24, 0
  br i1 %tobool26.not, label %if.end25.if.end64_crit_edge, label %do.body29

if.end25.if.end64_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

do.body29:                                        ; preds = %if.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_phy_force_speed_duplex_80003es2lan.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_phy_force_speed_duplex_80003es2lan, %if.then41)) #4
          to label %do.end48 [label %if.then41], !srcloc !73

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %netdev43 = getelementptr inbounds %struct.e1000_adapter, ptr %26, i32 0, i32 64
  %27 = ptrtoint ptr %netdev43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev43, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_phy_force_speed_duplex_80003es2lan.__UNIQUE_ID_ddebug356, ptr noundef %28, ptr noundef nonnull @.str.17) #4
  br label %do.end48

do.end48:                                         ; preds = %if.then41, %do.body29
  %call49 = call i32 @e1000e_phy_has_link_generic(ptr noundef %hw, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %link) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %do.end48.cleanup_crit_edge

do.end48.cleanup_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end52:                                         ; preds = %do.end48
  %29 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %link, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool53.not = icmp eq i8 %30, 0
  br i1 %tobool53.not, label %if.then54, label %if.end52.if.end59_crit_edge

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

if.then54:                                        ; preds = %if.end52
  %call55 = call i32 @e1000e_phy_reset_dsp(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then54.if.end59_crit_edge, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then54.if.end59_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

if.end59:                                         ; preds = %if.then54.if.end59_crit_edge, %if.end52.if.end59_crit_edge
  %call60 = call i32 @e1000e_phy_has_link_generic(ptr noundef %hw, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %link) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end59.if.end64_crit_edge, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

if.end64:                                         ; preds = %if.end59.if.end64_crit_edge, %if.end25.if.end64_crit_edge
  %31 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_reg.i, align 4
  %call.i127 = call i32 %32(ptr noundef %hw, i32 noundef 85, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool66.not = icmp eq i32 %call.i127, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end68:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %phy_data, align 2
  %35 = and i16 %34, -24
  %forced_speed_duplex = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 19
  %36 = ptrtoint ptr %forced_speed_duplex to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %forced_speed_duplex, align 2
  %38 = and i8 %37, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool74.not = icmp eq i8 %38, 0
  %storemerge.v = select i1 %tobool74.not, i16 5, i16 4
  %storemerge = or i16 %35, %storemerge.v
  %39 = or i16 %storemerge, 16
  %40 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %phy_data, align 2
  %41 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_reg.i, align 4
  %call.i129 = call i32 %42(ptr noundef %hw, i32 noundef 85, i16 noundef zeroext %39) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.end64.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.then54.cleanup_crit_edge, %do.end48.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i129, %if.end68 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i121, %if.end.cleanup_crit_edge ], [ %call.i123, %do.end15.cleanup_crit_edge ], [ %call.i125, %if.end19.cleanup_crit_edge ], [ %call49, %do.end48.cleanup_crit_edge ], [ %call55, %if.then54.cleanup_crit_edge ], [ %call60, %if.end59.cleanup_crit_edge ], [ %call.i127, %if.end64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_cfg_done_80003es2lan(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %func, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp = icmp eq i16 %1, 1
  %spec.store.select = select i1 %cmp, i32 524288, i32 262144
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end4.while.body_crit_edge, %entry
  %timeout.023 = phi i32 [ 100, %entry ], [ %dec, %if.end4.while.body_crit_edge ]
  %2 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4112
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !69
  %5 = shl i32 %4, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %and = and i32 %5, %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %dec = add nsw i32 %timeout.023, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body7.critedge, label %if.end4.while.body_crit_edge

if.end4.while.body_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

do.body7.critedge:                                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_get_cfg_done_80003es2lan.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_get_cfg_done_80003es2lan, %if.then12)) #4
          to label %cleanup [label %if.then12], !srcloc !73

if.then12:                                        ; preds = %do.body7.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %7, i32 0, i32 64
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_get_cfg_done_80003es2lan.__UNIQUE_ID_ddebug354, ptr noundef %9, ptr noundef nonnull @.str.19) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.body7.critedge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %if.then12 ], [ -9, %do.body7.critedge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_cable_length_80003es2lan(ptr noundef %hw) #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #4
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !71
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 186, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_data, align 2
  %5 = and i16 %4, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %5)
  %cmp = icmp ugt i16 %5, 5
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv3 = zext i16 %5 to i32
  %arrayidx = getelementptr [11 x i16], ptr @e1000_gg82563_cable_length_table, i32 0, i32 %conv3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %min_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 17
  %8 = ptrtoint ptr %min_cable_length to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %min_cable_length, align 4
  %add = add nuw nsw i32 %conv3, 5
  %arrayidx8 = getelementptr [11 x i16], ptr @e1000_gg82563_cable_length_table, i32 0, i32 %add
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx8, align 2
  %max_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 16
  %11 = ptrtoint ptr %max_cable_length to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %max_cable_length, align 2
  %conv10 = zext i16 %7 to i32
  %conv12 = zext i16 %10 to i32
  %add13 = add nuw nsw i32 %conv12, %conv10
  %div26 = lshr i32 %add13, 1
  %conv14 = trunc i32 %div26 to i16
  %cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 15
  %12 = ptrtoint ptr %cable_length to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv14, ptr %cable_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call.i, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_info_m88(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_read_phy_reg_gg82563_80003es2lan(ptr noundef %hw, i32 noundef %offset, ptr noundef %data) #0 align 64 {
entry:
  %temp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp) #4
  %func.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %func.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  %conv1.i = select i1 %tobool.not.i, i16 2, i16 4
  %call.i = tail call fastcc i32 @e1000_acquire_swfw_sync_80003es2lan(ptr noundef %hw, i16 noundef zeroext %conv1.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %offset, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %and)
  %cmp.inv = icmp ugt i32 %and, 29
  %. = select i1 %cmp.inv, i32 29, i32 22
  %conv3 = lshr i32 %offset, 5
  %2 = and i32 %conv3, 2047
  %conv4 = trunc i32 %2 to i16
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv4, ptr %temp, align 2
  %call5 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %., i16 noundef zeroext %conv4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  %4 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %func.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.then7
  %call.i.i = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %hw) #4
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %e1000_release_phy_80003es2lan.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i

e1000_release_phy_80003es2lan.exit:               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i47 = icmp eq i16 %5, 0
  %hw_addr.i.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %hw_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 23388
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !69
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %neg.i.i = select i1 %tobool.not.i47, i32 -3, i32 -5
  %and.i.i = and i32 %9, %neg.i.i
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23388, i32 noundef %and.i.i) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %hw) #4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %dev_spec = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9
  %10 = ptrtoint ptr %dev_spec to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dev_spec, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %if.else22, label %if.then10

if.then10:                                        ; preds = %if.end8
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #4
  %call11 = call i32 @e1000e_read_phy_reg_mdic(ptr noundef %hw, i32 noundef %., ptr noundef nonnull %temp) #4
  %12 = ptrtoint ptr %temp to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %temp, align 2
  %conv15 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv15)
  %cmp16.not = icmp eq i32 %2, %conv15
  br i1 %cmp16.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.then10
  %14 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %func.i, align 4
  br label %while.cond.i.i51

while.cond.i.i51:                                 ; preds = %while.cond.i.i51.while.cond.i.i51_crit_edge, %if.then18
  %call.i.i49 = call i32 @e1000e_get_hw_semaphore(ptr noundef %hw) #4
  %cmp.not.i.i50 = icmp eq i32 %call.i.i49, 0
  br i1 %cmp.not.i.i50, label %e1000_release_phy_80003es2lan.exit57, label %while.cond.i.i51.while.cond.i.i51_crit_edge

while.cond.i.i51.while.cond.i.i51_crit_edge:      ; preds = %while.cond.i.i51
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i51

e1000_release_phy_80003es2lan.exit57:             ; preds = %while.cond.i.i51
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i52 = icmp eq i16 %15, 0
  %hw_addr.i.i.i53 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %16 = ptrtoint ptr %hw_addr.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_addr.i.i.i53, align 4
  %add.ptr.i.i.i54 = getelementptr i8, ptr %17, i32 23388
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i54) #4, !srcloc !69
  %19 = call i32 @llvm.bswap.i32(i32 %18) #4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %neg.i.i55 = select i1 %tobool.not.i52, i32 -3, i32 -5
  %and.i.i56 = and i32 %19, %neg.i.i55
  call void @__ew32(ptr noundef %hw, i32 noundef 23388, i32 noundef %and.i.i56) #4
  call void @e1000e_put_hw_semaphore(ptr noundef %hw) #4
  br label %cleanup

if.end19:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #4
  %call21 = call i32 @e1000e_read_phy_reg_mdic(ptr noundef %hw, i32 noundef %and, ptr noundef %data) #4
  call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #4
  br label %if.end25

if.else22:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %call24 = tail call i32 @e1000e_read_phy_reg_mdic(ptr noundef %hw, i32 noundef %and, ptr noundef %data) #4
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %if.end19
  %ret_val.0 = phi i32 [ %call21, %if.end19 ], [ %call24, %if.else22 ]
  %20 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %func.i, align 4
  br label %while.cond.i.i61

while.cond.i.i61:                                 ; preds = %while.cond.i.i61.while.cond.i.i61_crit_edge, %if.end25
  %call.i.i59 = call i32 @e1000e_get_hw_semaphore(ptr noundef %hw) #4
  %cmp.not.i.i60 = icmp eq i32 %call.i.i59, 0
  br i1 %cmp.not.i.i60, label %e1000_release_phy_80003es2lan.exit67, label %while.cond.i.i61.while.cond.i.i61_crit_edge

while.cond.i.i61.while.cond.i.i61_crit_edge:      ; preds = %while.cond.i.i61
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i61

e1000_release_phy_80003es2lan.exit67:             ; preds = %while.cond.i.i61
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i62 = icmp eq i16 %21, 0
  %hw_addr.i.i.i63 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %22 = ptrtoint ptr %hw_addr.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_addr.i.i.i63, align 4
  %add.ptr.i.i.i64 = getelementptr i8, ptr %23, i32 23388
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i64) #4, !srcloc !69
  %25 = call i32 @llvm.bswap.i32(i32 %24) #4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %neg.i.i65 = select i1 %tobool.not.i62, i32 -3, i32 -5
  %and.i.i66 = and i32 %25, %neg.i.i65
  call void @__ew32(ptr noundef %hw, i32 noundef 23388, i32 noundef %and.i.i66) #4
  call void @e1000e_put_hw_semaphore(ptr noundef %hw) #4
  br label %cleanup

cleanup:                                          ; preds = %e1000_release_phy_80003es2lan.exit67, %e1000_release_phy_80003es2lan.exit57, %e1000_release_phy_80003es2lan.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %e1000_release_phy_80003es2lan.exit ], [ -2, %e1000_release_phy_80003es2lan.exit57 ], [ %ret_val.0, %e1000_release_phy_80003es2lan.exit67 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_hw_reset_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_set_d3_lplu_state(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_write_phy_reg_gg82563_80003es2lan(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) #0 align 64 {
entry:
  %temp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp) #4
  %func.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %func.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  %conv1.i = select i1 %tobool.not.i, i16 2, i16 4
  %call.i = tail call fastcc i32 @e1000_acquire_swfw_sync_80003es2lan(ptr noundef %hw, i16 noundef zeroext %conv1.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %offset, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %and)
  %cmp.inv = icmp ugt i32 %and, 29
  %. = select i1 %cmp.inv, i32 29, i32 22
  %conv3 = lshr i32 %offset, 5
  %2 = and i32 %conv3, 2047
  %conv4 = trunc i32 %2 to i16
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv4, ptr %temp, align 2
  %call5 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %., i16 noundef zeroext %conv4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  %4 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %func.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.then7
  %call.i.i = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %hw) #4
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %e1000_release_phy_80003es2lan.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i

e1000_release_phy_80003es2lan.exit:               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i47 = icmp eq i16 %5, 0
  %hw_addr.i.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %hw_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 23388
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !69
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %neg.i.i = select i1 %tobool.not.i47, i32 -3, i32 -5
  %and.i.i = and i32 %9, %neg.i.i
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23388, i32 noundef %and.i.i) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %hw) #4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %dev_spec = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9
  %10 = ptrtoint ptr %dev_spec to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dev_spec, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %if.else22, label %if.then10

if.then10:                                        ; preds = %if.end8
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #4
  %call11 = call i32 @e1000e_read_phy_reg_mdic(ptr noundef %hw, i32 noundef %., ptr noundef nonnull %temp) #4
  %12 = ptrtoint ptr %temp to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %temp, align 2
  %conv15 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv15)
  %cmp16.not = icmp eq i32 %2, %conv15
  br i1 %cmp16.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.then10
  %14 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %func.i, align 4
  br label %while.cond.i.i51

while.cond.i.i51:                                 ; preds = %while.cond.i.i51.while.cond.i.i51_crit_edge, %if.then18
  %call.i.i49 = call i32 @e1000e_get_hw_semaphore(ptr noundef %hw) #4
  %cmp.not.i.i50 = icmp eq i32 %call.i.i49, 0
  br i1 %cmp.not.i.i50, label %e1000_release_phy_80003es2lan.exit57, label %while.cond.i.i51.while.cond.i.i51_crit_edge

while.cond.i.i51.while.cond.i.i51_crit_edge:      ; preds = %while.cond.i.i51
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i51

e1000_release_phy_80003es2lan.exit57:             ; preds = %while.cond.i.i51
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i52 = icmp eq i16 %15, 0
  %hw_addr.i.i.i53 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %16 = ptrtoint ptr %hw_addr.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_addr.i.i.i53, align 4
  %add.ptr.i.i.i54 = getelementptr i8, ptr %17, i32 23388
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i54) #4, !srcloc !69
  %19 = call i32 @llvm.bswap.i32(i32 %18) #4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %neg.i.i55 = select i1 %tobool.not.i52, i32 -3, i32 -5
  %and.i.i56 = and i32 %19, %neg.i.i55
  call void @__ew32(ptr noundef %hw, i32 noundef 23388, i32 noundef %and.i.i56) #4
  call void @e1000e_put_hw_semaphore(ptr noundef %hw) #4
  br label %cleanup

if.end19:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #4
  %call21 = call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %and, i16 noundef zeroext %data) #4
  call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #4
  br label %if.end25

if.else22:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %call24 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %and, i16 noundef zeroext %data) #4
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %if.end19
  %ret_val.0 = phi i32 [ %call21, %if.end19 ], [ %call24, %if.else22 ]
  %20 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %func.i, align 4
  br label %while.cond.i.i61

while.cond.i.i61:                                 ; preds = %while.cond.i.i61.while.cond.i.i61_crit_edge, %if.end25
  %call.i.i59 = call i32 @e1000e_get_hw_semaphore(ptr noundef %hw) #4
  %cmp.not.i.i60 = icmp eq i32 %call.i.i59, 0
  br i1 %cmp.not.i.i60, label %e1000_release_phy_80003es2lan.exit67, label %while.cond.i.i61.while.cond.i.i61_crit_edge

while.cond.i.i61.while.cond.i.i61_crit_edge:      ; preds = %while.cond.i.i61
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i61

e1000_release_phy_80003es2lan.exit67:             ; preds = %while.cond.i.i61
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i62 = icmp eq i16 %21, 0
  %hw_addr.i.i.i63 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %22 = ptrtoint ptr %hw_addr.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_addr.i.i.i63, align 4
  %add.ptr.i.i.i64 = getelementptr i8, ptr %23, i32 23388
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i64) #4, !srcloc !69
  %25 = call i32 @llvm.bswap.i32(i32 %24) #4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %neg.i.i65 = select i1 %tobool.not.i62, i32 -3, i32 -5
  %and.i.i66 = and i32 %25, %neg.i.i65
  call void @__ew32(ptr noundef %hw, i32 noundef 23388, i32 noundef %and.i.i66) #4
  call void @e1000e_put_hw_semaphore(ptr noundef %hw) #4
  br label %cleanup

cleanup:                                          ; preds = %e1000_release_phy_80003es2lan.exit67, %e1000_release_phy_80003es2lan.exit57, %e1000_release_phy_80003es2lan.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %e1000_release_phy_80003es2lan.exit ], [ -2, %e1000_release_phy_80003es2lan.exit57 ], [ %ret_val.0, %e1000_release_phy_80003es2lan.exit67 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_phy_force_speed_duplex_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_has_link_generic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_reset_dsp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_phy_reg_mdic(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_phy_reg_mdic(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_acquire_nvm_80003es2lan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @e1000_acquire_swfw_sync_80003es2lan(ptr noundef %hw, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @e1000e_acquire_nvm(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.while.cond.i_crit_edge

if.end.while.cond.i_crit_edge:                    ; preds = %if.end
  br label %while.cond.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end.while.cond.i_crit_edge
  %call.i = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %hw) #4
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %e1000_release_swfw_sync_80003es2lan.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

e1000_release_swfw_sync_80003es2lan.exit:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 23388
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %3 = and i32 %2, -16777217
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23388, i32 noundef %4) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %hw) #4
  br label %cleanup

cleanup:                                          ; preds = %e1000_release_swfw_sync_80003es2lan.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %e1000_release_swfw_sync_80003es2lan.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_nvm_eerd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_release_nvm_80003es2lan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @e1000e_release_nvm(ptr noundef %hw) #4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %call.i = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %hw) #4
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %e1000_release_swfw_sync_80003es2lan.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

e1000_release_swfw_sync_80003es2lan.exit:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 23388
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %3 = and i32 %2, -16777217
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23388, i32 noundef %4) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %hw) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_reload_nvm_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_update_nvm_checksum_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_valid_led_default(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_validate_nvm_checksum_generic(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_write_nvm_80003es2lan(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @e1000e_write_nvm_spi(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr noundef %data) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_acquire_nvm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_release_nvm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_nvm_spi(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !20, !21, !23, !24, !26, !27, !29, !31, !32, !33, !35, !36, !38, !39, !41, !43, !45, !47, !48, !49, !51, !52, !54, !55, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @e1000_es2_info, !1, !"e1000_es2_info", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 1394, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 298, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @e1000_acquire_swfw_sync_80003es2lan.__UNIQUE_ID_ddebug353, !3, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 942, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @e1000_copper_link_setup_gg82563_80003es2lan.__UNIQUE_ID_ddebug367, !9, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!12 = !{ptr @es2_mac_ops, !13, !"es2_mac_ops", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 1339, i32 42}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 674, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug357, !15, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 676, i32 2}
!20 = !{ptr @e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug358, !19, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 691, i32 2}
!23 = !{ptr @e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug359, !22, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 705, i32 4}
!26 = !{ptr @e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug360, !25, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!27 = !{ptr @e1000_reset_hw_80003es2lan.__UNIQUE_ID_ddebug361, !28, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 707, i32 3}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 742, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug362, !30, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 745, i32 2}
!35 = !{ptr @e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug363, !34, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 752, i32 2}
!38 = !{ptr @e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug364, !37, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!39 = !{ptr @e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug365, !40, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 771, i32 4}
!41 = !{ptr @e1000_init_hw_80003es2lan.__UNIQUE_ID_ddebug366, !42, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 773, i32 3}
!43 = !{ptr @es2_phy_ops, !44, !"es2_phy_ops", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 1365, i32 42}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 539, i32 2}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @e1000_phy_force_speed_duplex_80003es2lan.__UNIQUE_ID_ddebug355, !46, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 557, i32 3}
!51 = !{ptr @e1000_phy_force_speed_duplex_80003es2lan.__UNIQUE_ID_ddebug356, !50, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 507, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @e1000_get_cfg_done_80003es2lan.__UNIQUE_ID_ddebug354, !53, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!56 = !{ptr @e1000_gg82563_cable_length_table, !57, !"e1000_gg82563_cable_length_table", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 14, i32 18}
!58 = !{ptr @es2_nvm_ops, !59, !"es2_nvm_ops", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/e1000e/80003es2lan.c", i32 1383, i32 42}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 1928795}
!70 = !{i64 2156937644}
!71 = !{!"auto-init"}
!72 = !{i8 0, i8 2}
!73 = !{i64 2148928997, i64 2148929002, i64 2148929015, i64 2148929059, i64 2148929093, i64 2148929114}
!74 = !{i64 2156978944}
