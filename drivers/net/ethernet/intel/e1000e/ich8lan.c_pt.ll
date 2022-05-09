; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/e1000e/ich8lan.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/ich8lan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_info = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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

@e1000_enable_ulp_lpt_lp.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"e1000e\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"e1000_enable_ulp_lpt_lp\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/intel/e1000e/ich8lan.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CABLE_DISCONNECTED %s set after %dmsec\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"not\00", [28 x i8] zeroinitializer }, align 32
@e1000_enable_ulp_lpt_lp.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 1, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error in ULP enable flow: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@e1000e_set_kmrn_lock_loss_workaround_ich8lan.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 5, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"e1000e_set_kmrn_lock_loss_workaround_ich8lan\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Workaround applies to ICH8 only.\0A\00", [62 x i8] zeroinitializer }, align 32
@e1000_resume_workarounds_pchlan.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 5, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"e1000_resume_workarounds_pchlan\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to init PHY flow ret_val=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@e1000_resume_workarounds_pchlan.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 5, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to setup iRST\0A\00", [42 x i8] zeroinitializer }, align 32
@e1000_resume_workarounds_pchlan.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 5, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error %d in resume workarounds\0A\00", [32 x i8] zeroinitializer }, align 32
@ich8_mac_ops = internal constant { %struct.e1000_mac_operations, [36 x i8] } { %struct.e1000_mac_operations { ptr null, ptr null, ptr null, ptr @e1000_check_for_copper_link_ich8lan, ptr null, ptr @e1000_clear_hw_cntrs_ich8lan, ptr null, ptr @e1000_get_bus_info_ich8lan, ptr @e1000_set_lan_id_single_port, ptr @e1000_get_link_up_info_ich8lan, ptr null, ptr null, ptr @e1000e_update_mc_addr_list_generic, ptr @e1000_reset_hw_ich8lan, ptr @e1000_init_hw_ich8lan, ptr @e1000_setup_link_ich8lan, ptr @e1000_setup_copper_link_ich8lan, ptr null, ptr null, ptr @e1000e_config_collision_dist_generic, ptr @e1000e_rar_set_generic, ptr null, ptr @e1000e_rar_get_count_generic }, [36 x i8] zeroinitializer }, align 32
@ich8_phy_ops = internal constant { %struct.e1000_phy_operations, [40 x i8] } { %struct.e1000_phy_operations { ptr @e1000_acquire_swflag_ich8lan, ptr null, ptr null, ptr @e1000_check_reset_block_ich8lan, ptr null, ptr null, ptr @e1000_get_cfg_done_ich8lan, ptr @e1000e_get_cable_length_igp_2, ptr null, ptr null, ptr @e1000e_read_phy_reg_igp, ptr null, ptr null, ptr @e1000_release_swflag_ich8lan, ptr @e1000_phy_hw_reset_ich8lan, ptr @e1000_set_d0_lplu_state_ich8lan, ptr @e1000_set_d3_lplu_state_ich8lan, ptr @e1000e_write_phy_reg_igp, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ich8_nvm_ops = internal constant { %struct.e1000_nvm_operations, [32 x i8] } { %struct.e1000_nvm_operations { ptr @e1000_acquire_nvm_ich8lan, ptr @e1000_read_nvm_ich8lan, ptr @e1000_release_nvm_ich8lan, ptr @e1000e_reload_nvm_generic, ptr @e1000_update_nvm_checksum_ich8lan, ptr @e1000_valid_led_default_ich8lan, ptr @e1000_validate_nvm_checksum_ich8lan, ptr @e1000_write_nvm_ich8lan }, [32 x i8] zeroinitializer }, align 32
@e1000_ich8_info = dso_local constant { %struct.e1000_info, [60 x i8] } { %struct.e1000_info { i32 6, i32 33323, i32 0, i32 8, i32 1522, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @ich8_nvm_ops }, [60 x i8] zeroinitializer }, align 32
@e1000_ich9_info = dso_local constant { %struct.e1000_info, [60 x i8] } { %struct.e1000_info { i32 7, i32 33451, i32 0, i32 18, i32 9234, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @ich8_nvm_ops }, [60 x i8] zeroinitializer }, align 32
@e1000_ich10_info = dso_local constant { %struct.e1000_info, [60 x i8] } { %struct.e1000_info { i32 8, i32 33451, i32 0, i32 18, i32 9234, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @ich8_nvm_ops }, [60 x i8] zeroinitializer }, align 32
@e1000_pch_info = dso_local constant { %struct.e1000_info, [60 x i8] } { %struct.e1000_info { i32 9, i32 295595, i32 16, i32 26, i32 4096, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @ich8_nvm_ops }, [60 x i8] zeroinitializer }, align 32
@e1000_pch2_info = dso_local constant { %struct.e1000_info, [60 x i8] } { %struct.e1000_info { i32 10, i32 49835, i32 16432, i32 26, i32 9022, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @ich8_nvm_ops }, [60 x i8] zeroinitializer }, align 32
@e1000_pch_lpt_info = dso_local constant { %struct.e1000_info, [60 x i8] } { %struct.e1000_info { i32 11, i32 49835, i32 16432, i32 26, i32 9022, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @ich8_nvm_ops }, [60 x i8] zeroinitializer }, align 32
@spt_nvm_ops = internal constant { %struct.e1000_nvm_operations, [32 x i8] } { %struct.e1000_nvm_operations { ptr @e1000_acquire_nvm_ich8lan, ptr @e1000_read_nvm_spt, ptr @e1000_release_nvm_ich8lan, ptr @e1000e_reload_nvm_generic, ptr @e1000_update_nvm_checksum_spt, ptr @e1000_valid_led_default_ich8lan, ptr @e1000_validate_nvm_checksum_ich8lan, ptr @e1000_write_nvm_ich8lan }, [32 x i8] zeroinitializer }, align 32
@e1000_pch_spt_info = dso_local constant { %struct.e1000_info, [60 x i8] } { %struct.e1000_info { i32 12, i32 49835, i32 48, i32 26, i32 9022, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @spt_nvm_ops }, [60 x i8] zeroinitializer }, align 32
@e1000_pch_cnp_info = dso_local constant { %struct.e1000_info, [60 x i8] } { %struct.e1000_info { i32 13, i32 49835, i32 48, i32 26, i32 9022, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @spt_nvm_ops }, [60 x i8] zeroinitializer }, align 32
@e1000_pch_tgp_info = dso_local constant { %struct.e1000_info, [60 x i8] } { %struct.e1000_info { i32 14, i32 49835, i32 48, i32 26, i32 9022, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @spt_nvm_ops }, [60 x i8] zeroinitializer }, align 32
@e1000_pch_adp_info = dso_local constant { %struct.e1000_info, [60 x i8] } { %struct.e1000_info { i32 15, i32 49835, i32 48, i32 26, i32 9022, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @spt_nvm_ops }, [60 x i8] zeroinitializer }, align 32
@e1000_write_smbus_addr.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 2, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"e1000_write_smbus_addr\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported SMB frequency in PHY\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to disable ULP\0A\00", [41 x i8] zeroinitializer }, align 32
@e1000_init_phy_workarounds_pchlan.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"e1000_init_phy_workarounds_pchlan\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to initialize PHY flow\0A\00", [33 x i8] zeroinitializer }, align 32
@e1000_init_phy_workarounds_pchlan.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Required LANPHYPC toggle blocked by ME\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Reset blocked by ME\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ME blocked access to PHY after reset\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ULP_CONFIG_DONE took %d msec. This is a firmware bug\0A\00", [42 x i8] zeroinitializer }, align 32
@e1000_disable_ulp_lpt_lp.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 1, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"e1000_disable_ulp_lpt_lp\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ULP_CONFIG_DONE cleared after %d msec\0A\00", [57 x i8] zeroinitializer }, align 32
@e1000_disable_ulp_lpt_lp.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 1, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error in ULP disable flow: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@e1000_rar_set_pch2lan.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 1, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"e1000_rar_set_pch2lan\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"SHRA[%d] might be locked by ME - FWSM=0x%8.8x\0A\00", [49 x i8] zeroinitializer }, align 32
@e1000_rar_set_pch2lan.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 1, i8 -31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to write receive address at index %d\0A\00", [51 x i8] zeroinitializer }, align 32
@e1000_acquire_swflag_ich8lan.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 1, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"e1000_acquire_swflag_ich8lan\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"contention for Phy access\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@e1000_acquire_swflag_ich8lan.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 1, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SW has already locked the resource.\0A\00", [59 x i8] zeroinitializer }, align 32
@e1000_acquire_swflag_ich8lan.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.31, i8 1, i8 -65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Failed to acquire the semaphore, FW or HW has it: FWSM=0x%8.8x EXTCNF_CTRL=0x%8.8x)\0A\00", [43 x i8] zeroinitializer }, align 32
@e1000_release_swflag_ich8lan.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 1, i8 -57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"e1000_release_swflag_ich8lan\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Semaphore unexpectedly released by sw/fw/hw\0A\00", [51 x i8] zeroinitializer }, align 32
@e1000_rar_set_pch_lpt.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.27, i8 1, i8 -3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"e1000_rar_set_pch_lpt\00", [42 x i8] zeroinitializer }, align 32
@e1000_init_nvm_params_ich8lan.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"e1000_init_nvm_params_ich8lan\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ERROR: Flash registers not mapped\0A\00", [61 x i8] zeroinitializer }, align 32
@e1000_init_phy_params_ich8lan.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"e1000_init_phy_params_ich8lan\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot determine PHY addr. Erroring out\0A\00", [55 x i8] zeroinitializer }, align 32
@e1000_check_for_copper_link_ich8lan.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 1, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"e1000_check_for_copper_link_ich8lan\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error configuring flow control\0A\00", [32 x i8] zeroinitializer }, align 32
@e1000_platform_pm_pch_lpt.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 1, i8 0, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"e1000_platform_pm_pch_lpt\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max_frame_size not set.\0A\00", [39 x i8] zeroinitializer }, align 32
@e1000_platform_pm_pch_lpt.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.43, i8 1, i8 1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Speed not set.\0A\00", [16 x i8] zeroinitializer }, align 32
@e1000_platform_pm_pch_lpt.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.44, i8 1, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid LTR latency scale %d\0A\00", [34 x i8] zeroinitializer }, align 32
@e1000_reset_hw_ich8lan.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 4, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"e1000_reset_hw_ich8lan\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PCI-E Master disable polling has failed.\0A\00", [54 x i8] zeroinitializer }, align 32
@e1000_reset_hw_ich8lan.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 4, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Masking off all interrupts\0A\00", [36 x i8] zeroinitializer }, align 32
@e1000_reset_hw_ich8lan.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.48, i8 4, i8 -90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Issuing a global reset to ich8lan\0A\00", [61 x i8] zeroinitializer }, align 32
@e1000_init_hw_ich8lan.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 4, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"e1000_init_hw_ich8lan\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error initializing identification LED\0A\00", [57 x i8] zeroinitializer }, align 32
@e1000_init_hw_ich8lan.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.51, i8 4, i8 -71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Zeroing the MTA\0A\00", [47 x i8] zeroinitializer }, align 32
@e1000_setup_link_ich8lan.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 4, i8 -27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"e1000_setup_link_ich8lan\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"After fix-ups FlowControl is now = %x\0A\00", [57 x i8] zeroinitializer }, align 32
@e1000_get_cfg_done_ich8lan.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 5, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"e1000_get_cfg_done_ich8lan\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Auto Read Done did not complete\0A\00", [63 x i8] zeroinitializer }, align 32
@e1000_get_cfg_done_ich8lan.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.56, i8 5, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PHY Reset Asserted not set - needs delay\0A\00", [54 x i8] zeroinitializer }, align 32
@e1000_get_cfg_done_ich8lan.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.57, i8 5, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EEPROM not present\0A\00", [44 x i8] zeroinitializer }, align 32
@e1000_lan_init_done_ich8lan.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 2, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"e1000_lan_init_done_ich8lan\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"LAN_INIT_DONE not set, increase timeout\0A\00", [55 x i8] zeroinitializer }, align 32
@e1000_valid_nvm_bank_detect_ich8lan.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 3, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"e1000_valid_nvm_bank_detect_ich8lan\00", [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ERROR: No valid NVM bank present\0A\00", [62 x i8] zeroinitializer }, align 32
@e1000_valid_nvm_bank_detect_ich8lan.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.62, i8 3, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Unable to determine valid NVM bank via EEC - reading flash signature\0A\00", [58 x i8] zeroinitializer }, align 32
@e1000_valid_nvm_bank_detect_ich8lan.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 3, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000_read_flash_data32_ich8lan.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 3, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"e1000_read_flash_data32_ich8lan\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Timeout error - flash cycle did not complete.\0A\00", [49 x i8] zeroinitializer }, align 32
@e1000_flash_cycle_init_ich8lan.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 3, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"e1000_flash_cycle_init_ich8lan\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Flash descriptor invalid.  SW Sequencing must be used.\0A\00", [40 x i8] zeroinitializer }, align 32
@e1000_flash_cycle_init_ich8lan.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.67, i8 3, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Flash controller busy, cannot get access\0A\00", [54 x i8] zeroinitializer }, align 32
@e1000_read_flash_data_ich8lan.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.64, i8 3, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"e1000_read_flash_data_ich8lan\00", [34 x i8] zeroinitializer }, align 32
@nvm_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nvm_mutex, i64 52), ptr getelementptr (i8, ptr @nvm_mutex, i64 52) }, ptr @nvm_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.70, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvm_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nvm_mutex\00", [22 x i8] zeroinitializer }, align 32
@e1000_read_nvm_ich8lan.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 3, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"e1000_read_nvm_ich8lan\00", [41 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nvm parameter(s) out of bounds\0A\00", [32 x i8] zeroinitializer }, align 32
@e1000_read_nvm_ich8lan.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.73, i8 3, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Could not detect valid bank, assuming bank 0\0A\00", [50 x i8] zeroinitializer }, align 32
@e1000_read_nvm_ich8lan.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.74, i8 3, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NVM read error: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@e1000_update_nvm_checksum_ich8lan.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.73, i8 3, i8 -28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"e1000_update_nvm_checksum_ich8lan\00", [62 x i8] zeroinitializer }, align 32
@e1000_update_nvm_checksum_ich8lan.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 3, i8 -13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Flash commit failed.\0A\00", [42 x i8] zeroinitializer }, align 32
@e1000_update_nvm_checksum_ich8lan.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.77, i8 4, i8 0, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NVM update error: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@e1000_retry_write_flash_byte_ich8lan.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 4, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"e1000_retry_write_flash_byte_ich8lan\00", [59 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Retrying Byte %2.2X at offset %u\0A\00", [62 x i8] zeroinitializer }, align 32
@e1000_write_flash_data_ich8lan.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.64, i8 4, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"e1000_write_flash_data_ich8lan\00", [33 x i8] zeroinitializer }, align 32
@e1000_valid_led_default_ich8lan.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 4, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"e1000_valid_led_default_ich8lan\00", [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NVM Read Error\0A\00", [16 x i8] zeroinitializer }, align 32
@e1000_validate_nvm_checksum_ich8lan.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 4, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"e1000_validate_nvm_checksum_ich8lan\00", [60 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NVM Checksum valid bit not set\0A\00", [32 x i8] zeroinitializer }, align 32
@e1000_write_nvm_ich8lan.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.72, i8 3, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"e1000_write_nvm_ich8lan\00", [40 x i8] zeroinitializer }, align 32
@e1000_read_nvm_spt.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.72, i8 3, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"e1000_read_nvm_spt\00", [45 x i8] zeroinitializer }, align 32
@e1000_read_nvm_spt.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.73, i8 3, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000_read_nvm_spt.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.74, i8 3, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000_update_nvm_checksum_spt.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.73, i8 3, i8 -69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"e1000_update_nvm_checksum_spt\00", [34 x i8] zeroinitializer }, align 32
@e1000_update_nvm_checksum_spt.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.76, i8 3, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000_update_nvm_checksum_spt.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.77, i8 3, i8 -38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000_retry_write_flash_dword_ich8lan.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 4, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"e1000_retry_write_flash_dword_ich8lan\00", [58 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Retrying Byte %8.8X at offset %u\0A\00", [62 x i8] zeroinitializer }, align 32
@e1000_write_flash_data32_ich8lan.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.64, i8 4, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"e1000_write_flash_data32_ich8lan\00", [63 x i8] zeroinitializer }, align 32
@switch.table.e1000_id_led_init_pchlan = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 10, i32 10, i32 2, i32 10], [44 x i8] zeroinitializer }, align 32
@switch.table.e1000_id_led_init_pchlan.91 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 64, i32 320, i32 320, i32 64, i32 320], [44 x i8] zeroinitializer }, align 32
@switch.table.e1000_id_led_init_pchlan.92 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2048, i32 10240, i32 10240, i32 2048, i32 10240], [44 x i8] zeroinitializer }, align 32
@switch.table.e1000_id_led_init_pchlan.93 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 65536, i32 327680, i32 327680, i32 65536, i32 327680], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 12]
@__sancov_gen_cov_switch_values.94 = internal global [6 x i64] [i64 4, i64 16, i64 5434, i64 5435, i64 5536, i64 5537]
@__sancov_gen_cov_switch_values.95 = internal global [6 x i64] [i64 4, i64 16, i64 5465, i64 5466, i64 5538, i64 5539]
@__sancov_gen_cov_switch_values.96 = internal global [11 x i64] [i64 9, i64 32, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.97 = internal global [14 x i64] [i64 12, i64 32, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.98 = internal global [14 x i64] [i64 12, i64 32, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.100 = internal global [6 x i64] [i64 4, i64 32, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 10]
@__sancov_gen_cov_switch_values.102 = internal global [6 x i64] [i64 4, i64 16, i64 5434, i64 5435, i64 5536, i64 5537]
@__sancov_gen_cov_switch_values.103 = internal global [7 x i64] [i64 5, i64 32, i64 21040304, i64 44565264, i64 44565280, i64 44565296, i64 44565392]
@__sancov_gen_cov_switch_values.104 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.105 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.106 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.107 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.110 = internal global [6 x i64] [i64 4, i64 16, i64 5465, i64 5466, i64 5538, i64 5539]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.112 = internal global [8 x i64] [i64 6, i64 32, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.115 = internal global [12 x i64] [i64 10, i64 32, i64 6, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 16, i64 3, i64 15, i64 47]
@__sancov_gen_cov_switch_values.119 = internal global [10 x i64] [i64 8, i64 32, i64 6, i64 7, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.121 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1136, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1220, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5253, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5489, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5503, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5533, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [13 x i8] c"ich8_mac_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5801, i32 42 }
@___asan_gen_.164 = private unnamed_addr constant [13 x i8] c"ich8_phy_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5822, i32 42 }
@___asan_gen_.167 = private unnamed_addr constant [13 x i8] c"ich8_nvm_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5836, i32 42 }
@___asan_gen_.170 = private unnamed_addr constant [16 x i8] c"e1000_ich8_info\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5858, i32 25 }
@___asan_gen_.173 = private unnamed_addr constant [16 x i8] c"e1000_ich9_info\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5874, i32 25 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"e1000_ich10_info\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5891, i32 25 }
@___asan_gen_.179 = private unnamed_addr constant [15 x i8] c"e1000_pch_info\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5908, i32 25 }
@___asan_gen_.182 = private unnamed_addr constant [16 x i8] c"e1000_pch2_info\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5927, i32 25 }
@___asan_gen_.185 = private unnamed_addr constant [19 x i8] c"e1000_pch_lpt_info\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5948, i32 25 }
@___asan_gen_.188 = private unnamed_addr constant [12 x i8] c"spt_nvm_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5847, i32 42 }
@___asan_gen_.191 = private unnamed_addr constant [19 x i8] c"e1000_pch_spt_info\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5969, i32 25 }
@___asan_gen_.194 = private unnamed_addr constant [19 x i8] c"e1000_pch_cnp_info\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5989, i32 25 }
@___asan_gen_.197 = private unnamed_addr constant [19 x i8] c"e1000_pch_tgp_info\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 6009, i32 25 }
@___asan_gen_.200 = private unnamed_addr constant [19 x i8] c"e1000_pch_adp_info\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 6029, i32 25 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 2097, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 305, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 309, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 353, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 386, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 407, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1284, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1287, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1377, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1921, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1926, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1756, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1770, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1790, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1822, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 2036, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 622, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 536, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1647, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1024, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1030, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1055, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 4710, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 4712, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 4762, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 4830, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 4836, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5013, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5698, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5708, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 5719, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 2865, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 3220, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 3234, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 3746, i32 5 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 3437, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 3493, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 3671, i32 5 }
@___asan_gen_.371 = private unnamed_addr constant [10 x i8] c"nvm_mutex\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1716, i32 8 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 3382, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 3391, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 3416, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 3984, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 4046, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 4096, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 4445, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 4283, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 4584, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 4143, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 3773, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 3291, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 3823, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 4413, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.438 = private constant [47 x i8] c"../drivers/net/ethernet/intel/e1000e/ich8lan.c\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 4367, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant [38 x i8] c"switch.table.e1000_id_led_init_pchlan\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [41 x i8] c"switch.table.e1000_id_led_init_pchlan.91\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [41 x i8] c"switch.table.e1000_id_led_init_pchlan.92\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [41 x i8] c"switch.table.e1000_id_led_init_pchlan.93\00", align 1
@llvm.compiler.used = appending global [110 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @ich8_nvm_ops, ptr @e1000_ich8_info, ptr @e1000_ich9_info, ptr @e1000_ich10_info, ptr @e1000_pch_info, ptr @e1000_pch2_info, ptr @e1000_pch_lpt_info, ptr @spt_nvm_ops, ptr @e1000_pch_spt_info, ptr @e1000_pch_cnp_info, ptr @e1000_pch_tgp_info, ptr @e1000_pch_adp_info, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @nvm_mutex, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @switch.table.e1000_id_led_init_pchlan, ptr @switch.table.e1000_id_led_init_pchlan.91, ptr @switch.table.e1000_id_led_init_pchlan.92, ptr @switch.table.e1000_id_led_init_pchlan.93], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ich8_mac_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ich8_phy_ops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ich8_nvm_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_ich8_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_ich9_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_ich10_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_pch_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_pch2_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_pch_lpt_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spt_nvm_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_pch_spt_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_pch_cnp_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_pch_tgp_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_pch_adp_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvm_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.e1000_id_led_init_pchlan to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.e1000_id_led_init_pchlan.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.e1000_id_led_init_pchlan.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.e1000_id_led_init_pchlan.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_read_emi_reg_locked(ptr noundef %hw, i16 noundef zeroext %addr, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %write_reg_locked.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %0 = ptrtoint ptr %write_reg_locked.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg_locked.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__e1000_access_emi_reg_locked.exit_crit_edge

entry.__e1000_access_emi_reg_locked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__e1000_access_emi_reg_locked.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %read_reg_locked.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 11
  %2 = ptrtoint ptr %read_reg_locked.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg_locked.i.i, align 4
  %call.i11.i = tail call i32 %3(ptr noundef %hw, i32 noundef 17, ptr noundef %data) #6
  br label %__e1000_access_emi_reg_locked.exit

__e1000_access_emi_reg_locked.exit:               ; preds = %if.end.i, %entry.__e1000_access_emi_reg_locked.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %entry.__e1000_access_emi_reg_locked.exit_crit_edge ], [ %call.i11.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_write_emi_reg_locked(ptr noundef %hw, i16 noundef zeroext %addr, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %write_reg_locked.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %0 = ptrtoint ptr %write_reg_locked.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg_locked.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__e1000_access_emi_reg_locked.exit_crit_edge

entry.__e1000_access_emi_reg_locked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__e1000_access_emi_reg_locked.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %write_reg_locked.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg_locked.i.i, align 4
  %call.i13.i = tail call i32 %3(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext %data) #6
  br label %__e1000_access_emi_reg_locked.exit

__e1000_access_emi_reg_locked.exit:               ; preds = %if.end.i, %entry.__e1000_access_emi_reg_locked.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %entry.__e1000_access_emi_reg_locked.exit_crit_edge ], [ %call.i13.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_set_eee_pchlan(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %adv = alloca i16, align 2
  %lpi_ctrl = alloca i16, align 2
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %adv) #6
  %0 = ptrtoint ptr %adv to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %adv, align 2, !annotation !254
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lpi_ctrl) #6
  %1 = ptrtoint ptr %lpi_ctrl to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %lpi_ctrl, align 2, !annotation !254
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data, align 2, !annotation !254
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 11, label %entry.sw.epilog_crit_edge
    i32 12, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %lpa.0 = phi i16 [ -32766, %sw.bb2 ], [ 1039, %entry.sw.epilog_crit_edge ]
  %pcs_status.0 = phi i16 [ -27647, %sw.bb2 ], [ 6190, %entry.sw.epilog_crit_edge ]
  %adv_addr.0 = phi i16 [ -32767, %sw.bb2 ], [ 1038, %entry.sw.epilog_crit_edge ]
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %call = tail call i32 %7(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %read_reg_locked.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 11
  %8 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg_locked.i, align 4
  %call.i = call i32 %9(ptr noundef %hw, i32 noundef 24724, ptr noundef nonnull %lpi_ctrl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.release_crit_edge

if.end.release_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %lpi_ctrl to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %lpi_ctrl, align 2
  %12 = and i16 %11, -24577
  store i16 %12, ptr %lpi_ctrl, align 2
  %eee_disable = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 3
  %13 = ptrtoint ptr %eee_disable to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %eee_disable, align 1, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end50_crit_edge

if.end7.if.end50_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then10:                                        ; preds = %if.end7
  %eee_lp_ability = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 4
  %write_reg_locked.i.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %15 = ptrtoint ptr %write_reg_locked.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_reg_locked.i.i.i, align 4
  %call.i.i.i = call i32 %16(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %lpa.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %e1000_read_emi_reg_locked.exit, label %if.then10.release_crit_edge

if.then10.release_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

e1000_read_emi_reg_locked.exit:                   ; preds = %if.then10
  %17 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_reg_locked.i, align 4
  %call.i11.i.i = call i32 %18(ptr noundef %hw, i32 noundef 17, ptr noundef %eee_lp_ability) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i.i)
  %tobool12.not = icmp eq i32 %call.i11.i.i, 0
  br i1 %tobool12.not, label %if.end14, label %e1000_read_emi_reg_locked.exit.release_crit_edge

e1000_read_emi_reg_locked.exit.release_crit_edge: ; preds = %e1000_read_emi_reg_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end14:                                         ; preds = %e1000_read_emi_reg_locked.exit
  %19 = ptrtoint ptr %write_reg_locked.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_reg_locked.i.i.i, align 4
  %call.i.i.i107 = call i32 %20(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %adv_addr.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i107)
  %tobool.not.i.i108 = icmp eq i32 %call.i.i.i107, 0
  br i1 %tobool.not.i.i108, label %e1000_read_emi_reg_locked.exit113, label %if.end14.release_crit_edge

if.end14.release_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

e1000_read_emi_reg_locked.exit113:                ; preds = %if.end14
  %21 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_reg_locked.i, align 4
  %call.i11.i.i110 = call i32 %22(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %adv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i.i110)
  %tobool16.not = icmp eq i32 %call.i11.i.i110, 0
  br i1 %tobool16.not, label %if.end18, label %e1000_read_emi_reg_locked.exit113.release_crit_edge

e1000_read_emi_reg_locked.exit113.release_crit_edge: ; preds = %e1000_read_emi_reg_locked.exit113
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end18:                                         ; preds = %e1000_read_emi_reg_locked.exit113
  %23 = ptrtoint ptr %adv to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %adv, align 2
  %25 = ptrtoint ptr %eee_lp_ability to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %eee_lp_ability, align 4
  %and22104 = and i16 %26, %24
  %27 = and i16 %and22104, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool24.not = icmp eq i16 %27, 0
  br i1 %tobool24.not, label %if.end18.if.end28_crit_edge, label %if.then25

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %lpi_ctrl to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %lpi_ctrl, align 2
  %30 = or i16 %29, 16384
  store i16 %30, ptr %lpi_ctrl, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end18.if.end28_crit_edge
  %31 = and i16 %and22104, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool34.not = icmp eq i16 %31, 0
  br i1 %tobool34.not, label %if.end28.if.end50_crit_edge, label %if.then35

if.end28.if.end50_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then35:                                        ; preds = %if.end28
  %32 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_reg_locked.i, align 4
  %call.i115 = call i32 %33(ptr noundef %hw, i32 noundef 5, ptr noundef nonnull %data) #6
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %data, align 2
  %36 = and i16 %35, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool39.not = icmp eq i16 %36, 0
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %lpi_ctrl to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %lpi_ctrl, align 2
  %39 = or i16 %38, 8192
  store i16 %39, ptr %lpi_ctrl, align 2
  br label %if.end50

if.else:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %eee_lp_ability to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %eee_lp_ability, align 4
  %42 = and i16 %41, -3
  store i16 %42, ptr %eee_lp_ability, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then40, %if.end28.if.end50_crit_edge, %if.end7.if.end50_crit_edge
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %44)
  %cmp = icmp eq i32 %44, 11
  br i1 %cmp, label %if.then54, label %if.end50.if.end63_crit_edge

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then54:                                        ; preds = %if.end50
  %write_reg_locked.i.i.i116 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %45 = ptrtoint ptr %write_reg_locked.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_reg_locked.i.i.i116, align 4
  %call.i.i.i117 = call i32 %46(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext 17426) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i117)
  %tobool.not.i.i118 = icmp eq i32 %call.i.i.i117, 0
  br i1 %tobool.not.i.i118, label %e1000_read_emi_reg_locked.exit123, label %if.then54.release_crit_edge

if.then54.release_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

e1000_read_emi_reg_locked.exit123:                ; preds = %if.then54
  %47 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_reg_locked.i, align 4
  %call.i11.i.i120 = call i32 %48(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i.i120)
  %tobool56.not = icmp eq i32 %call.i11.i.i120, 0
  br i1 %tobool56.not, label %if.end58, label %e1000_read_emi_reg_locked.exit123.release_crit_edge

e1000_read_emi_reg_locked.exit123.release_crit_edge: ; preds = %e1000_read_emi_reg_locked.exit123
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end58:                                         ; preds = %e1000_read_emi_reg_locked.exit123
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %data, align 2
  %51 = and i16 %50, -5
  store i16 %51, ptr %data, align 2
  %52 = ptrtoint ptr %write_reg_locked.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_reg_locked.i.i.i116, align 4
  %call.i.i.i125 = call i32 %53(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext 17426) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i125)
  %tobool.not.i.i126 = icmp eq i32 %call.i.i.i125, 0
  br i1 %tobool.not.i.i126, label %if.end.i.i127, label %if.end58.if.end63_crit_edge

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.end.i.i127:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %write_reg_locked.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_reg_locked.i.i.i116, align 4
  %call.i13.i.i = call i32 %55(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext %51) #6
  br label %if.end63

if.end63:                                         ; preds = %if.end.i.i127, %if.end58.if.end63_crit_edge, %if.end50.if.end63_crit_edge
  %write_reg_locked.i.i.i129 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %56 = ptrtoint ptr %write_reg_locked.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_reg_locked.i.i.i129, align 4
  %call.i.i.i130 = call i32 %57(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %pcs_status.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i130)
  %tobool.not.i.i131 = icmp eq i32 %call.i.i.i130, 0
  br i1 %tobool.not.i.i131, label %e1000_read_emi_reg_locked.exit136, label %if.end63.release_crit_edge

if.end63.release_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

e1000_read_emi_reg_locked.exit136:                ; preds = %if.end63
  %58 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read_reg_locked.i, align 4
  %call.i11.i.i133 = call i32 %59(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i.i133)
  %tobool65.not = icmp eq i32 %call.i11.i.i133, 0
  br i1 %tobool65.not, label %if.end67, label %e1000_read_emi_reg_locked.exit136.release_crit_edge

e1000_read_emi_reg_locked.exit136.release_crit_edge: ; preds = %e1000_read_emi_reg_locked.exit136
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end67:                                         ; preds = %e1000_read_emi_reg_locked.exit136
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %lpi_ctrl to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %lpi_ctrl, align 2
  %62 = ptrtoint ptr %write_reg_locked.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_reg_locked.i.i.i129, align 4
  %call.i137 = call i32 %63(ptr noundef %hw, i32 noundef 24724, i16 noundef zeroext %61) #6
  br label %release

release:                                          ; preds = %if.end67, %e1000_read_emi_reg_locked.exit136.release_crit_edge, %if.end63.release_crit_edge, %e1000_read_emi_reg_locked.exit123.release_crit_edge, %if.then54.release_crit_edge, %e1000_read_emi_reg_locked.exit113.release_crit_edge, %if.end14.release_crit_edge, %e1000_read_emi_reg_locked.exit.release_crit_edge, %if.then10.release_crit_edge, %if.end.release_crit_edge
  %ret_val.0 = phi i32 [ %call.i, %if.end.release_crit_edge ], [ %call.i11.i.i120, %e1000_read_emi_reg_locked.exit123.release_crit_edge ], [ %call.i11.i.i133, %e1000_read_emi_reg_locked.exit136.release_crit_edge ], [ %call.i137, %if.end67 ], [ %call.i11.i.i, %e1000_read_emi_reg_locked.exit.release_crit_edge ], [ %call.i11.i.i110, %e1000_read_emi_reg_locked.exit113.release_crit_edge ], [ %call.i.i.i, %if.then10.release_crit_edge ], [ %call.i.i.i107, %if.end14.release_crit_edge ], [ %call.i.i.i117, %if.then54.release_crit_edge ], [ %call.i.i.i130, %if.end63.release_crit_edge ]
  %release71 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %64 = ptrtoint ptr %release71 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %release71, align 4
  call void %65(ptr noundef %hw) #6
  br label %cleanup

cleanup:                                          ; preds = %release, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.0, %release ], [ 0, %entry.cleanup_crit_edge ], [ %call, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lpi_ctrl) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %adv) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_enable_ulp_lpt_lp(ptr noundef %hw, i1 noundef zeroext %to_sx) local_unnamed_addr #0 align 64 {
entry:
  %phy_reg = alloca i16, align 2
  %oem_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg) #6
  %0 = ptrtoint ptr %phy_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_reg, align 2, !annotation !254
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %oem_reg) #6
  %1 = ptrtoint ptr %oem_reg to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %oem_reg, align 2
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %3)
  %cmp = icmp ult i32 %3, 11
  br i1 %cmp, label %entry.cleanup190_crit_edge, label %lor.lhs.false

entry.cleanup190_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup190

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %pdev = getelementptr inbounds %struct.e1000_adapter, ptr %5, i32 0, i32 65
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 32
  %device = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.94)
  switch i16 %9, label %lor.lhs.false24 [
    i16 5434, label %lor.lhs.false.cleanup190_crit_edge
    i16 5435, label %lor.lhs.false.cleanup190_crit_edge288
    i16 5536, label %lor.lhs.false.cleanup190_crit_edge289
    i16 5537, label %lor.lhs.false.cleanup190_crit_edge290
  ]

lor.lhs.false.cleanup190_crit_edge290:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup190

lor.lhs.false.cleanup190_crit_edge289:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup190

lor.lhs.false.cleanup190_crit_edge288:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup190

lor.lhs.false.cleanup190_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup190

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %ulp_state = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 5
  %11 = ptrtoint ptr %ulp_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ulp_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp25 = icmp eq i32 %12, 2
  br i1 %cmp25, label %lor.lhs.false24.cleanup190_crit_edge, label %if.end

lor.lhs.false24.cleanup190_crit_edge:             ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup190

if.end:                                           ; preds = %lor.lhs.false24
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 23380
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %16 = and i32 %15, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end29, label %out.thread

out.thread:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i251 = getelementptr i8, ptr %18, i32 23376
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i251) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %20 = or i32 %19, 1572864
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23376, i32 noundef %21) #6
  br label %if.else186

if.end29:                                         ; preds = %if.end
  br i1 %to_sx, label %if.end29.if.end59_crit_edge, label %while.cond.preheader

if.end29.if.end59_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

while.cond.preheader:                             ; preds = %if.end29
  %22 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i253284 = getelementptr i8, ptr %23, i32 44
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i253284) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %25 = and i32 %24, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool34.not285 = icmp eq i32 %25, 0
  br i1 %tobool34.not285, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.do.body44_crit_edge

while.cond.preheader.do.body44_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body44

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %if.end43.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.0286 = phi i32 [ %inc, %if.end43.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %26 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i255 = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i255) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %29 = and i32 %28, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool37.not = icmp eq i32 %29, 0
  br i1 %tobool37.not, label %if.end39, label %while.body.cleanup190_crit_edge

while.body.cleanup190_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup190

if.end39:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0286)
  %cmp40 = icmp eq i32 %i.0286, 100
  br i1 %cmp40, label %if.end39.do.body44_crit_edge, label %if.end43

if.end39.do.body44_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body44

if.end43:                                         ; preds = %if.end39
  %inc = add nuw nsw i32 %i.0286, 1
  tail call void @msleep(i32 noundef 50) #6
  %30 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i253 = getelementptr i8, ptr %31, i32 44
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i253) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %33 = and i32 %32, 67108864
  %tobool34.not = icmp eq i32 %33, 0
  br i1 %tobool34.not, label %if.end43.while.body_crit_edge, label %if.end43.do.body44_crit_edge

if.end43.do.body44_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body44

if.end43.while.body_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.body44:                                        ; preds = %if.end43.do.body44_crit_edge, %if.end39.do.body44_crit_edge, %while.cond.preheader.do.body44_crit_edge
  %i.1 = phi i32 [ 0, %while.cond.preheader.do.body44_crit_edge ], [ 101, %if.end39.do.body44_crit_edge ], [ %inc, %if.end43.do.body44_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_enable_ulp_lpt_lp.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_enable_ulp_lpt_lp, %if.then51)) #6
          to label %if.end59 [label %if.then51], !srcloc !258

if.then51:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %35, i32 0, i32 64
  %36 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev, align 4
  %38 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i257 = getelementptr i8, ptr %39, i32 44
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i257) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %41 = and i32 %40, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool55.not = icmp eq i32 %41, 0
  %cond = select i1 %tobool55.not, ptr @.str.5, ptr @.str.4
  %mul = mul i32 %i.1, 50
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_enable_ulp_lpt_lp.__UNIQUE_ID_ddebug362, ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond, i32 noundef %mul) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then51, %do.body44, %if.end29.if.end59_crit_edge
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %42 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy, align 4
  %call60 = tail call i32 %43(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.do.body166_crit_edge

if.end59.do.body166_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body166

if.end63:                                         ; preds = %if.end59
  %call64 = call i32 @e1000_read_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24631, ptr noundef nonnull %phy_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.out.thread274_crit_edge

if.end63.out.thread274_crit_edge:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread274

if.end67:                                         ; preds = %if.end63
  %44 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %phy_reg, align 2
  %46 = or i16 %45, 1
  store i16 %46, ptr %phy_reg, align 2
  %call71 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24631, i16 noundef zeroext %46) #6
  %47 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i259 = getelementptr i8, ptr %48, i32 24
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i259) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %50 = or i32 %49, 524288
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  call void @__ew32(ptr noundef %hw, i32 noundef 24, i32 noundef %51) #6
  %type75 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %type75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %53)
  %cmp76 = icmp eq i32 %53, 12
  br i1 %cmp76, label %land.lhs.true, label %if.end67.if.end93_crit_edge

if.end67.if.end93_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

land.lhs.true:                                    ; preds = %if.end67
  %revision = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 11
  %54 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %55)
  %cmp79 = icmp eq i32 %55, 6
  br i1 %cmp79, label %if.then81, label %land.lhs.true.if.end93_crit_edge

land.lhs.true.if.end93_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then81:                                        ; preds = %land.lhs.true
  %call82 = call i32 @e1000_read_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24601, ptr noundef nonnull %oem_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.then81.out.thread274_crit_edge

if.then81.out.thread274_crit_edge:                ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread274

if.end85:                                         ; preds = %if.then81
  %56 = ptrtoint ptr %oem_reg to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %oem_reg, align 2
  %58 = or i16 %57, 68
  %59 = ptrtoint ptr %phy_reg to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %phy_reg, align 2
  %call89 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24601, i16 noundef zeroext %58) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end85.if.end93_crit_edge, label %if.end85.out.thread274_crit_edge

if.end85.out.thread274_crit_edge:                 ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread274

if.end85.if.end93_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.end93:                                         ; preds = %if.end85.if.end93_crit_edge, %land.lhs.true.if.end93_crit_edge, %if.end67.if.end93_crit_edge
  %call94 = call i32 @e1000_read_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24944, ptr noundef nonnull %phy_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end93.out.thread274_crit_edge

if.end93.out.thread274_crit_edge:                 ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread274

if.end97:                                         ; preds = %if.end93
  %60 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %phy_reg, align 2
  %62 = or i16 %61, 4352
  store i16 %62, ptr %phy_reg, align 2
  br i1 %to_sx, label %if.then102, label %if.else120

if.then102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i261 = getelementptr i8, ptr %64, i32 22536
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i261) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %66 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %phy_reg, align 2
  %68 = and i16 %67, -113
  %69 = lshr i32 %65, 18
  %70 = trunc i32 %69 to i16
  %71 = and i16 %70, 64
  %storemerge246 = or i16 %68, %71
  %72 = or i16 %storemerge246, 16
  br label %if.end130

if.else120:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  %73 = and i16 %61, -4465
  %74 = or i16 %73, 4384
  br label %if.end130

if.end130:                                        ; preds = %if.else120, %if.then102
  %storemerge = phi i16 [ %74, %if.else120 ], [ %72, %if.then102 ]
  %75 = ptrtoint ptr %phy_reg to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %storemerge, ptr %phy_reg, align 2
  %call131 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24944, i16 noundef zeroext %storemerge) #6
  %76 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i263 = getelementptr i8, ptr %77, i32 228
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i263) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %79 = or i32 %78, 536870912
  %80 = call i32 @llvm.bswap.i32(i32 %79)
  call void @__ew32(ptr noundef %hw, i32 noundef 228, i32 noundef %80) #6
  %81 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %phy_reg, align 2
  %83 = or i16 %82, 1
  store i16 %83, ptr %phy_reg, align 2
  %call137 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24944, i16 noundef zeroext %83) #6
  %84 = ptrtoint ptr %type75 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %type75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %85)
  %cmp140 = icmp eq i32 %85, 12
  br i1 %cmp140, label %land.lhs.true142, label %if.end130.out.thread279_crit_edge

if.end130.out.thread279_crit_edge:                ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread279

land.lhs.true142:                                 ; preds = %if.end130
  %revision144 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 11
  %86 = ptrtoint ptr %revision144 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %revision144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %87)
  %cmp145 = icmp eq i32 %87, 6
  %88 = and i1 %cmp145, %to_sx
  br i1 %88, label %land.lhs.true150, label %land.lhs.true142.out.thread279_crit_edge

land.lhs.true142.out.thread279_crit_edge:         ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread279

land.lhs.true150:                                 ; preds = %land.lhs.true142
  %89 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i265 = getelementptr i8, ptr %90, i32 8
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i265) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %92 = and i32 %91, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool153.not = icmp eq i32 %92, 0
  br i1 %tobool153.not, label %land.lhs.true150.out.thread279_crit_edge, label %out

land.lhs.true150.out.thread279_crit_edge:         ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread279

out.thread274:                                    ; preds = %if.end93.out.thread274_crit_edge, %if.end85.out.thread274_crit_edge, %if.then81.out.thread274_crit_edge, %if.end63.out.thread274_crit_edge
  %ret_val.0.ph = phi i32 [ %call94, %if.end93.out.thread274_crit_edge ], [ %call89, %if.end85.out.thread274_crit_edge ], [ %call82, %if.then81.out.thread274_crit_edge ], [ %call64, %if.end63.out.thread274_crit_edge ]
  %release162276 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %93 = ptrtoint ptr %release162276 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %release162276, align 4
  call void %94(ptr noundef %hw) #6
  br label %do.body166

out.thread279:                                    ; preds = %land.lhs.true150.out.thread279_crit_edge, %land.lhs.true142.out.thread279_crit_edge, %if.end130.out.thread279_crit_edge
  %release162281 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %95 = ptrtoint ptr %release162281 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %release162281, align 4
  call void %96(ptr noundef %hw) #6
  br label %if.else186

out:                                              ; preds = %land.lhs.true150
  %97 = ptrtoint ptr %oem_reg to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %oem_reg, align 2
  %call155 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24601, i16 noundef zeroext %98) #6
  %release162 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %99 = ptrtoint ptr %release162 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %release162, align 4
  call void %100(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool163.not = icmp eq i32 %call155, 0
  br i1 %tobool163.not, label %out.if.else186_crit_edge, label %out.do.body166_crit_edge

out.do.body166_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body166

out.if.else186_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else186

do.body166:                                       ; preds = %out.do.body166_crit_edge, %out.thread274, %if.end59.do.body166_crit_edge
  %ret_val.1273 = phi i32 [ %call155, %out.do.body166_crit_edge ], [ %ret_val.0.ph, %out.thread274 ], [ %call60, %if.end59.do.body166_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_enable_ulp_lpt_lp.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_enable_ulp_lpt_lp, %if.then178)) #6
          to label %cleanup190 [label %if.then178], !srcloc !258

if.then178:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hw, align 4
  %netdev180 = getelementptr inbounds %struct.e1000_adapter, ptr %102, i32 0, i32 64
  %103 = ptrtoint ptr %netdev180 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %netdev180, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_enable_ulp_lpt_lp.__UNIQUE_ID_ddebug363, ptr noundef %104, ptr noundef nonnull @.str.6, i32 noundef %ret_val.1273) #6
  br label %cleanup190

if.else186:                                       ; preds = %out.if.else186_crit_edge, %out.thread279, %out.thread
  %105 = ptrtoint ptr %ulp_state to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 2, ptr %ulp_state, align 4
  br label %cleanup190

cleanup190:                                       ; preds = %if.else186, %if.then178, %do.body166, %while.body.cleanup190_crit_edge, %lor.lhs.false24.cleanup190_crit_edge, %lor.lhs.false.cleanup190_crit_edge, %lor.lhs.false.cleanup190_crit_edge288, %lor.lhs.false.cleanup190_crit_edge289, %lor.lhs.false.cleanup190_crit_edge290, %entry.cleanup190_crit_edge
  %retval.1 = phi i32 [ 0, %lor.lhs.false.cleanup190_crit_edge ], [ 0, %lor.lhs.false.cleanup190_crit_edge288 ], [ 0, %lor.lhs.false.cleanup190_crit_edge289 ], [ 0, %lor.lhs.false.cleanup190_crit_edge290 ], [ 0, %lor.lhs.false24.cleanup190_crit_edge ], [ 0, %entry.cleanup190_crit_edge ], [ %ret_val.1273, %if.then178 ], [ 0, %if.else186 ], [ %ret_val.1273, %do.body166 ], [ -2, %while.body.cleanup190_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %oem_reg) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg) #6
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_read_phy_reg_hv_locked(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_write_phy_reg_hv_locked(ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_configure_k1_ich8lan(ptr noundef %hw, i1 noundef zeroext %k1_enable) local_unnamed_addr #0 align 64 {
entry:
  %kmrn_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %kmrn_reg) #6
  %0 = ptrtoint ptr %kmrn_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %kmrn_reg, align 2
  %call = call i32 @e1000e_read_kmrn_reg_locked(ptr noundef %hw, i32 noundef 7, ptr noundef nonnull %kmrn_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %kmrn_reg to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %kmrn_reg, align 2
  %3 = and i16 %2, -3
  %masksel = select i1 %k1_enable, i16 2, i16 0
  %storemerge = or i16 %3, %masksel
  store i16 %storemerge, ptr %kmrn_reg, align 2
  %call7 = call i32 @e1000e_write_kmrn_reg_locked(ptr noundef %hw, i32 noundef 7, i16 noundef zeroext %storemerge) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #6
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 24
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  %7 = call i32 @llvm.bswap.i32(i32 %6) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %8 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr.i, align 4
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !256
  %11 = call i32 @llvm.bswap.i32(i32 %10) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %and13 = and i32 %11, -2817
  %or14 = or i32 %and13, 2048
  call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %or14) #6
  %or15 = or i32 %7, 32768
  call void @__ew32(ptr noundef %hw, i32 noundef 24, i32 noundef %or15) #6
  %12 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %13, i32 8
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #6
  call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %11) #6
  call void @__ew32(ptr noundef %hw, i32 noundef 24, i32 noundef %7) #6
  %15 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %16, i32 8
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %kmrn_reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_kmrn_reg_locked(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_kmrn_reg_locked(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000_copy_rx_addrs_to_phy_ich8lan(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg) #6
  %0 = ptrtoint ptr %phy_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %phy_reg, align 2
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %1 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy, align 4
  %call = tail call i32 %2(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @e1000_enable_phy_wakeup_reg_access_bm(ptr noundef %hw, ptr noundef nonnull %phy_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %if.end.release_crit_edge

if.end.release_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

for.cond.preheader:                               ; preds = %if.end
  %rar_entry_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 18
  %3 = ptrtoint ptr %rar_entry_count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rar_entry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp139.not = icmp eq i16 %4, 0
  br i1 %cmp139.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %write_reg_page = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %indvars.iv)
  %cmp8 = icmp ult i32 %indvars.iv, 16
  %mul = shl nuw nsw i32 %indvars.iv, 3
  %cond.v = select i1 %cmp8, i32 21504, i32 21600
  %cond = add nuw nsw i32 %mul, %cond.v
  %5 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %cond
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  %8 = call i32 @llvm.bswap.i32(i32 %7) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %9 = ptrtoint ptr %write_reg_page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg_page, align 4
  %shl = shl nuw nsw i32 %indvars.iv, 2
  %add18 = add nuw nsw i32 %shl, 16
  %and = and i32 %add18, 28
  %and22 = shl i32 %add18, 16
  %shl23 = and i32 %and22, -2097152
  %or = or i32 %and, %shl23
  %or24 = or i32 %or, 25600
  %conv26 = trunc i32 %8 to i16
  %call27 = call i32 %10(ptr noundef %hw, i32 noundef %or24, i16 noundef zeroext %conv26) #6
  %11 = ptrtoint ptr %write_reg_page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg_page, align 4
  %add33 = add nuw nsw i32 %shl, 17
  %and34 = and i32 %add33, 29
  %and39 = shl i32 %add33, 16
  %shl40 = and i32 %and39, -2097152
  %or35 = or i32 %and34, %shl40
  %or41 = or i32 %or35, 25600
  %shr = lshr i32 %8, 16
  %conv43 = trunc i32 %shr to i16
  %call44 = call i32 %12(ptr noundef %hw, i32 noundef %or41, i16 noundef zeroext %conv43) #6
  %cond58.v = select i1 %cmp8, i32 21508, i32 21604
  %cond58 = add nuw nsw i32 %mul, %cond58.v
  %13 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %14, i32 %cond58
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138) #6, !srcloc !256
  %16 = call i32 @llvm.bswap.i32(i32 %15) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %17 = ptrtoint ptr %write_reg_page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_reg_page, align 4
  %add65 = add nuw nsw i32 %shl, 18
  %and66 = and i32 %add65, 30
  %and71 = shl i32 %add65, 16
  %shl72 = and i32 %and71, -2097152
  %or67 = or i32 %and66, %shl72
  %or73 = or i32 %or67, 25600
  %conv75 = trunc i32 %16 to i16
  %call76 = call i32 %18(ptr noundef %hw, i32 noundef %or73, i16 noundef zeroext %conv75) #6
  %19 = ptrtoint ptr %write_reg_page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_reg_page, align 4
  %add82 = add nuw nsw i32 %shl, 19
  %and83 = and i32 %add82, 31
  %and88 = shl i32 %add82, 16
  %shl89 = and i32 %and88, -2097152
  %or84 = or i32 %and83, %shl89
  %or90 = or i32 %or84, 25600
  %and91 = lshr i32 %16, 16
  %21 = trunc i32 %and91 to i16
  %conv93 = and i16 %21, -32768
  %call94 = call i32 %20(ptr noundef %hw, i32 noundef %or90, i16 noundef zeroext %conv93) #6
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %22 = ptrtoint ptr %rar_entry_count to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %rar_entry_count, align 4
  %24 = zext i16 %23 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call95 = call i32 @e1000_disable_phy_wakeup_reg_access_bm(ptr noundef %hw, ptr noundef nonnull %phy_reg) #6
  br label %release

release:                                          ; preds = %for.end, %if.end.release_crit_edge
  %release98 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %25 = ptrtoint ptr %release98 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %release98, align 4
  call void %26(ptr noundef %hw) #6
  br label %cleanup

cleanup:                                          ; preds = %release, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_enable_phy_wakeup_reg_access_bm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_disable_phy_wakeup_reg_access_bm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_lv_jumbo_workaround_ich8lan(ptr noundef %hw, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %phy_reg = alloca i16, align 2
  %data = alloca i16, align 2
  %mac_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg) #6
  %0 = ptrtoint ptr %phy_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_reg, align 2, !annotation !254
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %data, align 2, !annotation !254
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp ult i32 %3, 10
  br i1 %cmp, label %entry.cleanup209_crit_edge, label %if.end

entry.cleanup209_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end:                                           ; preds = %entry
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %4 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %5(ptr noundef %hw, i32 noundef 24628, ptr noundef nonnull %phy_reg) #6
  %6 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %phy_reg, align 2
  %8 = or i16 %7, 16384
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %9 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg.i, align 4
  %call.i314 = call i32 %10(ptr noundef %hw, i32 noundef 24628, i16 noundef zeroext %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i314)
  %tobool.not = icmp eq i32 %call.i314, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup209_crit_edge

if.end.cleanup209_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end4:                                          ; preds = %if.end
  br i1 %enable, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end4
  %rar_entry_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 18
  %11 = ptrtoint ptr %rar_entry_count to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rar_entry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp10363.not = icmp eq i16 %12, 0
  br i1 %cmp10363.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 3
  %arrayidx53 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 4
  %arrayidx57 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #6
  %13 = call ptr @memset(ptr %mac_addr, i32 0, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %indvars.iv)
  %cmp13 = icmp ult i32 %indvars.iv, 16
  %mul = shl nuw nsw i32 %indvars.iv, 3
  %cond.v = select i1 %cmp13, i32 21508, i32 21604
  %cond = add nuw nsw i32 %mul, %cond.v
  %14 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %cond
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  %17 = call i32 @llvm.bswap.i32(i32 %16) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool20.not = icmp sgt i32 %17, -1
  br i1 %tobool20.not, label %for.body.cleanup_crit_edge, label %if.end22

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %cond36.v = select i1 %cmp13, i32 21504, i32 21600
  %cond36 = add nuw nsw i32 %mul, %cond36.v
  %18 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i316 = getelementptr i8, ptr %19, i32 %cond36
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i316) #6, !srcloc !256
  %21 = call i32 @llvm.bswap.i32(i32 %20) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %conv39 = trunc i32 %21 to i8
  %22 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv39, ptr %mac_addr, align 1
  %shr = lshr i32 %21, 8
  %conv41 = trunc i32 %shr to i8
  %23 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv41, ptr %arrayidx42, align 1
  %shr43 = lshr i32 %21, 16
  %conv45 = trunc i32 %shr43 to i8
  %24 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv45, ptr %arrayidx46, align 1
  %shr47 = lshr i32 %21, 24
  %conv49 = trunc i32 %shr47 to i8
  %25 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv49, ptr %arrayidx50, align 1
  %conv52 = trunc i32 %17 to i8
  %26 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv52, ptr %arrayidx53, align 1
  %shr54 = lshr i32 %17, 8
  %conv56 = trunc i32 %shr54 to i8
  %27 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv56, ptr %arrayidx57, align 1
  %mul59 = shl nuw nsw i32 %indvars.iv, 2
  %add60 = add nuw nsw i32 %mul59, 24400
  %call61 = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %mac_addr, i32 noundef 6) #9
  %neg = xor i32 %call61, -1
  call void @__ew32(ptr noundef %hw, i32 noundef %add60, i32 noundef %neg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #6
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %28 = ptrtoint ptr %rar_entry_count to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rar_entry_count, align 4
  %30 = zext i16 %29 to i32
  %cmp10 = icmp ult i32 %indvars.iv.next, %30
  br i1 %cmp10, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @e1000_copy_rx_addrs_to_phy_ich8lan(ptr noundef %hw)
  %hw_addr.i317 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %31 = ptrtoint ptr %hw_addr.i317 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_addr.i317, align 4
  %add.ptr.i318 = getelementptr i8, ptr %32, i32 24324
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i318) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %34 = and i32 %33, -12583681
  %35 = or i32 %34, 8389376
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  call void @__ew32(ptr noundef %hw, i32 noundef 24324, i32 noundef %36) #6
  %37 = ptrtoint ptr %hw_addr.i317 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw_addr.i317, align 4
  %add.ptr.i320 = getelementptr i8, ptr %38, i32 256
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i320) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %40 = or i32 %39, 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  call void @__ew32(ptr noundef %hw, i32 noundef 256, i32 noundef %41) #6
  %call69 = call i32 @e1000e_read_kmrn_reg(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %for.end.cleanup209_crit_edge

for.end.cleanup209_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end72:                                         ; preds = %for.end
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %data, align 2
  %44 = or i16 %43, 1
  %call76 = call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 1, i16 noundef zeroext %44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end72.cleanup209_crit_edge

if.end72.cleanup209_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end79:                                         ; preds = %if.end72
  %call80 = call i32 @e1000e_read_kmrn_reg(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end79.cleanup209_crit_edge

if.end79.cleanup209_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end83:                                         ; preds = %if.end79
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %data, align 2
  %47 = and i16 %46, -3841
  %48 = or i16 %47, 2816
  store i16 %48, ptr %data, align 2
  %call90 = call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end83.cleanup209_crit_edge

if.end83.cleanup209_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end93:                                         ; preds = %if.end83
  %49 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_reg.i, align 4
  %call.i322 = call i32 %50(ptr noundef %hw, i32 noundef 24631, ptr noundef nonnull %data) #6
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %data, align 2
  %53 = and i16 %52, -4065
  %54 = or i16 %53, 1760
  store i16 %54, ptr %data, align 2
  %55 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_reg.i, align 4
  %call.i324 = call i32 %56(ptr noundef %hw, i32 noundef 24631, i16 noundef zeroext %54) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i324)
  %tobool102.not = icmp eq i32 %call.i324, 0
  br i1 %tobool102.not, label %if.end104, label %if.end93.cleanup209_crit_edge

if.end93.cleanup209_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end104:                                        ; preds = %if.end93
  %57 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read_reg.i, align 4
  %call.i326 = call i32 %58(ptr noundef %hw, i32 noundef 24624, ptr noundef nonnull %data) #6
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %data, align 2
  %61 = and i16 %60, -8193
  store i16 %61, ptr %data, align 2
  %62 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_reg.i, align 4
  %call.i328 = call i32 %63(ptr noundef %hw, i32 noundef 24624, i16 noundef zeroext %61) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i328)
  %tobool110.not = icmp eq i32 %call.i328, 0
  br i1 %tobool110.not, label %if.end112, label %if.end104.cleanup209_crit_edge

if.end104.cleanup209_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end112:                                        ; preds = %if.end104
  %64 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read_reg.i, align 4
  %call.i330 = call i32 %65(ptr noundef %hw, i32 noundef 24852, ptr noundef nonnull %data) #6
  %66 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %data, align 2
  %68 = and i16 %67, -4093
  %69 = or i16 %68, 124
  store i16 %69, ptr %data, align 2
  %70 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write_reg.i, align 4
  %call.i332 = call i32 %71(ptr noundef %hw, i32 noundef 24852, i16 noundef zeroext %69) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i332)
  %tobool121.not = icmp eq i32 %call.i332, 0
  br i1 %tobool121.not, label %if.end123, label %if.end112.cleanup209_crit_edge

if.end112.cleanup209_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end123:                                        ; preds = %if.end112
  %72 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_reg.i, align 4
  %call.i334 = call i32 %73(ptr noundef %hw, i32 noundef 24855, i16 noundef zeroext -3840) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i334)
  %tobool125.not = icmp eq i32 %call.i334, 0
  br i1 %tobool125.not, label %if.end127, label %if.end123.cleanup209_crit_edge

if.end123.cleanup209_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end127:                                        ; preds = %if.end123
  %74 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read_reg.i, align 4
  %call.i336 = call i32 %75(ptr noundef %hw, i32 noundef 24657, ptr noundef nonnull %data) #6
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %data, align 2
  %78 = or i16 %77, 1024
  %79 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write_reg.i, align 4
  %call.i338 = call i32 %80(ptr noundef %hw, i32 noundef 24657, i16 noundef zeroext %78) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i338)
  %tobool133.not = icmp eq i32 %call.i338, 0
  br i1 %tobool133.not, label %if.end127.if.end204_crit_edge, label %if.end127.cleanup209_crit_edge

if.end127.cleanup209_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end127.if.end204_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end204

if.else:                                          ; preds = %if.end4
  %hw_addr.i339 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %81 = ptrtoint ptr %hw_addr.i339 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw_addr.i339, align 4
  %add.ptr.i340 = getelementptr i8, ptr %82, i32 24324
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i340) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %84 = and i32 %83, -12583681
  %85 = call i32 @llvm.bswap.i32(i32 %84)
  call void @__ew32(ptr noundef %hw, i32 noundef 24324, i32 noundef %85) #6
  %86 = ptrtoint ptr %hw_addr.i339 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw_addr.i339, align 4
  %add.ptr.i342 = getelementptr i8, ptr %87, i32 256
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i342) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %89 = and i32 %88, -5
  %90 = call i32 @llvm.bswap.i32(i32 %89)
  call void @__ew32(ptr noundef %hw, i32 noundef 256, i32 noundef %90) #6
  %call140 = call i32 @e1000e_read_kmrn_reg(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %if.else.cleanup209_crit_edge

if.else.cleanup209_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end143:                                        ; preds = %if.else
  %91 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %data, align 2
  %93 = and i16 %92, -2
  %call147 = call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 1, i16 noundef zeroext %93) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end150, label %if.end143.cleanup209_crit_edge

if.end143.cleanup209_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end150:                                        ; preds = %if.end143
  %call151 = call i32 @e1000e_read_kmrn_reg(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end154, label %if.end150.cleanup209_crit_edge

if.end150.cleanup209_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end154:                                        ; preds = %if.end150
  %94 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %data, align 2
  %96 = and i16 %95, -3841
  %97 = or i16 %96, 2816
  store i16 %97, ptr %data, align 2
  %call161 = call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %97) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end164, label %if.end154.cleanup209_crit_edge

if.end154.cleanup209_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end164:                                        ; preds = %if.end154
  %98 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read_reg.i, align 4
  %call.i344 = call i32 %99(ptr noundef %hw, i32 noundef 24631, ptr noundef nonnull %data) #6
  %100 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %data, align 2
  %102 = and i16 %101, -4065
  store i16 %102, ptr %data, align 2
  %103 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write_reg.i, align 4
  %call.i346 = call i32 %104(ptr noundef %hw, i32 noundef 24631, i16 noundef zeroext %102) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i346)
  %tobool170.not = icmp eq i32 %call.i346, 0
  br i1 %tobool170.not, label %if.end172, label %if.end164.cleanup209_crit_edge

if.end164.cleanup209_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end172:                                        ; preds = %if.end164
  %105 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %read_reg.i, align 4
  %call.i348 = call i32 %106(ptr noundef %hw, i32 noundef 24624, ptr noundef nonnull %data) #6
  %107 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %data, align 2
  %109 = or i16 %108, 8192
  store i16 %109, ptr %data, align 2
  %110 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write_reg.i, align 4
  %call.i350 = call i32 %111(ptr noundef %hw, i32 noundef 24624, i16 noundef zeroext %109) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i350)
  %tobool178.not = icmp eq i32 %call.i350, 0
  br i1 %tobool178.not, label %if.end180, label %if.end172.cleanup209_crit_edge

if.end172.cleanup209_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end180:                                        ; preds = %if.end172
  %112 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %read_reg.i, align 4
  %call.i352 = call i32 %113(ptr noundef %hw, i32 noundef 24852, ptr noundef nonnull %data) #6
  %114 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %data, align 2
  %116 = and i16 %115, -4093
  %117 = or i16 %116, 32
  store i16 %117, ptr %data, align 2
  %118 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write_reg.i, align 4
  %call.i354 = call i32 %119(ptr noundef %hw, i32 noundef 24852, i16 noundef zeroext %117) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i354)
  %tobool189.not = icmp eq i32 %call.i354, 0
  br i1 %tobool189.not, label %if.end191, label %if.end180.cleanup209_crit_edge

if.end180.cleanup209_crit_edge:                   ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end191:                                        ; preds = %if.end180
  %120 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write_reg.i, align 4
  %call.i356 = call i32 %121(ptr noundef %hw, i32 noundef 24855, i16 noundef zeroext 32256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i356)
  %tobool193.not = icmp eq i32 %call.i356, 0
  br i1 %tobool193.not, label %if.end195, label %if.end191.cleanup209_crit_edge

if.end191.cleanup209_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end195:                                        ; preds = %if.end191
  %122 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %read_reg.i, align 4
  %call.i358 = call i32 %123(ptr noundef %hw, i32 noundef 24657, ptr noundef nonnull %data) #6
  %124 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %data, align 2
  %126 = and i16 %125, -1025
  %127 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %write_reg.i, align 4
  %call.i360 = call i32 %128(ptr noundef %hw, i32 noundef 24657, i16 noundef zeroext %126) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i360)
  %tobool201.not = icmp eq i32 %call.i360, 0
  br i1 %tobool201.not, label %if.end195.if.end204_crit_edge, label %if.end195.cleanup209_crit_edge

if.end195.cleanup209_crit_edge:                   ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup209

if.end195.if.end204_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end204

if.end204:                                        ; preds = %if.end195.if.end204_crit_edge, %if.end127.if.end204_crit_edge
  %129 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %phy_reg, align 2
  %131 = and i16 %130, -16385
  %132 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %write_reg.i, align 4
  %call.i362 = call i32 %133(ptr noundef %hw, i32 noundef 24628, i16 noundef zeroext %131) #6
  br label %cleanup209

cleanup209:                                       ; preds = %if.end204, %if.end195.cleanup209_crit_edge, %if.end191.cleanup209_crit_edge, %if.end180.cleanup209_crit_edge, %if.end172.cleanup209_crit_edge, %if.end164.cleanup209_crit_edge, %if.end154.cleanup209_crit_edge, %if.end150.cleanup209_crit_edge, %if.end143.cleanup209_crit_edge, %if.else.cleanup209_crit_edge, %if.end127.cleanup209_crit_edge, %if.end123.cleanup209_crit_edge, %if.end112.cleanup209_crit_edge, %if.end104.cleanup209_crit_edge, %if.end93.cleanup209_crit_edge, %if.end83.cleanup209_crit_edge, %if.end79.cleanup209_crit_edge, %if.end72.cleanup209_crit_edge, %for.end.cleanup209_crit_edge, %if.end.cleanup209_crit_edge, %entry.cleanup209_crit_edge
  %retval.0 = phi i32 [ %call.i362, %if.end204 ], [ 0, %entry.cleanup209_crit_edge ], [ %call.i314, %if.end.cleanup209_crit_edge ], [ %call69, %for.end.cleanup209_crit_edge ], [ %call76, %if.end72.cleanup209_crit_edge ], [ %call80, %if.end79.cleanup209_crit_edge ], [ %call90, %if.end83.cleanup209_crit_edge ], [ %call.i324, %if.end93.cleanup209_crit_edge ], [ %call.i328, %if.end104.cleanup209_crit_edge ], [ %call.i332, %if.end112.cleanup209_crit_edge ], [ %call.i334, %if.end123.cleanup209_crit_edge ], [ %call.i338, %if.end127.cleanup209_crit_edge ], [ %call140, %if.else.cleanup209_crit_edge ], [ %call147, %if.end143.cleanup209_crit_edge ], [ %call151, %if.end150.cleanup209_crit_edge ], [ %call161, %if.end154.cleanup209_crit_edge ], [ %call.i346, %if.end164.cleanup209_crit_edge ], [ %call.i350, %if.end172.cleanup209_crit_edge ], [ %call.i354, %if.end180.cleanup209_crit_edge ], [ %call.i356, %if.end191.cleanup209_crit_edge ], [ %call.i360, %if.end195.cleanup209_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_kmrn_reg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_kmrn_reg(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_write_protect_nvm_ich8lan(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %nvm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvm1, align 4
  %call = tail call i32 %1(ptr noundef %hw) #6
  %flash_address.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flash_address.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !256
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  %6 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 116
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  %bf.shl = shl i32 %5, 19
  %9 = and i32 %8, 100665088
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %bf.set = or i32 %10, %bf.shl
  %11 = lshr i32 %5, 13
  %bf.shl7 = and i32 %11, 65528
  %bf.set9 = or i32 %bf.set, %bf.shl7
  %bf.set12 = or i32 %bf.set9, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %bf.set12) #6
  %13 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %14, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %12) #6, !srcloc !261
  %15 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %16, i32 4
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i35) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  %18 = or i16 %17, 256
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv = zext i16 %19 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv) #6
  %21 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %20) #6, !srcloc !261
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 2
  %23 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %release, align 4
  tail call void %24(ptr noundef %hw) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_set_kmrn_lock_loss_workaround_ich8lan(ptr nocapture noundef %hw, i1 noundef zeroext %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.not = icmp eq i32 %1, 6
  br i1 %cmp.not, label %if.end9, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_set_kmrn_lock_loss_workaround_ich8lan.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_set_kmrn_lock_loss_workaround_ich8lan, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !258

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_set_kmrn_lock_loss_workaround_ich8lan.__UNIQUE_ID_ddebug408, ptr noundef %5, ptr noundef nonnull @.str.8) #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev_spec1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9
  %frombool = zext i1 %state to i8
  %6 = ptrtoint ptr %dev_spec1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %dev_spec1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %do.body2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_igp3_phy_powerdown_workaround_ich8lan(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %reg_data.i = alloca i16, align 2
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !254
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp.not = icmp eq i32 %2, 6
  br i1 %cmp.not, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %type1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  br label %do.body

do.body:                                          ; preds = %if.end20, %do.body.preheader
  %tobool.not = phi i1 [ false, %if.end20 ], [ true, %do.body.preheader ]
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 3856
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %6 = or i32 %5, 1207959552
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  call void @__ew32(ptr noundef %hw, i32 noundef 3856, i32 noundef %7) #6
  %8 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp2 = icmp eq i32 %9, 6
  br i1 %cmp2, label %lor.lhs.false.i, label %do.body.if.end4_crit_edge

do.body.if.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

lor.lhs.false.i:                                  ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_data.i) #6
  %10 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %reg_data.i, align 2, !annotation !254
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp2.i = icmp eq i32 %12, 7
  br i1 %cmp2.i, label %lor.lhs.false.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge, label %if.end.i

lor.lhs.false.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000e_gig_downshift_workaround_ich8lan.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = call i32 @e1000e_read_kmrn_reg(ptr noundef %hw, i32 noundef 3, ptr noundef nonnull %reg_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge

if.end.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000e_gig_downshift_workaround_ich8lan.exit

if.end4.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %reg_data.i, align 2
  %15 = or i16 %14, 4096
  store i16 %15, ptr %reg_data.i, align 2
  %call6.i = call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 3, i16 noundef zeroext %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge

if.end4.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000e_gig_downshift_workaround_ich8lan.exit

if.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reg_data.i, align 2
  %18 = and i16 %17, -4097
  store i16 %18, ptr %reg_data.i, align 2
  %call12.i = call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 3, i16 noundef zeroext %18) #6
  br label %e1000e_gig_downshift_workaround_ich8lan.exit

e1000e_gig_downshift_workaround_ich8lan.exit:     ; preds = %if.end9.i, %if.end4.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge, %if.end.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge, %lor.lhs.false.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data.i) #6
  br label %if.end4

if.end4:                                          ; preds = %e1000e_gig_downshift_workaround_ich8lan.exit, %do.body.if.end4_crit_edge
  %19 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_reg.i, align 4
  %call.i39 = call i32 %20(ptr noundef %hw, i32 noundef 24850, ptr noundef nonnull %data) #6
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %data, align 2
  %23 = and i16 %22, -769
  store i16 %23, ptr %data, align 2
  %24 = or i16 %23, 512
  %25 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_reg.i, align 4
  %call.i40 = call i32 %26(ptr noundef %hw, i32 noundef 24850, i16 noundef zeroext %24) #6
  %27 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_reg.i, align 4
  %call.i42 = call i32 %28(ptr noundef %hw, i32 noundef 24850, ptr noundef nonnull %data) #6
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %data, align 2
  %31 = and i16 %30, 768
  store i16 %31, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %31)
  %cmp16 = icmp ne i16 %31, 512
  %or.cond = and i1 %tobool.not, %cmp16
  br i1 %or.cond, label %if.end20, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_addr.i, align 4
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %35 = or i32 %34, 128
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %36) #6
  br label %do.body

cleanup:                                          ; preds = %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_gig_downshift_workaround_ich8lan(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %reg_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_data) #6
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg_data, align 2, !annotation !254
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp.not = icmp eq i32 %2, 6
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp2 = icmp eq i32 %4, 7
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @e1000e_read_kmrn_reg(ptr noundef %hw, i32 noundef 3, ptr noundef nonnull %reg_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %reg_data to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg_data, align 2
  %7 = or i16 %6, 4096
  store i16 %7, ptr %reg_data, align 2
  %call6 = call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 3, i16 noundef zeroext %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %reg_data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg_data, align 2
  %10 = and i16 %9, -4097
  store i16 %10, ptr %reg_data, align 2
  %call12 = call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 3, i16 noundef zeroext %10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000_suspend_workarounds_ich8lan(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %reg_data.i = alloca i16, align 2
  %phy_reg = alloca i16, align 2
  %eee_advert = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 3856
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %3 = or i32 %2, 1073741824
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %6)
  %cmp = icmp eq i32 %6, 12
  br i1 %cmp, label %if.then, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg) #6
  %7 = ptrtoint ptr %phy_reg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %phy_reg, align 2, !annotation !254
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %pdev = getelementptr inbounds %struct.e1000_adapter, ptr %9, i32 0, i32 65
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 32
  %device = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.95)
  switch i16 %13, label %lor.lhs.false15 [
    i16 5466, label %if.then.if.then19_crit_edge
    i16 5465, label %if.then.if.then19_crit_edge190
    i16 5538, label %if.then.if.then19_crit_edge191
    i16 5539, label %if.then.if.then19_crit_edge192
  ]

if.then.if.then19_crit_edge192:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.then.if.then19_crit_edge191:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.then.if.then19_crit_edge190:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.then.if.then19_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

lor.lhs.false15:                                  ; preds = %if.then
  %type16 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %16)
  %cmp17 = icmp ugt i32 %16, 11
  br i1 %cmp17, label %lor.lhs.false15.if.then19_crit_edge, label %lor.lhs.false15.if.end_crit_edge

lor.lhs.false15.if.end_crit_edge:                 ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false15.if.then19_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false15.if.then19_crit_edge, %if.then.if.then19_crit_edge, %if.then.if.then19_crit_edge190, %if.then.if.then19_crit_edge191, %if.then.if.then19_crit_edge192
  %17 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i165 = getelementptr i8, ptr %18, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %20 = and i32 %19, -65537
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %21) #6
  br label %if.end

if.end:                                           ; preds = %if.then19, %lor.lhs.false15.if.end_crit_edge
  %22 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy, align 4
  %call22 = tail call i32 %23(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.end24, label %if.end.cleanup79_crit_edge

if.end.cleanup79_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

if.end24:                                         ; preds = %if.end
  %eee_disable = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 3
  %24 = ptrtoint ptr %eee_disable to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %eee_disable, align 1, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool25.not = icmp eq i8 %25, 0
  br i1 %tobool25.not, label %if.then26, label %if.end24.if.end50_crit_edge

if.end24.if.end50_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then26:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %eee_advert) #6
  %26 = ptrtoint ptr %eee_advert to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %eee_advert, align 2, !annotation !254
  %write_reg_locked.i.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %27 = ptrtoint ptr %write_reg_locked.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_reg_locked.i.i.i, align 4
  %call.i.i.i = tail call i32 %28(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext -32767) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %e1000_read_emi_reg_locked.exit, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

e1000_read_emi_reg_locked.exit:                   ; preds = %if.then26
  %read_reg_locked.i.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 11
  %29 = ptrtoint ptr %read_reg_locked.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_reg_locked.i.i.i, align 4
  %call.i11.i.i = call i32 %30(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %eee_advert) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i.i)
  %tobool28.not = icmp eq i32 %call.i11.i.i, 0
  br i1 %tobool28.not, label %if.end30, label %e1000_read_emi_reg_locked.exit.cleanup_crit_edge

e1000_read_emi_reg_locked.exit.cleanup_crit_edge: ; preds = %e1000_read_emi_reg_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %e1000_read_emi_reg_locked.exit
  %31 = ptrtoint ptr %eee_advert to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %eee_advert, align 2
  %33 = and i16 %32, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool33.not = icmp eq i16 %33, 0
  br i1 %tobool33.not, label %if.end30.cleanup.thread_crit_edge, label %land.lhs.true

if.end30.cleanup.thread_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

land.lhs.true:                                    ; preds = %if.end30
  %eee_lp_ability = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 4
  %34 = ptrtoint ptr %eee_lp_ability to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %eee_lp_ability, align 4
  %36 = and i16 %35, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool36.not = icmp eq i16 %36, 0
  br i1 %tobool36.not, label %land.lhs.true.cleanup.thread_crit_edge, label %land.lhs.true37

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

land.lhs.true37:                                  ; preds = %land.lhs.true
  %autoneg_advertised = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 13
  %37 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %autoneg_advertised, align 4
  %39 = and i16 %38, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool41.not = icmp eq i16 %39, 0
  br i1 %tobool41.not, label %land.lhs.true37.cleanup.thread_crit_edge, label %if.then42

land.lhs.true37.cleanup.thread_crit_edge:         ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.then42:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  %and43 = and i32 %4, -7
  %40 = ptrtoint ptr %read_reg_locked.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_reg_locked.i.i.i, align 4
  %call.i = call i32 %41(ptr noundef %hw, i32 noundef 24722, ptr noundef nonnull %phy_reg) #6
  %42 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %phy_reg, align 2
  %44 = or i16 %43, 2048
  store i16 %44, ptr %phy_reg, align 2
  %45 = ptrtoint ptr %write_reg_locked.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_reg_locked.i.i.i, align 4
  %call.i166 = call i32 %46(ptr noundef %hw, i32 noundef 24722, i16 noundef zeroext %44) #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then42, %land.lhs.true37.cleanup.thread_crit_edge, %land.lhs.true.cleanup.thread_crit_edge, %if.end30.cleanup.thread_crit_edge
  %phy_ctrl.1.ph = phi i32 [ %4, %if.end30.cleanup.thread_crit_edge ], [ %4, %land.lhs.true.cleanup.thread_crit_edge ], [ %4, %land.lhs.true37.cleanup.thread_crit_edge ], [ %and43, %if.then42 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %eee_advert) #6
  br label %if.end50

cleanup:                                          ; preds = %e1000_read_emi_reg_locked.exit.cleanup_crit_edge, %if.then26.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %eee_advert) #6
  br label %release

if.end50:                                         ; preds = %cleanup.thread, %if.end24.if.end50_crit_edge
  %phy_ctrl.2 = phi i32 [ %4, %if.end24.if.end50_crit_edge ], [ %phy_ctrl.1.ph, %cleanup.thread ]
  %47 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %48, i32 23380
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i168) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %50 = and i32 %49, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool53.not = icmp eq i32 %50, 0
  br i1 %tobool53.not, label %if.then54, label %if.end50.if.end70_crit_edge

if.end50.if.end70_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %read_reg_locked.i169 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 11
  %51 = ptrtoint ptr %read_reg_locked.i169 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read_reg_locked.i169, align 4
  %call.i170 = call i32 %52(ptr noundef %hw, i32 noundef 4219910, ptr noundef nonnull %phy_reg) #6
  %53 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %phy_reg, align 2
  %55 = or i16 %54, 128
  store i16 %55, ptr %phy_reg, align 2
  %write_reg_locked.i171 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %56 = ptrtoint ptr %write_reg_locked.i171 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_reg_locked.i171, align 4
  %call.i172 = call i32 %57(ptr noundef %hw, i32 noundef 4219910, i16 noundef zeroext %55) #6
  %58 = ptrtoint ptr %read_reg_locked.i169 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read_reg_locked.i169, align 4
  %call.i174 = call i32 %59(ptr noundef %hw, i32 noundef 24636, ptr noundef nonnull %phy_reg) #6
  %60 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %phy_reg, align 2
  %62 = or i16 %61, 4096
  store i16 %62, ptr %phy_reg, align 2
  %63 = ptrtoint ptr %write_reg_locked.i171 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_reg_locked.i171, align 4
  %call.i176 = call i32 %64(ptr noundef %hw, i32 noundef 24636, i16 noundef zeroext %62) #6
  %65 = ptrtoint ptr %read_reg_locked.i169 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read_reg_locked.i169, align 4
  %call.i178 = call i32 %66(ptr noundef %hw, i32 noundef 24730, ptr noundef nonnull %phy_reg) #6
  %67 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %phy_reg, align 2
  %69 = and i16 %68, -17
  store i16 %69, ptr %phy_reg, align 2
  %70 = ptrtoint ptr %write_reg_locked.i171 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write_reg_locked.i171, align 4
  %call.i180 = call i32 %71(ptr noundef %hw, i32 noundef 24730, i16 noundef zeroext %69) #6
  br label %if.end70

if.end70:                                         ; preds = %if.then54, %if.end50.if.end70_crit_edge
  %read_reg_locked.i181 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 11
  %72 = ptrtoint ptr %read_reg_locked.i181 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read_reg_locked.i181, align 4
  %call.i182 = call i32 %73(ptr noundef %hw, i32 noundef 24733, ptr noundef nonnull %phy_reg) #6
  %74 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %phy_reg, align 2
  %76 = or i16 %75, 2
  store i16 %76, ptr %phy_reg, align 2
  %write_reg_locked.i183 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %77 = ptrtoint ptr %write_reg_locked.i183 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write_reg_locked.i183, align 4
  %call.i184 = call i32 %78(ptr noundef %hw, i32 noundef 24733, i16 noundef zeroext %76) #6
  br label %release

release:                                          ; preds = %if.end70, %cleanup
  %phy_ctrl.3 = phi i32 [ %phy_ctrl.2, %if.end70 ], [ %4, %cleanup ]
  %release78 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %79 = ptrtoint ptr %release78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %release78, align 4
  call void %80(ptr noundef %hw) #6
  br label %cleanup79

cleanup79:                                        ; preds = %release, %if.end.cleanup79_crit_edge
  %phy_ctrl.4 = phi i32 [ %phy_ctrl.3, %release ], [ %4, %if.end.cleanup79_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg) #6
  br label %out

out:                                              ; preds = %cleanup79, %entry.out_crit_edge
  %phy_ctrl.5 = phi i32 [ %phy_ctrl.4, %cleanup79 ], [ %4, %entry.out_crit_edge ]
  call void @__ew32(ptr noundef %hw, i32 noundef 3856, i32 noundef %phy_ctrl.5) #6
  %type85 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %81 = ptrtoint ptr %type85 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %type85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %82)
  %cmp86 = icmp eq i32 %82, 6
  br i1 %cmp86, label %lor.lhs.false.i, label %out.if.end89_crit_edge

out.if.end89_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

lor.lhs.false.i:                                  ; preds = %out
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_data.i) #6
  %83 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 -1, ptr %reg_data.i, align 2, !annotation !254
  %84 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %85)
  %cmp2.i = icmp eq i32 %85, 7
  br i1 %cmp2.i, label %lor.lhs.false.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge, label %if.end.i

lor.lhs.false.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000e_gig_downshift_workaround_ich8lan.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i185 = call i32 @e1000e_read_kmrn_reg(ptr noundef %hw, i32 noundef 3, ptr noundef nonnull %reg_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool.not.i = icmp eq i32 %call.i185, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge

if.end.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000e_gig_downshift_workaround_ich8lan.exit

if.end4.i:                                        ; preds = %if.end.i
  %86 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %reg_data.i, align 2
  %88 = or i16 %87, 4096
  store i16 %88, ptr %reg_data.i, align 2
  %call6.i = call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 3, i16 noundef zeroext %88) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge

if.end4.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000e_gig_downshift_workaround_ich8lan.exit

if.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %reg_data.i, align 2
  %91 = and i16 %90, -4097
  store i16 %91, ptr %reg_data.i, align 2
  %call12.i = call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 3, i16 noundef zeroext %91) #6
  br label %e1000e_gig_downshift_workaround_ich8lan.exit

e1000e_gig_downshift_workaround_ich8lan.exit:     ; preds = %if.end9.i, %if.end4.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge, %if.end.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge, %lor.lhs.false.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data.i) #6
  %92 = ptrtoint ptr %type85 to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pr = load i32, ptr %type85, align 4
  br label %if.end89

if.end89:                                         ; preds = %e1000e_gig_downshift_workaround_ich8lan.exit, %out.if.end89_crit_edge
  %93 = phi i32 [ %.pr, %e1000e_gig_downshift_workaround_ich8lan.exit ], [ %82, %out.if.end89_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %93)
  %cmp92 = icmp ugt i32 %93, 8
  br i1 %cmp92, label %if.then94, label %if.end89.cleanup115_crit_edge

if.end89.cleanup115_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup115

if.then94:                                        ; preds = %if.end89
  %call95 = call fastcc i32 @e1000_oem_bits_config_ich8lan(ptr noundef %hw, i1 noundef zeroext false)
  %94 = ptrtoint ptr %type85 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %type85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %95)
  %cmp98 = icmp eq i32 %95, 9
  br i1 %cmp98, label %if.then100, label %if.then94.if.end102_crit_edge

if.then94.if.end102_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.then100:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  %call101 = call i32 @e1000e_phy_hw_reset_generic(ptr noundef %hw) #6
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %if.then94.if.end102_crit_edge
  %96 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %phy, align 4
  %call106 = call i32 %97(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %if.end102.cleanup115_crit_edge

if.end102.cleanup115_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup115

if.end109:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  %call110 = call fastcc i32 @e1000_write_smbus_addr(ptr noundef %hw)
  %release113 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %98 = ptrtoint ptr %release113 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %release113, align 4
  call void %99(ptr noundef %hw) #6
  br label %cleanup115

cleanup115:                                       ; preds = %if.end109, %if.end102.cleanup115_crit_edge, %if.end89.cleanup115_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_oem_bits_config_ich8lan(ptr noundef %hw, i1 noundef zeroext %d0_state) unnamed_addr #0 align 64 {
entry:
  %oem_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %oem_reg) #6
  %0 = ptrtoint ptr %oem_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %oem_reg, align 2, !annotation !254
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %2)
  %cmp = icmp ult i32 %2, 9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 4
  %call = tail call i32 %4(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %6)
  %cmp5 = icmp eq i32 %6, 9
  br i1 %cmp5, label %if.then6, label %if.end2.if.end11_crit_edge

if.end2.if.end11_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then6:                                         ; preds = %if.end2
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 3840
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %10 = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %if.then6.if.end11_crit_edge, label %if.then6.release_crit_edge

if.then6.release_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end2.if.end11_crit_edge
  %hw_addr.i100 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %11 = ptrtoint ptr %hw_addr.i100 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_addr.i100, align 4
  %add.ptr.i101 = getelementptr i8, ptr %12, i32 40
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not = icmp eq i32 %14, 0
  br i1 %tobool14.not, label %if.end11.release_crit_edge, label %if.end16

if.end11.release_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end16:                                         ; preds = %if.end11
  %15 = ptrtoint ptr %hw_addr.i100 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr.i100, align 4
  %add.ptr.i103 = getelementptr i8, ptr %16, i32 3856
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #6, !srcloc !256
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %read_reg_locked.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 11
  %19 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_reg_locked.i, align 4
  %call.i = call i32 %20(ptr noundef %hw, i32 noundef 24601, ptr noundef nonnull %oem_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.release_crit_edge

if.end16.release_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end21:                                         ; preds = %if.end16
  %21 = ptrtoint ptr %oem_reg to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %oem_reg, align 2
  %23 = and i16 %22, -69
  store i16 %23, ptr %oem_reg, align 2
  br i1 %d0_state, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end21
  %and26 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then25.if.end31_crit_edge, label %if.then28

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %24 = or i16 %23, 64
  %25 = ptrtoint ptr %oem_reg to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %oem_reg, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then25.if.end31_crit_edge
  %and32 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.land.lhs.true_crit_edge, label %if.then34

if.end31.land.lhs.true_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %oem_reg to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %oem_reg, align 2
  %28 = or i16 %27, 4
  store i16 %28, ptr %oem_reg, align 2
  br label %land.lhs.true

if.else:                                          ; preds = %if.end21
  %and39 = and i32 %18, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else.if.end45_crit_edge, label %if.then41

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %29 = or i16 %23, 64
  %30 = ptrtoint ptr %oem_reg to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %oem_reg, align 2
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.else.if.end45_crit_edge
  %and46 = and i32 %18, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.lor.lhs.false_crit_edge, label %if.then48

if.end45.lor.lhs.false_crit_edge:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %oem_reg to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %oem_reg, align 2
  %33 = or i16 %32, 4
  store i16 %33, ptr %oem_reg, align 2
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then48, %if.end45.lor.lhs.false_crit_edge
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %35)
  %cmp58.not = icmp eq i32 %35, 9
  br i1 %cmp58.not, label %lor.lhs.false.if.end68_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

lor.lhs.false.if.end68_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.then34, %if.end31.land.lhs.true_crit_edge
  %check_reset_block = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %36 = ptrtoint ptr %check_reset_block to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %check_reset_block, align 4
  %call62 = call i32 %37(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then64, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %oem_reg to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %oem_reg, align 2
  %40 = or i16 %39, 1024
  store i16 %40, ptr %oem_reg, align 2
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %land.lhs.true.if.end68_crit_edge, %lor.lhs.false.if.end68_crit_edge
  %41 = ptrtoint ptr %oem_reg to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %oem_reg, align 2
  %write_reg_locked.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %43 = ptrtoint ptr %write_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_reg_locked.i, align 4
  %call.i104 = call i32 %44(ptr noundef %hw, i32 noundef 24601, i16 noundef zeroext %42) #6
  br label %release

release:                                          ; preds = %if.end68, %if.end16.release_crit_edge, %if.end11.release_crit_edge, %if.then6.release_crit_edge
  %ret_val.0 = phi i32 [ 0, %if.then6.release_crit_edge ], [ %call.i, %if.end16.release_crit_edge ], [ %call.i104, %if.end68 ], [ 0, %if.end11.release_crit_edge ]
  %release72 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %45 = ptrtoint ptr %release72 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %release72, align 4
  call void %46(ptr noundef %hw) #6
  br label %cleanup

cleanup:                                          ; preds = %release, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.0, %release ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %oem_reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_hw_reset_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_write_smbus_addr(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #6
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !254
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %and = lshr i32 %4, 12
  %shr = and i32 %and, 3
  %call2 = call i32 @e1000_read_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24602, ptr noundef nonnull %phy_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %phy_data, align 2
  %7 = and i16 %6, -768
  %and1 = lshr i32 %4, 17
  %8 = trunc i32 %and1 to i16
  %9 = and i16 %8, 127
  %conv7 = or i16 %9, %7
  %10 = or i16 %conv7, 640
  store i16 %10, ptr %phy_data, align 2
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %12)
  %cmp = icmp eq i32 %12, 12
  br i1 %cmp, label %if.then12, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool13.not = icmp eq i32 %shr, 0
  br i1 %tobool13.not, label %do.body27, label %if.then14

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %13 = and i16 %10, -4353
  %14 = trunc i32 %shr to i16
  %dec.tr = add nsw i16 %14, -1
  %15 = shl nuw nsw i16 %dec.tr, 8
  %16 = and i16 %15, 256
  %17 = shl nuw nsw i16 %dec.tr, 11
  %18 = and i16 %17, 4096
  %conv21 = or i16 %18, %16
  %conv26 = or i16 %conv21, %13
  %19 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv26, ptr %phy_data, align 2
  br label %if.end37

do.body27:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_write_smbus_addr.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_write_smbus_addr, %if.then32)) #6
          to label %if.end37 [label %if.then32], !srcloc !258

if.then32:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %21, i32 0, i32 64
  %22 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_write_smbus_addr.__UNIQUE_ID_ddebug374, ptr noundef %23, ptr noundef nonnull @.str.14) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %do.body27, %if.then14, %if.end.if.end37_crit_edge
  %24 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %phy_data, align 2
  %call38 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24602, i16 noundef zeroext %25) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.end37 ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000_resume_workarounds_pchlan(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp = icmp ult i32 %1, 10
  br i1 %cmp, label %entry.cleanup93_crit_edge, label %if.end

entry.cleanup93_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup93

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @e1000_init_phy_workarounds_pchlan(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %do.body2

do.body2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_resume_workarounds_pchlan.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_resume_workarounds_pchlan, %if.then7)) #6
          to label %cleanup93 [label %if.then7], !srcloc !258

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_resume_workarounds_pchlan.__UNIQUE_ID_ddebug409, ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef %call) #6
  br label %cleanup93

if.end11:                                         ; preds = %if.end
  %type12 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %type12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp13 = icmp eq i32 %7, 12
  br i1 %cmp13, label %if.then14, label %if.end11.cleanup93_crit_edge

if.end11.cleanup93_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup93

if.then14:                                        ; preds = %if.end11
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg) #6
  %8 = ptrtoint ptr %phy_reg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %phy_reg, align 2, !annotation !254
  %9 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy, align 4
  %call16 = tail call i32 %10(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end40, label %do.body20

do.body20:                                        ; preds = %if.then14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_resume_workarounds_pchlan.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_resume_workarounds_pchlan, %if.then32)) #6
          to label %cleanup93.critedge [label %if.then32], !srcloc !258

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %netdev34 = getelementptr inbounds %struct.e1000_adapter, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %netdev34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_resume_workarounds_pchlan.__UNIQUE_ID_ddebug410, ptr noundef %14, ptr noundef nonnull @.str.11) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg) #6
  br label %cleanup93

if.end40:                                         ; preds = %if.then14
  %read_reg_locked.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 11
  %15 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_reg_locked.i, align 4
  %call.i = call i32 %16(ptr noundef %hw, i32 noundef 24722, ptr noundef nonnull %phy_reg) #6
  %17 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %phy_reg, align 2
  %19 = and i16 %18, -2049
  store i16 %19, ptr %phy_reg, align 2
  %write_reg_locked.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %20 = ptrtoint ptr %write_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_reg_locked.i, align 4
  %call.i126 = call i32 %21(ptr noundef %hw, i32 noundef 24722, i16 noundef zeroext %19) #6
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %22 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 23380
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %25 = and i32 %24, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool46.not = icmp eq i32 %25, 0
  br i1 %tobool46.not, label %if.then47, label %if.end40.if.end56_crit_edge

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then47:                                        ; preds = %if.end40
  %26 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_reg_locked.i, align 4
  %call.i128 = call i32 %27(ptr noundef %hw, i32 noundef 24730, ptr noundef nonnull %phy_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool49.not = icmp eq i32 %call.i128, 0
  br i1 %tobool49.not, label %if.end51, label %if.then47.do.body68_crit_edge

if.then47.do.body68_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body68

if.end51:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %phy_reg, align 2
  %30 = or i16 %29, 16
  store i16 %30, ptr %phy_reg, align 2
  %31 = ptrtoint ptr %write_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_reg_locked.i, align 4
  %call.i130 = call i32 %32(ptr noundef %hw, i32 noundef 24730, i16 noundef zeroext %30) #6
  %33 = ptrtoint ptr %write_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_reg_locked.i, align 4
  %call.i132 = call i32 %34(ptr noundef %hw, i32 noundef 4219910, i16 noundef zeroext 0) #6
  br label %if.end56

if.end56:                                         ; preds = %if.end51, %if.end40.if.end56_crit_edge
  %35 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_reg_locked.i, align 4
  %call.i134 = call i32 %36(ptr noundef %hw, i32 noundef 24733, ptr noundef nonnull %phy_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool58.not = icmp eq i32 %call.i134, 0
  br i1 %tobool58.not, label %release, label %if.end56.do.body68_crit_edge

if.end56.do.body68_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body68

release:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %phy_reg, align 2
  %39 = and i16 %38, -3
  store i16 %39, ptr %phy_reg, align 2
  %40 = ptrtoint ptr %write_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_reg_locked.i, align 4
  %call.i136 = call i32 %41(ptr noundef %hw, i32 noundef 24733, i16 noundef zeroext %39) #6
  br label %if.end88

do.body68:                                        ; preds = %if.end56.do.body68_crit_edge, %if.then47.do.body68_crit_edge
  %ret_val.0.ph = phi i32 [ %call.i128, %if.then47.do.body68_crit_edge ], [ %call.i134, %if.end56.do.body68_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_resume_workarounds_pchlan.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_resume_workarounds_pchlan, %if.then80)) #6
          to label %if.end88 [label %if.then80], !srcloc !258

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  %netdev82 = getelementptr inbounds %struct.e1000_adapter, ptr %43, i32 0, i32 64
  %44 = ptrtoint ptr %netdev82 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %netdev82, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_resume_workarounds_pchlan.__UNIQUE_ID_ddebug411, ptr noundef %45, ptr noundef nonnull @.str.12, i32 noundef %ret_val.0.ph) #6
  br label %if.end88

if.end88:                                         ; preds = %if.then80, %do.body68, %release
  %release91 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %46 = ptrtoint ptr %release91 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %release91, align 4
  call void %47(ptr noundef %hw) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg) #6
  br label %cleanup93

cleanup93.critedge:                               ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg) #6
  br label %cleanup93

cleanup93:                                        ; preds = %cleanup93.critedge, %if.end88, %if.then32, %if.end11.cleanup93_crit_edge, %if.then7, %do.body2, %entry.cleanup93_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_init_phy_workarounds_pchlan(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 23380
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %type.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %cmp.i = icmp ult i32 %7, 10
  br i1 %cmp.i, label %entry.e1000_gate_hw_phy_config_ich8lan.exit_crit_edge, label %if.end.i

entry.e1000_gate_hw_phy_config_ich8lan.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_gate_hw_phy_config_ich8lan.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 3840
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %11 = or i32 %10, -2147483648
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3840, i32 noundef %12) #6
  br label %e1000_gate_hw_phy_config_ich8lan.exit

e1000_gate_hw_phy_config_ich8lan.exit:            ; preds = %if.end.i, %entry.e1000_gate_hw_phy_config_ich8lan.exit_crit_edge
  %ulp_state = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 5
  %13 = ptrtoint ptr %ulp_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ulp_state, align 4
  %call2 = tail call fastcc i32 @e1000_disable_ulp_lpt_lp(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %e1000_gate_hw_phy_config_ich8lan.exit.if.end_crit_edge, label %if.then

e1000_gate_hw_phy_config_ich8lan.exit.if.end_crit_edge: ; preds = %e1000_gate_hw_phy_config_ich8lan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %e1000_gate_hw_phy_config_ich8lan.exit
  call void @__sanitizer_cov_trace_pc() #8
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %1, i32 0, i32 64
  %14 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.15) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %e1000_gate_hw_phy_config_ich8lan.exit.if.end_crit_edge
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy, align 4
  %call3 = tail call i32 %17(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end17, label %do.body6

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_init_phy_workarounds_pchlan.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_init_phy_workarounds_pchlan, %if.then11)) #6
          to label %out [label %if.then11], !srcloc !258

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %netdev13 = getelementptr inbounds %struct.e1000_adapter, ptr %19, i32 0, i32 64
  %20 = ptrtoint ptr %netdev13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev13, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_init_phy_workarounds_pchlan.__UNIQUE_ID_ddebug353, ptr noundef %21, ptr noundef nonnull @.str.17) #6
  br label %out

if.end17:                                         ; preds = %if.end
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %23, label %if.end17.sw.epilog.thread_crit_edge [
    i32 11, label %if.end17.sw.bb_crit_edge
    i32 12, label %if.end17.sw.bb_crit_edge172
    i32 13, label %if.end17.sw.bb_crit_edge173
    i32 14, label %if.end17.sw.bb_crit_edge174
    i32 15, label %if.end17.sw.bb_crit_edge175
    i32 16, label %if.end17.sw.bb_crit_edge176
    i32 17, label %if.end17.sw.bb_crit_edge177
    i32 10, label %if.end17.sw.bb22_crit_edge
    i32 9, label %if.end17.sw.bb26_crit_edge
  ]

if.end17.sw.bb26_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb26

if.end17.sw.bb22_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22

if.end17.sw.bb_crit_edge177:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end17.sw.bb_crit_edge176:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end17.sw.bb_crit_edge175:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end17.sw.bb_crit_edge174:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end17.sw.bb_crit_edge173:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end17.sw.bb_crit_edge172:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end17.sw.bb_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end17.sw.epilog.thread_crit_edge:              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %if.end17.sw.bb_crit_edge, %if.end17.sw.bb_crit_edge172, %if.end17.sw.bb_crit_edge173, %if.end17.sw.bb_crit_edge174, %if.end17.sw.bb_crit_edge175, %if.end17.sw.bb_crit_edge176, %if.end17.sw.bb_crit_edge177
  %call18 = tail call fastcc zeroext i1 @e1000_phy_is_accessible_pchlan(ptr noundef %hw)
  br i1 %call18, label %sw.bb.sw.epilog.thread_crit_edge, label %if.end20

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

if.end20:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %26, i32 24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %28 = or i32 %27, 524288
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 24, i32 noundef %29) #6
  tail call void @msleep(i32 noundef 50) #6
  br label %sw.bb22

sw.bb22:                                          ; preds = %if.end20, %if.end17.sw.bb22_crit_edge
  %call23 = tail call fastcc zeroext i1 @e1000_phy_is_accessible_pchlan(ptr noundef %hw)
  br i1 %call23, label %sw.bb22.sw.epilog.thread_crit_edge, label %sw.bb22.sw.bb26_crit_edge

sw.bb22.sw.bb26_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb26

sw.bb22.sw.epilog.thread_crit_edge:               ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

sw.bb26:                                          ; preds = %sw.bb22.sw.bb26_crit_edge, %if.end17.sw.bb26_crit_edge
  %30 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %31)
  %cmp = icmp ne i32 %31, 9
  %and = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool29.not
  br i1 %or.cond, label %if.end31, label %sw.bb26.sw.epilog.thread_crit_edge

sw.bb26.sw.epilog.thread_crit_edge:               ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

if.end31:                                         ; preds = %sw.bb26
  %check_reset_block = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %32 = ptrtoint ptr %check_reset_block to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %check_reset_block, align 4
  %call34 = tail call i32 %33(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end58, label %do.body38

do.body38:                                        ; preds = %if.end31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_init_phy_workarounds_pchlan.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_init_phy_workarounds_pchlan, %sw.epilog.thread167)) #6
          to label %sw.epilog [label %sw.epilog.thread167], !srcloc !258

sw.epilog.thread167:                              ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %netdev52 = getelementptr inbounds %struct.e1000_adapter, ptr %35, i32 0, i32 64
  %36 = ptrtoint ptr %netdev52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev52, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_init_phy_workarounds_pchlan.__UNIQUE_ID_ddebug354, ptr noundef %37, ptr noundef nonnull @.str.18) #6
  %release170 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %38 = ptrtoint ptr %release170 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %release170, align 4
  tail call void %39(ptr noundef %hw) #6
  br label %out

if.end58:                                         ; preds = %if.end31
  tail call fastcc void @e1000_toggle_lanphypc_pch_lpt(ptr noundef %hw)
  %40 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %41)
  %cmp61 = icmp ugt i32 %41, 10
  br i1 %cmp61, label %if.then62, label %if.end58.sw.epilog.thread_crit_edge

if.end58.sw.epilog.thread_crit_edge:              ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

if.then62:                                        ; preds = %if.end58
  %call63 = tail call fastcc zeroext i1 @e1000_phy_is_accessible_pchlan(ptr noundef %hw)
  br i1 %call63, label %if.then62.sw.epilog.thread_crit_edge, label %if.end65

if.then62.sw.epilog.thread_crit_edge:             ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

if.end65:                                         ; preds = %if.then62
  %42 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %43, i32 24
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %45 = and i32 %44, -524289
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 24, i32 noundef %46) #6
  %call68 = tail call fastcc zeroext i1 @e1000_phy_is_accessible_pchlan(ptr noundef %hw)
  %release171 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %47 = ptrtoint ptr %release171 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %release171, align 4
  tail call void %48(ptr noundef %hw) #6
  br i1 %call68, label %if.end65.if.then75_crit_edge, label %if.end65.out_crit_edge

if.end65.out_crit_edge:                           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end65.if.then75_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then75

sw.epilog.thread:                                 ; preds = %if.then62.sw.epilog.thread_crit_edge, %if.end58.sw.epilog.thread_crit_edge, %sw.bb26.sw.epilog.thread_crit_edge, %sw.bb22.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge, %if.end17.sw.epilog.thread_crit_edge
  %release166 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %49 = ptrtoint ptr %release166 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %release166, align 4
  tail call void %50(ptr noundef %hw) #6
  br label %if.then75

sw.epilog:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %51 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %release, align 4
  tail call void %52(ptr noundef %hw) #6
  br label %out

if.then75:                                        ; preds = %sw.epilog.thread, %if.end65.if.then75_crit_edge
  %check_reset_block78 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %53 = ptrtoint ptr %check_reset_block78 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %check_reset_block78, align 4
  %call79 = tail call i32 %54(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end83, label %if.then81

if.then81:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  %netdev82 = getelementptr inbounds %struct.e1000_adapter, ptr %1, i32 0, i32 64
  %55 = ptrtoint ptr %netdev82 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %netdev82, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %56, ptr noundef nonnull @.str.19) #10
  br label %out

if.end83:                                         ; preds = %if.then75
  %call84 = tail call i32 @e1000e_phy_hw_reset_generic(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end83.out_crit_edge

if.end83.out_crit_edge:                           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end87:                                         ; preds = %if.end83
  %57 = ptrtoint ptr %check_reset_block78 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %check_reset_block78, align 4
  %call91 = tail call i32 %58(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end87.out_crit_edge, label %if.then93

if.end87.out_crit_edge:                           ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then93:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  %netdev94 = getelementptr inbounds %struct.e1000_adapter, ptr %1, i32 0, i32 64
  %59 = ptrtoint ptr %netdev94 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %netdev94, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %60, ptr noundef nonnull @.str.20) #10
  br label %out

out:                                              ; preds = %if.then93, %if.end87.out_crit_edge, %if.end83.out_crit_edge, %if.then81, %sw.epilog, %if.end65.out_crit_edge, %sw.epilog.thread167, %if.then11, %do.body6
  %ret_val.1 = phi i32 [ %call3, %if.then11 ], [ -2, %sw.epilog ], [ 0, %if.then81 ], [ %call84, %if.end83.out_crit_edge ], [ %call91, %if.then93 ], [ 0, %if.end87.out_crit_edge ], [ %call3, %do.body6 ], [ -2, %sw.epilog.thread167 ], [ -2, %if.end65.out_crit_edge ]
  %61 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %62)
  %cmp99 = icmp eq i32 %62, 10
  %and101 = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  %or.cond148 = select i1 %cmp99, i1 %tobool102.not, i1 false
  br i1 %or.cond148, label %if.then103, label %out.if.end104_crit_edge

out.if.end104_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then103:                                       ; preds = %out
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %63 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %64)
  %cmp.i157 = icmp ult i32 %64, 10
  br i1 %cmp.i157, label %if.then103.if.end104_crit_edge, label %if.end.i160

if.then103.if.end104_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.end.i160:                                      ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i159 = getelementptr i8, ptr %66, i32 3840
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i159) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %68 = and i32 %67, 2147483647
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #6
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3840, i32 noundef %69) #6
  br label %if.end104

if.end104:                                        ; preds = %if.end.i160, %if.then103.if.end104_crit_edge, %out.if.end104_crit_edge
  ret i32 %ret_val.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_variants_ich8lan(ptr noundef %adapter) #0 align 64 {
entry:
  %data.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66
  %mac1.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3
  %media_type.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 12
  %0 = ptrtoint ptr %media_type.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %media_type.i, align 4
  %mta_reg_count.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 16
  %1 = ptrtoint ptr %mta_reg_count.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 32, ptr %mta_reg_count.i, align 2
  %rar_entry_count.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 18
  %type.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 3
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.i = icmp eq i32 %3, 6
  %spec.store.select.i = select i1 %cmp.i, i16 6, i16 7
  %4 = ptrtoint ptr %rar_entry_count.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %spec.store.select.i, ptr %rar_entry_count.i, align 4
  %has_fwsm.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 21
  %5 = ptrtoint ptr %has_fwsm.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %has_fwsm.i, align 4
  %arc_subsystem_valid.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 22
  %6 = ptrtoint ptr %arc_subsystem_valid.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arc_subsystem_valid.i, align 1
  %adaptive_ifs.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 20
  %7 = ptrtoint ptr %adaptive_ifs.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %adaptive_ifs.i, align 1
  %8 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %3, label %entry.sw.epilog.i_crit_edge [
    i32 6, label %entry.sw.epilog.thread.i_crit_edge
    i32 7, label %entry.sw.epilog.thread.i_crit_edge80
    i32 8, label %entry.sw.epilog.thread.i_crit_edge81
    i32 10, label %sw.bb10.i
    i32 11, label %entry.sw.bb13.i_crit_edge
    i32 12, label %entry.sw.bb13.i_crit_edge82
    i32 13, label %entry.sw.bb13.i_crit_edge83
    i32 14, label %entry.sw.bb13.i_crit_edge84
    i32 15, label %entry.sw.bb13.i_crit_edge85
    i32 16, label %entry.sw.bb13.i_crit_edge86
    i32 17, label %entry.sw.bb13.i_crit_edge87
    i32 9, label %entry.sw.bb13.i_crit_edge88
  ]

entry.sw.bb13.i_crit_edge88:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge87:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge86:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge85:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge84:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge83:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge82:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

entry.sw.epilog.thread.i_crit_edge81:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread.i

entry.sw.epilog.thread.i_crit_edge80:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread.i

entry.sw.epilog.thread.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.thread.i:                               ; preds = %entry.sw.epilog.thread.i_crit_edge, %entry.sw.epilog.thread.i_crit_edge80, %entry.sw.epilog.thread.i_crit_edge81
  %check_mng_mode.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 2
  %9 = ptrtoint ptr %check_mng_mode.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @e1000_check_mng_mode_ich8lan, ptr %check_mng_mode.i, align 4
  %10 = ptrtoint ptr %mac1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @e1000e_id_led_init_generic, ptr %mac1.i, align 4
  %blink_led.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 1
  %11 = ptrtoint ptr %blink_led.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @e1000e_blink_led_generic, ptr %blink_led.i, align 4
  %setup_led.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 17
  %12 = ptrtoint ptr %setup_led.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @e1000e_setup_led_generic, ptr %setup_led.i, align 4
  %cleanup_led.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 4
  %13 = ptrtoint ptr %cleanup_led.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @e1000_cleanup_led_ich8lan, ptr %cleanup_led.i, align 4
  %led_on.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 10
  %14 = ptrtoint ptr %led_on.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @e1000_led_on_ich8lan, ptr %led_on.i, align 4
  %led_off.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 11
  %15 = ptrtoint ptr %led_off.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @e1000_led_off_ich8lan, ptr %led_off.i, align 4
  br label %if.end34.i

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %rar_entry_count.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 5, ptr %rar_entry_count.i, align 4
  %rar_set.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 20
  %17 = ptrtoint ptr %rar_set.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @e1000_rar_set_pch2lan, ptr %rar_set.i, align 4
  br label %sw.bb13.i

sw.bb13.i:                                        ; preds = %sw.bb10.i, %entry.sw.bb13.i_crit_edge, %entry.sw.bb13.i_crit_edge82, %entry.sw.bb13.i_crit_edge83, %entry.sw.bb13.i_crit_edge84, %entry.sw.bb13.i_crit_edge85, %entry.sw.bb13.i_crit_edge86, %entry.sw.bb13.i_crit_edge87, %entry.sw.bb13.i_crit_edge88
  %check_mng_mode15.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 2
  %18 = ptrtoint ptr %check_mng_mode15.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @e1000_check_mng_mode_pchlan, ptr %check_mng_mode15.i, align 4
  %19 = ptrtoint ptr %mac1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @e1000_id_led_init_pchlan, ptr %mac1.i, align 4
  %setup_led19.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 17
  %20 = ptrtoint ptr %setup_led19.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @e1000_setup_led_pchlan, ptr %setup_led19.i, align 4
  %cleanup_led21.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 4
  %21 = ptrtoint ptr %cleanup_led21.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @e1000_cleanup_led_pchlan, ptr %cleanup_led21.i, align 4
  %led_on23.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 10
  %22 = ptrtoint ptr %led_on23.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @e1000_led_on_pchlan, ptr %led_on23.i, align 4
  %led_off25.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 11
  %23 = ptrtoint ptr %led_off25.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @e1000_led_off_pchlan, ptr %led_off25.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb13.i, %entry.sw.epilog.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp27.i = icmp ugt i32 %3, 10
  br i1 %cmp27.i, label %if.then28.i, label %sw.epilog.i.if.end34.i_crit_edge

sw.epilog.i.if.end34.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then28.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %rar_entry_count.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 12, ptr %rar_entry_count.i, align 4
  %rar_set31.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 20
  %25 = ptrtoint ptr %rar_set31.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @e1000_rar_set_pch_lpt, ptr %rar_set31.i, align 4
  %setup_physical_interface.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 16
  %26 = ptrtoint ptr %setup_physical_interface.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @e1000_setup_copper_link_pch_lpt, ptr %setup_physical_interface.i, align 4
  %rar_get_count.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 22
  %27 = ptrtoint ptr %rar_get_count.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @e1000_rar_get_count_pch_lpt, ptr %rar_get_count.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then28.i, %sw.epilog.i.if.end34.i_crit_edge, %sw.epilog.thread.i
  br i1 %cmp.i, label %e1000e_set_kmrn_lock_loss_workaround_ich8lan.exit.i, label %if.end34.i.e1000_init_mac_params_ich8lan.exit_crit_edge

if.end34.i.e1000_init_mac_params_ich8lan.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_init_mac_params_ich8lan.exit

e1000e_set_kmrn_lock_loss_workaround_ich8lan.exit.i: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev_spec1.i.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 9
  %28 = ptrtoint ptr %dev_spec1.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %dev_spec1.i.i, align 4
  br label %e1000_init_mac_params_ich8lan.exit

e1000_init_mac_params_ich8lan.exit:               ; preds = %e1000e_set_kmrn_lock_loss_workaround_ich8lan.exit.i, %if.end34.i.e1000_init_mac_params_ich8lan.exit_crit_edge
  %call2 = tail call fastcc i32 @e1000_init_nvm_params_ich8lan(ptr noundef %hw1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %e1000_init_mac_params_ich8lan.exit.cleanup_crit_edge

e1000_init_mac_params_ich8lan.exit.cleanup_crit_edge: ; preds = %e1000_init_mac_params_ich8lan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %e1000_init_mac_params_ich8lan.exit
  %29 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %30, label %if.end5.if.end11_crit_edge [
    i32 6, label %if.end5.sw.epilog_crit_edge
    i32 7, label %if.end5.sw.epilog_crit_edge89
    i32 8, label %if.end5.sw.epilog_crit_edge90
    i32 9, label %if.end5.sw.bb7_crit_edge
    i32 10, label %if.end5.sw.bb7_crit_edge91
    i32 11, label %if.end5.sw.bb7_crit_edge92
    i32 12, label %if.end5.sw.bb7_crit_edge93
    i32 13, label %if.end5.sw.bb7_crit_edge94
    i32 14, label %if.end5.sw.bb7_crit_edge95
    i32 15, label %if.end5.sw.bb7_crit_edge96
    i32 16, label %if.end5.sw.bb7_crit_edge97
    i32 17, label %if.end5.sw.bb7_crit_edge98
  ]

if.end5.sw.bb7_crit_edge98:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end5.sw.bb7_crit_edge97:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end5.sw.bb7_crit_edge96:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end5.sw.bb7_crit_edge95:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end5.sw.bb7_crit_edge94:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end5.sw.bb7_crit_edge93:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end5.sw.bb7_crit_edge92:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end5.sw.bb7_crit_edge91:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end5.sw.bb7_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end5.sw.epilog_crit_edge90:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end5.sw.epilog_crit_edge89:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

sw.bb7:                                           ; preds = %if.end5.sw.bb7_crit_edge, %if.end5.sw.bb7_crit_edge91, %if.end5.sw.bb7_crit_edge92, %if.end5.sw.bb7_crit_edge93, %if.end5.sw.bb7_crit_edge94, %if.end5.sw.bb7_crit_edge95, %if.end5.sw.bb7_crit_edge96, %if.end5.sw.bb7_crit_edge97, %if.end5.sw.bb7_crit_edge98
  %addr.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 8
  %32 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %addr.i, align 4
  %reset_delay_us.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 10
  %33 = ptrtoint ptr %reset_delay_us.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 100, ptr %reset_delay_us.i, align 4
  %set_page.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 9
  %34 = ptrtoint ptr %set_page.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @e1000_set_page_igp, ptr %set_page.i, align 4
  %read_reg.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 10
  %35 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @e1000_read_phy_reg_hv, ptr %read_reg.i, align 4
  %read_reg_locked.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 11
  %36 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @e1000_read_phy_reg_hv_locked, ptr %read_reg_locked.i, align 4
  %read_reg_page.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 12
  %37 = ptrtoint ptr %read_reg_page.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @e1000_read_phy_reg_page_hv, ptr %read_reg_page.i, align 4
  %set_d0_lplu_state.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 15
  %38 = ptrtoint ptr %set_d0_lplu_state.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @e1000_set_lplu_state_pchlan, ptr %set_d0_lplu_state.i, align 4
  %set_d3_lplu_state.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 16
  %39 = ptrtoint ptr %set_d3_lplu_state.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @e1000_set_lplu_state_pchlan, ptr %set_d3_lplu_state.i, align 4
  %write_reg.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 17
  %40 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @e1000_write_phy_reg_hv, ptr %write_reg.i, align 4
  %write_reg_locked.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 18
  %41 = ptrtoint ptr %write_reg_locked.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @e1000_write_phy_reg_hv_locked, ptr %write_reg_locked.i, align 4
  %write_reg_page.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 19
  %42 = ptrtoint ptr %write_reg_page.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @e1000_write_phy_reg_page_hv, ptr %write_reg_page.i, align 4
  %power_up.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 20
  %43 = ptrtoint ptr %power_up.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @e1000_power_up_phy_copper, ptr %power_up.i, align 4
  %power_down.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 21
  %44 = ptrtoint ptr %power_down.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @e1000_power_down_phy_copper_ich8lan, ptr %power_down.i, align 4
  %autoneg_mask.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 14
  %45 = ptrtoint ptr %autoneg_mask.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 47, ptr %autoneg_mask.i, align 2
  %id.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 9
  %46 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %id.i, align 4
  %call.i = tail call fastcc i32 @e1000_init_phy_workarounds_pchlan(ptr noundef %hw1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb7
  %47 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i69 = icmp eq i32 %48, 0
  br i1 %cmp.i69, label %if.then13.i, label %if.end.i.if.end32.i_crit_edge

if.end.i.if.end32.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then13.i:                                      ; preds = %if.end.i
  %49 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type.i, align 4
  %.off.i = add i32 %50, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 8
  br i1 %switch.i, label %if.then13.i.sw.bb.i_crit_edge, label %sw.default.i

if.then13.i.sw.bb.i_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.default.i:                                     ; preds = %if.then13.i
  %call14.i = tail call i32 @e1000e_get_phy_id(ptr noundef %hw1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %sw.default.i.cleanup_crit_edge

sw.default.i.cleanup_crit_edge:                   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17.i:                                       ; preds = %sw.default.i
  %51 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id.i, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %52, label %if.end17.i.if.end32.i_crit_edge [
    i32 0, label %if.end17.i.sw.bb.i_crit_edge
    i32 -16, label %if.end17.i.sw.bb.i_crit_edge99
  ]

if.end17.i.sw.bb.i_crit_edge99:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end17.i.sw.bb.i_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end17.i.if.end32.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

sw.bb.i:                                          ; preds = %if.end17.i.sw.bb.i_crit_edge, %if.end17.i.sw.bb.i_crit_edge99, %if.then13.i.sw.bb.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #6
  %54 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -1, ptr %data.i.i, align 2, !annotation !254
  %55 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read_reg.i, align 4
  %call.i.i.i = call i32 %56(ptr noundef %hw1, i32 noundef 24624, ptr noundef nonnull %data.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %e1000_set_mdio_slow_mode_hv.exit.i, label %e1000_set_mdio_slow_mode_hv.exit.thread.i

e1000_set_mdio_slow_mode_hv.exit.thread.i:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #6
  br label %cleanup

e1000_set_mdio_slow_mode_hv.exit.i:               ; preds = %sw.bb.i
  %57 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %data.i.i, align 2
  %59 = or i16 %58, 1024
  store i16 %59, ptr %data.i.i, align 2
  %60 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_reg.i, align 4
  %call.i7.i.i = call i32 %61(ptr noundef %hw1, i32 noundef 24624, i16 noundef zeroext %59) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i)
  %tobool25.not.i = icmp eq i32 %call.i7.i.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %e1000_set_mdio_slow_mode_hv.exit.i.cleanup_crit_edge

e1000_set_mdio_slow_mode_hv.exit.i.cleanup_crit_edge: ; preds = %e1000_set_mdio_slow_mode_hv.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27.i:                                       ; preds = %e1000_set_mdio_slow_mode_hv.exit.i
  %call28.i = call i32 @e1000e_get_phy_id(ptr noundef %hw1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end27.i.if.end32.i_crit_edge, label %if.end27.i.cleanup_crit_edge

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27.i.if.end32.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end27.i.if.end32.i_crit_edge, %if.end17.i.if.end32.i_crit_edge, %if.end.i.if.end32.i_crit_edge
  %62 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id.i, align 4
  %call34.i = call i32 @e1000e_get_phy_type_from_id(i32 noundef %63) #6
  %type35.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 1
  %64 = ptrtoint ptr %type35.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call34.i, ptr %type35.i, align 4
  %65 = zext i32 %call34.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %call34.i, label %if.end32.i.cleanup_crit_edge [
    i32 10, label %if.end32.i.sw.bb37.i_crit_edge
    i32 11, label %if.end32.i.sw.bb37.i_crit_edge100
    i32 12, label %if.end32.i.sw.bb37.i_crit_edge101
    i32 9, label %sw.bb43.i
  ]

if.end32.i.sw.bb37.i_crit_edge101:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb37.i

if.end32.i.sw.bb37.i_crit_edge100:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb37.i

if.end32.i.sw.bb37.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb37.i

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb37.i:                                        ; preds = %if.end32.i.sw.bb37.i_crit_edge, %if.end32.i.sw.bb37.i_crit_edge100, %if.end32.i.sw.bb37.i_crit_edge101
  %check_polarity.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 2
  %66 = ptrtoint ptr %check_polarity.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @e1000_check_polarity_82577, ptr %check_polarity.i, align 4
  %force_speed_duplex.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 5
  %67 = ptrtoint ptr %force_speed_duplex.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @e1000_phy_force_speed_duplex_82577, ptr %force_speed_duplex.i, align 4
  %get_cable_length.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 7
  %68 = ptrtoint ptr %get_cable_length.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @e1000_get_cable_length_82577, ptr %get_cable_length.i, align 4
  %get_info.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 8
  %69 = ptrtoint ptr %get_info.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @e1000_get_phy_info_82577, ptr %get_info.i, align 4
  %commit.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 4
  %70 = ptrtoint ptr %commit.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @e1000e_phy_sw_reset, ptr %commit.i, align 4
  br label %if.end11

sw.bb43.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %check_polarity45.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 2
  %71 = ptrtoint ptr %check_polarity45.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @e1000_check_polarity_m88, ptr %check_polarity45.i, align 4
  %force_speed_duplex47.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 5
  %72 = ptrtoint ptr %force_speed_duplex47.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @e1000e_phy_force_speed_duplex_m88, ptr %force_speed_duplex47.i, align 4
  %get_cable_length49.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 7
  %73 = ptrtoint ptr %get_cable_length49.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @e1000e_get_cable_length_m88, ptr %get_cable_length49.i, align 4
  %get_info51.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 0, i32 8
  %74 = ptrtoint ptr %get_info51.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @e1000e_get_phy_info_m88, ptr %get_info51.i, align 4
  br label %if.end11

sw.epilog:                                        ; preds = %if.end5.sw.epilog_crit_edge, %if.end5.sw.epilog_crit_edge89, %if.end5.sw.epilog_crit_edge90
  %call6 = tail call fastcc i32 @e1000_init_phy_params_ich8lan(ptr noundef %hw1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool9.not = icmp eq i32 %call6, 0
  br i1 %tobool9.not, label %sw.epilog.if.end11_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.if.end11_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %sw.epilog.if.end11_crit_edge, %sw.bb43.i, %sw.bb37.i, %if.end5.if.end11_crit_edge
  %type13 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 5, i32 1
  %75 = ptrtoint ptr %type13 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %type13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %76)
  %cmp = icmp eq i32 %76, 7
  br i1 %cmp, label %if.end11.if.then20_crit_edge, label %lor.lhs.false

if.end11.if.then20_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end11
  %77 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %78)
  %cmp17 = icmp ugt i32 %78, 9
  br i1 %cmp17, label %land.lhs.true, label %lor.lhs.false.if.end23_crit_edge

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true:                                    ; preds = %lor.lhs.false
  %hw_addr.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 1
  %79 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %80, i32 24
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %82 = and i32 %81, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool19.not = icmp eq i32 %82, 0
  br i1 %tobool19.not, label %land.lhs.true.if.then20_crit_edge, label %land.lhs.true.if.end23thread-pre-split_crit_edge

land.lhs.true.if.end23thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23thread-pre-split

land.lhs.true.if.then20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then20:                                        ; preds = %land.lhs.true.if.then20_crit_edge, %if.end11.if.then20_crit_edge
  %flags = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 85
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags, align 16
  %and21 = and i32 %84, -129
  store i32 %and21, ptr %flags, align 16
  %max_hw_frame_size = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 83
  %85 = ptrtoint ptr %max_hw_frame_size to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1522, ptr %max_hw_frame_size, align 8
  %blink_led = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 0, i32 1
  %86 = ptrtoint ptr %blink_led to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %blink_led, align 4
  br label %if.end23thread-pre-split

if.end23thread-pre-split:                         ; preds = %if.then20, %land.lhs.true.if.end23thread-pre-split_crit_edge
  %87 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pr = load i32, ptr %type.i, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end23thread-pre-split, %lor.lhs.false.if.end23_crit_edge
  %88 = phi i32 [ %.pr, %if.end23thread-pre-split ], [ %78, %lor.lhs.false.if.end23_crit_edge ]
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %88, label %if.end23.cleanup_crit_edge [
    i32 6, label %land.lhs.true28
    i32 10, label %land.lhs.true40
  ]

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true28:                                  ; preds = %if.end23
  %90 = ptrtoint ptr %type13 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %type13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %91)
  %cmp32.not = icmp eq i32 %91, 7
  br i1 %cmp32.not, label %land.lhs.true28.cleanup_crit_edge, label %if.then33

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then33:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  %flags34 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 85
  %92 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags34, align 16
  %or = or i32 %93, 33554432
  store i32 %or, ptr %flags34, align 16
  br label %cleanup

land.lhs.true40:                                  ; preds = %if.end23
  %hw_addr.i71 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 1
  %94 = ptrtoint ptr %hw_addr.i71 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw_addr.i71, align 4
  %add.ptr.i72 = getelementptr i8, ptr %95, i32 23380
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %97 = and i32 %96, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool43.not = icmp eq i32 %97, 0
  br i1 %tobool43.not, label %land.lhs.true40.cleanup_crit_edge, label %if.then44

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then44:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  %flags2 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 86
  %98 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags2, align 4
  %or45 = or i32 %99, 2048
  store i32 %or45, ptr %flags2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %land.lhs.true40.cleanup_crit_edge, %if.then33, %land.lhs.true28.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end32.i.cleanup_crit_edge, %if.end27.i.cleanup_crit_edge, %e1000_set_mdio_slow_mode_hv.exit.i.cleanup_crit_edge, %e1000_set_mdio_slow_mode_hv.exit.thread.i, %sw.default.i.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %e1000_init_mac_params_ich8lan.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %e1000_init_mac_params_ich8lan.exit.cleanup_crit_edge ], [ %call6, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then44 ], [ 0, %land.lhs.true40.cleanup_crit_edge ], [ %call.i.i.i, %e1000_set_mdio_slow_mode_hv.exit.thread.i ], [ -2, %if.end32.i.cleanup_crit_edge ], [ %call28.i, %if.end27.i.cleanup_crit_edge ], [ %call.i7.i.i, %e1000_set_mdio_slow_mode_hv.exit.i.cleanup_crit_edge ], [ %call14.i, %sw.default.i.cleanup_crit_edge ], [ %call.i, %sw.bb7.cleanup_crit_edge ], [ 0, %if.then33 ], [ 0, %land.lhs.true28.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_disable_ulp_lpt_lp(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %phy_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg) #6
  %0 = ptrtoint ptr %phy_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_reg, align 2, !annotation !254
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %2)
  %cmp = icmp ult i32 %2, 11
  br i1 %cmp, label %entry.cleanup152_crit_edge, label %lor.lhs.false

entry.cleanup152_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup152

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %pdev = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 65
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 32
  %device = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.102)
  switch i16 %8, label %lor.lhs.false24 [
    i16 5434, label %lor.lhs.false.cleanup152_crit_edge
    i16 5435, label %lor.lhs.false.cleanup152_crit_edge36
    i16 5536, label %lor.lhs.false.cleanup152_crit_edge37
    i16 5537, label %lor.lhs.false.cleanup152_crit_edge38
  ]

lor.lhs.false.cleanup152_crit_edge38:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup152

lor.lhs.false.cleanup152_crit_edge37:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup152

lor.lhs.false.cleanup152_crit_edge36:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup152

lor.lhs.false.cleanup152_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup152

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %ulp_state = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 5
  %10 = ptrtoint ptr %ulp_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ulp_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp25 = icmp eq i32 %11, 1
  br i1 %cmp25, label %lor.lhs.false24.cleanup152_crit_edge, label %if.end

lor.lhs.false24.cleanup152_crit_edge:             ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup152

if.end:                                           ; preds = %lor.lhs.false24
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 23380
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %15 = and i32 %14, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end72, label %if.then27

if.then27:                                        ; preds = %if.end
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %18 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %19, i32 23376
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %21 = and i32 %20, -1572865
  %22 = or i32 %21, 1048576
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23376, i32 noundef %23) #6
  %24 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i727 = getelementptr i8, ptr %25, i32 23380
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i727) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %27 = and i32 %26, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool37.not28 = icmp eq i32 %27, 0
  br i1 %tobool37.not28, label %if.then27.do.body49_crit_edge, label %if.then27.while.body_crit_edge

if.then27.while.body_crit_edge:                   ; preds = %if.then27
  br label %while.body

if.then27.do.body49_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body49

while.body:                                       ; preds = %if.end41.while.body_crit_edge, %if.then27.while.body_crit_edge
  %i.030 = phi i32 [ %inc, %if.end41.while.body_crit_edge ], [ 0, %if.then27.while.body_crit_edge ]
  %firmware_bug.029 = phi i8 [ %firmware_bug.1, %if.end41.while.body_crit_edge ], [ 0, %if.then27.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %i.030)
  %cmp38 = icmp eq i32 %i.030, 250
  br i1 %cmp38, label %while.body.do.body128_crit_edge, label %if.end41

while.body.do.body128_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body128

if.end41:                                         ; preds = %while.body
  %inc = add nuw nsw i32 %i.030, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %i.030)
  %cmp42 = icmp ugt i32 %i.030, 99
  %28 = and i8 %firmware_bug.029, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool44.not = icmp eq i8 %28, 0
  %29 = select i1 %cmp42, i1 %tobool44.not, i1 false
  %firmware_bug.1 = select i1 %29, i8 1, i8 %firmware_bug.029
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %30 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %31, i32 23380
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %33 = and i32 %32, 262144
  %tobool37.not = icmp eq i32 %33, 0
  br i1 %tobool37.not, label %while.end, label %if.end41.while.body_crit_edge

if.end41.while.body_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end41
  %phi.bo = and i8 %firmware_bug.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %phi.bo)
  %phi.cmp = icmp eq i8 %phi.bo, 0
  %phi.bo32 = mul i32 %inc, 10
  br i1 %phi.cmp, label %while.end.do.body49_crit_edge, label %if.then48

while.end.do.body49_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body49

if.then48:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %17, i32 0, i32 64
  %34 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %35, ptr noundef nonnull @.str.21, i32 noundef %phi.bo32) #10
  br label %out.thread20

do.body49:                                        ; preds = %while.end.do.body49_crit_edge, %if.then27.do.body49_crit_edge
  %i.0.lcssa35 = phi i32 [ %phi.bo32, %while.end.do.body49_crit_edge ], [ 0, %if.then27.do.body49_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_disable_ulp_lpt_lp.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_disable_ulp_lpt_lp, %if.then55)) #6
          to label %out.thread20 [label %if.then55], !srcloc !258

if.then55:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 4
  %netdev57 = getelementptr inbounds %struct.e1000_adapter, ptr %37, i32 0, i32 64
  %38 = ptrtoint ptr %netdev57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev57, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_disable_ulp_lpt_lp.__UNIQUE_ID_ddebug364, ptr noundef %39, ptr noundef nonnull @.str.23, i32 noundef %i.0.lcssa35) #6
  br label %out.thread20

out.thread20:                                     ; preds = %if.then55, %do.body49, %if.then48
  %40 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %41, i32 23376
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %43 = and i32 %42, -1048577
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 23376, i32 noundef %44) #6
  br label %if.else148

if.end72:                                         ; preds = %if.end
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %45 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phy, align 4
  %call73 = tail call i32 %46(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then78, label %if.end72.do.body128_crit_edge

if.end72.do.body128_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body128

if.then78:                                        ; preds = %if.end72
  tail call fastcc void @e1000_toggle_lanphypc_pch_lpt(ptr noundef %hw)
  %call80 = call i32 @e1000_read_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24631, ptr noundef nonnull %phy_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then78.if.end89_crit_edge, label %if.then82

if.then78.if.end89_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then82:                                        ; preds = %if.then78
  %47 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %48, i32 24
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %50 = or i32 %49, 524288
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  call void @__ew32(ptr noundef %hw, i32 noundef 24, i32 noundef %51) #6
  call void @msleep(i32 noundef 50) #6
  %call85 = call i32 @e1000_read_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24631, ptr noundef nonnull %phy_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then82.if.end89_crit_edge, label %if.then82.out_crit_edge

if.then82.out_crit_edge:                          ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then82.if.end89_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.end89:                                         ; preds = %if.then82.if.end89_crit_edge, %if.then78.if.end89_crit_edge
  %52 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %phy_reg, align 2
  %54 = and i16 %53, -2
  store i16 %54, ptr %phy_reg, align 2
  %call93 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24631, i16 noundef zeroext %54) #6
  %55 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %56, i32 24
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %58 = and i32 %57, -524289
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  call void @__ew32(ptr noundef %hw, i32 noundef 24, i32 noundef %59) #6
  %call96 = call i32 @e1000_read_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24657, ptr noundef nonnull %phy_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.end89.out_crit_edge

if.end89.out_crit_edge:                           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end99:                                         ; preds = %if.end89
  %60 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %phy_reg, align 2
  %62 = or i16 %61, 16384
  store i16 %62, ptr %phy_reg, align 2
  %call103 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24657, i16 noundef zeroext %62) #6
  %call104 = call i32 @e1000_read_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24944, ptr noundef nonnull %phy_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end99.out_crit_edge

if.end99.out_crit_edge:                           ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end107:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %phy_reg, align 2
  %65 = and i16 %64, -7541
  store i16 %65, ptr %phy_reg, align 2
  %call111 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24944, i16 noundef zeroext %65) #6
  %66 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %phy_reg, align 2
  %68 = or i16 %67, 1
  store i16 %68, ptr %phy_reg, align 2
  %call115 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24944, i16 noundef zeroext %68) #6
  %69 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %70, i32 228
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %72 = and i32 %71, -536870913
  %73 = call i32 @llvm.bswap.i32(i32 %72)
  call void @__ew32(ptr noundef %hw, i32 noundef 228, i32 noundef %73) #6
  br label %out

out:                                              ; preds = %if.end107, %if.end99.out_crit_edge, %if.end89.out_crit_edge, %if.then82.out_crit_edge
  %ret_val.1 = phi i32 [ %call85, %if.then82.out_crit_edge ], [ %call96, %if.end89.out_crit_edge ], [ %call104, %if.end99.out_crit_edge ], [ 0, %if.end107 ]
  %release120 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %74 = ptrtoint ptr %release120 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %release120, align 4
  call void %75(ptr noundef %hw) #6
  %reset.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 14
  %76 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reset.i, align 4
  %call.i = call i32 %77(ptr noundef %hw) #6
  call void @msleep(i32 noundef 50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.1)
  %tobool125.not = icmp eq i32 %ret_val.1, 0
  br i1 %tobool125.not, label %out.if.else148_crit_edge, label %out.do.body128_crit_edge

out.do.body128_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body128

out.if.else148_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else148

do.body128:                                       ; preds = %out.do.body128_crit_edge, %if.end72.do.body128_crit_edge, %while.body.do.body128_crit_edge
  %ret_val.219 = phi i32 [ %ret_val.1, %out.do.body128_crit_edge ], [ %call73, %if.end72.do.body128_crit_edge ], [ -2, %while.body.do.body128_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_disable_ulp_lpt_lp.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_disable_ulp_lpt_lp, %if.then140)) #6
          to label %cleanup152 [label %if.then140], !srcloc !258

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw, align 4
  %netdev142 = getelementptr inbounds %struct.e1000_adapter, ptr %79, i32 0, i32 64
  %80 = ptrtoint ptr %netdev142 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %netdev142, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_disable_ulp_lpt_lp.__UNIQUE_ID_ddebug365, ptr noundef %81, ptr noundef nonnull @.str.24, i32 noundef %ret_val.219) #6
  br label %cleanup152

if.else148:                                       ; preds = %out.if.else148_crit_edge, %out.thread20
  %82 = ptrtoint ptr %ulp_state to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %ulp_state, align 4
  br label %cleanup152

cleanup152:                                       ; preds = %if.else148, %if.then140, %do.body128, %lor.lhs.false24.cleanup152_crit_edge, %lor.lhs.false.cleanup152_crit_edge, %lor.lhs.false.cleanup152_crit_edge36, %lor.lhs.false.cleanup152_crit_edge37, %lor.lhs.false.cleanup152_crit_edge38, %entry.cleanup152_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup152_crit_edge ], [ 0, %lor.lhs.false.cleanup152_crit_edge36 ], [ 0, %lor.lhs.false.cleanup152_crit_edge37 ], [ 0, %lor.lhs.false.cleanup152_crit_edge38 ], [ 0, %lor.lhs.false24.cleanup152_crit_edge ], [ 0, %entry.cleanup152_crit_edge ], [ %ret_val.219, %if.then140 ], [ 0, %if.else148 ], [ %ret_val.219, %do.body128 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @e1000_phy_is_accessible_pchlan(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i16, align 2
  %phy_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg) #6
  %0 = ptrtoint ptr %phy_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %phy_reg, align 2
  %read_reg_locked.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 11
  %1 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg_locked.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 2, ptr noundef nonnull %phy_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_reg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp3 = icmp eq i16 %4, -1
  br i1 %cmp3, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg_locked.i, align 4
  %call.i97 = call i32 %6(ptr noundef %hw, i32 noundef 3, ptr noundef nonnull %phy_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool7.not = icmp eq i32 %call.i97, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false8:                                   ; preds = %if.end
  %7 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %phy_reg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %cmp10 = icmp eq i16 %8, -1
  br i1 %cmp10, label %lor.lhs.false8.for.inc_crit_edge, label %lor.lhs.false8.for.end_crit_edge

lor.lhs.false8.for.end_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

lor.lhs.false8.for.inc_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false8.for.inc_crit_edge, %if.end.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %entry.for.inc_crit_edge
  %9 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_reg_locked.i, align 4
  %call.i.1 = call i32 %10(ptr noundef %hw, i32 noundef 2, ptr noundef nonnull %phy_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.1, label %lor.lhs.false.1, label %for.inc.if.end31_crit_edge

for.inc.if.end31_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

lor.lhs.false.1:                                  ; preds = %for.inc
  %11 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %phy_reg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %cmp3.1 = icmp eq i16 %12, -1
  br i1 %cmp3.1, label %lor.lhs.false.1.if.end31_crit_edge, label %if.end.1

lor.lhs.false.1.if.end31_crit_edge:               ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end.1:                                         ; preds = %lor.lhs.false.1
  %13 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_reg_locked.i, align 4
  %call.i97.1 = call i32 %14(ptr noundef %hw, i32 noundef 3, ptr noundef nonnull %phy_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.1)
  %tobool7.not.1 = icmp eq i32 %call.i97.1, 0
  br i1 %tobool7.not.1, label %lor.lhs.false8.1, label %if.end.1.if.end31_crit_edge

if.end.1.if.end31_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

lor.lhs.false8.1:                                 ; preds = %if.end.1
  %15 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %phy_reg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %cmp10.1 = icmp eq i16 %16, -1
  br i1 %cmp10.1, label %lor.lhs.false8.1.if.end31_crit_edge, label %lor.lhs.false8.1.for.end_crit_edge

lor.lhs.false8.1.for.end_crit_edge:               ; preds = %lor.lhs.false8.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

lor.lhs.false8.1.if.end31_crit_edge:              ; preds = %lor.lhs.false8.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

for.end:                                          ; preds = %lor.lhs.false8.1.for.end_crit_edge, %lor.lhs.false8.for.end_crit_edge
  %.lcssa131 = phi i16 [ %8, %lor.lhs.false8.for.end_crit_edge ], [ %16, %lor.lhs.false8.1.for.end_crit_edge ]
  %.lcssa = phi i16 [ %4, %lor.lhs.false8.for.end_crit_edge ], [ %12, %lor.lhs.false8.1.for.end_crit_edge ]
  %conv2.le = zext i16 %.lcssa to i32
  %shl.le = shl nuw i32 %conv2.le, 16
  %17 = and i16 %.lcssa131, -16
  %and = zext i16 %17 to i32
  %or = or i32 %shl.le, %and
  %id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 9
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not = icmp eq i32 %19, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %or)
  %cmp19 = icmp eq i32 %19, %or
  br i1 %cmp19, label %if.then16.out_crit_edge, label %if.then16.if.end31_crit_edge

if.then16.if.end31_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then16.out_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool23.not = icmp eq i32 %or, 0
  br i1 %tobool23.not, label %if.else.if.end31_crit_edge, label %if.then24

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %id, align 4
  %21 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %phy_reg, align 2
  %23 = and i16 %22, 15
  %and28 = zext i16 %23 to i32
  %revision = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 11
  %24 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and28, ptr %revision, align 4
  br label %out

if.end31:                                         ; preds = %if.else.if.end31_crit_edge, %if.then16.if.end31_crit_edge, %lor.lhs.false8.1.if.end31_crit_edge, %if.end.1.if.end31_crit_edge, %lor.lhs.false.1.if.end31_crit_edge, %for.inc.if.end31_crit_edge
  %ret_val.2110 = phi i32 [ 0, %if.else.if.end31_crit_edge ], [ 0, %if.then16.if.end31_crit_edge ], [ %call.i.1, %for.inc.if.end31_crit_edge ], [ 0, %lor.lhs.false.1.if.end31_crit_edge ], [ 0, %lor.lhs.false8.1.if.end31_crit_edge ], [ %call.i97.1, %if.end.1.if.end31_crit_edge ]
  %phy113 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %26)
  %cmp32 = icmp ult i32 %26, 11
  br i1 %cmp32, label %if.then34, label %if.end31.if.end44_crit_edge

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then34:                                        ; preds = %if.end31
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %27 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %release, align 4
  call void %28(ptr noundef %hw) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %data.i, align 2, !annotation !254
  %read_reg.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %30 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i = call i32 %31(ptr noundef %hw, i32 noundef 24624, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %e1000_set_mdio_slow_mode_hv.exit, label %e1000_set_mdio_slow_mode_hv.exit.thread

e1000_set_mdio_slow_mode_hv.exit.thread:          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  br label %if.end40

e1000_set_mdio_slow_mode_hv.exit:                 ; preds = %if.then34
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %data.i, align 2
  %34 = or i16 %33, 1024
  store i16 %34, ptr %data.i, align 2
  %write_reg.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %35 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg.i.i, align 4
  %call.i7.i = call i32 %36(ptr noundef %hw, i32 noundef 24624, i16 noundef zeroext %34) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool37.not = icmp eq i32 %call.i7.i, 0
  br i1 %tobool37.not, label %if.then38, label %e1000_set_mdio_slow_mode_hv.exit.if.end40_crit_edge

e1000_set_mdio_slow_mode_hv.exit.if.end40_crit_edge: ; preds = %e1000_set_mdio_slow_mode_hv.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then38:                                        ; preds = %e1000_set_mdio_slow_mode_hv.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call39 = call i32 @e1000e_get_phy_id(ptr noundef %hw) #6
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %e1000_set_mdio_slow_mode_hv.exit.if.end40_crit_edge, %e1000_set_mdio_slow_mode_hv.exit.thread
  %ret_val.3 = phi i32 [ %call.i7.i, %e1000_set_mdio_slow_mode_hv.exit.if.end40_crit_edge ], [ %call39, %if.then38 ], [ %call.i.i, %e1000_set_mdio_slow_mode_hv.exit.thread ]
  %37 = ptrtoint ptr %phy113 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy113, align 4
  %call43 = call i32 %38(ptr noundef %hw) #6
  br label %if.end44

if.end44:                                         ; preds = %if.end40, %if.end31.if.end44_crit_edge
  %ret_val.4 = phi i32 [ %ret_val.3, %if.end40 ], [ %ret_val.2110, %if.end31.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.4)
  %tobool45.not = icmp eq i32 %ret_val.4, 0
  br i1 %tobool45.not, label %if.end44.out_crit_edge, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %if.end44.out_crit_edge, %if.then24, %if.then16.out_crit_edge
  %type49 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %type49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %40)
  %cmp50 = icmp ugt i32 %40, 10
  br i1 %cmp50, label %if.then52, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then52:                                        ; preds = %out
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %41 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 23380
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %44 = and i32 %43, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool55.not = icmp eq i32 %44, 0
  br i1 %tobool55.not, label %if.then56, label %if.then52.cleanup_crit_edge

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then56:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read_reg_locked.i, align 4
  %call.i99 = call i32 %46(ptr noundef %hw, i32 noundef 24631, ptr noundef nonnull %phy_reg) #6
  %47 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %phy_reg, align 2
  %49 = and i16 %48, -2
  store i16 %49, ptr %phy_reg, align 2
  %write_reg_locked.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %50 = ptrtoint ptr %write_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_reg_locked.i, align 4
  %call.i100 = call i32 %51(ptr noundef %hw, i32 noundef 24631, i16 noundef zeroext %49) #6
  %52 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %53, i32 24
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %55 = and i32 %54, -524289
  %56 = call i32 @llvm.bswap.i32(i32 %55)
  call void @__ew32(ptr noundef %hw, i32 noundef 24, i32 noundef %56) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %if.then52.cleanup_crit_edge, %out.cleanup_crit_edge, %if.end44.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end44.cleanup_crit_edge ], [ true, %if.then52.cleanup_crit_edge ], [ true, %if.then56 ], [ true, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg) #6
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @e1000_toggle_lanphypc_pch_lpt(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %3 = and i32 %2, -13
  %4 = or i32 %3, 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 60, i32 noundef %5) #6
  %6 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %9 = and i32 %8, -769
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %and3 = or i32 %10, 65536
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %and3) #6
  %11 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %10) #6
  %14 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %18)
  %cmp = icmp ult i32 %18, 11
  br i1 %cmp, label %entry.if.end_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %count.0 = phi i16 [ %dec, %do.body.do.body_crit_edge ], [ 20, %entry.do.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #6
  %19 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %20, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %22 = and i32 %21, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp ne i32 %22, 0
  %dec = add nsw i16 %count.0, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count.0)
  %tobool9.not = icmp eq i16 %count.0, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %do.body.if.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi i32 [ 50, %entry.if.end_crit_edge ], [ 30, %do.body.if.end_crit_edge ]
  tail call void @msleep(i32 noundef %.sink) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_init_nvm_params_ich8lan(ptr nocapture noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %type, align 4
  %type3 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %type3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %2)
  %cmp = icmp ugt i32 %2, 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flash_base_addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 4
  %3 = ptrtoint ptr %flash_base_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %flash_base_addr, align 4
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %7 = lshr i32 %6, 13
  %add = and i32 %7, 126976
  %mul = add nuw nsw i32 %add, 4096
  %flash_bank_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 3
  %div569 = lshr exact i32 %mul, 2
  %8 = ptrtoint ptr %flash_bank_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div569, ptr %flash_bank_size, align 4
  %9 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 57344
  %flash_address = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 2
  %11 = ptrtoint ptr %flash_address to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %flash_address, align 4
  br label %if.end29

if.else:                                          ; preds = %entry
  %flash_address6 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 2
  %12 = ptrtoint ptr %flash_address6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %flash_address6, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %do.body8, label %if.end16

do.body8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_init_nvm_params_ich8lan.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_init_nvm_params_ich8lan, %if.then13)) #6
          to label %cleanup [label %if.then13], !srcloc !258

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %15, i32 0, i32 64
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_init_nvm_params_ich8lan.__UNIQUE_ID_ddebug356, ptr noundef %17, ptr noundef nonnull @.str.36) #6
  br label %cleanup

if.end16:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #6, !srcloc !256
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  %and18 = and i32 %19, 8191
  %shr19 = lshr i32 %19, 16
  %and20 = and i32 %shr19, 8191
  %shl = shl nuw nsw i32 %and18, 12
  %flash_base_addr22 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 4
  %20 = ptrtoint ptr %flash_base_addr22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shl, ptr %flash_base_addr22, align 4
  %add21 = sub nsw i32 1, %and18
  %sub = add nsw i32 %add21, %and20
  %flash_bank_size24 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 3
  %21 = shl nsw i32 %sub, 10
  %div2867 = and i32 %21, 1073740800
  %22 = ptrtoint ptr %flash_bank_size24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div2867, ptr %flash_bank_size24, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end16, %if.then
  %word_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 5
  %23 = ptrtoint ptr %word_size to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2048, ptr %word_size, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end29
  %indvars.iv = phi i32 [ 0, %if.end29 ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %indvars.iv
  %modified = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %indvars.iv, i32 1
  %24 = ptrtoint ptr %modified to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %modified, align 2
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %arrayidx, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 2048
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then13, %do.body8
  %retval.0 = phi i32 [ -3, %if.then13 ], [ -3, %do.body8 ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_init_phy_params_ich8lan(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %addr, align 4
  %reset_delay_us = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 10
  %1 = ptrtoint ptr %reset_delay_us to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 100, ptr %reset_delay_us, align 4
  %power_up = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 20
  %2 = ptrtoint ptr %power_up to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @e1000_power_up_phy_copper, ptr %power_up, align 4
  %power_down = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 21
  %3 = ptrtoint ptr %power_down to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @e1000_power_down_phy_copper_ich8lan, ptr %power_down, align 4
  %call = tail call i32 @e1000e_determine_phy_address(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %entry
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @e1000e_write_phy_reg_bm, ptr %write_reg, align 4
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %5 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @e1000e_read_phy_reg_bm, ptr %read_reg, align 4
  %call5 = tail call i32 @e1000e_determine_phy_address(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then.if.end17_crit_edge, label %do.body8

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.body8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_init_phy_params_ich8lan.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_init_phy_params_ich8lan, %if.then13)) #6
          to label %cleanup [label %if.then13], !srcloc !258

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %7, i32 0, i32 64
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_init_phy_params_ich8lan.__UNIQUE_ID_ddebug355, ptr noundef %9, ptr noundef nonnull @.str.38) #6
  br label %cleanup

if.end17:                                         ; preds = %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  %id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 9
  %10 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %id, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end17
  %i.0 = phi i16 [ 0, %if.end17 ], [ %inc, %while.body.while.cond_crit_edge ]
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %call19 = tail call i32 @e1000e_get_phy_type_from_id(i32 noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp eq i32 %call19, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %i.0)
  %cmp20 = icmp ult i16 %i.0, 100
  %or.cond = select i1 %cmp, i1 %cmp20, i1 false
  br i1 %or.cond, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %inc = add nuw nsw i16 %i.0, 1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #6
  %call22 = tail call i32 @e1000e_get_phy_id(ptr noundef %hw) #6
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %while.body.while.cond_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %14, label %while.end.cleanup_crit_edge [
    i32 44565392, label %sw.bb
    i32 44565296, label %while.end.sw.bb32_crit_edge
    i32 44565280, label %while.end.sw.bb32_crit_edge94
    i32 44565264, label %while.end.sw.bb32_crit_edge95
    i32 21040304, label %sw.bb41
  ]

while.end.sw.bb32_crit_edge95:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb32

while.end.sw.bb32_crit_edge94:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb32

while.end.sw.bb32_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb32

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6, ptr %type, align 4
  %autoneg_mask = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 14
  %17 = ptrtoint ptr %autoneg_mask to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 47, ptr %autoneg_mask, align 2
  %read_reg_locked = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 11
  %18 = ptrtoint ptr %read_reg_locked to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @e1000e_read_phy_reg_igp_locked, ptr %read_reg_locked, align 4
  %write_reg_locked = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %19 = ptrtoint ptr %write_reg_locked to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @e1000e_write_phy_reg_igp_locked, ptr %write_reg_locked, align 4
  %get_info = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 8
  %20 = ptrtoint ptr %get_info to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @e1000e_get_phy_info_igp, ptr %get_info, align 4
  %check_polarity = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 2
  %21 = ptrtoint ptr %check_polarity to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @e1000_check_polarity_igp, ptr %check_polarity, align 4
  %force_speed_duplex = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %22 = ptrtoint ptr %force_speed_duplex to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @e1000e_phy_force_speed_duplex_igp, ptr %force_speed_duplex, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %while.end.sw.bb32_crit_edge, %while.end.sw.bb32_crit_edge94, %while.end.sw.bb32_crit_edge95
  %type33 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %type33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 7, ptr %type33, align 4
  %autoneg_mask34 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 14
  %24 = ptrtoint ptr %autoneg_mask34 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 15, ptr %autoneg_mask34, align 2
  %get_info36 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 8
  %25 = ptrtoint ptr %get_info36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @e1000_get_phy_info_ife, ptr %get_info36, align 4
  %check_polarity38 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 2
  %26 = ptrtoint ptr %check_polarity38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @e1000_check_polarity_ife, ptr %check_polarity38, align 4
  %force_speed_duplex40 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %27 = ptrtoint ptr %force_speed_duplex40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @e1000_phy_force_speed_duplex_ife, ptr %force_speed_duplex40, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %type42 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %type42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %type42, align 4
  %autoneg_mask43 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 14
  %29 = ptrtoint ptr %autoneg_mask43 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 47, ptr %autoneg_mask43, align 2
  %read_reg45 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %30 = ptrtoint ptr %read_reg45 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @e1000e_read_phy_reg_bm, ptr %read_reg45, align 4
  %write_reg47 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %31 = ptrtoint ptr %write_reg47 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @e1000e_write_phy_reg_bm, ptr %write_reg47, align 4
  %commit = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %32 = ptrtoint ptr %commit to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @e1000e_phy_sw_reset, ptr %commit, align 4
  %get_info50 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 8
  %33 = ptrtoint ptr %get_info50 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @e1000e_get_phy_info_m88, ptr %get_info50, align 4
  %check_polarity52 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 2
  %34 = ptrtoint ptr %check_polarity52 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @e1000_check_polarity_m88, ptr %check_polarity52, align 4
  %force_speed_duplex54 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %35 = ptrtoint ptr %force_speed_duplex54 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @e1000e_phy_force_speed_duplex_m88, ptr %force_speed_duplex54, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb41, %sw.bb32, %sw.bb, %while.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.then13, %do.body8
  %retval.0 = phi i32 [ %call5, %if.then13 ], [ -2, %while.end.cleanup_crit_edge ], [ 0, %sw.bb41 ], [ 0, %sw.bb32 ], [ 0, %sw.bb ], [ %call5, %do.body8 ], [ %call22, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @e1000_check_mng_mode_ich8lan(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 23380
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %3 = and i32 %2, 243269632
  call void @__sanitizer_cov_trace_const_cmp4(i32 75497472, i32 %3)
  %4 = icmp eq i32 %3, 75497472
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_id_led_init_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_blink_led_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_led_generic(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_cleanup_led_ich8lan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %2 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %3(ptr noundef %hw, i32 noundef 27, i16 noundef zeroext 0) #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ledctl_default = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %ledctl_default to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ledctl_default, align 4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3584, i32 noundef %5) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_led_on_ich8lan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %2 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %3(ptr noundef %hw, i32 noundef 27, i16 noundef zeroext 39) #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ledctl_mode2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ledctl_mode2, align 4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3584, i32 noundef %5) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_led_off_ich8lan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %2 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %3(ptr noundef %hw, i32 noundef 27, i16 noundef zeroext 38) #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ledctl_mode1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ledctl_mode1, align 4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3584, i32 noundef %5) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_rar_set_pch2lan(ptr noundef %hw, ptr nocapture noundef readonly %addr, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  br i1 %cmp, label %cond.end, label %if.end37

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__ew32(ptr noundef %hw, i32 noundef 21504, i32 noundef %or10) #6
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  tail call void @__ew32(ptr noundef %hw, i32 noundef 21508, i32 noundef %rar_high.0) #6
  %15 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i147 = getelementptr i8, ptr %16, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  br label %cleanup101

if.end37:                                         ; preds = %entry
  %rar_entry_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 18
  %18 = ptrtoint ptr %rar_entry_count to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rar_entry_count, align 4
  %conv38 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv38, i32 %index)
  %cmp39 = icmp ugt i32 %conv38, %index
  br i1 %cmp39, label %if.then41, label %if.end37.do.body81_crit_edge

if.end37.do.body81_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body81

if.then41:                                        ; preds = %if.end37
  %call42 = tail call i32 @e1000_acquire_swflag_ich8lan(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.then41.do.body81_crit_edge

if.then41.do.body81_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body81

if.end45:                                         ; preds = %if.then41
  %sub46 = add i32 %index, -1
  %mul47 = shl i32 %sub46, 3
  %add48 = add i32 %mul47, 21560
  tail call void @__ew32(ptr noundef %hw, i32 noundef %add48, i32 noundef %or10) #6
  %hw_addr.i148 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %20 = ptrtoint ptr %hw_addr.i148 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_addr.i148, align 4
  %add.ptr.i149 = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %add52 = add i32 %mul47, 21564
  tail call void @__ew32(ptr noundef %hw, i32 noundef %add52, i32 noundef %rar_high.0) #6
  %23 = ptrtoint ptr %hw_addr.i148 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_addr.i148, align 4
  %add.ptr.i151 = getelementptr i8, ptr %24, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %26 = ptrtoint ptr %hw_addr.i148 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_addr.i148, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 3840
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !256
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %and.i = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body2.i, label %if.then.i

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %and1.i = and i32 %29, -33
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3840, i32 noundef %and1.i) #6
  br label %e1000_release_swflag_ich8lan.exit

do.body2.i:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_release_swflag_ich8lan.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_rar_set_pch2lan, %if.then7.i)) #6
          to label %e1000_release_swflag_ich8lan.exit [label %if.then7.i], !srcloc !258

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 4
  %netdev.i = getelementptr inbounds %struct.e1000_adapter, ptr %31, i32 0, i32 64
  %32 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_release_swflag_ich8lan.__UNIQUE_ID_ddebug370, ptr noundef %33, ptr noundef nonnull @.str.33) #6
  br label %e1000_release_swflag_ich8lan.exit

e1000_release_swflag_ich8lan.exit:                ; preds = %if.then7.i, %do.body2.i, %if.then.i
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %state.i = getelementptr inbounds %struct.e1000_adapter, ptr %35, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i) #6
  %36 = ptrtoint ptr %hw_addr.i148 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr.i148, align 4
  %add.ptr.i153 = getelementptr i8, ptr %37, i32 %add48
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153) #6, !srcloc !256
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %or10)
  %cmp58 = icmp eq i32 %39, %or10
  br i1 %cmp58, label %land.lhs.true, label %e1000_release_swflag_ich8lan.exit.do.body68_crit_edge

e1000_release_swflag_ich8lan.exit.do.body68_crit_edge: ; preds = %e1000_release_swflag_ich8lan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body68

land.lhs.true:                                    ; preds = %e1000_release_swflag_ich8lan.exit
  %40 = ptrtoint ptr %hw_addr.i148 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_addr.i148, align 4
  %add.ptr.i155 = getelementptr i8, ptr %41, i32 %add52
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155) #6, !srcloc !256
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %rar_high.0)
  %cmp64 = icmp eq i32 %43, %rar_high.0
  br i1 %cmp64, label %land.lhs.true.cleanup101_crit_edge, label %land.lhs.true.do.body68_crit_edge

land.lhs.true.do.body68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body68

land.lhs.true.cleanup101_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup101

do.body68:                                        ; preds = %land.lhs.true.do.body68_crit_edge, %e1000_release_swflag_ich8lan.exit.do.body68_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_rar_set_pch2lan.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_rar_set_pch2lan, %if.then73)) #6
          to label %do.body81 [label %if.then73], !srcloc !258

if.then73:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %45, i32 0, i32 64
  %46 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %netdev, align 4
  %48 = ptrtoint ptr %hw_addr.i148 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_addr.i148, align 4
  %add.ptr.i157 = getelementptr i8, ptr %49, i32 23380
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i157) #6, !srcloc !256
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_rar_set_pch2lan.__UNIQUE_ID_ddebug371, ptr noundef %47, ptr noundef nonnull @.str.26, i32 noundef %sub46, i32 noundef %51) #6
  br label %do.body81

do.body81:                                        ; preds = %if.then73, %do.body68, %if.then41.do.body81_crit_edge, %if.end37.do.body81_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_rar_set_pch2lan.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_rar_set_pch2lan, %if.then93)) #6
          to label %cleanup101 [label %if.then93], !srcloc !258

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw, align 4
  %netdev95 = getelementptr inbounds %struct.e1000_adapter, ptr %53, i32 0, i32 64
  %54 = ptrtoint ptr %netdev95 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %netdev95, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_rar_set_pch2lan.__UNIQUE_ID_ddebug372, ptr noundef %55, ptr noundef nonnull @.str.27, i32 noundef %index) #6
  br label %cleanup101

cleanup101:                                       ; preds = %if.then93, %do.body81, %land.lhs.true.cleanup101_crit_edge, %cond.end
  %retval.1 = phi i32 [ 0, %cond.end ], [ -3, %if.then93 ], [ -3, %do.body81 ], [ 0, %land.lhs.true.cleanup101_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @e1000_check_mng_mode_pchlan(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 23380
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %3 = and i32 %2, 75497472
  call void @__sanitizer_cov_trace_const_cmp4(i32 75497472, i32 %3)
  %4 = icmp eq i32 %3, 75497472
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_id_led_init_pchlan(ptr noundef %hw) #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !254
  %valid_led_default = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %1 = ptrtoint ptr %valid_led_default to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %valid_led_default, align 4
  %call = call i32 %2(ptr noundef %hw, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 3584
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  %6 = call i32 @llvm.bswap.i32(i32 %5) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %ledctl_default = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 5
  %7 = ptrtoint ptr %ledctl_default to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ledctl_default, align 4
  %ledctl_mode1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %ledctl_mode1, align 4
  %ledctl_mode2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %ledctl_mode2, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data, align 2
  %conv6 = zext i16 %11 to i32
  %conv8 = and i32 %conv6, 15
  %12 = zext i32 %conv8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %conv8, label %if.end.for.inc_crit_edge [
    i32 4, label %if.end.sw.epilog_crit_edge
    i32 5, label %if.end.sw.epilog_crit_edge130
    i32 6, label %if.end.sw.epilog_crit_edge131
    i32 7, label %if.end.sw.bb19_crit_edge
    i32 8, label %if.end.sw.bb19_crit_edge132
    i32 9, label %if.end.sw.bb19_crit_edge133
    i32 2, label %if.end.for.inc.sink.split_crit_edge
    i32 3, label %sw.bb40
  ]

if.end.for.inc.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

if.end.sw.bb19_crit_edge133:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end.sw.bb19_crit_edge132:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end.sw.bb19_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end.sw.epilog_crit_edge131:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.sw.epilog_crit_edge130:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb19:                                          ; preds = %if.end.sw.bb19_crit_edge, %if.end.sw.bb19_crit_edge132, %if.end.sw.bb19_crit_edge133
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge130, %if.end.sw.epilog_crit_edge131
  %.sink = phi i32 [ 10, %sw.bb19 ], [ 2, %if.end.sw.epilog_crit_edge ], [ 2, %if.end.sw.epilog_crit_edge130 ], [ 2, %if.end.sw.epilog_crit_edge131 ]
  %13 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ledctl_mode1, align 4
  %and24 = and i32 %14, -32
  %or28 = or i32 %and24, %.sink
  store i32 %or28, ptr %ledctl_mode1, align 4
  %switch.tableidx = add nsw i32 %conv8, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 5
  br i1 %15, label %switch.hole_check, label %sw.epilog.for.inc_crit_edge

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb40:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

switch.hole_check:                                ; preds = %sw.epilog
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %16 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %switch.lobit.not = icmp eq i8 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.for.inc_crit_edge, label %switch.lookup

switch.hole_check.for.inc_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.e1000_id_led_init_pchlan, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %switch.lookup, %sw.bb40, %if.end.for.inc.sink.split_crit_edge
  %.sink89 = phi i32 [ 10, %sw.bb40 ], [ %conv8, %if.end.for.inc.sink.split_crit_edge ], [ %switch.load, %switch.lookup ]
  %18 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ledctl_mode2, align 4
  %and35 = and i32 %19, -32
  %or39 = or i32 %and35, %.sink89
  store i32 %or39, ptr %ledctl_mode2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %switch.hole_check.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %shr.1 = lshr i32 %conv6, 4
  %conv8.1 = and i32 %shr.1, 15
  %20 = zext i32 %conv8.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %conv8.1, label %for.inc.for.inc.1_crit_edge [
    i32 4, label %for.inc.sw.bb.1_crit_edge
    i32 5, label %for.inc.sw.bb.1_crit_edge134
    i32 6, label %for.inc.sw.bb.1_crit_edge135
    i32 7, label %for.inc.sw.epilog.1_crit_edge
    i32 8, label %for.inc.sw.epilog.1_crit_edge136
    i32 9, label %for.inc.sw.epilog.1_crit_edge137
    i32 2, label %for.inc.for.inc.1.sink.split_crit_edge
    i32 3, label %sw.bb40.1
  ]

for.inc.for.inc.1.sink.split_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.sink.split

for.inc.sw.epilog.1_crit_edge137:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.1

for.inc.sw.epilog.1_crit_edge136:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.1

for.inc.sw.epilog.1_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.1

for.inc.sw.bb.1_crit_edge135:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge134:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

sw.bb.1:                                          ; preds = %for.inc.sw.bb.1_crit_edge, %for.inc.sw.bb.1_crit_edge134, %for.inc.sw.bb.1_crit_edge135
  br label %sw.epilog.1

sw.epilog.1:                                      ; preds = %sw.bb.1, %for.inc.sw.epilog.1_crit_edge, %for.inc.sw.epilog.1_crit_edge136, %for.inc.sw.epilog.1_crit_edge137
  %.sink91 = phi i32 [ 64, %sw.bb.1 ], [ 320, %for.inc.sw.epilog.1_crit_edge ], [ 320, %for.inc.sw.epilog.1_crit_edge136 ], [ 320, %for.inc.sw.epilog.1_crit_edge137 ]
  %21 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ledctl_mode1, align 4
  %and15.1 = and i32 %22, -993
  %or.1 = or i32 %and15.1, %.sink91
  store i32 %or.1, ptr %ledctl_mode1, align 4
  %switch.tableidx104 = add nsw i32 %conv8.1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx104)
  %23 = icmp ult i32 %switch.tableidx104, 5
  br i1 %23, label %switch.hole_check105, label %sw.epilog.1.for.inc.1_crit_edge

sw.epilog.1.for.inc.1_crit_edge:                  ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

sw.bb40.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.sink.split

switch.hole_check105:                             ; preds = %sw.epilog.1
  %switch.maskindex107 = trunc i32 %switch.tableidx104 to i8
  %switch.shifted108 = lshr i8 27, %switch.maskindex107
  %24 = and i8 %switch.shifted108, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %switch.lobit109.not = icmp eq i8 %24, 0
  br i1 %switch.lobit109.not, label %switch.hole_check105.for.inc.1_crit_edge, label %switch.lookup106

switch.hole_check105.for.inc.1_crit_edge:         ; preds = %switch.hole_check105
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

switch.lookup106:                                 ; preds = %switch.hole_check105
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep110 = getelementptr inbounds [5 x i32], ptr @switch.table.e1000_id_led_init_pchlan.91, i32 0, i32 %switch.tableidx104
  %25 = ptrtoint ptr %switch.gep110 to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load111 = load i32, ptr %switch.gep110, align 4
  br label %for.inc.1.sink.split

for.inc.1.sink.split:                             ; preds = %switch.lookup106, %sw.bb40.1, %for.inc.for.inc.1.sink.split_crit_edge
  %.sink93 = phi i32 [ 320, %sw.bb40.1 ], [ 64, %for.inc.for.inc.1.sink.split_crit_edge ], [ %switch.load111, %switch.lookup106 ]
  %26 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ledctl_mode2, align 4
  %and45.1 = and i32 %27, -993
  %or49.1 = or i32 %and45.1, %.sink93
  store i32 %or49.1, ptr %ledctl_mode2, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.1.sink.split, %switch.hole_check105.for.inc.1_crit_edge, %sw.epilog.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %shr.2 = lshr i32 %conv6, 8
  %conv8.2 = and i32 %shr.2, 15
  %28 = zext i32 %conv8.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %conv8.2, label %for.inc.1.for.inc.2_crit_edge [
    i32 4, label %for.inc.1.sw.bb.2_crit_edge
    i32 5, label %for.inc.1.sw.bb.2_crit_edge138
    i32 6, label %for.inc.1.sw.bb.2_crit_edge139
    i32 7, label %for.inc.1.sw.epilog.2_crit_edge
    i32 8, label %for.inc.1.sw.epilog.2_crit_edge140
    i32 9, label %for.inc.1.sw.epilog.2_crit_edge141
    i32 2, label %for.inc.1.for.inc.2.sink.split_crit_edge
    i32 3, label %sw.bb40.2
  ]

for.inc.1.for.inc.2.sink.split_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.sink.split

for.inc.1.sw.epilog.2_crit_edge141:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.2

for.inc.1.sw.epilog.2_crit_edge140:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.2

for.inc.1.sw.epilog.2_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.2

for.inc.1.sw.bb.2_crit_edge139:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge138:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

sw.bb.2:                                          ; preds = %for.inc.1.sw.bb.2_crit_edge, %for.inc.1.sw.bb.2_crit_edge138, %for.inc.1.sw.bb.2_crit_edge139
  br label %sw.epilog.2

sw.epilog.2:                                      ; preds = %sw.bb.2, %for.inc.1.sw.epilog.2_crit_edge, %for.inc.1.sw.epilog.2_crit_edge140, %for.inc.1.sw.epilog.2_crit_edge141
  %.sink95 = phi i32 [ 2048, %sw.bb.2 ], [ 10240, %for.inc.1.sw.epilog.2_crit_edge ], [ 10240, %for.inc.1.sw.epilog.2_crit_edge140 ], [ 10240, %for.inc.1.sw.epilog.2_crit_edge141 ]
  %29 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ledctl_mode1, align 4
  %and15.2 = and i32 %30, -31745
  %or.2 = or i32 %and15.2, %.sink95
  store i32 %or.2, ptr %ledctl_mode1, align 4
  %switch.tableidx113 = add nsw i32 %conv8.2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx113)
  %31 = icmp ult i32 %switch.tableidx113, 5
  br i1 %31, label %switch.hole_check114, label %sw.epilog.2.for.inc.2_crit_edge

sw.epilog.2.for.inc.2_crit_edge:                  ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

sw.bb40.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.sink.split

switch.hole_check114:                             ; preds = %sw.epilog.2
  %switch.maskindex116 = trunc i32 %switch.tableidx113 to i8
  %switch.shifted117 = lshr i8 27, %switch.maskindex116
  %32 = and i8 %switch.shifted117, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %switch.lobit118.not = icmp eq i8 %32, 0
  br i1 %switch.lobit118.not, label %switch.hole_check114.for.inc.2_crit_edge, label %switch.lookup115

switch.hole_check114.for.inc.2_crit_edge:         ; preds = %switch.hole_check114
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

switch.lookup115:                                 ; preds = %switch.hole_check114
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep119 = getelementptr inbounds [5 x i32], ptr @switch.table.e1000_id_led_init_pchlan.92, i32 0, i32 %switch.tableidx113
  %33 = ptrtoint ptr %switch.gep119 to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load120 = load i32, ptr %switch.gep119, align 4
  br label %for.inc.2.sink.split

for.inc.2.sink.split:                             ; preds = %switch.lookup115, %sw.bb40.2, %for.inc.1.for.inc.2.sink.split_crit_edge
  %.sink97 = phi i32 [ 10240, %sw.bb40.2 ], [ 2048, %for.inc.1.for.inc.2.sink.split_crit_edge ], [ %switch.load120, %switch.lookup115 ]
  %34 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ledctl_mode2, align 4
  %and45.2 = and i32 %35, -31745
  %or49.2 = or i32 %and45.2, %.sink97
  store i32 %or49.2, ptr %ledctl_mode2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.2.sink.split, %switch.hole_check114.for.inc.2_crit_edge, %sw.epilog.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %shr.3 = lshr i32 %conv6, 12
  %36 = zext i32 %shr.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %shr.3, label %for.inc.2.cleanup_crit_edge [
    i32 4, label %for.inc.2.sw.bb.3_crit_edge
    i32 5, label %for.inc.2.sw.bb.3_crit_edge142
    i32 6, label %for.inc.2.sw.bb.3_crit_edge143
    i32 7, label %for.inc.2.sw.epilog.3_crit_edge
    i32 8, label %for.inc.2.sw.epilog.3_crit_edge144
    i32 9, label %for.inc.2.sw.epilog.3_crit_edge145
    i32 2, label %for.inc.2.cleanup.sink.split_crit_edge
    i32 3, label %sw.bb40.3
  ]

for.inc.2.cleanup.sink.split_crit_edge:           ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.inc.2.sw.epilog.3_crit_edge145:               ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.3

for.inc.2.sw.epilog.3_crit_edge144:               ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.3

for.inc.2.sw.epilog.3_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.3

for.inc.2.sw.bb.3_crit_edge143:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge142:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.3:                                          ; preds = %for.inc.2.sw.bb.3_crit_edge, %for.inc.2.sw.bb.3_crit_edge142, %for.inc.2.sw.bb.3_crit_edge143
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.bb.3, %for.inc.2.sw.epilog.3_crit_edge, %for.inc.2.sw.epilog.3_crit_edge144, %for.inc.2.sw.epilog.3_crit_edge145
  %.sink99 = phi i32 [ 65536, %sw.bb.3 ], [ 327680, %for.inc.2.sw.epilog.3_crit_edge ], [ 327680, %for.inc.2.sw.epilog.3_crit_edge144 ], [ 327680, %for.inc.2.sw.epilog.3_crit_edge145 ]
  %37 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ledctl_mode1, align 4
  %and15.3 = and i32 %38, -1015809
  %or.3 = or i32 %and15.3, %.sink99
  store i32 %or.3, ptr %ledctl_mode1, align 4
  %switch.tableidx122 = add nsw i32 %shr.3, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx122)
  %39 = icmp ult i32 %switch.tableidx122, 5
  br i1 %39, label %switch.hole_check123, label %sw.epilog.3.cleanup_crit_edge

sw.epilog.3.cleanup_crit_edge:                    ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb40.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

switch.hole_check123:                             ; preds = %sw.epilog.3
  %switch.maskindex125 = trunc i32 %switch.tableidx122 to i8
  %switch.shifted126 = lshr i8 27, %switch.maskindex125
  %40 = and i8 %switch.shifted126, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %switch.lobit127.not = icmp eq i8 %40, 0
  br i1 %switch.lobit127.not, label %switch.hole_check123.cleanup_crit_edge, label %switch.lookup124

switch.hole_check123.cleanup_crit_edge:           ; preds = %switch.hole_check123
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup124:                                 ; preds = %switch.hole_check123
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep128 = getelementptr inbounds [5 x i32], ptr @switch.table.e1000_id_led_init_pchlan.93, i32 0, i32 %switch.tableidx122
  %41 = ptrtoint ptr %switch.gep128 to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load129 = load i32, ptr %switch.gep128, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup124, %sw.bb40.3, %for.inc.2.cleanup.sink.split_crit_edge
  %.sink101 = phi i32 [ 327680, %sw.bb40.3 ], [ 65536, %for.inc.2.cleanup.sink.split_crit_edge ], [ %switch.load129, %switch.lookup124 ]
  %42 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ledctl_mode2, align 4
  %and35.3 = and i32 %43, -1015809
  %or39.3 = or i32 %and35.3, %.sink101
  store i32 %or39.3, ptr %ledctl_mode2, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %switch.hole_check123.cleanup_crit_edge, %sw.epilog.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_setup_led_pchlan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ledctl_mode1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ledctl_mode1, align 4
  %conv = trunc i32 %1 to i16
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %2 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %3(ptr noundef %hw, i32 noundef 24606, i16 noundef zeroext %conv) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_cleanup_led_pchlan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ledctl_default = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %ledctl_default to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ledctl_default, align 4
  %conv = trunc i32 %1 to i16
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %2 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %3(ptr noundef %hw, i32 noundef 24606, i16 noundef zeroext %conv) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_led_on_pchlan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ledctl_mode2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ledctl_mode2, align 4
  %conv = trunc i32 %1 to i16
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

for.body.preheader:                               ; preds = %entry
  %and4 = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and4)
  %cmp5.not = icmp eq i32 %and4, 2
  br i1 %cmp5.not, label %if.end, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body.preheader
  %and8 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv14 = and i16 %conv, -9
  br label %for.inc

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv18 = or i16 %conv, 8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then10, %for.body.preheader.for.inc_crit_edge
  %data.1 = phi i16 [ %conv, %for.body.preheader.for.inc_crit_edge ], [ %conv14, %if.then10 ], [ %conv18, %if.else ]
  %6 = lshr i16 %data.1, 5
  %shr.1 = zext i16 %6 to i32
  %and4.1 = and i32 %shr.1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and4.1)
  %cmp5.not.1 = icmp eq i32 %and4.1, 2
  br i1 %cmp5.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %and8.1 = and i32 %shr.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.1)
  %tobool9.not.1 = icmp eq i32 %and8.1, 0
  br i1 %tobool9.not.1, label %if.else.1, label %if.then10.1

if.then10.1:                                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  %conv14.1 = and i16 %data.1, -257
  br label %for.inc.1

if.else.1:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  %conv18.1 = or i16 %data.1, 256
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %if.then10.1, %for.inc.for.inc.1_crit_edge
  %data.1.1 = phi i16 [ %data.1, %for.inc.for.inc.1_crit_edge ], [ %conv14.1, %if.then10.1 ], [ %conv18.1, %if.else.1 ]
  %7 = lshr i16 %data.1.1, 10
  %shr.2 = zext i16 %7 to i32
  %and4.2 = and i32 %shr.2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and4.2)
  %cmp5.not.2 = icmp eq i32 %and4.2, 2
  br i1 %cmp5.not.2, label %if.end.2, label %for.inc.1.if.end20_crit_edge

for.inc.1.if.end20_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end.2:                                         ; preds = %for.inc.1
  %and8.2 = and i32 %shr.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.2)
  %tobool9.not.2 = icmp eq i32 %and8.2, 0
  br i1 %tobool9.not.2, label %if.else.2, label %if.then10.2

if.then10.2:                                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  %conv14.2 = and i16 %data.1.1, -8193
  br label %if.end20

if.else.2:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  %conv18.2 = or i16 %data.1.1, 8192
  br label %if.end20

if.end20:                                         ; preds = %if.else.2, %if.then10.2, %for.inc.1.if.end20_crit_edge, %entry.if.end20_crit_edge
  %data.2 = phi i16 [ %conv, %entry.if.end20_crit_edge ], [ %data.1.1, %for.inc.1.if.end20_crit_edge ], [ %conv14.2, %if.then10.2 ], [ %conv18.2, %if.else.2 ]
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %8 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %9(ptr noundef %hw, i32 noundef 24606, i16 noundef zeroext %data.2) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_led_off_pchlan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ledctl_mode1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ledctl_mode1, align 4
  %conv = trunc i32 %1 to i16
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

for.body.preheader:                               ; preds = %entry
  %and4 = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and4)
  %cmp5.not = icmp eq i32 %and4, 2
  br i1 %cmp5.not, label %if.end, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body.preheader
  %and8 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv14 = and i16 %conv, -9
  br label %for.inc

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv18 = or i16 %conv, 8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then10, %for.body.preheader.for.inc_crit_edge
  %data.1 = phi i16 [ %conv, %for.body.preheader.for.inc_crit_edge ], [ %conv14, %if.then10 ], [ %conv18, %if.else ]
  %6 = lshr i16 %data.1, 5
  %shr.1 = zext i16 %6 to i32
  %and4.1 = and i32 %shr.1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and4.1)
  %cmp5.not.1 = icmp eq i32 %and4.1, 2
  br i1 %cmp5.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %and8.1 = and i32 %shr.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.1)
  %tobool9.not.1 = icmp eq i32 %and8.1, 0
  br i1 %tobool9.not.1, label %if.else.1, label %if.then10.1

if.then10.1:                                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  %conv14.1 = and i16 %data.1, -257
  br label %for.inc.1

if.else.1:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  %conv18.1 = or i16 %data.1, 256
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %if.then10.1, %for.inc.for.inc.1_crit_edge
  %data.1.1 = phi i16 [ %data.1, %for.inc.for.inc.1_crit_edge ], [ %conv14.1, %if.then10.1 ], [ %conv18.1, %if.else.1 ]
  %7 = lshr i16 %data.1.1, 10
  %shr.2 = zext i16 %7 to i32
  %and4.2 = and i32 %shr.2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and4.2)
  %cmp5.not.2 = icmp eq i32 %and4.2, 2
  br i1 %cmp5.not.2, label %if.end.2, label %for.inc.1.if.end20_crit_edge

for.inc.1.if.end20_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end.2:                                         ; preds = %for.inc.1
  %and8.2 = and i32 %shr.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.2)
  %tobool9.not.2 = icmp eq i32 %and8.2, 0
  br i1 %tobool9.not.2, label %if.else.2, label %if.then10.2

if.then10.2:                                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  %conv14.2 = and i16 %data.1.1, -8193
  br label %if.end20

if.else.2:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  %conv18.2 = or i16 %data.1.1, 8192
  br label %if.end20

if.end20:                                         ; preds = %if.else.2, %if.then10.2, %for.inc.1.if.end20_crit_edge, %entry.if.end20_crit_edge
  %data.2 = phi i16 [ %conv, %entry.if.end20_crit_edge ], [ %data.1.1, %for.inc.1.if.end20_crit_edge ], [ %conv14.2, %if.then10.2 ], [ %conv18.2, %if.else.2 ]
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %8 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %9(ptr noundef %hw, i32 noundef 24606, i16 noundef zeroext %data.2) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_rar_set_pch_lpt(ptr noundef %hw, ptr nocapture noundef readonly %addr, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  br i1 %cmp, label %cond.end, label %if.end37

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__ew32(ptr noundef %hw, i32 noundef 21504, i32 noundef %or10) #6
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  tail call void @__ew32(ptr noundef %hw, i32 noundef 21508, i32 noundef %rar_high.0) #6
  %15 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %16, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  br label %cleanup90

if.end37:                                         ; preds = %entry
  %rar_entry_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 18
  %18 = ptrtoint ptr %rar_entry_count to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rar_entry_count, align 4
  %conv38 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv38, i32 %index)
  %cmp39 = icmp ugt i32 %conv38, %index
  br i1 %cmp39, label %if.then41, label %if.end37.do.body81_crit_edge

if.end37.do.body81_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body81

if.then41:                                        ; preds = %if.end37
  %hw_addr.i137 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %20 = ptrtoint ptr %hw_addr.i137 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_addr.i137, align 4
  %add.ptr.i138 = getelementptr i8, ptr %21, i32 23380
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138) #6, !srcloc !256
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %and = lshr i32 %23, 7
  %shr = and i32 %and, 7
  %24 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %shr, label %lor.lhs.false49 [
    i32 1, label %if.then41.do.body81_crit_edge
    i32 0, label %if.then41.if.then52_crit_edge
  ]

if.then41.if.then52_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

if.then41.do.body81_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body81

lor.lhs.false49:                                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %index)
  %cmp50.not = icmp ult i32 %shr, %index
  br i1 %cmp50.not, label %lor.lhs.false49.do.body81_crit_edge, label %lor.lhs.false49.if.then52_crit_edge

lor.lhs.false49.if.then52_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

lor.lhs.false49.do.body81_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body81

if.then52:                                        ; preds = %lor.lhs.false49.if.then52_crit_edge, %if.then41.if.then52_crit_edge
  %call53 = tail call i32 @e1000_acquire_swflag_ich8lan(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.then52.do.body81_crit_edge

if.then52.do.body81_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body81

if.end56:                                         ; preds = %if.then52
  %sub57 = shl i32 %index, 3
  %add59 = add i32 %sub57, 21504
  tail call void @__ew32(ptr noundef %hw, i32 noundef %add59, i32 noundef %or10) #6
  %25 = ptrtoint ptr %hw_addr.i137 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_addr.i137, align 4
  %add.ptr.i140 = getelementptr i8, ptr %26, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %add63 = add i32 %sub57, 21508
  tail call void @__ew32(ptr noundef %hw, i32 noundef %add63, i32 noundef %rar_high.0) #6
  %28 = ptrtoint ptr %hw_addr.i137 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_addr.i137, align 4
  %add.ptr.i142 = getelementptr i8, ptr %29, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %31 = ptrtoint ptr %hw_addr.i137 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_addr.i137, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 3840
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !256
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %and.i = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body2.i, label %if.then.i

if.then.i:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %and1.i = and i32 %34, -33
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3840, i32 noundef %and1.i) #6
  br label %e1000_release_swflag_ich8lan.exit

do.body2.i:                                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_release_swflag_ich8lan.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_rar_set_pch_lpt, %if.then7.i)) #6
          to label %e1000_release_swflag_ich8lan.exit [label %if.then7.i], !srcloc !258

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 4
  %netdev.i = getelementptr inbounds %struct.e1000_adapter, ptr %36, i32 0, i32 64
  %37 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_release_swflag_ich8lan.__UNIQUE_ID_ddebug370, ptr noundef %38, ptr noundef nonnull @.str.33) #6
  br label %e1000_release_swflag_ich8lan.exit

e1000_release_swflag_ich8lan.exit:                ; preds = %if.then7.i, %do.body2.i, %if.then.i
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 4
  %state.i = getelementptr inbounds %struct.e1000_adapter, ptr %40, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i) #6
  %41 = ptrtoint ptr %hw_addr.i137 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_addr.i137, align 4
  %add.ptr.i144 = getelementptr i8, ptr %42, i32 %add59
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #6, !srcloc !256
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %or10)
  %cmp69 = icmp eq i32 %44, %or10
  br i1 %cmp69, label %land.lhs.true, label %e1000_release_swflag_ich8lan.exit.do.body81_crit_edge

e1000_release_swflag_ich8lan.exit.do.body81_crit_edge: ; preds = %e1000_release_swflag_ich8lan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body81

land.lhs.true:                                    ; preds = %e1000_release_swflag_ich8lan.exit
  %45 = ptrtoint ptr %hw_addr.i137 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_addr.i137, align 4
  %add.ptr.i146 = getelementptr i8, ptr %46, i32 %add63
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #6, !srcloc !256
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %rar_high.0)
  %cmp75 = icmp eq i32 %48, %rar_high.0
  br i1 %cmp75, label %land.lhs.true.cleanup90_crit_edge, label %land.lhs.true.do.body81_crit_edge

land.lhs.true.do.body81_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body81

land.lhs.true.cleanup90_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup90

do.body81:                                        ; preds = %land.lhs.true.do.body81_crit_edge, %e1000_release_swflag_ich8lan.exit.do.body81_crit_edge, %if.then52.do.body81_crit_edge, %lor.lhs.false49.do.body81_crit_edge, %if.then41.do.body81_crit_edge, %if.end37.do.body81_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_rar_set_pch_lpt.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_rar_set_pch_lpt, %if.then86)) #6
          to label %cleanup90 [label %if.then86], !srcloc !258

if.then86:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %50, i32 0, i32 64
  %51 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_rar_set_pch_lpt.__UNIQUE_ID_ddebug373, ptr noundef %52, ptr noundef nonnull @.str.27, i32 noundef %index) #6
  br label %cleanup90

cleanup90:                                        ; preds = %if.then86, %do.body81, %land.lhs.true.cleanup90_crit_edge, %cond.end
  %retval.1 = phi i32 [ 0, %cond.end ], [ -3, %if.then86 ], [ 0, %land.lhs.true.cleanup90_crit_edge ], [ -3, %do.body81 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_setup_copper_link_pch_lpt(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %3 = and i32 %2, -1075314689
  %4 = or i32 %3, 1073741824
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %5) #6
  %call1 = tail call i32 @e1000_copper_link_setup_82577(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @e1000e_setup_copper_link(ptr noundef %hw) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_rar_get_count_pch_lpt(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 23380
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %and = lshr i32 %3, 7
  %shr = and i32 %and, 7
  %4 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rar_entry_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 18
  %5 = ptrtoint ptr %rar_entry_count to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rar_entry_count, align 4
  %conv = zext i16 %6 to i32
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %shr, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %entry.sw.epilog_crit_edge
  %num_entries.0 = phi i32 [ %add, %sw.default ], [ %conv, %sw.bb ], [ %shr, %entry.sw.epilog_crit_edge ]
  ret i32 %num_entries.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_acquire_swflag_ich8lan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %state = getelementptr inbounds %struct.e1000_adapter, ptr %1, i32 0, i32 13
  %call = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %do.body1

while.cond.preheader:                             ; preds = %entry
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %while.body

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_acquire_swflag_ich8lan.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_acquire_swflag_ich8lan, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !258

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_acquire_swflag_ich8lan.__UNIQUE_ID_ddebug367, ptr noundef %5, ptr noundef nonnull @.str.29) #6
  br label %cleanup

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %while.cond.preheader
  %timeout.0128 = phi i32 [ 100, %while.cond.preheader ], [ %dec, %if.end15.while.body_crit_edge ]
  %6 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 3840
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %and = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end39, label %if.end15

if.end15:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  %dec = add nsw i32 %timeout.0128, -1
  %tobool11.not = icmp eq i32 %dec, 0
  br i1 %tobool11.not, label %do.body19, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.body19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_acquire_swflag_ich8lan.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_acquire_swflag_ich8lan, %if.then31)) #6
          to label %if.then77 [label %if.then31], !srcloc !258

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %netdev33 = getelementptr inbounds %struct.e1000_adapter, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %netdev33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_acquire_swflag_ich8lan.__UNIQUE_ID_ddebug368, ptr noundef %14, ptr noundef nonnull @.str.30) #6
  br label %if.then77

if.end39:                                         ; preds = %while.body
  %or = or i32 %9, 32
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3840, i32 noundef %or) #6
  br label %while.body42

while.body42:                                     ; preds = %if.end47.while.body42_crit_edge, %if.end39
  %timeout.1129 = phi i32 [ 1000, %if.end39 ], [ %dec48, %if.end47.while.body42_crit_edge ]
  %15 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %16, i32 3840
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #6, !srcloc !256
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %and44 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end47, label %while.body42.cleanup_crit_edge

while.body42.cleanup_crit_edge:                   ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %while.body42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  %dec48 = add nsw i32 %timeout.1129, -1
  %tobool41.not = icmp eq i32 %dec48, 0
  br i1 %tobool41.not, label %do.body53, label %if.end47.while.body42_crit_edge

if.end47.while.body42_crit_edge:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body42

do.body53:                                        ; preds = %if.end47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_acquire_swflag_ich8lan.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_acquire_swflag_ich8lan, %if.then65)) #6
          to label %do.end73 [label %if.then65], !srcloc !258

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %netdev67 = getelementptr inbounds %struct.e1000_adapter, ptr %21, i32 0, i32 64
  %22 = ptrtoint ptr %netdev67 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev67, align 4
  %24 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %25, i32 23380
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #6, !srcloc !256
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_acquire_swflag_ich8lan.__UNIQUE_ID_ddebug369, ptr noundef %23, ptr noundef nonnull @.str.31, i32 noundef %27, i32 noundef %18) #6
  br label %do.end73

do.end73:                                         ; preds = %if.then65, %do.body53
  %and74 = and i32 %18, -33
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3840, i32 noundef %and74) #6
  br label %if.then77

if.then77:                                        ; preds = %do.end73, %if.then31, %do.body19
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %state79 = getelementptr inbounds %struct.e1000_adapter, ptr %29, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state79) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %while.body42.cleanup_crit_edge, %if.then6, %do.body1
  %retval.0 = phi i32 [ -2, %if.then6 ], [ -3, %if.then77 ], [ -2, %do.body1 ], [ 0, %while.body42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_release_swflag_ich8lan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 3840
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body2, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and1 = and i32 %3, -33
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3840, i32 noundef %and1) #6
  br label %if.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_release_swflag_ich8lan.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_release_swflag_ich8lan, %if.then7)) #6
          to label %if.end10 [label %if.then7], !srcloc !258

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %5, i32 0, i32 64
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_release_swflag_ich8lan.__UNIQUE_ID_ddebug370, ptr noundef %7, ptr noundef nonnull @.str.33) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.body2, %if.then
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %state = getelementptr inbounds %struct.e1000_adapter, ptr %9, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_copper_link_setup_82577(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_copper_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_power_up_phy_copper(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_power_down_phy_copper_ich8lan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %check_mng_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 2
  %0 = ptrtoint ptr %check_mng_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %check_mng_mode, align 4
  %call = tail call zeroext i1 %1(ptr noundef %hw) #6
  br i1 %call, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %check_reset_block = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %2 = ptrtoint ptr %check_reset_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_reset_block, align 4
  %call2 = tail call i32 %3(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @e1000_power_down_phy_copper(ptr noundef %hw) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_determine_phy_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_phy_reg_bm(ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_phy_reg_bm(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_type_from_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_phy_reg_igp_locked(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_phy_reg_igp_locked(ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_info_igp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_polarity_igp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_force_speed_duplex_igp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_get_phy_info_ife(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_polarity_ife(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_phy_force_speed_duplex_ife(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_sw_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_info_m88(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_polarity_m88(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_force_speed_duplex_m88(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_power_down_phy_copper(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_set_page_igp(ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_read_phy_reg_hv(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_read_phy_reg_page_hv(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_lplu_state_pchlan(ptr noundef %hw, i1 noundef zeroext %active) #0 align 64 {
entry:
  %oem_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %oem_reg) #6
  %0 = ptrtoint ptr %oem_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %oem_reg, align 2, !annotation !254
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 24601, ptr noundef nonnull %oem_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %oem_reg to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %oem_reg, align 2
  %5 = and i16 %4, -5
  %masksel = select i1 %active, i16 4, i16 0
  %storemerge = or i16 %5, %masksel
  store i16 %storemerge, ptr %oem_reg, align 2
  %check_reset_block = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %6 = ptrtoint ptr %check_reset_block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %check_reset_block, align 4
  %call7 = call i32 %7(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %oem_reg to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %oem_reg, align 2
  %10 = or i16 %9, 1024
  store i16 %10, ptr %oem_reg, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %11 = ptrtoint ptr %oem_reg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %oem_reg, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %13 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg.i, align 4
  %call.i20 = call i32 %14(ptr noundef %hw, i32 noundef 24601, i16 noundef zeroext %12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i20, %if.end13 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %oem_reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_write_phy_reg_hv(ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_write_phy_reg_page_hv(ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_polarity_82577(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_phy_force_speed_duplex_82577(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_get_cable_length_82577(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_get_phy_info_82577(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_cable_length_m88(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_check_for_copper_link_ich8lan(ptr noundef %hw) #0 align 64 {
entry:
  %reg.i = alloca i16, align 2
  %link = alloca i8, align 1
  %phy_reg = alloca i16, align 2
  %speed = alloca i16, align 2
  %duplex = alloca i16, align 2
  %phy_reg63 = alloca i16, align 2
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #6
  %0 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %link, align 1, !annotation !254
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg) #6
  %1 = ptrtoint ptr %phy_reg to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %phy_reg, align 2, !annotation !254
  %get_link_status = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 25
  %2 = ptrtoint ptr %get_link_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %get_link_status, align 4, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup307_crit_edge, label %if.end

entry.cleanup307_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup307

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %get_link_status, align 4
  %call = call i32 @e1000e_phy_has_link_generic(ptr noundef %hw, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %6)
  %cmp = icmp eq i32 %6, 9
  br i1 %cmp, label %if.then7, label %if.end5.if.end13_crit_edge

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then7:                                         ; preds = %if.end5
  %7 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %link, align 1, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8 = icmp ne i8 %8, 0
  %call9 = call fastcc i32 @e1000_k1_gig_workaround_hv(ptr noundef %hw, i1 noundef zeroext %tobool8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13thread-pre-split, label %if.then7.out_crit_edge

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end13thread-pre-split:                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %type, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13thread-pre-split, %if.end5.if.end13_crit_edge
  %10 = phi i32 [ %.pr, %if.end13thread-pre-split ], [ %6, %if.end5.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %10)
  %cmp16 = icmp ugt i32 %10, 9
  br i1 %cmp16, label %land.lhs.true, label %if.end13.if.end170_crit_edge

if.end13.if.end170_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

land.lhs.true:                                    ; preds = %if.end13
  %11 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %link, align 1, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool17.not = icmp eq i8 %12, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end170_crit_edge, label %if.then18

land.lhs.true.if.end170_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

if.then18:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %speed) #6
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %speed, align 2, !annotation !254
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %duplex) #6
  %14 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %duplex, align 2, !annotation !254
  %call19 = call i32 @e1000e_get_speed_and_duplex_copper(ptr noundef %hw, ptr noundef nonnull %speed, ptr noundef nonnull %duplex) #6
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 1040
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %18 = and i32 %17, 16580607
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %duplex to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp21 = icmp eq i16 %21, 1
  br i1 %cmp21, label %land.lhs.true23, label %if.else

land.lhs.true23:                                  ; preds = %if.then18
  %22 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %23)
  %cmp25 = icmp eq i16 %23, 10
  br i1 %cmp25, label %land.lhs.true23.if.end45_crit_edge, label %land.lhs.true23.if.else42_crit_edge

land.lhs.true23.if.else42_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else42

land.lhs.true23.if.end45_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.else:                                          ; preds = %if.then18
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %25)
  %cmp30 = icmp ugt i32 %25, 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %21)
  %cmp34 = icmp eq i16 %21, 2
  %or.cond = select i1 %cmp30, i1 %cmp34, i1 false
  br i1 %or.cond, label %land.lhs.true36, label %if.else.if.else42_crit_edge

if.else.if.else42_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else42

land.lhs.true36:                                  ; preds = %if.else
  %26 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %27)
  %cmp38.not = icmp eq i16 %27, 1000
  br i1 %cmp38.not, label %land.lhs.true36.if.else42_crit_edge, label %land.lhs.true36.if.end45_crit_edge

land.lhs.true36.if.end45_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

land.lhs.true36.if.else42_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else42

if.else42:                                        ; preds = %land.lhs.true36.if.else42_crit_edge, %if.else.if.else42_crit_edge, %land.lhs.true23.if.else42_crit_edge
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %land.lhs.true36.if.end45_crit_edge, %land.lhs.true23.if.end45_crit_edge
  %.sink = phi i32 [ 8, %if.else42 ], [ 255, %land.lhs.true23.if.end45_crit_edge ], [ 12, %land.lhs.true36.if.end45_crit_edge ]
  %emi_val.0 = phi i16 [ 1, %if.else42 ], [ 0, %land.lhs.true23.if.end45_crit_edge ], [ 1, %land.lhs.true36.if.end45_crit_edge ]
  %or41 = or i32 %19, %.sink
  call void @__ew32(ptr noundef %hw, i32 noundef 1040, i32 noundef %or41) #6
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %28 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy, align 4
  %call46 = call i32 %29(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup166.thread_crit_edge

if.end45.cleanup166.thread_crit_edge:             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup166.thread

if.end49:                                         ; preds = %if.end45
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %31)
  %cmp52 = icmp eq i32 %31, 10
  %. = select i1 %cmp52, i16 13330, i16 -19956
  %write_reg_locked.i.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %32 = ptrtoint ptr %write_reg_locked.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_reg_locked.i.i.i, align 4
  %call.i.i.i = call i32 %33(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %.) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end49.e1000_write_emi_reg_locked.exit_crit_edge

if.end49.e1000_write_emi_reg_locked.exit_crit_edge: ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_write_emi_reg_locked.exit

if.end.i.i:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %write_reg_locked.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_reg_locked.i.i.i, align 4
  %call.i13.i.i = call i32 %35(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext %emi_val.0) #6
  br label %e1000_write_emi_reg_locked.exit

e1000_write_emi_reg_locked.exit:                  ; preds = %if.end.i.i, %if.end49.e1000_write_emi_reg_locked.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i.i, %if.end49.e1000_write_emi_reg_locked.exit_crit_edge ], [ %call.i13.i.i, %if.end.i.i ]
  %36 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %37)
  %cmp60 = icmp ugt i32 %37, 10
  br i1 %cmp60, label %if.then62, label %e1000_write_emi_reg_locked.exit.if.end98_crit_edge

e1000_write_emi_reg_locked.exit.if.end98_crit_edge: ; preds = %e1000_write_emi_reg_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then62:                                        ; preds = %e1000_write_emi_reg_locked.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg63) #6
  %38 = ptrtoint ptr %phy_reg63 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %phy_reg63, align 2, !annotation !254
  %read_reg_locked.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 11
  %39 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_reg_locked.i, align 4
  %call.i = call i32 %40(ptr noundef %hw, i32 noundef 24732, ptr noundef nonnull %phy_reg63) #6
  %41 = ptrtoint ptr %phy_reg63 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %phy_reg63, align 2
  %43 = and i16 %42, -2048
  %44 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %45)
  %switch.selectcmp.case1 = icmp eq i16 %45, 100
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %45)
  %switch.selectcmp.case2 = icmp eq i16 %45, 10
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %46 = select i1 %switch.selectcmp, i16 1000, i16 250
  %47 = or i16 %43, %46
  %48 = ptrtoint ptr %phy_reg63 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %phy_reg63, align 2
  %49 = ptrtoint ptr %write_reg_locked.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_reg_locked.i.i.i, align 4
  %call.i410 = call i32 %50(ptr noundef %hw, i32 noundef 24732, i16 noundef zeroext %47) #6
  %51 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %52)
  %cmp85 = icmp eq i16 %52, 1000
  br i1 %cmp85, label %if.then87, label %if.then62.if.end97_crit_edge

if.then62.if.end97_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then87:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_reg_locked.i, align 4
  %call90 = call i32 %54(ptr noundef %hw, i32 noundef 24657, ptr noundef nonnull %phy_reg63) #6
  %55 = ptrtoint ptr %phy_reg63 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %phy_reg63, align 2
  %57 = or i16 %56, 512
  store i16 %57, ptr %phy_reg63, align 2
  %58 = ptrtoint ptr %write_reg_locked.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_reg_locked.i.i.i, align 4
  %call96 = call i32 %59(ptr noundef %hw, i32 noundef 24657, i16 noundef zeroext %57) #6
  br label %if.end97

if.end97:                                         ; preds = %if.then87, %if.then62.if.end97_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg63) #6
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %e1000_write_emi_reg_locked.exit.if.end98_crit_edge
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %60 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %release, align 4
  call void %61(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool101.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool101.not, label %if.end103, label %if.end98.cleanup166.thread_crit_edge

if.end98.cleanup166.thread_crit_edge:             ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup166.thread

if.end103:                                        ; preds = %if.end98
  %62 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %63)
  %cmp106 = icmp ugt i32 %63, 11
  br i1 %cmp106, label %if.then108, label %if.end103.cleanup166_crit_edge

if.end103.cleanup166_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup166

if.then108:                                       ; preds = %if.end103
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %64 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -1, ptr %data, align 2, !annotation !254
  %65 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %66)
  %cmp110 = icmp eq i16 %66, 1000
  %67 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %phy, align 4
  %call116 = call i32 %68(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %cmp110, label %if.then112, label %if.else148

if.then112:                                       ; preds = %if.then108
  br i1 %tobool117.not, label %if.end119, label %if.then112.cleanup.thread_crit_edge

if.then112.cleanup.thread_crit_edge:              ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end119:                                        ; preds = %if.then112
  %read_reg_locked.i411 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 11
  %69 = ptrtoint ptr %read_reg_locked.i411 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read_reg_locked.i411, align 4
  %call.i412 = call i32 %70(ptr noundef %hw, i32 noundef 24852, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i412)
  %tobool121.not = icmp eq i32 %call.i412, 0
  br i1 %tobool121.not, label %if.end126, label %if.then122

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %release, align 4
  call void %72(ptr noundef %hw) #6
  br label %cleanup.thread

if.end126:                                        ; preds = %if.end119
  %73 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %data, align 2
  %75 = and i16 %74, 4064
  call void @__sanitizer_cov_trace_const_cmp2(i16 96, i16 %75)
  %cmp131 = icmp ult i16 %75, 96
  br i1 %cmp131, label %if.end141, label %if.end141.thread

if.end141.thread:                                 ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %release, align 4
  call void %77(ptr noundef %hw) #6
  br label %cleanup

if.end141:                                        ; preds = %if.end126
  %78 = and i16 %74, -4093
  %79 = or i16 %78, 96
  %80 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %data, align 2
  %81 = ptrtoint ptr %write_reg_locked.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write_reg_locked.i.i.i, align 4
  %call.i414 = call i32 %82(ptr noundef %hw, i32 noundef 24852, i16 noundef zeroext %79) #6
  %83 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %release, align 4
  call void %84(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i414)
  %tobool145.not = icmp eq i32 %call.i414, 0
  br i1 %tobool145.not, label %if.end141.cleanup_crit_edge, label %if.end141.cleanup.thread_crit_edge

if.end141.cleanup.thread_crit_edge:               ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else148:                                       ; preds = %if.then108
  br i1 %tobool117.not, label %if.end155, label %if.else148.cleanup.thread_crit_edge

if.else148.cleanup.thread_crit_edge:              ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end155:                                        ; preds = %if.else148
  %85 = ptrtoint ptr %write_reg_locked.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write_reg_locked.i.i.i, align 4
  %call.i416 = call i32 %86(ptr noundef %hw, i32 noundef 24852, i16 noundef zeroext -16349) #6
  %87 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %release, align 4
  call void %88(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i416)
  %tobool160.not = icmp eq i32 %call.i416, 0
  br i1 %tobool160.not, label %if.end155.cleanup_crit_edge, label %if.end155.cleanup.thread_crit_edge

if.end155.cleanup.thread_crit_edge:               ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end155.cleanup_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end155.cleanup.thread_crit_edge, %if.else148.cleanup.thread_crit_edge, %if.end141.cleanup.thread_crit_edge, %if.then122, %if.then112.cleanup.thread_crit_edge
  %ret_val.3.ph = phi i32 [ %call.i416, %if.end155.cleanup.thread_crit_edge ], [ %call116, %if.else148.cleanup.thread_crit_edge ], [ %call.i414, %if.end141.cleanup.thread_crit_edge ], [ %call116, %if.then112.cleanup.thread_crit_edge ], [ %call.i412, %if.then122 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  br label %cleanup166.thread

cleanup:                                          ; preds = %if.end155.cleanup_crit_edge, %if.end141.cleanup_crit_edge, %if.end141.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  br label %cleanup166

cleanup166.thread:                                ; preds = %cleanup.thread, %if.end98.cleanup166.thread_crit_edge, %if.end45.cleanup166.thread_crit_edge
  %ret_val.5.ph = phi i32 [ %ret_val.3.ph, %cleanup.thread ], [ %retval.0.i.i, %if.end98.cleanup166.thread_crit_edge ], [ %call46, %if.end45.cleanup166.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %duplex) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed) #6
  br label %out

cleanup166:                                       ; preds = %cleanup, %if.end103.cleanup166_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %duplex) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed) #6
  br label %if.end170

if.end170:                                        ; preds = %cleanup166, %land.lhs.true.if.end170_crit_edge, %if.end13.if.end170_crit_edge
  %89 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %90)
  %cmp173 = icmp ugt i32 %90, 10
  br i1 %cmp173, label %if.then175, label %if.end170.if.end179_crit_edge

if.end170.if.end179_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end179

if.then175:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  %hw_addr.i417 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %91 = ptrtoint ptr %hw_addr.i417 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hw_addr.i417, align 4
  %add.ptr.i418 = getelementptr i8, ptr %92, i32 36
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i418) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %94 = or i32 %93, 117440512
  %95 = call i32 @llvm.bswap.i32(i32 %94)
  call void @__ew32(ptr noundef %hw, i32 noundef 36, i32 noundef %95) #6
  br label %if.end179

if.end179:                                        ; preds = %if.then175, %if.end170.if.end179_crit_edge
  %96 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw, align 4
  %pdev = getelementptr inbounds %struct.e1000_adapter, ptr %97, i32 0, i32 65
  %98 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev, align 32
  %device = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 8
  %100 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %device, align 2
  %102 = zext i16 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.110)
  switch i16 %101, label %if.end179.if.end210_crit_edge [
    i16 5466, label %if.end179.if.then204_crit_edge
    i16 5465, label %if.end179.if.then204_crit_edge454
    i16 5538, label %if.end179.if.then204_crit_edge455
    i16 5539, label %if.end179.if.then204_crit_edge456
  ]

if.end179.if.then204_crit_edge456:                ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then204

if.end179.if.then204_crit_edge455:                ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then204

if.end179.if.then204_crit_edge454:                ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then204

if.end179.if.then204_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then204

if.end179.if.end210_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end210

if.then204:                                       ; preds = %if.end179.if.then204_crit_edge, %if.end179.if.then204_crit_edge454, %if.end179.if.then204_crit_edge455, %if.end179.if.then204_crit_edge456
  %103 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %link, align 1, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool205 = icmp ne i8 %104, 0
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %105 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %106, i32 16
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !256
  %108 = call i32 @llvm.bswap.i32(i32 %107) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %109 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %110, i32 8
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92.i) #6, !srcloc !256
  %112 = call i32 @llvm.bswap.i32(i32 %111) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #6
  %113 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 -1, ptr %reg.i, align 2, !annotation !254
  %link.not.i = xor i1 %tobool205, true
  %and.i = and i32 %112, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %link.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then204
  %phy.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %114 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %phy.i, align 4
  %call3.i = call i32 %115(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i, label %if.then.i.e1000_k1_workaround_lpt_lp.exit.thread_crit_edge

if.then.i.e1000_k1_workaround_lpt_lp.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_k1_workaround_lpt_lp.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %call6.i = call i32 @e1000e_read_kmrn_reg_locked(ptr noundef %hw, i32 noundef 7, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.e1000_k1_workaround_lpt_lp.exit.thread443_crit_edge

if.end.i.e1000_k1_workaround_lpt_lp.exit.thread443_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_k1_workaround_lpt_lp.exit.thread443

if.end9.i:                                        ; preds = %if.end.i
  %116 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %reg.i, align 2
  %118 = and i16 %117, -3
  %call12.i = call i32 @e1000e_write_kmrn_reg_locked(ptr noundef %hw, i32 noundef 7, i16 noundef zeroext %118) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %e1000_k1_workaround_lpt_lp.exit, label %if.end9.i.e1000_k1_workaround_lpt_lp.exit.thread443_crit_edge

if.end9.i.e1000_k1_workaround_lpt_lp.exit.thread443_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_k1_workaround_lpt_lp.exit.thread443

if.else.i:                                        ; preds = %if.then204
  %and20.i = and i32 %108, -257
  %revision.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 11
  %119 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %120)
  %cmp.i = icmp ult i32 %120, 6
  %121 = and i1 %tobool205, %cmp.i
  br i1 %121, label %lor.lhs.false24.i, label %if.else.i.e1000_k1_workaround_lpt_lp.exit.thread439_crit_edge

if.else.i.e1000_k1_workaround_lpt_lp.exit.thread439_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_k1_workaround_lpt_lp.exit.thread439

lor.lhs.false24.i:                                ; preds = %if.else.i
  %and25.i = and i32 %112, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %122 = and i32 %112, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %122)
  %.not.i = icmp eq i32 %122, 65
  br i1 %.not.i, label %lor.lhs.false24.i.e1000_k1_workaround_lpt_lp.exit.thread439_crit_edge, label %if.end31.i

lor.lhs.false24.i.e1000_k1_workaround_lpt_lp.exit.thread439_crit_edge: ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_k1_workaround_lpt_lp.exit.thread439

if.end31.i:                                       ; preds = %lor.lhs.false24.i
  %read_reg.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %123 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i = call i32 %124(ptr noundef %hw, i32 noundef 24658, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool33.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end31.i.e1000_k1_workaround_lpt_lp.exit.thread_crit_edge

if.end31.i.e1000_k1_workaround_lpt_lp.exit.thread_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_k1_workaround_lpt_lp.exit.thread

if.end35.i:                                       ; preds = %if.end31.i
  %125 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %reg.i, align 2
  %127 = and i16 %126, -16129
  br i1 %tobool26.not.i, label %if.else46.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %128 = or i16 %127, 1280
  %129 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %reg.i, align 2
  %and45.i = and i32 %108, -769
  br label %if.end51.i

if.else46.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %130 = or i16 %127, 12800
  %131 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %reg.i, align 2
  %or50.i = or i32 %and20.i, 512
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else46.i, %if.then41.i
  %fextnvm6.0.i = phi i32 [ %and45.i, %if.then41.i ], [ %or50.i, %if.else46.i ]
  %132 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %reg.i, align 2
  %write_reg.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %134 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %write_reg.i.i, align 4
  %call.i93.i = call i32 %135(ptr noundef %hw, i32 noundef 24658, i16 noundef zeroext %133) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %tobool53.not.i = icmp eq i32 %call.i93.i, 0
  br i1 %tobool53.not.i, label %if.end51.i.e1000_k1_workaround_lpt_lp.exit.thread439_crit_edge, label %if.end51.i.e1000_k1_workaround_lpt_lp.exit.thread_crit_edge

if.end51.i.e1000_k1_workaround_lpt_lp.exit.thread_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_k1_workaround_lpt_lp.exit.thread

if.end51.i.e1000_k1_workaround_lpt_lp.exit.thread439_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_k1_workaround_lpt_lp.exit.thread439

e1000_k1_workaround_lpt_lp.exit.thread439:        ; preds = %if.end51.i.e1000_k1_workaround_lpt_lp.exit.thread439_crit_edge, %lor.lhs.false24.i.e1000_k1_workaround_lpt_lp.exit.thread439_crit_edge, %if.else.i.e1000_k1_workaround_lpt_lp.exit.thread439_crit_edge
  %fextnvm6.1.i = phi i32 [ %and20.i, %if.else.i.e1000_k1_workaround_lpt_lp.exit.thread439_crit_edge ], [ %fextnvm6.0.i, %if.end51.i.e1000_k1_workaround_lpt_lp.exit.thread439_crit_edge ], [ %and20.i, %lor.lhs.false24.i.e1000_k1_workaround_lpt_lp.exit.thread439_crit_edge ]
  call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %fextnvm6.1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #6
  br label %if.end210

e1000_k1_workaround_lpt_lp.exit.thread:           ; preds = %if.end51.i.e1000_k1_workaround_lpt_lp.exit.thread_crit_edge, %if.end31.i.e1000_k1_workaround_lpt_lp.exit.thread_crit_edge, %if.then.i.e1000_k1_workaround_lpt_lp.exit.thread_crit_edge
  %retval.0.i419.ph = phi i32 [ %call.i93.i, %if.end51.i.e1000_k1_workaround_lpt_lp.exit.thread_crit_edge ], [ %call.i.i, %if.end31.i.e1000_k1_workaround_lpt_lp.exit.thread_crit_edge ], [ %call3.i, %if.then.i.e1000_k1_workaround_lpt_lp.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #6
  br label %out

e1000_k1_workaround_lpt_lp.exit.thread443:        ; preds = %if.end9.i.e1000_k1_workaround_lpt_lp.exit.thread443_crit_edge, %if.end.i.e1000_k1_workaround_lpt_lp.exit.thread443_crit_edge
  %ret_val.0.i.ph = phi i32 [ %call12.i, %if.end9.i.e1000_k1_workaround_lpt_lp.exit.thread443_crit_edge ], [ %call6.i, %if.end.i.e1000_k1_workaround_lpt_lp.exit.thread443_crit_edge ]
  %release19.i445 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %136 = ptrtoint ptr %release19.i445 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %release19.i445, align 4
  call void %137(ptr noundef %hw) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #6
  br label %out

e1000_k1_workaround_lpt_lp.exit:                  ; preds = %if.end9.i
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %or.i = or i32 %108, 256
  call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %or.i) #6
  %138 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %reg.i, align 2
  %call16.i = call i32 @e1000e_write_kmrn_reg_locked(ptr noundef %hw, i32 noundef 7, i16 noundef zeroext %139) #6
  %release19.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %140 = ptrtoint ptr %release19.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %release19.i, align 4
  call void %141(ptr noundef %hw) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool207.not = icmp eq i32 %call16.i, 0
  br i1 %tobool207.not, label %e1000_k1_workaround_lpt_lp.exit.if.end210_crit_edge, label %e1000_k1_workaround_lpt_lp.exit.out_crit_edge

e1000_k1_workaround_lpt_lp.exit.out_crit_edge:    ; preds = %e1000_k1_workaround_lpt_lp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

e1000_k1_workaround_lpt_lp.exit.if.end210_crit_edge: ; preds = %e1000_k1_workaround_lpt_lp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end210

if.end210:                                        ; preds = %e1000_k1_workaround_lpt_lp.exit.if.end210_crit_edge, %e1000_k1_workaround_lpt_lp.exit.thread439, %if.end179.if.end210_crit_edge
  %142 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %143)
  %cmp213 = icmp ugt i32 %143, 10
  br i1 %cmp213, label %if.then215, label %if.end221.thread

if.end221.thread:                                 ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #8
  %eee_lp_ability449 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 4
  %144 = ptrtoint ptr %eee_lp_ability449 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 0, ptr %eee_lp_ability449, align 4
  br label %if.end242

if.then215:                                       ; preds = %if.end210
  %145 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %link, align 1, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool216 = icmp ne i8 %146, 0
  %call217 = call fastcc i32 @e1000_platform_pm_pch_lpt(ptr noundef %hw, i1 noundef zeroext %tobool216)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %if.end221, label %if.then215.out_crit_edge

if.then215.out_crit_edge:                         ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end221:                                        ; preds = %if.then215
  %147 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pr447 = load i32, ptr %type, align 4
  %eee_lp_ability = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 4
  %148 = ptrtoint ptr %eee_lp_ability to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 0, ptr %eee_lp_ability, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %.pr447)
  %cmp224 = icmp ugt i32 %.pr447, 10
  br i1 %cmp224, label %if.then226, label %if.end221.if.end242_crit_edge

if.end221.if.end242_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end242

if.then226:                                       ; preds = %if.end221
  %hw_addr.i420 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %149 = ptrtoint ptr %hw_addr.i420 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hw_addr.i420, align 4
  %add.ptr.i421 = getelementptr i8, ptr %150, i32 16
  %151 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i421) #6, !srcloc !256
  %152 = call i32 @llvm.bswap.i32(i32 %151) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %153 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %154)
  %cmp230 = icmp eq i32 %154, 12
  br i1 %cmp230, label %if.then232, label %if.then226.if.end241_crit_edge

if.then226.if.end241_crit_edge:                   ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end241

if.then232:                                       ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #8
  %155 = ptrtoint ptr %hw_addr.i420 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hw_addr.i420, align 4
  %add.ptr.i423 = getelementptr i8, ptr %156, i32 3864
  %157 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i423) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %and239 = and i32 %152, 2147483647
  %.mask = shl i32 %157, 24
  %158 = and i32 %.mask, -2147483648
  %fextnvm6.0 = or i32 %158, %and239
  br label %if.end241

if.end241:                                        ; preds = %if.then232, %if.then226.if.end241_crit_edge
  %fextnvm6.1 = phi i32 [ %fextnvm6.0, %if.then232 ], [ %152, %if.then226.if.end241_crit_edge ]
  call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %fextnvm6.1) #6
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %if.end221.if.end242_crit_edge, %if.end221.thread
  %159 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %link, align 1, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool243.not = icmp eq i8 %160, 0
  br i1 %tobool243.not, label %if.end242.out_crit_edge, label %if.end245

if.end242.out_crit_edge:                          ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end245:                                        ; preds = %if.end242
  %161 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %type, align 4
  %163 = zext i32 %162 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %162, label %if.end245.sw.epilog_crit_edge [
    i32 10, label %sw.bb
    i32 9, label %if.end245.sw.bb252_crit_edge
  ]

if.end245.sw.bb252_crit_edge:                     ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb252

if.end245.sw.epilog_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end245
  %call248 = call fastcc i32 @e1000_k1_workaround_lv(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %sw.bb.sw.bb252_crit_edge, label %sw.bb.cleanup307_crit_edge

sw.bb.cleanup307_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup307

sw.bb.sw.bb252_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb252

sw.bb252:                                         ; preds = %sw.bb.sw.bb252_crit_edge, %if.end245.sw.bb252_crit_edge
  %type254 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %164 = ptrtoint ptr %type254 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %type254, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %165)
  %cmp255 = icmp eq i32 %165, 9
  br i1 %cmp255, label %if.then257, label %sw.bb252.if.end262_crit_edge

sw.bb252.if.end262_crit_edge:                     ; preds = %sw.bb252
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end262

if.then257:                                       ; preds = %sw.bb252
  %call258 = call i32 @e1000_link_stall_workaround_hv(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %tobool259.not = icmp eq i32 %call258, 0
  br i1 %tobool259.not, label %if.then257.if.end262_crit_edge, label %if.then257.cleanup307_crit_edge

if.then257.cleanup307_crit_edge:                  ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup307

if.then257.if.end262_crit_edge:                   ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end262

if.end262:                                        ; preds = %if.then257.if.end262_crit_edge, %sw.bb252.if.end262_crit_edge
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %166 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %read_reg.i, align 4
  %call.i424 = call i32 %167(ptr noundef %hw, i32 noundef 24656, ptr noundef nonnull %phy_reg) #6
  %168 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %phy_reg, align 2
  %170 = and i16 %169, -28673
  store i16 %170, ptr %phy_reg, align 2
  %hw_addr.i425 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %171 = ptrtoint ptr %hw_addr.i425 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hw_addr.i425, align 4
  %add.ptr.i426 = getelementptr i8, ptr %172, i32 8
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i426) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %174 = and i32 %173, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp269.not.not = icmp eq i32 %174, 0
  br i1 %cmp269.not.not, label %if.then271, label %if.end262.if.end275_crit_edge

if.end262.if.end275_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end275

if.then271:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #8
  %175 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %phy_reg, align 2
  %177 = or i16 %176, 4096
  store i16 %177, ptr %phy_reg, align 2
  br label %if.end275

if.end275:                                        ; preds = %if.then271, %if.end262.if.end275_crit_edge
  %178 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %phy_reg, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %180 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %write_reg.i, align 4
  %call.i427 = call i32 %181(ptr noundef %hw, i32 noundef 24656, i16 noundef zeroext %179) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end275, %if.end245.sw.epilog_crit_edge
  %call277 = call i32 @e1000e_check_downshift(ptr noundef %hw) #6
  %type279 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %182 = ptrtoint ptr %type279 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %type279, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %183)
  %cmp280 = icmp ugt i32 %183, 11
  br i1 %cmp280, label %if.then282, label %sw.epilog.if.end287_crit_edge

sw.epilog.if.end287_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end287

if.then282:                                       ; preds = %sw.epilog
  %call283 = call i32 @e1000_set_eee_pchlan(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call283)
  %tobool284.not = icmp eq i32 %call283, 0
  br i1 %tobool284.not, label %if.then282.if.end287_crit_edge, label %if.then282.cleanup307_crit_edge

if.then282.cleanup307_crit_edge:                  ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup307

if.then282.if.end287_crit_edge:                   ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end287

if.end287:                                        ; preds = %if.then282.if.end287_crit_edge, %sw.epilog.if.end287_crit_edge
  %autoneg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 23
  %184 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %autoneg, align 2, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool288.not = icmp eq i8 %185, 0
  br i1 %tobool288.not, label %if.end287.cleanup307_crit_edge, label %if.end290

if.end287.cleanup307_crit_edge:                   ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup307

if.end290:                                        ; preds = %if.end287
  %config_collision_dist = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 19
  %186 = ptrtoint ptr %config_collision_dist to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %config_collision_dist, align 4
  call void %187(ptr noundef %hw) #6
  %call292 = call i32 @e1000e_config_fc_after_link_up(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292)
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %if.end290.cleanup307_crit_edge, label %do.body295

if.end290.cleanup307_crit_edge:                   ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup307

do.body295:                                       ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_check_for_copper_link_ich8lan.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_check_for_copper_link_ich8lan, %if.then300)) #6
          to label %cleanup307 [label %if.then300], !srcloc !258

if.then300:                                       ; preds = %do.body295
  call void @__sanitizer_cov_trace_pc() #8
  %188 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %189, i32 0, i32 64
  %190 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_check_for_copper_link_ich8lan.__UNIQUE_ID_ddebug366, ptr noundef %191, ptr noundef nonnull @.str.40) #6
  br label %cleanup307

out:                                              ; preds = %if.end242.out_crit_edge, %if.then215.out_crit_edge, %e1000_k1_workaround_lpt_lp.exit.out_crit_edge, %e1000_k1_workaround_lpt_lp.exit.thread443, %e1000_k1_workaround_lpt_lp.exit.thread, %cleanup166.thread, %if.then7.out_crit_edge, %if.end.out_crit_edge
  %ret_val.9 = phi i32 [ %call, %if.end.out_crit_edge ], [ %call9, %if.then7.out_crit_edge ], [ %call16.i, %e1000_k1_workaround_lpt_lp.exit.out_crit_edge ], [ %call217, %if.then215.out_crit_edge ], [ 0, %if.end242.out_crit_edge ], [ %ret_val.5.ph, %cleanup166.thread ], [ %retval.0.i419.ph, %e1000_k1_workaround_lpt_lp.exit.thread ], [ %ret_val.0.i.ph, %e1000_k1_workaround_lpt_lp.exit.thread443 ]
  %192 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 1, ptr %get_link_status, align 4
  br label %cleanup307

cleanup307:                                       ; preds = %out, %if.then300, %do.body295, %if.end290.cleanup307_crit_edge, %if.end287.cleanup307_crit_edge, %if.then282.cleanup307_crit_edge, %if.then257.cleanup307_crit_edge, %sw.bb.cleanup307_crit_edge, %entry.cleanup307_crit_edge
  %retval.0 = phi i32 [ %ret_val.9, %out ], [ 0, %entry.cleanup307_crit_edge ], [ %call248, %sw.bb.cleanup307_crit_edge ], [ %call258, %if.then257.cleanup307_crit_edge ], [ %call283, %if.then282.cleanup307_crit_edge ], [ -3, %if.end287.cleanup307_crit_edge ], [ %call292, %if.then300 ], [ 0, %if.end290.cleanup307_crit_edge ], [ %call292, %do.body295 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_clear_hw_cntrs_ich8lan(ptr noundef %hw) #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #6
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !254
  tail call void @e1000e_clear_hw_cntrs_base(ptr noundef %hw) #6
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 16388
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %5, i32 16396
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %7 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %8, i32 16436
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %10 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %11, i32 16444
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %13 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i148 = getelementptr i8, ptr %14, i32 16632
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %16 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %17, i32 16636
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %19 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i152 = getelementptr i8, ptr %20, i32 16564
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i152) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %22 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i154 = getelementptr i8, ptr %23, i32 16568
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %25 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i156 = getelementptr i8, ptr %26, i32 16572
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %28 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i158 = getelementptr i8, ptr %29, i32 16640
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i158) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %31 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i160 = getelementptr i8, ptr %32, i32 16676
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i160) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type, align 4
  %.off = add i32 %35, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %36 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy, align 4
  %call23 = tail call i32 %37(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %set_page = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 9
  %38 = ptrtoint ptr %set_page to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_page, align 4
  %call27 = tail call i32 %39(ptr noundef %hw, i16 noundef zeroext 24896) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end.release_crit_edge

if.end.release_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %read_reg_page = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 12
  %40 = ptrtoint ptr %read_reg_page to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_reg_page, align 4
  %call33 = call i32 %41(ptr noundef %hw, i32 noundef 24912, ptr noundef nonnull %phy_data) #6
  %42 = ptrtoint ptr %read_reg_page to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_reg_page, align 4
  %call37 = call i32 %43(ptr noundef %hw, i32 noundef 24913, ptr noundef nonnull %phy_data) #6
  %44 = ptrtoint ptr %read_reg_page to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read_reg_page, align 4
  %call41 = call i32 %45(ptr noundef %hw, i32 noundef 24914, ptr noundef nonnull %phy_data) #6
  %46 = ptrtoint ptr %read_reg_page to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read_reg_page, align 4
  %call45 = call i32 %47(ptr noundef %hw, i32 noundef 24915, ptr noundef nonnull %phy_data) #6
  %48 = ptrtoint ptr %read_reg_page to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_reg_page, align 4
  %call49 = call i32 %49(ptr noundef %hw, i32 noundef 24916, ptr noundef nonnull %phy_data) #6
  %50 = ptrtoint ptr %read_reg_page to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read_reg_page, align 4
  %call53 = call i32 %51(ptr noundef %hw, i32 noundef 24917, ptr noundef nonnull %phy_data) #6
  %52 = ptrtoint ptr %read_reg_page to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read_reg_page, align 4
  %call57 = call i32 %53(ptr noundef %hw, i32 noundef 24919, ptr noundef nonnull %phy_data) #6
  %54 = ptrtoint ptr %read_reg_page to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read_reg_page, align 4
  %call61 = call i32 %55(ptr noundef %hw, i32 noundef 24920, ptr noundef nonnull %phy_data) #6
  %56 = ptrtoint ptr %read_reg_page to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read_reg_page, align 4
  %call65 = call i32 %57(ptr noundef %hw, i32 noundef 24921, ptr noundef nonnull %phy_data) #6
  %58 = ptrtoint ptr %read_reg_page to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read_reg_page, align 4
  %call69 = call i32 %59(ptr noundef %hw, i32 noundef 24922, ptr noundef nonnull %phy_data) #6
  %60 = ptrtoint ptr %read_reg_page to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read_reg_page, align 4
  %call73 = call i32 %61(ptr noundef %hw, i32 noundef 24923, ptr noundef nonnull %phy_data) #6
  %62 = ptrtoint ptr %read_reg_page to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_reg_page, align 4
  %call77 = call i32 %63(ptr noundef %hw, i32 noundef 24924, ptr noundef nonnull %phy_data) #6
  %64 = ptrtoint ptr %read_reg_page to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read_reg_page, align 4
  %call81 = call i32 %65(ptr noundef %hw, i32 noundef 24925, ptr noundef nonnull %phy_data) #6
  %66 = ptrtoint ptr %read_reg_page to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read_reg_page, align 4
  %call85 = call i32 %67(ptr noundef %hw, i32 noundef 24926, ptr noundef nonnull %phy_data) #6
  br label %release

release:                                          ; preds = %if.end30, %if.end.release_crit_edge
  %release88 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %68 = ptrtoint ptr %release88 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %release88, align 4
  call void %69(ptr noundef %hw) #6
  br label %cleanup

cleanup:                                          ; preds = %release, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_bus_info_ich8lan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7
  %call = tail call i32 @e1000e_get_bus_info_pcie(ptr noundef %hw) #6
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %bus1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_set_lan_id_single_port(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_link_up_info_ich8lan(ptr noundef %hw, ptr noundef %speed, ptr noundef %duplex) #0 align 64 {
entry:
  %reg_data.i.i = alloca i16, align 2
  %data.i = alloca i16, align 2
  %link.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @e1000e_get_speed_and_duplex_copper(ptr noundef %hw, ptr noundef %speed, ptr noundef %duplex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %type1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp2 = icmp eq i32 %3, 6
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %5)
  %cmp4 = icmp eq i16 %5, 1000
  br i1 %cmp4, label %if.then6, label %land.lhs.true3.cleanup_crit_edge

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true3
  %dev_spec1.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %data.i, align 2, !annotation !254
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link.i) #6
  %7 = ptrtoint ptr %link.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %link.i, align 1, !annotation !254
  %8 = ptrtoint ptr %dev_spec1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dev_spec1.i, align 4, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then6.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge, label %if.end.i

if.then6.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_kmrn_lock_loss_workaround_ich8lan.exit

if.end.i:                                         ; preds = %if.then6
  %call.i = call i32 @e1000e_phy_has_link_generic(ptr noundef %hw, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %link.i) #6
  %10 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %link.i, align 1, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not.i = icmp eq i8 %11, 0
  br i1 %tobool2.not.i, label %if.end.i.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge, label %for.cond.preheader.i

if.end.i.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_kmrn_lock_loss_workaround_ich8lan.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  %read_reg.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %reset.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %if.end17.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.043.i = phi i16 [ 0, %for.cond.preheader.i ], [ %inc.i, %if.end17.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i = call i32 %13(ptr noundef %hw, i32 noundef 24659, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %for.body.i.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge

for.body.i.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_kmrn_lock_loss_workaround_ich8lan.exit

if.end9.i:                                        ; preds = %for.body.i
  %14 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_reg.i.i, align 4
  %call.i39.i = call i32 %15(ptr noundef %hw, i32 noundef 24659, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %tobool11.not.i = icmp eq i32 %call.i39.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge

if.end9.i.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_kmrn_lock_loss_workaround_ich8lan.exit

if.end13.i:                                       ; preds = %if.end9.i
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data.i, align 2
  %18 = and i16 %17, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool15.not.i = icmp eq i16 %18, 0
  br i1 %tobool15.not.i, label %if.end13.i.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge, label %if.end17.i

if.end13.i.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_kmrn_lock_loss_workaround_ich8lan.exit

if.end17.i:                                       ; preds = %if.end13.i
  %19 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reset.i.i, align 4
  %call.i40.i = call i32 %20(ptr noundef %hw) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #6
  %inc.i = add nuw nsw i16 %i.043.i, 1
  %cmp.i = icmp ult i16 %i.043.i, 9
  br i1 %cmp.i, label %if.end17.i.for.body.i_crit_edge, label %for.end.i

if.end17.i.for.body.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end17.i
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %26 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 3856
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %29 = or i32 %28, 1207959552
  %30 = call i32 @llvm.bswap.i32(i32 %29) #6
  call void @__ew32(ptr noundef %hw, i32 noundef 3856, i32 noundef %30) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_data.i.i) #6
  %31 = ptrtoint ptr %reg_data.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %reg_data.i.i, align 2, !annotation !254
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %33)
  %cmp.not.i.i = icmp eq i32 %33, 6
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %for.end.i.e1000e_gig_downshift_workaround_ich8lan.exit.i_crit_edge

for.end.i.e1000e_gig_downshift_workaround_ich8lan.exit.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000e_gig_downshift_workaround_ich8lan.exit.i

lor.lhs.false.i.i:                                ; preds = %for.end.i
  %34 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %35)
  %cmp2.i.i = icmp eq i32 %35, 7
  br i1 %cmp2.i.i, label %lor.lhs.false.i.i.e1000e_gig_downshift_workaround_ich8lan.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.e1000e_gig_downshift_workaround_ich8lan.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000e_gig_downshift_workaround_ich8lan.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %call.i41.i = call i32 @e1000e_read_kmrn_reg(ptr noundef %hw, i32 noundef 3, ptr noundef nonnull %reg_data.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %tobool.not.i.i = icmp eq i32 %call.i41.i, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i, label %if.end.i.i.e1000e_gig_downshift_workaround_ich8lan.exit.i_crit_edge

if.end.i.i.e1000e_gig_downshift_workaround_ich8lan.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000e_gig_downshift_workaround_ich8lan.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %36 = ptrtoint ptr %reg_data.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %reg_data.i.i, align 2
  %38 = or i16 %37, 4096
  store i16 %38, ptr %reg_data.i.i, align 2
  %call6.i.i = call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 3, i16 noundef zeroext %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end4.i.i.e1000e_gig_downshift_workaround_ich8lan.exit.i_crit_edge

if.end4.i.i.e1000e_gig_downshift_workaround_ich8lan.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000e_gig_downshift_workaround_ich8lan.exit.i

if.end9.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %reg_data.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %reg_data.i.i, align 2
  %41 = and i16 %40, -4097
  store i16 %41, ptr %reg_data.i.i, align 2
  %call12.i.i = call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 3, i16 noundef zeroext %41) #6
  br label %e1000e_gig_downshift_workaround_ich8lan.exit.i

e1000e_gig_downshift_workaround_ich8lan.exit.i:   ; preds = %if.end9.i.i, %if.end4.i.i.e1000e_gig_downshift_workaround_ich8lan.exit.i_crit_edge, %if.end.i.i.e1000e_gig_downshift_workaround_ich8lan.exit.i_crit_edge, %lor.lhs.false.i.i.e1000e_gig_downshift_workaround_ich8lan.exit.i_crit_edge, %for.end.i.e1000e_gig_downshift_workaround_ich8lan.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data.i.i) #6
  br label %e1000_kmrn_lock_loss_workaround_ich8lan.exit

e1000_kmrn_lock_loss_workaround_ich8lan.exit:     ; preds = %e1000e_gig_downshift_workaround_ich8lan.exit.i, %if.end13.i.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge, %if.end9.i.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge, %for.body.i.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge, %if.end.i.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge, %if.then6.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge
  %retval.0.i = phi i32 [ -2, %e1000e_gig_downshift_workaround_ich8lan.exit.i ], [ 0, %if.then6.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge ], [ 0, %if.end.i.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge ], [ %call.i.i, %for.body.i.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge ], [ %call.i39.i, %if.end9.i.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge ], [ 0, %if.end13.i.e1000_kmrn_lock_loss_workaround_ich8lan.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  br label %cleanup

cleanup:                                          ; preds = %e1000_kmrn_lock_loss_workaround_ich8lan.exit, %land.lhs.true3.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i, %e1000_kmrn_lock_loss_workaround_ich8lan.exit ], [ 0, %land.lhs.true3.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_update_mc_addr_list_generic(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_reset_hw_ich8lan(ptr noundef %hw) #0 align 64 {
entry:
  %kum_cfg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %kum_cfg) #6
  %0 = ptrtoint ptr %kum_cfg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %kum_cfg, align 2, !annotation !254
  %call = tail call i32 @e1000e_disable_pcie_master(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_reset_hw_ich8lan.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_reset_hw_ich8lan, %if.then7)) #6
          to label %do.body12 [label %if.then7], !srcloc !258

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 64
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_reset_hw_ich8lan.__UNIQUE_ID_ddebug402, ptr noundef %4, ptr noundef nonnull @.str.46) #6
  br label %do.body12

do.body12:                                        ; preds = %if.then7, %do.body2, %entry.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_reset_hw_ich8lan.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_reset_hw_ich8lan, %if.then24)) #6
          to label %do.end31 [label %if.then24], !srcloc !258

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %netdev26 = getelementptr inbounds %struct.e1000_adapter, ptr %6, i32 0, i32 64
  %7 = ptrtoint ptr %netdev26 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_reset_hw_ich8lan.__UNIQUE_ID_ddebug403, ptr noundef %8, ptr noundef nonnull @.str.47) #6
  br label %do.end31

do.end31:                                         ; preds = %if.then24, %do.body12
  tail call void @__ew32(ptr noundef %hw, i32 noundef 216, i32 noundef -1) #6
  tail call void @__ew32(ptr noundef %hw, i32 noundef 256, i32 noundef 0) #6
  tail call void @__ew32(ptr noundef %hw, i32 noundef 1024, i32 noundef 8) #6
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp = icmp eq i32 %13, 6
  br i1 %cmp, label %if.then33, label %do.end31.if.end34_crit_edge

do.end31.if.end34_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then33:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__ew32(ptr noundef %hw, i32 noundef 4096, i32 noundef 8) #6
  tail call void @__ew32(ptr noundef %hw, i32 noundef 4104, i32 noundef 16) #6
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %type, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %do.end31.if.end34_crit_edge
  %15 = phi i32 [ %.pr, %if.then33 ], [ %13, %do.end31.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %15)
  %cmp37 = icmp eq i32 %15, 9
  br i1 %cmp37, label %if.then38, label %if.end34.if.end47_crit_edge

if.end34.if.end47_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then38:                                        ; preds = %if.end34
  %read.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 1
  %16 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %17(ptr noundef %hw, i16 noundef zeroext 27, i16 noundef zeroext 1, ptr noundef nonnull %kum_cfg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool40.not = icmp eq i32 %call.i, 0
  br i1 %tobool40.not, label %if.end42, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %kum_cfg to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %kum_cfg, align 2
  %nvm_k1_enabled45 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 2
  %20 = trunc i16 %19 to i8
  %21 = and i8 %20, 1
  %22 = ptrtoint ptr %nvm_k1_enabled45 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %nvm_k1_enabled45, align 2
  br label %if.end47

if.end47:                                         ; preds = %if.end42, %if.end34.if.end47_crit_edge
  %23 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_addr.i, align 4
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !256
  %26 = call i32 @llvm.bswap.i32(i32 %25) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %check_reset_block = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %27 = ptrtoint ptr %check_reset_block to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %check_reset_block, align 4
  %call49 = call i32 %28(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end47.if.end61_crit_edge

if.end47.if.end61_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then51:                                        ; preds = %if.end47
  %or = or i32 %26, -2147483648
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %30)
  %cmp54 = icmp eq i32 %30, 10
  br i1 %cmp54, label %land.lhs.true, label %if.then51.if.end61_crit_edge

if.then51.if.end61_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true:                                    ; preds = %if.then51
  %31 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i181 = getelementptr i8, ptr %32, i32 23380
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i181) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %34 = and i32 %33, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool58.not = icmp eq i32 %34, 0
  br i1 %tobool58.not, label %if.then59, label %land.lhs.true.if.end61_crit_edge

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then59:                                        ; preds = %land.lhs.true
  %35 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %36)
  %cmp.i = icmp ult i32 %36, 10
  br i1 %cmp.i, label %if.then59.if.end61_crit_edge, label %if.end.i

if.then59.if.end61_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.end.i:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 3840
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %40 = or i32 %39, -2147483648
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  call void @__ew32(ptr noundef %hw, i32 noundef 3840, i32 noundef %41) #6
  br label %if.end61

if.end61:                                         ; preds = %if.end.i, %if.then59.if.end61_crit_edge, %land.lhs.true.if.end61_crit_edge, %if.then51.if.end61_crit_edge, %if.end47.if.end61_crit_edge
  %ctrl.0 = phi i32 [ %26, %if.end47.if.end61_crit_edge ], [ %or, %land.lhs.true.if.end61_crit_edge ], [ %or, %if.then51.if.end61_crit_edge ], [ %or, %if.then59.if.end61_crit_edge ], [ %or, %if.end.i ]
  %call62 = call i32 @e1000_acquire_swflag_ich8lan(ptr noundef %hw)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_reset_hw_ich8lan.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_reset_hw_ich8lan, %if.then76)) #6
          to label %do.end83 [label %if.then76], !srcloc !258

if.then76:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  %netdev78 = getelementptr inbounds %struct.e1000_adapter, ptr %43, i32 0, i32 64
  %44 = ptrtoint ptr %netdev78 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %netdev78, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_reset_hw_ich8lan.__UNIQUE_ID_ddebug404, ptr noundef %45, ptr noundef nonnull @.str.48) #6
  br label %do.end83

do.end83:                                         ; preds = %if.then76, %if.end61
  %or84 = or i32 %ctrl.0, 67108864
  call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %or84) #6
  call void @msleep(i32 noundef 20) #6
  %46 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %47)
  %cmp87 = icmp eq i32 %47, 10
  br i1 %cmp87, label %if.then89, label %do.end83.if.end93_crit_edge

do.end83.if.end93_crit_edge:                      ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then89:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i183 = getelementptr i8, ptr %49, i32 60
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i183) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %51 = and i32 %50, -13
  %52 = or i32 %51, 8
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  call void @__ew32(ptr noundef %hw, i32 noundef 60, i32 noundef %53) #6
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %do.end83.if.end93_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool94.not = icmp eq i32 %call62, 0
  br i1 %tobool94.not, label %if.then95, label %if.end93.if.end97_crit_edge

if.end93.if.end97_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 4
  %state = getelementptr inbounds %struct.e1000_adapter, ptr %55, i32 0, i32 13
  call void @_clear_bit(i32 noundef 2, ptr noundef %state) #6
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end93.if.end97_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ctrl.0)
  %tobool99.not = icmp sgt i32 %ctrl.0, -1
  br i1 %tobool99.not, label %if.end97.if.end111_crit_edge, label %if.then100

if.end97.if.end111_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then100:                                       ; preds = %if.end97
  %get_cfg_done = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 6
  %56 = ptrtoint ptr %get_cfg_done to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %get_cfg_done, align 4
  %call103 = call i32 %57(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.then100.cleanup_crit_edge

if.then100.cleanup_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end106:                                        ; preds = %if.then100
  %call107 = call fastcc i32 @e1000_post_phy_reset_ich8lan(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end106.if.end111_crit_edge, label %if.end106.cleanup_crit_edge

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end106.if.end111_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.end111:                                        ; preds = %if.end106.if.end111_crit_edge, %if.end97.if.end111_crit_edge
  %58 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %59)
  %cmp114 = icmp eq i32 %59, 9
  br i1 %cmp114, label %if.then116, label %if.end111.if.end117_crit_edge

if.end111.if.end117_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

if.then116:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  call void @__ew32(ptr noundef %hw, i32 noundef 24400, i32 noundef 1701143909) #6
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %if.end111.if.end117_crit_edge
  call void @__ew32(ptr noundef %hw, i32 noundef 216, i32 noundef -1) #6
  %60 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i185 = getelementptr i8, ptr %61, i32 192
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i185) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %63 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i187 = getelementptr i8, ptr %64, i32 12292
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %66 = or i32 %65, 1280
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  call void @__ew32(ptr noundef %hw, i32 noundef 12292, i32 noundef %67) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end117, %if.end106.cleanup_crit_edge, %if.then100.cleanup_crit_edge, %if.then38.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end117 ], [ %call.i, %if.then38.cleanup_crit_edge ], [ %call103, %if.then100.cleanup_crit_edge ], [ %call107, %if.end106.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %kum_cfg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_init_hw_ich8lan(ptr noundef %hw) #0 align 64 {
entry:
  %i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mac1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %i) #6
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %i, align 2, !annotation !254
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 24
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !256
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %type.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp.i = icmp ugt i32 %6, 8
  %spec.select.v.i = select i1 %cmp.i, i32 5242880, i32 4194304
  %spec.select.i = or i32 %spec.select.v.i, %4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 24, i32 noundef %spec.select.i) #6
  %7 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %8, i32 14376
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %10 = or i32 %9, 16384
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void @__ew32(ptr noundef %hw, i32 noundef 14376, i32 noundef %11) #6
  %12 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i94.i = getelementptr i8, ptr %13, i32 14632
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %15 = or i32 %14, 16384
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void @__ew32(ptr noundef %hw, i32 noundef 14632, i32 noundef %16) #6
  %17 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i96.i = getelementptr i8, ptr %18, i32 14400
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96.i) #6, !srcloc !256
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %22)
  %cmp9.i = icmp eq i32 %22, 6
  %or11.i = or i32 %20, 805306368
  %reg.1.i = select i1 %cmp9.i, i32 %or11.i, i32 %20
  %or13.i = or i32 %reg.1.i, 226492416
  tail call void @__ew32(ptr noundef %hw, i32 noundef 14400, i32 noundef %or13.i) #6
  %23 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i98.i = getelementptr i8, ptr %24, i32 14656
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %26 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i100.i = getelementptr i8, ptr %27, i32 1024
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %29 = shl i32 %28, 24
  %30 = and i32 %29, 268435456
  %31 = and i32 %25, -86
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  %33 = or i32 %30, %32
  %or20.i = xor i32 %33, 1426063360
  tail call void @__ew32(ptr noundef %hw, i32 noundef 14656, i32 noundef %or20.i) #6
  %34 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %35)
  %cmp23.i = icmp eq i32 %35, 6
  br i1 %cmp23.i, label %if.then24.i, label %entry.if.end27.i_crit_edge

entry.if.end27.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then24.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i102.i = getelementptr i8, ptr %37, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %39 = and i32 %38, -129
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #6
  tail call void @__ew32(ptr noundef %hw, i32 noundef 8, i32 noundef %40) #6
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %entry.if.end27.i_crit_edge
  %41 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i104.i = getelementptr i8, ptr %42, i32 20488
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104.i) #6, !srcloc !256
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %45 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %46)
  %cmp32.i = icmp eq i32 %46, 6
  %spec.select90.v.i = select i1 %cmp32.i, i32 196800, i32 192
  %spec.select90.i = or i32 %spec.select90.v.i, %44
  tail call void @__ew32(ptr noundef %hw, i32 noundef 20488, i32 noundef %spec.select90.i) #6
  %47 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %48)
  %cmp38.i = icmp ugt i32 %48, 10
  br i1 %cmp38.i, label %if.then39.i, label %if.end27.i.e1000_initialize_hw_bits_ich8lan.exit_crit_edge

if.end27.i.e1000_initialize_hw_bits_ich8lan.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_initialize_hw_bits_ich8lan.exit

if.then39.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i106.i = getelementptr i8, ptr %50, i32 4108
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %52 = or i32 %51, 256
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #6
  tail call void @__ew32(ptr noundef %hw, i32 noundef 4108, i32 noundef %53) #6
  %54 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw_addr.i.i, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %57 = or i32 %56, 2048
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #6
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %58) #6
  br label %e1000_initialize_hw_bits_ich8lan.exit

e1000_initialize_hw_bits_ich8lan.exit:            ; preds = %if.then39.i, %if.end27.i.e1000_initialize_hw_bits_ich8lan.exit_crit_edge
  %59 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mac1, align 4
  %call = tail call i32 %60(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %e1000_initialize_hw_bits_ich8lan.exit.if.end10_crit_edge, label %do.body2

e1000_initialize_hw_bits_ich8lan.exit.if.end10_crit_edge: ; preds = %e1000_initialize_hw_bits_ich8lan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.body2:                                         ; preds = %e1000_initialize_hw_bits_ich8lan.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_init_hw_ich8lan.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_init_hw_ich8lan, %if.then7)) #6
          to label %if.end10 [label %if.then7], !srcloc !258

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %62, i32 0, i32 64
  %63 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_init_hw_ich8lan.__UNIQUE_ID_ddebug405, ptr noundef %64, ptr noundef nonnull @.str.50) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.body2, %e1000_initialize_hw_bits_ich8lan.exit.if.end10_crit_edge
  %rar_entry_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 18
  %65 = ptrtoint ptr %rar_entry_count to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %rar_entry_count, align 4
  tail call void @e1000e_init_rx_addrs(ptr noundef %hw, i16 noundef zeroext %66) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_init_hw_ich8lan.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_init_hw_ich8lan, %if.then24)) #6
          to label %do.end31 [label %if.then24], !srcloc !258

if.then24:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw, align 4
  %netdev26 = getelementptr inbounds %struct.e1000_adapter, ptr %68, i32 0, i32 64
  %69 = ptrtoint ptr %netdev26 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %netdev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_init_hw_ich8lan.__UNIQUE_ID_ddebug406, ptr noundef %70, ptr noundef nonnull @.str.51) #6
  br label %do.end31

do.end31:                                         ; preds = %if.then24, %if.end10
  %mta_reg_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 16
  %71 = ptrtoint ptr %mta_reg_count to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %mta_reg_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp133.not = icmp eq i16 %72, 0
  br i1 %cmp133.not, label %do.end31.for.end_crit_edge, label %do.end31.for.body_crit_edge

do.end31.for.body_crit_edge:                      ; preds = %do.end31
  br label %for.body

do.end31.for.end_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end31.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %do.end31.for.body_crit_edge ]
  %shl = shl nuw nsw i32 %indvars.iv, 2
  %add = add nuw nsw i32 %shl, 20992
  tail call void @__ew32(ptr noundef %hw, i32 noundef %add, i32 noundef 0) #6
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %73 = ptrtoint ptr %mta_reg_count to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %mta_reg_count, align 2
  %75 = zext i16 %74 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %75
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %76 = trunc i32 %indvars.iv.next to i16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %do.end31.for.end_crit_edge
  %storemerge.lcssa = phi i16 [ 0, %do.end31.for.end_crit_edge ], [ %76, %for.end.loopexit ]
  %77 = ptrtoint ptr %i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %storemerge.lcssa, ptr %i, align 2
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %78 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %79)
  %cmp35 = icmp eq i32 %79, 9
  br i1 %cmp35, label %if.then37, label %for.end.if.end46_crit_edge

for.end.if.end46_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then37:                                        ; preds = %for.end
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %80 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %81(ptr noundef %hw, i32 noundef 24625, ptr noundef nonnull %i) #6
  %82 = ptrtoint ptr %i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %i, align 2
  %84 = and i16 %83, -17
  store i16 %84, ptr %i, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %85 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write_reg.i, align 4
  %call.i117 = call i32 %86(ptr noundef %hw, i32 noundef 24625, i16 noundef zeroext %84) #6
  %87 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %88)
  %cmp.i119 = icmp eq i32 %88, 10
  br i1 %cmp.i119, label %land.lhs.true.i, label %if.then37.if.end.i_crit_edge

if.then37.if.end.i_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then37
  %89 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i121 = getelementptr i8, ptr %90, i32 23380
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i121) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %92 = and i32 %91, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i = icmp eq i32 %92, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %93 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %94)
  %cmp.i.i = icmp ult i32 %94, 10
  br i1 %cmp.i.i, label %if.then.i.if.end.i_crit_edge, label %if.end.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %96, i32 3840
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %98 = or i32 %97, -2147483648
  %99 = call i32 @llvm.bswap.i32(i32 %98) #6
  call void @__ew32(ptr noundef %hw, i32 noundef 3840, i32 noundef %99) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i, %if.then.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.then37.if.end.i_crit_edge
  %call1.i = call i32 @e1000e_phy_hw_reset_generic(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %e1000_phy_hw_reset_ich8lan.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

e1000_phy_hw_reset_ich8lan.exit:                  ; preds = %if.end.i
  %call5.i = call fastcc i32 @e1000_post_phy_reset_ich8lan(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool43.not = icmp eq i32 %call5.i, 0
  br i1 %tobool43.not, label %e1000_phy_hw_reset_ich8lan.exit.if.end46_crit_edge, label %e1000_phy_hw_reset_ich8lan.exit.cleanup_crit_edge

e1000_phy_hw_reset_ich8lan.exit.cleanup_crit_edge: ; preds = %e1000_phy_hw_reset_ich8lan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

e1000_phy_hw_reset_ich8lan.exit.if.end46_crit_edge: ; preds = %e1000_phy_hw_reset_ich8lan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.end46:                                         ; preds = %e1000_phy_hw_reset_ich8lan.exit.if.end46_crit_edge, %for.end.if.end46_crit_edge
  %setup_link = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 15
  %100 = ptrtoint ptr %setup_link to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %setup_link, align 4
  %call48 = call i32 %101(ptr noundef %hw) #6
  %102 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %103, i32 14376
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %105 = and i32 %104, -1056980738
  %106 = or i32 %105, 520093953
  %107 = call i32 @llvm.bswap.i32(i32 %106)
  call void @__ew32(ptr noundef %hw, i32 noundef 14376, i32 noundef %107) #6
  %108 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %109, i32 14632
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %111 = and i32 %110, -1056980738
  %112 = or i32 %111, 520093953
  %113 = call i32 @llvm.bswap.i32(i32 %112)
  call void @__ew32(ptr noundef %hw, i32 noundef 14632, i32 noundef %113) #6
  %114 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %115)
  %cmp59 = icmp eq i32 %115, 6
  %. = select i1 %cmp59, i32 63, i32 -64
  call void @e1000e_set_pcie_no_snoop(ptr noundef %hw, i32 noundef %.) #6
  %116 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %117)
  %cmp64 = icmp ugt i32 %117, 13
  br i1 %cmp64, label %if.then66, label %if.end46.if.end69_crit_edge

if.end46.if.end69_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then66:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %119, i32 24324
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %121 = or i32 %120, 1048576
  %122 = call i32 @llvm.bswap.i32(i32 %121)
  call void @__ew32(ptr noundef %hw, i32 noundef 24324, i32 noundef %122) #6
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end46.if.end69_crit_edge
  %123 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %124, i32 24
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %126 = or i32 %125, 512
  %127 = call i32 @llvm.bswap.i32(i32 %126)
  call void @__ew32(ptr noundef %hw, i32 noundef 24, i32 noundef %127) #6
  call void @e1000_clear_hw_cntrs_ich8lan(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %e1000_phy_hw_reset_ich8lan.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call48, %if.end69 ], [ %call5.i, %e1000_phy_hw_reset_ich8lan.exit.cleanup_crit_edge ], [ %call1.i, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %i) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_setup_link_ich8lan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %check_reset_block = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %0 = ptrtoint ptr %check_reset_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %check_reset_block, align 4
  %call = tail call i32 %1(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %requested_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requested_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %3)
  %cmp = icmp eq i32 %3, 255
  br i1 %cmp, label %if.then1, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp2 = icmp eq i32 %5, 9
  %. = select i1 %cmp2, i32 1, i32 3
  %6 = ptrtoint ptr %requested_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %., ptr %requested_mode, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then1, %if.end.if.end9_crit_edge
  %7 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %requested_mode, align 4
  %current_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  %9 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %current_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_setup_link_ich8lan.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_setup_link_ich8lan, %if.then18)) #6
          to label %do.end23 [label %if.then18], !srcloc !258

if.then18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %11, i32 0, i32 64
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 4
  %14 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_mode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_setup_link_ich8lan.__UNIQUE_ID_ddebug407, ptr noundef %13, ptr noundef nonnull @.str.53, i32 noundef %15) #6
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %if.end9
  %setup_physical_interface = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 16
  %16 = ptrtoint ptr %setup_physical_interface to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %setup_physical_interface, align 4
  %call26 = tail call i32 %17(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %do.end23.cleanup_crit_edge

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %do.end23
  %pause_time = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %pause_time to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %pause_time, align 4
  %conv = zext i16 %19 to i32
  tail call void @__ew32(ptr noundef %hw, i32 noundef 368, i32 noundef %conv) #6
  %type32 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %type32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type32, align 4
  %.off = add i32 %21, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %if.then49, label %if.end29.if.end58_crit_edge

if.end29.if.end58_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then49:                                        ; preds = %if.end29
  %refresh_time = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %refresh_time to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %refresh_time, align 2
  %conv51 = zext i16 %23 to i32
  tail call void @__ew32(ptr noundef %hw, i32 noundef 24384, i32 noundef %conv51) #6
  %24 = ptrtoint ptr %pause_time to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pause_time, align 4
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %26 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %27(ptr noundef %hw, i32 noundef 24635, i16 noundef zeroext %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool55.not = icmp eq i32 %call.i, 0
  br i1 %tobool55.not, label %if.then49.if.end58_crit_edge, label %if.then49.cleanup_crit_edge

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then49.if.end58_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.end58:                                         ; preds = %if.then49.if.end58_crit_edge, %if.end29.if.end58_crit_edge
  %call59 = tail call i32 @e1000e_set_fc_watermarks(ptr noundef %hw) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then49.cleanup_crit_edge, %do.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call59, %if.end58 ], [ 0, %entry.cleanup_crit_edge ], [ %call26, %do.end23.cleanup_crit_edge ], [ %call.i, %if.then49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_setup_copper_link_ich8lan(ptr noundef %hw) #0 align 64 {
entry:
  %reg_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_data) #6
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg_data, align 2, !annotation !254
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_addr.i, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %4 = and i32 %3, -1075314689
  %5 = or i32 %4, 1073741824
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %6) #6
  %call1 = tail call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 4, i16 noundef zeroext -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @e1000e_read_kmrn_reg(ptr noundef %hw, i32 noundef 9, ptr noundef nonnull %reg_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %reg_data to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg_data, align 2
  %9 = or i16 %8, 63
  store i16 %9, ptr %reg_data, align 2
  %call8 = call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 9, i16 noundef zeroext %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %11, label %if.end11.sw.epilog53_crit_edge [
    i32 6, label %sw.bb
    i32 8, label %if.end11.sw.bb16_crit_edge
    i32 9, label %if.end11.sw.bb16_crit_edge87
    i32 10, label %if.end11.sw.bb21_crit_edge
    i32 11, label %if.end11.sw.bb21_crit_edge88
    i32 7, label %sw.bb26
  ]

if.end11.sw.bb21_crit_edge88:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb21

if.end11.sw.bb21_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb21

if.end11.sw.bb16_crit_edge87:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16

if.end11.sw.bb16_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16

if.end11.sw.epilog53_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog53

sw.bb:                                            ; preds = %if.end11
  %call12 = call i32 @e1000e_copper_link_setup_igp(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %sw.bb.sw.epilog53_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.sw.epilog53_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog53

sw.bb16:                                          ; preds = %if.end11.sw.bb16_crit_edge, %if.end11.sw.bb16_crit_edge87
  %call17 = call i32 @e1000e_copper_link_setup_m88(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %sw.bb16.sw.epilog53_crit_edge, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb16.sw.epilog53_crit_edge:                    ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog53

sw.bb21:                                          ; preds = %if.end11.sw.bb21_crit_edge, %if.end11.sw.bb21_crit_edge88
  %call22 = call i32 @e1000_copper_link_setup_82577(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %sw.bb21.sw.epilog53_crit_edge, label %sw.bb21.cleanup_crit_edge

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb21.sw.epilog53_crit_edge:                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog53

sw.bb26:                                          ; preds = %if.end11
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %13 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %14(ptr noundef %hw, i32 noundef 28, ptr noundef nonnull %reg_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %if.end30, label %sw.bb26.cleanup_crit_edge

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %sw.bb26
  %15 = ptrtoint ptr %reg_data to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %reg_data, align 2
  %mdix = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 18
  %17 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mdix, align 2
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.113)
  switch i8 %18, label %sw.default [
    i8 1, label %sw.bb36
    i8 2, label %sw.bb40
  ]

sw.bb36:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %20 = and i16 %16, -193
  %21 = ptrtoint ptr %reg_data to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %reg_data, align 2
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %22 = and i16 %16, -193
  %23 = or i16 %22, 64
  %24 = ptrtoint ptr %reg_data to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %reg_data, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %25 = or i16 %16, 128
  %26 = ptrtoint ptr %reg_data to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %reg_data, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb40, %sw.bb36
  %27 = ptrtoint ptr %reg_data to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %reg_data, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %29 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_reg.i, align 4
  %call.i86 = call i32 %30(ptr noundef %hw, i32 noundef 28, i16 noundef zeroext %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool49.not = icmp eq i32 %call.i86, 0
  br i1 %tobool49.not, label %sw.epilog.sw.epilog53_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.sw.epilog53_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %sw.epilog.sw.epilog53_crit_edge, %sw.bb21.sw.epilog53_crit_edge, %sw.bb16.sw.epilog53_crit_edge, %sw.bb.sw.epilog53_crit_edge, %if.end11.sw.epilog53_crit_edge
  %call54 = call i32 @e1000e_setup_copper_link(ptr noundef %hw) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog53, %sw.epilog.cleanup_crit_edge, %sw.bb26.cleanup_crit_edge, %sw.bb21.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call54, %sw.epilog53 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call8, %if.end5.cleanup_crit_edge ], [ %call12, %sw.bb.cleanup_crit_edge ], [ %call17, %sw.bb16.cleanup_crit_edge ], [ %call22, %sw.bb21.cleanup_crit_edge ], [ %call.i, %sw.bb26.cleanup_crit_edge ], [ %call.i86, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_config_collision_dist_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_rar_set_generic(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_rar_get_count_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_has_link_generic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_k1_gig_workaround_hv(ptr noundef %hw, i1 noundef zeroext %link) unnamed_addr #0 align 64 {
entry:
  %status_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status_reg) #6
  %0 = ptrtoint ptr %status_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %status_reg, align 2
  %nvm_k1_enabled = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 2
  %1 = ptrtoint ptr %nvm_k1_enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %nvm_k1_enabled, align 2, !range !255
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cmp.not = icmp eq i32 %4, 9
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %5 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy, align 4
  %call = tail call i32 %6(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  br i1 %link, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %type8 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %type8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %8)
  %cmp9 = icmp eq i32 %8, 9
  br i1 %cmp9, label %if.then10, label %if.then6.if.end21_crit_edge

if.then6.if.end21_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then10:                                        ; preds = %if.then6
  %read_reg_locked.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 11
  %9 = ptrtoint ptr %read_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_reg_locked.i, align 4
  %call.i = call i32 %10(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %status_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.then10.release_crit_edge

if.then10.release_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end14:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %status_reg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %status_reg, align 2
  %13 = and i16 %12, -13312
  store i16 %13, ptr %status_reg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -29696, i16 %13)
  %cmp17 = icmp eq i16 %13, -29696
  %spec.select = select i1 %cmp17, i8 0, i8 %2
  %14 = ptrtoint ptr %type8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %type8, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end14, %if.then6.if.end21_crit_edge
  %15 = phi i32 [ %.pr, %if.end14 ], [ %8, %if.then6.if.end21_crit_edge ]
  %k1_enable.0 = phi i8 [ %spec.select, %if.end14 ], [ %2, %if.then6.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %15)
  %cmp24 = icmp eq i32 %15, 10
  br i1 %cmp24, label %if.then26, label %if.end21.if.end39_crit_edge

if.end21.if.end39_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then26:                                        ; preds = %if.end21
  %read_reg_locked.i76 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 11
  %16 = ptrtoint ptr %read_reg_locked.i76 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_reg_locked.i76, align 4
  %call.i77 = call i32 %17(ptr noundef %hw, i32 noundef 26, ptr noundef nonnull %status_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool28.not = icmp eq i32 %call.i77, 0
  br i1 %tobool28.not, label %if.end30, label %if.then26.release_crit_edge

if.then26.release_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end30:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %status_reg to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %status_reg, align 2
  %20 = and i16 %19, 4928
  store i16 %20, ptr %status_reg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4672, i16 %20)
  %cmp35 = icmp eq i16 %20, 4672
  %spec.select75 = select i1 %cmp35, i8 0, i8 %k1_enable.0
  br label %if.end39

if.end39:                                         ; preds = %if.end30, %if.end21.if.end39_crit_edge
  %k1_enable.1 = phi i8 [ %k1_enable.0, %if.end21.if.end39_crit_edge ], [ %spec.select75, %if.end30 ]
  %write_reg_locked.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %21 = ptrtoint ptr %write_reg_locked.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_reg_locked.i, align 4
  %call.i78 = call i32 %22(ptr noundef %hw, i32 noundef 24659, i16 noundef zeroext 256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool41.not = icmp eq i32 %call.i78, 0
  br i1 %tobool41.not, label %if.end39.if.end48_crit_edge, label %if.end39.release_crit_edge

if.end39.release_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.else:                                          ; preds = %if.end4
  %write_reg_locked.i79 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %23 = ptrtoint ptr %write_reg_locked.i79 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg_locked.i79, align 4
  %call.i80 = tail call i32 %24(ptr noundef %hw, i32 noundef 24659, i16 noundef zeroext 16640) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool45.not = icmp eq i32 %call.i80, 0
  br i1 %tobool45.not, label %if.else.if.end48_crit_edge, label %if.else.release_crit_edge

if.else.release_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.end48:                                         ; preds = %if.else.if.end48_crit_edge, %if.end39.if.end48_crit_edge
  %k1_enable.2.off0.in = phi i8 [ %k1_enable.1, %if.end39.if.end48_crit_edge ], [ %2, %if.else.if.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %k1_enable.2.off0.in)
  %k1_enable.2.off0 = icmp ne i8 %k1_enable.2.off0.in, 0
  %call50 = call i32 @e1000_configure_k1_ich8lan(ptr noundef %hw, i1 noundef zeroext %k1_enable.2.off0)
  br label %release

release:                                          ; preds = %if.end48, %if.else.release_crit_edge, %if.end39.release_crit_edge, %if.then26.release_crit_edge, %if.then10.release_crit_edge
  %ret_val.0 = phi i32 [ %call.i, %if.then10.release_crit_edge ], [ %call.i77, %if.then26.release_crit_edge ], [ %call.i78, %if.end39.release_crit_edge ], [ %call50, %if.end48 ], [ %call.i80, %if.else.release_crit_edge ]
  %release53 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %25 = ptrtoint ptr %release53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %release53, align 4
  call void %26(ptr noundef %hw) #6
  br label %cleanup

cleanup:                                          ; preds = %release, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.0, %release ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status_reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_speed_and_duplex_copper(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_platform_pm_pch_lpt(ptr noundef %hw, i1 noundef zeroext %link) unnamed_addr #0 align 64 {
entry:
  %speed = alloca i16, align 2
  %duplex = alloca i16, align 2
  %max_snoop = alloca i16, align 2
  %max_nosnoop = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %or4 = select i1 %link, i32 -1073709056, i32 1073741824
  br i1 %link, label %if.then, label %entry.if.end135_crit_edge

entry.if.end135_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %speed) #6
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %speed, align 2, !annotation !254
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %duplex) #6
  %1 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %duplex, align 2, !annotation !254
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_snoop) #6
  %2 = ptrtoint ptr %max_snoop to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %max_snoop, align 2, !annotation !254
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_nosnoop) #6
  %3 = ptrtoint ptr %max_nosnoop to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %max_nosnoop, align 2, !annotation !254
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %max_frame_size = getelementptr inbounds %struct.e1000_adapter, ptr %5, i32 0, i32 62
  %6 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_frame_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.body8, label %if.end17

do.body8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_platform_pm_pch_lpt.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_platform_pm_pch_lpt, %if.then13)) #6
          to label %cleanup [label %if.then13], !srcloc !258

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %9, i32 0, i32 64
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_platform_pm_pch_lpt.__UNIQUE_ID_ddebug357, ptr noundef %11, ptr noundef nonnull @.str.42) #6
  br label %cleanup.thread

if.end17:                                         ; preds = %if.then
  %get_link_up_info = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 9
  %12 = ptrtoint ptr %get_link_up_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_link_up_info, align 4
  %call18 = call i32 %13(ptr noundef %hw, ptr noundef nonnull %speed, ptr noundef nonnull %duplex) #6
  %14 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool19.not = icmp eq i16 %15, 0
  br i1 %tobool19.not, label %do.body22, label %if.end42

do.body22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_platform_pm_pch_lpt.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_platform_pm_pch_lpt, %if.then34)) #6
          to label %cleanup [label %if.then34], !srcloc !258

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %netdev36 = getelementptr inbounds %struct.e1000_adapter, ptr %17, i32 0, i32 64
  %18 = ptrtoint ptr %netdev36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev36, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_platform_pm_pch_lpt.__UNIQUE_ID_ddebug358, ptr noundef %19, ptr noundef nonnull @.str.43) #6
  br label %cleanup.thread

if.end42:                                         ; preds = %if.end17
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %20 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 4096
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  %23 = call i32 @llvm.bswap.i32(i32 %22) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %and = shl i32 %23, 9
  %mul = and i32 %and, 33553920
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %max_frame_size45 = getelementptr inbounds %struct.e1000_adapter, ptr %25, i32 0, i32 62
  %26 = ptrtoint ptr %max_frame_size45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_frame_size45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %27)
  %cmp = icmp ugt i32 %mul, %27
  br i1 %cmp, label %cond.end, label %if.end42.cleanup.thread186_crit_edge

if.end42.cleanup.thread186_crit_edge:             ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread186

cond.end:                                         ; preds = %if.end42
  %sub = sub i32 %mul, %27
  %28 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %speed, align 2
  %30 = udiv i16 16000, %29
  %div = zext i16 %30 to i32
  %mul50 = mul i32 %sub, %div
  %conv51 = zext i32 %mul50 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %mul50)
  %cmp52189 = icmp ugt i32 %mul50, 1023
  br i1 %cmp52189, label %cond.end.while.body_crit_edge, label %cond.end.cleanup.thread186_crit_edge

cond.end.cleanup.thread186_crit_edge:             ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread186

cond.end.while.body_crit_edge:                    ; preds = %cond.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %cond.end.while.body_crit_edge
  %scale.0191 = phi i16 [ %inc, %while.body.while.body_crit_edge ], [ 0, %cond.end.while.body_crit_edge ]
  %value.0190 = phi i64 [ %div55174, %while.body.while.body_crit_edge ], [ %conv51, %cond.end.while.body_crit_edge ]
  %inc = add i16 %scale.0191, 1
  %sub54 = add nuw nsw i64 %value.0190, 31
  %div55174 = lshr i64 %sub54, 5
  %cmp52 = icmp ugt i64 %value.0190, 32736
  br i1 %cmp52, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  %conv56 = zext i16 %inc to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %inc)
  %cmp57 = icmp ugt i16 %inc, 5
  br i1 %cmp57, label %do.body61, label %while.end.cleanup.thread186_crit_edge

while.end.cleanup.thread186_crit_edge:            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread186

do.body61:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_platform_pm_pch_lpt.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_platform_pm_pch_lpt, %if.then73)) #6
          to label %cleanup [label %if.then73], !srcloc !258

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 4
  %netdev75 = getelementptr inbounds %struct.e1000_adapter, ptr %32, i32 0, i32 64
  %33 = ptrtoint ptr %netdev75 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev75, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_platform_pm_pch_lpt.__UNIQUE_ID_ddebug359, ptr noundef %34, ptr noundef nonnull @.str.44, i32 noundef %conv56) #6
  br label %cleanup.thread

cleanup.thread186:                                ; preds = %while.end.cleanup.thread186_crit_edge, %cond.end.cleanup.thread186_crit_edge, %if.end42.cleanup.thread186_crit_edge
  %conv56201 = phi i32 [ %conv56, %while.end.cleanup.thread186_crit_edge ], [ 0, %cond.end.cleanup.thread186_crit_edge ], [ 0, %if.end42.cleanup.thread186_crit_edge ]
  %value.0.lcssa200 = phi i64 [ %div55174, %while.end.cleanup.thread186_crit_edge ], [ %conv51, %cond.end.cleanup.thread186_crit_edge ], [ 0, %if.end42.cleanup.thread186_crit_edge ]
  %shl84 = shl nuw nsw i32 %conv56201, 10
  %35 = zext i32 %shl84 to i64
  %or86 = or i64 %value.0.lcssa200, %35
  %conv87 = trunc i64 %or86 to i16
  %pdev = getelementptr inbounds %struct.e1000_adapter, ptr %25, i32 0, i32 65
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 32
  %call89 = call i32 @pci_read_config_word(ptr noundef %37, i32 noundef 168, ptr noundef nonnull %max_snoop) #6
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 4
  %pdev91 = getelementptr inbounds %struct.e1000_adapter, ptr %39, i32 0, i32 65
  %40 = ptrtoint ptr %pdev91 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev91, align 32
  %call92 = call i32 @pci_read_config_word(ptr noundef %41, i32 noundef 170, ptr noundef nonnull %max_nosnoop) #6
  %42 = ptrtoint ptr %max_snoop to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %max_snoop, align 2
  %44 = ptrtoint ptr %max_nosnoop to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %max_nosnoop, align 2
  %46 = call i16 @llvm.umax.i16(i16 %43, i16 %45)
  %47 = trunc i64 %or86 to i32
  %and106 = and i32 %47, 1023
  %and108 = lshr i32 %47, 10
  %48 = and i32 %and108, 7
  %mul109 = mul nuw nsw i32 %48, 5
  %mul111 = shl i32 %and106, %mul109
  %conv113 = zext i16 %46 to i32
  %and114 = and i32 %conv113, 1023
  %and116 = lshr i32 %conv113, 10
  %49 = and i32 %and116, 7
  %mul118 = mul nuw nsw i32 %49, 5
  %mul120 = shl i32 %and114, %mul118
  %conv122 = and i32 %mul111, 65535
  %conv123 = and i32 %mul120, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv122, i32 %conv123)
  %cmp124 = icmp ugt i32 %conv122, %conv123
  %lat_enc.0 = select i1 %cmp124, i16 %46, i16 %conv87
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_nosnoop) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_snoop) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %duplex) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed) #6
  %phi.cast = zext i16 %lat_enc.0 to i32
  %phi.bo = mul nuw i32 %phi.cast, 65537
  br label %if.end135

cleanup.thread:                                   ; preds = %if.then73, %if.then34, %if.then13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_nosnoop) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_snoop) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %duplex) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed) #6
  br label %cleanup141

cleanup:                                          ; preds = %do.body61, %do.body22, %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_nosnoop) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_snoop) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %duplex) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed) #6
  br label %cleanup141

if.end135:                                        ; preds = %cleanup.thread186, %entry.if.end135_crit_edge
  %lat_enc.2 = phi i32 [ 0, %entry.if.end135_crit_edge ], [ %phi.bo, %cleanup.thread186 ]
  %or140 = or i32 %lat_enc.2, %or4
  call void @__ew32(ptr noundef %hw, i32 noundef 248, i32 noundef %or140) #6
  br label %cleanup141

cleanup141:                                       ; preds = %if.end135, %cleanup, %cleanup.thread
  %retval.1 = phi i32 [ 0, %if.end135 ], [ -3, %cleanup ], [ -3, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_k1_workaround_lv(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %status_reg = alloca i16, align 2
  %pm_phy_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status_reg) #6
  %0 = ptrtoint ptr %status_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %status_reg, align 2
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %2)
  %cmp.not = icmp eq i32 %2, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup25_crit_edge

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup25

if.end:                                           ; preds = %entry
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %3 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %4(ptr noundef %hw, i32 noundef 26, ptr noundef nonnull %status_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup25_crit_edge

if.end.cleanup25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup25

if.end2:                                          ; preds = %if.end
  %5 = ptrtoint ptr %status_reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %status_reg, align 2
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 4160
  call void @__sanitizer_cov_trace_const_cmp4(i32 4160, i32 %and)
  %cmp3 = icmp eq i32 %and, 4160
  br i1 %cmp3, label %if.then5, label %if.end2.if.end24_crit_edge

if.end2.if.end24_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then5:                                         ; preds = %if.end2
  %and7 = and i32 %conv, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pm_phy_reg) #6
  %7 = ptrtoint ptr %pm_phy_reg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %pm_phy_reg, align 2, !annotation !254
  %8 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg.i, align 4
  %call.i42 = call i32 %9(ptr noundef %hw, i32 noundef 24657, ptr noundef nonnull %pm_phy_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool11.not = icmp eq i32 %call.i42, 0
  br i1 %tobool11.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pm_phy_reg) #6
  br label %cleanup25

cleanup:                                          ; preds = %if.then9
  %10 = ptrtoint ptr %pm_phy_reg to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pm_phy_reg, align 2
  %12 = and i16 %11, -16385
  store i16 %12, ptr %pm_phy_reg, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %13 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg.i, align 4
  %call.i43 = call i32 %14(ptr noundef %hw, i32 noundef 24657, i16 noundef zeroext %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool18.not = icmp eq i32 %call.i43, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pm_phy_reg) #6
  br i1 %tobool18.not, label %cleanup.if.end24_crit_edge, label %cleanup.cleanup25_crit_edge

cleanup.cleanup25_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup25

cleanup.if.end24_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 36
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %18 = and i32 %17, -117440513
  %19 = or i32 %18, 50331648
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  call void @__ew32(ptr noundef %hw, i32 noundef 36, i32 noundef %20) #6
  br label %if.end24

if.end24:                                         ; preds = %if.else, %cleanup.if.end24_crit_edge, %if.end2.if.end24_crit_edge
  br label %cleanup25

cleanup25:                                        ; preds = %if.end24, %cleanup.cleanup25_crit_edge, %cleanup.thread, %if.end.cleanup25_crit_edge, %entry.cleanup25_crit_edge
  %retval.1 = phi i32 [ 0, %if.end24 ], [ %call.i43, %cleanup.cleanup25_crit_edge ], [ 0, %entry.cleanup25_crit_edge ], [ %call.i, %if.end.cleanup25_crit_edge ], [ %call.i42, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status_reg) #6
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_link_stall_workaround_hv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_check_downshift(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_config_fc_after_link_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_clear_hw_cntrs_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_bus_info_pcie(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_disable_pcie_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_post_phy_reset_ich8lan(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %reg_data.i = alloca i16, align 2
  %reg_addr.i = alloca i16, align 2
  %data.i.i68 = alloca i16, align 2
  %data.i.i = alloca i16, align 2
  %phy_data.i = alloca i16, align 2
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !254
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %check_reset_block = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %1 = ptrtoint ptr %check_reset_block to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %check_reset_block, align 4
  %call = tail call i32 %2(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %4, label %if.end.sw.epilog_crit_edge [
    i32 9, label %if.end.i
    i32 10, label %if.end.i74
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data.i) #6
  %6 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %phy_data.i, align 2, !annotation !254
  %type1.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %8)
  %cmp2.i = icmp eq i32 %8, 10
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.lor.lhs.false15.i_crit_edge

if.end.i.lor.lhs.false15.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false15.i

if.then3.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #6
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %data.i.i, align 2, !annotation !254
  %read_reg.i.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %10 = ptrtoint ptr %read_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_reg.i.i.i, align 4
  %call.i.i.i = call i32 %11(ptr noundef %hw, i32 noundef 24624, ptr noundef nonnull %data.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %e1000_set_mdio_slow_mode_hv.exit.i, label %e1000_set_mdio_slow_mode_hv.exit.thread.i

e1000_set_mdio_slow_mode_hv.exit.thread.i:        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #6
  br label %e1000_hv_phy_workarounds_ich8lan.exit.thread

e1000_set_mdio_slow_mode_hv.exit.i:               ; preds = %if.then3.i
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %data.i.i, align 2
  %14 = or i16 %13, 1024
  store i16 %14, ptr %data.i.i, align 2
  %write_reg.i.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %15 = ptrtoint ptr %write_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_reg.i.i.i, align 4
  %call.i7.i.i = call i32 %16(ptr noundef %hw, i32 noundef 24624, i16 noundef zeroext %14) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i)
  %tobool.not.i = icmp eq i32 %call.i7.i.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %e1000_set_mdio_slow_mode_hv.exit.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge

e1000_set_mdio_slow_mode_hv.exit.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge: ; preds = %e1000_set_mdio_slow_mode_hv.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_hv_phy_workarounds_ich8lan.exit.thread

if.end6.i:                                        ; preds = %e1000_set_mdio_slow_mode_hv.exit.i
  %17 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr.i = load i32, ptr %type1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %.pr.i)
  %cmp9.i = icmp eq i32 %.pr.i, 10
  br i1 %cmp9.i, label %land.lhs.true.i, label %if.end6.i.lor.lhs.false15.i_crit_edge

if.end6.i.lor.lhs.false15.i_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false15.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %revision.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 11
  %18 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %revision.i, align 4
  %.off.i = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %land.lhs.true.i.if.then23.i_crit_edge, label %land.lhs.true.i.if.end32.i_crit_edge

land.lhs.true.i.if.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

land.lhs.true.i.if.then23.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.i

lor.lhs.false15.i:                                ; preds = %if.end6.i.lor.lhs.false15.i_crit_edge, %if.end.i.lor.lhs.false15.i_crit_edge
  %20 = phi i32 [ %.pr.i, %if.end6.i.lor.lhs.false15.i_crit_edge ], [ %8, %if.end.i.lor.lhs.false15.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %20)
  %cmp18.i = icmp eq i32 %20, 9
  br i1 %cmp18.i, label %land.lhs.true19.i, label %lor.lhs.false15.i.if.end32.i_crit_edge

lor.lhs.false15.i.if.end32.i_crit_edge:           ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

land.lhs.true19.i:                                ; preds = %lor.lhs.false15.i
  %revision21.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 11
  %21 = ptrtoint ptr %revision21.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %revision21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp22.i = icmp eq i32 %22, 1
  br i1 %cmp22.i, label %land.lhs.true19.i.if.then23.i_crit_edge, label %land.lhs.true19.i.if.end32.i_crit_edge

land.lhs.true19.i.if.end32.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

land.lhs.true19.i.if.then23.i_crit_edge:          ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.i

if.then23.i:                                      ; preds = %land.lhs.true19.i.if.then23.i_crit_edge, %land.lhs.true.i.if.then23.i_crit_edge
  %write_reg.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %23 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg.i.i, align 4
  %call.i.i = call i32 %24(ptr noundef %hw, i32 noundef 24633, i16 noundef zeroext 17457) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool25.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.then23.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge

if.then23.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_hv_phy_workarounds_ich8lan.exit.thread

if.end27.i:                                       ; preds = %if.then23.i
  %25 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_reg.i.i, align 4
  %call.i132.i = call i32 %26(ptr noundef %hw, i32 noundef 24656, i16 noundef zeroext -24060) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132.i)
  %tobool29.not.i = icmp eq i32 %call.i132.i, 0
  br i1 %tobool29.not.i, label %if.end27.i.if.end32.i_crit_edge, label %if.end27.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge

if.end27.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_hv_phy_workarounds_ich8lan.exit.thread

if.end27.i.if.end32.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end27.i.if.end32.i_crit_edge, %land.lhs.true19.i.if.end32.i_crit_edge, %lor.lhs.false15.i.if.end32.i_crit_edge, %land.lhs.true.i.if.end32.i_crit_edge
  %27 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %28)
  %cmp35.i = icmp eq i32 %28, 9
  br i1 %cmp35.i, label %if.then36.i, label %if.end32.i.if.end47.i_crit_edge

if.end32.i.if.end47.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.then36.i:                                      ; preds = %if.end32.i
  %revision38.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 11
  %29 = ptrtoint ptr %revision38.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %revision38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp39.i = icmp ult i32 %30, 2
  br i1 %cmp39.i, label %if.then40.i, label %if.then36.i.if.end47.i_crit_edge

if.then36.i.if.end47.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.then40.i:                                      ; preds = %if.then36.i
  %call41.i = call i32 @e1000e_phy_sw_reset(ptr noundef %hw) #6
  %write_reg.i133.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %31 = ptrtoint ptr %write_reg.i133.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_reg.i133.i, align 4
  %call.i134.i = call i32 %32(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext 12608) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134.i)
  %tobool43.not.i = icmp eq i32 %call.i134.i, 0
  br i1 %tobool43.not.i, label %if.then40.i.if.end47.i_crit_edge, label %if.then40.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge

if.then40.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge: ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_hv_phy_workarounds_ich8lan.exit.thread

if.then40.i.if.end47.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then40.i.if.end47.i_crit_edge, %if.then36.i.if.end47.i_crit_edge, %if.end32.i.if.end47.i_crit_edge
  %33 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy, align 4
  %call49.i = call i32 %34(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.end47.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge

if.end47.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_hv_phy_workarounds_ich8lan.exit.thread

if.end52.i:                                       ; preds = %if.end47.i
  %addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 8
  %35 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %addr.i, align 4
  %call54.i = call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 31, i16 noundef zeroext 0) #6
  %release.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %36 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %release.i, align 4
  call void %37(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool57.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool57.not.i, label %if.end59.i, label %if.end52.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge

if.end52.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_hv_phy_workarounds_ich8lan.exit.thread

if.end59.i:                                       ; preds = %if.end52.i
  %call60.i = call fastcc i32 @e1000_k1_gig_workaround_hv(ptr noundef %hw, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.end63.i, label %if.end59.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge

if.end59.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge: ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_hv_phy_workarounds_ich8lan.exit.thread

if.end63.i:                                       ; preds = %if.end59.i
  %38 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy, align 4
  %call67.i = call i32 %39(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.end70.i, label %if.end63.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge

if.end63.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_hv_phy_workarounds_ich8lan.exit.thread

if.end70.i:                                       ; preds = %if.end63.i
  %read_reg_locked.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 11
  %40 = ptrtoint ptr %read_reg_locked.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_reg_locked.i.i, align 4
  %call.i135.i = call i32 %41(ptr noundef %hw, i32 noundef 24625, ptr noundef nonnull %phy_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135.i)
  %tobool72.not.i = icmp eq i32 %call.i135.i, 0
  br i1 %tobool72.not.i, label %if.end74.i, label %if.end70.i.e1000_hv_phy_workarounds_ich8lan.exit.thread111_crit_edge

if.end70.i.e1000_hv_phy_workarounds_ich8lan.exit.thread111_crit_edge: ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_hv_phy_workarounds_ich8lan.exit.thread111

if.end74.i:                                       ; preds = %if.end70.i
  %42 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %phy_data.i, align 2
  %44 = and i16 %43, 255
  %write_reg_locked.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %45 = ptrtoint ptr %write_reg_locked.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_reg_locked.i.i, align 4
  %call.i136.i = call i32 %46(ptr noundef %hw, i32 noundef 24625, i16 noundef zeroext %44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136.i)
  %tobool77.not.i = icmp eq i32 %call.i136.i, 0
  br i1 %tobool77.not.i, label %if.end79.i, label %if.end74.i.e1000_hv_phy_workarounds_ich8lan.exit.thread111_crit_edge

if.end74.i.e1000_hv_phy_workarounds_ich8lan.exit.thread111_crit_edge: ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_hv_phy_workarounds_ich8lan.exit.thread111

if.end79.i:                                       ; preds = %if.end74.i
  %47 = ptrtoint ptr %write_reg_locked.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_reg_locked.i.i, align 4
  %call.i.i.i.i = call i32 %48(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext 2183) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %e1000_hv_phy_workarounds_ich8lan.exit, label %if.end79.i.e1000_hv_phy_workarounds_ich8lan.exit.thread111_crit_edge

if.end79.i.e1000_hv_phy_workarounds_ich8lan.exit.thread111_crit_edge: ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_hv_phy_workarounds_ich8lan.exit.thread111

e1000_hv_phy_workarounds_ich8lan.exit.thread:     ; preds = %if.end63.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge, %if.end59.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge, %if.end52.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge, %if.end47.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge, %if.then40.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge, %if.end27.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge, %if.then23.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge, %e1000_set_mdio_slow_mode_hv.exit.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge, %e1000_set_mdio_slow_mode_hv.exit.thread.i
  %retval.0.i.ph = phi i32 [ %call.i.i.i, %e1000_set_mdio_slow_mode_hv.exit.thread.i ], [ %call67.i, %if.end63.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge ], [ %call60.i, %if.end59.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge ], [ %call54.i, %if.end52.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge ], [ %call49.i, %if.end47.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge ], [ %call.i134.i, %if.then40.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge ], [ %call.i132.i, %if.end27.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge ], [ %call.i.i, %if.then23.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge ], [ %call.i7.i.i, %e1000_set_mdio_slow_mode_hv.exit.i.e1000_hv_phy_workarounds_ich8lan.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i) #6
  br label %cleanup

e1000_hv_phy_workarounds_ich8lan.exit.thread111:  ; preds = %if.end79.i.e1000_hv_phy_workarounds_ich8lan.exit.thread111_crit_edge, %if.end74.i.e1000_hv_phy_workarounds_ich8lan.exit.thread111_crit_edge, %if.end70.i.e1000_hv_phy_workarounds_ich8lan.exit.thread111_crit_edge
  %ret_val.0.i.ph = phi i32 [ %call.i.i.i.i, %if.end79.i.e1000_hv_phy_workarounds_ich8lan.exit.thread111_crit_edge ], [ %call.i136.i, %if.end74.i.e1000_hv_phy_workarounds_ich8lan.exit.thread111_crit_edge ], [ %call.i135.i, %if.end70.i.e1000_hv_phy_workarounds_ich8lan.exit.thread111_crit_edge ]
  %49 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %release.i, align 4
  call void %50(ptr noundef %hw) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i) #6
  br label %cleanup

e1000_hv_phy_workarounds_ich8lan.exit:            ; preds = %if.end79.i
  %51 = ptrtoint ptr %write_reg_locked.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_reg_locked.i.i, align 4
  %call.i13.i.i.i = call i32 %52(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext 52) #6
  %53 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %release.i, align 4
  call void %54(ptr noundef %hw) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i.i.i)
  %tobool2.not = icmp eq i32 %call.i13.i.i.i, 0
  br i1 %tobool2.not, label %e1000_hv_phy_workarounds_ich8lan.exit.sw.epilogthread-pre-split_crit_edge, label %e1000_hv_phy_workarounds_ich8lan.exit.cleanup_crit_edge

e1000_hv_phy_workarounds_ich8lan.exit.cleanup_crit_edge: ; preds = %e1000_hv_phy_workarounds_ich8lan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

e1000_hv_phy_workarounds_ich8lan.exit.sw.epilogthread-pre-split_crit_edge: ; preds = %e1000_hv_phy_workarounds_ich8lan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilogthread-pre-split

if.end.i74:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i68) #6
  %55 = ptrtoint ptr %data.i.i68 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 -1, ptr %data.i.i68, align 2, !annotation !254
  %read_reg.i.i.i71 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %56 = ptrtoint ptr %read_reg.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read_reg.i.i.i71, align 4
  %call.i.i.i72 = call i32 %57(ptr noundef %hw, i32 noundef 24624, ptr noundef nonnull %data.i.i68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i72)
  %tobool.not.i.i73 = icmp eq i32 %call.i.i.i72, 0
  br i1 %tobool.not.i.i73, label %e1000_set_mdio_slow_mode_hv.exit.i79, label %e1000_set_mdio_slow_mode_hv.exit.thread.i75

e1000_set_mdio_slow_mode_hv.exit.thread.i75:      ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i68) #6
  br label %cleanup

e1000_set_mdio_slow_mode_hv.exit.i79:             ; preds = %if.end.i74
  %58 = ptrtoint ptr %data.i.i68 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %data.i.i68, align 2
  %60 = or i16 %59, 1024
  store i16 %60, ptr %data.i.i68, align 2
  %write_reg.i.i.i76 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %61 = ptrtoint ptr %write_reg.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_reg.i.i.i76, align 4
  %call.i7.i.i77 = call i32 %62(ptr noundef %hw, i32 noundef 24624, i16 noundef zeroext %60) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i77)
  %tobool.not.i78 = icmp eq i32 %call.i7.i.i77, 0
  br i1 %tobool.not.i78, label %if.end2.i, label %e1000_set_mdio_slow_mode_hv.exit.i79.cleanup_crit_edge

e1000_set_mdio_slow_mode_hv.exit.i79.cleanup_crit_edge: ; preds = %e1000_set_mdio_slow_mode_hv.exit.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2.i:                                        ; preds = %e1000_set_mdio_slow_mode_hv.exit.i79
  %63 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phy, align 4
  %call3.i = call i32 %64(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i83, label %if.end2.i.cleanup_crit_edge

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i83:                                      ; preds = %if.end2.i
  %write_reg_locked.i.i.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %65 = ptrtoint ptr %write_reg_locked.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_reg_locked.i.i.i.i, align 4
  %call.i.i.i.i81 = call i32 %66(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext 2127) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i81)
  %tobool.not.i.i.i82 = icmp eq i32 %call.i.i.i.i81, 0
  br i1 %tobool.not.i.i.i82, label %e1000_write_emi_reg_locked.exit.i, label %if.end6.i83.e1000_lv_phy_workarounds_ich8lan.exit.thread117_crit_edge

if.end6.i83.e1000_lv_phy_workarounds_ich8lan.exit.thread117_crit_edge: ; preds = %if.end6.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_lv_phy_workarounds_ich8lan.exit.thread117

e1000_write_emi_reg_locked.exit.i:                ; preds = %if.end6.i83
  %67 = ptrtoint ptr %write_reg_locked.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write_reg_locked.i.i.i.i, align 4
  %call.i13.i.i.i84 = call i32 %68(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext 52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i.i.i84)
  %tobool8.not.i = icmp eq i32 %call.i13.i.i.i84, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %e1000_write_emi_reg_locked.exit.i.e1000_lv_phy_workarounds_ich8lan.exit.thread117_crit_edge

e1000_write_emi_reg_locked.exit.i.e1000_lv_phy_workarounds_ich8lan.exit.thread117_crit_edge: ; preds = %e1000_write_emi_reg_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_lv_phy_workarounds_ich8lan.exit.thread117

if.end10.i:                                       ; preds = %e1000_write_emi_reg_locked.exit.i
  %69 = ptrtoint ptr %write_reg_locked.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_reg_locked.i.i.i.i, align 4
  %call.i.i.i28.i = call i32 %70(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext 9233) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i28.i)
  %tobool.not.i.i29.i = icmp eq i32 %call.i.i.i28.i, 0
  br i1 %tobool.not.i.i29.i, label %e1000_lv_phy_workarounds_ich8lan.exit, label %if.end10.i.e1000_lv_phy_workarounds_ich8lan.exit.thread117_crit_edge

if.end10.i.e1000_lv_phy_workarounds_ich8lan.exit.thread117_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_lv_phy_workarounds_ich8lan.exit.thread117

e1000_lv_phy_workarounds_ich8lan.exit.thread117:  ; preds = %if.end10.i.e1000_lv_phy_workarounds_ich8lan.exit.thread117_crit_edge, %e1000_write_emi_reg_locked.exit.i.e1000_lv_phy_workarounds_ich8lan.exit.thread117_crit_edge, %if.end6.i83.e1000_lv_phy_workarounds_ich8lan.exit.thread117_crit_edge
  %ret_val.0.i85.ph = phi i32 [ %call.i.i.i.i81, %if.end6.i83.e1000_lv_phy_workarounds_ich8lan.exit.thread117_crit_edge ], [ %call.i.i.i28.i, %if.end10.i.e1000_lv_phy_workarounds_ich8lan.exit.thread117_crit_edge ], [ %call.i13.i.i.i84, %e1000_write_emi_reg_locked.exit.i.e1000_lv_phy_workarounds_ich8lan.exit.thread117_crit_edge ]
  %release14.i119 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %71 = ptrtoint ptr %release14.i119 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %release14.i119, align 4
  call void %72(ptr noundef %hw) #6
  br label %cleanup

e1000_lv_phy_workarounds_ich8lan.exit:            ; preds = %if.end10.i
  %73 = ptrtoint ptr %write_reg_locked.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write_reg_locked.i.i.i.i, align 4
  %call.i13.i.i30.i = call i32 %74(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext 5) #6
  %release14.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %75 = ptrtoint ptr %release14.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %release14.i, align 4
  call void %76(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i.i30.i)
  %tobool7.not = icmp eq i32 %call.i13.i.i30.i, 0
  br i1 %tobool7.not, label %e1000_lv_phy_workarounds_ich8lan.exit.sw.epilogthread-pre-split_crit_edge, label %e1000_lv_phy_workarounds_ich8lan.exit.cleanup_crit_edge

e1000_lv_phy_workarounds_ich8lan.exit.cleanup_crit_edge: ; preds = %e1000_lv_phy_workarounds_ich8lan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

e1000_lv_phy_workarounds_ich8lan.exit.sw.epilogthread-pre-split_crit_edge: ; preds = %e1000_lv_phy_workarounds_ich8lan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %e1000_lv_phy_workarounds_ich8lan.exit.sw.epilogthread-pre-split_crit_edge, %e1000_hv_phy_workarounds_ich8lan.exit.sw.epilogthread-pre-split_crit_edge
  %77 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr = load i32, ptr %type, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %if.end.sw.epilog_crit_edge
  %78 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %4, %if.end.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %78)
  %cmp = icmp ugt i32 %78, 8
  br i1 %cmp, label %if.then12, label %sw.epilog.if.end16_crit_edge

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %79 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %80(ptr noundef %hw, i32 noundef 24625, ptr noundef nonnull %reg) #6
  %81 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %reg, align 2
  %83 = and i16 %82, -17
  store i16 %83, ptr %reg, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %84 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write_reg.i, align 4
  %call.i88 = call i32 %85(ptr noundef %hw, i32 noundef 24625, i16 noundef zeroext %83) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %sw.epilog.if.end16_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_data.i) #6
  %86 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 -1, ptr %reg_data.i, align 2, !annotation !254
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_addr.i) #6
  %87 = ptrtoint ptr %reg_addr.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 -1, ptr %reg_addr.i, align 2, !annotation !254
  %88 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type, align 4
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %89, label %if.end16.e1000_sw_lcd_config_ich8lan.exit.thread_crit_edge [
    i32 6, label %sw.bb.i
    i32 9, label %if.end16.sw.bb13.i_crit_edge
    i32 10, label %if.end16.sw.bb13.i_crit_edge131
    i32 11, label %if.end16.sw.bb13.i_crit_edge132
    i32 12, label %if.end16.sw.bb13.i_crit_edge133
    i32 13, label %if.end16.sw.bb13.i_crit_edge134
    i32 14, label %if.end16.sw.bb13.i_crit_edge135
    i32 15, label %if.end16.sw.bb13.i_crit_edge136
    i32 16, label %if.end16.sw.bb13.i_crit_edge137
    i32 17, label %if.end16.sw.bb13.i_crit_edge138
  ]

if.end16.sw.bb13.i_crit_edge138:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

if.end16.sw.bb13.i_crit_edge137:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

if.end16.sw.bb13.i_crit_edge136:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

if.end16.sw.bb13.i_crit_edge135:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

if.end16.sw.bb13.i_crit_edge134:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

if.end16.sw.bb13.i_crit_edge133:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

if.end16.sw.bb13.i_crit_edge132:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

if.end16.sw.bb13.i_crit_edge131:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

if.end16.sw.bb13.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

if.end16.e1000_sw_lcd_config_ich8lan.exit.thread_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_sw_lcd_config_ich8lan.exit.thread

sw.bb.i:                                          ; preds = %if.end16
  %type2.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %91 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %type2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %92)
  %cmp.not.i90 = icmp eq i32 %92, 6
  br i1 %cmp.not.i90, label %if.end.i92, label %sw.bb.i.e1000_sw_lcd_config_ich8lan.exit.thread_crit_edge

sw.bb.i.e1000_sw_lcd_config_ich8lan.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_sw_lcd_config_ich8lan.exit.thread

if.end.i92:                                       ; preds = %sw.bb.i
  %93 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw, align 4
  %pdev.i = getelementptr inbounds %struct.e1000_adapter, ptr %94, i32 0, i32 65
  %95 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pdev.i, align 32
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %96, i32 0, i32 8
  %97 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %device.i, align 2
  %99 = and i16 %98, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4170, i16 %99)
  %switch.i91 = icmp eq i16 %99, 4170
  br i1 %switch.i91, label %if.end.i92.sw.epilog.i_crit_edge, label %if.end.i92.sw.bb13.i_crit_edge

if.end.i92.sw.bb13.i_crit_edge:                   ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

if.end.i92.sw.epilog.i_crit_edge:                 ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end.i92.sw.bb13.i_crit_edge, %if.end16.sw.bb13.i_crit_edge, %if.end16.sw.bb13.i_crit_edge131, %if.end16.sw.bb13.i_crit_edge132, %if.end16.sw.bb13.i_crit_edge133, %if.end16.sw.bb13.i_crit_edge134, %if.end16.sw.bb13.i_crit_edge135, %if.end16.sw.bb13.i_crit_edge136, %if.end16.sw.bb13.i_crit_edge137, %if.end16.sw.bb13.i_crit_edge138
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb13.i, %if.end.i92.sw.epilog.i_crit_edge
  %sw_cfg_mask.0.i = phi i32 [ 134217728, %sw.bb13.i ], [ 1, %if.end.i92.sw.epilog.i_crit_edge ]
  %100 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %phy, align 4
  %call.i93 = call i32 %101(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i94, label %if.end16.i, label %e1000_sw_lcd_config_ich8lan.exit.thread123

e1000_sw_lcd_config_ich8lan.exit.thread123:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data.i) #6
  br label %cleanup

if.end16.i:                                       ; preds = %sw.epilog.i
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %102 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %103, i32 40
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !256
  %105 = call i32 @llvm.bswap.i32(i32 %104) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %and.i = and i32 %105, %sw_cfg_mask.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.e1000_sw_lcd_config_ich8lan.exit_crit_edge, label %if.end20.i

if.end16.i.e1000_sw_lcd_config_ich8lan.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_sw_lcd_config_ich8lan.exit

if.end20.i:                                       ; preds = %if.end16.i
  %106 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i151.i = getelementptr i8, ptr %107, i32 3840
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151.i) #6, !srcloc !256
  %109 = call i32 @llvm.bswap.i32(i32 %108) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %110 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %111)
  %cmp24.i = icmp ugt i32 %111, 9
  %and26.i = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %or.cond.i = select i1 %cmp24.i, i1 true, i1 %tobool27.not.i
  br i1 %or.cond.i, label %if.end29.i, label %if.end20.i.e1000_sw_lcd_config_ich8lan.exit_crit_edge

if.end20.i.e1000_sw_lcd_config_ich8lan.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_sw_lcd_config_ich8lan.exit

if.end29.i:                                       ; preds = %if.end20.i
  %112 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i153.i = getelementptr i8, ptr %113, i32 3848
  %114 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153.i) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %115 = lshr i32 %114, 8
  %shr.i = and i32 %115, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool32.not.i = icmp eq i32 %shr.i, 0
  br i1 %tobool32.not.i, label %if.end29.i.e1000_sw_lcd_config_ich8lan.exit_crit_edge, label %if.end34.i

if.end29.i.e1000_sw_lcd_config_ich8lan.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_sw_lcd_config_ich8lan.exit

if.end34.i:                                       ; preds = %if.end29.i
  %116 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %117)
  %cmp39.i95 = icmp eq i32 %117, 9
  %and42.i = and i32 %109, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i96 = icmp eq i32 %and42.i, 0
  %or.cond149.i = select i1 %cmp39.i95, i1 %tobool43.not.i96, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %117)
  %cmp47.i = icmp ugt i32 %117, 9
  %or.cond159.i = or i1 %cmp47.i, %or.cond149.i
  br i1 %or.cond159.i, label %if.then49.i, label %if.end34.i.for.body.lr.ph.i_crit_edge

if.end34.i.for.body.lr.ph.i_crit_edge:            ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.i

if.then49.i:                                      ; preds = %if.end34.i
  %call50.i = call fastcc i32 @e1000_write_smbus_addr(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end53.i, label %if.then49.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge

if.then49.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge: ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_sw_lcd_config_ich8lan.exit.thread127

if.end53.i:                                       ; preds = %if.then49.i
  %118 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i155.i = getelementptr i8, ptr %119, i32 3584
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155.i) #6, !srcloc !256
  %121 = call i32 @llvm.bswap.i32(i32 %120) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %conv55.i = trunc i32 %121 to i16
  %call56.i = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %hw, i32 noundef 24606, i16 noundef zeroext %conv55.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i97 = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i97, label %if.end53.i.for.body.lr.ph.i_crit_edge, label %if.end53.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge

if.end53.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_sw_lcd_config_ich8lan.exit.thread127

if.end53.i.for.body.lr.ph.i_crit_edge:            ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end53.i.for.body.lr.ph.i_crit_edge, %if.end34.i.for.body.lr.ph.i_crit_edge
  %122 = lshr i32 %109, 15
  %conv61.i = and i32 %122, 8190
  %read.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 1
  %write_reg_locked.i.i98 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %phy_page.0162.i = phi i16 [ 0, %for.body.lr.ph.i ], [ %phy_page.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0161.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mul.i = shl nuw i32 %i.0161.i, 1
  %add.i = add nuw nsw i32 %mul.i, %conv61.i
  %conv65.i = trunc i32 %add.i to i16
  %123 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read.i.i, align 4
  %call.i.i99 = call i32 %124(ptr noundef %hw, i16 noundef zeroext %conv65.i, i16 noundef zeroext 1, ptr noundef nonnull %reg_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i99)
  %tobool67.not.i = icmp eq i32 %call.i.i99, 0
  br i1 %tobool67.not.i, label %if.end69.i, label %for.body.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge

for.body.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_sw_lcd_config_ich8lan.exit.thread127

if.end69.i:                                       ; preds = %for.body.i
  %conv74.i = or i16 %conv65.i, 1
  %125 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %read.i.i, align 4
  %call.i157.i = call i32 %126(ptr noundef %hw, i16 noundef zeroext %conv74.i, i16 noundef zeroext 1, ptr noundef nonnull %reg_addr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157.i)
  %tobool76.not.i = icmp eq i32 %call.i157.i, 0
  br i1 %tobool76.not.i, label %if.end78.i, label %if.end69.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge

if.end69.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge: ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_sw_lcd_config_ich8lan.exit.thread127

if.end78.i:                                       ; preds = %if.end69.i
  %127 = ptrtoint ptr %reg_addr.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %reg_addr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %128)
  %cmp80.i = icmp eq i16 %128, 31
  br i1 %cmp80.i, label %if.then82.i, label %if.end83.i

if.then82.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %reg_data.i, align 2
  br label %for.inc.i

if.end83.i:                                       ; preds = %if.end78.i
  %131 = and i16 %128, 31
  %or148.i = or i16 %131, %phy_page.0162.i
  %132 = ptrtoint ptr %reg_addr.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %or148.i, ptr %reg_addr.i, align 2
  %conv90.i = zext i16 %or148.i to i32
  %133 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %reg_data.i, align 2
  %135 = ptrtoint ptr %write_reg_locked.i.i98 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write_reg_locked.i.i98, align 4
  %call.i158.i = call i32 %136(ptr noundef %hw, i32 noundef %conv90.i, i16 noundef zeroext %134) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158.i)
  %tobool92.not.i = icmp eq i32 %call.i158.i, 0
  br i1 %tobool92.not.i, label %if.end83.i.for.inc.i_crit_edge, label %if.end83.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge

if.end83.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge: ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_sw_lcd_config_ich8lan.exit.thread127

if.end83.i.for.inc.i_crit_edge:                   ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end83.i.for.inc.i_crit_edge, %if.then82.i
  %phy_page.1.i = phi i16 [ %130, %if.then82.i ], [ %phy_page.0162.i, %if.end83.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0161.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr.i
  br i1 %exitcond.not.i, label %for.inc.i.e1000_sw_lcd_config_ich8lan.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.e1000_sw_lcd_config_ich8lan.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_sw_lcd_config_ich8lan.exit

e1000_sw_lcd_config_ich8lan.exit.thread:          ; preds = %sw.bb.i.e1000_sw_lcd_config_ich8lan.exit.thread_crit_edge, %if.end16.e1000_sw_lcd_config_ich8lan.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data.i) #6
  br label %if.end20

e1000_sw_lcd_config_ich8lan.exit.thread127:       ; preds = %if.end83.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge, %if.end69.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge, %for.body.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge, %if.end53.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge, %if.then49.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge
  %ret_val.3.i.ph = phi i32 [ %call56.i, %if.end53.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge ], [ %call50.i, %if.then49.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge ], [ %call.i.i99, %for.body.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge ], [ %call.i157.i, %if.end69.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge ], [ %call.i158.i, %if.end83.i.e1000_sw_lcd_config_ich8lan.exit.thread127_crit_edge ]
  %release97.i129 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %137 = ptrtoint ptr %release97.i129 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %release97.i129, align 4
  call void %138(ptr noundef %hw) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data.i) #6
  br label %cleanup

e1000_sw_lcd_config_ich8lan.exit:                 ; preds = %for.inc.i.e1000_sw_lcd_config_ich8lan.exit_crit_edge, %if.end29.i.e1000_sw_lcd_config_ich8lan.exit_crit_edge, %if.end20.i.e1000_sw_lcd_config_ich8lan.exit_crit_edge, %if.end16.i.e1000_sw_lcd_config_ich8lan.exit_crit_edge
  %release97.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %139 = ptrtoint ptr %release97.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %release97.i, align 4
  call void %140(ptr noundef %hw) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_addr.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data.i) #6
  br label %if.end20

if.end20:                                         ; preds = %e1000_sw_lcd_config_ich8lan.exit, %e1000_sw_lcd_config_ich8lan.exit.thread
  %call21 = call fastcc i32 @e1000_oem_bits_config_ich8lan(ptr noundef %hw, i1 noundef zeroext true)
  %141 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %142)
  %cmp24 = icmp eq i32 %142, 10
  br i1 %cmp24, label %if.then26, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then26:                                        ; preds = %if.end20
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %143 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %144, i32 23380
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %146 = and i32 %145, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool29.not = icmp eq i32 %146, 0
  br i1 %tobool29.not, label %if.then30, label %if.then26.if.end31_crit_edge

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then30:                                        ; preds = %if.then26
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %147 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %148)
  %cmp.i = icmp ult i32 %148, 10
  br i1 %cmp.i, label %if.then30.if.end31_crit_edge, label %if.end.i105

if.then30.if.end31_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end.i105:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %149 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i104 = getelementptr i8, ptr %150, i32 3840
  %151 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i104) #6, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %152 = and i32 %151, 2147483647
  %153 = call i32 @llvm.bswap.i32(i32 %152) #6
  call void @__ew32(ptr noundef %hw, i32 noundef 3840, i32 noundef %153) #6
  br label %if.end31

if.end31:                                         ; preds = %if.end.i105, %if.then30.if.end31_crit_edge, %if.then26.if.end31_crit_edge
  %154 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %phy, align 4
  %call34 = call i32 %155(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %write_reg_locked.i.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %156 = ptrtoint ptr %write_reg_locked.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %write_reg_locked.i.i.i, align 4
  %call.i.i.i106 = call i32 %157(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext 18437) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i106)
  %tobool.not.i.i107 = icmp eq i32 %call.i.i.i106, 0
  br i1 %tobool.not.i.i107, label %if.end.i.i, label %if.end37.e1000_write_emi_reg_locked.exit_crit_edge

if.end37.e1000_write_emi_reg_locked.exit_crit_edge: ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_write_emi_reg_locked.exit

if.end.i.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %158 = ptrtoint ptr %write_reg_locked.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %write_reg_locked.i.i.i, align 4
  %call.i13.i.i = call i32 %159(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext 4999) #6
  br label %e1000_write_emi_reg_locked.exit

e1000_write_emi_reg_locked.exit:                  ; preds = %if.end.i.i, %if.end37.e1000_write_emi_reg_locked.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i.i106, %if.end37.e1000_write_emi_reg_locked.exit_crit_edge ], [ %call.i13.i.i, %if.end.i.i ]
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %160 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %release, align 4
  call void %161(ptr noundef %hw) #6
  br label %cleanup

cleanup:                                          ; preds = %e1000_write_emi_reg_locked.exit, %if.end31.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %e1000_sw_lcd_config_ich8lan.exit.thread127, %e1000_sw_lcd_config_ich8lan.exit.thread123, %e1000_lv_phy_workarounds_ich8lan.exit.cleanup_crit_edge, %e1000_lv_phy_workarounds_ich8lan.exit.thread117, %if.end2.i.cleanup_crit_edge, %e1000_set_mdio_slow_mode_hv.exit.i79.cleanup_crit_edge, %e1000_set_mdio_slow_mode_hv.exit.thread.i75, %e1000_hv_phy_workarounds_ich8lan.exit.cleanup_crit_edge, %e1000_hv_phy_workarounds_ich8lan.exit.thread111, %e1000_hv_phy_workarounds_ich8lan.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i13.i.i.i, %e1000_hv_phy_workarounds_ich8lan.exit.cleanup_crit_edge ], [ %call.i13.i.i30.i, %e1000_lv_phy_workarounds_ich8lan.exit.cleanup_crit_edge ], [ %call34, %if.end31.cleanup_crit_edge ], [ %retval.0.i.i, %e1000_write_emi_reg_locked.exit ], [ %call21, %if.end20.cleanup_crit_edge ], [ %retval.0.i.ph, %e1000_hv_phy_workarounds_ich8lan.exit.thread ], [ %ret_val.0.i.ph, %e1000_hv_phy_workarounds_ich8lan.exit.thread111 ], [ %ret_val.0.i85.ph, %e1000_lv_phy_workarounds_ich8lan.exit.thread117 ], [ %call.i93, %e1000_sw_lcd_config_ich8lan.exit.thread123 ], [ %ret_val.3.i.ph, %e1000_sw_lcd_config_ich8lan.exit.thread127 ], [ %call.i.i.i72, %e1000_set_mdio_slow_mode_hv.exit.thread.i75 ], [ %call3.i, %if.end2.i.cleanup_crit_edge ], [ %call.i7.i.i77, %e1000_set_mdio_slow_mode_hv.exit.i79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_phy_reg_mdic(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_init_rx_addrs(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_phy_hw_reset_ich8lan(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 23380
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %5 = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %cmp.i = icmp ult i32 %7, 10
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 3840
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %11 = or i32 %10, -2147483648
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3840, i32 noundef %12) #6
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @e1000e_phy_hw_reset_generic(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call fastcc i32 @e1000_post_phy_reset_ich8lan(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_set_pcie_no_snoop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_set_fc_watermarks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_copper_link_setup_igp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_copper_link_setup_m88(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_check_reset_block_ich8lan(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_disable = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 22
  %0 = ptrtoint ptr %reset_disable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reset_disable, align 2, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %3, i32 23380
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %5 = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not6 = icmp eq i32 %5, 0
  br i1 %tobool1.not6, label %while.cond.preheader.land.rhs_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %i.07 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %while.cond.preheader.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %i.07)
  %exitcond.not = icmp eq i32 %i.07, 30
  br i1 %exitcond.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %i.07, 1
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %6 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 23380
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %9 = and i32 %8, 1073741824
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %while.body.land.rhs_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ], [ 12, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_cfg_done_ich8lan(ptr noundef %hw) #0 align 64 {
entry:
  %bank = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bank) #6
  %0 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bank, align 4
  %call = tail call i32 @e1000e_get_cfg_done_generic(ptr noundef %hw) #6
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %cmp = icmp ugt i32 %2, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.then
  %loop.0.i = phi i32 [ 1500, %if.then ], [ %dec.i, %land.rhs.i.do.body.i_crit_edge ]
  %3 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %6 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %do.body.i.e1000_lan_init_done_ich8lan.exit_crit_edge

do.body.i.e1000_lan_init_done_ich8lan.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_lan_init_done_ich8lan.exit

land.rhs.i:                                       ; preds = %do.body.i
  %dec.i = add nsw i32 %loop.0.i, -1
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %do.body3.i, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body3.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_lan_init_done_ich8lan.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_get_cfg_done_ich8lan, %if.then8.i)) #6
          to label %e1000_lan_init_done_ich8lan.exit [label %if.then8.i], !srcloc !258

if.then8.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %netdev.i = getelementptr inbounds %struct.e1000_adapter, ptr %8, i32 0, i32 64
  %9 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_lan_init_done_ich8lan.__UNIQUE_ID_ddebug375, ptr noundef %10, ptr noundef nonnull @.str.59) #6
  br label %e1000_lan_init_done_ich8lan.exit

e1000_lan_init_done_ich8lan.exit:                 ; preds = %if.then8.i, %do.body3.i, %do.body.i.e1000_lan_init_done_ich8lan.exit_crit_edge
  %11 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %14 = and i32 %13, -131073
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void @__ew32(ptr noundef %hw, i32 noundef 8, i32 noundef %15) #6
  br label %if.end12

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @e1000e_get_auto_rd_done(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else.if.end12_crit_edge, label %do.body3

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.body3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_get_cfg_done_ich8lan.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_get_cfg_done_ich8lan, %if.then8)) #6
          to label %if.end12 [label %if.then8], !srcloc !258

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %17, i32 0, i32 64
  %18 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_get_cfg_done_ich8lan.__UNIQUE_ID_ddebug412, ptr noundef %19, ptr noundef nonnull @.str.55) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %do.body3, %if.else.if.end12_crit_edge, %e1000_lan_init_done_ich8lan.exit
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %20 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %and = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.body19, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %and16 = and i32 %23, -1025
  tail call void @__ew32(ptr noundef %hw, i32 noundef 8, i32 noundef %and16) #6
  br label %if.end39

do.body19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_get_cfg_done_ich8lan.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_get_cfg_done_ich8lan, %if.then31)) #6
          to label %if.end39 [label %if.then31], !srcloc !258

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %netdev33 = getelementptr inbounds %struct.e1000_adapter, ptr %25, i32 0, i32 64
  %26 = ptrtoint ptr %netdev33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_get_cfg_done_ich8lan.__UNIQUE_ID_ddebug413, ptr noundef %27, ptr noundef nonnull @.str.56) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %do.body19, %if.then15
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %29)
  %cmp42 = icmp ult i32 %29, 8
  br i1 %cmp42, label %if.then43, label %if.else52

if.then43:                                        ; preds = %if.end39
  %30 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %31, i32 16
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %33 = and i32 %32, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool46.not = icmp eq i32 %33, 0
  br i1 %tobool46.not, label %land.lhs.true, label %if.then43.if.end78_crit_edge

if.then43.if.end78_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

land.lhs.true:                                    ; preds = %if.then43
  %type47 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %type47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %35)
  %cmp48 = icmp eq i32 %35, 6
  br i1 %cmp48, label %if.then49, label %land.lhs.true.if.end78_crit_edge

land.lhs.true.if.end78_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then49:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 @e1000e_phy_init_script_igp3(ptr noundef %hw) #6
  br label %if.end78

if.else52:                                        ; preds = %if.end39
  %call53 = call fastcc i32 @e1000_valid_nvm_bank_detect_ich8lan(ptr noundef %hw, ptr noundef nonnull %bank)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.else52.if.end78_crit_edge, label %do.body57

if.else52.if.end78_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

do.body57:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_get_cfg_done_ich8lan.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_get_cfg_done_ich8lan, %if.then69)) #6
          to label %if.end78 [label %if.then69], !srcloc !258

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 4
  %netdev71 = getelementptr inbounds %struct.e1000_adapter, ptr %37, i32 0, i32 64
  %38 = ptrtoint ptr %netdev71 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev71, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_get_cfg_done_ich8lan.__UNIQUE_ID_ddebug414, ptr noundef %39, ptr noundef nonnull @.str.57) #6
  br label %if.end78

if.end78:                                         ; preds = %if.then69, %do.body57, %if.else52.if.end78_crit_edge, %if.then49, %land.lhs.true.if.end78_crit_edge, %if.then43.if.end78_crit_edge
  %ret_val.1 = phi i32 [ 0, %if.then43.if.end78_crit_edge ], [ 0, %if.then49 ], [ 0, %land.lhs.true.if.end78_crit_edge ], [ 0, %if.else52.if.end78_crit_edge ], [ -3, %if.then69 ], [ -3, %do.body57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank) #6
  ret i32 %ret_val.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_cable_length_igp_2(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_phy_reg_igp(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_d0_lplu_state_ich8lan(ptr noundef %hw, i1 noundef zeroext %active) #0 align 64 {
entry:
  %reg_data.i = alloca i16, align 2
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !254
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %cmp = icmp eq i32 %2, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 3856
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  br i1 %active, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %or = or i32 %6, 2
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3856, i32 noundef %or) #6
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp4.not = icmp eq i32 %8, 6
  br i1 %cmp4.not, label %if.end6, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  %type7 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %type7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp8 = icmp eq i32 %10, 6
  br i1 %cmp8, label %if.end.i, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end.i:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_data.i) #6
  %11 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %reg_data.i, align 2, !annotation !254
  %call.i = call i32 @e1000e_read_kmrn_reg(ptr noundef %hw, i32 noundef 3, ptr noundef nonnull %reg_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge

if.end.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000e_gig_downshift_workaround_ich8lan.exit

if.end4.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %reg_data.i, align 2
  %14 = or i16 %13, 4096
  store i16 %14, ptr %reg_data.i, align 2
  %call6.i = call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 3, i16 noundef zeroext %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge

if.end4.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000e_gig_downshift_workaround_ich8lan.exit

if.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %reg_data.i, align 2
  %17 = and i16 %16, -4097
  store i16 %17, ptr %reg_data.i, align 2
  %call12.i = call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 3, i16 noundef zeroext %17) #6
  br label %e1000e_gig_downshift_workaround_ich8lan.exit

e1000e_gig_downshift_workaround_ich8lan.exit:     ; preds = %if.end9.i, %if.end4.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge, %if.end.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data.i) #6
  br label %if.end10

if.end10:                                         ; preds = %e1000e_gig_downshift_workaround_ich8lan.exit, %if.end6.if.end10_crit_edge
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %18 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg.i, align 4
  %call.i91 = call i32 %19(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool12.not = icmp eq i32 %call.i91, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %data, align 2
  %22 = and i16 %21, -129
  store i16 %22, ptr %data, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %23 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg.i, align 4
  %call.i92 = call i32 %24(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool17.not = icmp eq i32 %call.i92, 0
  br i1 %tobool17.not, label %if.end14.if.end58_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14.if.end58_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.else:                                          ; preds = %if.end
  %and20 = and i32 %6, -3
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3856, i32 noundef %and20) #6
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp22.not = icmp eq i32 %26, 6
  br i1 %cmp22.not, label %if.end25, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.else
  %smart_speed = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 7
  %27 = ptrtoint ptr %smart_speed to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %smart_speed, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %28, label %if.end25.if.end58_crit_edge [
    i32 1, label %if.then28
    i32 2, label %if.then44
  ]

if.end25.if.end58_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then28:                                        ; preds = %if.end25
  %read_reg.i93 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %30 = ptrtoint ptr %read_reg.i93 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_reg.i93, align 4
  %call.i94 = call i32 %31(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool30.not = icmp eq i32 %call.i94, 0
  br i1 %tobool30.not, label %if.end32, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.then28
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %data, align 2
  %34 = or i16 %33, 128
  store i16 %34, ptr %data, align 2
  %write_reg.i95 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %35 = ptrtoint ptr %write_reg.i95 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg.i95, align 4
  %call.i96 = call i32 %36(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool37.not = icmp eq i32 %call.i96, 0
  br i1 %tobool37.not, label %if.end32.if.end58_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32.if.end58_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then44:                                        ; preds = %if.end25
  %read_reg.i97 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %37 = ptrtoint ptr %read_reg.i97 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_reg.i97, align 4
  %call.i98 = call i32 %38(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool46.not = icmp eq i32 %call.i98, 0
  br i1 %tobool46.not, label %if.end48, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end48:                                         ; preds = %if.then44
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %data, align 2
  %41 = and i16 %40, -129
  store i16 %41, ptr %data, align 2
  %write_reg.i99 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %42 = ptrtoint ptr %write_reg.i99 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_reg.i99, align 4
  %call.i100 = call i32 %43(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool53.not = icmp eq i32 %call.i100, 0
  br i1 %tobool53.not, label %if.end48.if.end58_crit_edge, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.end58:                                         ; preds = %if.end48.if.end58_crit_edge, %if.end32.if.end58_crit_edge, %if.end25.if.end58_crit_edge, %if.end14.if.end58_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.end48.cleanup_crit_edge, %if.then44.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end58 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ %call.i91, %if.end10.cleanup_crit_edge ], [ %call.i92, %if.end14.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ %call.i94, %if.then28.cleanup_crit_edge ], [ %call.i96, %if.end32.cleanup_crit_edge ], [ %call.i98, %if.then44.cleanup_crit_edge ], [ %call.i100, %if.end48.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_d3_lplu_state_ich8lan(ptr noundef %hw, i1 noundef zeroext %active) #0 align 64 {
entry:
  %reg_data.i = alloca i16, align 2
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !254
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 3856
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  br i1 %active, label %if.else31, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %4, -5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3856, i32 noundef %and) #6
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp.not = icmp eq i32 %6, 6
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %smart_speed = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 7
  %7 = ptrtoint ptr %smart_speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smart_speed, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %8, label %if.end.if.end65_crit_edge [
    i32 1, label %if.then4
    i32 2, label %if.then17
  ]

if.end.if.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then4:                                         ; preds = %if.end
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %10 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %11(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %data, align 2
  %14 = or i16 %13, 128
  store i16 %14, ptr %data, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %15 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_reg.i, align 4
  %call.i99 = call i32 %16(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool11.not = icmp eq i32 %call.i99, 0
  br i1 %tobool11.not, label %if.end8.if.end65_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.if.end65_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then17:                                        ; preds = %if.end
  %read_reg.i100 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %17 = ptrtoint ptr %read_reg.i100 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_reg.i100, align 4
  %call.i101 = call i32 %18(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool19.not = icmp eq i32 %call.i101, 0
  br i1 %tobool19.not, label %if.end21, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.then17
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data, align 2
  %21 = and i16 %20, -129
  store i16 %21, ptr %data, align 2
  %write_reg.i102 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %22 = ptrtoint ptr %write_reg.i102 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_reg.i102, align 4
  %call.i103 = call i32 %23(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool26.not = icmp eq i32 %call.i103, 0
  br i1 %tobool26.not, label %if.end21.if.end65_crit_edge, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21.if.end65_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.else31:                                        ; preds = %entry
  %autoneg_advertised = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 13
  %24 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %autoneg_advertised, align 4
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.118)
  switch i16 %25, label %if.else31.if.end65_crit_edge [
    i16 47, label %if.else31.if.then44_crit_edge
    i16 15, label %if.else31.if.then44_crit_edge109
    i16 3, label %if.else31.if.then44_crit_edge110
  ]

if.else31.if.then44_crit_edge110:                 ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

if.else31.if.then44_crit_edge109:                 ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

if.else31.if.then44_crit_edge:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

if.else31.if.end65_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then44:                                        ; preds = %if.else31.if.then44_crit_edge, %if.else31.if.then44_crit_edge109, %if.else31.if.then44_crit_edge110
  %or45 = or i32 %4, 4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 3856, i32 noundef %or45) #6
  %type46 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %type46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %28)
  %cmp47.not = icmp eq i32 %28, 6
  br i1 %cmp47.not, label %if.end50, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %if.then44
  %type51 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %type51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %30)
  %cmp52 = icmp eq i32 %30, 6
  br i1 %cmp52, label %if.end.i, label %if.end50.if.end55_crit_edge

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.end.i:                                         ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_data.i) #6
  %31 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %reg_data.i, align 2, !annotation !254
  %call.i104 = call i32 @e1000e_read_kmrn_reg(ptr noundef %hw, i32 noundef 3, ptr noundef nonnull %reg_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool.not.i = icmp eq i32 %call.i104, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge

if.end.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000e_gig_downshift_workaround_ich8lan.exit

if.end4.i:                                        ; preds = %if.end.i
  %32 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %reg_data.i, align 2
  %34 = or i16 %33, 4096
  store i16 %34, ptr %reg_data.i, align 2
  %call6.i = call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 3, i16 noundef zeroext %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge

if.end4.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000e_gig_downshift_workaround_ich8lan.exit

if.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %reg_data.i, align 2
  %37 = and i16 %36, -4097
  store i16 %37, ptr %reg_data.i, align 2
  %call12.i = call i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef 3, i16 noundef zeroext %37) #6
  br label %e1000e_gig_downshift_workaround_ich8lan.exit

e1000e_gig_downshift_workaround_ich8lan.exit:     ; preds = %if.end9.i, %if.end4.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge, %if.end.i.e1000e_gig_downshift_workaround_ich8lan.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data.i) #6
  br label %if.end55

if.end55:                                         ; preds = %e1000e_gig_downshift_workaround_ich8lan.exit, %if.end50.if.end55_crit_edge
  %read_reg.i105 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %38 = ptrtoint ptr %read_reg.i105 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_reg.i105, align 4
  %call.i106 = call i32 %39(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool57.not = icmp eq i32 %call.i106, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %data, align 2
  %42 = and i16 %41, -129
  store i16 %42, ptr %data, align 2
  %write_reg.i107 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %43 = ptrtoint ptr %write_reg.i107 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_reg.i107, align 4
  %call.i108 = call i32 %44(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %42) #6
  br label %if.end65

if.end65:                                         ; preds = %if.end59, %if.else31.if.end65_crit_edge, %if.end21.if.end65_crit_edge, %if.end8.if.end65_crit_edge, %if.end.if.end65_crit_edge
  %ret_val.0 = phi i32 [ %call.i108, %if.end59 ], [ 0, %if.end8.if.end65_crit_edge ], [ 0, %if.end21.if.end65_crit_edge ], [ 0, %if.end.if.end65_crit_edge ], [ 0, %if.else31.if.end65_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end55.cleanup_crit_edge, %if.then44.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.0, %if.end65 ], [ 0, %if.then.cleanup_crit_edge ], [ %call.i, %if.then4.cleanup_crit_edge ], [ %call.i99, %if.end8.cleanup_crit_edge ], [ %call.i101, %if.then17.cleanup_crit_edge ], [ %call.i103, %if.end21.cleanup_crit_edge ], [ 0, %if.then44.cleanup_crit_edge ], [ %call.i106, %if.end55.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_phy_reg_igp(ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_cfg_done_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_auto_rd_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_init_script_igp3(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_valid_nvm_bank_detect_ich8lan(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %bank) unnamed_addr #0 align 64 {
entry:
  %word.i148 = alloca i16, align 2
  %word.i = alloca i16, align 2
  %nvm_dword = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flash_bank_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %flash_bank_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flash_bank_size, align 4
  %mul = shl i32 %1, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nvm_dword) #6
  %2 = ptrtoint ptr %nvm_dword to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nvm_dword, align 4
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %4, label %entry.sw.default_crit_edge [
    i32 12, label %entry.sw.bb_crit_edge
    i32 13, label %entry.sw.bb_crit_edge168
    i32 14, label %entry.sw.bb_crit_edge169
    i32 15, label %entry.sw.bb_crit_edge170
    i32 16, label %entry.sw.bb_crit_edge171
    i32 17, label %entry.sw.bb_crit_edge172
    i32 6, label %entry.sw.bb30_crit_edge
    i32 7, label %entry.sw.bb30_crit_edge173
  ]

entry.sw.bb30_crit_edge173:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb30

entry.sw.bb30_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb30

entry.sw.bb_crit_edge172:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge171:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge170:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge169:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge168:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge168, %entry.sw.bb_crit_edge169, %entry.sw.bb_crit_edge170, %entry.sw.bb_crit_edge171, %entry.sw.bb_crit_edge172
  %6 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bank, align 4
  %call.i = call fastcc i32 @e1000_read_flash_data32_ich8lan(ptr noundef %hw, i32 noundef 38, ptr noundef nonnull %nvm_dword) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %7 = ptrtoint ptr %nvm_dword to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nvm_dword, align 4
  %9 = and i32 %8, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %9)
  %cmp = icmp eq i32 %9, 32768
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %bank, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %shl.i = add i32 %mul, 38
  %call.i145 = call fastcc i32 @e1000_read_flash_data32_ich8lan(ptr noundef %hw, i32 noundef %shl.i, ptr noundef nonnull %nvm_dword) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool9.not = icmp eq i32 %call.i145, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %nvm_dword to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nvm_dword, align 4
  %13 = and i32 %12, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %13)
  %cmp17 = icmp eq i32 %13, 32768
  br i1 %cmp17, label %if.then19, label %do.body21

if.then19:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %bank, align 4
  br label %cleanup

do.body21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_valid_nvm_bank_detect_ich8lan.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_valid_nvm_bank_detect_ich8lan, %if.then26)) #6
          to label %cleanup [label %if.then26], !srcloc !258

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %16, i32 0, i32 64
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_valid_nvm_bank_detect_ich8lan.__UNIQUE_ID_ddebug376, ptr noundef %18, ptr noundef nonnull @.str.61) #6
  br label %cleanup

sw.bb30:                                          ; preds = %entry.sw.bb30_crit_edge, %entry.sw.bb30_crit_edge173
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %19 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %and32 = and i32 %22, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and32)
  %cmp33 = icmp eq i32 %and32, 768
  br i1 %cmp33, label %if.then35, label %do.body42

if.then35:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  %and36 = lshr i32 %22, 22
  %and36.lobit = and i32 %and36, 1
  %23 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and36.lobit, ptr %bank, align 4
  br label %cleanup

do.body42:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_valid_nvm_bank_detect_ich8lan.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_valid_nvm_bank_detect_ich8lan, %if.then54)) #6
          to label %sw.default [label %if.then54], !srcloc !258

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %netdev56 = getelementptr inbounds %struct.e1000_adapter, ptr %25, i32 0, i32 64
  %26 = ptrtoint ptr %netdev56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev56, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_valid_nvm_bank_detect_ich8lan.__UNIQUE_ID_ddebug377, ptr noundef %27, ptr noundef nonnull @.str.62) #6
  br label %sw.default

sw.default:                                       ; preds = %if.then54, %do.body42, %entry.sw.default_crit_edge
  %28 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %bank, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %word.i) #6
  %29 = ptrtoint ptr %word.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %word.i, align 2
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %31)
  %cmp.i = icmp ugt i32 %31, 11
  br i1 %cmp.i, label %sw.default.e1000_read_flash_byte_ich8lan.exit.thread_crit_edge, label %if.else.i

sw.default.e1000_read_flash_byte_ich8lan.exit.thread_crit_edge: ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_read_flash_byte_ich8lan.exit.thread

if.else.i:                                        ; preds = %sw.default
  %call.i146 = call fastcc i32 @e1000_read_flash_data_ich8lan(ptr noundef %hw, i32 noundef 39, i8 noundef zeroext 1, ptr noundef nonnull %word.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool.not.i = icmp eq i32 %call.i146, 0
  br i1 %tobool.not.i, label %if.end65, label %if.else.i.e1000_read_flash_byte_ich8lan.exit.thread_crit_edge

if.else.i.e1000_read_flash_byte_ich8lan.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_read_flash_byte_ich8lan.exit.thread

e1000_read_flash_byte_ich8lan.exit.thread:        ; preds = %if.else.i.e1000_read_flash_byte_ich8lan.exit.thread_crit_edge, %sw.default.e1000_read_flash_byte_ich8lan.exit.thread_crit_edge
  %retval.0.i147.ph = phi i32 [ %call.i146, %if.else.i.e1000_read_flash_byte_ich8lan.exit.thread_crit_edge ], [ -1, %sw.default.e1000_read_flash_byte_ich8lan.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %word.i) #6
  br label %cleanup

if.end65:                                         ; preds = %if.else.i
  %32 = ptrtoint ptr %word.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %word.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %word.i) #6
  %34 = and i16 %33, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %34)
  %cmp68 = icmp eq i16 %34, 128
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %bank, align 4
  br label %cleanup

if.end71:                                         ; preds = %if.end65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %word.i148) #6
  %36 = ptrtoint ptr %word.i148 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %word.i148, align 2
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %38)
  %cmp.i150 = icmp ugt i32 %38, 11
  br i1 %cmp.i150, label %if.end71.e1000_read_flash_byte_ich8lan.exit157.thread_crit_edge, label %if.else.i153

if.end71.e1000_read_flash_byte_ich8lan.exit157.thread_crit_edge: ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_read_flash_byte_ich8lan.exit157.thread

if.else.i153:                                     ; preds = %if.end71
  %add72 = add i32 %mul, 39
  %call.i151 = call fastcc i32 @e1000_read_flash_data_ich8lan(ptr noundef %hw, i32 noundef %add72, i8 noundef zeroext 1, ptr noundef nonnull %word.i148) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool.not.i152 = icmp eq i32 %call.i151, 0
  br i1 %tobool.not.i152, label %if.end76, label %if.else.i153.e1000_read_flash_byte_ich8lan.exit157.thread_crit_edge

if.else.i153.e1000_read_flash_byte_ich8lan.exit157.thread_crit_edge: ; preds = %if.else.i153
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_read_flash_byte_ich8lan.exit157.thread

e1000_read_flash_byte_ich8lan.exit157.thread:     ; preds = %if.else.i153.e1000_read_flash_byte_ich8lan.exit157.thread_crit_edge, %if.end71.e1000_read_flash_byte_ich8lan.exit157.thread_crit_edge
  %retval.0.i156.ph = phi i32 [ %call.i151, %if.else.i153.e1000_read_flash_byte_ich8lan.exit157.thread_crit_edge ], [ -1, %if.end71.e1000_read_flash_byte_ich8lan.exit157.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %word.i148) #6
  br label %cleanup

if.end76:                                         ; preds = %if.else.i153
  %39 = ptrtoint ptr %word.i148 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %word.i148, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %word.i148) #6
  %41 = and i16 %40, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %41)
  %cmp79 = icmp eq i16 %41, 128
  br i1 %cmp79, label %if.then81, label %do.body84

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %bank, align 4
  br label %cleanup

do.body84:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_valid_nvm_bank_detect_ich8lan.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_valid_nvm_bank_detect_ich8lan, %if.then96)) #6
          to label %cleanup [label %if.then96], !srcloc !258

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 4
  %netdev98 = getelementptr inbounds %struct.e1000_adapter, ptr %44, i32 0, i32 64
  %45 = ptrtoint ptr %netdev98 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev98, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_valid_nvm_bank_detect_ich8lan.__UNIQUE_ID_ddebug378, ptr noundef %46, ptr noundef nonnull @.str.61) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %do.body84, %if.then81, %e1000_read_flash_byte_ich8lan.exit157.thread, %if.then70, %e1000_read_flash_byte_ich8lan.exit.thread, %if.then35, %if.then26, %do.body21, %if.then19, %if.end7.cleanup_crit_edge, %if.then6, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then70 ], [ 0, %if.then81 ], [ 0, %if.then35 ], [ 0, %if.then6 ], [ 0, %if.then19 ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ %call.i145, %if.end7.cleanup_crit_edge ], [ -1, %if.then26 ], [ -1, %if.then96 ], [ -1, %do.body21 ], [ %retval.0.i147.ph, %e1000_read_flash_byte_ich8lan.exit.thread ], [ %retval.0.i156.ph, %e1000_read_flash_byte_ich8lan.exit157.thread ], [ -1, %do.body84 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nvm_dword) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_read_flash_data32_ich8lan(ptr nocapture noundef readonly %hw, i32 noundef %offset, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %offset)
  %cmp = icmp ugt i32 %offset, 16777215
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %1)
  %cmp1 = icmp ult i32 %1, 12
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %flash_base_addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 4
  %2 = ptrtoint ptr %flash_base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flash_base_addr, align 4
  %add = add i32 %3, %offset
  %flash_address.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 2
  %4 = tail call i32 @llvm.bswap.i32(i32 %add) #6
  br label %do.body

do.body:                                          ; preds = %do.cond36.do.body_crit_edge, %if.end
  %count.0 = phi i8 [ 0, %if.end ], [ %inc, %do.cond36.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #6
  %call = tail call fastcc i32 @e1000_flash_cycle_init_ich8lan(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %do.body
  %6 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  %9 = and i32 %8, 16287
  %10 = or i32 %9, 49152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %10) #6, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %4) #6, !srcloc !261
  %call9 = tail call fastcc i32 @e1000_flash_cycle_ich8lan(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %15 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %flash_address.i, align 4
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i65 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #6, !srcloc !256
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %data, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end3
  %add.ptr.i67 = getelementptr i8, ptr %16, i32 4
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i67) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  %21 = and i16 %20, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %do.body24, label %do.cond36

do.body24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_read_flash_data32_ich8lan.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_read_flash_data32_ich8lan, %if.then29)) #6
          to label %cleanup [label %if.then29], !srcloc !258

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %24, i32 0, i32 64
  %25 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_read_flash_data32_ich8lan.__UNIQUE_ID_ddebug388, ptr noundef %26, ptr noundef nonnull @.str.64) #6
  br label %cleanup

do.cond36:                                        ; preds = %if.else
  %inc = add nuw nsw i8 %count.0, 1
  %cmp38 = icmp ult i8 %count.0, 10
  br i1 %cmp38, label %do.cond36.do.body_crit_edge, label %do.cond36.cleanup_crit_edge

do.cond36.cleanup_crit_edge:                      ; preds = %do.cond36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.cond36.do.body_crit_edge:                      ; preds = %do.cond36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %do.cond36.cleanup_crit_edge, %if.then29, %do.body24, %if.then11, %do.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.then29 ], [ 0, %if.then11 ], [ -1, %do.body24 ], [ -1, %do.cond36.cleanup_crit_edge ], [ %call, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_flash_cycle_init_ich8lan(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flash_address.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !262
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  %4 = and i16 %3, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %do.body1, label %if.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_flash_cycle_init_ich8lan.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_flash_cycle_init_ich8lan, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !258

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %6, i32 0, i32 64
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_flash_cycle_init_ich8lan.__UNIQUE_ID_ddebug385, ptr noundef %8, ptr noundef nonnull @.str.66) #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  %bf.set14 = or i16 %3, 24576
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %10)
  %cmp = icmp ugt i32 %10, 11
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %bf.set14 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv) #6
  %12 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %11) #6, !srcloc !261
  br label %if.end16

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  tail call void @arm_heavy_mb() #6
  %14 = tail call i16 @llvm.bswap.i16(i16 %bf.set14) #6
  %15 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i115, i16 %14) #6, !srcloc !265
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  %17 = and i16 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool20.not = icmp eq i16 %17, 0
  br i1 %tobool20.not, label %if.then21, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.then21:                                        ; preds = %if.end16
  %bf.set24 = or i16 %3, -8192
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %19)
  %cmp27 = icmp ugt i32 %19, 11
  br i1 %cmp27, label %if.then29, label %if.else32

if.then29:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %conv30 = zext i16 %bf.set24 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv30) #6
  %21 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %20) #6, !srcloc !261
  br label %cleanup

if.else32:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  tail call void @arm_heavy_mb() #6
  %23 = tail call i16 @llvm.bswap.i16(i16 %bf.set24) #6
  %24 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i119, i16 %23) #6, !srcloc !265
  br label %cleanup

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %if.end16.for.body_crit_edge
  %i.0132 = phi i32 [ %inc, %if.end43.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %26 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %27, i32 4
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i121) #6, !srcloc !262
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  %30 = and i16 %29, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool41.not = icmp eq i16 %30, 0
  br i1 %tobool41.not, label %if.then45, label %if.end43

if.end43:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #6
  %inc = add nuw nsw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, 10000000
  br i1 %exitcond.not, label %do.body60, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.then45:                                        ; preds = %for.body
  %bf.set48 = or i16 %29, -32768
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %33)
  %cmp51 = icmp ugt i32 %33, 11
  br i1 %cmp51, label %if.then53, label %if.else56

if.then53:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %conv54 = zext i16 %bf.set48 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  %34 = tail call i32 @llvm.bswap.i32(i32 %conv54) #6
  %35 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i123 = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %34) #6, !srcloc !261
  br label %cleanup

if.else56:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  tail call void @arm_heavy_mb() #6
  %37 = tail call i16 @llvm.bswap.i16(i16 %bf.set48) #6
  %38 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i125 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i125, i16 %37) #6, !srcloc !265
  br label %cleanup

do.body60:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_flash_cycle_init_ich8lan.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_flash_cycle_init_ich8lan, %if.then72)) #6
          to label %cleanup [label %if.then72], !srcloc !258

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 4
  %netdev74 = getelementptr inbounds %struct.e1000_adapter, ptr %41, i32 0, i32 64
  %42 = ptrtoint ptr %netdev74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev74, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_flash_cycle_init_ich8lan.__UNIQUE_ID_ddebug386, ptr noundef %43, ptr noundef nonnull @.str.67) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %do.body60, %if.else56, %if.then53, %if.else32, %if.then29, %if.then6, %do.body1
  %retval.0 = phi i32 [ -1, %if.then6 ], [ 0, %if.else32 ], [ 0, %if.then29 ], [ -1, %if.then72 ], [ 0, %if.then53 ], [ 0, %if.else56 ], [ -1, %do.body1 ], [ -1, %do.body60 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_flash_cycle_ich8lan(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp = icmp ugt i32 %1, 11
  %flash_address.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flash_address.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  %shr = lshr i32 %5, 16
  %conv = trunc i32 %shr to i16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i2 = getelementptr i8, ptr %3, i32 6
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2) #6, !srcloc !262
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %hsflctl.sroa.0.0 = phi i16 [ %conv, %if.then ], [ %7, %if.else ]
  %bf.set = or i16 %hsflctl.sroa.0.0, -32768
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %9)
  %cmp4 = icmp ugt i32 %9, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %cmp4, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = tail call i16 @llvm.bswap.i16(i16 %bf.set)
  %11 = zext i16 %10 to i32
  %flash_address.i3 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 2
  %12 = ptrtoint ptr %flash_address.i3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %flash_address.i3, align 4
  %add.ptr.i4 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %11) #6, !srcloc !261
  br label %if.end9

if.else8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i16 @llvm.bswap.i16(i16 %bf.set) #6
  %flash_address.i5 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 2
  %15 = ptrtoint ptr %flash_address.i5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %flash_address.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %16, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i6, i16 %14) #6, !srcloc !265
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then6
  %flash_address.i7 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %if.end13.do.body_crit_edge, %if.end9
  %i.0 = phi i32 [ 0, %if.end9 ], [ %inc, %if.end13.do.body_crit_edge ]
  %17 = ptrtoint ptr %flash_address.i7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %flash_address.i7, align 4
  %add.ptr.i8 = getelementptr i8, ptr %18, i32 4
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i8) #6, !srcloc !262
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %tobool.not = icmp sgt i16 %20, -1
  br i1 %tobool.not, label %if.end13, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end13:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #6
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 10000001
  br i1 %exitcond.not, label %if.end13.do.end_crit_edge, label %if.end13.do.body_crit_edge

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end13.do.end_crit_edge, %do.body.do.end_crit_edge
  %22 = and i16 %20, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %22)
  %23 = icmp ne i16 %22, -32768
  %retval.0 = sext i1 %23 to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_read_flash_data_ich8lan(ptr nocapture noundef readonly %hw, i32 noundef %offset, i8 noundef zeroext %size, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %offset)
  %cmp6 = icmp ugt i32 %offset, 16777215
  br i1 %cmp6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %flash_base_addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 4
  %0 = ptrtoint ptr %flash_base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flash_base_addr, align 4
  %add = add i32 %1, %offset
  %flash_address.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 2
  %2 = shl i8 %size, 6
  %3 = add i8 %2, -64
  %bf.shl = zext i8 %3 to i16
  %4 = tail call i32 @llvm.bswap.i32(i32 %add) #6
  br label %do.body

do.body:                                          ; preds = %do.cond59.do.body_crit_edge, %if.end
  %count.0 = phi i8 [ 0, %if.end ], [ %inc, %do.cond59.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #6
  %call = tail call fastcc i32 @e1000_flash_cycle_init_ich8lan(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %do.body
  %6 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 6
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  %9 = and i16 %8, 16287
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %bf.set = or i16 %10, %bf.shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  tail call void @arm_heavy_mb() #6
  %11 = tail call i16 @llvm.bswap.i16(i16 %bf.set) #6
  %12 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %13, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i90, i16 %11) #6, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %4) #6, !srcloc !261
  %call16 = tail call fastcc i32 @e1000_flash_cycle_ich8lan(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  %16 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %flash_address.i, align 4
  br i1 %tobool17.not, label %if.then18, label %if.else35

if.then18:                                        ; preds = %if.end9
  %add.ptr.i94 = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #6, !srcloc !256
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %size)
  %cmp21 = icmp eq i8 %size, 1
  %20 = trunc i32 %19 to i16
  br i1 %cmp21, label %if.then23, label %if.then30

if.then23:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %conv26 = and i16 %20, 255
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv26, ptr %data, align 2
  br label %cleanup

if.then30:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %20, ptr %data, align 2
  br label %cleanup

if.else35:                                        ; preds = %if.end9
  %add.ptr.i96 = getelementptr i8, ptr %17, i32 4
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i96) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  %24 = and i16 %23, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %do.body47, label %do.cond59

do.body47:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_read_flash_data_ich8lan.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_read_flash_data_ich8lan, %if.then52)) #6
          to label %cleanup [label %if.then52], !srcloc !258

if.then52:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %27, i32 0, i32 64
  %28 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_read_flash_data_ich8lan.__UNIQUE_ID_ddebug387, ptr noundef %29, ptr noundef nonnull @.str.64) #6
  br label %cleanup

do.cond59:                                        ; preds = %if.else35
  %inc = add nuw nsw i8 %count.0, 1
  %cmp61 = icmp ult i8 %count.0, 10
  br i1 %cmp61, label %do.cond59.do.body_crit_edge, label %do.cond59.cleanup_crit_edge

do.cond59.cleanup_crit_edge:                      ; preds = %do.cond59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.cond59.do.body_crit_edge:                      ; preds = %do.cond59
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %do.cond59.cleanup_crit_edge, %if.then52, %do.body47, %if.then30, %if.then23, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.then52 ], [ 0, %if.then23 ], [ 0, %if.then30 ], [ -1, %do.body47 ], [ -1, %do.body.cleanup_crit_edge ], [ -1, %do.cond59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_acquire_nvm_ich8lan(ptr nocapture noundef readnone %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvm_mutex, i32 noundef 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_read_nvm_ich8lan(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %bank = alloca i32, align 4
  %word = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bank) #6
  %0 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bank, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %word) #6
  %1 = ptrtoint ptr %word to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %word, align 2, !annotation !254
  %conv = zext i16 %offset to i32
  %word_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 5
  %2 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %word_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %offset)
  %cmp.not = icmp ugt i16 %3, %offset
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body15_crit_edge

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body15

lor.lhs.false:                                    ; preds = %entry
  %conv3 = zext i16 %3 to i32
  %conv5 = zext i16 %words to i32
  %sub = sub nsw i32 %conv3, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv5)
  %cmp9 = icmp slt i32 %sub, %conv5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp13 = icmp eq i16 %words, 0
  %or.cond = or i1 %cmp13, %cmp9
  br i1 %or.cond, label %lor.lhs.false.do.body15_crit_edge, label %if.end21

lor.lhs.false.do.body15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body15

do.body15:                                        ; preds = %lor.lhs.false.do.body15_crit_edge, %entry.do.body15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_read_nvm_ich8lan.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_read_nvm_ich8lan, %out.thread)) #6
          to label %out [label %out.thread], !srcloc !258

out.thread:                                       ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %5, i32 0, i32 64
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_read_nvm_ich8lan.__UNIQUE_ID_ddebug382, ptr noundef %7, ptr noundef nonnull @.str.72) #6
  br label %do.body78

if.end21:                                         ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %nvm1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nvm1, align 4
  %call22 = tail call i32 %9(ptr noundef %hw) #6
  %call23 = call fastcc i32 @e1000_valid_nvm_bank_detect_ich8lan(ptr noundef %hw, ptr noundef nonnull %bank)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end47, label %do.body27

do.body27:                                        ; preds = %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_read_nvm_ich8lan.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_read_nvm_ich8lan, %if.then39)) #6
          to label %if.end47.thread [label %if.then39], !srcloc !258

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %netdev41 = getelementptr inbounds %struct.e1000_adapter, ptr %11, i32 0, i32 64
  %12 = ptrtoint ptr %netdev41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev41, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_read_nvm_ich8lan.__UNIQUE_ID_ddebug383, ptr noundef %13, ptr noundef nonnull @.str.73) #6
  br label %if.end47.thread

if.end47.thread:                                  ; preds = %if.then39, %do.body27
  %14 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %bank, align 4
  br label %for.body.preheader

if.end47:                                         ; preds = %if.end21
  %15 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool48.not = icmp eq i32 %.pr, 0
  br i1 %tobool48.not, label %if.end47.for.body.preheader_crit_edge, label %cond.true

if.end47.for.body.preheader_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

cond.true:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %flash_bank_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %flash_bank_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flash_bank_size, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %cond.true, %if.end47.for.body.preheader_crit_edge, %if.end47.thread
  %cond = phi i32 [ %17, %cond.true ], [ 0, %if.end47.for.body.preheader_crit_edge ], [ 0, %if.end47.thread ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %add56 = add nuw nsw i32 %indvars.iv, %conv
  %modified = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %add56, i32 1
  %18 = ptrtoint ptr %modified to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %modified, align 2, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool57.not = icmp eq i8 %19, 0
  br i1 %tobool57.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %add56
  br label %for.inc

if.else:                                          ; preds = %for.body
  %add66 = add i32 %add56, %cond
  %shl.i = shl i32 %add66, 1
  %call.i = call fastcc i32 @e1000_read_flash_data_ich8lan(ptr noundef %hw, i32 noundef %shl.i, i8 noundef zeroext 2, ptr noundef nonnull %word) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool68.not = icmp eq i32 %call.i, 0
  br i1 %tobool68.not, label %if.else.for.inc_crit_edge, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then58
  %.sink.in = phi ptr [ %arrayidx, %if.then58 ], [ %word, %if.else.for.inc_crit_edge ]
  %20 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %20)
  %.sink = load i16, ptr %.sink.in, align 2
  %arrayidx64 = getelementptr i16, ptr %data, i32 %indvars.iv
  %21 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %.sink, ptr %arrayidx64, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else.for.end_crit_edge
  %ret_val.2.ph = phi i32 [ 0, %for.inc.for.end_crit_edge ], [ %call.i, %if.else.for.end_crit_edge ]
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 2
  %22 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release, align 4
  tail call void %23(ptr noundef %hw) #6
  br label %out

out:                                              ; preds = %for.end, %do.body15
  %ret_val.3 = phi i32 [ %ret_val.2.ph, %for.end ], [ -1, %do.body15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.3)
  %tobool75.not = icmp eq i32 %ret_val.3, 0
  br i1 %tobool75.not, label %out.if.end98_crit_edge, label %out.do.body78_crit_edge

out.do.body78_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body78

out.if.end98_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

do.body78:                                        ; preds = %out.do.body78_crit_edge, %out.thread
  %ret_val.3141 = phi i32 [ -1, %out.thread ], [ %ret_val.3, %out.do.body78_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_read_nvm_ich8lan.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_read_nvm_ich8lan, %if.then90)) #6
          to label %if.end98 [label %if.then90], !srcloc !258

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %netdev92 = getelementptr inbounds %struct.e1000_adapter, ptr %25, i32 0, i32 64
  %26 = ptrtoint ptr %netdev92 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev92, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_read_nvm_ich8lan.__UNIQUE_ID_ddebug384, ptr noundef %27, ptr noundef nonnull @.str.74, i32 noundef %ret_val.3141) #6
  br label %if.end98

if.end98:                                         ; preds = %if.then90, %do.body78, %out.if.end98_crit_edge
  %ret_val.3142 = phi i32 [ %ret_val.3141, %if.then90 ], [ 0, %out.if.end98_crit_edge ], [ %ret_val.3141, %do.body78 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %word) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank) #6
  ret i32 %ret_val.3142
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_release_nvm_ich8lan(ptr nocapture noundef readnone %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @nvm_mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_reload_nvm_generic(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_update_nvm_checksum_ich8lan(ptr noundef %hw) #0 align 64 {
entry:
  %bank = alloca i32, align 4
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bank) #6
  %0 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bank, align 4, !annotation !254
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %data, align 2
  %call = tail call i32 @e1000e_update_nvm_checksum_generic(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body127_crit_edge

entry.do.body127_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body127

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.not = icmp eq i32 %3, 4
  br i1 %cmp.not, label %if.end4, label %if.end.if.end147_crit_edge

if.end.if.end147_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %nvm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nvm1, align 4
  %call5 = tail call i32 %5(ptr noundef %hw) #6
  %call6 = call fastcc i32 @e1000_valid_nvm_bank_detect_ich8lan(ptr noundef %hw, ptr noundef nonnull %bank)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end18, label %do.body9

do.body9:                                         ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_update_nvm_checksum_ich8lan.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_update_nvm_checksum_ich8lan, %if.then14)) #6
          to label %if.end18.thread [label %if.then14], !srcloc !258

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %7, i32 0, i32 64
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_update_nvm_checksum_ich8lan.__UNIQUE_ID_ddebug393, ptr noundef %9, ptr noundef nonnull @.str.73) #6
  br label %if.end18.thread

if.end18.thread:                                  ; preds = %if.then14, %do.body9
  %10 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %bank, align 4
  br label %if.then20

if.end18:                                         ; preds = %if.end4
  %11 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp19 = icmp eq i32 %.pr, 0
  br i1 %cmp19, label %if.end18.if.then20_crit_edge, label %if.else

if.end18.if.then20_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then20:                                        ; preds = %if.end18.if.then20_crit_edge, %if.end18.thread
  %flash_bank_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %flash_bank_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flash_bank_size, align 4
  %call21 = tail call fastcc i32 @e1000_erase_flash_bank_ich8lan(ptr noundef %hw, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.if.end30_crit_edge, label %if.then20.do.body127.sink.split_crit_edge

if.then20.do.body127.sink.split_crit_edge:        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body127.sink.split

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.else:                                          ; preds = %if.end18
  %flash_bank_size25 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %flash_bank_size25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flash_bank_size25, align 4
  %call26 = tail call fastcc i32 @e1000_erase_flash_bank_ich8lan(ptr noundef %hw, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.else.if.end30_crit_edge, label %if.else.do.body127.sink.split_crit_edge

if.else.do.body127.sink.split_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body127.sink.split

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end30:                                         ; preds = %if.else.if.end30_crit_edge, %if.then20.if.end30_crit_edge
  %old_bank_offset.0 = phi i32 [ 0, %if.then20.if.end30_crit_edge ], [ %15, %if.else.if.end30_crit_edge ]
  %new_bank_offset.0 = phi i32 [ %13, %if.then20.if.end30_crit_edge ], [ 0, %if.else.if.end30_crit_edge ]
  br label %for.body

for.cond:                                         ; preds = %if.end51
  %inc = add nuw nsw i32 %i.0229, 1
  %exitcond.not = icmp eq i32 %inc, 2048
  br i1 %exitcond.not, label %if.end82, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end30
  %i.0229 = phi i32 [ 0, %if.end30 ], [ %inc, %for.cond.for.body_crit_edge ]
  %modified = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %i.0229, i32 1
  %16 = ptrtoint ptr %modified to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %modified, align 2, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool32.not = icmp eq i8 %17, 0
  br i1 %tobool32.not, label %if.else36, label %if.then33

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %i.0229
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx, align 2
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %data, align 2
  br label %if.end41

if.else36:                                        ; preds = %for.body
  %add = add i32 %i.0229, %old_bank_offset.0
  %shl.i = shl i32 %add, 1
  %call.i = call fastcc i32 @e1000_read_flash_data_ich8lan(ptr noundef %hw, i32 noundef %shl.i, i8 noundef zeroext 2, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool38.not = icmp eq i32 %call.i, 0
  br i1 %tobool38.not, label %if.else36.if.end41_crit_edge, label %if.else36.do.body62_crit_edge

if.else36.do.body62_crit_edge:                    ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body62

if.else36.if.end41_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end41:                                         ; preds = %if.else36.if.end41_crit_edge, %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %i.0229)
  %cmp42 = icmp eq i32 %i.0229, 19
  br i1 %cmp42, label %if.then43, label %if.end41.if.end45_crit_edge

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %data, align 2
  %23 = or i16 %22, -16384
  store i16 %23, ptr %data, align 2
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41.if.end45_crit_edge
  %add46 = add i32 %i.0229, %new_bank_offset.0
  %shl = shl i32 %add46, 1
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %data, align 2
  %conv47 = trunc i16 %25 to i8
  %call48 = tail call fastcc i32 @e1000_retry_write_flash_byte_ich8lan(ptr noundef %hw, i32 noundef %shl, i8 noundef zeroext %conv47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end45.do.body62_crit_edge

if.end45.do.body62_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body62

if.end51:                                         ; preds = %if.end45
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %add52 = or i32 %shl, 1
  %26 = lshr i16 %25, 8
  %conv54 = trunc i16 %26 to i8
  %call55 = tail call fastcc i32 @e1000_retry_write_flash_byte_ich8lan(ptr noundef %hw, i32 noundef %add52, i8 noundef zeroext %conv54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %for.cond, label %if.end51.do.body62_crit_edge

if.end51.do.body62_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body62

do.body62:                                        ; preds = %if.end51.do.body62_crit_edge, %if.end45.do.body62_crit_edge, %if.else36.do.body62_crit_edge
  %ret_val.2.ph = phi i32 [ -1, %if.else36.do.body62_crit_edge ], [ -1, %if.end51.do.body62_crit_edge ], [ %call48, %if.end45.do.body62_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_update_nvm_checksum_ich8lan.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_update_nvm_checksum_ich8lan, %if.then74)) #6
          to label %do.body127.sink.split [label %if.then74], !srcloc !258

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %netdev76 = getelementptr inbounds %struct.e1000_adapter, ptr %28, i32 0, i32 64
  %29 = ptrtoint ptr %netdev76 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev76, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_update_nvm_checksum_ich8lan.__UNIQUE_ID_ddebug394, ptr noundef %30, ptr noundef nonnull @.str.76) #6
  br label %do.body127.sink.split

if.end82:                                         ; preds = %for.cond
  %add83 = shl i32 %new_bank_offset.0, 1
  %shl.i209 = add i32 %add83, 38
  %call.i210 = call fastcc i32 @e1000_read_flash_data_ich8lan(ptr noundef %hw, i32 noundef %shl.i209, i8 noundef zeroext 2, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %tobool85.not = icmp eq i32 %call.i210, 0
  br i1 %tobool85.not, label %if.end87, label %if.end82.do.body127.sink.split_crit_edge

if.end82.do.body127.sink.split_crit_edge:         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body127.sink.split

if.end87:                                         ; preds = %if.end82
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %data, align 2
  %add90 = or i32 %shl.i209, 1
  %33 = lshr i16 %32, 8
  %34 = trunc i16 %33 to i8
  %conv93 = and i8 %34, -65
  %call94 = tail call fastcc i32 @e1000_retry_write_flash_byte_ich8lan(ptr noundef %hw, i32 noundef %add90, i8 noundef zeroext %conv93)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end87.do.body127.sink.split_crit_edge

if.end87.do.body127.sink.split_crit_edge:         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body127.sink.split

if.end97:                                         ; preds = %if.end87
  %add98 = shl i32 %old_bank_offset.0, 1
  %add100 = add i32 %add98, 39
  %call101 = tail call fastcc i32 @e1000_retry_write_flash_byte_ich8lan(ptr noundef %hw, i32 noundef %add100, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end97.for.body108_crit_edge, label %if.end97.do.body127.sink.split_crit_edge

if.end97.do.body127.sink.split_crit_edge:         ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body127.sink.split

if.end97.for.body108_crit_edge:                   ; preds = %if.end97
  br label %for.body108

for.body108:                                      ; preds = %for.body108.for.body108_crit_edge, %if.end97.for.body108_crit_edge
  %i.1231 = phi i32 [ %inc116, %for.body108.for.body108_crit_edge ], [ 0, %if.end97.for.body108_crit_edge ]
  %arrayidx110 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %i.1231
  %modified111 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %i.1231, i32 1
  %35 = ptrtoint ptr %modified111 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %modified111, align 2
  %36 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %arrayidx110, align 2
  %inc116 = add nuw nsw i32 %i.1231, 1
  %exitcond232.not = icmp eq i32 %inc116, 2048
  br i1 %exitcond232.not, label %if.then121, label %for.body108.for.body108_crit_edge

for.body108.for.body108_crit_edge:                ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body108

if.then121:                                       ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #8
  %release119222 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 2
  %37 = ptrtoint ptr %release119222 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %release119222, align 4
  tail call void %38(ptr noundef %hw) #6
  %reload = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 3
  %39 = ptrtoint ptr %reload to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reload, align 4
  tail call void %40(ptr noundef %hw) #6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  br label %if.end147

do.body127.sink.split:                            ; preds = %if.end97.do.body127.sink.split_crit_edge, %if.end87.do.body127.sink.split_crit_edge, %if.end82.do.body127.sink.split_crit_edge, %if.then74, %do.body62, %if.else.do.body127.sink.split_crit_edge, %if.then20.do.body127.sink.split_crit_edge
  %ret_val.4.ph.ph = phi i32 [ %call26, %if.else.do.body127.sink.split_crit_edge ], [ -1, %if.end97.do.body127.sink.split_crit_edge ], [ -1, %if.end87.do.body127.sink.split_crit_edge ], [ -1, %if.end82.do.body127.sink.split_crit_edge ], [ %ret_val.2.ph, %if.then74 ], [ %call21, %if.then20.do.body127.sink.split_crit_edge ], [ %ret_val.2.ph, %do.body62 ]
  %release119 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 2
  %41 = ptrtoint ptr %release119 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %release119, align 4
  tail call void %42(ptr noundef %hw) #6
  br label %do.body127

do.body127:                                       ; preds = %do.body127.sink.split, %entry.do.body127_crit_edge
  %ret_val.4.ph = phi i32 [ %call, %entry.do.body127_crit_edge ], [ %ret_val.4.ph.ph, %do.body127.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_update_nvm_checksum_ich8lan.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_update_nvm_checksum_ich8lan, %if.then139)) #6
          to label %if.end147 [label %if.then139], !srcloc !258

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 4
  %netdev141 = getelementptr inbounds %struct.e1000_adapter, ptr %44, i32 0, i32 64
  %45 = ptrtoint ptr %netdev141 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev141, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_update_nvm_checksum_ich8lan.__UNIQUE_ID_ddebug395, ptr noundef %46, ptr noundef nonnull @.str.77, i32 noundef %ret_val.4.ph) #6
  br label %if.end147

if.end147:                                        ; preds = %if.then139, %do.body127, %if.then121, %if.end.if.end147_crit_edge
  %ret_val.4227 = phi i32 [ %ret_val.4.ph, %if.then139 ], [ 0, %if.end.if.end147_crit_edge ], [ 0, %if.then121 ], [ %ret_val.4.ph, %do.body127 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank) #6
  ret i32 %ret_val.4227
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_valid_led_default_ich8lan(ptr noundef %hw, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %read.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 1
  %0 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read.i, align 4
  %call.i = tail call i32 %1(ptr noundef %hw, i16 noundef zeroext 4, i16 noundef zeroext 1, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end9, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_valid_led_default_ich8lan.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_valid_led_default_ich8lan, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !258

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_valid_led_default_ich8lan.__UNIQUE_ID_ddebug401, ptr noundef %5, ptr noundef nonnull @.str.82) #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.120)
  switch i16 %7, label %if.end9.cleanup_crit_edge [
    i16 0, label %if.end9.if.then14_crit_edge
    i16 -1, label %if.end9.if.then14_crit_edge22
  ]

if.end9.if.then14_crit_edge22:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.end9.if.then14_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %if.end9.if.then14_crit_edge, %if.end9.if.then14_crit_edge22
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 6529, ptr %data, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end9.cleanup_crit_edge, %if.then6, %do.body1
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_validate_nvm_checksum_ich8lan(ptr noundef %hw) #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !254
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %.off = add i32 %2, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %.off)
  %switch = icmp ult i32 %.off, 7
  %. = select i1 %switch, i16 3, i16 25
  %.47 = select i1 %switch, i32 1, i32 64
  %read.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 1
  %3 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %4(ptr noundef %hw, i16 noundef zeroext %., i16 noundef zeroext 1, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %data, align 2
  %conv = zext i16 %6 to i32
  %and = and i32 %.47, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body4, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.body4:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_validate_nvm_checksum_ich8lan.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_validate_nvm_checksum_ich8lan, %if.then9)) #6
          to label %do.end12 [label %if.then9], !srcloc !258

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %8, i32 0, i32 64
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_validate_nvm_checksum_ich8lan.__UNIQUE_ID_ddebug396, ptr noundef %10, ptr noundef nonnull @.str.84) #6
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %12)
  %cmp = icmp ult i32 %12, 14
  br i1 %cmp, label %if.then16, label %do.end12.if.end29_crit_edge

do.end12.if.end29_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then16:                                        ; preds = %do.end12
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data, align 2
  %15 = trunc i32 %.47 to i16
  %conv19 = or i16 %14, %15
  store i16 %conv19, ptr %data, align 2
  %write.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i, align 4
  %call.i48 = call i32 %17(ptr noundef %hw, i16 noundef zeroext %., i16 noundef zeroext 1, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool21.not = icmp eq i32 %call.i48, 0
  br i1 %tobool21.not, label %if.end23, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.then16
  %update.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 4
  %18 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %update.i, align 4
  %call.i49 = call i32 %19(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool25.not = icmp eq i32 %call.i49, 0
  br i1 %tobool25.not, label %if.end23.if.end29_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end29:                                         ; preds = %if.end23.if.end29_crit_edge, %do.end12.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %call30 = call i32 @e1000e_validate_nvm_checksum_generic(ptr noundef %hw) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end23.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end29 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i48, %if.then16.cleanup_crit_edge ], [ %call.i49, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_write_nvm_ich8lan(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6
  %conv = zext i16 %offset to i32
  %word_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 5
  %0 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %word_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %offset)
  %cmp.not = icmp ugt i16 %1, %offset
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body15_crit_edge

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body15

lor.lhs.false:                                    ; preds = %entry
  %conv3 = zext i16 %1 to i32
  %conv5 = zext i16 %words to i32
  %sub = sub nsw i32 %conv3, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv5)
  %cmp9 = icmp slt i32 %sub, %conv5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp13 = icmp eq i16 %words, 0
  %or.cond = or i1 %cmp13, %cmp9
  br i1 %or.cond, label %lor.lhs.false.do.body15_crit_edge, label %for.body.preheader

lor.lhs.false.do.body15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body15

do.body15:                                        ; preds = %lor.lhs.false.do.body15_crit_edge, %entry.do.body15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_write_nvm_ich8lan.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_write_nvm_ich8lan, %if.then18)) #6
          to label %cleanup [label %if.then18], !srcloc !258

if.then18:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_write_nvm_ich8lan.__UNIQUE_ID_ddebug389, ptr noundef %5, ptr noundef nonnull @.str.72) #6
  br label %cleanup

for.body.preheader:                               ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %nvm1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nvm1, align 4
  %call22 = tail call i32 %7(ptr noundef %hw) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %indvars.iv, %conv
  %arrayidx = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %add
  %modified = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %add, i32 1
  %8 = ptrtoint ptr %modified to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %modified, align 2
  %arrayidx29 = getelementptr i16, ptr %data, i32 %indvars.iv
  %9 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx29, align 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayidx, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv5
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 2
  %12 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release, align 4
  tail call void %13(ptr noundef %hw) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then18, %do.body15
  %retval.0 = phi i32 [ 0, %for.end ], [ -1, %if.then18 ], [ -1, %do.body15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_update_nvm_checksum_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_erase_flash_bank_ich8lan(ptr nocapture noundef readonly %hw, i32 noundef %bank) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flash_bank_size2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %flash_bank_size2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flash_bank_size2, align 4
  %mul = shl i32 %1, 1
  %flash_address.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  %5 = lshr i16 %4, 3
  %bf.clear = and i16 %5, 3
  %conv = zext i16 %bf.clear to i32
  %6 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %conv, label %entry.unreachabledefault [
    i32 0, label %sw.epilog
    i32 1, label %entry.do.body.preheader.lr.ph_crit_edge
    i32 2, label %sw.bb4
    i32 3, label %sw.bb5
  ]

entry.do.body.preheader.lr.ph_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.preheader.lr.ph

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.preheader.lr.ph

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.preheader.lr.ph

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %entry
  %div83 = lshr i32 %mul, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %mul)
  %cmp110.not = icmp ult i32 %mul, 256
  br i1 %cmp110.not, label %sw.epilog.cleanup49_crit_edge, label %sw.epilog.do.body.preheader.lr.ph_crit_edge

sw.epilog.do.body.preheader.lr.ph_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.preheader.lr.ph

sw.epilog.cleanup49_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

do.body.preheader.lr.ph:                          ; preds = %sw.epilog.do.body.preheader.lr.ph_crit_edge, %sw.bb5, %sw.bb4, %entry.do.body.preheader.lr.ph_crit_edge
  %sector_size.0120 = phi i32 [ 256, %sw.epilog.do.body.preheader.lr.ph_crit_edge ], [ 4096, %entry.do.body.preheader.lr.ph_crit_edge ], [ 8192, %sw.bb4 ], [ 65536, %sw.bb5 ]
  %iteration.0119 = phi i32 [ %div83, %sw.epilog.do.body.preheader.lr.ph_crit_edge ], [ %conv, %entry.do.body.preheader.lr.ph_crit_edge ], [ 1, %sw.bb4 ], [ 1, %sw.bb5 ]
  %flash_base_addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 4
  %7 = ptrtoint ptr %flash_base_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flash_base_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bank)
  %tobool.not = icmp eq i32 %bank, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %mul
  %add = add i32 %8, %spec.select
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  br label %do.body.preheader

do.body.preheader:                                ; preds = %for.inc.do.body.preheader_crit_edge, %do.body.preheader.lr.ph
  %j.0113 = phi i32 [ 0, %do.body.preheader.lr.ph ], [ %inc48, %for.inc.do.body.preheader_crit_edge ]
  %count.0112 = phi i32 [ 0, %do.body.preheader.lr.ph ], [ %count.2, %for.inc.do.body.preheader_crit_edge ]
  %flash_linear_addr.0111 = phi i32 [ %add, %do.body.preheader.lr.ph ], [ %add28, %for.inc.do.body.preheader_crit_edge ]
  %mul27 = mul i32 %j.0113, %sector_size.0120
  %9 = add i32 %count.0112, 1
  %smax = call i32 @llvm.smax.i32(i32 %9, i32 10)
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %flash_linear_addr.1 = phi i32 [ %add28, %do.cond.do.body_crit_edge ], [ %flash_linear_addr.0111, %do.body.preheader ]
  %count.1 = phi i32 [ %inc, %do.cond.do.body_crit_edge ], [ %count.0112, %do.body.preheader ]
  %call8 = tail call fastcc i32 @e1000_flash_cycle_init_ich8lan(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end, label %do.body.cleanup49_crit_edge

do.body.cleanup49_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

if.end:                                           ; preds = %do.body
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %11)
  %cmp10 = icmp ugt i32 %11, 11
  %12 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %flash_address.i, align 4
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i85 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #6, !srcloc !256
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  %shr = lshr i32 %15, 16
  %conv14 = trunc i32 %shr to i16
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i87 = getelementptr i8, ptr %13, i32 6
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i87) #6, !srcloc !262
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12
  %hsflctl.sroa.0.0 = phi i16 [ %conv14, %if.then12 ], [ %17, %if.else ]
  %bf.set = or i16 %hsflctl.sroa.0.0, 24576
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %19)
  %cmp21 = icmp ugt i32 %19, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %cmp21, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %20 = tail call i16 @llvm.bswap.i16(i16 %bf.set)
  %21 = zext i16 %20 to i32
  %22 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %21) #6, !srcloc !261
  br label %if.end26

if.else25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %24 = tail call i16 @llvm.bswap.i16(i16 %bf.set) #6
  %25 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %26, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i91, i16 %24) #6, !srcloc !265
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then23
  %add28 = add i32 %flash_linear_addr.1, %mul27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %add28) #6
  %28 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %27) #6, !srcloc !261
  %call29 = tail call fastcc i32 @e1000_flash_cycle_ich8lan(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end26.for.inc_crit_edge, label %if.end32

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end32:                                         ; preds = %if.end26
  %30 = ptrtoint ptr %flash_address.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %flash_address.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %31, i32 4
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i95) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  %33 = and i16 %32, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %if.end32.cleanup49_crit_edge, label %do.cond

if.end32.cleanup49_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

do.cond:                                          ; preds = %if.end32
  %inc = add i32 %count.1, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %do.cond.for.inc_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.cond.for.inc_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %do.cond.for.inc_crit_edge, %if.end26.for.inc_crit_edge
  %count.2 = phi i32 [ %smax, %do.cond.for.inc_crit_edge ], [ %count.1, %if.end26.for.inc_crit_edge ]
  %inc48 = add nuw nsw i32 %j.0113, 1
  %exitcond115.not = icmp eq i32 %inc48, %iteration.0119
  br i1 %exitcond115.not, label %for.inc.cleanup49_crit_edge, label %for.inc.do.body.preheader_crit_edge

for.inc.do.body.preheader_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.preheader

for.inc.cleanup49_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

cleanup49:                                        ; preds = %for.inc.cleanup49_crit_edge, %if.end32.cleanup49_crit_edge, %do.body.cleanup49_crit_edge, %sw.epilog.cleanup49_crit_edge
  %retval.3 = phi i32 [ 0, %sw.epilog.cleanup49_crit_edge ], [ %call29, %if.end32.cleanup49_crit_edge ], [ -1, %do.body.cleanup49_crit_edge ], [ 0, %for.inc.cleanup49_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_retry_write_flash_byte_ich8lan(ptr nocapture noundef readonly %hw, i32 noundef %offset, i8 noundef zeroext %byte) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %byte to i16
  %call.i = tail call fastcc i32 @e1000_write_flash_data_ich8lan(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %conv8 = zext i8 %byte to i32
  br label %do.body2

do.body2:                                         ; preds = %for.inc.do.body2_crit_edge, %for.cond.preheader
  %program_retries.035 = phi i16 [ 0, %for.cond.preheader ], [ %inc, %for.inc.do.body2_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_retry_write_flash_byte_ich8lan.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_retry_write_flash_byte_ich8lan, %if.then7)) #6
          to label %do.end11 [label %if.then7], !srcloc !258

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_retry_write_flash_byte_ich8lan.__UNIQUE_ID_ddebug400, ptr noundef %3, ptr noundef nonnull @.str.79, i32 noundef %conv8, i32 noundef %offset) #6
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body2
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %call.i33 = tail call fastcc i32 @e1000_write_flash_data_ich8lan(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool13.not = icmp eq i32 %call.i33, 0
  br i1 %tobool13.not, label %do.end11.for.end_crit_edge, label %for.inc

do.end11.for.end_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %do.end11
  %inc = add nuw nsw i16 %program_retries.035, 1
  %cmp = icmp ult i16 %program_retries.035, 99
  br i1 %cmp, label %for.inc.do.body2_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.do.body2_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end11.for.end_crit_edge
  %program_retries.0.lcssa = phi i16 [ %program_retries.035, %do.end11.for.end_crit_edge ], [ 100, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %program_retries.0.lcssa)
  %cmp17 = icmp eq i16 %program_retries.0.lcssa, 100
  %. = sext i1 %cmp17 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_write_flash_data_ich8lan(ptr nocapture noundef readonly %hw, i32 noundef %offset, i16 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp = icmp ugt i32 %1, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %offset)
  %cmp14 = icmp ugt i32 %offset, 16777215
  %or.cond1 = or i1 %cmp14, %cmp
  br i1 %or.cond1, label %entry.cleanup_crit_edge, label %if.end18

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %entry
  %flash_base_addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 4
  %2 = ptrtoint ptr %flash_base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flash_base_addr, align 4
  %add = add i32 %3, %offset
  %flash_address.i2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 2
  %4 = tail call i32 @llvm.bswap.i32(i32 %add) #6
  %5 = and i16 %data, 255
  %and49 = zext i16 %5 to i32
  %6 = shl nuw i32 %and49, 24
  br label %do.body

do.body:                                          ; preds = %do.cond78.do.body_crit_edge, %if.end18
  %count.0 = phi i8 [ 0, %if.end18 ], [ %inc, %do.cond78.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #6
  %call = tail call fastcc i32 @e1000_flash_cycle_init_ich8lan(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end20, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %do.body
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %9)
  %cmp23 = icmp ugt i32 %9, 11
  %10 = ptrtoint ptr %flash_address.i2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %flash_address.i2, align 4
  br i1 %cmp23, label %if.then25, label %if.else28

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  %shr = lshr i32 %13, 16
  %conv27 = trunc i32 %shr to i16
  br label %if.end30

if.else28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i3 = getelementptr i8, ptr %11, i32 6
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i3) #6, !srcloc !262
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then25
  %hsflctl.sroa.0.0 = phi i16 [ %conv27, %if.then25 ], [ %15, %if.else28 ]
  %bf.clear34 = and i16 %hsflctl.sroa.0.0, -24769
  %bf.set35 = or i16 %bf.clear34, 16384
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %17)
  %cmp38 = icmp ugt i32 %17, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %cmp38, label %if.then40, label %if.else42

if.then40:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %18 = tail call i16 @llvm.bswap.i16(i16 %bf.set35)
  %19 = zext i16 %18 to i32
  %20 = ptrtoint ptr %flash_address.i2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %flash_address.i2, align 4
  %add.ptr.i5 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %19) #6, !srcloc !261
  br label %if.end43

if.else42:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %22 = tail call i16 @llvm.bswap.i16(i16 %bf.set35) #6
  %23 = ptrtoint ptr %flash_address.i2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %flash_address.i2, align 4
  %add.ptr.i7 = getelementptr i8, ptr %24, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i7, i16 %22) #6, !srcloc !265
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.then40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %flash_address.i2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %flash_address.i2, align 4
  %add.ptr.i9 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %4) #6, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %flash_address.i2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %flash_address.i2, align 4
  %add.ptr.i11 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %6) #6, !srcloc !261
  %call53 = tail call fastcc i32 @e1000_flash_cycle_ich8lan(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end43.cleanup_crit_edge, label %if.end56

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %if.end43
  %29 = ptrtoint ptr %flash_address.i2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %flash_address.i2, align 4
  %add.ptr.i13 = getelementptr i8, ptr %30, i32 4
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i13) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  %32 = and i16 %31, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %do.body68, label %do.cond78

do.body68:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_write_flash_data_ich8lan.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_write_flash_data_ich8lan, %if.then73)) #6
          to label %cleanup [label %if.then73], !srcloc !258

if.then73:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %35, i32 0, i32 64
  %36 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_write_flash_data_ich8lan.__UNIQUE_ID_ddebug397, ptr noundef %37, ptr noundef nonnull @.str.64) #6
  br label %cleanup

do.cond78:                                        ; preds = %if.end56
  %inc = add nuw nsw i8 %count.0, 1
  %cmp80 = icmp ult i8 %count.0, 10
  br i1 %cmp80, label %do.cond78.do.body_crit_edge, label %do.cond78.cleanup_crit_edge

do.cond78.cleanup_crit_edge:                      ; preds = %do.cond78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.cond78.do.body_crit_edge:                      ; preds = %do.cond78
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %do.cond78.cleanup_crit_edge, %if.then73, %do.body68, %if.end43.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.then73 ], [ -1, %do.body68 ], [ 0, %if.end43.cleanup_crit_edge ], [ -1, %do.cond78.cleanup_crit_edge ], [ -1, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_validate_nvm_checksum_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_read_nvm_spt(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %bank = alloca i32, align 4
  %dword = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bank) #6
  %0 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bank, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dword) #6
  %1 = ptrtoint ptr %dword to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %dword, align 4
  %conv = zext i16 %offset to i32
  %word_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 5
  %2 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %word_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %offset)
  %cmp.not = icmp ugt i16 %3, %offset
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body15_crit_edge

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body15

lor.lhs.false:                                    ; preds = %entry
  %conv3 = zext i16 %3 to i32
  %conv5 = zext i16 %words to i32
  %sub = sub nsw i32 %conv3, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv5)
  %cmp9 = icmp slt i32 %sub, %conv5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp13 = icmp eq i16 %words, 0
  %or.cond = or i1 %cmp13, %cmp9
  br i1 %or.cond, label %lor.lhs.false.do.body15_crit_edge, label %if.end21

lor.lhs.false.do.body15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body15

do.body15:                                        ; preds = %lor.lhs.false.do.body15_crit_edge, %entry.do.body15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_read_nvm_spt.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_read_nvm_spt, %out.thread)) #6
          to label %out [label %out.thread], !srcloc !258

out.thread:                                       ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %5, i32 0, i32 64
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_read_nvm_spt.__UNIQUE_ID_ddebug379, ptr noundef %7, ptr noundef nonnull @.str.72) #6
  br label %do.body181

if.end21:                                         ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %nvm1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nvm1, align 4
  %call22 = tail call i32 %9(ptr noundef %hw) #6
  %call23 = call fastcc i32 @e1000_valid_nvm_bank_detect_ich8lan(ptr noundef %hw, ptr noundef nonnull %bank)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end47, label %do.body27

do.body27:                                        ; preds = %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_read_nvm_spt.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_read_nvm_spt, %if.then39)) #6
          to label %if.end47.thread [label %if.then39], !srcloc !258

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %netdev41 = getelementptr inbounds %struct.e1000_adapter, ptr %11, i32 0, i32 64
  %12 = ptrtoint ptr %netdev41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev41, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_read_nvm_spt.__UNIQUE_ID_ddebug380, ptr noundef %13, ptr noundef nonnull @.str.73) #6
  br label %if.end47.thread

if.end47.thread:                                  ; preds = %if.then39, %do.body27
  %14 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %bank, align 4
  br label %for.body.preheader

if.end47:                                         ; preds = %if.end21
  %15 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool48.not = icmp eq i32 %.pr, 0
  br i1 %tobool48.not, label %if.end47.for.body.preheader_crit_edge, label %cond.true

if.end47.for.body.preheader_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

cond.true:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %flash_bank_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %flash_bank_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flash_bank_size, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %cond.true, %if.end47.for.body.preheader_crit_edge, %if.end47.thread
  %cond = phi i32 [ %17, %cond.true ], [ 0, %if.end47.for.body.preheader_crit_edge ], [ 0, %if.end47.thread ]
  %add = add i32 %cond, %conv
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %conv50290 = phi i32 [ %conv50, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.0289 = phi i32 [ %add175, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sub56 = sub nsw i32 %conv5, %conv50290
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub56)
  %cmp57 = icmp eq i32 %sub56, 1
  br i1 %cmp57, label %if.then59, label %if.else98

if.then59:                                        ; preds = %for.body
  %add62 = add nuw nsw i32 %conv50290, %conv
  %modified = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %add62, i32 1
  %18 = ptrtoint ptr %modified to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %modified, align 2, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool63.not = icmp eq i8 %19, 0
  br i1 %tobool63.not, label %if.else, label %if.then64

if.then64:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %add62
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 2
  br label %for.inc

if.else:                                          ; preds = %if.then59
  %add72 = add i32 %conv50290, %add
  %conv76 = shl i32 %add72, 1
  %shl.i = and i32 %conv76, 131068
  %call.i = call fastcc i32 @e1000_read_flash_data32_ich8lan(ptr noundef %hw, i32 noundef %shl.i, ptr noundef nonnull %dword) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool79.not = icmp eq i32 %call.i, 0
  br i1 %tobool79.not, label %if.end81, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end81:                                         ; preds = %if.else
  %rem = and i32 %add72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp85 = icmp eq i32 %rem, 0
  %22 = ptrtoint ptr %dword to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dword, align 4
  br i1 %cmp85, label %if.then87, label %if.else91

if.then87:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %conv88 = trunc i32 %23 to i16
  br label %for.inc

if.else91:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %23, 16
  %conv93 = trunc i32 %shr to i16
  br label %for.inc

if.else98:                                        ; preds = %for.body
  %add100 = add i32 %i.0289, %add
  %add105 = add nuw nsw i32 %conv50290, %conv
  %arrayidx106 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %add105
  %modified107 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %add105, i32 1
  %24 = ptrtoint ptr %modified107 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %modified107, align 2, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool108.not = icmp eq i8 %25, 0
  br i1 %tobool108.not, label %if.else98.if.then118_crit_edge, label %lor.lhs.false109

if.else98.if.then118_crit_edge:                   ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then118

lor.lhs.false109:                                 ; preds = %if.else98
  %add114 = add nuw nsw i32 %add105, 1
  %modified116 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %add114, i32 1
  %26 = ptrtoint ptr %modified116 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %modified116, align 2, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool117.not = icmp eq i8 %27, 0
  br i1 %tobool117.not, label %lor.lhs.false109.if.then118_crit_edge, label %lor.lhs.false109.if.end124_crit_edge

lor.lhs.false109.if.end124_crit_edge:             ; preds = %lor.lhs.false109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

lor.lhs.false109.if.then118_crit_edge:            ; preds = %lor.lhs.false109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then118

if.then118:                                       ; preds = %lor.lhs.false109.if.then118_crit_edge, %if.else98.if.then118_crit_edge
  %conv119 = shl i32 %add100, 1
  %shl.i278 = and i32 %conv119, 131070
  %call.i279 = call fastcc i32 @e1000_read_flash_data32_ich8lan(ptr noundef %hw, i32 noundef %shl.i278, ptr noundef nonnull %dword) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i279)
  %tobool121.not = icmp eq i32 %call.i279, 0
  br i1 %tobool121.not, label %if.then118.if.end124_crit_edge, label %if.then118.for.end_crit_edge

if.then118.for.end_crit_edge:                     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then118.if.end124_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

if.end124:                                        ; preds = %if.then118.if.end124_crit_edge, %lor.lhs.false109.if.end124_crit_edge
  %28 = ptrtoint ptr %modified107 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %modified107, align 2, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool131.not = icmp eq i8 %29, 0
  br i1 %tobool131.not, label %if.else141, label %if.then132

if.then132:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx106, align 2
  br label %if.end146

if.else141:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %dword to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dword, align 4
  %conv143 = trunc i32 %33 to i16
  br label %if.end146

if.end146:                                        ; preds = %if.else141, %if.then132
  %.sink = phi i16 [ %conv143, %if.else141 ], [ %31, %if.then132 ]
  %34 = getelementptr i16, ptr %data, i32 %conv50290
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %.sink, ptr %34, align 2
  %36 = ptrtoint ptr %modified107 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %modified107, align 2, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool153.not = icmp eq i8 %37, 0
  br i1 %tobool153.not, label %if.else165, label %if.then154

if.then154:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  %add159 = add nuw nsw i32 %add105, 1
  %arrayidx160 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %add159
  %38 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx160, align 2
  %add163 = add nuw nsw i32 %conv50290, 1
  br label %for.inc

if.else165:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %dword to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dword, align 4
  %shr166 = lshr i32 %41, 16
  %conv168 = trunc i32 %shr166 to i16
  %add170 = add nuw nsw i32 %conv50290, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else165, %if.then154, %if.else91, %if.then87, %if.then64
  %conv50290.sink = phi i32 [ %conv50290, %if.then87 ], [ %conv50290, %if.else91 ], [ %conv50290, %if.then64 ], [ %add170, %if.else165 ], [ %add163, %if.then154 ]
  %conv88.sink = phi i16 [ %conv88, %if.then87 ], [ %conv93, %if.else91 ], [ %21, %if.then64 ], [ %conv168, %if.else165 ], [ %39, %if.then154 ]
  %arrayidx90 = getelementptr i16, ptr %data, i32 %conv50290.sink
  %42 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv88.sink, ptr %arrayidx90, align 2
  %add175 = add nuw nsw i32 %conv50290, 2
  %conv50 = and i32 %add175, 65535
  %cmp52 = icmp ult i32 %conv50, %conv5
  br i1 %cmp52, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then118.for.end_crit_edge, %if.else.for.end_crit_edge
  %ret_val.3.ph = phi i32 [ 0, %for.inc.for.end_crit_edge ], [ %call.i, %if.else.for.end_crit_edge ], [ %call.i279, %if.then118.for.end_crit_edge ]
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 2
  %43 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %release, align 4
  tail call void %44(ptr noundef %hw) #6
  br label %out

out:                                              ; preds = %for.end, %do.body15
  %ret_val.4 = phi i32 [ %ret_val.3.ph, %for.end ], [ -1, %do.body15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.4)
  %tobool178.not = icmp eq i32 %ret_val.4, 0
  br i1 %tobool178.not, label %out.if.end201_crit_edge, label %out.do.body181_crit_edge

out.do.body181_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body181

out.if.end201_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end201

do.body181:                                       ; preds = %out.do.body181_crit_edge, %out.thread
  %ret_val.4285 = phi i32 [ -1, %out.thread ], [ %ret_val.4, %out.do.body181_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_read_nvm_spt.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_read_nvm_spt, %if.then193)) #6
          to label %if.end201 [label %if.then193], !srcloc !258

if.then193:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 4
  %netdev195 = getelementptr inbounds %struct.e1000_adapter, ptr %46, i32 0, i32 64
  %47 = ptrtoint ptr %netdev195 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %netdev195, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_read_nvm_spt.__UNIQUE_ID_ddebug381, ptr noundef %48, ptr noundef nonnull @.str.74, i32 noundef %ret_val.4285) #6
  br label %if.end201

if.end201:                                        ; preds = %if.then193, %do.body181, %out.if.end201_crit_edge
  %ret_val.4286 = phi i32 [ %ret_val.4285, %if.then193 ], [ 0, %out.if.end201_crit_edge ], [ %ret_val.4285, %do.body181 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dword) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank) #6
  ret i32 %ret_val.4286
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_update_nvm_checksum_spt(ptr noundef %hw) #0 align 64 {
entry:
  %bank = alloca i32, align 4
  %dword = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bank) #6
  %0 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bank, align 4, !annotation !254
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dword) #6
  %1 = ptrtoint ptr %dword to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %dword, align 4
  %call = tail call i32 @e1000e_update_nvm_checksum_generic(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body135_crit_edge

entry.do.body135_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body135

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.not = icmp eq i32 %3, 4
  br i1 %cmp.not, label %if.end4, label %if.end.if.end155_crit_edge

if.end.if.end155_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end155

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %nvm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nvm1, align 4
  %call5 = tail call i32 %5(ptr noundef %hw) #6
  %call6 = call fastcc i32 @e1000_valid_nvm_bank_detect_ich8lan(ptr noundef %hw, ptr noundef nonnull %bank)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end18, label %do.body9

do.body9:                                         ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_update_nvm_checksum_spt.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_update_nvm_checksum_spt, %if.then14)) #6
          to label %if.end18.thread [label %if.then14], !srcloc !258

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %7, i32 0, i32 64
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_update_nvm_checksum_spt.__UNIQUE_ID_ddebug390, ptr noundef %9, ptr noundef nonnull @.str.73) #6
  br label %if.end18.thread

if.end18.thread:                                  ; preds = %if.then14, %do.body9
  %10 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %bank, align 4
  br label %if.then20

if.end18:                                         ; preds = %if.end4
  %11 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp19 = icmp eq i32 %.pr, 0
  br i1 %cmp19, label %if.end18.if.then20_crit_edge, label %if.else

if.end18.if.then20_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then20:                                        ; preds = %if.end18.if.then20_crit_edge, %if.end18.thread
  %flash_bank_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %flash_bank_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flash_bank_size, align 4
  %call21 = tail call fastcc i32 @e1000_erase_flash_bank_ich8lan(ptr noundef %hw, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.if.end30_crit_edge, label %if.then20.do.body135.sink.split_crit_edge

if.then20.do.body135.sink.split_crit_edge:        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body135.sink.split

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.else:                                          ; preds = %if.end18
  %flash_bank_size25 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %flash_bank_size25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flash_bank_size25, align 4
  %call26 = tail call fastcc i32 @e1000_erase_flash_bank_ich8lan(ptr noundef %hw, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.else.if.end30_crit_edge, label %if.else.do.body135.sink.split_crit_edge

if.else.do.body135.sink.split_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body135.sink.split

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end30:                                         ; preds = %if.else.if.end30_crit_edge, %if.then20.if.end30_crit_edge
  %old_bank_offset.0 = phi i32 [ 0, %if.then20.if.end30_crit_edge ], [ %15, %if.else.if.end30_crit_edge ]
  %new_bank_offset.0 = phi i32 [ %13, %if.then20.if.end30_crit_edge ], [ 0, %if.else.if.end30_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end30
  %i.0261 = phi i32 [ 0, %if.end30 ], [ %add69, %for.inc.for.body_crit_edge ]
  %add = add i32 %i.0261, %old_bank_offset.0
  %shl.i = shl i32 %add, 1
  %call.i = call fastcc i32 @e1000_read_flash_data32_ich8lan(ptr noundef %hw, i32 noundef %shl.i, ptr noundef nonnull %dword) #6
  %modified = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %i.0261, i32 1
  %16 = ptrtoint ptr %modified to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %modified, align 2, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool33.not = icmp eq i8 %17, 0
  br i1 %tobool33.not, label %for.body.if.end38_crit_edge, label %if.then34

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then34:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %i.0261
  %18 = ptrtoint ptr %dword to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dword, align 4
  %and = and i32 %19, -65536
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %21 to i32
  %or = or i32 %and, %conv
  store i32 %or, ptr %dword, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %for.body.if.end38_crit_edge
  %add40 = or i32 %i.0261, 1
  %modified42 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %add40, i32 1
  %22 = ptrtoint ptr %modified42 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %modified42, align 2, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool43.not = icmp eq i8 %23, 0
  br i1 %tobool43.not, label %if.end38.if.end53_crit_edge, label %if.then44

if.end38.if.end53_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx41 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %add40
  %24 = ptrtoint ptr %dword to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dword, align 4
  %and45 = and i32 %25, 65535
  %26 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx41, align 2
  %conv50 = zext i16 %27 to i32
  %shl = shl nuw i32 %conv50, 16
  %or52 = or i32 %shl, %and45
  store i32 %or52, ptr %dword, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then44, %if.end38.if.end53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool54.not = icmp eq i32 %call.i, 0
  br i1 %tobool54.not, label %if.end56, label %if.end53.do.body73_crit_edge

if.end53.do.body73_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.end56:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %i.0261)
  %cmp57 = icmp eq i32 %i.0261, 18
  br i1 %cmp57, label %if.then59, label %if.end56.if.end61_crit_edge

if.end56.if.end61_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %dword to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dword, align 4
  %or60 = or i32 %29, -1073741824
  store i32 %or60, ptr %dword, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end56.if.end61_crit_edge
  %add62 = add i32 %i.0261, %new_bank_offset.0
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %30 = ptrtoint ptr %dword to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dword, align 4
  %shl.i224 = shl i32 %add62, 1
  %call.i225 = tail call fastcc i32 @e1000_write_flash_data32_ich8lan(ptr noundef %hw, i32 noundef %shl.i224, i32 noundef %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %tobool.not.i = icmp eq i32 %call.i225, 0
  br i1 %tobool.not.i, label %if.end61.for.inc_crit_edge, label %if.end61.do.body2.i_crit_edge

if.end61.do.body2.i_crit_edge:                    ; preds = %if.end61
  br label %do.body2.i

if.end61.for.inc_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body2.i:                                       ; preds = %for.inc.i.do.body2.i_crit_edge, %if.end61.do.body2.i_crit_edge
  %program_retries.033.i = phi i16 [ %inc.i, %for.inc.i.do.body2.i_crit_edge ], [ 0, %if.end61.do.body2.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_retry_write_flash_dword_ich8lan.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_update_nvm_checksum_spt, %if.then7.i)) #6
          to label %do.end10.i [label %if.then7.i], !srcloc !258

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %netdev.i = getelementptr inbounds %struct.e1000_adapter, ptr %33, i32 0, i32 64
  %34 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_retry_write_flash_dword_ich8lan.__UNIQUE_ID_ddebug399, ptr noundef %35, ptr noundef nonnull @.str.89, i32 noundef %31, i32 noundef %shl.i224) #6
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then7.i, %do.body2.i
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %call11.i = tail call fastcc i32 @e1000_write_flash_data32_ich8lan(ptr noundef %hw, i32 noundef %shl.i224, i32 noundef %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %do.end10.i.for.inc_crit_edge, label %for.inc.i

do.end10.i.for.inc_crit_edge:                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc.i:                                        ; preds = %do.end10.i
  %inc.i = add nuw nsw i16 %program_retries.033.i, 1
  %cmp.i = icmp ult i16 %program_retries.033.i, 99
  br i1 %cmp.i, label %for.inc.i.do.body2.i_crit_edge, label %for.inc.i.do.body73_crit_edge

for.inc.i.do.body73_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

for.inc.i.do.body2.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.i

for.inc:                                          ; preds = %do.end10.i.for.inc_crit_edge, %if.end61.for.inc_crit_edge
  %add69 = add nuw nsw i32 %i.0261, 2
  %cmp31 = icmp ult i32 %i.0261, 2046
  br i1 %cmp31, label %for.inc.for.body_crit_edge, label %if.end93

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body73:                                        ; preds = %for.inc.i.do.body73_crit_edge, %if.end53.do.body73_crit_edge
  %ret_val.2245 = phi i32 [ -1, %for.inc.i.do.body73_crit_edge ], [ %call.i, %if.end53.do.body73_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_update_nvm_checksum_spt.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_update_nvm_checksum_spt, %if.then85)) #6
          to label %do.body135.sink.split [label %if.then85], !srcloc !258

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 4
  %netdev87 = getelementptr inbounds %struct.e1000_adapter, ptr %37, i32 0, i32 64
  %38 = ptrtoint ptr %netdev87 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev87, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_update_nvm_checksum_spt.__UNIQUE_ID_ddebug391, ptr noundef %39, ptr noundef nonnull @.str.76) #6
  br label %do.body135.sink.split

if.end93:                                         ; preds = %for.inc
  %dec = add i32 %new_bank_offset.0, 18
  %shl.i227 = shl i32 %dec, 1
  %call.i228 = call fastcc i32 @e1000_read_flash_data32_ich8lan(ptr noundef %hw, i32 noundef %shl.i227, ptr noundef nonnull %dword) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228)
  %tobool96.not = icmp eq i32 %call.i228, 0
  br i1 %tobool96.not, label %if.end98, label %if.end93.do.body135.sink.split_crit_edge

if.end93.do.body135.sink.split_crit_edge:         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body135.sink.split

if.end98:                                         ; preds = %if.end93
  %40 = ptrtoint ptr %dword to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dword, align 4
  %and99 = and i32 %41, -1073741825
  store i32 %and99, ptr %dword, align 4
  %call100 = tail call fastcc i32 @e1000_retry_write_flash_dword_ich8lan(ptr noundef %hw, i32 noundef %dec, i32 noundef %and99)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.end98.do.body135.sink.split_crit_edge

if.end98.do.body135.sink.split_crit_edge:         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body135.sink.split

if.end103:                                        ; preds = %if.end98
  %sub = add i32 %old_bank_offset.0, 18
  %shl.i229 = shl i32 %sub, 1
  %call.i230 = call fastcc i32 @e1000_read_flash_data32_ich8lan(ptr noundef %hw, i32 noundef %shl.i229, ptr noundef nonnull %dword) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %tobool106.not = icmp eq i32 %call.i230, 0
  br i1 %tobool106.not, label %if.end108, label %if.end103.do.body135.sink.split_crit_edge

if.end103.do.body135.sink.split_crit_edge:        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body135.sink.split

if.end108:                                        ; preds = %if.end103
  %42 = ptrtoint ptr %dword to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dword, align 4
  %and109 = and i32 %43, 16777215
  %call110 = tail call fastcc i32 @e1000_retry_write_flash_dword_ich8lan(ptr noundef %hw, i32 noundef %sub, i32 noundef %and109)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end108.for.body117_crit_edge, label %if.end108.do.body135.sink.split_crit_edge

if.end108.do.body135.sink.split_crit_edge:        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body135.sink.split

if.end108.for.body117_crit_edge:                  ; preds = %if.end108
  br label %for.body117

for.body117:                                      ; preds = %for.body117.for.body117_crit_edge, %if.end108.for.body117_crit_edge
  %i.1262 = phi i32 [ %inc, %for.body117.for.body117_crit_edge ], [ 0, %if.end108.for.body117_crit_edge ]
  %arrayidx119 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %i.1262
  %modified120 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 9, i32 0, i32 1, i32 %i.1262, i32 1
  %44 = ptrtoint ptr %modified120 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %modified120, align 2
  %45 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -1, ptr %arrayidx119, align 2
  %inc = add nuw nsw i32 %i.1262, 1
  %exitcond.not = icmp eq i32 %inc, 2048
  br i1 %exitcond.not, label %if.then129, label %for.body117.for.body117_crit_edge

for.body117.for.body117_crit_edge:                ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body117

if.then129:                                       ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #8
  %release127252 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 2
  %46 = ptrtoint ptr %release127252 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %release127252, align 4
  tail call void %47(ptr noundef %hw) #6
  %reload = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 3
  %48 = ptrtoint ptr %reload to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reload, align 4
  tail call void %49(ptr noundef %hw) #6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  br label %if.end155

do.body135.sink.split:                            ; preds = %if.end108.do.body135.sink.split_crit_edge, %if.end103.do.body135.sink.split_crit_edge, %if.end98.do.body135.sink.split_crit_edge, %if.end93.do.body135.sink.split_crit_edge, %if.then85, %do.body73, %if.else.do.body135.sink.split_crit_edge, %if.then20.do.body135.sink.split_crit_edge
  %ret_val.4.ph.ph = phi i32 [ %call26, %if.else.do.body135.sink.split_crit_edge ], [ -1, %if.end108.do.body135.sink.split_crit_edge ], [ %call.i230, %if.end103.do.body135.sink.split_crit_edge ], [ -1, %if.end98.do.body135.sink.split_crit_edge ], [ %call.i228, %if.end93.do.body135.sink.split_crit_edge ], [ %call21, %if.then20.do.body135.sink.split_crit_edge ], [ %ret_val.2245, %do.body73 ], [ %ret_val.2245, %if.then85 ]
  %release127 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 2
  %50 = ptrtoint ptr %release127 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %release127, align 4
  tail call void %51(ptr noundef %hw) #6
  br label %do.body135

do.body135:                                       ; preds = %do.body135.sink.split, %entry.do.body135_crit_edge
  %ret_val.4.ph = phi i32 [ %call, %entry.do.body135_crit_edge ], [ %ret_val.4.ph.ph, %do.body135.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_update_nvm_checksum_spt.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_update_nvm_checksum_spt, %if.then147)) #6
          to label %if.end155 [label %if.then147], !srcloc !258

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw, align 4
  %netdev149 = getelementptr inbounds %struct.e1000_adapter, ptr %53, i32 0, i32 64
  %54 = ptrtoint ptr %netdev149 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %netdev149, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_update_nvm_checksum_spt.__UNIQUE_ID_ddebug392, ptr noundef %55, ptr noundef nonnull @.str.77, i32 noundef %ret_val.4.ph) #6
  br label %if.end155

if.end155:                                        ; preds = %if.then147, %do.body135, %if.then129, %if.end.if.end155_crit_edge
  %ret_val.4257 = phi i32 [ %ret_val.4.ph, %if.then147 ], [ 0, %if.end.if.end155_crit_edge ], [ 0, %if.then129 ], [ %ret_val.4.ph, %do.body135 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dword) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank) #6
  ret i32 %ret_val.4257
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_retry_write_flash_dword_ich8lan(ptr nocapture noundef readonly %hw, i32 noundef %offset, i32 noundef %dword) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %offset, 1
  %call = tail call fastcc i32 @e1000_write_flash_data32_ich8lan(ptr noundef %hw, i32 noundef %shl, i32 noundef %dword)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body2:                                         ; preds = %for.inc.do.body2_crit_edge, %entry.do.body2_crit_edge
  %program_retries.033 = phi i16 [ %inc, %for.inc.do.body2_crit_edge ], [ 0, %entry.do.body2_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_retry_write_flash_dword_ich8lan.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_retry_write_flash_dword_ich8lan, %if.then7)) #6
          to label %do.end10 [label %if.then7], !srcloc !258

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_retry_write_flash_dword_ich8lan.__UNIQUE_ID_ddebug399, ptr noundef %3, ptr noundef nonnull @.str.89, i32 noundef %dword, i32 noundef %shl) #6
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %call11 = tail call fastcc i32 @e1000_write_flash_data32_ich8lan(ptr noundef %hw, i32 noundef %shl, i32 noundef %dword)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end10.for.end_crit_edge, label %for.inc

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %do.end10
  %inc = add nuw nsw i16 %program_retries.033, 1
  %cmp = icmp ult i16 %program_retries.033, 99
  br i1 %cmp, label %for.inc.do.body2_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.do.body2_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end10.for.end_crit_edge
  %program_retries.0.lcssa = phi i16 [ %program_retries.033, %do.end10.for.end_crit_edge ], [ 100, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %program_retries.0.lcssa)
  %cmp16 = icmp eq i16 %program_retries.0.lcssa, 100
  %. = sext i1 %cmp16 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_write_flash_data32_ich8lan(ptr nocapture noundef readonly %hw, i32 noundef %offset, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp = icmp ugt i32 %1, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %offset)
  %cmp1 = icmp ugt i32 %offset, 16777215
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  %and = and i32 %offset, 16777215
  %flash_base_addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 4
  %2 = ptrtoint ptr %flash_base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flash_base_addr, align 4
  %add = add i32 %3, %and
  %flash_address.i79 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 2
  %4 = tail call i32 @llvm.bswap.i32(i32 %add) #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %data) #6
  br label %do.body

do.body:                                          ; preds = %do.cond49.do.body_crit_edge, %if.end3
  %count.0 = phi i8 [ 0, %if.end3 ], [ %inc, %do.cond49.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #6
  %call = tail call fastcc i32 @e1000_flash_cycle_init_ich8lan(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %do.body
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %8)
  %cmp8 = icmp ugt i32 %8, 11
  %9 = ptrtoint ptr %flash_address.i79 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %flash_address.i79, align 4
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !256
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  %shr = lshr i32 %12, 16
  %conv = trunc i32 %shr to i16
  br label %if.end12

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i80 = getelementptr i8, ptr %10, i32 6
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i80) #6, !srcloc !262
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %hsflctl.sroa.0.0 = phi i16 [ %conv, %if.then9 ], [ %14, %if.else ]
  %bf.set = and i16 %hsflctl.sroa.0.0, -24769
  %bf.set15 = or i16 %bf.set, 16576
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %16)
  %cmp18 = icmp ugt i32 %16, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %cmp18, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %17 = tail call i16 @llvm.bswap.i16(i16 %bf.set15)
  %18 = zext i16 %17 to i32
  %19 = ptrtoint ptr %flash_address.i79 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %flash_address.i79, align 4
  %add.ptr.i82 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %18) #6, !srcloc !261
  br label %if.end23

if.else22:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %21 = tail call i16 @llvm.bswap.i16(i16 %bf.set15) #6
  %22 = ptrtoint ptr %flash_address.i79 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %flash_address.i79, align 4
  %add.ptr.i84 = getelementptr i8, ptr %23, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i84, i16 %21) #6, !srcloc !265
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %flash_address.i79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %flash_address.i79, align 4
  %add.ptr.i86 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %4) #6, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %flash_address.i79 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %flash_address.i79, align 4
  %add.ptr.i88 = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %5) #6, !srcloc !261
  %call24 = tail call fastcc i32 @e1000_flash_cycle_ich8lan(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %28 = ptrtoint ptr %flash_address.i79 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %flash_address.i79, align 4
  %add.ptr.i90 = getelementptr i8, ptr %29, i32 4
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i90) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  %31 = and i16 %30, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %do.body39, label %do.cond49

do.body39:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_write_flash_data32_ich8lan.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_write_flash_data32_ich8lan, %if.then44)) #6
          to label %cleanup [label %if.then44], !srcloc !258

if.then44:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %34, i32 0, i32 64
  %35 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_write_flash_data32_ich8lan.__UNIQUE_ID_ddebug398, ptr noundef %36, ptr noundef nonnull @.str.64) #6
  br label %cleanup

do.cond49:                                        ; preds = %if.end27
  %inc = add nuw nsw i8 %count.0, 1
  %cmp51 = icmp ult i8 %count.0, 10
  br i1 %cmp51, label %do.cond49.do.body_crit_edge, label %do.cond49.cleanup_crit_edge

do.cond49.cleanup_crit_edge:                      ; preds = %do.cond49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.cond49.do.body_crit_edge:                      ; preds = %do.cond49
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %do.cond49.cleanup_crit_edge, %if.then44, %do.body39, %if.end23.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.then44 ], [ -1, %do.body39 ], [ 0, %if.end23.cleanup_crit_edge ], [ -1, %do.cond49.cleanup_crit_edge ], [ -1, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !60, !62, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77, !78, !80, !81, !82, !84, !85, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !108, !109, !111, !112, !113, !115, !116, !118, !119, !121, !122, !123, !125, !126, !128, !129, !131, !132, !133, !135, !136, !138, !139, !140, !142, !144, !145, !146, !148, !149, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !165, !167, !168, !169, !171, !172, !173, !175, !176, !178, !179, !181, !183, !184, !185, !187, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !208, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !224, !226, !227, !229, !231, !233, !234, !236, !238, !240, !241, !242, !244}
!llvm.module.flags = !{!245, !246, !247, !248, !249, !250, !251, !252}
!llvm.ident = !{!253}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 1136, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @e1000_enable_ulp_lpt_lp.__UNIQUE_ID_ddebug362, !1, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 1220, i32 3}
!10 = !{ptr @e1000_enable_ulp_lpt_lp.__UNIQUE_ID_ddebug363, !9, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5253, i32 3}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @e1000e_set_kmrn_lock_loss_workaround_ich8lan.__UNIQUE_ID_ddebug408, !12, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5489, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @e1000_resume_workarounds_pchlan.__UNIQUE_ID_ddebug409, !16, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5503, i32 4}
!21 = !{ptr @e1000_resume_workarounds_pchlan.__UNIQUE_ID_ddebug410, !20, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5533, i32 4}
!24 = !{ptr @e1000_resume_workarounds_pchlan.__UNIQUE_ID_ddebug411, !23, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!25 = !{ptr @e1000_ich8_info, !26, !"e1000_ich8_info", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5858, i32 25}
!27 = !{ptr @e1000_ich9_info, !28, !"e1000_ich9_info", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5874, i32 25}
!29 = !{ptr @e1000_ich10_info, !30, !"e1000_ich10_info", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5891, i32 25}
!31 = !{ptr @e1000_pch_info, !32, !"e1000_pch_info", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5908, i32 25}
!33 = !{ptr @e1000_pch2_info, !34, !"e1000_pch2_info", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5927, i32 25}
!35 = !{ptr @e1000_pch_lpt_info, !36, !"e1000_pch_lpt_info", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5948, i32 25}
!37 = !{ptr @e1000_pch_spt_info, !38, !"e1000_pch_spt_info", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5969, i32 25}
!39 = !{ptr @e1000_pch_cnp_info, !40, !"e1000_pch_cnp_info", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5989, i32 25}
!41 = !{ptr @e1000_pch_tgp_info, !42, !"e1000_pch_tgp_info", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 6009, i32 25}
!43 = !{ptr @e1000_pch_adp_info, !44, !"e1000_pch_adp_info", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 6029, i32 25}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 2097, i32 4}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @e1000_write_smbus_addr.__UNIQUE_ID_ddebug374, !46, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 305, i32 3}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 309, i32 3}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @e1000_init_phy_workarounds_pchlan.__UNIQUE_ID_ddebug353, !52, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 353, i32 4}
!57 = !{ptr @e1000_init_phy_workarounds_pchlan.__UNIQUE_ID_ddebug354, !56, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 386, i32 4}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 407, i32 4}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 1284, i32 4}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 1287, i32 4}
!66 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @e1000_disable_ulp_lpt_lp.__UNIQUE_ID_ddebug364, !65, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 1377, i32 3}
!70 = !{ptr @e1000_disable_ulp_lpt_lp.__UNIQUE_ID_ddebug365, !69, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 1921, i32 3}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @e1000_rar_set_pch2lan.__UNIQUE_ID_ddebug371, !72, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 1926, i32 2}
!77 = !{ptr @e1000_rar_set_pch2lan.__UNIQUE_ID_ddebug372, !76, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 1756, i32 3}
!80 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @e1000_acquire_swflag_ich8lan.__UNIQUE_ID_ddebug367, !79, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 1770, i32 3}
!84 = !{ptr @e1000_acquire_swflag_ich8lan.__UNIQUE_ID_ddebug368, !83, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 1790, i32 3}
!87 = !{ptr @e1000_acquire_swflag_ich8lan.__UNIQUE_ID_ddebug369, !86, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 1822, i32 3}
!90 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @e1000_release_swflag_ich8lan.__UNIQUE_ID_ddebug370, !89, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 2036, i32 2}
!94 = !{ptr @e1000_rar_set_pch_lpt.__UNIQUE_ID_ddebug373, !93, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 622, i32 4}
!97 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @e1000_init_nvm_params_ich8lan.__UNIQUE_ID_ddebug356, !96, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 536, i32 4}
!101 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @e1000_init_phy_params_ich8lan.__UNIQUE_ID_ddebug355, !100, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!103 = !{ptr @ich8_mac_ops, !104, !"ich8_mac_ops", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5801, i32 42}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 1647, i32 3}
!107 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @e1000_check_for_copper_link_ich8lan.__UNIQUE_ID_ddebug366, !106, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 1024, i32 4}
!111 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @e1000_platform_pm_pch_lpt.__UNIQUE_ID_ddebug357, !110, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 1030, i32 4}
!115 = !{ptr @e1000_platform_pm_pch_lpt.__UNIQUE_ID_ddebug358, !114, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 1055, i32 4}
!118 = !{ptr @e1000_platform_pm_pch_lpt.__UNIQUE_ID_ddebug359, !117, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 4710, i32 3}
!121 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @e1000_reset_hw_ich8lan.__UNIQUE_ID_ddebug402, !120, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 4712, i32 2}
!125 = !{ptr @e1000_reset_hw_ich8lan.__UNIQUE_ID_ddebug403, !124, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 4762, i32 2}
!128 = !{ptr @e1000_reset_hw_ich8lan.__UNIQUE_ID_ddebug404, !127, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!129 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 4830, i32 3}
!131 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @e1000_init_hw_ich8lan.__UNIQUE_ID_ddebug405, !130, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 4836, i32 2}
!135 = !{ptr @e1000_init_hw_ich8lan.__UNIQUE_ID_ddebug406, !134, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!136 = !{ptr @.str.52, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5013, i32 2}
!138 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @e1000_setup_link_ich8lan.__UNIQUE_ID_ddebug407, !137, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!140 = !{ptr @ich8_phy_ops, !141, !"ich8_phy_ops", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5822, i32 42}
!142 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5698, i32 4}
!144 = !{ptr @.str.55, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @e1000_get_cfg_done_ich8lan.__UNIQUE_ID_ddebug412, !143, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!146 = !{ptr @.str.56, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5708, i32 3}
!148 = !{ptr @e1000_get_cfg_done_ich8lan.__UNIQUE_ID_ddebug413, !147, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!149 = !{ptr @.str.57, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5719, i32 4}
!151 = !{ptr @e1000_get_cfg_done_ich8lan.__UNIQUE_ID_ddebug414, !150, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!152 = !{ptr @.str.58, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 2865, i32 3}
!154 = !{ptr @.str.59, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @e1000_lan_init_done_ich8lan.__UNIQUE_ID_ddebug375, !153, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!156 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3220, i32 3}
!158 = !{ptr @.str.61, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @e1000_valid_nvm_bank_detect_ich8lan.__UNIQUE_ID_ddebug376, !157, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!160 = !{ptr @.str.62, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3234, i32 3}
!162 = !{ptr @e1000_valid_nvm_bank_detect_ich8lan.__UNIQUE_ID_ddebug377, !161, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!163 = !{ptr @e1000_valid_nvm_bank_detect_ich8lan.__UNIQUE_ID_ddebug378, !164, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3263, i32 3}
!165 = !{ptr @.str.63, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3746, i32 5}
!167 = !{ptr @.str.64, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @e1000_read_flash_data32_ich8lan.__UNIQUE_ID_ddebug388, !166, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!169 = !{ptr @.str.65, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3437, i32 3}
!171 = !{ptr @.str.66, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @e1000_flash_cycle_init_ich8lan.__UNIQUE_ID_ddebug385, !170, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!173 = !{ptr @.str.67, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3493, i32 4}
!175 = !{ptr @e1000_flash_cycle_init_ich8lan.__UNIQUE_ID_ddebug386, !174, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!176 = !{ptr @.str.68, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3671, i32 5}
!178 = !{ptr @e1000_read_flash_data_ich8lan.__UNIQUE_ID_ddebug387, !177, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!179 = !{ptr @ich8_nvm_ops, !180, !"ich8_nvm_ops", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5836, i32 42}
!181 = !{ptr @.str.69, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 1716, i32 8}
!183 = !{ptr @.str.70, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @nvm_mutex, !182, !"nvm_mutex", i1 false, i1 false}
!185 = !{ptr @.str.71, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3382, i32 3}
!187 = !{ptr @.str.72, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @e1000_read_nvm_ich8lan.__UNIQUE_ID_ddebug382, !186, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!189 = !{ptr @.str.73, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3391, i32 3}
!191 = !{ptr @e1000_read_nvm_ich8lan.__UNIQUE_ID_ddebug383, !190, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!192 = !{ptr @.str.74, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3416, i32 3}
!194 = !{ptr @e1000_read_nvm_ich8lan.__UNIQUE_ID_ddebug384, !193, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!195 = !{ptr @.str.75, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3984, i32 3}
!197 = !{ptr @e1000_update_nvm_checksum_ich8lan.__UNIQUE_ID_ddebug393, !196, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!198 = !{ptr @.str.76, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 4046, i32 3}
!200 = !{ptr @e1000_update_nvm_checksum_ich8lan.__UNIQUE_ID_ddebug394, !199, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!201 = !{ptr @.str.77, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 4096, i32 3}
!203 = !{ptr @e1000_update_nvm_checksum_ich8lan.__UNIQUE_ID_ddebug395, !202, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!204 = !{ptr @.str.78, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 4445, i32 3}
!206 = !{ptr @.str.79, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @e1000_retry_write_flash_byte_ich8lan.__UNIQUE_ID_ddebug400, !205, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!208 = !{ptr @.str.80, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 4283, i32 4}
!210 = !{ptr @e1000_write_flash_data_ich8lan.__UNIQUE_ID_ddebug397, !209, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!211 = !{ptr @.str.81, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 4584, i32 3}
!213 = !{ptr @.str.82, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @e1000_valid_led_default_ich8lan.__UNIQUE_ID_ddebug401, !212, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!215 = !{ptr @.str.83, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 4143, i32 3}
!217 = !{ptr @.str.84, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @e1000_validate_nvm_checksum_ich8lan.__UNIQUE_ID_ddebug396, !216, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!219 = !{ptr @.str.85, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3773, i32 3}
!221 = !{ptr @e1000_write_nvm_ich8lan.__UNIQUE_ID_ddebug389, !220, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!222 = !{ptr @spt_nvm_ops, !223, !"spt_nvm_ops", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 5847, i32 42}
!224 = !{ptr @.str.86, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3291, i32 3}
!226 = !{ptr @e1000_read_nvm_spt.__UNIQUE_ID_ddebug379, !225, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!227 = !{ptr @e1000_read_nvm_spt.__UNIQUE_ID_ddebug380, !228, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3300, i32 3}
!229 = !{ptr @e1000_read_nvm_spt.__UNIQUE_ID_ddebug381, !230, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3356, i32 3}
!231 = !{ptr @.str.87, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3823, i32 3}
!233 = !{ptr @e1000_update_nvm_checksum_spt.__UNIQUE_ID_ddebug390, !232, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!234 = !{ptr @e1000_update_nvm_checksum_spt.__UNIQUE_ID_ddebug391, !235, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3889, i32 3}
!236 = !{ptr @e1000_update_nvm_checksum_spt.__UNIQUE_ID_ddebug392, !237, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 3945, i32 3}
!238 = !{ptr @.str.88, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 4413, i32 3}
!240 = !{ptr @.str.89, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @e1000_retry_write_flash_dword_ich8lan.__UNIQUE_ID_ddebug399, !239, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!242 = !{ptr @.str.90, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/intel/e1000e/ich8lan.c", i32 4367, i32 4}
!244 = !{ptr @e1000_write_flash_data32_ich8lan.__UNIQUE_ID_ddebug398, !243, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!245 = !{i32 1, !"wchar_size", i32 2}
!246 = !{i32 1, !"min_enum_size", i32 4}
!247 = !{i32 8, !"branch-target-enforcement", i32 0}
!248 = !{i32 8, !"sign-return-address", i32 0}
!249 = !{i32 8, !"sign-return-address-all", i32 0}
!250 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!251 = !{i32 7, !"uwtable", i32 1}
!252 = !{i32 7, !"frame-pointer", i32 2}
!253 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!254 = !{!"auto-init"}
!255 = !{i8 0, i8 2}
!256 = !{i64 2059793}
!257 = !{i64 2157068642}
!258 = !{i64 2149059995, i64 2149060000, i64 2149060013, i64 2149060057, i64 2149060091, i64 2149060112}
!259 = !{i64 2157070000}
!260 = !{i64 2157070959}
!261 = !{i64 2059375}
!262 = !{i64 2058955}
!263 = !{i64 2157069321}
!264 = !{i64 2157070389}
!265 = !{i64 2058755}
