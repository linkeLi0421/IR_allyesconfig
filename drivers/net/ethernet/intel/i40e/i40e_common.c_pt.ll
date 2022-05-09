; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/i40e/i40e_common.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/i40e/i40e_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i40e_hw = type { ptr, ptr, %struct.i40e_phy_info, %struct.i40e_mac_info, %struct.i40e_bus_info, %struct.i40e_nvm_info, %struct.i40e_fc_info, i16, i16, i16, i16, i8, i8, i8, %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities, i16, i8, i16, i16, i16, i16, i16, %struct.i40e_adminq_info, i32, %struct.i40e_aq_desc, %struct.i40e_aq_desc, %struct.i40e_virt_mem, i8, i16, %struct.i40e_hmc_info, i16, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, i64, i16, i16, i16, i32, [16 x i8] }
%struct.i40e_phy_info = type { %struct.i40e_link_status, %struct.i40e_link_status, i8, i32, i64 }
%struct.i40e_link_status = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, [3 x i8] }
%struct.i40e_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.i40e_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.i40e_nvm_info = type { i64, i32, i16, i8, i16, i32, i32 }
%struct.i40e_fc_info = type { i32, i32 }
%struct.i40e_hw_capabilities = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, [30 x i8], [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i64 }
%struct.i40e_adminq_info = type { %struct.i40e_adminq_ring, %struct.i40e_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.i40e_adminq_ring = type { %struct.i40e_virt_mem, %struct.i40e_dma_mem, %struct.i40e_virt_mem, %union.anon, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.i40e_dma_mem = type { ptr, i32, i32 }
%union.anon = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i40e_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.2 }
%union.anon.2 = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32 }
%struct.i40e_virt_mem = type { ptr, i32 }
%struct.i40e_hmc_info = type { i32, i8, i16, ptr, %struct.i40e_virt_mem, %struct.i40e_hmc_sd_table }
%struct.i40e_hmc_sd_table = type { %struct.i40e_virt_mem, i32, i32, ptr }
%struct.i40e_dcbx_config = type { i8, i8, i32, i32, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_pfc_config, [32 x %struct.i40e_dcb_app_priority_table] }
%struct.i40e_dcb_ets_config = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8] }
%struct.i40e_dcb_pfc_config = type { i8, i8, i8, i8 }
%struct.i40e_dcb_app_priority_table = type { i8, i8, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.211, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.211 = type { ptr }
%struct.i40e_aqc_get_set_rss_lut = type { i16, i16, [4 x i8], i32, i32 }
%struct.i40e_aqc_mac_address_write = type { i16, i16, i32, [8 x i8] }
%struct.i40e_aqc_mac_address_read_data = type { [6 x i8], [6 x i8], [6 x i8], [6 x i8] }
%struct.i40e_aq_get_phy_abilities_resp = type { i32, i8, i8, i16, i32, i8, i8, i8, i8, [4 x i8], [3 x i8], i8, [16 x %struct.i40e_aqc_module_desc] }
%struct.i40e_aqc_module_desc = type { [3 x i8], i8, [16 x i8], [4 x i8], [8 x i8] }
%struct.i40e_aqc_get_link_status = type { i16, i8, i8, i8, i8, i8, i8, i16, i8, %union.anon.218 }
%union.anon.218 = type { %struct.anon.219 }
%struct.anon.219 = type { i8, [4 x i8] }
%struct.i40e_vsi_context = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, %struct.i40e_aqc_vsi_properties_data }
%struct.i40e_aqc_vsi_properties_data = type { i16, i16, [2 x i8], i8, i8, i16, i16, i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, [3 x i8], i8, i8, i32, [8 x i8], [8 x i16], i16, i16, [12 x i8] }
%struct.i40e_aqc_add_get_update_vsi = type { i16, i8, i8, i8, i8, i16, i32, i32 }
%struct.i40e_aqc_set_vsi_promiscuous_modes = type { i16, i16, i16, i16, [8 x i8] }
%struct.i40e_aqc_add_get_update_vsi_completion = type { i16, i16, i16, i16, i32, i32 }
%struct.i40e_aqc_set_switch_config = type { i16, i16, i16, i16, i16, i8, [5 x i8] }
%struct.i40e_aqc_get_version = type { i32, i32, i16, i16, i16, i16 }
%struct.i40e_driver_version = type { i8, i8, i8, i8, [32 x i8] }
%struct.i40e_aqc_driver_version = type { i8, i8, i8, i8, [4 x i8], i32, i32 }
%struct.i40e_aqc_add_veb = type { i16, i16, i16, i8, [9 x i8] }
%struct.i40e_aqc_get_veb_parameters_completion = type { i16, i16, i16, i16, i16, i16, [4 x i8] }
%struct.i40e_aqc_macvlan = type { i16, [3 x i16], i32, i32 }
%struct.i40e_aqc_add_macvlan_element_data = type { [6 x i8], i16, i16, i16, i8, [3 x i8] }
%struct.i40e_aqc_add_delete_mirror_rule = type { i16, i16, i16, i16, i32, i32 }
%struct.i40e_aqc_request_resource = type { i16, i16, i32, i32, [4 x i8] }
%struct.i40e_aqc_nvm_update = type { i8, i8, i16, i32, i32, i32 }
%struct.i40e_aqc_list_capabilities_element_resp = type { i16, i8, i8, i32, i32, i32, [16 x i8] }
%struct.i40e_aqc_lldp_get_mib = type { i8, i8, i16, i16, [2 x i8], i32, i32 }
%struct.i40e_aqc_lldp_set_local_mib = type { i8, i8, i16, [4 x i8], i32, i32 }
%struct.i40e_aqc_set_dcb_parameters = type { i8, i8, [14 x i8] }
%struct.i40e_aqc_add_udp_tunnel = type { i16, [3 x i8], i8, [10 x i8] }
%struct.i40e_aqc_del_udp_tunnel_completion = type { i16, i8, i8, i8, [11 x i8] }
%struct.i40e_aqc_remove_udp_tunnel = type { [2 x i8], i8, [13 x i8] }
%struct.i40e_filter_control_settings = type { i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.i40e_aqc_add_remove_control_packet_filter = type { [6 x i8], i16, i16, i16, i16, [2 x i8] }
%struct.i40e_aqc_add_remove_control_packet_filter_completion = type { i16, i16, i16, i16, [8 x i8] }
%struct.i40e_control_filter_stats = type { i16, i16, i16, i16 }
%struct.i40e_aqc_debug_dump_internals = type { i8, i8, i16, i32, i32, i32 }
%struct.i40e_aqc_phy_register_access = type { i8, i8, i8, i8, i32, i32, [4 x i8] }
%struct.i40e_package_header = type { %struct.i40e_ddp_version, i32, [1 x i32] }
%struct.i40e_ddp_version = type { i8, i8, i8, i8 }
%struct.i40e_profile_segment = type { %struct.i40e_generic_seg_header, %struct.i40e_ddp_version, [32 x i8], i32, [1 x %struct.i40e_device_id_entry] }
%struct.i40e_generic_seg_header = type { i32, %struct.i40e_ddp_version, i32, [32 x i8] }
%struct.i40e_device_id_entry = type { i32, i32 }
%struct.i40e_section_table = type { i32, [1 x i32] }
%struct.i40e_profile_section_header = type { i16, i16, %struct.anon.221 }
%struct.anon.221 = type { i32, i32, i32 }
%struct.i40e_profile_aq_section = type { i16, i16, [16 x i8], i16, [1 x i8] }
%struct.i40e_aqc_add_remove_cloud_filters = type { i8, i8, i16, i8, [3 x i8], i32, i32 }
%struct.i40e_aqc_cloud_filters_element_bb = type { %struct.i40e_aqc_cloud_filters_element_data, [32 x i16] }
%struct.i40e_aqc_cloud_filters_element_data = type { [6 x i8], [6 x i8], i16, %union.anon.222, i16, i32, [4 x i8], i16, [14 x i8], i8, [7 x i8] }
%union.anon.222 = type { %struct.anon.225 }
%struct.anon.225 = type { [8 x i16] }

@i40e_set_mac_type.__UNIQUE_ID_ddebug676 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i40e\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i40e_set_mac_type\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/intel/i40e/i40e_common.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"i40e_set_mac_type found mac: %d, returns: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I40E_AQ_RC_EPERM\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I40E_AQ_RC_ENOENT\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I40E_AQ_RC_ESRCH\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I40E_AQ_RC_EINTR\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"I40E_AQ_RC_EIO\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I40E_AQ_RC_ENXIO\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I40E_AQ_RC_E2BIG\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I40E_AQ_RC_EAGAIN\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I40E_AQ_RC_ENOMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I40E_AQ_RC_EACCES\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I40E_AQ_RC_EFAULT\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I40E_AQ_RC_EBUSY\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I40E_AQ_RC_EEXIST\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I40E_AQ_RC_EINVAL\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I40E_AQ_RC_ENOTTY\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I40E_AQ_RC_ENOSPC\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I40E_AQ_RC_ENOSYS\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I40E_AQ_RC_ERANGE\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"I40E_AQ_RC_EFLUSHED\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"I40E_AQ_RC_BAD_ADDR\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I40E_AQ_RC_EMODE\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I40E_AQ_RC_EFBIG\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I40E_ERR_NVM\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"I40E_ERR_NVM_CHECKSUM\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I40E_ERR_PHY\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I40E_ERR_CONFIG\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"I40E_ERR_PARAM\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I40E_ERR_MAC_TYPE\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"I40E_ERR_UNKNOWN_PHY\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"I40E_ERR_LINK_SETUP\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"I40E_ERR_ADAPTER_STOPPED\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"I40E_ERR_INVALID_MAC_ADDR\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"I40E_ERR_DEVICE_NOT_SUPPORTED\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"I40E_ERR_PRIMARY_REQUESTS_PENDING\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"I40E_ERR_INVALID_LINK_SETTINGS\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"I40E_ERR_AUTONEG_NOT_COMPLETE\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"I40E_ERR_RESET_FAILED\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"I40E_ERR_SWFW_SYNC\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"I40E_ERR_NO_AVAILABLE_VSI\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"I40E_ERR_NO_MEMORY\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I40E_ERR_BAD_PTR\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"I40E_ERR_RING_FULL\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"I40E_ERR_INVALID_PD_ID\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"I40E_ERR_INVALID_QP_ID\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"I40E_ERR_INVALID_CQ_ID\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"I40E_ERR_INVALID_CEQ_ID\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"I40E_ERR_INVALID_AEQ_ID\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"I40E_ERR_INVALID_SIZE\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"I40E_ERR_INVALID_ARP_INDEX\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"I40E_ERR_INVALID_FPM_FUNC_ID\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"I40E_ERR_QP_INVALID_MSG_SIZE\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"I40E_ERR_QP_TOOMANY_WRS_POSTED\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"I40E_ERR_INVALID_FRAG_COUNT\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"I40E_ERR_QUEUE_EMPTY\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"I40E_ERR_INVALID_ALIGNMENT\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"I40E_ERR_FLUSHED_QUEUE\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"I40E_ERR_INVALID_PUSH_PAGE_INDEX\00", [63 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"I40E_ERR_INVALID_IMM_DATA_SIZE\00", [33 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I40E_ERR_TIMEOUT\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"I40E_ERR_OPCODE_MISMATCH\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"I40E_ERR_CQP_COMPL_ERROR\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"I40E_ERR_INVALID_VF_ID\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"I40E_ERR_INVALID_HMCFN_ID\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"I40E_ERR_BACKING_PAGE_ERROR\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"I40E_ERR_NO_PBLCHUNKS_AVAILABLE\00", [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"I40E_ERR_INVALID_PBLE_INDEX\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"I40E_ERR_INVALID_SD_INDEX\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"I40E_ERR_INVALID_PAGE_DESC_INDEX\00", [63 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"I40E_ERR_INVALID_SD_TYPE\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"I40E_ERR_MEMCPY_FAILED\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"I40E_ERR_INVALID_HMC_OBJ_INDEX\00", [33 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"I40E_ERR_INVALID_HMC_OBJ_COUNT\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"I40E_ERR_INVALID_SRQ_ARM_LIMIT\00", [33 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"I40E_ERR_SRQ_ENABLED\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"I40E_ERR_ADMIN_QUEUE_ERROR\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"I40E_ERR_ADMIN_QUEUE_TIMEOUT\00", [35 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"I40E_ERR_BUF_TOO_SHORT\00", [41 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"I40E_ERR_ADMIN_QUEUE_FULL\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"I40E_ERR_ADMIN_QUEUE_NO_WORK\00", [35 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"I40E_ERR_BAD_IWARP_CQE\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"I40E_ERR_NVM_BLANK_MODE\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"I40E_ERR_NOT_IMPLEMENTED\00", [39 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"I40E_ERR_PE_DOORBELL_NOT_ENABLED\00", [63 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"I40E_ERR_DIAG_TEST_FAILED\00", [38 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"I40E_ERR_NOT_READY\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"I40E_NOT_SUPPORTED\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"I40E_ERR_FIRMWARE_API_VERSION\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"I40E_ERR_ADMIN_QUEUE_CRITICAL_ERROR\00", [60 x i8] zeroinitializer }, align 32
@i40e_debug_aq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\016i40e %02x:%02x.%x AQ CMD: opcode 0x%04X, flags 0x%04X, datalen 0x%04X, retval 0x%04X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i40e_debug_aq\00", [18 x i8] zeroinitializer }, align 32
@i40e_debug_aq._entry_ptr = internal global ptr @i40e_debug_aq._entry, section ".printk_index", align 4
@i40e_debug_aq._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016i40e %02x:%02x.%x \09cookie (h,l) 0x%08X 0x%08X\0A\00", [47 x i8] zeroinitializer }, align 32
@i40e_debug_aq._entry_ptr.98 = internal global ptr @i40e_debug_aq._entry.96, section ".printk_index", align 4
@i40e_debug_aq._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016i40e %02x:%02x.%x \09param (0,1)  0x%08X 0x%08X\0A\00", [47 x i8] zeroinitializer }, align 32
@i40e_debug_aq._entry_ptr.101 = internal global ptr @i40e_debug_aq._entry.99, section ".printk_index", align 4
@i40e_debug_aq._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.95, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016i40e %02x:%02x.%x \09addr (h,l)   0x%08X 0x%08X\0A\00", [47 x i8] zeroinitializer }, align 32
@i40e_debug_aq._entry_ptr.104 = internal global ptr @i40e_debug_aq._entry.102, section ".printk_index", align 4
@i40e_debug_aq._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.95, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016i40e %02x:%02x.%x AQ CMD Buffer:\0A\00", [60 x i8] zeroinitializer }, align 32
@i40e_debug_aq._entry_ptr.107 = internal global ptr @i40e_debug_aq._entry.105, section ".printk_index", align 4
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i40e %02x:%02x.%x: \090x\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@i40e_ptype_lookup = dso_local global { [256 x { i8, i8, i8, i8 }], [256 x i8] } { [256 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 20, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -48, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -62, i8 -63, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -62, i8 -127, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -62, i8 -123, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -62, i8 -119, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -62, i8 -115, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -62, i8 -111, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 65, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -60, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -60, i8 -63, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -60, i8 -127, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -60, i8 -123, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -60, i8 -119, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -60, i8 -115, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -60, i8 -111, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -59, i8 65, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -59, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -59, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -59, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -59, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -59, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -58, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -58, i8 -63, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -58, i8 -127, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -58, i8 -123, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -58, i8 -119, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -58, i8 -115, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -58, i8 -111, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -57, i8 65, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -57, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -57, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -57, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -57, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -57, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -56, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -56, i8 -63, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -56, i8 -127, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -56, i8 -123, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -56, i8 -119, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -56, i8 -115, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -56, i8 -111, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 65, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -16, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -32, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -32, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -32, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -32, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -32, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -63, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -127, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -123, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -119, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -115, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -111, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 65, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -63, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -127, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -123, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -119, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -115, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -111, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -27, i8 65, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -27, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -27, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -27, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -27, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -27, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -26, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -26, i8 -63, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -26, i8 -127, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -26, i8 -123, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -26, i8 -119, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -26, i8 -115, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -26, i8 -111, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 65, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 -63, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 -127, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 -123, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 -119, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 -115, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 -111, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -23, i8 65, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -23, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -23, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -23, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -23, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -23, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }], [256 x i8] zeroinitializer }, align 32
@i40e_read_pba_string.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.2, ptr @.str.111, i8 0, i8 -10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i40e_read_pba_string\00", [43 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to read PBA flags or flag is invalid.\0A\00", [50 x i8] zeroinitializer }, align 32
@i40e_read_pba_string.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.2, ptr @.str.112, i8 0, i8 -9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read PBA Block pointer.\0A\00", [61 x i8] zeroinitializer }, align 32
@i40e_read_pba_string.__UNIQUE_ID_ddebug679 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.2, ptr @.str.113, i8 0, i8 -7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read PBA Block size.\0A\00", [32 x i8] zeroinitializer }, align 32
@i40e_read_pba_string.__UNIQUE_ID_ddebug680 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.2, ptr @.str.114, i8 0, i8 -5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Buffer too small for PBA data.\0A\00", [32 x i8] zeroinitializer }, align 32
@i40e_read_pba_string.__UNIQUE_ID_ddebug681 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.2, ptr @.str.115, i8 0, i8 -3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read PBA Block word %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@i40e_pf_reset.__UNIQUE_ID_ddebug684 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.117, i8 1, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i40e_pf_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Global reset polling failed to complete.\0A\00", [54 x i8] zeroinitializer }, align 32
@i40e_pf_reset.__UNIQUE_ID_ddebug685 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.118, i8 1, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Core and Global modules ready %d\0A\00", [62 x i8] zeroinitializer }, align 32
@i40e_pf_reset.__UNIQUE_ID_ddebug686 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.119, i8 1, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"wait for FW Reset complete timedout\0A\00", [59 x i8] zeroinitializer }, align 32
@i40e_pf_reset.__UNIQUE_ID_ddebug687 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.120, i8 1, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"I40E_GLNVM_ULD = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@i40e_pf_reset.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.121, i8 1, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PF reset polling failed to complete.\0A\00", [58 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@i40e_led_set.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.2, ptr @.str.123, i8 1, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i40e_led_set\00", [19 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid mode passed in %X\0A\00", [37 x i8] zeroinitializer }, align 32
@i40e_get_link_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 2470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016i40e %02x:%02x.%x get link failed: status %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i40e_get_link_status\00", [43 x i8] zeroinitializer }, align 32
@i40e_get_link_status._entry_ptr = internal global ptr @i40e_get_link_status._entry, section ".printk_index", align 4
@i40e_aq_restore_lldp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 3643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016i40e %02x:%02x.%x Restore LLDP not supported by current FW version.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i40e_aq_restore_lldp\00", [43 x i8] zeroinitializer }, align 32
@i40e_aq_restore_lldp._entry_ptr = internal global ptr @i40e_aq_restore_lldp._entry, section ".printk_index", align 4
@i40e_aq_stop_lldp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 3688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016i40e %02x:%02x.%x Persistent Stop LLDP not supported by current FW version.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i40e_aq_stop_lldp\00", [46 x i8] zeroinitializer }, align 32
@i40e_aq_stop_lldp._entry_ptr = internal global ptr @i40e_aq_stop_lldp._entry, section ".printk_index", align 4
@i40e_aq_start_lldp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 3721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016i40e %02x:%02x.%x Persistent Start LLDP not supported by current FW version.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i40e_aq_start_lldp\00", [45 x i8] zeroinitializer }, align 32
@i40e_aq_start_lldp._entry_ptr = internal global ptr @i40e_aq_start_lldp._entry, section ".printk_index", align 4
@i40e_add_filter_to_drop_tx_flow_control_frames.__UNIQUE_ID_ddebug690 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.132, ptr @.str.2, ptr @.str.133, i8 4, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"i40e_add_filter_to_drop_tx_flow_control_frames\00", [49 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Ethtype Filter Add failed: Error pruning Tx flow control frames\0A\00", [63 x i8] zeroinitializer }, align 32
@i40e_read_phy_register_clause22._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 4664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016i40e %02x:%02x.%x PHY: Can't write command to external PHY.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"i40e_read_phy_register_clause22\00", [32 x i8] zeroinitializer }, align 32
@i40e_read_phy_register_clause22._entry_ptr = internal global ptr @i40e_read_phy_register_clause22._entry, section ".printk_index", align 4
@i40e_read_phy_register_clause45._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.136, ptr @.str.2, i32 4752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"i40e_read_phy_register_clause45\00", [32 x i8] zeroinitializer }, align 32
@i40e_read_phy_register_clause45._entry_ptr = internal global ptr @i40e_read_phy_register_clause45._entry, section ".printk_index", align 4
@i40e_read_phy_register_clause45._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.2, i32 4781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016i40e %02x:%02x.%x PHY: Can't read register value from external PHY.\0A\00", [57 x i8] zeroinitializer }, align 32
@i40e_read_phy_register_clause45._entry_ptr.139 = internal global ptr @i40e_read_phy_register_clause45._entry.137, section ".printk_index", align 4
@i40e_write_phy_register_clause45._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.140, ptr @.str.2, i32 4825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"i40e_write_phy_register_clause45\00", [63 x i8] zeroinitializer }, align 32
@i40e_write_phy_register_clause45._entry_ptr = internal global ptr @i40e_write_phy_register_clause45._entry, section ".printk_index", align 4
@i40e_write_profile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 5732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016i40e %02x:%02x.%x Failed to execute aq: section %d, opcode %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i40e_write_profile\00", [45 x i8] zeroinitializer }, align 32
@i40e_write_profile._entry_ptr = internal global ptr @i40e_write_profile._entry, section ".printk_index", align 4
@i40e_write_profile._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.2, i32 5751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016i40e %02x:%02x.%x Failed to write profile: section %d, offset %d, info %d\0A\00", [51 x i8] zeroinitializer }, align 32
@i40e_write_profile._entry_ptr.145 = internal global ptr @i40e_write_profile._entry.143, section ".printk_index", align 4
@i40e_rollback_profile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.146, ptr @.str.2, i32 5802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i40e_rollback_profile\00", [42 x i8] zeroinitializer }, align 32
@i40e_rollback_profile._entry_ptr = internal global ptr @i40e_rollback_profile._entry, section ".printk_index", align 4
@i40e_poll_globr.__UNIQUE_ID_ddebug682 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.147, ptr @.str.2, ptr @.str.148, i8 1, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i40e_poll_globr\00", [16 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Global reset failed.\0A\00", [42 x i8] zeroinitializer }, align 32
@i40e_poll_globr.__UNIQUE_ID_ddebug683 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.147, ptr @.str.2, ptr @.str.149, i8 1, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"I40E_GLGEN_RSTAT = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@i40e_parse_discover_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.2, i32 3160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016i40e %02x:%02x.%x HW Capability: Protocols over MCTP = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"i40e_parse_discover_capabilities\00", [63 x i8] zeroinitializer }, align 32
@i40e_parse_discover_capabilities._entry_ptr = internal global ptr @i40e_parse_discover_capabilities._entry, section ".printk_index", align 4
@i40e_parse_discover_capabilities._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.2, i32 3229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016i40e %02x:%02x.%x HW Capability: MSIX vector count = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@i40e_parse_discover_capabilities._entry_ptr.154 = internal global ptr @i40e_parse_discover_capabilities._entry.152, section ".printk_index", align 4
@i40e_parse_discover_capabilities._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.151, ptr @.str.2, i32 3297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016i40e %02x:%02x.%x device is FCoE capable\0A\00", [52 x i8] zeroinitializer }, align 32
@i40e_parse_discover_capabilities._entry_ptr.157 = internal global ptr @i40e_parse_discover_capabilities._entry.155, section ".printk_index", align 4
@i40e_mdio_if_number_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.2, i32 5335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\016i40e %02x:%02x.%x MDIO I/F number selection not supported by current FW version.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"i40e_mdio_if_number_selection\00", [34 x i8] zeroinitializer }, align 32
@i40e_mdio_if_number_selection._entry_ptr = internal global ptr @i40e_mdio_if_number_selection._entry, section ".printk_index", align 4
@i40e_validate_profile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.2, i32 5651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016i40e %02x:%02x.%x Invalid track_id\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i40e_validate_profile\00", [42 x i8] zeroinitializer }, align 32
@i40e_validate_profile._entry_ptr = internal global ptr @i40e_validate_profile._entry, section ".printk_index", align 4
@i40e_validate_profile._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.2, i32 5664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016i40e %02x:%02x.%x Device doesn't support DDP\0A\00", [48 x i8] zeroinitializer }, align 32
@i40e_validate_profile._entry_ptr.164 = internal global ptr @i40e_validate_profile._entry.162, section ".printk_index", align 4
@i40e_validate_profile._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.161, ptr @.str.2, i32 5679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016i40e %02x:%02x.%x Not a roll-back package\0A\00", [51 x i8] zeroinitializer }, align 32
@i40e_validate_profile._entry_ptr.167 = internal global ptr @i40e_validate_profile._entry.165, section ".printk_index", align 4
@i40e_validate_profile._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.161, ptr @.str.2, i32 5686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016i40e %02x:%02x.%x Not an original package\0A\00", [51 x i8] zeroinitializer }, align 32
@i40e_validate_profile._entry_ptr.170 = internal global ptr @i40e_validate_profile._entry.168, section ".printk_index", align 4
@i40e_ddp_exec_aq_section._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.2, i32 5619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016i40e %02x:%02x.%x unable to exec DDP AQ opcode %u, error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i40e_ddp_exec_aq_section\00", [39 x i8] zeroinitializer }, align 32
@i40e_ddp_exec_aq_section._entry_ptr = internal global ptr @i40e_ddp_exec_aq_section._entry, section ".printk_index", align 4
@switch.table.i40e_aq_str = internal constant { [23 x ptr], [36 x i8] } { [23 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [36 x i8] zeroinitializer }, align 32
@switch.table.i40e_stat_str = internal constant { [67 x ptr], [84 x i8] } { [67 x ptr] [ptr @.str.93, ptr @.str.92, ptr @.str.91, ptr @.str.90, ptr @.str.89, ptr @.str.88, ptr @.str.87, ptr @.str.86, ptr @.str.85, ptr @.str.84, ptr @.str.83, ptr @.str.82, ptr @.str.81, ptr @.str.80, ptr @.str.79, ptr @.str.78, ptr @.str.77, ptr @.str.76, ptr @.str.75, ptr @.str.74, ptr @.str.73, ptr @.str.72, ptr @.str.71, ptr @.str.70, ptr @.str.69, ptr @.str.68, ptr @.str.67, ptr @.str.66, ptr @.str.65, ptr @.str.64, ptr @.str.63, ptr @.str.62, ptr @.str.61, ptr @.str.60, ptr @.str.59, ptr @.str.58, ptr @.str.57, ptr @.str.56, ptr @.str.55, ptr @.str.54, ptr @.str.53, ptr @.str.52, ptr @.str.51, ptr @.str.50, ptr @.str.49, ptr @.str.48, ptr @.str.47, ptr @.str.46, ptr @.str.45, ptr @.str.44, ptr @.str.43, ptr @.str.42, ptr @.str.41, ptr @.str.40, ptr @.str.39, ptr @.str.38, ptr @.str.37, ptr @.str.36, ptr @.str.35, ptr @.str.34, ptr @.str.33, ptr @.str.32, ptr @.str.31, ptr @.str.30, ptr @.str.29, ptr @.str.28, ptr @.str.4], [84 x i8] zeroinitializer }, align 32
@switch.table.i40e_aq_get_link_info = internal constant { [49 x i32], [60 x i8] } { [49 x i32] [i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 1, i32 1, i32 5, i32 5, i32 5, i32 1, i32 1, i32 1, i32 1, i32 0, i32 3, i32 3, i32 5, i32 1, i32 1, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2], [60 x i8] zeroinitializer }, align 32
@switch.table.i40e_aq_config_switch_comp_ets = internal constant { [21 x i16], [54 x i8] } { [21 x i16] [i16 20, i16 20, i16 16, i16 20, i16 16, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 16, i16 16, i16 16], [54 x i8] zeroinitializer }, align 32
@switch.table.i40e_set_pci_config_data = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 8], [32 x i8] zeroinitializer }, align 32
@switch.table.i40e_set_pci_config_data.173 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2500, i32 5000, i32 8000], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [27 x i64] [i64 25, i64 16, i64 3320, i64 3416, i64 4127, i64 4174, i64 4175, i64 5490, i64 5492, i64 5504, i64 5505, i64 5507, i64 5508, i64 5509, i64 5510, i64 5511, i64 5512, i64 5513, i64 5514, i64 5515, i64 5631, i64 14286, i64 14287, i64 14288, i64 14289, i64 14290, i64 14291]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 16, i64 4127, i64 5631]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 16, i64 4127, i64 5631]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 16, i64 4127, i64 5631]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@__sancov_gen_cov_switch_values.182 = internal global [31 x i64] [i64 29, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 33, i64 34, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 81, i64 97, i64 98, i64 99, i64 100, i64 128, i64 241, i64 242]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.184 = internal global [10 x i64] [i64 8, i64 16, i64 4127, i64 5510, i64 5513, i64 5514, i64 5515, i64 5631, i64 14289, i64 14290]
@__sancov_gen_cov_switch_values.185 = internal global [10 x i64] [i64 8, i64 16, i64 4127, i64 5510, i64 5513, i64 5514, i64 5515, i64 5631, i64 14289, i64 14290]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 2048, i64 2049]
@__sancov_gen_cov_switch_values.187 = internal global [5 x i64] [i64 3, i64 32, i64 2048, i64 2049, i64 6145]
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 60, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 74, i32 10 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 76, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 78, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 80, i32 10 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 82, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 84, i32 10 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 86, i32 10 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 88, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 90, i32 10 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 92, i32 10 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 94, i32 10 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 96, i32 10 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 98, i32 10 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 100, i32 10 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 102, i32 10 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 104, i32 10 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 106, i32 10 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 108, i32 10 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 110, i32 10 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 112, i32 10 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 114, i32 10 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 116, i32 10 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 118, i32 10 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 121, i32 45 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 136, i32 10 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 138, i32 10 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 140, i32 10 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 142, i32 10 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 144, i32 10 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 146, i32 10 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 148, i32 10 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 150, i32 10 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 152, i32 10 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 154, i32 10 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 156, i32 10 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 158, i32 10 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 160, i32 10 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 162, i32 10 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 164, i32 10 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 166, i32 10 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 168, i32 10 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 170, i32 10 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 172, i32 10 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 174, i32 10 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 176, i32 10 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 178, i32 10 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 180, i32 10 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 182, i32 10 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 184, i32 10 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 186, i32 10 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 188, i32 10 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 190, i32 10 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 192, i32 10 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 194, i32 10 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 196, i32 10 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 198, i32 10 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 200, i32 10 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 202, i32 10 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 204, i32 10 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 206, i32 10 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 208, i32 10 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 210, i32 10 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 212, i32 10 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 214, i32 10 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 216, i32 10 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 218, i32 10 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 220, i32 10 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 222, i32 10 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 224, i32 10 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 226, i32 10 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 228, i32 10 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 230, i32 10 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 232, i32 10 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 234, i32 10 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 236, i32 10 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 238, i32 10 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 240, i32 10 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 242, i32 10 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 244, i32 10 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 246, i32 10 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 248, i32 10 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 250, i32 10 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 252, i32 10 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 254, i32 10 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 256, i32 10 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 258, i32 10 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 260, i32 10 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 262, i32 10 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 264, i32 10 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 266, i32 10 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 297, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 303, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 307, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 311, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 318, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 323, i32 5 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 328, i32 18 }
@___asan_gen_.509 = private unnamed_addr constant [18 x i8] c"i40e_ptype_lookup\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 576, i32 30 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 984, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 990, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 996, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1005, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1012, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1142, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1153, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1160, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1161, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1190, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1401, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2469, i32 4 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 3642, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 3687, i32 4 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 3720, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 4363, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 4663, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 4751, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 4780, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 4824, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 5730, i32 5 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 5749, i32 4 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 5800, i32 4 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1100, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1101, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 3158, i32 5 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 3227, i32 4 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 3297, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 5334, i32 4 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 5651, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 5663, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 5678, i32 5 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 5685, i32 5 }
@___asan_gen_.710 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.716 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.717 = private constant [49 x i8] c"../drivers/net/ethernet/intel/i40e/i40e_common.c\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 5617, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant [25 x i8] c"switch.table.i40e_aq_str\00", align 1
@___asan_gen_.720 = private unnamed_addr constant [27 x i8] c"switch.table.i40e_stat_str\00", align 1
@___asan_gen_.721 = private unnamed_addr constant [35 x i8] c"switch.table.i40e_aq_get_link_info\00", align 1
@___asan_gen_.722 = private unnamed_addr constant [44 x i8] c"switch.table.i40e_aq_config_switch_comp_ets\00", align 1
@___asan_gen_.723 = private unnamed_addr constant [38 x i8] c"switch.table.i40e_set_pci_config_data\00", align 1
@___asan_gen_.724 = private unnamed_addr constant [42 x i8] c"switch.table.i40e_set_pci_config_data.173\00", align 1
@llvm.compiler.used = appending global [208 x ptr] [ptr @i40e_aq_restore_lldp._entry, ptr @i40e_aq_restore_lldp._entry_ptr, ptr @i40e_aq_start_lldp._entry, ptr @i40e_aq_start_lldp._entry_ptr, ptr @i40e_aq_stop_lldp._entry, ptr @i40e_aq_stop_lldp._entry_ptr, ptr @i40e_ddp_exec_aq_section._entry, ptr @i40e_ddp_exec_aq_section._entry_ptr, ptr @i40e_debug_aq._entry, ptr @i40e_debug_aq._entry.102, ptr @i40e_debug_aq._entry.105, ptr @i40e_debug_aq._entry.96, ptr @i40e_debug_aq._entry.99, ptr @i40e_debug_aq._entry_ptr, ptr @i40e_debug_aq._entry_ptr.101, ptr @i40e_debug_aq._entry_ptr.104, ptr @i40e_debug_aq._entry_ptr.107, ptr @i40e_debug_aq._entry_ptr.98, ptr @i40e_get_link_status._entry, ptr @i40e_get_link_status._entry_ptr, ptr @i40e_mdio_if_number_selection._entry, ptr @i40e_mdio_if_number_selection._entry_ptr, ptr @i40e_parse_discover_capabilities._entry, ptr @i40e_parse_discover_capabilities._entry.152, ptr @i40e_parse_discover_capabilities._entry.155, ptr @i40e_parse_discover_capabilities._entry_ptr, ptr @i40e_parse_discover_capabilities._entry_ptr.154, ptr @i40e_parse_discover_capabilities._entry_ptr.157, ptr @i40e_read_phy_register_clause22._entry, ptr @i40e_read_phy_register_clause22._entry_ptr, ptr @i40e_read_phy_register_clause45._entry, ptr @i40e_read_phy_register_clause45._entry.137, ptr @i40e_read_phy_register_clause45._entry_ptr, ptr @i40e_read_phy_register_clause45._entry_ptr.139, ptr @i40e_rollback_profile._entry, ptr @i40e_rollback_profile._entry_ptr, ptr @i40e_validate_profile._entry, ptr @i40e_validate_profile._entry.162, ptr @i40e_validate_profile._entry.165, ptr @i40e_validate_profile._entry.168, ptr @i40e_validate_profile._entry_ptr, ptr @i40e_validate_profile._entry_ptr.164, ptr @i40e_validate_profile._entry_ptr.167, ptr @i40e_validate_profile._entry_ptr.170, ptr @i40e_write_phy_register_clause45._entry, ptr @i40e_write_phy_register_clause45._entry_ptr, ptr @i40e_write_profile._entry, ptr @i40e_write_profile._entry.143, ptr @i40e_write_profile._entry_ptr, ptr @i40e_write_profile._entry_ptr.145, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @i40e_ptype_lookup, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.171, ptr @.str.172, ptr @switch.table.i40e_aq_str, ptr @switch.table.i40e_stat_str, ptr @switch.table.i40e_aq_get_link_info, ptr @switch.table.i40e_aq_config_switch_comp_ets, ptr @switch.table.i40e_set_pci_config_data, ptr @switch.table.i40e_set_pci_config_data.173], section "llvm.metadata"
@0 = internal global [183 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_debug_aq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_debug_aq._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_debug_aq._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_debug_aq._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_debug_aq._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ptype_lookup to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_get_link_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_aq_restore_lldp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_aq_stop_lldp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_aq_start_lldp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_read_phy_register_clause22._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_read_phy_register_clause45._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_read_phy_register_clause45._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_write_phy_register_clause45._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_write_profile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_write_profile._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_rollback_profile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_parse_discover_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_parse_discover_capabilities._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_parse_discover_capabilities._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_mdio_if_number_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_validate_profile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_validate_profile._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_validate_profile._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_validate_profile._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ddp_exec_aq_section._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.i40e_aq_str to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.i40e_stat_str to i32), i32 268, i32 352, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.i40e_aq_get_link_info to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.i40e_aq_config_switch_comp_ets to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.i40e_set_pci_config_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.i40e_set_pci_config_data.173 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_set_mac_type(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %1)
  %cmp = icmp eq i16 %1, -32634
  br i1 %cmp, label %if.then, label %entry.do.body8_crit_edge

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

if.then:                                          ; preds = %entry
  %device_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 7
  %2 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device_id, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %sw.default [
    i16 5490, label %if.then.do.body8.sink.split_crit_edge
    i16 5492, label %if.then.do.body8.sink.split_crit_edge25
    i16 5504, label %if.then.do.body8.sink.split_crit_edge26
    i16 5505, label %if.then.do.body8.sink.split_crit_edge27
    i16 5507, label %if.then.do.body8.sink.split_crit_edge28
    i16 5508, label %if.then.do.body8.sink.split_crit_edge29
    i16 5509, label %if.then.do.body8.sink.split_crit_edge30
    i16 4127, label %if.then.do.body8.sink.split_crit_edge31
    i16 5510, label %if.then.do.body8.sink.split_crit_edge32
    i16 5513, label %if.then.do.body8.sink.split_crit_edge33
    i16 5631, label %if.then.do.body8.sink.split_crit_edge34
    i16 4175, label %if.then.do.body8.sink.split_crit_edge35
    i16 4174, label %if.then.do.body8.sink.split_crit_edge36
    i16 5511, label %if.then.do.body8.sink.split_crit_edge37
    i16 5512, label %if.then.do.body8.sink.split_crit_edge38
    i16 5514, label %if.then.do.body8.sink.split_crit_edge39
    i16 5515, label %if.then.do.body8.sink.split_crit_edge40
    i16 3320, label %if.then.do.body8.sink.split_crit_edge41
    i16 3416, label %if.then.do.body8.sink.split_crit_edge42
    i16 14286, label %if.then.sw.bb3_crit_edge
    i16 14287, label %if.then.sw.bb3_crit_edge43
    i16 14288, label %if.then.sw.bb3_crit_edge44
    i16 14289, label %if.then.sw.bb3_crit_edge45
    i16 14290, label %if.then.sw.bb3_crit_edge46
    i16 14291, label %if.then.sw.bb3_crit_edge47
  ]

if.then.sw.bb3_crit_edge47:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

if.then.sw.bb3_crit_edge46:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

if.then.sw.bb3_crit_edge45:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

if.then.sw.bb3_crit_edge44:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

if.then.sw.bb3_crit_edge43:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

if.then.sw.bb3_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

if.then.do.body8.sink.split_crit_edge42:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge41:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge40:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge39:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge38:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge37:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge36:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge35:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge34:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge33:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge32:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge31:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge30:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge29:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge28:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge27:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge26:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge25:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

if.then.do.body8.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

sw.bb3:                                           ; preds = %if.then.sw.bb3_crit_edge, %if.then.sw.bb3_crit_edge43, %if.then.sw.bb3_crit_edge44, %if.then.sw.bb3_crit_edge45, %if.then.sw.bb3_crit_edge46, %if.then.sw.bb3_crit_edge47
  br label %do.body8.sink.split

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.sink.split

do.body8.sink.split:                              ; preds = %sw.default, %sw.bb3, %if.then.do.body8.sink.split_crit_edge, %if.then.do.body8.sink.split_crit_edge25, %if.then.do.body8.sink.split_crit_edge26, %if.then.do.body8.sink.split_crit_edge27, %if.then.do.body8.sink.split_crit_edge28, %if.then.do.body8.sink.split_crit_edge29, %if.then.do.body8.sink.split_crit_edge30, %if.then.do.body8.sink.split_crit_edge31, %if.then.do.body8.sink.split_crit_edge32, %if.then.do.body8.sink.split_crit_edge33, %if.then.do.body8.sink.split_crit_edge34, %if.then.do.body8.sink.split_crit_edge35, %if.then.do.body8.sink.split_crit_edge36, %if.then.do.body8.sink.split_crit_edge37, %if.then.do.body8.sink.split_crit_edge38, %if.then.do.body8.sink.split_crit_edge39, %if.then.do.body8.sink.split_crit_edge40, %if.then.do.body8.sink.split_crit_edge41, %if.then.do.body8.sink.split_crit_edge42
  %.sink = phi i32 [ 3, %sw.bb3 ], [ 5, %sw.default ], [ 1, %if.then.do.body8.sink.split_crit_edge ], [ 1, %if.then.do.body8.sink.split_crit_edge25 ], [ 1, %if.then.do.body8.sink.split_crit_edge26 ], [ 1, %if.then.do.body8.sink.split_crit_edge27 ], [ 1, %if.then.do.body8.sink.split_crit_edge28 ], [ 1, %if.then.do.body8.sink.split_crit_edge29 ], [ 1, %if.then.do.body8.sink.split_crit_edge30 ], [ 1, %if.then.do.body8.sink.split_crit_edge31 ], [ 1, %if.then.do.body8.sink.split_crit_edge32 ], [ 1, %if.then.do.body8.sink.split_crit_edge33 ], [ 1, %if.then.do.body8.sink.split_crit_edge34 ], [ 1, %if.then.do.body8.sink.split_crit_edge35 ], [ 1, %if.then.do.body8.sink.split_crit_edge36 ], [ 1, %if.then.do.body8.sink.split_crit_edge37 ], [ 1, %if.then.do.body8.sink.split_crit_edge38 ], [ 1, %if.then.do.body8.sink.split_crit_edge39 ], [ 1, %if.then.do.body8.sink.split_crit_edge40 ], [ 1, %if.then.do.body8.sink.split_crit_edge41 ], [ 1, %if.then.do.body8.sink.split_crit_edge42 ]
  %mac = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %mac, align 8
  br label %do.body8

do.body8:                                         ; preds = %do.body8.sink.split, %entry.do.body8_crit_edge
  %status.0 = phi i32 [ -11, %entry.do.body8_crit_edge ], [ 0, %do.body8.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_set_mac_type.__UNIQUE_ID_ddebug676, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_set_mac_type, %if.then11)) #10
          to label %do.end16 [label %if.then11], !srcloc !359

if.then11:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %back = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %back, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %mac12 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 3
  %10 = ptrtoint ptr %mac12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mac12, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_set_mac_type.__UNIQUE_ID_ddebug676, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %11, i32 noundef %status.0) #10
  br label %do.end16

do.end16:                                         ; preds = %if.then11, %do.body8
  ret i32 %status.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @i40e_aq_str(ptr noundef writeonly %hw, i32 noundef %aq_err) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %aq_err)
  %0 = icmp ult i32 %aq_err, 23
  br i1 %0, label %switch.lookup, label %sw.epilog

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %err_str = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 40
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %err_str, i32 noundef 16, ptr noundef nonnull @.str.27, i32 noundef %aq_err)
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [23 x ptr], ptr @switch.table.i40e_aq_str, i32 0, i32 %aq_err
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %sw.epilog
  %retval.0 = phi ptr [ %err_str, %sw.epilog ], [ %switch.load, %switch.lookup ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @i40e_stat_str(ptr noundef writeonly %hw, i32 noundef %stat_err) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %stat_err, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 67
  br i1 %0, label %switch.lookup, label %sw.epilog

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %err_str = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 40
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %err_str, i32 noundef 16, ptr noundef nonnull @.str.27, i32 noundef %stat_err)
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [67 x ptr], ptr @switch.table.i40e_stat_str, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %sw.epilog
  %retval.0 = phi ptr [ %err_str, %sw.epilog ], [ %switch.load, %switch.lookup ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_debug_aq(ptr nocapture noundef readonly %hw, i32 noundef %mask, ptr noundef readonly %desc, ptr noundef %buffer, i16 noundef zeroext %buf_len) local_unnamed_addr #0 align 64 {
entry:
  %prefix = alloca [27 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %0 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_mask, align 8
  %and = and i32 %1, %mask
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %prefix) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool1.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  %2 = call ptr @memset(ptr %prefix, i32 255, i32 27)
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %datalen = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 2
  %3 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %datalen, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %and2 = and i32 %mask, 33554432
  %and4 = and i32 %1, %and2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.do.body20_crit_edge, label %do.end

if.end.do.body20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bus_id, align 2
  %conv = zext i16 %7 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %conv9 = zext i16 %9 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %func, align 4
  %conv11 = zext i16 %11 to i32
  %opcode = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 1
  %12 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %opcode, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv12 = zext i16 %14 to i32
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %desc, align 4
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv13 = zext i16 %17 to i32
  %conv15 = zext i16 %5 to i32
  %retval = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 3
  %18 = ptrtoint ptr %retval to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %retval, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv16 = zext i16 %20 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %conv, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %conv16) #13
  br label %do.body20

do.body20:                                        ; preds = %do.end, %if.end.do.body20_crit_edge
  %21 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug_mask, align 8
  %and23 = and i32 %22, %and2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body20.do.body43_crit_edge, label %do.end28

do.body20.do.body43_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body43

do.end28:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id31 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %23 = ptrtoint ptr %bus_id31 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %bus_id31, align 2
  %conv32 = zext i16 %24 to i32
  %device34 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %25 = ptrtoint ptr %device34 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %device34, align 2
  %conv35 = zext i16 %26 to i32
  %func37 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %27 = ptrtoint ptr %func37 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %func37, align 4
  %conv38 = zext i16 %28 to i32
  %cookie_high = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 4
  %29 = ptrtoint ptr %cookie_high to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cookie_high, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %cookie_low = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 5
  %32 = ptrtoint ptr %cookie_low to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cookie_low, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %conv32, i32 noundef %conv35, i32 noundef %conv38, i32 noundef %31, i32 noundef %34) #13
  br label %do.body43

do.body43:                                        ; preds = %do.end28, %do.body20.do.body43_crit_edge
  %35 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %debug_mask, align 8
  %and46 = and i32 %36, %and2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body43.do.body67_crit_edge, label %do.end51

do.body43.do.body67_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body67

do.end51:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id54 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %37 = ptrtoint ptr %bus_id54 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %bus_id54, align 2
  %conv55 = zext i16 %38 to i32
  %device57 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %39 = ptrtoint ptr %device57 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %device57, align 2
  %conv58 = zext i16 %40 to i32
  %func60 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %41 = ptrtoint ptr %func60 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %func60, align 4
  %conv61 = zext i16 %42 to i32
  %params = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %43 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %params, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %param1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %46 = ptrtoint ptr %param1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %param1, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %conv55, i32 noundef %conv58, i32 noundef %conv61, i32 noundef %45, i32 noundef %48) #13
  br label %do.body67

do.body67:                                        ; preds = %do.end51, %do.body43.do.body67_crit_edge
  %49 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %debug_mask, align 8
  %and70 = and i32 %50, %and2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body67.do.end91_crit_edge, label %do.end75

do.body67.do.end91_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

do.end75:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id78 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %51 = ptrtoint ptr %bus_id78 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %bus_id78, align 2
  %conv79 = zext i16 %52 to i32
  %device81 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %53 = ptrtoint ptr %device81 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %device81, align 2
  %conv82 = zext i16 %54 to i32
  %func84 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %55 = ptrtoint ptr %func84 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %func84, align 4
  %conv85 = zext i16 %56 to i32
  %addr_high = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %57 = ptrtoint ptr %addr_high to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addr_high, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %addr_low = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 3
  %60 = ptrtoint ptr %addr_low to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %addr_low, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef %conv79, i32 noundef %conv82, i32 noundef %conv85, i32 noundef %59, i32 noundef %62) #13
  br label %do.end91

do.end91:                                         ; preds = %do.end75, %do.body67.do.end91_crit_edge
  %tobool92.not = icmp eq ptr %buffer, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %buf_len)
  %cmp.not = icmp eq i16 %buf_len, 0
  %or.cond193 = or i1 %tobool92.not, %cmp.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp97.not = icmp eq i16 %4, 0
  %or.cond194 = select i1 %or.cond193, i1 true, i1 %cmp97.not
  %and100 = and i32 %and, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  %or.cond195 = select i1 %or.cond194, i1 true, i1 %tobool101.not
  br i1 %or.cond195, label %do.end91.cleanup_crit_edge, label %do.body103

do.end91.cleanup_crit_edge:                       ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body103:                                       ; preds = %do.end91
  %63 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %debug_mask, align 8
  %and105 = and i32 %64, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %do.body103.do.end124_crit_edge, label %do.end110

do.body103.do.end124_crit_edge:                   ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end124

do.end110:                                        ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id113 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %65 = ptrtoint ptr %bus_id113 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %bus_id113, align 2
  %conv114 = zext i16 %66 to i32
  %device116 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %67 = ptrtoint ptr %device116 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %device116, align 2
  %conv117 = zext i16 %68 to i32
  %func119 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %69 = ptrtoint ptr %func119 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %func119, align 4
  %conv120 = zext i16 %70 to i32
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %conv114, i32 noundef %conv117, i32 noundef %conv120) #13
  br label %do.end124

do.end124:                                        ; preds = %do.end110, %do.body103.do.end124_crit_edge
  %71 = tail call i16 @llvm.umin.i16(i16 %5, i16 %buf_len)
  %bus_id132 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %72 = ptrtoint ptr %bus_id132 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %bus_id132, align 2
  %conv133 = zext i16 %73 to i32
  %device135 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %74 = ptrtoint ptr %device135 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %device135, align 2
  %conv136 = zext i16 %75 to i32
  %func138 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %76 = ptrtoint ptr %func138 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %func138, align 4
  %conv139 = zext i16 %77 to i32
  %call140 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prefix, i32 noundef 27, ptr noundef nonnull @.str.108, i32 noundef %conv133, i32 noundef %conv136, i32 noundef %conv139)
  %conv142 = zext i16 %71 to i32
  call void @print_hex_dump(ptr noundef nonnull @.str.109, ptr noundef nonnull %prefix, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %buffer, i32 noundef %conv142, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end124, %do.end91.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %prefix) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @i40e_check_asq_alive(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 10
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !361
  %.mask = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool5 = icmp ne i32 %.mask, 0
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool5, %if.then ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_queue_shutdown(ptr noundef %hw, i1 noundef zeroext %unloading) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 3) #10
  br i1 %unloading, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16777216, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_fill_default_direct_cmd_desc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_asq_send_command(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_get_rss_lut(ptr noundef %hw, i16 noundef zeroext %vsi_id, i1 noundef zeroext %pf_lut, ptr noundef %lut, i16 noundef zeroext %lut_size) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 2821) #10
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc.i, align 4
  %4 = or i16 %3, 20
  store i16 %4, ptr %desc.i, align 4
  %5 = and i16 %vsi_id, 1023
  %6 = or i16 %5, -32768
  %7 = call i16 @llvm.bswap.i16(i16 %6) #10
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %0, align 4
  br i1 %pf_lut, label %if.then15.i, label %entry.i40e_aq_get_set_rss_lut.exit_crit_edge

entry.i40e_aq_get_set_rss_lut.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_aq_get_set_rss_lut.exit

if.then15.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags16.i = getelementptr inbounds %struct.i40e_aqc_get_set_rss_lut, ptr %0, i32 0, i32 1
  %9 = ptrtoint ptr %flags16.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags16.i, align 2
  %11 = or i16 %10, 256
  store i16 %11, ptr %flags16.i, align 2
  br label %i40e_aq_get_set_rss_lut.exit

i40e_aq_get_set_rss_lut.exit:                     ; preds = %if.then15.i, %entry.i40e_aq_get_set_rss_lut.exit_crit_edge
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %lut, i16 noundef zeroext %lut_size, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_rss_lut(ptr noundef %hw, i16 noundef zeroext %vsi_id, i1 noundef zeroext %pf_lut, ptr noundef %lut, i16 noundef zeroext %lut_size) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 2819) #10
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc.i, align 4
  %4 = or i16 %3, 20
  store i16 %4, ptr %desc.i, align 4
  %5 = and i16 %vsi_id, 1023
  %6 = or i16 %5, -32768
  %7 = call i16 @llvm.bswap.i16(i16 %6) #10
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %0, align 4
  br i1 %pf_lut, label %if.then15.i, label %entry.i40e_aq_get_set_rss_lut.exit_crit_edge

entry.i40e_aq_get_set_rss_lut.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_aq_get_set_rss_lut.exit

if.then15.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags16.i = getelementptr inbounds %struct.i40e_aqc_get_set_rss_lut, ptr %0, i32 0, i32 1
  %9 = ptrtoint ptr %flags16.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags16.i, align 2
  %11 = or i16 %10, 256
  store i16 %11, ptr %flags16.i, align 2
  br label %i40e_aq_get_set_rss_lut.exit

i40e_aq_get_set_rss_lut.exit:                     ; preds = %if.then15.i, %entry.i40e_aq_get_set_rss_lut.exit_crit_edge
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %lut, i16 noundef zeroext %lut_size, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_get_rss_key(ptr noundef %hw, i16 noundef zeroext %vsi_id, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 2820) #10
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc.i, align 4
  %4 = or i16 %3, 20
  store i16 %4, ptr %desc.i, align 4
  %5 = and i16 %vsi_id, 1023
  %6 = or i16 %5, -32768
  %7 = call i16 @llvm.bswap.i16(i16 %6) #10
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %0, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %key, i16 noundef zeroext 52, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_rss_key(ptr noundef %hw, i16 noundef zeroext %vsi_id, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 2818) #10
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc.i, align 4
  %4 = or i16 %3, 20
  store i16 %4, ptr %desc.i, align 4
  %5 = and i16 %vsi_id, 1023
  %6 = or i16 %5, -32768
  %7 = call i16 @llvm.bswap.i16(i16 %6) #10
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %0, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %key, i16 noundef zeroext 52, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_init_shared_code(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i40e_set_mac_type(ptr noundef %hw)
  %mac = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge39
  ]

entry.sw.epilog_crit_edge39:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge39
  %get_link_info = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %get_link_info to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %get_link_info, align 8
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 1836160
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !360
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !362
  %8 = trunc i32 %7 to i8
  %conv = and i8 %8, 3
  %port3 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 12
  %9 = ptrtoint ptr %port3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %port3, align 1
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr7 = getelementptr i8, ptr %11, i32 779432
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !363
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 8
  %add.ptr16 = getelementptr i8, ptr %14, i32 638976
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #10, !srcloc !360
  %16 = lshr i32 %15, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !364
  %17 = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  %18 = trunc i32 %16 to i8
  %conv23 = and i8 %18, 7
  %conv21.sink = select i1 %tobool.not, i8 %conv23, i8 %18
  %19 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 17
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv21.sink, ptr %19, align 2
  %call25 = tail call i32 @i40e_init_nvm(ptr noundef %hw) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %sw.epilog ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_init_nvm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_mac_address_write(ptr noundef %hw, i16 noundef zeroext %flags, ptr nocapture noundef readonly %mac_addr, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 264) #10
  %3 = call i16 @llvm.bswap.i16(i16 %flags)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %0, align 4
  %5 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mac_addr, align 1
  %conv1 = zext i8 %6 to i16
  %shl = shl nuw i16 %conv1, 8
  %arrayidx2 = getelementptr i8, ptr %mac_addr, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %8 to i16
  %or = or i16 %shl, %conv3
  %9 = call i16 @llvm.bswap.i16(i16 %or)
  %mac_sah = getelementptr inbounds %struct.i40e_aqc_mac_address_write, ptr %0, i32 0, i32 1
  %10 = ptrtoint ptr %mac_sah to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %mac_sah, align 2
  %arrayidx5 = getelementptr i8, ptr %mac_addr, i32 2
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %12 to i32
  %shl7 = shl nuw i32 %conv6, 24
  %arrayidx8 = getelementptr i8, ptr %mac_addr, i32 3
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %14 to i32
  %shl10 = shl nuw nsw i32 %conv9, 16
  %or11 = or i32 %shl10, %shl7
  %arrayidx12 = getelementptr i8, ptr %mac_addr, i32 4
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %16 to i32
  %shl14 = shl nuw nsw i32 %conv13, 8
  %or15 = or i32 %or11, %shl14
  %arrayidx16 = getelementptr i8, ptr %mac_addr, i32 5
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %18 to i32
  %or18 = or i32 %or15, %conv17
  %19 = call i32 @llvm.bswap.i32(i32 %or18)
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %1, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_get_mac_addr(ptr noundef %hw, ptr nocapture noundef writeonly %mac_addr) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  %addrs = alloca %struct.i40e_aqc_mac_address_read_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %addrs) #10
  %0 = call ptr @memset(ptr %addrs, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 263) #10
  %3 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %desc.i, align 4
  %5 = or i16 %4, 16
  store i16 %5, ptr %desc.i, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %addrs, i16 noundef zeroext 24, ptr noundef null) #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  %8 = and i16 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = getelementptr inbounds [6 x i8], ptr %addrs, i32 0, i32 4
  %10 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addrs, align 4
  %12 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mac_addr, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %9, align 4
  %add.ptr1.i = getelementptr i8, ptr %mac_addr, i32 4
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr1.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %addrs) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_get_port_mac_addr(ptr noundef %hw, ptr nocapture noundef writeonly %mac_addr) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  %addrs = alloca %struct.i40e_aqc_mac_address_read_data, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %addrs) #10
  %0 = getelementptr inbounds %struct.i40e_aqc_mac_address_read_data, ptr %addrs, i32 0, i32 2
  %1 = getelementptr inbounds %struct.i40e_aqc_mac_address_read_data, ptr %addrs, i32 0, i32 2, i32 4
  %2 = call ptr @memset(ptr %addrs, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %3 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %4 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 263) #10
  %5 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %desc.i, align 4
  %7 = or i16 %6, 16
  store i16 %7, ptr %desc.i, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %addrs, i16 noundef zeroext 24, ptr noundef null) #10
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = and i16 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool1.not = icmp eq i16 %10, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  %13 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mac_addr, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 2
  %add.ptr1.i = getelementptr i8, ptr %mac_addr, i32 4
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %add.ptr1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ -10, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %addrs) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_pre_tx_queue_cfg(ptr nocapture noundef readonly %hw, i32 noundef %queue, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base_queue = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 15, i32 37
  %0 = ptrtoint ptr %base_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_queue, align 8
  %add = add i32 %1, %queue
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %add)
  %cmp = icmp ugt i32 %add, 127
  %rem = and i32 %add, 127
  %2 = lshr i32 %add, 5
  %phi.bo = and i32 %2, 134217724
  %phi.bo21 = add nuw nsw i32 %phi.bo, 943360
  %reg_block.0 = select i1 %cmp, i32 %phi.bo21, i32 943360
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 %reg_block.0
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !365
  %6 = and i32 %5, 16318463
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %reg_val.0.v = select i1 %enable, i32 -2147483648, i32 1073741824
  %or = or i32 %rem, %reg_val.0.v
  %reg_val.0 = or i32 %or, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !366
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %reg_val.0)
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %add.ptr10 = getelementptr i8, ptr %10, i32 %reg_block.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %8) #10, !srcloc !367
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_read_pba_string(ptr noundef %hw, ptr nocapture noundef writeonly %pba_num, i32 noundef %pba_num_size) local_unnamed_addr #0 align 64 {
entry:
  %pba_word = alloca i16, align 2
  %pba_size = alloca i16, align 2
  %pba_ptr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pba_word) #10
  %0 = ptrtoint ptr %pba_word to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %pba_word, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pba_size) #10
  %1 = ptrtoint ptr %pba_size to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %pba_size, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pba_ptr) #10
  %2 = ptrtoint ptr %pba_ptr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %pba_ptr, align 2
  %call = call i32 @i40e_read_nvm_word(ptr noundef %hw, i16 noundef zeroext 21, ptr noundef nonnull %pba_word) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %pba_word to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pba_word, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1286, i16 %4)
  %cmp.not = icmp eq i16 %4, -1286
  br i1 %cmp.not, label %if.end10, label %lor.lhs.false.do.body2_crit_edge

lor.lhs.false.do.body2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2:                                         ; preds = %lor.lhs.false.do.body2_crit_edge, %entry.do.body2_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_read_pba_string.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_read_pba_string, %if.then7)) #10
          to label %cleanup [label %if.then7], !srcloc !359

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %back = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_read_pba_string.__UNIQUE_ID_ddebug677, ptr noundef %dev, ptr noundef nonnull @.str.111) #10
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %call11 = call i32 @i40e_read_nvm_word(ptr noundef %hw, i16 noundef zeroext 22, ptr noundef nonnull %pba_ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end36, label %do.body15

do.body15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_read_pba_string.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_read_pba_string, %if.then27)) #10
          to label %cleanup [label %if.then27], !srcloc !359

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  %back28 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %back28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %back28, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_read_pba_string.__UNIQUE_ID_ddebug678, ptr noundef %dev30, ptr noundef nonnull @.str.112) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end10
  %13 = ptrtoint ptr %pba_ptr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %pba_ptr, align 2
  %call37 = call i32 @i40e_read_nvm_word(ptr noundef %hw, i16 noundef zeroext %14, ptr noundef nonnull %pba_size) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end62, label %do.body41

do.body41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_read_pba_string.__UNIQUE_ID_ddebug679, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_read_pba_string, %if.then53)) #10
          to label %cleanup [label %if.then53], !srcloc !359

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %back54 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %back54 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %back54, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_read_pba_string.__UNIQUE_ID_ddebug679, ptr noundef %dev56, ptr noundef nonnull @.str.113) #10
  br label %cleanup

if.end62:                                         ; preds = %if.end36
  %19 = ptrtoint ptr %pba_size to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pba_size, align 2
  %dec = add i16 %20, -1
  store i16 %dec, ptr %pba_size, align 2
  %conv63 = zext i16 %dec to i32
  %mul = shl nuw nsw i32 %conv63, 1
  %add = or i32 %mul, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %pba_num_size)
  %cmp64 = icmp ugt i32 %add, %pba_num_size
  br i1 %cmp64, label %do.body68, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end62
  %21 = ptrtoint ptr %pba_size to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pba_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp92186.not = icmp eq i16 %22, 0
  br i1 %cmp92186.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body68:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_read_pba_string.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_read_pba_string, %if.then80)) #10
          to label %cleanup [label %if.then80], !srcloc !359

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #12
  %back81 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %23 = ptrtoint ptr %back81 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %back81, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %dev83 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_read_pba_string.__UNIQUE_ID_ddebug680, ptr noundef %dev83, ptr noundef nonnull @.str.114) #10
  br label %cleanup

for.body:                                         ; preds = %if.end125.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end125.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %27 = ptrtoint ptr %pba_ptr to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pba_ptr, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %29 = trunc i32 %indvars.iv.next to i16
  %add97 = add i16 %28, %29
  %call99 = call i32 @i40e_read_nvm_word(ptr noundef %hw, i16 noundef zeroext %add97, ptr noundef nonnull %pba_word) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end125, label %do.body103

do.body103:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_read_pba_string.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_read_pba_string, %if.then115)) #10
          to label %cleanup [label %if.then115], !srcloc !359

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #12
  %back116 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %30 = ptrtoint ptr %back116 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %back116, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %dev118 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_read_pba_string.__UNIQUE_ID_ddebug681, ptr noundef %dev118, ptr noundef nonnull @.str.115, i32 noundef %indvars.iv) #10
  br label %cleanup

if.end125:                                        ; preds = %for.body
  %34 = ptrtoint ptr %pba_word to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %pba_word, align 2
  %36 = lshr i16 %35, 8
  %conv127 = trunc i16 %36 to i8
  %mul129 = shl nuw nsw i32 %indvars.iv, 1
  %arrayidx = getelementptr i8, ptr %pba_num, i32 %mul129
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv127, ptr %arrayidx, align 1
  %conv132 = trunc i16 %35 to i8
  %add135 = or i32 %mul129, 1
  %arrayidx136 = getelementptr i8, ptr %pba_num, i32 %add135
  %38 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv132, ptr %arrayidx136, align 1
  %39 = ptrtoint ptr %pba_size to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pba_size, align 2
  %41 = zext i16 %40 to i32
  %cmp92 = icmp ult i32 %indvars.iv.next, %41
  br i1 %cmp92, label %if.end125.for.body_crit_edge, label %for.end.loopexit

if.end125.for.body_crit_edge:                     ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast = zext i16 %40 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.bo, %for.end.loopexit ], [ 0, %for.cond.preheader.for.end_crit_edge ]
  %arrayidx139 = getelementptr i8, ptr %pba_num, i32 %.lcssa
  %42 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx139, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then115, %do.body103, %if.then80, %do.body68, %if.then53, %do.body41, %if.then27, %do.body15, %if.then7, %do.body2
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %if.then7 ], [ %call11, %if.then27 ], [ %call37, %if.then53 ], [ -5, %if.then80 ], [ %call99, %if.then115 ], [ %call, %do.body2 ], [ %call11, %do.body15 ], [ %call37, %do.body41 ], [ -5, %do.body68 ], [ %call99, %do.body103 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pba_ptr) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pba_size) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pba_word) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_read_nvm_word(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_pf_reset(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 754048
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !360
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !368
  %and = and i32 %3, 63
  %mul = mul nuw nsw i32 %and, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp253.not = icmp eq i32 %and, 0
  br i1 %cmp253.not, label %entry.for.body26.preheader_crit_edge, label %for.body.preheader

entry.for.body26.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body26.preheader

for.body.preheader:                               ; preds = %entry
  %umax = call i32 @llvm.umax.i32(i32 %mul, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %cnt.0254 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr5 = getelementptr i8, ptr %5, i32 754056
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !360
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !369
  %and9 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body
  tail call void @msleep(i32 noundef 100) #10
  %inc = add nuw nsw i32 %cnt.0254, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %cnt.0.lcssa.ph = phi i32 [ %umax, %if.end.for.end_crit_edge ], [ %cnt.0254, %for.body.for.end_crit_edge ]
  %phi.bo = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %phi.cmp = icmp eq i32 %phi.bo, 0
  br i1 %phi.cmp, label %for.end.for.body26.preheader_crit_edge, label %do.body13

for.end.for.body26.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body26.preheader

for.body26.preheader:                             ; preds = %for.end.for.body26.preheader_crit_edge, %entry.for.body26.preheader_crit_edge
  %cnt.0.lcssa269 = phi i32 [ %cnt.0.lcssa.ph, %for.end.for.body26.preheader_crit_edge ], [ 0, %entry.for.body26.preheader_crit_edge ]
  br label %for.body26

do.body13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_pf_reset.__UNIQUE_ID_ddebug684, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_pf_reset, %if.then19)) #10
          to label %cleanup192 [label %if.then19], !srcloc !359

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  %back = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %back, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_pf_reset.__UNIQUE_ID_ddebug684, ptr noundef %dev, ptr noundef nonnull @.str.117) #10
  br label %cleanup192

for.body26:                                       ; preds = %if.end59.for.body26_crit_edge, %for.body26.preheader
  %cnt1.0258 = phi i32 [ %inc61, %if.end59.for.body26_crit_edge ], [ 0, %for.body26.preheader ]
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %add.ptr30 = getelementptr i8, ptr %13, i32 745480
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #10, !srcloc !360
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !370
  %and34 = and i32 %15, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and34)
  %cmp35 = icmp eq i32 %and34, 24
  br i1 %cmp35, label %do.body38, label %if.end59

do.body38:                                        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_pf_reset.__UNIQUE_ID_ddebug685, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_pf_reset, %for.end62.thread)) #10
          to label %if.end110 [label %for.end62.thread], !srcloc !359

for.end62.thread:                                 ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  %back51 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %16 = ptrtoint ptr %back51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %back51, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_pf_reset.__UNIQUE_ID_ddebug685, ptr noundef %dev53, ptr noundef nonnull @.str.118, i32 noundef %cnt1.0258) #10
  br label %if.end110

if.end59:                                         ; preds = %for.body26
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %inc61 = add nuw nsw i32 %cnt1.0258, 1
  %exitcond265.not = icmp eq i32 %inc61, 200
  br i1 %exitcond265.not, label %for.end62.loopexit, label %if.end59.for.body26_crit_edge

if.end59.for.body26_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body26

for.end62.loopexit:                               ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %phi.cmp266 = icmp eq i32 %and34, 0
  br i1 %phi.cmp266, label %do.body67, label %for.end62.loopexit.if.end110_crit_edge

for.end62.loopexit.if.end110_crit_edge:           ; preds = %for.end62.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

do.body67:                                        ; preds = %for.end62.loopexit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_pf_reset.__UNIQUE_ID_ddebug686, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_pf_reset, %if.then79)) #10
          to label %do.body89 [label %if.then79], !srcloc !359

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  %back80 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %20 = ptrtoint ptr %back80 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %back80, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_pf_reset.__UNIQUE_ID_ddebug686, ptr noundef %dev82, ptr noundef nonnull @.str.119) #10
  br label %do.body89

do.body89:                                        ; preds = %if.then79, %do.body67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_pf_reset.__UNIQUE_ID_ddebug687, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_pf_reset, %if.then101)) #10
          to label %cleanup192 [label %if.then101], !srcloc !359

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #12
  %back102 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %24 = ptrtoint ptr %back102 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %back102, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %dev104 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_pf_reset.__UNIQUE_ID_ddebug687, ptr noundef %dev104, ptr noundef nonnull @.str.120, i32 noundef 0) #10
  br label %cleanup192

if.end110:                                        ; preds = %for.end62.loopexit.if.end110_crit_edge, %for.end62.thread, %do.body38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0.lcssa269)
  %tobool111.not = icmp eq i32 %cnt.0.lcssa269, 0
  br i1 %tobool111.not, label %if.end116, label %if.end110.if.end191_crit_edge

if.end110.if.end191_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191

if.end116:                                        ; preds = %if.end110
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 8
  %add.ptr120 = getelementptr i8, ptr %29, i32 599040
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !372
  tail call void @arm_heavy_mb() #10
  %31 = or i32 %30, 16777216
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 8
  %add.ptr128 = getelementptr i8, ptr %33, i32 599040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %31) #10, !srcloc !367
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 8
  %add.ptr135285 = getelementptr i8, ptr %35, i32 599040
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135285) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !373
  %37 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool140.not286 = icmp eq i32 %37, 0
  br i1 %tobool140.not286, label %if.end116.if.end191_crit_edge, label %if.end116.if.end142_crit_edge

if.end116.if.end142_crit_edge:                    ; preds = %if.end116
  br label %if.end142

if.end116.if.end191_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191

for.body131:                                      ; preds = %if.end153
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 8
  %add.ptr135 = getelementptr i8, ptr %39, i32 599040
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !373
  %41 = and i32 %40, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool140.not = icmp eq i32 %41, 0
  br i1 %tobool140.not, label %for.body131.for.end155.thread_crit_edge, label %for.body131.if.end142_crit_edge

for.body131.if.end142_crit_edge:                  ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

if.end142:                                        ; preds = %for.body131.if.end142_crit_edge, %if.end116.if.end142_crit_edge
  %tobool140.not288 = phi i1 [ %tobool140.not, %for.body131.if.end142_crit_edge ], [ %tobool140.not286, %if.end116.if.end142_crit_edge ]
  %cnt.2260287 = phi i32 [ %dec, %for.body131.if.end142_crit_edge ], [ 200, %if.end116.if.end142_crit_edge ]
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 8
  %add.ptr146 = getelementptr i8, ptr %43, i32 754056
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146) #10, !srcloc !360
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !374
  %and150 = and i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end153, label %if.end142.for.end155_crit_edge

if.end142.for.end155_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end155

if.end153:                                        ; preds = %if.end142
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %dec = add nsw i32 %cnt.2260287, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool130.not = icmp eq i32 %dec, 0
  br i1 %tobool130.not, label %if.end153.for.end155_crit_edge, label %for.body131

if.end153.for.end155_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end155

for.end155:                                       ; preds = %if.end153.for.end155_crit_edge, %if.end142.for.end155_crit_edge
  %and156 = and i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.else163, label %for.end155.if.then158_crit_edge

for.end155.if.then158_crit_edge:                  ; preds = %for.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then158

for.body131.for.end155.thread_crit_edge:          ; preds = %for.body131
  %phi.bo289 = and i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo289)
  %phi.cmp290 = icmp eq i32 %phi.bo289, 0
  br i1 %phi.cmp290, label %for.body131.for.end155.thread_crit_edge.if.end191_crit_edge, label %for.body131.for.end155.thread_crit_edge.if.then158_crit_edge

for.body131.for.end155.thread_crit_edge.if.then158_crit_edge: ; preds = %for.body131.for.end155.thread_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then158

for.body131.for.end155.thread_crit_edge.if.end191_crit_edge: ; preds = %for.body131.for.end155.thread_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191

if.then158:                                       ; preds = %for.body131.for.end155.thread_crit_edge.if.then158_crit_edge, %for.end155.if.then158_crit_edge
  br i1 %cmp253.not, label %if.then158.do.body2.i_crit_edge, label %if.then158.for.body.i_crit_edge

if.then158.for.body.i_crit_edge:                  ; preds = %if.then158
  br label %for.body.i

if.then158.do.body2.i_crit_edge:                  ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then158.for.body.i_crit_edge
  %cnt.046.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.then158.for.body.i_crit_edge ]
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %47, i32 754056
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !360
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !375
  %and.i = and i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end191_crit_edge, label %if.end.i

for.body.i.if.end191_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191

if.end.i:                                         ; preds = %for.body.i
  tail call void @msleep(i32 noundef 100) #10
  %inc.i = add nuw nsw i32 %cnt.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %mul
  br i1 %exitcond.not.i, label %if.end.i.do.body2.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.do.body2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

do.body2.i:                                       ; preds = %if.end.i.do.body2.i_crit_edge, %if.then158.do.body2.i_crit_edge
  %reg.0.lcssa.i = phi i32 [ 0, %if.then158.do.body2.i_crit_edge ], [ %49, %if.end.i.do.body2.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_poll_globr.__UNIQUE_ID_ddebug682, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_pf_reset, %if.then8.i)) #10
          to label %do.body13.i [label %if.then8.i], !srcloc !359

if.then8.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  %back.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %50 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %back.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_poll_globr.__UNIQUE_ID_ddebug682, ptr noundef %dev.i, ptr noundef nonnull @.str.148) #10
  br label %do.body13.i

do.body13.i:                                      ; preds = %if.then8.i, %do.body2.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_poll_globr.__UNIQUE_ID_ddebug683, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_pf_reset, %if.then25.i)) #10
          to label %cleanup192 [label %if.then25.i], !srcloc !359

if.then25.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  %back26.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %54 = ptrtoint ptr %back26.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %back26.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %dev28.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_poll_globr.__UNIQUE_ID_ddebug683, ptr noundef %dev28.i, ptr noundef nonnull @.str.149, i32 noundef %reg.0.lcssa.i) #10
  br label %cleanup192

if.else163:                                       ; preds = %for.end155
  br i1 %tobool140.not288, label %if.else163.if.end191_crit_edge, label %do.body168

if.else163.if.end191_crit_edge:                   ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191

do.body168:                                       ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_pf_reset.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_pf_reset, %if.then180)) #10
          to label %cleanup192 [label %if.then180], !srcloc !359

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #12
  %back181 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %58 = ptrtoint ptr %back181 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %back181, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  %dev183 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_pf_reset.__UNIQUE_ID_ddebug688, ptr noundef %dev183, ptr noundef nonnull @.str.121) #10
  br label %cleanup192

if.end191:                                        ; preds = %if.else163.if.end191_crit_edge, %for.body.i.if.end191_crit_edge, %for.body131.for.end155.thread_crit_edge.if.end191_crit_edge, %if.end116.if.end191_crit_edge, %if.end110.if.end191_crit_edge
  tail call void @i40e_clear_pxe_mode(ptr noundef %hw)
  br label %cleanup192

cleanup192:                                       ; preds = %if.end191, %if.then180, %do.body168, %if.then25.i, %do.body13.i, %if.then101, %do.body89, %if.then19, %do.body13
  %retval.1 = phi i32 [ 0, %if.end191 ], [ -15, %if.then19 ], [ -15, %if.then101 ], [ -15, %if.then180 ], [ -15, %do.body13 ], [ -15, %do.body89 ], [ -15, %do.body13.i ], [ -15, %if.then25.i ], [ -15, %do.body168 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_clear_pxe_mode(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 1, i32 10
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %i40e_check_asq_alive.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

i40e_check_asq_alive.exit:                        ; preds = %entry
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !361
  %.mask.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool5.i.not = icmp eq i32 %.mask.i, 0
  br i1 %tobool5.i.not, label %i40e_check_asq_alive.exit.if.end_crit_edge, label %if.then

i40e_check_asq_alive.exit.if.end_crit_edge:       ; preds = %i40e_check_asq_alive.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %i40e_check_asq_alive.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %5 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %6 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 272) #10
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %5, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !376
  call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %add.ptr.i20 = getelementptr i8, ptr %9, i32 1221888
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 16777216) #10, !srcloc !367
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %i40e_check_asq_alive.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 1221888
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !360
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !377
  %revision_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 11
  %14 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %revision_id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp = icmp eq i8 %15, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %cmp, label %do.body, label %do.body8

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %13, -2
  %16 = call i32 @llvm.bswap.i32(i32 %and)
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %add.ptr7 = getelementptr i8, ptr %18, i32 1221888
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %16) #10, !srcloc !367
  br label %if.end13

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %13, 1
  %19 = call i32 @llvm.bswap.i32(i32 %or)
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 8
  %add.ptr12 = getelementptr i8, ptr %21, i32 1221888
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %19) #10, !srcloc !367
  br label %if.end13

if.end13:                                         ; preds = %do.body8, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_clear_hw(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 779412
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !360
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !378
  %and = lshr i32 %3, 2
  %shr = and i32 %and, 2047
  %and2 = lshr i32 %3, 13
  %shr3 = and i32 %and2, 2047
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr7 = getelementptr i8, ptr %5, i32 1836032
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !360
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !379
  %and11 = and i32 %7, 2047
  %and13 = lshr i32 %7, 16
  %shr14 = and i32 %and13, 2047
  %sub = sub nsw i32 1, %and11
  %add = add nsw i32 %sub, %shr14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.inv = icmp slt i32 %7, 0
  %num_queues.0 = select i1 %tobool.not.inv, i32 %add, i32 0
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %add.ptr19 = getelementptr i8, ptr %9, i32 1836288
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #10, !srcloc !360
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %and25 = lshr i32 %11, 8
  %shr26 = and i32 %and25, 255
  %and23 = and i32 %11, 255
  %sub30 = sub nsw i32 1, %and23
  %add31 = add nsw i32 %sub30, %shr26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool28.not.inv = icmp slt i32 %11, 0
  %num_vfs.0 = select i1 %tobool28.not.inv, i32 %add31, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !381
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %add.ptr35 = getelementptr i8, ptr %13, i32 231424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 0) #10, !srcloc !367
  %sub36 = add nsw i32 %shr, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub36)
  %cmp214.not = icmp eq i32 %sub36, 0
  br i1 %cmp214.not, label %for.cond63.preheader.critedge, label %entry.do.body37_crit_edge

entry.do.body37_crit_edge:                        ; preds = %entry
  br label %do.body37

do.body37:                                        ; preds = %do.body37.do.body37_crit_edge, %entry.do.body37_crit_edge
  %i.0215 = phi i32 [ %inc, %do.body37.do.body37_crit_edge ], [ 0, %entry.do.body37_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !382
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %mul = shl i32 %i.0215, 2
  %add41 = add i32 %mul, 215040
  %add.ptr42 = getelementptr i8, ptr %15, i32 %add41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 402653184) #10, !srcloc !367
  %inc = add nuw i32 %i.0215, 1
  %exitcond.not = icmp eq i32 %inc, %sub36
  br i1 %exitcond.not, label %for.end, label %do.body37.do.body37_crit_edge

do.body37.do.body37_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37

for.end:                                          ; preds = %do.body37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !383
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %add.ptr47 = getelementptr i8, ptr %17, i32 230656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 -16318464) #10, !srcloc !367
  br i1 %cmp214.not, label %for.end.for.cond63.preheader_crit_edge, label %for.end.do.body52_crit_edge

for.end.do.body52_crit_edge:                      ; preds = %for.end
  br label %do.body52

for.end.for.cond63.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond63.preheader

for.cond63.preheader.critedge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !383
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %add.ptr47.c = getelementptr i8, ptr %19, i32 230656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.c, i32 -16318464) #10, !srcloc !367
  br label %for.cond63.preheader

for.cond63.preheader:                             ; preds = %do.body52.for.cond63.preheader_crit_edge, %for.cond63.preheader.critedge, %for.end.for.cond63.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs.0)
  %cmp64218.not = icmp eq i32 %num_vfs.0, 0
  br i1 %cmp64218.not, label %for.cond63.preheader.for.cond76.preheader_crit_edge, label %for.cond63.preheader.do.body66_crit_edge

for.cond63.preheader.do.body66_crit_edge:         ; preds = %for.cond63.preheader
  br label %do.body66

for.cond63.preheader.for.cond76.preheader_crit_edge: ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond76.preheader

do.body52:                                        ; preds = %do.body52.do.body52_crit_edge, %for.end.do.body52_crit_edge
  %i.1217 = phi i32 [ %inc60, %do.body52.do.body52_crit_edge ], [ 0, %for.end.do.body52_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !384
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 8
  %mul56 = shl i32 %i.1217, 2
  %add57 = add i32 %mul56, 217088
  %add.ptr58 = getelementptr i8, ptr %21, i32 %add57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 -16318464) #10, !srcloc !367
  %inc60 = add nuw i32 %i.1217, 1
  %exitcond226.not = icmp eq i32 %inc60, %sub36
  br i1 %exitcond226.not, label %do.body52.for.cond63.preheader_crit_edge, label %do.body52.do.body52_crit_edge

do.body52.do.body52_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

do.body52.for.cond63.preheader_crit_edge:         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond63.preheader

for.cond76.preheader:                             ; preds = %do.body66.for.cond76.preheader_crit_edge, %for.cond63.preheader.for.cond76.preheader_crit_edge
  %sub77 = add nsw i32 %shr3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub77)
  %cmp78220.not = icmp eq i32 %sub77, 0
  br i1 %cmp78220.not, label %for.cond76.preheader.for.cond90.preheader_crit_edge, label %for.cond76.preheader.do.body80_crit_edge

for.cond76.preheader.do.body80_crit_edge:         ; preds = %for.cond76.preheader
  br label %do.body80

for.cond76.preheader.for.cond90.preheader_crit_edge: ; preds = %for.cond76.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond90.preheader

do.body66:                                        ; preds = %do.body66.do.body66_crit_edge, %for.cond63.preheader.do.body66_crit_edge
  %i.2219 = phi i32 [ %inc74, %do.body66.do.body66_crit_edge ], [ 0, %for.cond63.preheader.do.body66_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !385
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 8
  %mul70 = shl i32 %i.2219, 2
  %add71 = add i32 %mul70, 174080
  %add.ptr72 = getelementptr i8, ptr %23, i32 %add71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 -16318464) #10, !srcloc !367
  %inc74 = add nuw i32 %i.2219, 1
  %exitcond227.not = icmp eq i32 %inc74, %num_vfs.0
  br i1 %exitcond227.not, label %do.body66.for.cond76.preheader_crit_edge, label %do.body66.do.body66_crit_edge

do.body66.do.body66_crit_edge:                    ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66

do.body66.for.cond76.preheader_crit_edge:         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond76.preheader

for.cond90.preheader:                             ; preds = %do.body80.for.cond90.preheader_crit_edge, %for.cond76.preheader.for.cond90.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_queues.0)
  %cmp91222.not = icmp eq i32 %num_queues.0, 0
  br i1 %cmp91222.not, label %for.end118.thread, label %for.cond90.preheader.for.body92_crit_edge

for.cond90.preheader.for.body92_crit_edge:        ; preds = %for.cond90.preheader
  br label %for.body92

for.end118.thread:                                ; preds = %for.cond90.preheader
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 85899200) #10
  br label %for.end152

do.body80:                                        ; preds = %do.body80.do.body80_crit_edge, %for.cond76.preheader.do.body80_crit_edge
  %i.3221 = phi i32 [ %inc88, %do.body80.do.body80_crit_edge ], [ 0, %for.cond76.preheader.do.body80_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !386
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 8
  %mul84 = shl i32 %i.3221, 2
  %add85 = add i32 %mul84, 151552
  %add.ptr86 = getelementptr i8, ptr %26, i32 %add85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 -16318464) #10, !srcloc !367
  %inc88 = add nuw i32 %i.3221, 1
  %exitcond228.not = icmp eq i32 %inc88, %sub77
  br i1 %exitcond228.not, label %do.body80.for.cond90.preheader_crit_edge, label %do.body80.do.body80_crit_edge

do.body80.do.body80_crit_edge:                    ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body80

do.body80.for.cond90.preheader_crit_edge:         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond90.preheader

for.body92:                                       ; preds = %for.body92.for.body92_crit_edge, %for.cond90.preheader.for.body92_crit_edge
  %i.4223 = phi i32 [ %inc117, %for.body92.for.body92_crit_edge ], [ 0, %for.cond90.preheader.for.body92_crit_edge ]
  %add93 = add i32 %i.4223, %and11
  %rem = and i32 %add93, 127
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 8
  %29 = lshr i32 %add93, 5
  %mul100 = and i32 %29, 134217724
  %add101 = add nuw nsw i32 %mul100, 943360
  %add.ptr102 = getelementptr i8, ptr %28, i32 %add101
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !387
  %31 = and i32 %30, 16318463
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %or = or i32 %rem, %32
  %or108 = or i32 %or, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !388
  tail call void @arm_heavy_mb() #10
  %33 = tail call i32 @llvm.bswap.i32(i32 %or108)
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 8
  %add.ptr115 = getelementptr i8, ptr %35, i32 %add101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %33) #10, !srcloc !367
  %inc117 = add nuw i32 %i.4223, 1
  %exitcond229.not = icmp eq i32 %inc117, %num_queues.0
  br i1 %exitcond229.not, label %for.end118, label %for.body92.for.body92_crit_edge

for.body92.for.body92_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body92

for.end118:                                       ; preds = %for.body92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 85899200) #10
  br i1 %cmp91222.not, label %for.end118.for.end152_crit_edge, label %for.end118.do.body122_crit_edge

for.end118.do.body122_crit_edge:                  ; preds = %for.end118
  br label %do.body122

for.end118.for.end152_crit_edge:                  ; preds = %for.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end152

do.body122:                                       ; preds = %do.body122.do.body122_crit_edge, %for.end118.do.body122_crit_edge
  %i.5225 = phi i32 [ %inc151, %do.body122.do.body122_crit_edge ], [ 0, %for.end118.do.body122_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !389
  tail call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 8
  %mul126 = shl i32 %i.5225, 2
  %add127 = add i32 %mul126, 245760
  %add.ptr128 = getelementptr i8, ptr %38, i32 %add127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 0) #10, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !390
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 8
  %add134 = add i32 %mul126, 1048576
  %add.ptr135 = getelementptr i8, ptr %40, i32 %add134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 0) #10, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !391
  tail call void @arm_heavy_mb() #10
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw, align 8
  %add141 = add i32 %mul126, 237568
  %add.ptr142 = getelementptr i8, ptr %42, i32 %add141
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 0) #10, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !392
  tail call void @arm_heavy_mb() #10
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 8
  %add148 = add i32 %mul126, 1179648
  %add.ptr149 = getelementptr i8, ptr %44, i32 %add148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr149, i32 0) #10, !srcloc !367
  %inc151 = add nuw i32 %i.5225, 1
  %exitcond230.not = icmp eq i32 %inc151, %num_queues.0
  br i1 %exitcond230.not, label %do.body122.for.end152_crit_edge, label %do.body122.do.body122_crit_edge

do.body122.do.body122_crit_edge:                  ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body122

do.body122.for.end152_crit_edge:                  ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end152

for.end152:                                       ; preds = %do.body122.for.end152_crit_edge, %for.end118.for.end152_crit_edge, %for.end118.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 10737400) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_clear_pxe_mode(ptr noundef %hw, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 272) #10
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %0, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !376
  call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 1221888
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #10, !srcloc !367
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_led_get(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device_id.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 7
  %port10.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.014 = phi i32 [ 22, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device_id.i, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.175)
  switch i16 %1, label %land.lhs.true.i [
    i16 4127, label %for.body.if.end.i_crit_edge
    i16 5631, label %for.body.if.end.i_crit_edge16
  ]

for.body.if.end.i_crit_edge16:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body
  %arrayidx.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 15, i32 28, i32 %i.014
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge, %for.body.if.end.i_crit_edge16
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %mul.i = shl i32 %i.014, 2
  %add.i = add nuw nsw i32 %mul.i, 557312
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !360
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %and7.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false9.i:                                 ; preds = %if.end.i
  %and.i = and i32 %8, 3
  %9 = ptrtoint ptr %port10.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port10.i, align 1
  %conv11.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv11.i)
  %cmp12.not.i = icmp ne i32 %and.i, %conv11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %or.cond = select i1 %cmp12.not.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %lor.lhs.false9.i.for.inc_crit_edge, label %for.end.split.loop.exit

lor.lhs.false9.i.for.inc_crit_edge:               ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false9.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 30
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end.split.loop.exit:                          ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.le = lshr i32 %8, 12
  %shr.le = and i32 %and.le, 31
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %for.inc.for.end_crit_edge
  %mode.2 = phi i32 [ %shr.le, %for.end.split.loop.exit ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %mode.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_led_set(ptr nocapture noundef readonly %hw, i32 noundef %mode, i1 noundef zeroext %blink) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %mode)
  %tobool.not = icmp ult i32 %mode, 32
  br i1 %tobool.not, label %for.cond.preheader, label %do.body1

for.cond.preheader:                               ; preds = %entry
  %device_id.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 7
  %port10.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 12
  br label %for.body

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_led_set.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_led_set, %if.then6)) #10
          to label %cleanup41 [label %if.then6], !srcloc !359

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %back = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_led_set.__UNIQUE_ID_ddebug689, ptr noundef %dev, ptr noundef nonnull @.str.123, i32 noundef %mode) #10
  br label %cleanup41

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.068 = phi i32 [ 22, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device_id.i, align 8
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.176)
  switch i16 %5, label %land.lhs.true.i [
    i16 4127, label %for.body.if.end.i_crit_edge
    i16 5631, label %for.body.if.end.i_crit_edge71
  ]

for.body.if.end.i_crit_edge71:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body
  %arrayidx.i = getelementptr %struct.i40e_hw, ptr %hw, i32 0, i32 15, i32 28, i32 %i.068
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge, %for.body.if.end.i_crit_edge71
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %mul.i = shl i32 %i.068, 2
  %add.i = add i32 %mul.i, 557312
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !360
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %and7.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false9.i:                                 ; preds = %if.end.i
  %and.i = and i32 %12, 3
  %13 = ptrtoint ptr %port10.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port10.i, align 1
  %conv11.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv11.i)
  %cmp12.not.i = icmp ne i32 %and.i, %conv11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  %or.cond = or i1 %tobool11.not, %cmp12.not.i
  br i1 %or.cond, label %lor.lhs.false9.i.for.inc_crit_edge, label %if.end13

lor.lhs.false9.i.for.inc_crit_edge:               ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end13:                                         ; preds = %lor.lhs.false9.i
  %15 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device_id.i, align 8
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.177)
  switch i16 %16, label %if.end13.cleanup_crit_edge [
    i16 4127, label %if.end13.if.then20_crit_edge
    i16 5631, label %if.end13.if.then20_crit_edge72
  ]

if.end13.if.then20_crit_edge72:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end13.if.then20_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then20:                                        ; preds = %if.end13.if.then20_crit_edge, %if.end13.if.then20_crit_edge72
  %and21 = shl i32 %mode, 3
  %18 = and i32 %and21, 128
  %and25 = and i32 %12, -897
  %19 = or i32 %and25, %18
  %or = xor i32 %19, 128
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end13.cleanup_crit_edge
  %gpio_val.0 = phi i32 [ %or, %if.then20 ], [ %12, %if.end13.cleanup_crit_edge ]
  %and28 = and i32 %gpio_val.0, -129025
  %shl29 = shl i32 %mode, 12
  %and30 = and i32 %shl29, 126976
  %masksel = select i1 %blink, i32 2048, i32 0
  %or31 = or i32 %masksel, %and30
  %gpio_val.1 = or i32 %or31, %and28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !395
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %gpio_val.1)
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %22, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %20) #10, !srcloc !367
  br label %cleanup41

for.inc:                                          ; preds = %lor.lhs.false9.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, 30
  br i1 %exitcond.not, label %for.inc.cleanup41_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup41_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup41

cleanup41:                                        ; preds = %for.inc.cleanup41_crit_edge, %cleanup, %if.then6, %do.body1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_get_phy_capabilities(ptr noundef %hw, i1 noundef zeroext %qualified_modules, i1 noundef zeroext %report_init, ptr noundef %abilities, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %tobool.not = icmp eq ptr %abilities, null
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %asq_last_status = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %total_delay.0 = phi i16 [ %total_delay.1, %do.cond.do.body_crit_edge ], [ 0, %do.body.preheader ]
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1536) #10
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc, align 4
  %4 = or i16 %3, 18
  store i16 %4, ptr %desc, align 4
  br i1 %qualified_modules, label %if.then12, label %do.body.if.end14_crit_edge

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %0, align 4
  %or13 = or i32 %6, 16777216
  store i32 %or13, ptr %0, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.body.if.end14_crit_edge
  br i1 %report_init, label %if.then16, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  %or19 = or i32 %8, 33554432
  store i32 %or19, ptr %0, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end14.if.end20_crit_edge
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef nonnull %abilities, i16 noundef zeroext 536, ptr noundef %cmd_details) #10
  %9 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asq_last_status, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %10, label %if.end20.do.cond_crit_edge [
    i32 5, label %sw.bb
    i32 8, label %sw.bb21
  ]

if.end20.do.cond_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

sw.bb:                                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

sw.bb21:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %inc = add nuw nsw i16 %total_delay.0, 1
  br label %do.cond

do.cond:                                          ; preds = %sw.bb21, %sw.bb, %if.end20.do.cond_crit_edge
  %status.0 = phi i32 [ %call, %if.end20.do.cond_crit_edge ], [ -37, %sw.bb21 ], [ -7, %sw.bb ]
  %total_delay.1 = phi i16 [ %total_delay.0, %if.end20.do.cond_crit_edge ], [ %inc, %sw.bb21 ], [ %total_delay.0, %sw.bb ]
  %12 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %asq_last_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp24 = icmp eq i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 500, i16 %total_delay.1)
  %cmp28 = icmp ult i16 %total_delay.1, 500
  %or.cond = select i1 %cmp24, i1 %cmp28, i1 false
  br i1 %or.cond, label %do.cond.do.body_crit_edge, label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool30.not = icmp eq i32 %status.0, 0
  %14 = and i1 %tobool30.not, %report_init
  br i1 %14, label %if.then34, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then34:                                        ; preds = %do.end
  %mac = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 3
  %15 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mac, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp35 = icmp eq i32 %16, 1
  br i1 %cmp35, label %land.lhs.true, label %if.then34.if.else_crit_edge

if.then34.if.else_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.then34
  %api_maj_ver = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 10
  %17 = ptrtoint ptr %api_maj_ver to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %api_maj_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %18)
  %cmp39 = icmp eq i16 %18, 1
  br i1 %cmp39, label %land.lhs.true41, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true41:                                  ; preds = %land.lhs.true
  %api_min_ver = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 11
  %19 = ptrtoint ptr %api_min_ver to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %api_min_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %20)
  %cmp44 = icmp ugt i16 %20, 6
  br i1 %cmp44, label %if.then46, label %land.lhs.true41.if.else_crit_edge

land.lhs.true41.if.else_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then46:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #12
  %call47 = call i32 @i40e_aq_get_link_info(ptr noundef %hw, i1 noundef zeroext true, ptr noundef null, ptr noundef null)
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true41.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.then34.if.else_crit_edge
  %21 = ptrtoint ptr %abilities to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %abilities, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %conv48 = zext i32 %23 to i64
  %phy_types = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %phy_types to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv48, ptr %phy_types, align 8
  %phy_type_ext = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 6
  %25 = ptrtoint ptr %phy_type_ext to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %phy_type_ext, align 1
  %conv49 = zext i8 %26 to i64
  %shl = shl nuw nsw i64 %conv49, 32
  %or52 = or i64 %shl, %conv48
  store i64 %or52, ptr %phy_types, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then46, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %status.0, %do.end.cleanup_crit_edge ], [ %call47, %if.then46 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_get_link_info(ptr noundef %hw, i1 noundef zeroext %enable_lse, ptr noundef writeonly %link, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %phy = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2
  %3 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1543) #10
  %. = select i1 %enable_lse, i16 768, i16 512
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %., ptr %0, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %entry.aq_get_link_info_exit_crit_edge

entry.aq_get_link_info_exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_get_link_info_exit

if.end4:                                          ; preds = %entry
  %link_info_old = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 1
  %5 = call ptr @memcpy(ptr %link_info_old, ptr %phy, i32 24)
  %phy_type = getelementptr inbounds %struct.i40e_aqc_get_link_status, ptr %0, i32 0, i32 1
  %6 = ptrtoint ptr %phy_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %phy_type, align 2
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %phy, align 4
  %switch.tableidx = add i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %switch.tableidx)
  %9 = icmp ult i8 %switch.tableidx, 49
  br i1 %9, label %switch.lookup, label %if.end4.i40e_get_media_type.exit_crit_edge

if.end4.i40e_get_media_type.exit_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_get_media_type.exit

switch.lookup:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %10 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [49 x i32], ptr @switch.table.i40e_aq_get_link_info, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %i40e_get_media_type.exit

i40e_get_media_type.exit:                         ; preds = %switch.lookup, %if.end4.i40e_get_media_type.exit_crit_edge
  %media.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end4.i40e_get_media_type.exit_crit_edge ]
  %media_type = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %media_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %media.0.i, ptr %media_type, align 4
  %link_speed = getelementptr inbounds %struct.i40e_aqc_get_link_status, ptr %0, i32 0, i32 2
  %13 = ptrtoint ptr %link_speed to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %link_speed, align 1
  %conv9 = zext i8 %14 to i32
  %link_speed10 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %link_speed10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv9, ptr %link_speed10, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %1, align 4
  %link_info12 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 0, i32 2
  %18 = ptrtoint ptr %link_info12 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %link_info12, align 4
  %an_info = getelementptr inbounds %struct.i40e_aqc_get_link_status, ptr %0, i32 0, i32 4
  %19 = ptrtoint ptr %an_info to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %an_info, align 1
  %an_info13 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 0, i32 3
  %21 = ptrtoint ptr %an_info13 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %an_info13, align 1
  %config = getelementptr inbounds %struct.i40e_aqc_get_link_status, ptr %0, i32 0, i32 8
  %22 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %config, align 2
  %24 = and i8 %23, 3
  %fec_info = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 0, i32 5
  %25 = ptrtoint ptr %fec_info to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %fec_info, align 1
  %ext_info = getelementptr inbounds %struct.i40e_aqc_get_link_status, ptr %0, i32 0, i32 5
  %26 = ptrtoint ptr %ext_info to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ext_info, align 2
  %ext_info16 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 0, i32 6
  %28 = ptrtoint ptr %ext_info16 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %ext_info16, align 4
  %loopback = getelementptr inbounds %struct.i40e_aqc_get_link_status, ptr %0, i32 0, i32 6
  %29 = ptrtoint ptr %loopback to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %loopback, align 1
  %31 = and i8 %30, 7
  %loopback20 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 0, i32 7
  %32 = ptrtoint ptr %loopback20 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %loopback20, align 1
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %2, align 4
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %max_frame_size21 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 0, i32 9
  %36 = ptrtoint ptr %max_frame_size21 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %max_frame_size21, align 4
  %37 = and i8 %23, 120
  %pacing = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 0, i32 11
  %38 = ptrtoint ptr %pacing to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %pacing, align 1
  %conv27 = zext i8 %20 to i32
  %and28 = and i32 %conv27, 32
  %and34 = and i32 %conv27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %and28.lobit = lshr exact i32 %and28, 5
  %and34.lobit = lshr exact i32 %and34, 6
  %and43 = and i32 %and28.lobit, %and34.lobit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else46, label %if.then45

if.then45:                                        ; preds = %i40e_get_media_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  %fc = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 6
  %39 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %fc, align 8
  br label %if.end61

if.else46:                                        ; preds = %i40e_get_media_type.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %fc57 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 6
  br i1 %tobool29.not, label %if.else51, label %if.then48

if.then48:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %fc57 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %fc57, align 8
  br label %if.end61

if.else51:                                        ; preds = %if.else46
  br i1 %tobool35.not, label %if.else56, label %if.then53

if.then53:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %fc57 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %fc57, align 8
  br label %if.end61

if.else56:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %fc57 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %fc57, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.else56, %if.then53, %if.then48, %if.then45
  %43 = lshr i8 %23, 2
  %.lobit = and i8 %43, 1
  %44 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 0, i32 10
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.lobit, ptr %44, align 2
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %0, align 4
  %48 = lshr i16 %47, 8
  %49 = trunc i16 %48 to i8
  %50 = and i8 %49, 1
  %51 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 0, i32 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %50, ptr %51, align 2
  %mac = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 3
  %53 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mac, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp = icmp eq i32 %54, 1
  br i1 %cmp, label %land.lhs.true, label %if.end61.if.end98_crit_edge

if.end61.if.end98_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

land.lhs.true:                                    ; preds = %if.end61
  %fw_maj_ver = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 7
  %55 = ptrtoint ptr %fw_maj_ver to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %fw_maj_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %56)
  %cmp80 = icmp ult i16 %56, 4
  br i1 %cmp80, label %land.lhs.true92, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %56)
  %cmp85 = icmp eq i16 %56, 4
  br i1 %cmp85, label %land.lhs.true87, label %lor.lhs.false.if.end98_crit_edge

lor.lhs.false.if.end98_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

land.lhs.true87:                                  ; preds = %lor.lhs.false
  %fw_min_ver = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 8
  %57 = ptrtoint ptr %fw_min_ver to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %fw_min_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %58)
  %cmp90 = icmp ult i16 %58, 40
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %7)
  %cmp94 = icmp eq i8 %7, 14
  %or.cond = select i1 %cmp90, i1 %cmp94, i1 false
  br i1 %or.cond, label %land.lhs.true87.if.then96_crit_edge, label %land.lhs.true87.if.end98_crit_edge

land.lhs.true87.if.end98_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

land.lhs.true87.if.then96_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then96

land.lhs.true92:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %7)
  %cmp94.old = icmp eq i8 %7, 14
  br i1 %cmp94.old, label %land.lhs.true92.if.then96_crit_edge, label %land.lhs.true92.if.end98_crit_edge

land.lhs.true92.if.end98_crit_edge:               ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

land.lhs.true92.if.then96_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then96

if.then96:                                        ; preds = %land.lhs.true92.if.then96_crit_edge, %land.lhs.true87.if.then96_crit_edge
  %59 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 22, ptr %phy, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %land.lhs.true92.if.end98_crit_edge, %land.lhs.true87.if.end98_crit_edge, %lor.lhs.false.if.end98_crit_edge, %if.end61.if.end98_crit_edge
  %flags = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %flags, align 8
  %and99 = and i64 %61, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and99)
  %tobool100.not = icmp eq i64 %and99, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %cmp104.not = icmp eq i32 %54, 3
  %or.cond169 = select i1 %tobool100.not, i1 true, i1 %cmp104.not
  br i1 %or.cond169, label %if.end98.if.end112_crit_edge, label %if.then106

if.end98.if.end112_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then106:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  %62 = getelementptr inbounds %struct.i40e_aqc_get_link_status, ptr %0, i32 0, i32 9
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %tmp.0.copyload = load i32, ptr %62, align 1
  %64 = call i32 @llvm.bswap.i32(i32 %tmp.0.copyload)
  %conv107 = zext i32 %64 to i64
  %phy_types = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 4
  %link_type_ext = getelementptr inbounds %struct.i40e_aqc_get_link_status, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 3
  %65 = ptrtoint ptr %link_type_ext to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %link_type_ext, align 1
  %conv109 = zext i8 %66 to i64
  %shl = shl nuw nsw i64 %conv109, 32
  %or = or i64 %shl, %conv107
  %67 = ptrtoint ptr %phy_types to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %or, ptr %phy_types, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then106, %if.end98.if.end112_crit_edge
  %tobool113.not = icmp eq ptr %link, null
  br i1 %tobool113.not, label %if.end112.if.end115_crit_edge, label %if.then114

if.end112.if.end115_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then114:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  %68 = call ptr @memcpy(ptr %link, ptr %phy, i32 24)
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end112.if.end115_crit_edge
  %get_link_info = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 2
  %69 = ptrtoint ptr %get_link_info to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %get_link_info, align 8
  br label %aq_get_link_info_exit

aq_get_link_info_exit:                            ; preds = %if.end115, %entry.aq_get_link_info_exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_phy_config(ptr noundef %hw, ptr noundef readonly %config, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %tobool.not = icmp eq ptr %config, null
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1537) #10
  %2 = call ptr @memcpy(ptr %1, ptr %config, i32 16)
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_set_fc(ptr noundef %hw, ptr nocapture noundef %aq_failures, i1 noundef zeroext %atomic_restart) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  %abilities = alloca %struct.i40e_aq_get_phy_abilities_resp, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %abilities) #10
  %0 = call ptr @memset(ptr %abilities, i32 255, i32 536)
  %1 = ptrtoint ptr %aq_failures to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %aq_failures, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %asq_last_status.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %total_delay.0.i = phi i16 [ %total_delay.1.i, %do.cond.i.do.body.i_crit_edge ], [ 0, %entry ]
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1536) #10
  %3 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %desc.i, align 4
  %5 = or i16 %4, 18
  store i16 %5, ptr %desc.i, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %abilities, i16 noundef zeroext 536, ptr noundef null) #10
  %6 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asq_last_status.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %7, label %do.body.i.do.cond.i_crit_edge [
    i32 5, label %sw.bb.i
    i32 8, label %sw.bb21.i
  ]

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond.i

sw.bb.i:                                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond.i

sw.bb21.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %inc.i = add nuw nsw i16 %total_delay.0.i, 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %sw.bb21.i, %sw.bb.i, %do.body.i.do.cond.i_crit_edge
  %status.0.i = phi i32 [ %call.i, %do.body.i.do.cond.i_crit_edge ], [ -37, %sw.bb21.i ], [ -7, %sw.bb.i ]
  %total_delay.1.i = phi i16 [ %total_delay.0.i, %do.body.i.do.cond.i_crit_edge ], [ %inc.i, %sw.bb21.i ], [ %total_delay.0.i, %sw.bb.i ]
  %9 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asq_last_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp24.i = icmp eq i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 500, i16 %total_delay.1.i)
  %cmp28.i = icmp ult i16 %total_delay.1.i, 500
  %or.cond.i = select i1 %cmp24.i, i1 %cmp28.i, i1 false
  br i1 %or.cond.i, label %do.cond.i.do.body.i_crit_edge, label %i40e_aq_get_phy_capabilities.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

i40e_aq_get_phy_capabilities.exit:                ; preds = %do.cond.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %tobool.not = icmp eq i32 %status.0.i, 0
  br i1 %tobool.not, label %if.end, label %i40e_aq_get_phy_capabilities.exit.cleanup.sink.split_crit_edge

i40e_aq_get_phy_capabilities.exit.cleanup.sink.split_crit_edge: ; preds = %i40e_aq_get_phy_capabilities.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %i40e_aq_get_phy_capabilities.exit
  %call3 = call fastcc i32 @i40e_set_fc_status(ptr noundef %hw, ptr noundef nonnull %abilities, i1 noundef zeroext %atomic_restart)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %aq_failures to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %aq_failures, align 1
  %13 = or i8 %12, 2
  store i8 %13, ptr %aq_failures, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %call10 = call i32 @i40e_update_link_info(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @msleep(i32 noundef 1000) #10
  %call13 = call i32 @i40e_update_link_info(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.end14.cleanup.sink.split_crit_edge

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end14.cleanup.sink.split_crit_edge, %i40e_aq_get_phy_capabilities.exit.cleanup.sink.split_crit_edge
  %.sink36 = phi i8 [ 1, %i40e_aq_get_phy_capabilities.exit.cleanup.sink.split_crit_edge ], [ 4, %if.end14.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %status.0.i, %i40e_aq_get_phy_capabilities.exit.cleanup.sink.split_crit_edge ], [ %call13, %if.end14.cleanup.sink.split_crit_edge ]
  %14 = ptrtoint ptr %aq_failures to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %aq_failures, align 1
  %16 = or i8 %15, %.sink36
  store i8 %16, ptr %aq_failures, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %abilities) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_set_fc_status(ptr noundef %hw, ptr nocapture noundef readonly %abilities, i1 noundef zeroext %atomic_restart) unnamed_addr #7 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_mode = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %requested_mode, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 196866, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %pause_mask.0 = select i1 %2, i8 %switch.masked, i8 0
  %abilities13 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 2
  %3 = ptrtoint ptr %abilities13 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %abilities13, align 1
  %5 = and i8 %4, -4
  %or21 = or i8 %5, %pause_mask.0
  call void @__sanitizer_cov_trace_cmp1(i8 %or21, i8 %4)
  %cmp = icmp eq i8 %or21, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = or i8 %or21, 32
  %spec.select = select i1 %atomic_restart, i8 %6, i8 %or21
  %7 = ptrtoint ptr %abilities to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %abilities, align 4
  %phy_type_ext = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 6
  %9 = ptrtoint ptr %phy_type_ext to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %phy_type_ext, align 1
  %link_speed = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 1
  %11 = ptrtoint ptr %link_speed to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %link_speed, align 4
  %eee_capability = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 3
  %13 = ptrtoint ptr %eee_capability to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %eee_capability, align 2
  %eeer_val = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 4
  %15 = ptrtoint ptr %eeer_val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %eeer_val, align 4
  %d3_lpan = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 5
  %17 = ptrtoint ptr %d3_lpan to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %d3_lpan, align 4
  %fec_cfg_curr_mod_ext_info = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 7
  %19 = ptrtoint ptr %fec_cfg_curr_mod_ext_info to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fec_cfg_curr_mod_ext_info, align 2
  %21 = and i8 %20, 31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %22 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %23 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1537) #10
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %8, ptr %23, align 4
  %config.sroa.6.0..sroa_idx = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %25 = ptrtoint ptr %config.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %12, ptr %config.sroa.6.0..sroa_idx, align 4
  %config.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %23, i32 5
  %26 = ptrtoint ptr %config.sroa.8.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %spec.select, ptr %config.sroa.8.0..sroa_idx, align 1
  %config.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %23, i32 6
  %27 = ptrtoint ptr %config.sroa.11.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %14, ptr %config.sroa.11.0..sroa_idx, align 2
  %config.sroa.13.0..sroa_idx = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 2
  %28 = ptrtoint ptr %config.sroa.13.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %16, ptr %config.sroa.13.0..sroa_idx, align 4
  %config.sroa.15.0..sroa_idx = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 3
  %29 = ptrtoint ptr %config.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %18, ptr %config.sroa.15.0..sroa_idx, align 4
  %config.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %23, i32 13
  %30 = ptrtoint ptr %config.sroa.17.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %10, ptr %config.sroa.17.0..sroa_idx, align 1
  %config.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %23, i32 14
  %31 = ptrtoint ptr %config.sroa.19.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %21, ptr %config.sroa.19.0..sroa_idx, align 2
  %config.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %23, i32 15
  %32 = ptrtoint ptr %config.sroa.21.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %config.sroa.21.0..sroa_idx, align 1
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_update_link_info(ptr noundef %hw) local_unnamed_addr #7 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  %abilities = alloca %struct.i40e_aq_get_phy_abilities_resp, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %abilities) #10
  %0 = call ptr @memset(ptr %abilities, i32 255, i32 536)
  %call = tail call i32 @i40e_aq_get_link_info(ptr noundef %hw, i1 noundef zeroext true, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_info1 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 0, i32 2
  %1 = ptrtoint ptr %link_info1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %link_info1, align 8
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %and7 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %land.lhs.true.if.then14_crit_edge

land.lhs.true.if.then14_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

lor.lhs.false:                                    ; preds = %land.lhs.true
  %link_info10 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 1, i32 2
  %3 = ptrtoint ptr %link_info10 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %link_info10, align 8
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool13.not = icmp eq i8 %5, 0
  br i1 %tobool13.not, label %lor.lhs.false.if.then14_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %land.lhs.true.if.then14_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %6 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %asq_last_status.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.then14
  %total_delay.0.i = phi i16 [ %total_delay.1.i, %do.cond.i.do.body.i_crit_edge ], [ 0, %if.then14 ]
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1536) #10
  %7 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %desc.i, align 4
  %9 = or i16 %8, 18
  store i16 %9, ptr %desc.i, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %abilities, i16 noundef zeroext 536, ptr noundef null) #10
  %10 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %asq_last_status.i, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %11, label %do.body.i.do.cond.i_crit_edge [
    i32 5, label %sw.bb.i
    i32 8, label %sw.bb21.i
  ]

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond.i

sw.bb.i:                                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond.i

sw.bb21.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %inc.i = add nuw nsw i16 %total_delay.0.i, 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %sw.bb21.i, %sw.bb.i, %do.body.i.do.cond.i_crit_edge
  %status.0.i = phi i32 [ %call.i, %do.body.i.do.cond.i_crit_edge ], [ -37, %sw.bb21.i ], [ -7, %sw.bb.i ]
  %total_delay.1.i = phi i16 [ %total_delay.0.i, %do.body.i.do.cond.i_crit_edge ], [ %inc.i, %sw.bb21.i ], [ %total_delay.0.i, %sw.bb.i ]
  %13 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %asq_last_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %cmp24.i = icmp eq i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 500, i16 %total_delay.1.i)
  %cmp28.i = icmp ult i16 %total_delay.1.i, 500
  %or.cond.i = select i1 %cmp24.i, i1 %cmp28.i, i1 false
  br i1 %or.cond.i, label %do.cond.i.do.body.i_crit_edge, label %i40e_aq_get_phy_capabilities.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

i40e_aq_get_phy_capabilities.exit:                ; preds = %do.cond.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %tobool16.not = icmp eq i32 %status.0.i, 0
  br i1 %tobool16.not, label %if.end18, label %i40e_aq_get_phy_capabilities.exit.cleanup_crit_edge

i40e_aq_get_phy_capabilities.exit.cleanup_crit_edge: ; preds = %i40e_aq_get_phy_capabilities.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %i40e_aq_get_phy_capabilities.exit
  call void @__sanitizer_cov_trace_pc() #12
  %fec_cfg_curr_mod_ext_info = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 7
  %15 = ptrtoint ptr %fec_cfg_curr_mod_ext_info to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fec_cfg_curr_mod_ext_info, align 2
  %17 = and i8 %16, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool21.not = icmp eq i8 %17, 0
  %and27 = and i8 %16, 12
  %spec.select = select i1 %tobool21.not, i8 %and27, i8 12
  %18 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 0, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select, ptr %18, align 2
  %module_type = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 0, i32 13
  %module_type35 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, ptr %abilities, i32 0, i32 10
  %20 = call ptr @memcpy(ptr %module_type, ptr %module_type35, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %i40e_aq_get_phy_capabilities.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %status.0.i, %i40e_aq_get_phy_capabilities.exit.cleanup_crit_edge ], [ 0, %if.end18 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %abilities) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_link_restart_an(ptr noundef %hw, i1 noundef zeroext %enable_link, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1541) #10
  %. = select i1 %enable_link, i8 6, i8 2
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %., ptr %0, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_phy_int_mask(ptr noundef %hw, i16 noundef zeroext %mask, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1555) #10
  %2 = call i16 @llvm.bswap.i16(i16 %mask)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_phy_debug(ptr noundef %hw, i8 noundef zeroext %cmd_flags, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1570) #10
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %cmd_flags, ptr %0, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_add_vsi(ptr noundef %hw, ptr noundef %vsi_ctx, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 528) #10
  %uplink_seid = getelementptr inbounds %struct.i40e_vsi_context, ptr %vsi_ctx, i32 0, i32 1
  %3 = ptrtoint ptr %uplink_seid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %uplink_seid, align 2
  %5 = call i16 @llvm.bswap.i16(i16 %4)
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %0, align 4
  %connection_type = getelementptr inbounds %struct.i40e_vsi_context, ptr %vsi_ctx, i32 0, i32 8
  %7 = ptrtoint ptr %connection_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %connection_type, align 2
  %connection_type3 = getelementptr inbounds %struct.i40e_aqc_add_get_update_vsi, ptr %0, i32 0, i32 1
  %9 = ptrtoint ptr %connection_type3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %connection_type3, align 2
  %vf_num = getelementptr inbounds %struct.i40e_vsi_context, ptr %vsi_ctx, i32 0, i32 7
  %10 = ptrtoint ptr %vf_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vf_num, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %1, align 4
  %flags = getelementptr inbounds %struct.i40e_vsi_context, ptr %vsi_ctx, i32 0, i32 5
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %vsi_flags = getelementptr inbounds %struct.i40e_aqc_add_get_update_vsi, ptr %0, i32 0, i32 5
  %16 = ptrtoint ptr %vsi_flags to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %vsi_flags, align 2
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %desc, align 4
  %19 = or i16 %18, 20
  store i16 %19, ptr %desc, align 4
  %info = getelementptr inbounds %struct.i40e_vsi_context, ptr %vsi_ctx, i32 0, i32 9
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %info, i16 noundef zeroext 128, ptr noundef %cmd_details) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.aq_add_vsi_exit_crit_edge

entry.aq_add_vsi_exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_add_vsi_exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %0, align 4
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %23 = ptrtoint ptr %vsi_ctx to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %vsi_ctx, align 4
  %24 = ptrtoint ptr %connection_type3 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %connection_type3, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %vsi_number7 = getelementptr inbounds %struct.i40e_vsi_context, ptr %vsi_ctx, i32 0, i32 2
  %27 = ptrtoint ptr %vsi_number7 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %vsi_number7, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %1, align 4
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %vsis_allocated = getelementptr inbounds %struct.i40e_vsi_context, ptr %vsi_ctx, i32 0, i32 3
  %31 = ptrtoint ptr %vsis_allocated to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %vsis_allocated, align 2
  %32 = ptrtoint ptr %vsi_flags to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vsi_flags, align 2
  %34 = call i16 @llvm.bswap.i16(i16 %33)
  %vsis_unallocated = getelementptr inbounds %struct.i40e_vsi_context, ptr %vsi_ctx, i32 0, i32 4
  %35 = ptrtoint ptr %vsis_unallocated to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %vsis_unallocated, align 4
  br label %aq_add_vsi_exit

aq_add_vsi_exit:                                  ; preds = %if.end, %entry.aq_add_vsi_exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_default_vsi(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 596) #10
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2048, ptr %0, align 4
  %valid_flags = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, ptr %0, i32 0, i32 1
  %4 = ptrtoint ptr %valid_flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2048, ptr %valid_flags, align 2
  %5 = call i16 @llvm.bswap.i16(i16 %seid)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_clear_default_vsi(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 596) #10
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %0, align 4
  %valid_flags = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, ptr %0, i32 0, i32 1
  %4 = ptrtoint ptr %valid_flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2048, ptr %valid_flags, align 2
  %5 = call i16 @llvm.bswap.i16(i16 %seid)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_vsi_unicast_promiscuous(ptr noundef %hw, i16 noundef zeroext %seid, i1 noundef zeroext %set, ptr noundef %cmd_details, i1 noundef zeroext %rx_only_promisc) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 596) #10
  %2 = and i1 %set, %rx_only_promisc
  %.mux = zext i1 %set to i16
  br i1 %2, label %land.lhs.true, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %api_maj_ver.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 10
  %3 = ptrtoint ptr %api_maj_ver.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %api_maj_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp.i = icmp ugt i16 %4, 1
  br i1 %cmp.i, label %land.lhs.true.i40e_is_aq_api_ver_ge.exit.thread_crit_edge, label %lor.rhs.i

land.lhs.true.i40e_is_aq_api_ver_ge.exit.thread_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_is_aq_api_ver_ge.exit.thread

lor.rhs.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp6.i = icmp eq i16 %4, 1
  br i1 %cmp6.i, label %i40e_is_aq_api_ver_ge.exit, label %lor.rhs.i.if.end10_crit_edge

lor.rhs.i.if.end10_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

i40e_is_aq_api_ver_ge.exit:                       ; preds = %lor.rhs.i
  %api_min_ver.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 11
  %5 = ptrtoint ptr %api_min_ver.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %api_min_ver.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %cmp10.i = icmp ugt i16 %6, 4
  br i1 %cmp10.i, label %i40e_is_aq_api_ver_ge.exit.i40e_is_aq_api_ver_ge.exit.thread_crit_edge, label %i40e_is_aq_api_ver_ge.exit.if.end10_crit_edge

i40e_is_aq_api_ver_ge.exit.if.end10_crit_edge:    ; preds = %i40e_is_aq_api_ver_ge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

i40e_is_aq_api_ver_ge.exit.i40e_is_aq_api_ver_ge.exit.thread_crit_edge: ; preds = %i40e_is_aq_api_ver_ge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_is_aq_api_ver_ge.exit.thread

i40e_is_aq_api_ver_ge.exit.thread:                ; preds = %i40e_is_aq_api_ver_ge.exit.i40e_is_aq_api_ver_ge.exit.thread_crit_edge, %land.lhs.true.i40e_is_aq_api_ver_ge.exit.thread_crit_edge
  br label %if.end10

if.end10:                                         ; preds = %i40e_is_aq_api_ver_ge.exit.thread, %i40e_is_aq_api_ver_ge.exit.if.end10_crit_edge, %lor.rhs.i.if.end10_crit_edge, %entry.if.end10_crit_edge
  %flags.0 = phi i16 [ %.mux, %entry.if.end10_crit_edge ], [ -32767, %i40e_is_aq_api_ver_ge.exit.thread ], [ 1, %i40e_is_aq_api_ver_ge.exit.if.end10_crit_edge ], [ 1, %lor.rhs.i.if.end10_crit_edge ]
  %7 = call i16 @llvm.bswap.i16(i16 %flags.0)
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %0, align 4
  %valid_flags = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, ptr %0, i32 0, i32 1
  %9 = ptrtoint ptr %valid_flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 256, ptr %valid_flags, align 2
  %api_maj_ver.i28 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 10
  %10 = ptrtoint ptr %api_maj_ver.i28 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %api_maj_ver.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp.i29 = icmp ugt i16 %11, 1
  br i1 %cmp.i29, label %if.end10.if.then13_crit_edge, label %lor.rhs.i31

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

lor.rhs.i31:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp6.i30 = icmp eq i16 %11, 1
  br i1 %cmp6.i30, label %i40e_is_aq_api_ver_ge.exit35, label %lor.rhs.i31.if.end18_crit_edge

lor.rhs.i31.if.end18_crit_edge:                   ; preds = %lor.rhs.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

i40e_is_aq_api_ver_ge.exit35:                     ; preds = %lor.rhs.i31
  %api_min_ver.i32 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 11
  %12 = ptrtoint ptr %api_min_ver.i32 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %api_min_ver.i32, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %13)
  %cmp10.i33 = icmp ugt i16 %13, 4
  br i1 %cmp10.i33, label %i40e_is_aq_api_ver_ge.exit35.if.then13_crit_edge, label %i40e_is_aq_api_ver_ge.exit35.if.end18_crit_edge

i40e_is_aq_api_ver_ge.exit35.if.end18_crit_edge:  ; preds = %i40e_is_aq_api_ver_ge.exit35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

i40e_is_aq_api_ver_ge.exit35.if.then13_crit_edge: ; preds = %i40e_is_aq_api_ver_ge.exit35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then13:                                        ; preds = %i40e_is_aq_api_ver_ge.exit35.if.then13_crit_edge, %if.end10.if.then13_crit_edge
  %14 = ptrtoint ptr %valid_flags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 384, ptr %valid_flags, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %i40e_is_aq_api_ver_ge.exit35.if.end18_crit_edge, %lor.rhs.i31.if.end18_crit_edge
  %15 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %16 = call i16 @llvm.bswap.i16(i16 %seid)
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %15, align 4
  %call20 = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_vsi_multicast_promiscuous(ptr noundef %hw, i16 noundef zeroext %seid, i1 noundef zeroext %set, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 596) #10
  %spec.select = select i1 %set, i16 512, i16 0
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %spec.select, ptr %0, align 4
  %valid_flags = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, ptr %0, i32 0, i32 1
  %4 = ptrtoint ptr %valid_flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 512, ptr %valid_flags, align 2
  %5 = call i16 @llvm.bswap.i16(i16 %seid)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_vsi_mc_promisc_on_vlan(ptr noundef %hw, i16 noundef zeroext %seid, i1 noundef zeroext %enable, i16 noundef zeroext %vid, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 596) #10
  %spec.select = select i1 %enable, i16 512, i16 0
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %spec.select, ptr %0, align 4
  %valid_flags = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, ptr %0, i32 0, i32 1
  %4 = ptrtoint ptr %valid_flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 512, ptr %valid_flags, align 2
  %5 = call i16 @llvm.bswap.i16(i16 %seid)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 4
  %7 = or i16 %vid, -32768
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %vlan_tag = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, ptr %0, i32 0, i32 3
  %9 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %vlan_tag, align 2
  %call = call i32 @i40e_asq_send_command_atomic(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details, i1 noundef zeroext true) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_asq_send_command_atomic(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_vsi_uc_promisc_on_vlan(ptr noundef %hw, i16 noundef zeroext %seid, i1 noundef zeroext %enable, i16 noundef zeroext %vid, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 596) #10
  br i1 %enable, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %api_maj_ver.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 10
  %2 = ptrtoint ptr %api_maj_ver.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %api_maj_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.i = icmp ugt i16 %3, 1
  br i1 %cmp.i, label %if.then.i40e_is_aq_api_ver_ge.exit.thread_crit_edge, label %lor.rhs.i

if.then.i40e_is_aq_api_ver_ge.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_is_aq_api_ver_ge.exit.thread

lor.rhs.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp6.i = icmp eq i16 %3, 1
  br i1 %cmp6.i, label %i40e_is_aq_api_ver_ge.exit, label %lor.rhs.i.if.end6_crit_edge

lor.rhs.i.if.end6_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

i40e_is_aq_api_ver_ge.exit:                       ; preds = %lor.rhs.i
  %api_min_ver.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 11
  %4 = ptrtoint ptr %api_min_ver.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %api_min_ver.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp10.i = icmp ugt i16 %5, 4
  br i1 %cmp10.i, label %i40e_is_aq_api_ver_ge.exit.i40e_is_aq_api_ver_ge.exit.thread_crit_edge, label %i40e_is_aq_api_ver_ge.exit.if.end6_crit_edge

i40e_is_aq_api_ver_ge.exit.if.end6_crit_edge:     ; preds = %i40e_is_aq_api_ver_ge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

i40e_is_aq_api_ver_ge.exit.i40e_is_aq_api_ver_ge.exit.thread_crit_edge: ; preds = %i40e_is_aq_api_ver_ge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_is_aq_api_ver_ge.exit.thread

i40e_is_aq_api_ver_ge.exit.thread:                ; preds = %i40e_is_aq_api_ver_ge.exit.i40e_is_aq_api_ver_ge.exit.thread_crit_edge, %if.then.i40e_is_aq_api_ver_ge.exit.thread_crit_edge
  br label %if.end6

if.end6:                                          ; preds = %i40e_is_aq_api_ver_ge.exit.thread, %i40e_is_aq_api_ver_ge.exit.if.end6_crit_edge, %lor.rhs.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %flags.0 = phi i16 [ 0, %entry.if.end6_crit_edge ], [ -32767, %i40e_is_aq_api_ver_ge.exit.thread ], [ 1, %i40e_is_aq_api_ver_ge.exit.if.end6_crit_edge ], [ 1, %lor.rhs.i.if.end6_crit_edge ]
  %6 = call i16 @llvm.bswap.i16(i16 %flags.0)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %0, align 4
  %valid_flags = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, ptr %0, i32 0, i32 1
  %8 = ptrtoint ptr %valid_flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 256, ptr %valid_flags, align 2
  %api_maj_ver.i28 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 10
  %9 = ptrtoint ptr %api_maj_ver.i28 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %api_maj_ver.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp.i29 = icmp ugt i16 %10, 1
  br i1 %cmp.i29, label %if.end6.if.then9_crit_edge, label %lor.rhs.i31

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

lor.rhs.i31:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp6.i30 = icmp eq i16 %10, 1
  br i1 %cmp6.i30, label %i40e_is_aq_api_ver_ge.exit35, label %lor.rhs.i31.if.end14_crit_edge

lor.rhs.i31.if.end14_crit_edge:                   ; preds = %lor.rhs.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

i40e_is_aq_api_ver_ge.exit35:                     ; preds = %lor.rhs.i31
  %api_min_ver.i32 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 11
  %11 = ptrtoint ptr %api_min_ver.i32 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %api_min_ver.i32, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %12)
  %cmp10.i33 = icmp ugt i16 %12, 4
  br i1 %cmp10.i33, label %i40e_is_aq_api_ver_ge.exit35.if.then9_crit_edge, label %i40e_is_aq_api_ver_ge.exit35.if.end14_crit_edge

i40e_is_aq_api_ver_ge.exit35.if.end14_crit_edge:  ; preds = %i40e_is_aq_api_ver_ge.exit35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

i40e_is_aq_api_ver_ge.exit35.if.then9_crit_edge:  ; preds = %i40e_is_aq_api_ver_ge.exit35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9:                                         ; preds = %i40e_is_aq_api_ver_ge.exit35.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  %13 = ptrtoint ptr %valid_flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 384, ptr %valid_flags, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %i40e_is_aq_api_ver_ge.exit35.if.end14_crit_edge, %lor.rhs.i31.if.end14_crit_edge
  %14 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %15 = call i16 @llvm.bswap.i16(i16 %seid)
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %14, align 4
  %17 = or i16 %vid, -32768
  %18 = call i16 @llvm.bswap.i16(i16 %17)
  %vlan_tag = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, ptr %0, i32 0, i32 3
  %19 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %vlan_tag, align 2
  %call19 = call i32 @i40e_asq_send_command_atomic(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details, i1 noundef zeroext true) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_vsi_bc_promisc_on_vlan(ptr noundef %hw, i16 noundef zeroext %seid, i1 noundef zeroext %enable, i16 noundef zeroext %vid, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 596) #10
  %spec.select = select i1 %enable, i16 1024, i16 0
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %spec.select, ptr %0, align 4
  %valid_flags = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, ptr %0, i32 0, i32 1
  %4 = ptrtoint ptr %valid_flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1024, ptr %valid_flags, align 2
  %5 = call i16 @llvm.bswap.i16(i16 %seid)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 4
  %7 = or i16 %vid, -32768
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %vlan_tag = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, ptr %0, i32 0, i32 3
  %9 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %vlan_tag, align 2
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_vsi_broadcast(ptr noundef %hw, i16 noundef zeroext %seid, i1 noundef zeroext %set_filter, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 596) #10
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %0, align 4
  %5 = and i16 %4, -1025
  %masksel = select i1 %set_filter, i16 1024, i16 0
  %storemerge = or i16 %5, %masksel
  store i16 %storemerge, ptr %0, align 4
  %valid_flags = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, ptr %0, i32 0, i32 1
  %6 = ptrtoint ptr %valid_flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1024, ptr %valid_flags, align 2
  %7 = call i16 @llvm.bswap.i16(i16 %seid)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %1, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_vsi_vlan_promisc(ptr noundef %hw, i16 noundef zeroext %seid, i1 noundef zeroext %enable, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 596) #10
  %spec.select = select i1 %enable, i16 4096, i16 0
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %spec.select, ptr %0, align 4
  %valid_flags = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, ptr %0, i32 0, i32 1
  %4 = ptrtoint ptr %valid_flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4096, ptr %valid_flags, align 2
  %5 = call i16 @llvm.bswap.i16(i16 %seid)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_get_vsi_params(ptr noundef %hw, ptr noundef %vsi_ctx, ptr nocapture noundef readnone %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 530) #10
  %2 = ptrtoint ptr %vsi_ctx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vsi_ctx, align 4
  %4 = call i16 @llvm.bswap.i16(i16 %3)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %0, align 4
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %desc, align 4
  %8 = or i16 %7, 16
  store i16 %8, ptr %desc, align 4
  %info = getelementptr inbounds %struct.i40e_vsi_context, ptr %vsi_ctx, i32 0, i32 9
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %info, i16 noundef zeroext 128, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.aq_get_vsi_params_exit_crit_edge

entry.aq_get_vsi_params_exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %aq_get_vsi_params_exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %0, align 4
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %vsi_ctx to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %vsi_ctx, align 4
  %vsi_number = getelementptr inbounds %struct.i40e_aqc_add_get_update_vsi_completion, ptr %0, i32 0, i32 1
  %14 = ptrtoint ptr %vsi_number to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vsi_number, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %vsi_number5 = getelementptr inbounds %struct.i40e_vsi_context, ptr %vsi_ctx, i32 0, i32 2
  %17 = ptrtoint ptr %vsi_number5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %vsi_number5, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %9, align 4
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %vsis_allocated = getelementptr inbounds %struct.i40e_vsi_context, ptr %vsi_ctx, i32 0, i32 3
  %21 = ptrtoint ptr %vsis_allocated to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %vsis_allocated, align 2
  %vsi_free = getelementptr inbounds %struct.i40e_aqc_add_get_update_vsi_completion, ptr %0, i32 0, i32 3
  %22 = ptrtoint ptr %vsi_free to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vsi_free, align 2
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %vsis_unallocated = getelementptr inbounds %struct.i40e_vsi_context, ptr %vsi_ctx, i32 0, i32 4
  %25 = ptrtoint ptr %vsis_unallocated to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %vsis_unallocated, align 4
  br label %aq_get_vsi_params_exit

aq_get_vsi_params_exit:                           ; preds = %if.end, %entry.aq_get_vsi_params_exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_update_vsi_params(ptr noundef %hw, ptr noundef %vsi_ctx, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 529) #10
  %3 = ptrtoint ptr %vsi_ctx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vsi_ctx, align 4
  %5 = call i16 @llvm.bswap.i16(i16 %4)
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %0, align 4
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %desc, align 4
  %9 = or i16 %8, 20
  store i16 %9, ptr %desc, align 4
  %info = getelementptr inbounds %struct.i40e_vsi_context, ptr %vsi_ctx, i32 0, i32 9
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %info, i16 noundef zeroext 128, ptr noundef %cmd_details) #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 4
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %vsis_allocated = getelementptr inbounds %struct.i40e_vsi_context, ptr %vsi_ctx, i32 0, i32 3
  %13 = ptrtoint ptr %vsis_allocated to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %vsis_allocated, align 2
  %vsi_free = getelementptr inbounds %struct.i40e_aqc_add_get_update_vsi_completion, ptr %0, i32 0, i32 3
  %14 = ptrtoint ptr %vsi_free to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vsi_free, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %vsis_unallocated = getelementptr inbounds %struct.i40e_vsi_context, ptr %vsi_ctx, i32 0, i32 4
  %17 = ptrtoint ptr %vsis_unallocated to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %vsis_unallocated, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_get_switch_config(ptr noundef %hw, ptr noundef %buf, i16 noundef zeroext %buf_size, ptr nocapture noundef %start_seid, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 512) #10
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %buf_size)
  %cmp = icmp ugt i16 %buf_size, 512
  %spec.select.v = select i1 %cmp, i16 18, i16 16
  %spec.select = or i16 %3, %spec.select.v
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %spec.select, ptr %desc, align 4
  %5 = ptrtoint ptr %start_seid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %start_seid, align 2
  %7 = call i16 @llvm.bswap.i16(i16 %6)
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %0, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %buf, i16 noundef zeroext %buf_size, ptr noundef %cmd_details) #10
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %0, align 4
  %11 = call i16 @llvm.bswap.i16(i16 %10)
  %12 = ptrtoint ptr %start_seid to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %start_seid, align 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_switch_config(ptr noundef %hw, i16 noundef zeroext %flags, i16 noundef zeroext %valid_flags, i8 noundef zeroext %mode, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 517) #10
  %2 = call i16 @llvm.bswap.i16(i16 %flags)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 4
  %4 = call i16 @llvm.bswap.i16(i16 %valid_flags)
  %valid_flags2 = getelementptr inbounds %struct.i40e_aqc_set_switch_config, ptr %0, i32 0, i32 1
  %5 = ptrtoint ptr %valid_flags2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %valid_flags2, align 2
  %mode3 = getelementptr inbounds %struct.i40e_aqc_set_switch_config, ptr %0, i32 0, i32 5
  %6 = ptrtoint ptr %mode3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %mode, ptr %mode3, align 2
  %flags4 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %7 = ptrtoint ptr %flags4 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %flags4, align 8
  %and = and i64 %8, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %10 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %switch_tag = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 36
  %11 = ptrtoint ptr %switch_tag to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %switch_tag, align 8
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %10, align 4
  %first_tag = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 37
  %15 = ptrtoint ptr %first_tag to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %first_tag, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %first_tag6 = getelementptr inbounds %struct.i40e_aqc_set_switch_config, ptr %0, i32 0, i32 3
  %18 = ptrtoint ptr %first_tag6 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %first_tag6, align 2
  %second_tag = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 38
  %19 = ptrtoint ptr %second_tag to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %second_tag, align 4
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_get_firmware_version(ptr noundef %hw, ptr noundef writeonly %fw_major_version, ptr noundef writeonly %fw_minor_version, ptr noundef writeonly %fw_build, ptr noundef writeonly %api_major_version, ptr noundef writeonly %api_minor_version, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %3 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 3
  %4 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1) #10
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %fw_major_version, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %2, align 4
  %7 = call i16 @llvm.bswap.i16(i16 %6)
  %8 = ptrtoint ptr %fw_major_version to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %fw_major_version, align 2
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %tobool3.not = icmp eq ptr %fw_minor_version, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %fw_minor = getelementptr inbounds %struct.i40e_aqc_get_version, ptr %0, i32 0, i32 3
  %9 = ptrtoint ptr %fw_minor to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fw_minor, align 2
  %11 = call i16 @llvm.bswap.i16(i16 %10)
  %12 = ptrtoint ptr %fw_minor_version to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %fw_minor_version, align 2
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %tobool6.not = icmp eq ptr %fw_build, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %fw_build to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %fw_build, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %tobool10.not = icmp eq ptr %api_major_version, null
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %3, align 4
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %20 = ptrtoint ptr %api_major_version to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %api_major_version, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %tobool13.not = icmp eq ptr %api_minor_version, null
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %api_minor = getelementptr inbounds %struct.i40e_aqc_get_version, ptr %0, i32 0, i32 5
  %21 = ptrtoint ptr %api_minor to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %api_minor, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %24 = ptrtoint ptr %api_minor_version to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %api_minor_version, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge, %entry.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_send_driver_version(ptr noundef %hw, ptr noundef %dv, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %cmp = icmp eq ptr %dv, null
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2) #10
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc, align 4
  %4 = or i16 %3, 20
  store i16 %4, ptr %desc, align 4
  %5 = ptrtoint ptr %dv to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dv, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %1, align 4
  %minor_version = getelementptr inbounds %struct.i40e_driver_version, ptr %dv, i32 0, i32 1
  %8 = ptrtoint ptr %minor_version to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %minor_version, align 1
  %driver_minor_ver = getelementptr inbounds %struct.i40e_aqc_driver_version, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %driver_minor_ver to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %driver_minor_ver, align 1
  %build_version = getelementptr inbounds %struct.i40e_driver_version, ptr %dv, i32 0, i32 2
  %11 = ptrtoint ptr %build_version to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %build_version, align 1
  %driver_build_ver = getelementptr inbounds %struct.i40e_aqc_driver_version, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %driver_build_ver to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %driver_build_ver, align 2
  %subbuild_version = getelementptr inbounds %struct.i40e_driver_version, ptr %dv, i32 0, i32 3
  %14 = ptrtoint ptr %subbuild_version to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %subbuild_version, align 1
  %driver_subbuild_ver = getelementptr inbounds %struct.i40e_aqc_driver_version, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %driver_subbuild_ver to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %driver_subbuild_ver, align 1
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body.land.lhs.true_crit_edge, %if.end
  %indvars.iv = phi i32 [ 0, %if.end ], [ %indvars.iv.next, %while.body.land.lhs.true_crit_edge ]
  %arrayidx = getelementptr %struct.i40e_driver_version, ptr %dv, i32 0, i32 4, i32 %indvars.iv
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %19 = icmp slt i8 %18, 1
  br i1 %19, label %while.end.split.loop.exit32, label %while.body

while.body:                                       ; preds = %land.lhs.true
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 32
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.land.lhs.true_crit_edge

while.body.land.lhs.true_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end.split.loop.exit32:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %20 = trunc i32 %indvars.iv to i16
  br label %while.end

while.end:                                        ; preds = %while.end.split.loop.exit32, %while.body.while.end_crit_edge
  %len.0.lcssa = phi i16 [ %20, %while.end.split.loop.exit32 ], [ 32, %while.body.while.end_crit_edge ]
  %driver_string12 = getelementptr inbounds %struct.i40e_driver_version, ptr %dv, i32 0, i32 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %driver_string12, i16 noundef zeroext %len.0.lcssa, ptr noundef %cmd_details) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %while.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_get_link_status(ptr noundef %hw, ptr nocapture noundef writeonly %link_up) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %get_link_info = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %get_link_info to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %get_link_info, align 8, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then:                                          ; preds = %entry
  %call = tail call i32 @i40e_update_link_info(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end14_crit_edge, label %do.body

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.body:                                          ; preds = %if.then
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 8
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.if.end14_crit_edge, label %do.end

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bus_id, align 2
  %conv = zext i16 %5 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %conv7 = zext i16 %7 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %func, align 4
  %conv9 = zext i16 %9 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv9, i32 noundef %call) #13
  br label %if.end14

if.end14:                                         ; preds = %do.end, %do.body.if.end14_crit_edge, %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  %status.0 = phi i32 [ %call, %do.end ], [ %call, %do.body.if.end14_crit_edge ], [ 0, %if.then.if.end14_crit_edge ], [ 0, %entry.if.end14_crit_edge ]
  %link_info16 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %link_info16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %link_info16, align 8
  %12 = and i8 %11, 1
  %13 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %link_up, align 1
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_add_veb(ptr noundef %hw, i16 noundef zeroext %uplink_seid, i16 noundef zeroext %downlink_seid, i8 noundef zeroext %enabled_tc, i1 noundef zeroext %default_port, ptr noundef writeonly %veb_seid, i1 noundef zeroext %enable_stats, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %uplink_seid)
  %tobool = icmp ne i16 %uplink_seid, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %downlink_seid)
  %tobool4 = icmp eq i16 %downlink_seid, 0
  %cmp.not = xor i1 %tobool, %tobool4
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %3 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 560) #10
  %4 = call i16 @llvm.bswap.i16(i16 %uplink_seid)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %3, align 4
  %6 = call i16 @llvm.bswap.i16(i16 %downlink_seid)
  %downlink_seid10 = getelementptr inbounds %struct.i40e_aqc_add_veb, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %downlink_seid10 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %downlink_seid10, align 2
  %enable_tcs = getelementptr inbounds %struct.i40e_aqc_add_veb, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %enable_tcs to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %enabled_tc, ptr %enable_tcs, align 2
  %not.tobool = xor i1 %tobool, true
  %spec.select = zext i1 %not.tobool to i16
  %veb_flags.1.v = select i1 %default_port, i16 2, i16 4
  %veb_flags.1 = or i16 %veb_flags.1.v, %spec.select
  %9 = shl nuw nsw i16 %veb_flags.1, 8
  %10 = or i16 %9, 4096
  %11 = select i1 %enable_stats, i16 %9, i16 %10
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %2, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool31.not = icmp ne i32 %call, 0
  %tobool32.not = icmp eq ptr %veb_seid, null
  %or.cond = or i1 %tobool32.not, %tobool31.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then33

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %0, align 4
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %16 = ptrtoint ptr %veb_seid to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %veb_seid, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %if.then33 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_get_veb_parameters(ptr noundef %hw, i16 noundef zeroext %veb_seid, ptr noundef writeonly %switch_id, ptr noundef writeonly %floating, ptr noundef writeonly %statistic_index, ptr noundef writeonly %vebs_used, ptr noundef writeonly %vebs_free, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %veb_seid)
  %cmp = icmp eq i16 %veb_seid, 0
  %3 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 562) #10
  %4 = call i16 @llvm.bswap.i16(i16 %veb_seid)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %0, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %switch_id, null
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %switch_id6 = getelementptr inbounds %struct.i40e_aqc_get_veb_parameters_completion, ptr %0, i32 0, i32 1
  %6 = ptrtoint ptr %switch_id6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %switch_id6, align 2
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %9 = ptrtoint ptr %switch_id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %switch_id, align 2
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %statistic_index, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %statistic_index10 = getelementptr inbounds %struct.i40e_aqc_get_veb_parameters_completion, ptr %0, i32 0, i32 3
  %10 = ptrtoint ptr %statistic_index10 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %statistic_index10, align 2
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %statistic_index to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %statistic_index, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %vebs_used, null
  br i1 %tobool12.not, label %if.end11.if.end15_crit_edge, label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %2, align 4
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %17 = ptrtoint ptr %vebs_used to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %vebs_used, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  %tobool16.not = icmp eq ptr %vebs_free, null
  br i1 %tobool16.not, label %if.end15.if.end19_crit_edge, label %if.then17

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %vebs_free18 = getelementptr inbounds %struct.i40e_aqc_get_veb_parameters_completion, ptr %0, i32 0, i32 5
  %18 = ptrtoint ptr %vebs_free18 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vebs_free18, align 2
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %21 = ptrtoint ptr %vebs_free to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %vebs_free, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %tobool20.not = icmp eq ptr %floating, null
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.then21

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %1, align 4
  %24 = lshr i16 %23, 8
  %25 = trunc i16 %24 to i8
  %26 = and i8 %25, 1
  %27 = ptrtoint ptr %floating to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %floating, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %if.then21 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_add_macvlan(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %mv_list, i16 noundef zeroext %count, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %conv = zext i16 %count to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count)
  %cmp = icmp eq i16 %count, 0
  %tobool.not = icmp eq ptr %mv_list, null
  %or.cond = or i1 %tobool.not, %cmp
  %tobool3.not = icmp eq ptr %hw, null
  %or.cond55 = or i1 %tobool3.not, %or.cond
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %or.cond55, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %mul = shl i16 %count, 4
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 592) #10
  %3 = call i16 @llvm.bswap.i16(i16 %count)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %2, align 4
  %5 = or i16 %seid, -32768
  %6 = call i16 @llvm.bswap.i16(i16 %5)
  %seid8 = getelementptr inbounds %struct.i40e_aqc_macvlan, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %seid8 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %seid8, align 2
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %1, align 4
  %arrayidx12 = getelementptr inbounds %struct.i40e_aqc_macvlan, ptr %2, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %arrayidx12, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.057 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx16 = getelementptr %struct.i40e_aqc_add_macvlan_element_data, ptr %mv_list, i32 %i.057
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx16, align 4
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.then17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr %struct.i40e_aqc_add_macvlan_element_data, ptr %mv_list, i32 %i.057, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags, align 2
  %15 = or i16 %14, 4096
  store i16 %15, ptr %flags, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %mul)
  %cmp28 = icmp ugt i16 %mul, 512
  %spec.select.v = select i1 %cmp28, i16 22, i16 20
  %spec.select = or i16 %17, %spec.select.v
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %spec.select, ptr %desc, align 4
  %call36 = call i32 @i40e_asq_send_command(ptr noundef nonnull %hw, ptr noundef nonnull %desc, ptr noundef nonnull %mv_list, i16 noundef zeroext %mul, ptr noundef %cmd_details) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %for.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_remove_macvlan(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %mv_list, i16 noundef zeroext %count, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count)
  %cmp = icmp eq i16 %count, 0
  %tobool.not = icmp eq ptr %mv_list, null
  %or.cond = or i1 %tobool.not, %cmp
  %tobool3.not = icmp eq ptr %hw, null
  %or.cond36 = or i1 %tobool3.not, %or.cond
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %or.cond36, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %mul = shl i16 %count, 4
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 593) #10
  %3 = call i16 @llvm.bswap.i16(i16 %count)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %2, align 4
  %5 = or i16 %seid, -32768
  %6 = call i16 @llvm.bswap.i16(i16 %5)
  %seid8 = getelementptr inbounds %struct.i40e_aqc_macvlan, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %seid8 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %seid8, align 2
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %1, align 4
  %arrayidx12 = getelementptr inbounds %struct.i40e_aqc_macvlan, ptr %2, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %arrayidx12, align 2
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %mul)
  %cmp17 = icmp ugt i16 %mul, 512
  %spec.select.v = select i1 %cmp17, i16 22, i16 20
  %spec.select = or i16 %11, %spec.select.v
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %spec.select, ptr %desc, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef nonnull %hw, ptr noundef nonnull %desc, ptr noundef nonnull %mv_list, i16 noundef zeroext %mul, ptr noundef %cmd_details) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_add_mirrorrule(ptr noundef %hw, i16 noundef zeroext %sw_seid, i16 noundef zeroext %rule_type, i16 noundef zeroext %dest_vsi, i16 noundef zeroext %count, ptr noundef %mr_list, ptr noundef %cmd_details, ptr noundef writeonly %rule_id, ptr noundef writeonly %rules_used, ptr noundef writeonly %rules_free) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %rule_type, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %0)
  %switch = icmp eq i16 %0, 4
  br i1 %switch, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count)
  %cmp6 = icmp eq i16 %count, 0
  %tobool.not = icmp eq ptr %mr_list, null
  %or.cond = or i1 %cmp6, %tobool.not
  br i1 %or.cond, label %if.then.return_crit_edge, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %mul.i = shl i16 %count, 1
  %3 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 608) #10
  %4 = call i16 @llvm.bswap.i16(i16 %sw_seid) #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %1, align 4
  %6 = shl i16 %rule_type, 8
  %7 = and i16 %6, 1792
  %rule_type5.i = getelementptr inbounds %struct.i40e_aqc_add_delete_mirror_rule, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %rule_type5.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %rule_type5.i, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %count) #10
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %2, align 4
  %11 = call i16 @llvm.bswap.i16(i16 %dest_vsi) #10
  %destination.i = getelementptr inbounds %struct.i40e_aqc_add_delete_mirror_rule, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %destination.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %destination.i, align 2
  %tobool.not.i = icmp eq ptr %mr_list, null
  br i1 %tobool.not.i, label %if.end10.if.end15.i_crit_edge, label %if.then.i

if.end10.if.end15.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i:                                        ; preds = %if.end10
  %13 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %desc.i, align 4
  %15 = or i16 %14, 20
  store i16 %15, ptr %desc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %mul.i)
  %cmp.i = icmp ugt i16 %mul.i, 512
  br i1 %cmp.i, label %if.then10.i, label %if.then.i.if.end15.i_crit_edge

if.then.i.if.end15.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = or i16 %14, 22
  %17 = ptrtoint ptr %desc.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %desc.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %if.then.i.if.end15.i_crit_edge, %if.end10.if.end15.i_crit_edge
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %mr_list, i16 noundef zeroext %mul.i, ptr noundef %cmd_details) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.then19.i_crit_edge, label %lor.lhs.false.i

if.end15.i.if.then19.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

lor.lhs.false.i:                                  ; preds = %if.end15.i
  %asq_last_status.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %18 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %asq_last_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %19)
  %cmp17.i = icmp eq i32 %19, 16
  br i1 %cmp17.i, label %lor.lhs.false.i.if.then19.i_crit_edge, label %lor.lhs.false.i.i40e_mirrorrule_op.exit_crit_edge

lor.lhs.false.i.i40e_mirrorrule_op.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_mirrorrule_op.exit

lor.lhs.false.i.if.then19.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

if.then19.i:                                      ; preds = %lor.lhs.false.i.if.then19.i_crit_edge, %if.end15.i.if.then19.i_crit_edge
  %tobool20.not.i = icmp eq ptr %rule_id, null
  br i1 %tobool20.not.i, label %if.then19.i.if.end23.i_crit_edge, label %if.then21.i

if.then19.i.if.end23.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %rule_type5.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rule_type5.i, align 2
  %22 = call i16 @llvm.bswap.i16(i16 %21) #10
  %23 = ptrtoint ptr %rule_id to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %rule_id, align 2
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.then19.i.if.end23.i_crit_edge
  %tobool24.not.i = icmp eq ptr %rules_used, null
  br i1 %tobool24.not.i, label %if.end23.i.if.end26.i_crit_edge, label %if.then25.i

if.end23.i.if.end26.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %2, align 4
  %26 = call i16 @llvm.bswap.i16(i16 %25) #10
  %27 = ptrtoint ptr %rules_used to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %rules_used, align 2
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %if.end23.i.if.end26.i_crit_edge
  %tobool27.not.i = icmp eq ptr %rules_free, null
  br i1 %tobool27.not.i, label %if.end26.i.i40e_mirrorrule_op.exit_crit_edge, label %if.then28.i

if.end26.i.i40e_mirrorrule_op.exit_crit_edge:     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_mirrorrule_op.exit

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %destination.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %destination.i, align 2
  %30 = call i16 @llvm.bswap.i16(i16 %29) #10
  %31 = ptrtoint ptr %rules_free to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %rules_free, align 2
  br label %i40e_mirrorrule_op.exit

i40e_mirrorrule_op.exit:                          ; preds = %if.then28.i, %if.end26.i.i40e_mirrorrule_op.exit_crit_edge, %lor.lhs.false.i.i40e_mirrorrule_op.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  br label %return

return:                                           ; preds = %i40e_mirrorrule_op.exit, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %i40e_mirrorrule_op.exit ], [ -5, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_delete_mirrorrule(ptr noundef %hw, i16 noundef zeroext %sw_seid, i16 noundef zeroext %rule_type, i16 noundef zeroext %rule_id, i16 noundef zeroext %count, ptr noundef %mr_list, ptr noundef %cmd_details, ptr noundef writeonly %rules_used, ptr noundef writeonly %rules_free) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %rule_type)
  %cmp = icmp eq i16 %rule_type, 3
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count)
  %cmp3 = icmp eq i16 %count, 0
  %tobool.not = icmp eq ptr %mr_list, null
  %or.cond = or i1 %cmp3, %tobool.not
  br i1 %or.cond, label %if.then.return_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %mul.i = shl i16 %count, 1
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 609) #10
  %3 = call i16 @llvm.bswap.i16(i16 %sw_seid) #10
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %0, align 4
  %5 = shl i16 %rule_type, 8
  %6 = and i16 %5, 1792
  %rule_type5.i = getelementptr inbounds %struct.i40e_aqc_add_delete_mirror_rule, ptr %0, i32 0, i32 1
  %7 = ptrtoint ptr %rule_type5.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %rule_type5.i, align 2
  %8 = call i16 @llvm.bswap.i16(i16 %count) #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %1, align 4
  %10 = call i16 @llvm.bswap.i16(i16 %rule_id) #10
  %destination.i = getelementptr inbounds %struct.i40e_aqc_add_delete_mirror_rule, ptr %0, i32 0, i32 3
  %11 = ptrtoint ptr %destination.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %destination.i, align 2
  %tobool.not.i = icmp eq ptr %mr_list, null
  br i1 %tobool.not.i, label %if.end6.if.end15.i_crit_edge, label %if.then.i

if.end6.if.end15.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i:                                        ; preds = %if.end6
  %12 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %desc.i, align 4
  %14 = or i16 %13, 20
  store i16 %14, ptr %desc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %mul.i)
  %cmp.i = icmp ugt i16 %mul.i, 512
  br i1 %cmp.i, label %if.then10.i, label %if.then.i.if.end15.i_crit_edge

if.then.i.if.end15.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = or i16 %13, 22
  %16 = ptrtoint ptr %desc.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %desc.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %if.then.i.if.end15.i_crit_edge, %if.end6.if.end15.i_crit_edge
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %mr_list, i16 noundef zeroext %mul.i, ptr noundef %cmd_details) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.then19.i_crit_edge, label %lor.lhs.false.i

if.end15.i.if.then19.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

lor.lhs.false.i:                                  ; preds = %if.end15.i
  %asq_last_status.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %17 = ptrtoint ptr %asq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %asq_last_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %18)
  %cmp17.i = icmp eq i32 %18, 16
  br i1 %cmp17.i, label %lor.lhs.false.i.if.then19.i_crit_edge, label %lor.lhs.false.i.i40e_mirrorrule_op.exit_crit_edge

lor.lhs.false.i.i40e_mirrorrule_op.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_mirrorrule_op.exit

lor.lhs.false.i.if.then19.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

if.then19.i:                                      ; preds = %lor.lhs.false.i.if.then19.i_crit_edge, %if.end15.i.if.then19.i_crit_edge
  %tobool24.not.i = icmp eq ptr %rules_used, null
  br i1 %tobool24.not.i, label %if.then19.i.if.end26.i_crit_edge, label %if.then25.i

if.then19.i.if.end26.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %1, align 4
  %21 = call i16 @llvm.bswap.i16(i16 %20) #10
  %22 = ptrtoint ptr %rules_used to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %rules_used, align 2
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %if.then19.i.if.end26.i_crit_edge
  %tobool27.not.i = icmp eq ptr %rules_free, null
  br i1 %tobool27.not.i, label %if.end26.i.i40e_mirrorrule_op.exit_crit_edge, label %if.then28.i

if.end26.i.i40e_mirrorrule_op.exit_crit_edge:     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_mirrorrule_op.exit

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %destination.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %destination.i, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24) #10
  %26 = ptrtoint ptr %rules_free to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %rules_free, align 2
  br label %i40e_mirrorrule_op.exit

i40e_mirrorrule_op.exit:                          ; preds = %if.then28.i, %if.end26.i.i40e_mirrorrule_op.exit_crit_edge, %lor.lhs.false.i.i40e_mirrorrule_op.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  br label %return

return:                                           ; preds = %i40e_mirrorrule_op.exit, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %i40e_mirrorrule_op.exit ], [ -5, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_send_msg_to_vf(ptr noundef %hw, i16 noundef zeroext %vfid, i32 noundef %v_opcode, i32 noundef %v_retval, ptr noundef %msg, i16 noundef zeroext %msglen, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 4
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 5
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %3 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2050) #10
  %conv = zext i16 %vfid to i32
  %4 = call i32 @llvm.bswap.i32(i32 %conv)
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %2, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %v_opcode)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %v_retval)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %1, align 4
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %desc, align 4
  %12 = or i16 %11, 32
  store i16 %12, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %msglen)
  %tobool.not = icmp eq i16 %msglen, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %msglen)
  %cmp = icmp ugt i16 %msglen, 512
  %spec.select.v = select i1 %cmp, i16 54, i16 52
  %spec.select = or i16 %11, %spec.select.v
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %spec.select, ptr %desc, align 4
  %15 = call i16 @llvm.bswap.i16(i16 %msglen)
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then, %entry.if.end14_crit_edge
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %msg, i16 noundef zeroext %msglen, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_debug_read_register(ptr noundef %hw, i32 noundef %reg_addr, ptr noundef writeonly %reg_val, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 3
  %cmp = icmp eq ptr %reg_val, null
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext -253) #10
  %4 = call i32 @llvm.bswap.i32(i32 %reg_addr)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %3, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %10 = zext i32 %7 to i64
  %11 = zext i32 %9 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = call i64 @llvm.bswap.i64(i64 %13)
  %15 = ptrtoint ptr %reg_val to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %reg_val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %if.then1 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_debug_write_register(ptr noundef %hw, i32 noundef %reg_addr, i64 noundef %reg_val, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 3
  %3 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext -252) #10
  %4 = call i32 @llvm.bswap.i32(i32 %reg_addr)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %0, align 4
  %shr = lshr i64 %reg_val, 32
  %conv = trunc i64 %shr to i32
  %6 = call i32 @llvm.bswap.i32(i32 %conv)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %1, align 4
  %conv1 = trunc i64 %reg_val to i32
  %8 = call i32 @llvm.bswap.i32(i32 %conv1)
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %2, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_request_resource(ptr noundef %hw, i32 noundef %resource, i32 noundef %access, i8 noundef zeroext %sdp_number, ptr nocapture noundef writeonly %timeout, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %3 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 8) #10
  %conv = trunc i32 %resource to i16
  %4 = call i16 @llvm.bswap.i16(i16 %conv)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %0, align 4
  %conv1 = trunc i32 %access to i16
  %6 = call i16 @llvm.bswap.i16(i16 %conv1)
  %access_type = getelementptr inbounds %struct.i40e_aqc_request_resource, ptr %0, i32 0, i32 1
  %7 = ptrtoint ptr %access_type to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %access_type, align 2
  %conv2 = zext i8 %sdp_number to i32
  %8 = shl nuw i32 %conv2, 24
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %2, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %asq_last_status = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  %10 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %asq_last_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %11)
  %cmp = icmp eq i32 %11, 12
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %conv5 = zext i32 %14 to i64
  %15 = ptrtoint ptr %timeout to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv5, ptr %timeout, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_release_resource(ptr noundef %hw, i32 noundef %resource, i8 noundef zeroext %sdp_number, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 9) #10
  %conv = trunc i32 %resource to i16
  %3 = call i16 @llvm.bswap.i16(i16 %conv)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %0, align 4
  %conv1 = zext i8 %sdp_number to i32
  %5 = shl nuw i32 %conv1, 24
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %1, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_read_nvm(ptr noundef %hw, i8 noundef zeroext %module_pointer, i32 noundef %offset, i16 noundef zeroext %length, ptr noundef %data, i1 noundef zeroext %last_command, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %offset)
  %tobool.not = icmp ult i32 %offset, 16777216
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %tobool.not, label %if.end, label %entry.i40e_aq_read_nvm_exit_crit_edge

entry.i40e_aq_read_nvm_exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_aq_read_nvm_exit

if.end:                                           ; preds = %entry
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1793) #10
  br i1 %last_command, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %0, align 4
  %5 = or i8 %4, 1
  store i8 %5, ptr %0, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %module_pointer5 = getelementptr inbounds %struct.i40e_aqc_nvm_update, ptr %0, i32 0, i32 1
  %6 = ptrtoint ptr %module_pointer5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %module_pointer, ptr %module_pointer5, align 1
  %7 = call i32 @llvm.bswap.i32(i32 %offset)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %1, align 4
  %9 = call i16 @llvm.bswap.i16(i16 %length)
  %length7 = getelementptr inbounds %struct.i40e_aqc_nvm_update, ptr %0, i32 0, i32 2
  %10 = ptrtoint ptr %length7 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %length7, align 2
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %length)
  %cmp = icmp ugt i16 %length, 512
  %spec.select.v = select i1 %cmp, i16 18, i16 16
  %spec.select = or i16 %12, %spec.select.v
  %13 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %spec.select, ptr %desc, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %data, i16 noundef zeroext %length, ptr noundef %cmd_details) #10
  br label %i40e_aq_read_nvm_exit

i40e_aq_read_nvm_exit:                            ; preds = %if.end4, %entry.i40e_aq_read_nvm_exit_crit_edge
  %status.0 = phi i32 [ %call, %if.end4 ], [ -5, %entry.i40e_aq_read_nvm_exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_erase_nvm(ptr noundef %hw, i8 noundef zeroext %module_pointer, i32 noundef %offset, i16 noundef zeroext %length, i1 noundef zeroext %last_command, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %offset)
  %tobool.not = icmp ult i32 %offset, 16777216
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %tobool.not, label %if.end, label %entry.i40e_aq_erase_nvm_exit_crit_edge

entry.i40e_aq_erase_nvm_exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_aq_erase_nvm_exit

if.end:                                           ; preds = %entry
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1794) #10
  br i1 %last_command, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %0, align 4
  %5 = or i8 %4, 1
  store i8 %5, ptr %0, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %module_pointer5 = getelementptr inbounds %struct.i40e_aqc_nvm_update, ptr %0, i32 0, i32 1
  %6 = ptrtoint ptr %module_pointer5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %module_pointer, ptr %module_pointer5, align 1
  %7 = call i32 @llvm.bswap.i32(i32 %offset)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %1, align 4
  %9 = call i16 @llvm.bswap.i16(i16 %length)
  %length7 = getelementptr inbounds %struct.i40e_aqc_nvm_update, ptr %0, i32 0, i32 2
  %10 = ptrtoint ptr %length7 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %length7, align 2
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  br label %i40e_aq_erase_nvm_exit

i40e_aq_erase_nvm_exit:                           ; preds = %if.end4, %entry.i40e_aq_erase_nvm_exit_crit_edge
  %status.0 = phi i32 [ %call, %if.end4 ], [ -5, %entry.i40e_aq_erase_nvm_exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_discover_capabilities(ptr noundef %hw, ptr noundef %buff, i16 noundef zeroext %buff_size, ptr nocapture noundef writeonly %data_size, i32 noundef %list_type_opc, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc.i403.i = alloca %struct.i40e_aq_desc, align 4
  %desc.i.i = alloca %struct.i40e_aq_desc, align 4
  %ocp_cfg_word0.i = alloca i16, align 2
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %1 = and i32 %list_type_opc, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %switch = icmp eq i32 %1, 10
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %switch, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 2
  %conv = trunc i32 %list_type_opc to i16
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext %conv) #10
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %buff_size)
  %cmp5 = icmp ugt i16 %buff_size, 512
  %spec.select.v = select i1 %cmp5, i16 18, i16 16
  %spec.select = or i16 %5, %spec.select.v
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %spec.select, ptr %desc, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %buff, i16 noundef zeroext %buff_size, ptr noundef %cmd_details) #10
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %3, align 4
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %10 = ptrtoint ptr %data_size to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %data_size, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end14, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end14:                                         ; preds = %if.end
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ocp_cfg_word0.i) #10
  %14 = ptrtoint ptr %ocp_cfg_word0.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %ocp_cfg_word0.i, align 2, !annotation !396
  %15 = zext i32 %list_type_opc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %list_type_opc, label %if.end14.i40e_parse_discover_capabilities.exit_crit_edge [
    i32 11, label %if.then.i
    i32 10, label %if.then2.i
  ]

if.end14.i40e_parse_discover_capabilities.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_parse_discover_capabilities.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %dev_caps.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 14
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %func_caps.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 15
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.then.i
  %p.0.i = phi ptr [ %dev_caps.i, %if.then.i ], [ %func_caps.i, %if.then2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5408.not.i = icmp eq i32 %12, 0
  br i1 %cmp5408.not.i, label %if.end4.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end4.i.for.end.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %sec_rev_disabled.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 17
  %update_disabled.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 18
  %wr_csr_prot.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 47
  %fd.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 22
  %fd_filters_guaranteed.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 23
  %fd_filters_best_effort.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 24
  %ieee_1588.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 20
  %mdio_port_num.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 42
  %mdio_port_mode.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 43
  %iwarp.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 21
  %mgmt_cem.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 19
  %flex10_enable113.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 13
  %flex10_capable118.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 14
  %flex10_mode.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 15
  %flex10_status.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 16
  %num_msix_vectors_vf.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 39
  %num_msix_vectors.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 38
  %debug_mask77.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %bus_id86.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %device89.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %func92.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %num_tx_qp.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 36
  %base_queue74.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 37
  %num_rx_qp.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 35
  %rss.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 25
  %rss_table_size.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 26
  %rss_table_entry_width.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 27
  %iscsi.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 12
  %fcoe.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 11
  %dcb.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 10
  %enabled_tcmap.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 45
  %maxtc.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 46
  %num_vsis.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 34
  %evb_802_1_qbh.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 9
  %evb_802_1_qbg.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 8
  %vmdq.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 7
  %num_vfs.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 32
  %vf_base_id.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 33
  %sr_iov_1_1.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 6
  %valid_functions33.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 5
  %os2bmc.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 4
  %npar_enable.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 3
  %management_mode.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 1
  %mng_protocols_over_mctp28.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cap.0410.i = phi ptr [ %buff, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0409.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %cap.0410.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cap.0410.i, align 4
  %18 = call i16 @llvm.bswap.i16(i16 %17) #10
  %number7.i = getelementptr inbounds %struct.i40e_aqc_list_capabilities_element_resp, ptr %cap.0410.i, i32 0, i32 3
  %19 = ptrtoint ptr %number7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %number7.i, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20) #10
  %logical_id8.i = getelementptr inbounds %struct.i40e_aqc_list_capabilities_element_resp, ptr %cap.0410.i, i32 0, i32 4
  %22 = ptrtoint ptr %logical_id8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %logical_id8.i, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23) #10
  %phys_id9.i = getelementptr inbounds %struct.i40e_aqc_list_capabilities_element_resp, ptr %cap.0410.i, i32 0, i32 5
  %25 = ptrtoint ptr %phys_id9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phys_id9.i, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26) #10
  %major_rev10.i = getelementptr inbounds %struct.i40e_aqc_list_capabilities_element_resp, ptr %cap.0410.i, i32 0, i32 1
  %28 = ptrtoint ptr %major_rev10.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %major_rev10.i, align 2
  %30 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.182)
  switch i16 %18, label %for.body.i.for.inc.i_crit_edge [
    i16 1, label %sw.bb.i
    i16 2, label %sw.bb11.i
    i16 3, label %sw.bb30.i
    i16 4, label %sw.bb31.i
    i16 5, label %sw.bb32.i
    i16 18, label %sw.bb34.i
    i16 19, label %sw.bb39.i
    i16 20, label %sw.bb40.i
    i16 21, label %sw.bb45.i
    i16 22, label %sw.bb50.i
    i16 23, label %sw.bb55.i
    i16 24, label %sw.bb56.i
    i16 33, label %sw.bb61.i
    i16 34, label %sw.bb66.i
    i16 64, label %sw.bb71.i
    i16 65, label %sw.bb72.i
    i16 66, label %sw.bb73.i
    i16 67, label %sw.bb75.i
    i16 68, label %sw.bb99.i
    i16 241, label %sw.bb100.i
    i16 242, label %sw.bb121.i
    i16 81, label %sw.bb126.i
    i16 97, label %sw.bb131.i
    i16 98, label %sw.bb136.i
    i16 99, label %sw.bb142.i
    i16 70, label %sw.bb147.i
    i16 69, label %sw.bb152.i
    i16 100, label %sw.bb153.i
    i16 128, label %sw.bb157.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %21, ptr %p.0.i, align 8
  br label %for.inc.i

sw.bb11.i:                                        ; preds = %for.body.i
  %32 = ptrtoint ptr %management_mode.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %21, ptr %management_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp13.i = icmp ugt i8 %29, 1
  br i1 %cmp13.i, label %if.then15.i, label %if.else27.i

if.then15.i:                                      ; preds = %sw.bb11.i
  %33 = ptrtoint ptr %mng_protocols_over_mctp28.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %24, ptr %mng_protocols_over_mctp28.i, align 8
  %34 = ptrtoint ptr %debug_mask77.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug_mask77.i, align 8
  %and.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then15.i.for.inc.i_crit_edge, label %do.end.i

if.then15.i.for.inc.i_crit_edge:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end.i:                                         ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %bus_id86.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %bus_id86.i, align 2
  %conv18.i = zext i16 %37 to i32
  %38 = ptrtoint ptr %device89.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %device89.i, align 2
  %conv20.i = zext i16 %39 to i32
  %40 = ptrtoint ptr %func92.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %func92.i, align 4
  %conv22.i = zext i16 %41 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %conv18.i, i32 noundef %conv20.i, i32 noundef %conv22.i, i32 noundef %24) #13
  br label %for.inc.i

if.else27.i:                                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %mng_protocols_over_mctp28.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %mng_protocols_over_mctp28.i, align 8
  br label %for.inc.i

sw.bb30.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %npar_enable.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %21, ptr %npar_enable.i, align 4
  br label %for.inc.i

sw.bb31.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %os2bmc.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %21, ptr %os2bmc.i, align 8
  br label %for.inc.i

sw.bb32.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %valid_functions33.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %21, ptr %valid_functions33.i, align 4
  br label %for.inc.i

sw.bb34.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp35.i = icmp eq i32 %20, 16777216
  br i1 %cmp35.i, label %if.then37.i, label %sw.bb34.i.for.inc.i_crit_edge

sw.bb34.i.for.inc.i_crit_edge:                    ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then37.i:                                      ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %sr_iov_1_1.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %sr_iov_1_1.i, align 8
  br label %for.inc.i

sw.bb39.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %21, ptr %num_vfs.i, align 4
  %48 = ptrtoint ptr %vf_base_id.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %24, ptr %vf_base_id.i, align 8
  br label %for.inc.i

sw.bb40.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp41.i = icmp eq i32 %20, 16777216
  br i1 %cmp41.i, label %if.then43.i, label %sw.bb40.i.for.inc.i_crit_edge

sw.bb40.i.for.inc.i_crit_edge:                    ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then43.i:                                      ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %vmdq.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %vmdq.i, align 1
  br label %for.inc.i

sw.bb45.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp46.i = icmp eq i32 %20, 16777216
  br i1 %cmp46.i, label %if.then48.i, label %sw.bb45.i.for.inc.i_crit_edge

sw.bb45.i.for.inc.i_crit_edge:                    ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then48.i:                                      ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %evb_802_1_qbg.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %evb_802_1_qbg.i, align 2
  br label %for.inc.i

sw.bb50.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp51.i = icmp eq i32 %20, 16777216
  br i1 %cmp51.i, label %if.then53.i, label %sw.bb50.i.for.inc.i_crit_edge

sw.bb50.i.for.inc.i_crit_edge:                    ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then53.i:                                      ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %evb_802_1_qbh.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %evb_802_1_qbh.i, align 1
  br label %for.inc.i

sw.bb55.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %num_vsis.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %21, ptr %num_vsis.i, align 4
  br label %for.inc.i

sw.bb56.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp57.i = icmp eq i32 %20, 16777216
  br i1 %cmp57.i, label %if.then59.i, label %sw.bb56.i.for.inc.i_crit_edge

sw.bb56.i.for.inc.i_crit_edge:                    ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then59.i:                                      ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %dcb.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %dcb.i, align 4
  %54 = ptrtoint ptr %enabled_tcmap.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %24, ptr %enabled_tcmap.i, align 8
  %55 = ptrtoint ptr %maxtc.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %27, ptr %maxtc.i, align 4
  br label %for.inc.i

sw.bb61.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp62.i = icmp eq i32 %20, 16777216
  br i1 %cmp62.i, label %if.then64.i, label %sw.bb61.i.for.inc.i_crit_edge

sw.bb61.i.for.inc.i_crit_edge:                    ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then64.i:                                      ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %fcoe.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %fcoe.i, align 1
  br label %for.inc.i

sw.bb66.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp67.i = icmp eq i32 %20, 16777216
  br i1 %cmp67.i, label %if.then69.i, label %sw.bb66.i.for.inc.i_crit_edge

sw.bb66.i.for.inc.i_crit_edge:                    ; preds = %sw.bb66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then69.i:                                      ; preds = %sw.bb66.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %iscsi.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %iscsi.i, align 2
  br label %for.inc.i

sw.bb71.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %rss.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %rss.i, align 4
  %59 = ptrtoint ptr %rss_table_size.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %21, ptr %rss_table_size.i, align 8
  %60 = ptrtoint ptr %rss_table_entry_width.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %24, ptr %rss_table_entry_width.i, align 4
  br label %for.inc.i

sw.bb72.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %num_rx_qp.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %21, ptr %num_rx_qp.i, align 8
  %62 = ptrtoint ptr %base_queue74.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %27, ptr %base_queue74.i, align 8
  br label %for.inc.i

sw.bb73.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %num_tx_qp.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %21, ptr %num_tx_qp.i, align 4
  %64 = ptrtoint ptr %base_queue74.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %27, ptr %base_queue74.i, align 8
  br label %for.inc.i

sw.bb75.i:                                        ; preds = %for.body.i
  %65 = ptrtoint ptr %num_msix_vectors.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %21, ptr %num_msix_vectors.i, align 4
  %66 = ptrtoint ptr %debug_mask77.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %debug_mask77.i, align 8
  %and78.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool79.not.i = icmp eq i32 %and78.i, 0
  br i1 %tobool79.not.i, label %sw.bb75.i.for.inc.i_crit_edge, label %do.end83.i

sw.bb75.i.for.inc.i_crit_edge:                    ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end83.i:                                       ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %bus_id86.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %bus_id86.i, align 2
  %conv87.i = zext i16 %69 to i32
  %70 = ptrtoint ptr %device89.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %device89.i, align 2
  %conv90.i = zext i16 %71 to i32
  %72 = ptrtoint ptr %func92.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %func92.i, align 4
  %conv93.i = zext i16 %73 to i32
  %call95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %conv87.i, i32 noundef %conv90.i, i32 noundef %conv93.i, i32 noundef %21) #13
  br label %for.inc.i

sw.bb99.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %num_msix_vectors_vf.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %21, ptr %num_msix_vectors_vf.i, align 8
  br label %for.inc.i

sw.bb100.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp102.i = icmp eq i8 %29, 1
  br i1 %cmp102.i, label %if.then104.i, label %if.else109.i

if.then104.i:                                     ; preds = %sw.bb100.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp105.i = icmp eq i32 %20, 16777216
  br i1 %cmp105.i, label %if.then107.i, label %if.then104.i.if.end120.i_crit_edge

if.then104.i.if.end120.i_crit_edge:               ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120.i

if.then107.i:                                     ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %flex10_enable113.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %flex10_enable113.i, align 1
  br label %if.end120.sink.split.i

if.else109.i:                                     ; preds = %sw.bb100.i
  %and110.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.i)
  %tobool111.not.i = icmp eq i32 %and110.i, 0
  br i1 %tobool111.not.i, label %if.else109.i.if.end114.i_crit_edge, label %if.then112.i

if.else109.i.if.end114.i_crit_edge:               ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114.i

if.then112.i:                                     ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %flex10_enable113.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %flex10_enable113.i, align 1
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then112.i, %if.else109.i.if.end114.i_crit_edge
  %and115.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i)
  %tobool116.not.i = icmp eq i32 %and115.i, 0
  br i1 %tobool116.not.i, label %if.end114.i.if.end120.i_crit_edge, label %if.end114.i.if.end120.sink.split.i_crit_edge

if.end114.i.if.end120.sink.split.i_crit_edge:     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120.sink.split.i

if.end114.i.if.end120.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120.i

if.end120.sink.split.i:                           ; preds = %if.end114.i.if.end120.sink.split.i_crit_edge, %if.then107.i
  %77 = ptrtoint ptr %flex10_capable118.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %flex10_capable118.i, align 8
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.end120.sink.split.i, %if.end114.i.if.end120.i_crit_edge, %if.then104.i.if.end120.i_crit_edge
  %78 = ptrtoint ptr %flex10_mode.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %24, ptr %flex10_mode.i, align 4
  %79 = ptrtoint ptr %flex10_status.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %27, ptr %flex10_status.i, align 8
  br label %for.inc.i

sw.bb121.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp122.i = icmp eq i32 %20, 16777216
  br i1 %cmp122.i, label %if.then124.i, label %sw.bb121.i.for.inc.i_crit_edge

sw.bb121.i.for.inc.i_crit_edge:                   ; preds = %sw.bb121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then124.i:                                     ; preds = %sw.bb121.i
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %mgmt_cem.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %mgmt_cem.i, align 2
  br label %for.inc.i

sw.bb126.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp127.i = icmp eq i32 %20, 16777216
  br i1 %cmp127.i, label %if.then129.i, label %sw.bb126.i.for.inc.i_crit_edge

sw.bb126.i.for.inc.i_crit_edge:                   ; preds = %sw.bb126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then129.i:                                     ; preds = %sw.bb126.i
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %iwarp.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %iwarp.i, align 8
  br label %for.inc.i

sw.bb131.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %27)
  %cmp132.i = icmp ult i32 %27, 30
  br i1 %cmp132.i, label %if.then134.i, label %sw.bb131.i.for.inc.i_crit_edge

sw.bb131.i.for.inc.i_crit_edge:                   ; preds = %sw.bb131.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then134.i:                                     ; preds = %sw.bb131.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 28, i32 %27
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %arrayidx.i, align 1
  br label %for.inc.i

sw.bb136.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %27)
  %cmp137.i = icmp ult i32 %27, 30
  br i1 %cmp137.i, label %if.then139.i, label %sw.bb136.i.for.inc.i_crit_edge

sw.bb136.i.for.inc.i_crit_edge:                   ; preds = %sw.bb136.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then139.i:                                     ; preds = %sw.bb136.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx140.i = getelementptr %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 29, i32 %27
  %83 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %arrayidx140.i, align 1
  br label %for.inc.i

sw.bb142.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp143.i = icmp eq i32 %20, 16777216
  br i1 %cmp143.i, label %if.then145.i, label %sw.bb142.i.for.inc.i_crit_edge

sw.bb142.i.for.inc.i_crit_edge:                   ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then145.i:                                     ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %mdio_port_num.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %27, ptr %mdio_port_num.i, align 4
  %85 = ptrtoint ptr %mdio_port_mode.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %24, ptr %mdio_port_mode.i, align 8
  br label %for.inc.i

sw.bb147.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp148.i = icmp eq i32 %20, 16777216
  br i1 %cmp148.i, label %if.then150.i, label %sw.bb147.i.for.inc.i_crit_edge

sw.bb147.i.for.inc.i_crit_edge:                   ; preds = %sw.bb147.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then150.i:                                     ; preds = %sw.bb147.i
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %ieee_1588.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %ieee_1588.i, align 1
  br label %for.inc.i

sw.bb152.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %fd.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %fd.i, align 1
  %88 = ptrtoint ptr %fd_filters_guaranteed.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %21, ptr %fd_filters_guaranteed.i, align 4
  %89 = ptrtoint ptr %fd_filters_best_effort.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %24, ptr %fd_filters_best_effort.i, align 8
  br label %for.inc.i

sw.bb153.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %90 = zext i32 %23 to i64
  %91 = zext i32 %20 to i64
  %92 = shl nuw i64 %91, 32
  %93 = or i64 %92, %90
  %94 = call i64 @llvm.bswap.i64(i64 %93) #10
  %95 = ptrtoint ptr %wr_csr_prot.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %wr_csr_prot.i, align 8
  br label %for.inc.i

sw.bb157.i:                                       ; preds = %for.body.i
  %and158.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158.i)
  %tobool159.not.i = icmp eq i32 %and158.i, 0
  br i1 %tobool159.not.i, label %sw.bb157.i.if.end161.i_crit_edge, label %if.then160.i

sw.bb157.i.if.end161.i_crit_edge:                 ; preds = %sw.bb157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.i

if.then160.i:                                     ; preds = %sw.bb157.i
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %sec_rev_disabled.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %sec_rev_disabled.i, align 4
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then160.i, %sw.bb157.i.if.end161.i_crit_edge
  %and162.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162.i)
  %tobool163.not.i = icmp eq i32 %and162.i, 0
  br i1 %tobool163.not.i, label %if.end161.i.for.inc.i_crit_edge, label %if.then164.i

if.end161.i.for.inc.i_crit_edge:                  ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then164.i:                                     ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %update_disabled.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %update_disabled.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then164.i, %if.end161.i.for.inc.i_crit_edge, %sw.bb153.i, %sw.bb152.i, %if.then150.i, %sw.bb147.i.for.inc.i_crit_edge, %if.then145.i, %sw.bb142.i.for.inc.i_crit_edge, %if.then139.i, %sw.bb136.i.for.inc.i_crit_edge, %if.then134.i, %sw.bb131.i.for.inc.i_crit_edge, %if.then129.i, %sw.bb126.i.for.inc.i_crit_edge, %if.then124.i, %sw.bb121.i.for.inc.i_crit_edge, %if.end120.i, %sw.bb99.i, %do.end83.i, %sw.bb75.i.for.inc.i_crit_edge, %sw.bb73.i, %sw.bb72.i, %sw.bb71.i, %if.then69.i, %sw.bb66.i.for.inc.i_crit_edge, %if.then64.i, %sw.bb61.i.for.inc.i_crit_edge, %if.then59.i, %sw.bb56.i.for.inc.i_crit_edge, %sw.bb55.i, %if.then53.i, %sw.bb50.i.for.inc.i_crit_edge, %if.then48.i, %sw.bb45.i.for.inc.i_crit_edge, %if.then43.i, %sw.bb40.i.for.inc.i_crit_edge, %sw.bb39.i, %if.then37.i, %sw.bb34.i.for.inc.i_crit_edge, %sw.bb32.i, %sw.bb31.i, %sw.bb30.i, %if.else27.i, %do.end.i, %if.then15.i.for.inc.i_crit_edge, %sw.bb.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0409.i, 1
  %incdec.ptr.i = getelementptr %struct.i40e_aqc_list_capabilities_element_resp, ptr %cap.0410.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end4.i.for.end.i_crit_edge
  %fcoe166.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 11
  %98 = ptrtoint ptr %fcoe166.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %fcoe166.i, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool167.not.i = icmp eq i8 %99, 0
  br i1 %tobool167.not.i, label %for.end.i.if.end191.i_crit_edge, label %do.body169.i

for.end.i.if.end191.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191.i

do.body169.i:                                     ; preds = %for.end.i
  %debug_mask170.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %100 = ptrtoint ptr %debug_mask170.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %debug_mask170.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool172.not.i = icmp eq i32 %101, 0
  br i1 %tobool172.not.i, label %do.body169.i.if.end191.i_crit_edge, label %do.end176.i

do.body169.i.if.end191.i_crit_edge:               ; preds = %do.body169.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191.i

do.end176.i:                                      ; preds = %do.body169.i
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id179.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %102 = ptrtoint ptr %bus_id179.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %bus_id179.i, align 2
  %conv180.i = zext i16 %103 to i32
  %device182.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %104 = ptrtoint ptr %device182.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %device182.i, align 2
  %conv183.i = zext i16 %105 to i32
  %func185.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %106 = ptrtoint ptr %func185.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %func185.i, align 4
  %conv186.i = zext i16 %107 to i32
  %call187.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %conv180.i, i32 noundef %conv183.i, i32 noundef %conv186.i) #13
  br label %if.end191.i

if.end191.i:                                      ; preds = %do.end176.i, %do.body169.i.if.end191.i_crit_edge, %for.end.i.if.end191.i_crit_edge
  %npar_enable192.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 3
  %108 = ptrtoint ptr %npar_enable192.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %npar_enable192.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool193.not.i = icmp eq i32 %109, 0
  br i1 %tobool193.not.i, label %lor.lhs.false.i, label %if.end191.i.if.then197.i_crit_edge

if.end191.i.if.then197.i_crit_edge:               ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then197.i

lor.lhs.false.i:                                  ; preds = %if.end191.i
  %flex10_enable194.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 13
  %110 = ptrtoint ptr %flex10_enable194.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %flex10_enable194.i, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool195.not.i = icmp eq i8 %111, 0
  br i1 %tobool195.not.i, label %lor.lhs.false.i.if.end199.i_crit_edge, label %lor.lhs.false.i.if.then197.i_crit_edge

lor.lhs.false.i.if.then197.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then197.i

lor.lhs.false.i.if.end199.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199.i

if.then197.i:                                     ; preds = %lor.lhs.false.i.if.then197.i_crit_edge, %if.end191.i.if.then197.i_crit_edge
  %112 = ptrtoint ptr %fcoe166.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %fcoe166.i, align 1
  br label %if.end199.i

if.end199.i:                                      ; preds = %if.then197.i, %lor.lhs.false.i.if.end199.i_crit_edge
  %num_ports.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 21
  %113 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %num_ports.i, align 2
  %114 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i.i, i32 0, i32 6, i32 0, i32 1
  %115 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i.i, i32 0, i32 6, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #10
  %116 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i.i, i16 noundef zeroext -253) #10
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 545327872, ptr %114, align 4
  %call.i.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %i40e_aq_debug_read_register.exit.i, label %i40e_aq_debug_read_register.exit.thread.i

i40e_aq_debug_read_register.exit.thread.i:        ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #10
  br label %if.then207.i

i40e_aq_debug_read_register.exit.i:               ; preds = %if.end199.i
  %118 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %115, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #10
  %120 = and i32 %119, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool206.not.i = icmp eq i32 %120, 0
  br i1 %tobool206.not.i, label %i40e_aq_debug_read_register.exit.i.if.then207.i_crit_edge, label %i40e_aq_debug_read_register.exit.i.if.end210.i_crit_edge

i40e_aq_debug_read_register.exit.i.if.end210.i_crit_edge: ; preds = %i40e_aq_debug_read_register.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210.i

i40e_aq_debug_read_register.exit.i.if.then207.i_crit_edge: ; preds = %i40e_aq_debug_read_register.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then207.i

if.then207.i:                                     ; preds = %i40e_aq_debug_read_register.exit.i.if.then207.i_crit_edge, %i40e_aq_debug_read_register.exit.thread.i
  %121 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %num_ports.i, align 2
  %inc209.i = add i16 %122, 1
  store i16 %inc209.i, ptr %num_ports.i, align 2
  br label %if.end210.i

if.end210.i:                                      ; preds = %if.then207.i, %i40e_aq_debug_read_register.exit.i.if.end210.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #10
  %123 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i.i, i16 noundef zeroext -253) #10
  %124 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 612436736, ptr %114, align 4
  %call.i.1.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %i40e_aq_debug_read_register.exit.1.i, label %i40e_aq_debug_read_register.exit.thread.1.i

i40e_aq_debug_read_register.exit.thread.1.i:      ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #10
  br label %if.then207.1.i

i40e_aq_debug_read_register.exit.1.i:             ; preds = %if.end210.i
  %125 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %115, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #10
  %127 = and i32 %126, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool206.not.1.i = icmp eq i32 %127, 0
  br i1 %tobool206.not.1.i, label %i40e_aq_debug_read_register.exit.1.i.if.then207.1.i_crit_edge, label %i40e_aq_debug_read_register.exit.1.i.if.end210.1.i_crit_edge

i40e_aq_debug_read_register.exit.1.i.if.end210.1.i_crit_edge: ; preds = %i40e_aq_debug_read_register.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210.1.i

i40e_aq_debug_read_register.exit.1.i.if.then207.1.i_crit_edge: ; preds = %i40e_aq_debug_read_register.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then207.1.i

if.then207.1.i:                                   ; preds = %i40e_aq_debug_read_register.exit.1.i.if.then207.1.i_crit_edge, %i40e_aq_debug_read_register.exit.thread.1.i
  %128 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %num_ports.i, align 2
  %inc209.1.i = add i16 %129, 1
  store i16 %inc209.1.i, ptr %num_ports.i, align 2
  br label %if.end210.1.i

if.end210.1.i:                                    ; preds = %if.then207.1.i, %i40e_aq_debug_read_register.exit.1.i.if.end210.1.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #10
  %130 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i.i, i16 noundef zeroext -253) #10
  %131 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 679545600, ptr %114, align 4
  %call.i.2.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool.not.i.2.i = icmp eq i32 %call.i.2.i, 0
  br i1 %tobool.not.i.2.i, label %i40e_aq_debug_read_register.exit.2.i, label %i40e_aq_debug_read_register.exit.thread.2.i

i40e_aq_debug_read_register.exit.thread.2.i:      ; preds = %if.end210.1.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #10
  br label %if.then207.2.i

i40e_aq_debug_read_register.exit.2.i:             ; preds = %if.end210.1.i
  %132 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %115, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #10
  %134 = and i32 %133, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool206.not.2.i = icmp eq i32 %134, 0
  br i1 %tobool206.not.2.i, label %i40e_aq_debug_read_register.exit.2.i.if.then207.2.i_crit_edge, label %i40e_aq_debug_read_register.exit.2.i.if.end210.2.i_crit_edge

i40e_aq_debug_read_register.exit.2.i.if.end210.2.i_crit_edge: ; preds = %i40e_aq_debug_read_register.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210.2.i

i40e_aq_debug_read_register.exit.2.i.if.then207.2.i_crit_edge: ; preds = %i40e_aq_debug_read_register.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then207.2.i

if.then207.2.i:                                   ; preds = %i40e_aq_debug_read_register.exit.2.i.if.then207.2.i_crit_edge, %i40e_aq_debug_read_register.exit.thread.2.i
  %135 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %num_ports.i, align 2
  %inc209.2.i = add i16 %136, 1
  store i16 %inc209.2.i, ptr %num_ports.i, align 2
  br label %if.end210.2.i

if.end210.2.i:                                    ; preds = %if.then207.2.i, %i40e_aq_debug_read_register.exit.2.i.if.end210.2.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #10
  %137 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i.i, i16 noundef zeroext -253) #10
  %138 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 746654464, ptr %114, align 4
  %call.i.3.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %tobool.not.i.3.i = icmp eq i32 %call.i.3.i, 0
  br i1 %tobool.not.i.3.i, label %i40e_aq_debug_read_register.exit.3.i, label %i40e_aq_debug_read_register.exit.thread.3.i

i40e_aq_debug_read_register.exit.thread.3.i:      ; preds = %if.end210.2.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #10
  br label %if.then207.3.i

i40e_aq_debug_read_register.exit.3.i:             ; preds = %if.end210.2.i
  %139 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %115, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #10
  %141 = and i32 %140, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool206.not.3.i = icmp eq i32 %141, 0
  br i1 %tobool206.not.3.i, label %i40e_aq_debug_read_register.exit.3.i.if.then207.3.i_crit_edge, label %i40e_aq_debug_read_register.exit.3.i.if.end210.3.i_crit_edge

i40e_aq_debug_read_register.exit.3.i.if.end210.3.i_crit_edge: ; preds = %i40e_aq_debug_read_register.exit.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210.3.i

i40e_aq_debug_read_register.exit.3.i.if.then207.3.i_crit_edge: ; preds = %i40e_aq_debug_read_register.exit.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then207.3.i

if.then207.3.i:                                   ; preds = %i40e_aq_debug_read_register.exit.3.i.if.then207.3.i_crit_edge, %i40e_aq_debug_read_register.exit.thread.3.i
  %142 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %num_ports.i, align 2
  %inc209.3.i = add i16 %143, 1
  store i16 %inc209.3.i, ptr %num_ports.i, align 2
  br label %if.end210.3.i

if.end210.3.i:                                    ; preds = %if.then207.3.i, %i40e_aq_debug_read_register.exit.3.i.if.end210.3.i_crit_edge
  %mac.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 3
  %144 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %mac.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %145)
  %cmp214.i = icmp eq i32 %145, 3
  br i1 %cmp214.i, label %if.then216.i, label %if.end210.3.i.if.end229.i_crit_edge

if.end210.3.i.if.end229.i_crit_edge:              ; preds = %if.end210.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end229.i

if.then216.i:                                     ; preds = %if.end210.3.i
  %call217.i = call i32 @i40e_acquire_nvm(ptr noundef %hw, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217.i)
  %tobool218.not.i = icmp eq i32 %call217.i, 0
  br i1 %tobool218.not.i, label %if.then219.i, label %if.then216.i.if.end229.i_crit_edge

if.then216.i.if.end229.i_crit_edge:               ; preds = %if.then216.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end229.i

if.then219.i:                                     ; preds = %if.then216.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i403.i) #10
  %146 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i403.i, i32 0, i32 6
  %147 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i403.i, i32 0, i32 6, i32 0, i32 1
  %148 = call ptr @memset(ptr %desc.i403.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i403.i, i16 noundef zeroext 1793) #10
  %149 = ptrtoint ptr %146 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %146, align 4
  %151 = or i8 %150, 1
  store i8 %151, ptr %146, align 4
  %module_pointer5.i.i = getelementptr inbounds %struct.i40e_aqc_nvm_update, ptr %146, i32 0, i32 1
  %152 = ptrtoint ptr %module_pointer5.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 72, ptr %module_pointer5.i.i, align 1
  %153 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 1442840576, ptr %147, align 4
  %length7.i.i = getelementptr inbounds %struct.i40e_aqc_nvm_update, ptr %146, i32 0, i32 2
  %154 = ptrtoint ptr %length7.i.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 512, ptr %length7.i.i, align 2
  %155 = ptrtoint ptr %desc.i403.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %desc.i403.i, align 4
  %spec.select.i.i = or i16 %156, 16
  store i16 %spec.select.i.i, ptr %desc.i403.i, align 4
  %call.i404.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i403.i, ptr noundef nonnull %ocp_cfg_word0.i, i16 noundef zeroext 2, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i403.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i404.i)
  %tobool221.not.i = icmp eq i32 %call.i404.i, 0
  br i1 %tobool221.not.i, label %land.lhs.true.i, label %if.then219.i.if.end227.i_crit_edge

if.then219.i.if.end227.i_crit_edge:               ; preds = %if.then219.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end227.i

land.lhs.true.i:                                  ; preds = %if.then219.i
  %157 = ptrtoint ptr %ocp_cfg_word0.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %ocp_cfg_word0.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %158)
  %tobool224.not.i = icmp sgt i16 %158, -1
  br i1 %tobool224.not.i, label %land.lhs.true.i.if.end227.i_crit_edge, label %if.then225.i

land.lhs.true.i.if.end227.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end227.i

if.then225.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 4, ptr %num_ports.i, align 2
  br label %if.end227.i

if.end227.i:                                      ; preds = %if.then225.i, %land.lhs.true.i.if.end227.i_crit_edge, %if.then219.i.if.end227.i_crit_edge
  call void @i40e_release_nvm(ptr noundef %hw) #10
  br label %if.end229.i

if.end229.i:                                      ; preds = %if.end227.i, %if.then216.i.if.end229.i_crit_edge, %if.end210.3.i.if.end229.i_crit_edge
  %valid_functions230.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 5
  %160 = ptrtoint ptr %valid_functions230.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %valid_functions230.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool231.not412.i = icmp eq i32 %161, 0
  br i1 %tobool231.not412.i, label %if.end229.i.while.end.i_crit_edge, label %if.end229.i.while.body.i_crit_edge

if.end229.i.while.body.i_crit_edge:               ; preds = %if.end229.i
  br label %while.body.i

if.end229.i.while.end.i_crit_edge:                ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end229.i.while.body.i_crit_edge
  %valid_functions.0414.i = phi i32 [ %shr.i, %while.body.i.while.body.i_crit_edge ], [ %161, %if.end229.i.while.body.i_crit_edge ]
  %num_functions.0413.i = phi i32 [ %spec.select.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end229.i.while.body.i_crit_edge ]
  %and232.i = and i32 %valid_functions.0414.i, 1
  %spec.select.i = add i32 %and232.i, %num_functions.0413.i
  %shr.i = lshr i32 %valid_functions.0414.i, 1
  %tobool231.not.i = icmp ult i32 %valid_functions.0414.i, 2
  br i1 %tobool231.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end229.i.while.end.i_crit_edge
  %num_functions.0.lcssa.i = phi i32 [ 0, %if.end229.i.while.end.i_crit_edge ], [ %spec.select.i, %while.body.i.while.end.i_crit_edge ]
  %162 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %num_ports.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %cmp239.not.i = icmp eq i16 %163, 0
  br i1 %cmp239.not.i, label %while.end.i.if.end251.i_crit_edge, label %if.then241.i

while.end.i.if.end251.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end251.i

if.then241.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pf_id.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 17
  %164 = ptrtoint ptr %pf_id.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %pf_id.i, align 2
  %conv242.i = zext i8 %165 to i16
  %div.i = udiv i16 %conv242.i, %163
  %add245.i = add nuw nsw i16 %div.i, 1
  %partition_id.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 19
  %166 = ptrtoint ptr %partition_id.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %add245.i, ptr %partition_id.i, align 2
  %conv248.i = zext i16 %163 to i32
  %div249.i = udiv i32 %num_functions.0.lcssa.i, %conv248.i
  %conv250.i = trunc i32 %div249.i to i16
  %num_partitions.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 20
  %167 = ptrtoint ptr %num_partitions.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv250.i, ptr %num_partitions.i, align 8
  br label %if.end251.i

if.end251.i:                                      ; preds = %if.then241.i, %while.end.i.if.end251.i_crit_edge
  %rx_buf_chain_len.i = getelementptr inbounds %struct.i40e_hw_capabilities, ptr %p.0.i, i32 0, i32 44
  %168 = ptrtoint ptr %rx_buf_chain_len.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 5, ptr %rx_buf_chain_len.i, align 4
  br label %i40e_parse_discover_capabilities.exit

i40e_parse_discover_capabilities.exit:            ; preds = %if.end251.i, %if.end14.i40e_parse_discover_capabilities.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ocp_cfg_word0.i) #10
  br label %exit

exit:                                             ; preds = %i40e_parse_discover_capabilities.exit, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ %call, %if.end.exit_crit_edge ], [ 0, %i40e_parse_discover_capabilities.exit ], [ -5, %entry.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_update_nvm(ptr noundef %hw, i8 noundef zeroext %module_pointer, i32 noundef %offset, i16 noundef zeroext %length, ptr noundef %data, i1 noundef zeroext %last_command, i8 noundef zeroext %preservation_flags, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %offset)
  %tobool.not = icmp ult i32 %offset, 16777216
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %tobool.not, label %if.end, label %entry.i40e_aq_update_nvm_exit_crit_edge

entry.i40e_aq_update_nvm_exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_aq_update_nvm_exit

if.end:                                           ; preds = %entry
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1795) #10
  br i1 %last_command, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %0, align 4
  %5 = or i8 %4, 1
  store i8 %5, ptr %0, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %mac = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then6, label %if.end4.if.end25_crit_edge

if.end4.if.end25_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then6:                                         ; preds = %if.end4
  %8 = zext i8 %preservation_flags to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.183)
  switch i8 %preservation_flags, label %if.then6.if.end25_crit_edge [
    i8 1, label %if.then6.if.end25.sink.split_crit_edge
    i8 2, label %if.then18
  ]

if.then6.if.end25.sink.split_crit_edge:           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.sink.split

if.then6.if.end25_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then18:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.then18, %if.then6.if.end25.sink.split_crit_edge
  %.sink52 = phi i8 [ 2, %if.then18 ], [ 6, %if.then6.if.end25.sink.split_crit_edge ]
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %0, align 4
  %11 = or i8 %10, %.sink52
  store i8 %11, ptr %0, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %if.then6.if.end25_crit_edge, %if.end4.if.end25_crit_edge
  %module_pointer26 = getelementptr inbounds %struct.i40e_aqc_nvm_update, ptr %0, i32 0, i32 1
  %12 = ptrtoint ptr %module_pointer26 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %module_pointer, ptr %module_pointer26, align 1
  %13 = call i32 @llvm.bswap.i32(i32 %offset)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %1, align 4
  %15 = call i16 @llvm.bswap.i16(i16 %length)
  %length28 = getelementptr inbounds %struct.i40e_aqc_nvm_update, ptr %0, i32 0, i32 2
  %16 = ptrtoint ptr %length28 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %length28, align 2
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %length)
  %cmp33 = icmp ugt i16 %length, 512
  %spec.select.v = select i1 %cmp33, i16 22, i16 20
  %spec.select = or i16 %18, %spec.select.v
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %spec.select, ptr %desc, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %data, i16 noundef zeroext %length, ptr noundef %cmd_details) #10
  br label %i40e_aq_update_nvm_exit

i40e_aq_update_nvm_exit:                          ; preds = %if.end25, %entry.i40e_aq_update_nvm_exit_crit_edge
  %status.0 = phi i32 [ %call, %if.end25 ], [ -5, %entry.i40e_aq_update_nvm_exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_rearrange_nvm(ptr noundef %hw, i8 noundef zeroext %rearrange_nvm, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1795) #10
  %1 = and i8 %rearrange_nvm, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.i40e_aq_rearrange_nvm_exit_crit_edge, label %if.end

entry.i40e_aq_rearrange_nvm_exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_aq_rearrange_nvm_exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 4
  %or7 = or i8 %4, %1
  store i8 %or7, ptr %2, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  br label %i40e_aq_rearrange_nvm_exit

i40e_aq_rearrange_nvm_exit:                       ; preds = %if.end, %entry.i40e_aq_rearrange_nvm_exit_crit_edge
  %status.0 = phi i32 [ %call, %if.end ], [ -5, %entry.i40e_aq_rearrange_nvm_exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_get_lldp_mib(ptr noundef %hw, i8 noundef zeroext %bridge_type, i8 noundef zeroext %mib_type, ptr noundef %buff, i16 noundef zeroext %buff_size, ptr noundef writeonly %local_len, ptr noundef writeonly %remote_len, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %buff_size)
  %cmp = icmp eq i16 %buff_size, 0
  %tobool.not = icmp eq ptr %buff, null
  %or.cond = or i1 %tobool.not, %cmp
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 2
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2560) #10
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %desc, align 4
  %6 = and i8 %mib_type, 3
  %shl = shl i8 %bridge_type, 2
  %and8 = and i8 %shl, 12
  %or11 = or i8 %and8, %6
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or11, ptr %0, align 4
  %8 = call i16 @llvm.bswap.i16(i16 %buff_size)
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %buff_size)
  %cmp18 = icmp ugt i16 %buff_size, 512
  %spec.select.v = select i1 %cmp18, i16 18, i16 16
  %spec.select = or i16 %5, %spec.select.v
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %spec.select, ptr %desc, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef nonnull %buff, i16 noundef zeroext %buff_size, ptr noundef %cmd_details) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %if.then27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %if.end
  %cmp28.not = icmp eq ptr %local_len, null
  br i1 %cmp28.not, label %if.then27.if.end32_crit_edge, label %if.then30

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %local_len31 = getelementptr inbounds %struct.i40e_aqc_lldp_get_mib, ptr %0, i32 0, i32 2
  %11 = ptrtoint ptr %local_len31 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %local_len31, align 2
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %local_len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %local_len, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then27.if.end32_crit_edge
  %cmp33.not = icmp eq ptr %remote_len, null
  br i1 %cmp33.not, label %if.end32.cleanup_crit_edge, label %if.then35

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 4
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %18 = ptrtoint ptr %remote_len to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %remote_len, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end32.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ 0, %if.then35 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_lldp_mib(ptr noundef %hw, i8 noundef zeroext %mib_type, ptr noundef %buff, i16 noundef zeroext %buff_size, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %buff_size)
  %cmp = icmp eq i16 %buff_size, 0
  %tobool.not = icmp eq ptr %buff, null
  %or.cond = or i1 %tobool.not, %cmp
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 3
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %3 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %4 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 2
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2568) #10
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %buff_size)
  %cmp5 = icmp ugt i16 %buff_size, 512
  %spec.select.v = select i1 %cmp5, i16 22, i16 20
  %spec.select = or i16 %6, %spec.select.v
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %spec.select, ptr %desc, align 4
  %8 = call i16 @llvm.bswap.i16(i16 %buff_size)
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %4, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %mib_type, ptr %3, align 4
  %length = getelementptr inbounds %struct.i40e_aqc_lldp_set_local_mib, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %8, ptr %length, align 2
  %12 = ptrtoint ptr %buff to i32
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %2, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %12)
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %1, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef nonnull %buff, i16 noundef zeroext %buff_size, ptr noundef %cmd_details) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_cfg_lldp_mib_change_event(ptr noundef %hw, i1 noundef zeroext %enable_update, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2561) #10
  br i1 %enable_update, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %4 = or i8 %3, 1
  store i8 %4, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_restore_lldp(ptr noundef %hw, ptr noundef writeonly %setting, i1 noundef zeroext %restore, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %flags = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags, align 8
  %and = and i64 %3, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %4 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bus_id, align 2
  %conv = zext i16 %7 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %conv6 = zext i16 %9 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %func, align 4
  %conv8 = zext i16 %11 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv8) #13
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2570) #10
  br i1 %restore, label %if.then13, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %0, align 4
  %14 = or i8 %13, 1
  store i8 %14, ptr %0, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  %call17 = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  %tobool18.not = icmp eq ptr %setting, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.then19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %0, align 4
  %17 = and i8 %16, 1
  %18 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %setting, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end16.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end ], [ -11, %do.body.cleanup_crit_edge ], [ %call17, %if.then19 ], [ %call17, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_stop_lldp(ptr noundef %hw, i1 noundef zeroext %shutdown_agent, i1 noundef zeroext %persist, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2565) #10
  br i1 %shutdown_agent, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %0, align 4
  %4 = or i8 %3, 1
  store i8 %4, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %persist, label %if.then4, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then4:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %flags, align 8
  %and = and i64 %6, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool5.not = icmp eq i64 %and, 0
  br i1 %tobool5.not, label %do.body, label %if.then6

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %0, align 4
  %9 = or i8 %8, 2
  store i8 %9, ptr %0, align 4
  br label %if.end24

do.body:                                          ; preds = %if.then4
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %10 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  br i1 %tobool12.not, label %do.body.if.end24_crit_edge, label %do.end

do.body.if.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bus_id, align 2
  %conv15 = zext i16 %13 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device, align 2
  %conv17 = zext i16 %15 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %func, align 4
  %conv19 = zext i16 %17 to i32
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %conv19) #13
  br label %if.end24

if.end24:                                         ; preds = %do.end, %do.body.if.end24_crit_edge, %if.then6, %if.end.if.end24_crit_edge
  %call25 = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_start_lldp(ptr noundef %hw, i1 noundef zeroext %persist, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2566) #10
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %0, align 4
  br i1 %persist, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %flags, align 8
  %and = and i64 %4, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %do.body, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %0, align 4
  br label %if.end17

do.body:                                          ; preds = %if.then
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %6 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.body.if.end17_crit_edge, label %do.end

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bus_id, align 2
  %conv9 = zext i16 %9 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device, align 2
  %conv11 = zext i16 %11 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %func, align 4
  %conv13 = zext i16 %13 to i32
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %conv13) #13
  br label %if.end17

if.end17:                                         ; preds = %do.end, %do.body.if.end17_crit_edge, %if.then2, %entry.if.end17_crit_edge
  %call18 = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_dcb_parameters(ptr noundef %hw, i1 noundef zeroext %dcb_enable, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %flags = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags, align 8
  %and = and i64 %3, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 771) #10
  br i1 %dcb_enable, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %valid_flags = getelementptr inbounds %struct.i40e_aqc_set_dcb_parameters, ptr %0, i32 0, i32 1
  %4 = ptrtoint ptr %valid_flags to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %valid_flags, align 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %0, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -11, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_get_cee_dcb_config(ptr noundef %hw, ptr noundef %buff, i16 noundef zeroext %buff_size, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %buff_size)
  %cmp = icmp eq i16 %buff_size, 0
  %tobool.not = icmp eq ptr %buff, null
  %or.cond = or i1 %tobool.not, %cmp
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2567) #10
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %desc, align 4
  %3 = or i16 %2, 16
  store i16 %3, ptr %desc, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef nonnull %buff, i16 noundef zeroext %buff_size, ptr noundef %cmd_details) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_add_udp_tunnel(ptr noundef %hw, i16 noundef zeroext %udp_port, i8 noundef zeroext %protocol_index, ptr noundef writeonly %filter_index, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2816) #10
  %2 = call i16 @llvm.bswap.i16(i16 %udp_port)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 4
  %protocol_type = getelementptr inbounds %struct.i40e_aqc_add_udp_tunnel, ptr %0, i32 0, i32 2
  %4 = ptrtoint ptr %protocol_type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %protocol_index, ptr %protocol_type, align 1
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %tobool3.not = icmp eq ptr %filter_index, null
  %or.cond = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %index = getelementptr inbounds %struct.i40e_aqc_del_udp_tunnel_completion, ptr %0, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index, align 2
  %7 = ptrtoint ptr %filter_index to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %filter_index, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_del_udp_tunnel(ptr noundef %hw, i8 noundef zeroext %index, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2817) #10
  %index1 = getelementptr inbounds %struct.i40e_aqc_remove_udp_tunnel, ptr %0, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %index, ptr %index1, align 2
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_delete_element(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %seid)
  %cmp = icmp eq i16 %seid, 0
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 579) #10
  %2 = call i16 @llvm.bswap.i16(i16 %seid)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %1, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_dcb_updated(ptr noundef %hw, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 770) #10
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_config_vsi_bw_limit(ptr noundef %hw, i16 noundef zeroext %seid, i16 noundef zeroext %credit, i8 noundef zeroext %max_credit, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %3 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1024) #10
  %4 = call i16 @llvm.bswap.i16(i16 %seid)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %0, align 4
  %6 = call i16 @llvm.bswap.i16(i16 %credit)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %max_credit, ptr %2, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_config_vsi_tc_bw(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %bw_data, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1031) #10
  %3 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %desc.i, align 4
  %spec.select.i = or i16 %4, 20
  store i16 %spec.select.i, ptr %desc.i, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 8192, ptr %0, align 4
  %6 = call i16 @llvm.bswap.i16(i16 %seid) #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %1, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %bw_data, i16 noundef zeroext 32, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_config_switch_comp_ets(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %ets_data, i32 noundef %opcode, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %switch.tableidx = add i32 %opcode, -1030
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 21
  br i1 %3, label %switch.hole_check, label %entry.i40e_aq_tx_sched_cmd.exit_crit_edge

entry.i40e_aq_tx_sched_cmd.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_aq_tx_sched_cmd.exit

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 2088983, %switch.tableidx
  %4 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %switch.lobit.not = icmp eq i32 %4, 0
  br i1 %switch.lobit.not, label %switch.hole_check.i40e_aq_tx_sched_cmd.exit_crit_edge, label %switch.lookup

switch.hole_check.i40e_aq_tx_sched_cmd.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_aq_tx_sched_cmd.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [21 x i16], ptr @switch.table.i40e_aq_config_switch_comp_ets, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %5)
  %switch.load = load i16, ptr %switch.gep, align 2
  %conv.i = trunc i32 %opcode to i16
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext %conv.i) #10
  %6 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %desc.i, align 4
  %spec.select.i = or i16 %7, %switch.load
  store i16 %spec.select.i, ptr %desc.i, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -32768, ptr %0, align 4
  %9 = call i16 @llvm.bswap.i16(i16 %seid) #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %1, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %ets_data, i16 noundef zeroext 128, ptr noundef %cmd_details) #10
  br label %i40e_aq_tx_sched_cmd.exit

i40e_aq_tx_sched_cmd.exit:                        ; preds = %switch.lookup, %switch.hole_check.i40e_aq_tx_sched_cmd.exit_crit_edge, %entry.i40e_aq_tx_sched_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %switch.lookup ], [ -5, %entry.i40e_aq_tx_sched_cmd.exit_crit_edge ], [ -5, %switch.hole_check.i40e_aq_tx_sched_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_config_switch_comp_bw_config(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %bw_data, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1047) #10
  %3 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %desc.i, align 4
  %spec.select.i = or i16 %4, 20
  store i16 %spec.select.i, ptr %desc.i, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 8192, ptr %0, align 4
  %6 = call i16 @llvm.bswap.i16(i16 %seid) #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %1, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %bw_data, i16 noundef zeroext 32, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_query_vsi_bw_config(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %bw_data, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1032) #10
  %3 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %desc.i, align 4
  %spec.select.i = or i16 %4, 16
  store i16 %spec.select.i, ptr %desc.i, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 16384, ptr %0, align 4
  %6 = call i16 @llvm.bswap.i16(i16 %seid) #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %1, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %bw_data, i16 noundef zeroext 64, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_query_vsi_ets_sla_config(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %bw_data, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1034) #10
  %3 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %desc.i, align 4
  %spec.select.i = or i16 %4, 16
  store i16 %spec.select.i, ptr %desc.i, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 8192, ptr %0, align 4
  %6 = call i16 @llvm.bswap.i16(i16 %seid) #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %1, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %bw_data, i16 noundef zeroext 32, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_query_switch_comp_ets_config(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %bw_data, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1048) #10
  %3 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %desc.i, align 4
  %spec.select.i = or i16 %4, 16
  store i16 %spec.select.i, ptr %desc.i, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 16384, ptr %0, align 4
  %6 = call i16 @llvm.bswap.i16(i16 %seid) #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %1, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %bw_data, i16 noundef zeroext 64, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_query_port_ets_config(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %bw_data, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1049) #10
  %3 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %desc.i, align 4
  %spec.select.i = or i16 %4, 16
  store i16 %spec.select.i, ptr %desc.i, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 17408, ptr %0, align 4
  %6 = call i16 @llvm.bswap.i16(i16 %seid) #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %1, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %bw_data, i16 noundef zeroext 68, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_query_switch_comp_bw_config(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %bw_data, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1050) #10
  %3 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %desc.i, align 4
  %spec.select.i = or i16 %4, 16
  store i16 %spec.select.i, ptr %desc.i, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 8192, ptr %0, align 4
  %6 = call i16 @llvm.bswap.i16(i16 %seid) #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %1, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %bw_data, i16 noundef zeroext 32, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_set_filter_control(ptr noundef %hw, ptr noundef readonly %settings) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %settings, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fcoe_filt_num.i = getelementptr inbounds %struct.i40e_filter_control_settings, ptr %settings, i32 0, i32 2
  %0 = ptrtoint ptr %fcoe_filt_num.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fcoe_filt_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %switch.i = icmp ult i32 %1, 6
  br i1 %switch.i, label %sw.bb.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  %shl.i = shl nuw nsw i32 1024, %1
  %fcoe_cntx_num.i = getelementptr inbounds %struct.i40e_filter_control_settings, ptr %settings, i32 0, i32 3
  %2 = ptrtoint ptr %fcoe_cntx_num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fcoe_cntx_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch24.i = icmp ult i32 %3, 4
  br i1 %switch24.i, label %sw.bb2.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb.i
  %shl4.i = shl nuw nsw i32 512, %3
  %4 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %settings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %5)
  %switch25.i = icmp ult i32 %5, 11
  br i1 %switch25.i, label %sw.epilog9.i, label %sw.bb2.i.cleanup_crit_edge

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog9.i:                                     ; preds = %sw.bb2.i
  %pe_cntx_num.i = getelementptr inbounds %struct.i40e_filter_control_settings, ptr %settings, i32 0, i32 1
  %6 = ptrtoint ptr %pe_cntx_num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pe_cntx_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %switch26.i = icmp ult i32 %7, 10
  br i1 %switch26.i, label %sw.epilog12.i, label %sw.epilog9.i.cleanup_crit_edge

sw.epilog9.i.cleanup_crit_edge:                   ; preds = %sw.epilog9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog12.i:                                    ; preds = %sw.epilog9.i
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 794832
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !397
  %11 = and i32 %10, -65536
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  %add.i = add nuw nsw i32 %shl4.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %12)
  %cmp.i = icmp ugt i32 %add.i, %12
  br i1 %cmp.i, label %sw.epilog12.i.cleanup_crit_edge, label %if.end3

sw.epilog12.i.cleanup_crit_edge:                  ; preds = %sw.epilog12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %sw.epilog12.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @i40e_read_rx_ctl(ptr noundef %hw, i32 noundef 1837760)
  %and = and i32 %call4, -131072
  %13 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %settings, align 4
  %and5 = and i32 %14, 31
  %or = or i32 %and5, %and
  %15 = ptrtoint ptr %pe_cntx_num.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pe_cntx_num.i, align 4
  %shl7 = shl i32 %16, 5
  %and8 = and i32 %shl7, 992
  %or9 = or i32 %or, %and8
  %17 = ptrtoint ptr %fcoe_filt_num.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fcoe_filt_num.i, align 4
  %shl11 = shl i32 %18, 10
  %and12 = and i32 %shl11, 15360
  %or13 = or i32 %or9, %and12
  %19 = ptrtoint ptr %fcoe_cntx_num.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fcoe_cntx_num.i, align 4
  %shl15 = shl i32 %20, 14
  %and16 = and i32 %shl15, 49152
  %or17 = or i32 %or13, %and16
  %hash_lut_size19 = getelementptr inbounds %struct.i40e_filter_control_settings, ptr %settings, i32 0, i32 4
  %21 = ptrtoint ptr %hash_lut_size19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hash_lut_size19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp = icmp eq i32 %22, 1
  %spec.select = select i1 %cmp, i32 65536, i32 0
  %or24 = or i32 %or17, %spec.select
  %enable_fdir = getelementptr inbounds %struct.i40e_filter_control_settings, ptr %settings, i32 0, i32 5
  %23 = ptrtoint ptr %enable_fdir to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %enable_fdir, align 4, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool25.not = icmp eq i8 %24, 0
  %or27 = or i32 %or24, 131072
  %val.0 = select i1 %tobool25.not, i32 %or24, i32 %or27
  %enable_ethtype = getelementptr inbounds %struct.i40e_filter_control_settings, ptr %settings, i32 0, i32 6
  %25 = ptrtoint ptr %enable_ethtype to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %enable_ethtype, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool29.not = icmp eq i8 %26, 0
  %or31 = or i32 %val.0, 262144
  %val.1 = select i1 %tobool29.not, i32 %val.0, i32 %or31
  %enable_macvlan = getelementptr inbounds %struct.i40e_filter_control_settings, ptr %settings, i32 0, i32 7
  %27 = ptrtoint ptr %enable_macvlan to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %enable_macvlan, align 2, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool33.not = icmp eq i8 %28, 0
  %or35 = or i32 %val.1, 524288
  %val.2 = select i1 %tobool33.not, i32 %val.1, i32 %or35
  tail call void @i40e_write_rx_ctl(ptr noundef %hw, i32 noundef 1837760, i32 noundef %val.2)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %sw.epilog12.i.cleanup_crit_edge, %sw.epilog9.i.cleanup_crit_edge, %sw.bb2.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %sw.epilog9.i.cleanup_crit_edge ], [ -5, %sw.bb2.i.cleanup_crit_edge ], [ -5, %sw.bb.i.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -26, %sw.epilog12.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_read_rx_ctl(ptr noundef %hw, i32 noundef %reg_addr) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %api_maj_ver = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 10
  %0 = ptrtoint ptr %api_maj_ver to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %api_maj_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp = icmp eq i16 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

land.lhs.true:                                    ; preds = %entry
  %api_min_ver = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 11
  %2 = ptrtoint ptr %api_min_ver to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %api_min_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %3)
  %cmp4 = icmp ult i16 %3, 5
  br i1 %cmp4, label %land.lhs.true.if.then18_crit_edge, label %land.lhs.true.lor.end_crit_edge

land.lhs.true.lor.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

land.lhs.true.if.then18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

lor.end:                                          ; preds = %land.lhs.true.lor.end_crit_edge, %entry.lor.end_crit_edge
  %mac = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp6 = icmp eq i32 %5, 3
  br i1 %cmp6, label %lor.end.if.then18_crit_edge, label %do_retry.preheader

lor.end.if.then18_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

do_retry.preheader:                               ; preds = %lor.end
  %6 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %7 = call i32 @llvm.bswap.i32(i32 %reg_addr) #10
  %8 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 3
  %asq_last_status = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  br label %do_retry

do_retry:                                         ; preds = %if.then13, %do_retry.preheader
  %retry.0 = phi i32 [ %dec, %if.then13 ], [ 5, %do_retry.preheader ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %9 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 518) #10
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %6, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %i40e_aq_rx_ctl_read_register.exit.thread, label %i40e_aq_rx_ctl_read_register.exit

i40e_aq_rx_ctl_read_register.exit:                ; preds = %do_retry
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  %11 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asq_last_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp9 = icmp ne i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0)
  %tobool12.not = icmp eq i32 %retry.0, 0
  %or.cond = select i1 %cmp9, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %i40e_aq_rx_ctl_read_register.exit.if.then18_crit_edge, label %i40e_aq_rx_ctl_read_register.exit.if.then13_crit_edge

i40e_aq_rx_ctl_read_register.exit.if.then13_crit_edge: ; preds = %i40e_aq_rx_ctl_read_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

i40e_aq_rx_ctl_read_register.exit.if.then18_crit_edge: ; preds = %i40e_aq_rx_ctl_read_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

i40e_aq_rx_ctl_read_register.exit.thread:         ; preds = %do_retry
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  %15 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %asq_last_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %cmp936 = icmp ne i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0)
  %tobool12.not37 = icmp eq i32 %retry.0, 0
  %or.cond38 = select i1 %cmp936, i1 true, i1 %tobool12.not37
  br i1 %or.cond38, label %if.end21.loopexit, label %i40e_aq_rx_ctl_read_register.exit.thread.if.then13_crit_edge

i40e_aq_rx_ctl_read_register.exit.thread.if.then13_crit_edge: ; preds = %i40e_aq_rx_ctl_read_register.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then13:                                        ; preds = %i40e_aq_rx_ctl_read_register.exit.thread.if.then13_crit_edge, %i40e_aq_rx_ctl_read_register.exit.if.then13_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %dec = add nsw i32 %retry.0, -1
  br label %do_retry

if.then18:                                        ; preds = %i40e_aq_rx_ctl_read_register.exit.if.then18_crit_edge, %lor.end.if.then18_crit_edge, %land.lhs.true.if.then18_crit_edge
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %18, i32 %reg_addr
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !360
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !398
  br label %if.end21

if.end21.loopexit:                                ; preds = %i40e_aq_rx_ctl_read_register.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  %21 = call i32 @llvm.bswap.i32(i32 %14) #10
  br label %if.end21

if.end21:                                         ; preds = %if.end21.loopexit, %if.then18
  %val.3 = phi i32 [ %20, %if.then18 ], [ %21, %if.end21.loopexit ]
  ret i32 %val.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_write_rx_ctl(ptr noundef %hw, i32 noundef %reg_addr, i32 noundef %reg_val) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %api_maj_ver = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 10
  %0 = ptrtoint ptr %api_maj_ver to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %api_maj_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp = icmp eq i16 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

land.lhs.true:                                    ; preds = %entry
  %api_min_ver = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 11
  %2 = ptrtoint ptr %api_min_ver to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %api_min_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %3)
  %cmp4 = icmp ult i16 %3, 5
  br i1 %cmp4, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.lor.end_crit_edge

land.lhs.true.lor.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.end:                                          ; preds = %land.lhs.true.lor.end_crit_edge, %entry.lor.end_crit_edge
  %mac = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp6 = icmp eq i32 %5, 3
  br i1 %cmp6, label %lor.end.do.body_crit_edge, label %do_retry.preheader

lor.end.do.body_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do_retry.preheader:                               ; preds = %lor.end
  %6 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %7 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 3
  %8 = call i32 @llvm.bswap.i32(i32 %reg_addr) #10
  %9 = call i32 @llvm.bswap.i32(i32 %reg_val) #10
  %asq_last_status = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 23, i32 14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %10 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 519) #10
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %6, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %7, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  %13 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %asq_last_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %cmp9.not = icmp eq i32 %14, 8
  br i1 %cmp9.not, label %if.then13, label %do_retry.preheader.if.end14_crit_edge

do_retry.preheader.if.end14_crit_edge:            ; preds = %do_retry.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %do_retry.preheader
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %15 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 519) #10
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %8, ptr %6, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %9, ptr %7, align 4
  %call.i.1 = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  %18 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %asq_last_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp9.1.not = icmp eq i32 %19, 8
  br i1 %cmp9.1.not, label %if.then13.1, label %if.then13.if.end14_crit_edge

if.then13.if.end14_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13.1:                                      ; preds = %if.then13
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %20 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 519) #10
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %8, ptr %6, align 4
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %9, ptr %7, align 4
  %call.i.2 = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  %23 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %asq_last_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %cmp9.2.not = icmp eq i32 %24, 8
  br i1 %cmp9.2.not, label %if.then13.2, label %if.then13.1.if.end14_crit_edge

if.then13.1.if.end14_crit_edge:                   ; preds = %if.then13.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13.2:                                      ; preds = %if.then13.1
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %25 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 519) #10
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %8, ptr %6, align 4
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %9, ptr %7, align 4
  %call.i.3 = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  %28 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %asq_last_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %29)
  %cmp9.3.not = icmp eq i32 %29, 8
  br i1 %cmp9.3.not, label %if.then13.3, label %if.then13.2.if.end14_crit_edge

if.then13.2.if.end14_crit_edge:                   ; preds = %if.then13.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13.3:                                      ; preds = %if.then13.2
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %30 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 519) #10
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %8, ptr %6, align 4
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %9, ptr %7, align 4
  %call.i.4 = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  %33 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %asq_last_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %34)
  %cmp9.4.not = icmp eq i32 %34, 8
  br i1 %cmp9.4.not, label %if.then13.4, label %if.then13.3.if.end14_crit_edge

if.then13.3.if.end14_crit_edge:                   ; preds = %if.then13.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13.4:                                      ; preds = %if.then13.3
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %35 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 519) #10
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %8, ptr %6, align 4
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %9, ptr %7, align 4
  %call.i.5 = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then13.4, %if.then13.3.if.end14_crit_edge, %if.then13.2.if.end14_crit_edge, %if.then13.1.if.end14_crit_edge, %if.then13.if.end14_crit_edge, %do_retry.preheader.if.end14_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %do_retry.preheader.if.end14_crit_edge ], [ %call.i.1, %if.then13.if.end14_crit_edge ], [ %call.i.2, %if.then13.1.if.end14_crit_edge ], [ %call.i.3, %if.then13.2.if.end14_crit_edge ], [ %call.i.4, %if.then13.3.if.end14_crit_edge ], [ %call.i.5, %if.then13.4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa)
  %tobool15.not.not = icmp eq i32 %call.i.lcssa, 0
  br i1 %tobool15.not.not, label %if.end14.if.end19_crit_edge, label %if.end14.do.body_crit_edge

if.end14.do.body_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.body:                                          ; preds = %if.end14.do.body_crit_edge, %lor.end.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  call void @arm_heavy_mb() #10
  %38 = call i32 @llvm.bswap.i32(i32 %reg_val)
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %40, i32 %reg_addr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %38) #10, !srcloc !367
  br label %if.end19

if.end19:                                         ; preds = %do.body, %if.end14.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_add_rem_control_packet_filter(ptr noundef %hw, ptr noundef readonly %mac_addr, i16 noundef zeroext %ethtype, i16 noundef zeroext %flags, i16 noundef zeroext %vsi_seid, i16 noundef zeroext %queue, i1 noundef zeroext %is_add, ptr noundef writeonly %stats, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %3 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vsi_seid)
  %cmp = icmp eq i16 %vsi_seid, 0
  %4 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %is_add, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 602) #10
  %5 = call i16 @llvm.bswap.i16(i16 %queue)
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %3, align 4
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 603) #10
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %tobool6.not = icmp eq ptr %mac_addr, null
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mac_addr, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i, align 2
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %1, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %13 = call i16 @llvm.bswap.i16(i16 %ethtype)
  %etype = getelementptr inbounds %struct.i40e_aqc_add_remove_control_packet_filter, ptr %0, i32 0, i32 1
  %14 = ptrtoint ptr %etype to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %etype, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %flags)
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %2, align 4
  %17 = call i16 @llvm.bswap.i16(i16 %vsi_seid)
  %seid = getelementptr inbounds %struct.i40e_aqc_add_remove_control_packet_filter, ptr %0, i32 0, i32 3
  %18 = ptrtoint ptr %seid to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %seid, align 2
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp ne i32 %call, 0
  %tobool11.not = icmp eq ptr %stats, null
  %or.cond = or i1 %tobool11.not, %tobool10.not
  br i1 %or.cond, label %if.end8.cleanup_crit_edge, label %if.then12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %0, align 4
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %22 = ptrtoint ptr %stats to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %stats, align 2
  %etype_used = getelementptr inbounds %struct.i40e_aqc_add_remove_control_packet_filter_completion, ptr %0, i32 0, i32 1
  %23 = ptrtoint ptr %etype_used to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %etype_used, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %etype_used14 = getelementptr inbounds %struct.i40e_control_filter_stats, ptr %stats, i32 0, i32 1
  %26 = ptrtoint ptr %etype_used14 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %etype_used14, align 2
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %1, align 4
  %29 = call i16 @llvm.bswap.i16(i16 %28)
  %mac_etype_free15 = getelementptr inbounds %struct.i40e_control_filter_stats, ptr %stats, i32 0, i32 2
  %30 = ptrtoint ptr %mac_etype_free15 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %mac_etype_free15, align 2
  %31 = ptrtoint ptr %etype to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %etype, align 2
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %etype_free16 = getelementptr inbounds %struct.i40e_control_filter_stats, ptr %stats, i32 0, i32 3
  %34 = ptrtoint ptr %etype_free16 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %etype_free16, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %if.then12 ], [ %call, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_add_filter_to_drop_tx_flow_control_frames(ptr noundef %hw, i16 noundef zeroext %seid) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %seid)
  %cmp.i = icmp eq i16 %seid, 0
  %0 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  br i1 %cmp.i, label %i40e_aq_add_rem_control_packet_filter.exit.thread, label %i40e_aq_add_rem_control_packet_filter.exit

i40e_aq_add_rem_control_packet_filter.exit.thread: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  br label %do.body1

i40e_aq_add_rem_control_packet_filter.exit:       ; preds = %entry
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 3
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 2
  %3 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 602) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %1, align 4
  %etype.i = getelementptr inbounds %struct.i40e_aqc_add_remove_control_packet_filter, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %etype.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2184, ptr %etype.i, align 2
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2816, ptr %2, align 4
  %7 = call i16 @llvm.bswap.i16(i16 %seid) #10
  %seid.i = getelementptr inbounds %struct.i40e_aqc_add_remove_control_packet_filter, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %seid.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %seid.i, align 2
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %i40e_aq_add_rem_control_packet_filter.exit.if.end9_crit_edge, label %i40e_aq_add_rem_control_packet_filter.exit.do.body1_crit_edge

i40e_aq_add_rem_control_packet_filter.exit.do.body1_crit_edge: ; preds = %i40e_aq_add_rem_control_packet_filter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1

i40e_aq_add_rem_control_packet_filter.exit.if.end9_crit_edge: ; preds = %i40e_aq_add_rem_control_packet_filter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.body1:                                         ; preds = %i40e_aq_add_rem_control_packet_filter.exit.do.body1_crit_edge, %i40e_aq_add_rem_control_packet_filter.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_add_filter_to_drop_tx_flow_control_frames.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_add_filter_to_drop_tx_flow_control_frames, %if.then6)) #10
          to label %if.end9 [label %if.then6], !srcloc !359

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %back = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %back, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_add_filter_to_drop_tx_flow_control_frames.__UNIQUE_ID_ddebug690, ptr noundef %dev, ptr noundef nonnull @.str.133) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.body1, %i40e_aq_add_rem_control_packet_filter.exit.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_suspend_port_tx(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1051) #10
  %2 = call i16 @llvm.bswap.i16(i16 %seid)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_resume_port_tx(ptr noundef %hw, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1052) #10
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @i40e_set_pci_config_data(ptr nocapture noundef writeonly %hw, i16 noundef zeroext %link_status) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %type, align 8
  %conv = zext i16 %link_status to i32
  %and = and i32 %conv, 1008
  %1 = add nsw i32 %and, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %1)
  %2 = icmp ult i32 %1, 128
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = lshr exact i32 %1, 4
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.i40e_set_pci_config_data, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.sw.epilog_crit_edge ]
  %width12 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %width12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %width12, align 4
  %and14 = and i32 %conv, 15
  %switch.tableidx = add nsw i32 %and14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup38, label %sw.epilog.sw.epilog26_crit_edge

sw.epilog.sw.epilog26_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog26

switch.lookup38:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep39 = getelementptr inbounds [3 x i32], ptr @switch.table.i40e_set_pci_config_data.173, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep39 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load40 = load i32, ptr %switch.gep39, align 4
  br label %sw.epilog26

sw.epilog26:                                      ; preds = %switch.lookup38, %sw.epilog.sw.epilog26_crit_edge
  %.sink37 = phi i32 [ %switch.load40, %switch.lookup38 ], [ 0, %sw.epilog.sw.epilog26_crit_edge ]
  %bus = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink37, ptr %bus, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_debug_dump(ptr noundef %hw, i8 noundef zeroext %cluster_id, i8 noundef zeroext %table_id, i32 noundef %start_index, i16 noundef zeroext %buff_size, ptr noundef %buff, ptr noundef writeonly %ret_buff_size, ptr noundef writeonly %ret_next_table, ptr noundef writeonly %ret_next_index, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 2
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %buff_size)
  %cmp = icmp eq i16 %buff_size, 0
  %tobool.not = icmp eq ptr %buff, null
  %or.cond = or i1 %cmp, %tobool.not
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext -248) #10
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %buff_size)
  %cmp6 = icmp ugt i16 %buff_size, 512
  %spec.select.v = select i1 %cmp6, i16 18, i16 16
  %spec.select = or i16 %5, %spec.select.v
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %spec.select, ptr %desc, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %cluster_id, ptr %3, align 4
  %table_id15 = getelementptr inbounds %struct.i40e_aqc_debug_dump_internals, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %table_id15 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %table_id, ptr %table_id15, align 1
  %9 = call i32 @llvm.bswap.i32(i32 %start_index)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 4
  %11 = call i16 @llvm.bswap.i16(i16 %buff_size)
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %0, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef nonnull %buff, i16 noundef zeroext %buff_size, ptr noundef %cmd_details) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.then17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %if.end
  %tobool18.not = icmp eq ptr %ret_buff_size, null
  br i1 %tobool18.not, label %if.then17.if.end21_crit_edge, label %if.then19

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %0, align 4
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %16 = ptrtoint ptr %ret_buff_size to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %ret_buff_size, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then17.if.end21_crit_edge
  %tobool22.not = icmp eq ptr %ret_next_table, null
  br i1 %tobool22.not, label %if.end21.if.end25_crit_edge, label %if.then23

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %table_id15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %table_id15, align 1
  %19 = ptrtoint ptr %ret_next_table to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %ret_next_table, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge
  %tobool26.not = icmp eq ptr %ret_next_index, null
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.then27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %ret_next_index to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ret_next_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end25.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %if.then27 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_read_bw_from_alt_ram(ptr noundef %hw, ptr noundef %max_bw, ptr noundef %min_bw, ptr nocapture noundef writeonly %min_valid, ptr nocapture noundef writeonly %max_valid) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pf_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 17
  %0 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pf_id, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %3 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %max_bw, null
  %4 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  br i1 %tobool.not.i, label %entry.i40e_aq_alternate_read.exit_crit_edge, label %if.end.i

entry.i40e_aq_alternate_read.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_aq_alternate_read.exit

if.end.i:                                         ; preds = %entry
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %add4 = or i32 %mul, 14
  %add = or i32 %mul, 15
  %5 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 2
  %6 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 2306) #10
  %7 = call i32 @llvm.bswap.i32(i32 %add) #10
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %6, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %add4) #10
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %5, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.i40e_aq_alternate_read.exit_crit_edge

if.end.i.i40e_aq_alternate_read.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_aq_alternate_read.exit

if.then2.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12) #10
  %14 = ptrtoint ptr %max_bw to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %max_bw, align 4
  %tobool3.not.i = icmp eq ptr %min_bw, null
  br i1 %tobool3.not.i, label %if.then2.i.i40e_aq_alternate_read.exit_crit_edge, label %if.then4.i

if.then2.i.i40e_aq_alternate_read.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_aq_alternate_read.exit

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #10
  %18 = ptrtoint ptr %min_bw to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %min_bw, align 4
  br label %i40e_aq_alternate_read.exit

i40e_aq_alternate_read.exit:                      ; preds = %if.then4.i, %if.then2.i.i40e_aq_alternate_read.exit_crit_edge, %if.end.i.i40e_aq_alternate_read.exit_crit_edge, %entry.i40e_aq_alternate_read.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %entry.i40e_aq_alternate_read.exit_crit_edge ], [ 0, %if.then2.i.i40e_aq_alternate_read.exit_crit_edge ], [ 0, %if.then4.i ], [ %call.i, %if.end.i.i40e_aq_alternate_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  %19 = ptrtoint ptr %min_bw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %min_bw, align 4
  %.lobit = lshr i32 %20, 31
  %21 = trunc i32 %.lobit to i8
  %22 = ptrtoint ptr %min_valid to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %min_valid, align 1
  %23 = ptrtoint ptr %max_bw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_bw, align 4
  %.lobit17 = lshr i32 %24, 31
  %25 = trunc i32 %.lobit17 to i8
  %26 = ptrtoint ptr %max_valid to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %max_valid, align 1
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_configure_partition_bw(ptr noundef %hw, ptr noundef %bw_data, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 2
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1053) #10
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc, align 4
  %4 = or i16 %3, 20
  store i16 %4, ptr %desc, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 8704, ptr %0, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %bw_data, i16 noundef zeroext 34, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_read_phy_register_clause22(ptr nocapture noundef readonly %hw, i16 noundef zeroext %reg, i8 noundef zeroext %phy_addr, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_port_num = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 15, i32 42
  %0 = ptrtoint ptr %mdio_port_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mdio_port_num, align 4
  %conv1 = zext i16 %reg to i32
  %shl = shl nuw i32 %conv1, 16
  %conv2 = zext i8 %phy_addr to i32
  %shl3 = shl nuw nsw i32 %conv2, 21
  %or = or i32 %shl, %shl3
  %or6 = or i32 %or, 1476395008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %conv7 = shl i32 %1, 2
  %mul = and i32 %conv7, 1020
  %add = add nuw nsw i32 %mul, 557452
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #10, !srcloc !367
  br label %do.body8

do.body8:                                         ; preds = %if.end.do.body8_crit_edge, %entry
  %retry.0 = phi i16 [ 1000, %entry ], [ %dec, %if.end.do.body8_crit_edge ]
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr13 = getelementptr i8, ptr %6, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  %8 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %if.end

if.end:                                           ; preds = %do.body8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #10
  %dec = add nsw i16 %retry.0, -1
  %tobool16.not = icmp eq i16 %dec, 0
  br i1 %tobool16.not, label %do.body20, label %if.end.do.body8_crit_edge

if.end.do.body8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

do.body20:                                        ; preds = %if.end
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %10 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_mask, align 8
  %and21 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.if.end49_crit_edge, label %do.end26

do.body20.if.end49_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bus_id, align 2
  %conv28 = zext i16 %13 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device, align 2
  %conv30 = zext i16 %15 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %func, align 4
  %conv32 = zext i16 %17 to i32
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %conv28, i32 noundef %conv30, i32 noundef %conv32) #13
  br label %if.end49

if.else:                                          ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %add42 = add nuw nsw i32 %mul, 557468
  %add.ptr43 = getelementptr i8, ptr %19, i32 %add42
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  %21 = and i32 %20, 65535
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %shr = lshr exact i32 %22, 16
  %conv48 = trunc i32 %shr to i16
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv48, ptr %value, align 2
  br label %if.end49

if.end49:                                         ; preds = %if.else, %do.end26, %do.body20.if.end49_crit_edge
  %status.064 = phi i32 [ -37, %do.body20.if.end49_crit_edge ], [ -37, %do.end26 ], [ 0, %if.else ]
  ret i32 %status.064
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_write_phy_register_clause22(ptr nocapture noundef readonly %hw, i16 noundef zeroext %reg, i8 noundef zeroext %phy_addr, i16 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_port_num = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 15, i32 42
  %0 = ptrtoint ptr %mdio_port_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mdio_port_num, align 4
  %conv1 = zext i16 %value to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv1)
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %conv2 = shl i32 %1, 2
  %mul = and i32 %conv2, 1020
  %add = add nuw nsw i32 %mul, 557468
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #10, !srcloc !367
  %conv3 = zext i16 %reg to i32
  %shl4 = shl nuw i32 %conv3, 16
  %conv5 = zext i8 %phy_addr to i32
  %shl6 = shl nuw nsw i32 %conv5, 21
  %or = or i32 %shl4, %shl6
  %or9 = or i32 %or, 1409286144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !404
  tail call void @arm_heavy_mb() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add16 = add nuw nsw i32 %mul, 557452
  %add.ptr17 = getelementptr i8, ptr %7, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %5) #10, !srcloc !367
  br label %do.body18

do.body18:                                        ; preds = %if.end.do.body18_crit_edge, %entry
  %retry.0 = phi i16 [ 1000, %entry ], [ %dec, %if.end.do.body18_crit_edge ]
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %add.ptr23 = getelementptr i8, ptr %9, i32 %add16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !405
  %11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %do.body18.do.end27_crit_edge, label %if.end

do.body18.do.end27_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

if.end:                                           ; preds = %do.body18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #10
  %dec = add nsw i16 %retry.0, -1
  %tobool26.not = icmp eq i16 %dec, 0
  br i1 %tobool26.not, label %if.end.do.end27_crit_edge, label %if.end.do.body18_crit_edge

if.end.do.body18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

if.end.do.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

do.end27:                                         ; preds = %if.end.do.end27_crit_edge, %do.body18.do.end27_crit_edge
  %status.0 = phi i32 [ -37, %if.end.do.end27_crit_edge ], [ 0, %do.body18.do.end27_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_read_phy_register_clause45(ptr nocapture noundef readonly %hw, i8 noundef zeroext %page, i16 noundef zeroext %reg, i8 noundef zeroext %phy_addr, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_port_num = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 15, i32 42
  %0 = ptrtoint ptr %mdio_port_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mdio_port_num, align 4
  %conv1 = zext i16 %reg to i32
  %conv2 = zext i8 %page to i32
  %shl3 = shl nuw nsw i32 %conv2, 16
  %conv4 = zext i8 %phy_addr to i32
  %shl5 = shl nuw nsw i32 %conv4, 21
  %or = or i32 %shl5, %shl3
  %or6 = or i32 %or, %conv1
  %or10 = or i32 %or6, -1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !406
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %conv11 = shl i32 %1, 2
  %mul = and i32 %conv11, 1020
  %add = add nuw nsw i32 %mul, 557452
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #10, !srcloc !367
  br label %do.body12

do.body12:                                        ; preds = %if.end.do.body12_crit_edge, %entry
  %retry.0 = phi i16 [ 1000, %entry ], [ %dec, %if.end.do.body12_crit_edge ]
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr17 = getelementptr i8, ptr %6, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !407
  %8 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end41, label %if.end

if.end:                                           ; preds = %do.body12
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #10
  %dec = add nsw i16 %retry.0, -1
  %tobool20.not = icmp eq i16 %dec, 0
  br i1 %tobool20.not, label %do.body24, label %if.end.do.body12_crit_edge

if.end.do.body12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

do.body24:                                        ; preds = %if.end
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %9 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask, align 8
  %and25 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.phy_read_end_crit_edge, label %do.end30

do.body24.phy_read_end_crit_edge:                 ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_read_end

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bus_id, align 2
  %conv32 = zext i16 %12 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device, align 2
  %conv34 = zext i16 %14 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %func, align 4
  %conv36 = zext i16 %16 to i32
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %conv32, i32 noundef %conv34, i32 noundef %conv36) #13
  br label %phy_read_end

if.end41:                                         ; preds = %do.body12
  %or50 = or i32 %or, -872415232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !408
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %or50)
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %add.ptr58 = getelementptr i8, ptr %19, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %17) #10, !srcloc !367
  br label %do.body59

do.body59:                                        ; preds = %if.end73.do.body59_crit_edge, %if.end41
  %retry.1 = phi i16 [ 1000, %if.end41 ], [ %dec74, %if.end73.do.body59_crit_edge ]
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 8
  %add.ptr66 = getelementptr i8, ptr %21, i32 %add
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !409
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool71.not = icmp eq i32 %23, 0
  br i1 %tobool71.not, label %if.then79, label %if.end73

if.end73:                                         ; preds = %do.body59
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #10
  %dec74 = add nsw i16 %retry.1, -1
  %tobool76.not = icmp eq i16 %dec74, 0
  br i1 %tobool76.not, label %do.body92, label %if.end73.do.body59_crit_edge

if.end73.do.body59_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59

if.then79:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 8
  %add85 = add nuw nsw i32 %mul, 557468
  %add.ptr86 = getelementptr i8, ptr %25, i32 %add85
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !410
  %27 = and i32 %26, 65535
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %shr = lshr exact i32 %28, 16
  %conv91 = trunc i32 %shr to i16
  %29 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv91, ptr %value, align 2
  br label %phy_read_end

do.body92:                                        ; preds = %if.end73
  %debug_mask93 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %30 = ptrtoint ptr %debug_mask93 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_mask93, align 8
  %and94 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %do.body92.phy_read_end_crit_edge, label %do.end99

do.body92.phy_read_end_crit_edge:                 ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_read_end

do.end99:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id102 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %32 = ptrtoint ptr %bus_id102 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %bus_id102, align 2
  %conv103 = zext i16 %33 to i32
  %device105 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %device105 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %device105, align 2
  %conv106 = zext i16 %35 to i32
  %func108 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %func108 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %func108, align 4
  %conv109 = zext i16 %37 to i32
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef %conv103, i32 noundef %conv106, i32 noundef %conv109) #13
  br label %phy_read_end

phy_read_end:                                     ; preds = %do.end99, %do.body92.phy_read_end_crit_edge, %if.then79, %do.end30, %do.body24.phy_read_end_crit_edge
  %status.2 = phi i32 [ -37, %do.end30 ], [ -37, %do.body24.phy_read_end_crit_edge ], [ -37, %do.end99 ], [ -37, %do.body92.phy_read_end_crit_edge ], [ 0, %if.then79 ]
  ret i32 %status.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_write_phy_register_clause45(ptr nocapture noundef readonly %hw, i8 noundef zeroext %page, i16 noundef zeroext %reg, i8 noundef zeroext %phy_addr, i16 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_port_num = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 15, i32 42
  %0 = ptrtoint ptr %mdio_port_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mdio_port_num, align 4
  %conv1 = zext i16 %reg to i32
  %conv2 = zext i8 %page to i32
  %shl3 = shl nuw nsw i32 %conv2, 16
  %conv4 = zext i8 %phy_addr to i32
  %shl5 = shl nuw nsw i32 %conv4, 21
  %or = or i32 %shl5, %shl3
  %or6 = or i32 %or, %conv1
  %or10 = or i32 %or6, -1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !411
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %conv11 = shl i32 %1, 2
  %mul = and i32 %conv11, 1020
  %add = add nuw nsw i32 %mul, 557452
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #10, !srcloc !367
  br label %do.body12

do.body12:                                        ; preds = %if.end.do.body12_crit_edge, %entry
  %retry.0 = phi i16 [ 1000, %entry ], [ %dec, %if.end.do.body12_crit_edge ]
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr17 = getelementptr i8, ptr %6, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !412
  %8 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end41, label %if.end

if.end:                                           ; preds = %do.body12
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #10
  %dec = add nsw i16 %retry.0, -1
  %tobool20.not = icmp eq i16 %dec, 0
  br i1 %tobool20.not, label %do.body24, label %if.end.do.body12_crit_edge

if.end.do.body12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

do.body24:                                        ; preds = %if.end
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %9 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask, align 8
  %and25 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.phy_write_end_crit_edge, label %do.end30

do.body24.phy_write_end_crit_edge:                ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_write_end

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bus_id, align 2
  %conv32 = zext i16 %12 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device, align 2
  %conv34 = zext i16 %14 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %func, align 4
  %conv36 = zext i16 %16 to i32
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %conv32, i32 noundef %conv34, i32 noundef %conv36) #13
  br label %phy_write_end

if.end41:                                         ; preds = %do.body12
  %conv42 = zext i16 %value to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !413
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv42)
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %add50 = add nuw nsw i32 %mul, 557468
  %add.ptr51 = getelementptr i8, ptr %19, i32 %add50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %17) #10, !srcloc !367
  %or60 = or i32 %or, -1006632960
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !414
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %or60)
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 8
  %add.ptr68 = getelementptr i8, ptr %22, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %20) #10, !srcloc !367
  br label %do.body69

do.body69:                                        ; preds = %if.end83.do.body69_crit_edge, %if.end41
  %retry.1 = phi i16 [ 1000, %if.end41 ], [ %dec84, %if.end83.do.body69_crit_edge ]
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 8
  %add.ptr76 = getelementptr i8, ptr %24, i32 %add
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !415
  %26 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool81.not = icmp eq i32 %26, 0
  br i1 %tobool81.not, label %do.body69.phy_write_end_crit_edge, label %if.end83

do.body69.phy_write_end_crit_edge:                ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_write_end

if.end83:                                         ; preds = %do.body69
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #10
  %dec84 = add nsw i16 %retry.1, -1
  %tobool86.not = icmp eq i16 %dec84, 0
  br i1 %tobool86.not, label %if.end83.phy_write_end_crit_edge, label %if.end83.do.body69_crit_edge

if.end83.do.body69_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

if.end83.phy_write_end_crit_edge:                 ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_write_end

phy_write_end:                                    ; preds = %if.end83.phy_write_end_crit_edge, %do.body69.phy_write_end_crit_edge, %do.end30, %do.body24.phy_write_end_crit_edge
  %status.1 = phi i32 [ -37, %do.end30 ], [ -37, %do.body24.phy_write_end_crit_edge ], [ 0, %do.body69.phy_write_end_crit_edge ], [ -37, %if.end83.phy_write_end_crit_edge ]
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_write_phy_register(ptr nocapture noundef readonly %hw, i8 noundef zeroext %page, i16 noundef zeroext %reg, i8 noundef zeroext %phy_addr, i16 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device_id, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.184)
  switch i16 %1, label %entry.sw.epilog_crit_edge [
    i16 14289, label %sw.bb
    i16 4127, label %entry.sw.bb1_crit_edge
    i16 5510, label %entry.sw.bb1_crit_edge8
    i16 5513, label %entry.sw.bb1_crit_edge9
    i16 5631, label %entry.sw.bb1_crit_edge10
    i16 14290, label %entry.sw.bb1_crit_edge11
    i16 5514, label %entry.sw.bb1_crit_edge12
    i16 5515, label %entry.sw.bb1_crit_edge13
  ]

entry.sw.bb1_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %mdio_port_num.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 15, i32 42
  %3 = ptrtoint ptr %mdio_port_num.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mdio_port_num.i, align 4
  %conv1.i = zext i16 %value to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %conv1.i) #10
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %conv2.i = shl i32 %4, 2
  %mul.i = and i32 %conv2.i, 1020
  %add.i = add nuw nsw i32 %mul.i, 557468
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #10, !srcloc !367
  %conv3.i = zext i16 %reg to i32
  %shl4.i = shl nuw i32 %conv3.i, 16
  %conv5.i = zext i8 %phy_addr to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 21
  %or.i = or i32 %shl4.i, %shl6.i
  %or9.i = or i32 %or.i, 1409286144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !404
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #10
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %add16.i = add nuw nsw i32 %mul.i, 557452
  %add.ptr17.i = getelementptr i8, ptr %10, i32 %add16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %8) #10, !srcloc !367
  br label %do.body18.i

do.body18.i:                                      ; preds = %if.end.i.do.body18.i_crit_edge, %sw.bb
  %retry.0.i = phi i16 [ 1000, %sw.bb ], [ %dec.i, %if.end.i.do.body18.i_crit_edge ]
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 8
  %add.ptr23.i = getelementptr i8, ptr %12, i32 %add16.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !405
  %14 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %do.body18.i.sw.epilog_crit_edge, label %if.end.i

do.body18.i.sw.epilog_crit_edge:                  ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i:                                         ; preds = %do.body18.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #10
  %dec.i = add nsw i16 %retry.0.i, -1
  %tobool26.not.i = icmp eq i16 %dec.i, 0
  br i1 %tobool26.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.do.body18.i_crit_edge

if.end.i.do.body18.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge8, %entry.sw.bb1_crit_edge9, %entry.sw.bb1_crit_edge10, %entry.sw.bb1_crit_edge11, %entry.sw.bb1_crit_edge12, %entry.sw.bb1_crit_edge13
  %call2 = tail call i32 @i40e_write_phy_register_clause45(ptr noundef %hw, i8 noundef zeroext %page, i16 noundef zeroext %reg, i8 noundef zeroext %phy_addr, i16 noundef zeroext %value)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %if.end.i.sw.epilog_crit_edge, %do.body18.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %status.0 = phi i32 [ %call2, %sw.bb1 ], [ -7, %entry.sw.epilog_crit_edge ], [ 0, %do.body18.i.sw.epilog_crit_edge ], [ -37, %if.end.i.sw.epilog_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_read_phy_register(ptr nocapture noundef readonly %hw, i8 noundef zeroext %page, i16 noundef zeroext %reg, i8 noundef zeroext %phy_addr, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device_id, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.185)
  switch i16 %1, label %entry.sw.epilog_crit_edge [
    i16 14289, label %sw.bb
    i16 4127, label %entry.sw.bb1_crit_edge
    i16 5510, label %entry.sw.bb1_crit_edge8
    i16 5513, label %entry.sw.bb1_crit_edge9
    i16 5631, label %entry.sw.bb1_crit_edge10
    i16 14290, label %entry.sw.bb1_crit_edge11
    i16 5514, label %entry.sw.bb1_crit_edge12
    i16 5515, label %entry.sw.bb1_crit_edge13
  ]

entry.sw.bb1_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @i40e_read_phy_register_clause22(ptr noundef %hw, i16 noundef zeroext %reg, i8 noundef zeroext %phy_addr, ptr noundef %value)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge8, %entry.sw.bb1_crit_edge9, %entry.sw.bb1_crit_edge10, %entry.sw.bb1_crit_edge11, %entry.sw.bb1_crit_edge12, %entry.sw.bb1_crit_edge13
  %call2 = tail call i32 @i40e_read_phy_register_clause45(ptr noundef %hw, i8 noundef zeroext %page, i16 noundef zeroext %reg, i8 noundef zeroext %phy_addr, ptr noundef %value)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %status.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -7, %entry.sw.epilog_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @i40e_get_phy_address(ptr nocapture noundef readonly %hw, i8 noundef zeroext %dev_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_port_num = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 15, i32 42
  %0 = ptrtoint ptr %mdio_port_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mdio_port_num, align 4
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %conv1 = shl i32 %1, 2
  %mul = and i32 %conv1, 1020
  %add = add nuw nsw i32 %mul, 557504
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !360
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !416
  %conv3 = zext i8 %dev_num to i32
  %6 = mul nuw nsw i32 %conv3, 5
  %mul5 = add nuw nsw i32 %6, 5
  %shr = lshr i32 %5, %mul5
  %7 = trunc i32 %shr to i8
  %conv8 = and i8 %7, 31
  ret i8 %conv8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_blink_phy_link_led(ptr nocapture noundef readonly %hw, i32 noundef %time, i32 noundef %interval) local_unnamed_addr #0 align 64 {
entry:
  %led_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %led_reg) #10
  %0 = ptrtoint ptr %led_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %led_reg, align 2, !annotation !396
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 1836160
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !360
  %4 = lshr i32 %3, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !417
  %conv = and i32 %4, 3
  %mdio_port_num.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 15, i32 42
  %5 = ptrtoint ptr %mdio_port_num.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mdio_port_num.i, align 4
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %conv1.i = shl i32 %6, 2
  %mul.i = and i32 %conv1.i, 1020
  %add.i = add nuw nsw i32 %mul.i, 557504
  %add.ptr.i = getelementptr i8, ptr %8, i32 %add.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !360
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !416
  %11 = mul nuw nsw i32 %conv, 5
  %mul5.i = add nuw nsw i32 %11, 5
  %shr.i = lshr i32 %10, %mul5.i
  %12 = trunc i32 %shr.i to i8
  %conv8.i = and i8 %12, 31
  %call5 = call i32 @i40e_read_phy_register_clause45(ptr noundef %hw, i8 noundef zeroext 30, i16 noundef zeroext -15312, i8 noundef zeroext %conv8.i, ptr noundef nonnull %led_reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.phy_blinking_end_crit_edge

entry.phy_blinking_end_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_blinking_end

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %led_reg to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %led_reg, align 2
  %15 = and i16 %14, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool8.not = icmp eq i16 %15, 0
  br i1 %tobool8.not, label %for.inc, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9:                                         ; preds = %if.end.2.if.then9_crit_edge, %if.end.1.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %.lcssa = phi i16 [ %14, %if.end.if.then9_crit_edge ], [ %18, %if.end.1.if.then9_crit_edge ], [ %21, %if.end.2.if.then9_crit_edge ]
  %led_addr.075.lcssa83 = phi i16 [ -15312, %if.end.if.then9_crit_edge ], [ -15311, %if.end.1.if.then9_crit_edge ], [ -15310, %if.end.2.if.then9_crit_edge ]
  %16 = ptrtoint ptr %led_reg to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %led_reg, align 2
  %call10 = tail call i32 @i40e_write_phy_register_clause45(ptr noundef %hw, i8 noundef zeroext 30, i16 noundef zeroext %led_addr.075.lcssa83, i8 noundef zeroext %conv8.i, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.for.end_crit_edge, label %if.then9.phy_blinking_end_crit_edge

if.then9.phy_blinking_end_crit_edge:              ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_blinking_end

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %if.end
  %call5.1 = call i32 @i40e_read_phy_register_clause45(ptr noundef %hw, i8 noundef zeroext 30, i16 noundef zeroext -15311, i8 noundef zeroext %conv8.i, ptr noundef nonnull %led_reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %tobool.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %for.inc.phy_blinking_end_crit_edge

for.inc.phy_blinking_end_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_blinking_end

if.end.1:                                         ; preds = %for.inc
  %17 = ptrtoint ptr %led_reg to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %led_reg, align 2
  %19 = and i16 %18, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool8.not.1 = icmp eq i16 %19, 0
  br i1 %tobool8.not.1, label %for.inc.1, label %if.end.1.if.then9_crit_edge

if.end.1.if.then9_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

for.inc.1:                                        ; preds = %if.end.1
  %call5.2 = call i32 @i40e_read_phy_register_clause45(ptr noundef %hw, i8 noundef zeroext 30, i16 noundef zeroext -15310, i8 noundef zeroext %conv8.i, ptr noundef nonnull %led_reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %tobool.not.2 = icmp eq i32 %call5.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %for.inc.1.phy_blinking_end_crit_edge

for.inc.1.phy_blinking_end_crit_edge:             ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_blinking_end

if.end.2:                                         ; preds = %for.inc.1
  %20 = ptrtoint ptr %led_reg to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %led_reg, align 2
  %22 = and i16 %21, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool8.not.2 = icmp eq i16 %22, 0
  br i1 %tobool8.not.2, label %if.end.2.for.end_crit_edge, label %if.end.2.if.then9_crit_edge

if.end.2.if.then9_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.end.2.for.end_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.2.for.end_crit_edge, %if.then9.for.end_crit_edge
  %23 = phi i16 [ %.lcssa, %if.then9.for.end_crit_edge ], [ %21, %if.end.2.for.end_crit_edge ]
  %led_addr.071 = phi i16 [ %led_addr.075.lcssa83, %if.then9.for.end_crit_edge ], [ -15309, %if.end.2.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %time)
  %cmp16.not = icmp eq i32 %time, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %interval)
  %cmp18.not = icmp eq i32 %interval, 0
  %or.cond = or i1 %cmp16.not, %cmp18.not
  br i1 %or.cond, label %for.end.restore_config_crit_edge, label %for.cond21.preheader

for.end.restore_config_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_config

for.cond21.preheader:                             ; preds = %for.end
  %mul = mul i32 %time, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp2277.not = icmp eq i32 %mul, 0
  br i1 %cmp2277.not, label %for.cond21.preheader.restore_config_crit_edge, label %for.cond21.preheader.for.body24_crit_edge

for.cond21.preheader.for.body24_crit_edge:        ; preds = %for.cond21.preheader
  br label %for.body24

for.cond21.preheader.restore_config_crit_edge:    ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_config

for.body24:                                       ; preds = %if.end37.for.body24_crit_edge, %for.cond21.preheader.for.body24_crit_edge
  %i.078 = phi i32 [ %add, %if.end37.for.body24_crit_edge ], [ 0, %for.cond21.preheader.for.body24_crit_edge ]
  %call25 = call i32 @i40e_read_phy_register_clause45(ptr noundef %hw, i8 noundef zeroext 30, i16 noundef zeroext %led_addr.071, i8 noundef zeroext %conv8.i, ptr noundef nonnull %led_reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %for.body24.restore_config_crit_edge

for.body24.restore_config_crit_edge:              ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_config

if.end28:                                         ; preds = %for.body24
  %24 = ptrtoint ptr %led_reg to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %led_reg, align 2
  %26 = and i16 %25, 256
  %27 = xor i16 %26, 256
  store i16 %27, ptr %led_reg, align 2
  %call34 = tail call i32 @i40e_write_phy_register_clause45(ptr noundef %hw, i8 noundef zeroext 30, i16 noundef zeroext %led_addr.071, i8 noundef zeroext %conv8.i, i16 noundef zeroext %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end28.restore_config_crit_edge

if.end28.restore_config_crit_edge:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_config

if.end37:                                         ; preds = %if.end28
  tail call void @msleep(i32 noundef %interval) #10
  %add = add i32 %i.078, %interval
  %cmp22 = icmp ult i32 %add, %mul
  br i1 %cmp22, label %if.end37.for.body24_crit_edge, label %if.end37.restore_config_crit_edge

if.end37.restore_config_crit_edge:                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_config

if.end37.for.body24_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24

restore_config:                                   ; preds = %if.end37.restore_config_crit_edge, %if.end28.restore_config_crit_edge, %for.body24.restore_config_crit_edge, %for.cond21.preheader.restore_config_crit_edge, %for.end.restore_config_crit_edge
  %call41 = tail call i32 @i40e_write_phy_register_clause45(ptr noundef %hw, i8 noundef zeroext 30, i16 noundef zeroext %led_addr.071, i8 noundef zeroext %conv8.i, i16 noundef zeroext %23)
  br label %phy_blinking_end

phy_blinking_end:                                 ; preds = %restore_config, %for.inc.1.phy_blinking_end_crit_edge, %for.inc.phy_blinking_end_crit_edge, %if.then9.phy_blinking_end_crit_edge, %entry.phy_blinking_end_crit_edge
  %status.0 = phi i32 [ %call10, %if.then9.phy_blinking_end_crit_edge ], [ %call41, %restore_config ], [ %call5, %entry.phy_blinking_end_crit_edge ], [ %call5.1, %for.inc.phy_blinking_end_crit_edge ], [ %call5.2, %for.inc.1.phy_blinking_end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %led_reg) #10
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_led_get_phy(ptr noundef %hw, ptr nocapture noundef writeonly %led_addr, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  %reg_val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_val) #10
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg_val, align 2, !annotation !396
  %flags = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %flags, align 8
  %and = and i64 %2, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %3 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %4 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %5 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1577) #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %3, align 4
  %dev_address.i = getelementptr inbounds %struct.i40e_aqc_phy_register_access, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %dev_address.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 30, ptr %dev_address.i, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 818151424, ptr %4, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then1, label %i40e_aq_get_phy_register_ext.exit

i40e_aq_get_phy_register_ext.exit:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  br label %cleanup

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %9 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  %conv = trunc i32 %12 to i16
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %val, align 2
  br label %cleanup

if.end2:                                          ; preds = %entry
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %15, i32 1836160
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !360
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !418
  %conv6 = and i32 %17, 3
  %mdio_port_num.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 15, i32 42
  %18 = ptrtoint ptr %mdio_port_num.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mdio_port_num.i, align 4
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 8
  %conv1.i = shl i32 %19, 2
  %mul.i = and i32 %conv1.i, 1020
  %add.i = add nuw nsw i32 %mul.i, 557504
  %add.ptr.i = getelementptr i8, ptr %21, i32 %add.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !360
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !416
  %24 = mul nuw nsw i32 %conv6, 5
  %mul5.i = add nuw nsw i32 %24, 5
  %shr.i = lshr i32 %23, %mul5.i
  %25 = trunc i32 %shr.i to i8
  %conv8.i = and i8 %25, 31
  %call11 = call i32 @i40e_read_phy_register_clause45(ptr noundef %hw, i8 noundef zeroext 30, i16 noundef zeroext -15312, i8 noundef zeroext %conv8.i, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end2
  %26 = ptrtoint ptr %reg_val to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %reg_val, align 2
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %val, align 2
  %29 = and i16 %27, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool17.not = icmp eq i16 %29, 0
  br i1 %tobool17.not, label %for.inc, label %if.end14.if.then18_crit_edge

if.end14.if.then18_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.then18:                                        ; preds = %if.end14.2.if.then18_crit_edge, %if.end14.1.if.then18_crit_edge, %if.end14.if.then18_crit_edge
  %temp_addr.043.lcssa45 = phi i16 [ -15312, %if.end14.if.then18_crit_edge ], [ -15311, %if.end14.1.if.then18_crit_edge ], [ -15310, %if.end14.2.if.then18_crit_edge ]
  %30 = ptrtoint ptr %led_addr to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %temp_addr.043.lcssa45, ptr %led_addr, align 2
  br label %cleanup

for.inc:                                          ; preds = %if.end14
  %call11.1 = call i32 @i40e_read_phy_register_clause45(ptr noundef %hw, i8 noundef zeroext 30, i16 noundef zeroext -15311, i8 noundef zeroext %conv8.i, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1)
  %tobool12.not.1 = icmp eq i32 %call11.1, 0
  br i1 %tobool12.not.1, label %if.end14.1, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14.1:                                       ; preds = %for.inc
  %31 = ptrtoint ptr %reg_val to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %reg_val, align 2
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %val, align 2
  %34 = and i16 %32, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool17.not.1 = icmp eq i16 %34, 0
  br i1 %tobool17.not.1, label %for.inc.1, label %if.end14.1.if.then18_crit_edge

if.end14.1.if.then18_crit_edge:                   ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

for.inc.1:                                        ; preds = %if.end14.1
  %call11.2 = call i32 @i40e_read_phy_register_clause45(ptr noundef %hw, i8 noundef zeroext 30, i16 noundef zeroext -15310, i8 noundef zeroext %conv8.i, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.2)
  %tobool12.not.2 = icmp eq i32 %call11.2, 0
  br i1 %tobool12.not.2, label %if.end14.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14.2:                                       ; preds = %for.inc.1
  %35 = ptrtoint ptr %reg_val to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %reg_val, align 2
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %val, align 2
  %38 = and i16 %36, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool17.not.2 = icmp eq i16 %38, 0
  br i1 %tobool17.not.2, label %if.end14.2.cleanup_crit_edge, label %if.end14.2.if.then18_crit_edge

if.end14.2.if.then18_crit_edge:                   ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.end14.2.cleanup_crit_edge:                     ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.then18, %if.end2.cleanup_crit_edge, %if.then1, %i40e_aq_get_phy_register_ext.exit
  %retval.0 = phi i32 [ 0, %if.then1 ], [ %call.i, %i40e_aq_get_phy_register_ext.exit ], [ 0, %if.then18 ], [ %call11, %if.end2.cleanup_crit_edge ], [ %call11.1, %for.inc.cleanup_crit_edge ], [ %call11.2, %for.inc.1.cleanup_crit_edge ], [ 0, %if.end14.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_get_phy_register_ext(ptr noundef %hw, i8 noundef zeroext %phy_select, i8 noundef zeroext %dev_addr, i1 noundef zeroext %page_change, i1 noundef zeroext %set_mdio, i8 noundef zeroext %mdio_num, i32 noundef %reg_addr, ptr nocapture noundef writeonly %reg_val, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %3 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1577) #10
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %phy_select, ptr %0, align 4
  %dev_address = getelementptr inbounds %struct.i40e_aqc_phy_register_access, ptr %0, i32 0, i32 1
  %5 = ptrtoint ptr %dev_address to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %dev_addr, ptr %dev_address, align 1
  %6 = call i32 @llvm.bswap.i32(i32 %reg_addr)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %phy_select)
  %cmp.i = icmp eq i8 %phy_select, 1
  %or.cond = and i1 %cmp.i, %set_mdio
  br i1 %or.cond, label %if.then.i, label %entry.i40e_mdio_if_number_selection.exit_crit_edge

entry.i40e_mdio_if_number_selection.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_mdio_if_number_selection.exit

if.then.i:                                        ; preds = %entry
  %flags.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %9, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool2.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool2.not.i, label %do.body.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl i8 %mdio_num, 2
  %and5.i = and i8 %shl.i, 12
  %cmd_flags.i = getelementptr inbounds %struct.i40e_aqc_phy_register_access, ptr %0, i32 0, i32 2
  %10 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cmd_flags.i, align 2
  %or.i = or i8 %and5.i, %11
  %or7.i = or i8 %or.i, 2
  store i8 %or7.i, ptr %cmd_flags.i, align 2
  br label %i40e_mdio_if_number_selection.exit

do.body.i:                                        ; preds = %if.then.i
  %debug_mask.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %12 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask.i, align 8
  %and9.i = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %do.body.i.i40e_mdio_if_number_selection.exit_crit_edge, label %do.end.i

do.body.i.i40e_mdio_if_number_selection.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_mdio_if_number_selection.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %bus_id.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bus_id.i, align 2
  %conv13.i = zext i16 %15 to i32
  %device.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device.i, align 2
  %conv15.i = zext i16 %17 to i32
  %func.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %func.i, align 4
  %conv17.i = zext i16 %19 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i32 noundef %conv13.i, i32 noundef %conv15.i, i32 noundef %conv17.i) #13
  br label %i40e_mdio_if_number_selection.exit

i40e_mdio_if_number_selection.exit:               ; preds = %do.end.i, %do.body.i.i40e_mdio_if_number_selection.exit_crit_edge, %if.then3.i, %entry.i40e_mdio_if_number_selection.exit_crit_edge
  br i1 %page_change, label %i40e_mdio_if_number_selection.exit.if.end_crit_edge, label %if.then

i40e_mdio_if_number_selection.exit.if.end_crit_edge: ; preds = %i40e_mdio_if_number_selection.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %i40e_mdio_if_number_selection.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cmd_flags = getelementptr inbounds %struct.i40e_aqc_phy_register_access, ptr %0, i32 0, i32 2
  %20 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %cmd_flags, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %i40e_mdio_if_number_selection.exit.if.end_crit_edge
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %2, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %reg_val, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_led_set_phy(ptr noundef %hw, i1 noundef zeroext %on, i16 noundef zeroext %led_addr, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %led_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %led_reg) #10
  %0 = ptrtoint ptr %led_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %led_reg, align 4
  %call = call fastcc i32 @i40e_led_get_reg(ptr noundef %hw, i16 noundef zeroext %led_addr, ptr noundef nonnull %led_reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %led_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %led_reg, align 4
  %and = and i32 %2, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @i40e_led_set_reg(ptr noundef %hw, i16 noundef zeroext %led_addr, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call8 = call fastcc i32 @i40e_led_get_reg(ptr noundef %hw, i16 noundef zeroext %led_addr, ptr noundef nonnull %led_reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup.sink.split_crit_edge

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end7
  %. = select i1 %on, i32 256, i32 0
  %call15 = tail call fastcc i32 @i40e_led_set_reg(ptr noundef %hw, i16 noundef zeroext %led_addr, i32 noundef %.)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end11.cleanup.sink.split_crit_edge

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mode)
  %tobool20.not = icmp sgt i32 %mode, -1
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %and22 = and i32 %mode, 65535
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then21, %if.end11.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge
  %and22.sink = phi i32 [ %and22, %if.then21 ], [ %2, %if.end11.cleanup.sink.split_crit_edge ], [ %2, %if.end7.cleanup.sink.split_crit_edge ]
  %call23 = tail call fastcc i32 @i40e_led_set_reg(ptr noundef %hw, i16 noundef zeroext %led_addr, i32 noundef %and22.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end18.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.then2.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ %call23, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %led_reg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_led_get_reg(ptr noundef %hw, i16 noundef zeroext %led_addr, ptr nocapture noundef writeonly %reg_val) unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg_val, align 4
  %flags = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %flags, align 8
  %and = and i64 %2, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %3 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %4 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %5 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1577) #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %3, align 4
  %dev_address.i = getelementptr inbounds %struct.i40e_aqc_phy_register_access, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %dev_address.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 30, ptr %dev_address.i, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 818151424, ptr %4, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then.i40e_aq_get_phy_register_ext.exit_crit_edge

if.then.i40e_aq_get_phy_register_ext.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_aq_get_phy_register_ext.exit

if.then4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %9 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11) #10
  %13 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %reg_val, align 4
  br label %i40e_aq_get_phy_register_ext.exit

i40e_aq_get_phy_register_ext.exit:                ; preds = %if.then4.i, %if.then.i40e_aq_get_phy_register_ext.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %15, i32 1836160
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !360
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  %conv = and i32 %17, 3
  %mdio_port_num.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 15, i32 42
  %18 = ptrtoint ptr %mdio_port_num.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mdio_port_num.i, align 4
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 8
  %conv1.i = shl i32 %19, 2
  %mul.i = and i32 %conv1.i, 1020
  %add.i = add nuw nsw i32 %mul.i, 557504
  %add.ptr.i = getelementptr i8, ptr %21, i32 %add.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !360
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !416
  %24 = mul nuw nsw i32 %conv, 5
  %mul5.i = add nuw nsw i32 %24, 5
  %shr.i = lshr i32 %23, %mul5.i
  %25 = trunc i32 %shr.i to i8
  %conv8.i = and i8 %25, 31
  %call5 = tail call i32 @i40e_read_phy_register_clause45(ptr noundef %hw, i8 noundef zeroext 30, i16 noundef zeroext %led_addr, i8 noundef zeroext %conv8.i, ptr noundef %reg_val)
  br label %if.end

if.end:                                           ; preds = %if.else, %i40e_aq_get_phy_register_ext.exit
  %status.0 = phi i32 [ %call.i, %i40e_aq_get_phy_register_ext.exit ], [ %call5, %if.else ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_led_set_reg(ptr noundef %hw, i16 noundef zeroext %led_addr, i32 noundef %reg_val) unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags, align 8
  %and = and i64 %1, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %3 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %4 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 2
  %5 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1576) #10
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %2, align 4
  %dev_address.i = getelementptr inbounds %struct.i40e_aqc_phy_register_access, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %dev_address.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 30, ptr %dev_address.i, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 818151424, ptr %3, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %reg_val) #10
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %4, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 1836160
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !360
  %14 = lshr i32 %13, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !420
  %conv = and i32 %14, 3
  %mdio_port_num.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 15, i32 42
  %15 = ptrtoint ptr %mdio_port_num.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mdio_port_num.i, align 4
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %conv1.i = shl i32 %16, 2
  %mul.i = and i32 %conv1.i, 1020
  %add.i = add nuw nsw i32 %mul.i, 557504
  %add.ptr.i = getelementptr i8, ptr %18, i32 %add.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !360
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !416
  %21 = mul nuw nsw i32 %conv, 5
  %mul5.i = add nuw nsw i32 %21, 5
  %shr.i = lshr i32 %20, %mul5.i
  %22 = trunc i32 %shr.i to i8
  %conv8.i = and i8 %22, 31
  %conv5 = trunc i32 %reg_val to i16
  %call6 = tail call i32 @i40e_write_phy_register_clause45(ptr noundef %hw, i8 noundef zeroext 30, i16 noundef zeroext %led_addr, i8 noundef zeroext %conv8.i, i16 noundef zeroext %conv5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %status.0 = phi i32 [ %call.i, %if.then ], [ %call6, %if.else ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_rx_ctl_read_register(ptr noundef %hw, i32 noundef %reg_addr, ptr noundef writeonly %reg_val, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 3
  %tobool.not = icmp eq ptr %reg_val, null
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 518) #10
  %3 = call i32 @llvm.bswap.i32(i32 %reg_addr)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %2, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %0, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %reg_val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %if.then1 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_rx_ctl_write_register(ptr noundef %hw, i32 noundef %reg_addr, i32 noundef %reg_val, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 3
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 519) #10
  %3 = call i32 @llvm.bswap.i32(i32 %reg_addr)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %0, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %reg_val)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %1, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_set_phy_register_ext(ptr noundef %hw, i8 noundef zeroext %phy_select, i8 noundef zeroext %dev_addr, i1 noundef zeroext %page_change, i1 noundef zeroext %set_mdio, i8 noundef zeroext %mdio_num, i32 noundef %reg_addr, i32 noundef %reg_val, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %3 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1576) #10
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %phy_select, ptr %0, align 4
  %dev_address = getelementptr inbounds %struct.i40e_aqc_phy_register_access, ptr %0, i32 0, i32 1
  %5 = ptrtoint ptr %dev_address to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %dev_addr, ptr %dev_address, align 1
  %6 = call i32 @llvm.bswap.i32(i32 %reg_addr)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %1, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %reg_val)
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %phy_select)
  %cmp.i = icmp eq i8 %phy_select, 1
  %or.cond = and i1 %cmp.i, %set_mdio
  br i1 %or.cond, label %if.then.i, label %entry.i40e_mdio_if_number_selection.exit_crit_edge

entry.i40e_mdio_if_number_selection.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_mdio_if_number_selection.exit

if.then.i:                                        ; preds = %entry
  %flags.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 35
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %11, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool2.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool2.not.i, label %do.body.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl i8 %mdio_num, 2
  %and5.i = and i8 %shl.i, 12
  %cmd_flags.i = getelementptr inbounds %struct.i40e_aqc_phy_register_access, ptr %0, i32 0, i32 2
  %12 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cmd_flags.i, align 2
  %or.i = or i8 %and5.i, %13
  %or7.i = or i8 %or.i, 2
  store i8 %or7.i, ptr %cmd_flags.i, align 2
  br label %i40e_mdio_if_number_selection.exit

do.body.i:                                        ; preds = %if.then.i
  %debug_mask.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %14 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_mask.i, align 8
  %and9.i = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %do.body.i.i40e_mdio_if_number_selection.exit_crit_edge, label %do.end.i

do.body.i.i40e_mdio_if_number_selection.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i40e_mdio_if_number_selection.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %bus_id.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bus_id.i, align 2
  %conv13.i = zext i16 %17 to i32
  %device.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device.i, align 2
  %conv15.i = zext i16 %19 to i32
  %func.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %func.i, align 4
  %conv17.i = zext i16 %21 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i32 noundef %conv13.i, i32 noundef %conv15.i, i32 noundef %conv17.i) #13
  br label %i40e_mdio_if_number_selection.exit

i40e_mdio_if_number_selection.exit:               ; preds = %do.end.i, %do.body.i.i40e_mdio_if_number_selection.exit_crit_edge, %if.then3.i, %entry.i40e_mdio_if_number_selection.exit_crit_edge
  br i1 %page_change, label %i40e_mdio_if_number_selection.exit.if.end_crit_edge, label %if.then

i40e_mdio_if_number_selection.exit.if.end_crit_edge: ; preds = %i40e_mdio_if_number_selection.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %i40e_mdio_if_number_selection.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cmd_flags = getelementptr inbounds %struct.i40e_aqc_phy_register_access, ptr %0, i32 0, i32 2
  %22 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %cmd_flags, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %i40e_mdio_if_number_selection.exit.if.end_crit_edge
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_write_ddp(ptr noundef %hw, ptr noundef %buff, i16 noundef zeroext %buff_size, i32 noundef %track_id, ptr noundef writeonly %error_offset, ptr noundef writeonly %error_info, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 2
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %3 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 624) #10
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %buff_size)
  %cmp = icmp ugt i16 %buff_size, 512
  %spec.select.v = select i1 %cmp, i16 22, i16 20
  %spec.select = or i16 %5, %spec.select.v
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %spec.select, ptr %desc, align 4
  %7 = call i16 @llvm.bswap.i16(i16 %buff_size)
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %0, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %track_id)
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %2, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %buff, i16 noundef zeroext %buff_size, ptr noundef %cmd_details) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then8, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then8:                                         ; preds = %entry
  %tobool10.not = icmp eq ptr %error_offset, null
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %if.then11

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %error_offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %error_offset, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then8.if.end13_crit_edge
  %tobool14.not = icmp eq ptr %error_info, null
  br i1 %tobool14.not, label %if.end13.if.end18_crit_edge, label %if.then15

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %2, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %error_info to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %error_info, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge, %entry.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_get_ddp_list(ptr noundef %hw, ptr noundef %buff, i16 noundef zeroext %buff_size, i8 noundef zeroext %flags, ptr noundef %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 2
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 625) #10
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %buff_size)
  %cmp = icmp ugt i16 %buff_size, 512
  %spec.select.v = select i1 %cmp, i16 18, i16 16
  %spec.select = or i16 %4, %spec.select.v
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %spec.select, ptr %desc, align 4
  %6 = call i16 @llvm.bswap.i16(i16 %buff_size)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %flags, ptr %1, align 4
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %buff, i16 noundef zeroext %buff_size, ptr noundef %cmd_details) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @i40e_find_segment_in_package(i32 noundef %segment_type, ptr noundef readonly %pkg_hdr) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %segment_count = getelementptr inbounds %struct.i40e_package_header, ptr %pkg_hdr, i32 0, i32 1
  %0 = ptrtoint ptr %segment_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %segment_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i40e_package_header, ptr %pkg_hdr, i32 0, i32 2, i32 %i.011
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %pkg_hdr, i32 %3
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %segment_type)
  %cmp1 = icmp eq i32 %5, %segment_type
  br i1 %cmp1, label %cleanup.loopexit.split.loop.exit, label %for.cond

cleanup.loopexit.split.loop.exit:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.le = getelementptr i8, ptr %pkg_hdr, i32 %3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %add.ptr.le, %cleanup.loopexit.split.loop.exit ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @i40e_find_section_in_profile(i32 noundef %section_type, ptr noundef readonly %profile) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %profile, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp.not = icmp eq i32 %1, 17
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %device_table_count = getelementptr inbounds %struct.i40e_profile_segment, ptr %profile, i32 0, i32 3
  %2 = ptrtoint ptr %device_table_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_table_count, align 4
  %arrayidx = getelementptr %struct.i40e_profile_segment, ptr %profile, i32 0, i32 4, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, 1
  %arrayidx2 = getelementptr i32, ptr %arrayidx, i32 %add
  %section_offset = getelementptr inbounds %struct.i40e_section_table, ptr %arrayidx2, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp320.not = icmp eq i32 %7, 0
  br i1 %cmp320.not, label %do.body.cleanup_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.body.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %arrayidx4 = getelementptr [1 x i32], ptr %section_offset, i32 0, i32 %i.021
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %add.ptr = getelementptr i8, ptr %profile, i32 %9
  %section = getelementptr inbounds %struct.i40e_profile_section_header, ptr %add.ptr, i32 0, i32 2
  %10 = ptrtoint ptr %section to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %section, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %section_type)
  %cmp6 = icmp eq i32 %11, %section_type
  br i1 %cmp6, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %do.body.cleanup_crit_edge ], [ %add.ptr, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_write_profile(ptr noundef %hw, ptr noundef %profile, i32 noundef %track_id) local_unnamed_addr #0 align 64 {
entry:
  %desc.i102 = alloca %struct.i40e_aq_desc, align 4
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @i40e_validate_profile(ptr noundef %hw, ptr noundef %profile, i32 noundef %track_id, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %device_table_count = getelementptr inbounds %struct.i40e_profile_segment, ptr %profile, i32 0, i32 3
  %0 = ptrtoint ptr %device_table_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_table_count, align 4
  %arrayidx = getelementptr %struct.i40e_profile_segment, ptr %profile, i32 0, i32 4, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, 1
  %arrayidx2 = getelementptr i32, ptr %arrayidx, i32 %add
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp117.not = icmp eq i32 %5, 0
  br i1 %cmp117.not, label %do.body.cleanup_crit_edge, label %for.body.lr.ph

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.body
  %section_offset = getelementptr inbounds %struct.i40e_section_table, ptr %arrayidx2, i32 0, i32 1
  %6 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i102, i32 0, i32 2
  %7 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i102, i32 0, i32 6, i32 0, i32 1
  %8 = call i32 @llvm.bswap.i32(i32 %track_id) #10
  %9 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i102, i32 0, i32 6
  %10 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  %11 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %info.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %info.2, %for.inc.for.body_crit_edge ]
  %offset.0118 = phi i32 [ 0, %for.body.lr.ph ], [ %offset.2, %for.inc.for.body_crit_edge ]
  %arrayidx3 = getelementptr [1 x i32], ptr %section_offset, i32 0, i32 %i.0120
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3, align 4
  %add.ptr = getelementptr i8, ptr %profile, i32 %13
  %section = getelementptr inbounds %struct.i40e_profile_section_header, ptr %add.ptr, i32 0, i32 2
  %14 = ptrtoint ptr %section to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %section, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %15, label %for.body.for.inc_crit_edge [
    i32 2049, label %if.then5
    i32 2048, label %if.end34
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then5:                                         ; preds = %for.body
  %arrayidx6 = getelementptr %struct.i40e_profile_section_header, ptr %add.ptr, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %17 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx6, align 2
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext %19) #10
  %flags.i = getelementptr inbounds %struct.i40e_profile_aq_section, ptr %arrayidx6, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags.i, align 2
  %22 = call i16 @llvm.bswap.i16(i16 %21) #10
  %23 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %desc.i, align 4
  %or57.i = or i16 %24, %22
  store i16 %or57.i, ptr %desc.i, align 4
  %param.i = getelementptr inbounds %struct.i40e_profile_aq_section, ptr %arrayidx6, i32 0, i32 2
  %25 = call ptr @memcpy(ptr %10, ptr %param.i, i32 16)
  %datalen.i = getelementptr inbounds %struct.i40e_profile_aq_section, ptr %arrayidx6, i32 0, i32 3
  %26 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %datalen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i = icmp eq i16 %27, 0
  br i1 %tobool.not.i, label %if.then5.if.end17.i_crit_edge, label %if.then.i

if.then5.if.end17.i_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %27)
  %cmp.i = icmp ugt i16 %27, 512
  %spec.select.v.i = select i1 %cmp.i, i16 22, i16 20
  %spec.select.i = or i16 %spec.select.v.i, %or57.i
  %28 = ptrtoint ptr %desc.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %spec.select.i, ptr %desc.i, align 4
  %29 = call i16 @llvm.bswap.i16(i16 %27) #10
  %30 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %11, align 4
  %data.i = getelementptr inbounds %struct.i40e_profile_aq_section, ptr %arrayidx6, i32 0, i32 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then.i, %if.then5.if.end17.i_crit_edge
  %msg.0.i = phi ptr [ %data.i, %if.then.i ], [ null, %if.then5.if.end17.i_crit_edge ]
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %msg.0.i, i16 noundef zeroext %27, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool18.not.i, label %if.end28.thread, label %do.body.i

do.body.i:                                        ; preds = %if.end17.i
  %debug_mask.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %31 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug_mask.i, align 8
  %and.i = and i32 %32, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool20.not.i, label %do.body.i.do.body10_crit_edge, label %do.end.i

do.body.i.do.body10_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %33 = ptrtoint ptr %bus_id.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %bus_id.i, align 2
  %conv23.i = zext i16 %34 to i32
  %device.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %35 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %device.i, align 2
  %conv25.i = zext i16 %36 to i32
  %func.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %37 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %func.i, align 4
  %conv27.i = zext i16 %38 to i32
  %39 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx6, align 2
  %conv29.i = zext i16 %40 to i32
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, i32 noundef %conv23.i, i32 noundef %conv25.i, i32 noundef %conv27.i, i32 noundef %conv29.i, i32 noundef %call.i) #13
  br label %do.body10

do.body10:                                        ; preds = %do.end.i, %do.body.i.do.body10_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  %41 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %debug_mask.i, align 8
  %and = and i32 %42, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body10.cleanup_crit_edge, label %do.end15

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end15:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %43 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %bus_id, align 2
  %conv = zext i16 %44 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %45 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %device, align 2
  %conv17 = zext i16 %46 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %47 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %func, align 4
  %conv19 = zext i16 %48 to i32
  %49 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx6, align 2
  %conv20 = zext i16 %50 to i32
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %conv, i32 noundef %conv17, i32 noundef %conv19, i32 noundef %i.0120, i32 noundef %conv20) #13
  br label %cleanup

if.end28.thread:                                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = call ptr @memcpy(ptr %param.i, ptr %10, i32 16)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  %52 = ptrtoint ptr %section to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 6145, ptr %section, align 4
  br label %for.inc

if.end34:                                         ; preds = %for.body
  %size = getelementptr inbounds %struct.anon.221, ptr %section, i32 0, i32 2
  %53 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size, align 4
  %55 = trunc i32 %54 to i16
  %conv37 = add i16 %55, 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i102) #10
  %56 = call ptr @memset(ptr %desc.i102, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i102, i16 noundef zeroext 624) #10
  %57 = ptrtoint ptr %desc.i102 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %desc.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %conv37)
  %cmp.i103 = icmp ugt i16 %conv37, 512
  %spec.select.v.i104 = select i1 %cmp.i103, i16 22, i16 20
  %spec.select.i105 = or i16 %58, %spec.select.v.i104
  %59 = ptrtoint ptr %desc.i102 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %spec.select.i105, ptr %desc.i102, align 4
  %60 = call i16 @llvm.bswap.i16(i16 %conv37) #10
  %61 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %6, align 4
  %62 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %8, ptr %7, align 4
  %call.i106 = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i102, ptr noundef %add.ptr, i16 noundef zeroext %conv37, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool.not.i107 = icmp eq i32 %call.i106, 0
  br i1 %tobool.not.i107, label %i40e_aq_write_ddp.exit.thread, label %do.body41

i40e_aq_write_ddp.exit.thread:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %9, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64) #10
  %66 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %7, align 4
  %68 = call i32 @llvm.bswap.i32(i32 %67) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i102) #10
  br label %for.inc

do.body41:                                        ; preds = %if.end34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i102) #10
  %debug_mask42 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %69 = ptrtoint ptr %debug_mask42 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %debug_mask42, align 8
  %and43 = and i32 %70, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body41.cleanup_crit_edge, label %do.end48

do.body41.cleanup_crit_edge:                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end48:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id51 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %71 = ptrtoint ptr %bus_id51 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %bus_id51, align 2
  %conv52 = zext i16 %72 to i32
  %device54 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %73 = ptrtoint ptr %device54 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %device54, align 2
  %conv55 = zext i16 %74 to i32
  %func57 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %75 = ptrtoint ptr %func57 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %func57, align 4
  %conv58 = zext i16 %76 to i32
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef %conv52, i32 noundef %conv55, i32 noundef %conv58, i32 noundef %i.0120, i32 noundef %offset.0118, i32 noundef %info.0119) #13
  br label %cleanup

for.inc:                                          ; preds = %i40e_aq_write_ddp.exit.thread, %if.end28.thread, %for.body.for.inc_crit_edge
  %offset.2 = phi i32 [ %offset.0118, %if.end28.thread ], [ %65, %i40e_aq_write_ddp.exit.thread ], [ %offset.0118, %for.body.for.inc_crit_edge ]
  %info.2 = phi i32 [ %info.0119, %if.end28.thread ], [ %68, %i40e_aq_write_ddp.exit.thread ], [ %info.0119, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0120, 1
  %77 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx2, align 4
  %cmp = icmp ult i32 %inc, %78
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end48, %do.body41.cleanup_crit_edge, %do.end15, %do.body10.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i, %do.end15 ], [ %call.i, %do.body10.cleanup_crit_edge ], [ %call.i106, %do.end48 ], [ %call.i106, %do.body41.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_validate_profile(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %profile, i32 noundef %track_id, i1 noundef zeroext %rollback) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %track_id)
  %cmp = icmp eq i32 %track_id, -1
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %0 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_mask, align 8
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %entry
  %device_table_count = getelementptr inbounds %struct.i40e_profile_segment, ptr %profile, i32 0, i32 3
  %2 = ptrtoint ptr %device_table_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_table_count, align 4
  %device_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10179.not = icmp eq i32 %3, 0
  br i1 %cmp10179.not, label %if.end9.do.body49_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.do.body49_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9.for.body_crit_edge
  %i.0180 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i40e_profile_segment, ptr %profile, i32 0, i32 4, i32 %i.0180
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %shr.mask = and i32 %5, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2138701824, i32 %shr.mask)
  %cmp13 = icmp eq i32 %shr.mask, -2138701824
  br i1 %cmp13, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %6 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device_id, align 8
  %8 = trunc i32 %5 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %8)
  %cmp17 = icmp eq i16 %7, %8
  br i1 %cmp17, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0180, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %3, %for.inc.for.end_crit_edge ], [ %i.0180, %land.lhs.true.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %3)
  %cmp23 = icmp eq i32 %i.0.lcssa, %3
  br i1 %cmp23, label %do.body26, label %for.end.do.body49_crit_edge

for.end.do.body49_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

do.body26:                                        ; preds = %for.end
  %debug_mask27 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %9 = ptrtoint ptr %debug_mask27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask27, align 8
  %and28 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body26.cleanup_crit_edge, label %do.body26.cleanup.sink.split_crit_edge

do.body26.cleanup.sink.split_crit_edge:           ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body49:                                        ; preds = %for.end.do.body49_crit_edge, %if.end9.do.body49_crit_edge
  %arrayidx52 = getelementptr %struct.i40e_profile_segment, ptr %profile, i32 0, i32 4, i32 %3
  %11 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx52, align 4
  %add = add i32 %12, 1
  %arrayidx54 = getelementptr i32, ptr %arrayidx52, i32 %add
  %13 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp58183.not = icmp eq i32 %14, 0
  br i1 %cmp58183.not, label %do.body49.cleanup_crit_edge, label %for.body60.lr.ph

do.body49.cleanup_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body60.lr.ph:                                 ; preds = %do.body49
  %section_offset = getelementptr inbounds %struct.i40e_section_table, ptr %arrayidx54, i32 0, i32 1
  br label %for.body60

for.body60:                                       ; preds = %for.inc133.for.body60_crit_edge, %for.body60.lr.ph
  %i.1184 = phi i32 [ 0, %for.body60.lr.ph ], [ %inc134, %for.inc133.for.body60_crit_edge ]
  %arrayidx61 = getelementptr [1 x i32], ptr %section_offset, i32 0, i32 %i.1184
  %15 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx61, align 4
  %add.ptr = getelementptr i8, ptr %profile, i32 %16
  %section = getelementptr inbounds %struct.i40e_profile_section_header, ptr %add.ptr, i32 0, i32 2
  %17 = ptrtoint ptr %section to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %section, align 4
  br i1 %rollback, label %if.then63, label %if.else

if.then63:                                        ; preds = %for.body60
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %18, label %if.then63.for.inc133_crit_edge [
    i32 2048, label %if.then63.do.body76_crit_edge
    i32 2049, label %if.then63.do.body76_crit_edge190
    i32 6145, label %if.then63.do.body76_crit_edge191
  ]

if.then63.do.body76_crit_edge191:                 ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body76

if.then63.do.body76_crit_edge190:                 ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body76

if.then63.do.body76_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body76

if.then63.for.inc133_crit_edge:                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc133

do.body76:                                        ; preds = %if.then63.do.body76_crit_edge, %if.then63.do.body76_crit_edge190, %if.then63.do.body76_crit_edge191
  %debug_mask77 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %20 = ptrtoint ptr %debug_mask77 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug_mask77, align 8
  %and78 = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %do.body76.cleanup_crit_edge, label %do.body76.cleanup.sink.split_crit_edge

do.body76.cleanup.sink.split_crit_edge:           ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body76.cleanup_crit_edge:                      ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %for.body60
  %22 = and i32 %18, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %22)
  %switch = icmp eq i32 %22, 6144
  br i1 %switch, label %do.body109, label %if.else.for.inc133_crit_edge

if.else.for.inc133_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc133

do.body109:                                       ; preds = %if.else
  %debug_mask110 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %23 = ptrtoint ptr %debug_mask110 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_mask110, align 8
  %and111 = and i32 %24, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %do.body109.cleanup_crit_edge, label %do.body109.cleanup.sink.split_crit_edge

do.body109.cleanup.sink.split_crit_edge:          ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body109.cleanup_crit_edge:                     ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc133:                                       ; preds = %if.else.for.inc133_crit_edge, %if.then63.for.inc133_crit_edge
  %inc134 = add nuw i32 %i.1184, 1
  %exitcond185.not = icmp eq i32 %inc134, %14
  br i1 %exitcond185.not, label %for.inc133.cleanup_crit_edge, label %for.inc133.for.body60_crit_edge

for.inc133.for.body60_crit_edge:                  ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body60

for.inc133.cleanup_crit_edge:                     ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body109.cleanup.sink.split_crit_edge, %do.body76.cleanup.sink.split_crit_edge, %do.body26.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %.str.169.sink = phi ptr [ @.str.160, %do.body.cleanup.sink.split_crit_edge ], [ @.str.163, %do.body26.cleanup.sink.split_crit_edge ], [ @.str.166, %do.body76.cleanup.sink.split_crit_edge ], [ @.str.169, %do.body109.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -64, %do.body.cleanup.sink.split_crit_edge ], [ -11, %do.body26.cleanup.sink.split_crit_edge ], [ -64, %do.body76.cleanup.sink.split_crit_edge ], [ -64, %do.body109.cleanup.sink.split_crit_edge ]
  %bus_id119 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %25 = ptrtoint ptr %bus_id119 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %bus_id119, align 2
  %conv120 = zext i16 %26 to i32
  %device122 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %27 = ptrtoint ptr %device122 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %device122, align 2
  %conv123 = zext i16 %28 to i32
  %func125 = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %29 = ptrtoint ptr %func125 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %func125, align 4
  %conv126 = zext i16 %30 to i32
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.169.sink, i32 noundef %conv120, i32 noundef %conv123, i32 noundef %conv126) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc133.cleanup_crit_edge, %do.body109.cleanup_crit_edge, %do.body76.cleanup_crit_edge, %do.body49.cleanup_crit_edge, %do.body26.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -64, %do.body.cleanup_crit_edge ], [ -11, %do.body26.cleanup_crit_edge ], [ -64, %do.body76.cleanup_crit_edge ], [ -64, %do.body109.cleanup_crit_edge ], [ 0, %do.body49.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %for.inc133.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_rollback_profile(ptr noundef %hw, ptr noundef %profile, i32 noundef %track_id) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @i40e_validate_profile(ptr noundef %hw, ptr noundef %profile, i32 noundef %track_id, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %device_table_count = getelementptr inbounds %struct.i40e_profile_segment, ptr %profile, i32 0, i32 3
  %0 = ptrtoint ptr %device_table_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_table_count, align 4
  %arrayidx = getelementptr %struct.i40e_profile_segment, ptr %profile, i32 0, i32 4, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, 1
  %arrayidx2 = getelementptr i32, ptr %arrayidx, i32 %add
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %i.059 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.059)
  %cmp60 = icmp sgt i32 %i.059, -1
  br i1 %cmp60, label %for.body.lr.ph, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.body
  %section_offset = getelementptr inbounds %struct.i40e_section_table, ptr %arrayidx2, i32 0, i32 1
  %6 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %8 = call i32 @llvm.bswap.i32(i32 %track_id) #10
  %9 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.063 = phi i32 [ %i.059, %for.body.lr.ph ], [ %i.0, %for.inc.for.body_crit_edge ]
  %info.062 = phi i32 [ 0, %for.body.lr.ph ], [ %info.2, %for.inc.for.body_crit_edge ]
  %offset.061 = phi i32 [ 0, %for.body.lr.ph ], [ %offset.2, %for.inc.for.body_crit_edge ]
  %arrayidx3 = getelementptr [1 x i32], ptr %section_offset, i32 0, i32 %i.063
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  %add.ptr = getelementptr i8, ptr %profile, i32 %11
  %section = getelementptr inbounds %struct.i40e_profile_section_header, ptr %add.ptr, i32 0, i32 2
  %12 = ptrtoint ptr %section to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %section, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %13)
  %cmp4.not = icmp eq i32 %13, 6144
  br i1 %cmp4.not, label %if.end6, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %size = getelementptr inbounds %struct.anon.221, ptr %section, i32 0, i32 2
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %16 = trunc i32 %15 to i16
  %conv = add i16 %16, 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %17 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 624) #10
  %18 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %desc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %conv)
  %cmp.i = icmp ugt i16 %conv, 512
  %spec.select.v.i = select i1 %cmp.i, i16 22, i16 20
  %spec.select.i = or i16 %19, %spec.select.v.i
  %20 = ptrtoint ptr %desc.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %spec.select.i, ptr %desc.i, align 4
  %21 = call i16 @llvm.bswap.i16(i16 %conv) #10
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %6, align 4
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %8, ptr %7, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %add.ptr, i16 noundef zeroext %conv, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %i40e_aq_write_ddp.exit.thread, label %do.body12

i40e_aq_write_ddp.exit.thread:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %9, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #10
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %7, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  br label %for.inc

do.body12:                                        ; preds = %if.end6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  %debug_mask = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %30 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_mask, align 8
  %and = and i32 %31, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body12.cleanup_crit_edge, label %do.end17

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end17:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %bus_id = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %32 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %bus_id, align 2
  %conv18 = zext i16 %33 to i32
  %device = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %device, align 2
  %conv20 = zext i16 %35 to i32
  %func = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %func, align 4
  %conv22 = zext i16 %37 to i32
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %conv22, i32 noundef %i.063, i32 noundef %offset.061, i32 noundef %info.062) #13
  br label %cleanup

for.inc:                                          ; preds = %i40e_aq_write_ddp.exit.thread, %for.body.for.inc_crit_edge
  %offset.2 = phi i32 [ %offset.061, %for.body.for.inc_crit_edge ], [ %26, %i40e_aq_write_ddp.exit.thread ]
  %info.2 = phi i32 [ %info.062, %for.body.for.inc_crit_edge ], [ %29, %i40e_aq_write_ddp.exit.thread ]
  %i.0 = add i32 %i.063, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end17, %do.body12.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i, %do.end17 ], [ %call.i, %do.body12.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_add_pinfo_to_list(ptr noundef %hw, ptr nocapture noundef readonly %profile, ptr noundef %profile_info_sec, i32 noundef %track_id) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %profile_info_sec to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %profile_info_sec, align 4
  %data_end = getelementptr inbounds %struct.i40e_profile_section_header, ptr %profile_info_sec, i32 0, i32 1
  %1 = ptrtoint ptr %data_end to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 64, ptr %data_end, align 2
  %section = getelementptr inbounds %struct.i40e_profile_section_header, ptr %profile_info_sec, i32 0, i32 2
  %2 = ptrtoint ptr %section to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %section, align 4
  %offset2 = getelementptr inbounds %struct.i40e_profile_section_header, ptr %profile_info_sec, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %offset2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16, ptr %offset2, align 4
  %size = getelementptr inbounds %struct.i40e_profile_section_header, ptr %profile_info_sec, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 48, ptr %size, align 4
  %add.ptr = getelementptr i8, ptr %profile_info_sec, i32 16
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %track_id, ptr %add.ptr, align 4
  %version = getelementptr i8, ptr %profile_info_sec, i32 20
  %version7 = getelementptr inbounds %struct.i40e_profile_segment, ptr %profile, i32 0, i32 1
  %6 = ptrtoint ptr %version7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version7, align 4
  %8 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %version, align 4
  %op = getelementptr i8, ptr %profile_info_sec, i32 24
  %9 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %op, align 4
  %name = getelementptr i8, ptr %profile_info_sec, i32 32
  %name8 = getelementptr inbounds %struct.i40e_profile_segment, ptr %profile, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %name, ptr %name8, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #10
  %11 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %13 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 624) #10
  %14 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %desc.i, align 4
  %spec.select.i = or i16 %15, 20
  store i16 %spec.select.i, ptr %desc.i, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 16384, ptr %11, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %track_id) #10
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %12, align 4
  %call.i = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %profile_info_sec, i16 noundef zeroext 64, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_add_cloud_filters(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %filters, i8 noundef zeroext %filter_count) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 2
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 604) #10
  %conv = zext i8 %filter_count to i16
  %mul = shl nuw nsw i16 %conv, 6
  %3 = call i16 @llvm.bswap.i16(i16 %mul)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %0, align 4
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %desc, align 4
  %7 = or i16 %6, 20
  store i16 %7, ptr %desc, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %filter_count, ptr %1, align 4
  %9 = call i16 @llvm.bswap.i16(i16 %seid)
  %seid4 = getelementptr inbounds %struct.i40e_aqc_add_remove_cloud_filters, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %seid4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %seid4, align 2
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %filters, i16 noundef zeroext %mul, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_add_cloud_filters_bb(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %filters, i8 noundef zeroext %filter_count) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 2
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %3 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 604) #10
  %conv = zext i8 %filter_count to i32
  %conv.tr = zext i8 %filter_count to i16
  %conv1 = shl nuw nsw i16 %conv.tr, 7
  %4 = call i16 @llvm.bswap.i16(i16 %conv1)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %0, align 4
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %desc, align 4
  %8 = or i16 %7, 20
  store i16 %8, ptr %desc, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %filter_count, ptr %1, align 4
  %10 = call i16 @llvm.bswap.i16(i16 %seid)
  %seid4 = getelementptr inbounds %struct.i40e_aqc_add_remove_cloud_filters, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %seid4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %seid4, align 2
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %filter_count)
  %cmp30.not = icmp eq i8 %filter_count, 0
  br i1 %cmp30.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i40e_aqc_cloud_filters_element_bb, ptr %filters, i32 %i.031
  %flags7 = getelementptr inbounds %struct.i40e_aqc_cloud_filters_element_data, ptr %arrayidx, i32 0, i32 4
  %13 = ptrtoint ptr %flags7 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags7, align 2
  %15 = and i16 %14, 30
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %15)
  %cmp11 = icmp eq i16 %15, 4
  br i1 %cmp11, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %tenant_id = getelementptr inbounds %struct.i40e_aqc_cloud_filters_element_data, ptr %arrayidx, i32 0, i32 5
  %16 = ptrtoint ptr %tenant_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tenant_id, align 4
  %18 = lshr i32 %17, 8
  store i32 %18, ptr %tenant_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %filters, i16 noundef zeroext %conv1, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_rem_cloud_filters(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %filters, i8 noundef zeroext %filter_count) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 2
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 605) #10
  %conv = zext i8 %filter_count to i16
  %mul = shl nuw nsw i16 %conv, 6
  %3 = call i16 @llvm.bswap.i16(i16 %mul)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %0, align 4
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %desc, align 4
  %7 = or i16 %6, 20
  store i16 %7, ptr %desc, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %filter_count, ptr %1, align 4
  %9 = call i16 @llvm.bswap.i16(i16 %seid)
  %seid4 = getelementptr inbounds %struct.i40e_aqc_add_remove_cloud_filters, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %seid4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %seid4, align 2
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %filters, i16 noundef zeroext %mul, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_aq_rem_cloud_filters_bb(ptr noundef %hw, i16 noundef zeroext %seid, ptr noundef %filters, i8 noundef zeroext %filter_count) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.i40e_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 2
  %1 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6
  %2 = getelementptr inbounds %struct.i40e_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %3 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @i40e_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 605) #10
  %conv = zext i8 %filter_count to i32
  %conv.tr = zext i8 %filter_count to i16
  %conv1 = shl nuw nsw i16 %conv.tr, 7
  %4 = call i16 @llvm.bswap.i16(i16 %conv1)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %0, align 4
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %desc, align 4
  %8 = or i16 %7, 20
  store i16 %8, ptr %desc, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %filter_count, ptr %1, align 4
  %10 = call i16 @llvm.bswap.i16(i16 %seid)
  %seid4 = getelementptr inbounds %struct.i40e_aqc_add_remove_cloud_filters, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %seid4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %seid4, align 2
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %filter_count)
  %cmp30.not = icmp eq i8 %filter_count, 0
  br i1 %cmp30.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i40e_aqc_cloud_filters_element_bb, ptr %filters, i32 %i.031
  %flags7 = getelementptr inbounds %struct.i40e_aqc_cloud_filters_element_data, ptr %arrayidx, i32 0, i32 4
  %13 = ptrtoint ptr %flags7 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags7, align 2
  %15 = and i16 %14, 30
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %15)
  %cmp11 = icmp eq i16 %15, 4
  br i1 %cmp11, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %tenant_id = getelementptr inbounds %struct.i40e_aqc_cloud_filters_element_data, ptr %arrayidx, i32 0, i32 5
  %16 = ptrtoint ptr %tenant_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tenant_id, align 4
  %18 = lshr i32 %17, 8
  store i32 %18, ptr %tenant_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %call = call i32 @i40e_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %filters, i16 noundef zeroext %conv1, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_acquire_nvm(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_release_nvm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 183)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 183)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !211, !213, !215, !216, !217, !219, !220, !222, !223, !225, !226, !228, !229, !231, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247, !248, !249, !251, !252, !253, !254, !256, !257, !258, !259, !261, !262, !263, !264, !266, !267, !268, !269, !271, !272, !273, !275, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !312, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !328, !330, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !349}
!llvm.module.flags = !{!350, !351, !352, !353, !354, !355, !356, !357}
!llvm.ident = !{!358}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 60, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @i40e_set_mac_type.__UNIQUE_ID_ddebug676, !1, !"__UNIQUE_ID_ddebug676", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 74, i32 10}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 76, i32 10}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 78, i32 10}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 80, i32 10}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 82, i32 10}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 84, i32 10}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 86, i32 10}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 88, i32 10}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 90, i32 10}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 92, i32 10}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 94, i32 10}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 96, i32 10}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 98, i32 10}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 100, i32 10}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 102, i32 10}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 104, i32 10}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 106, i32 10}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 108, i32 10}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 110, i32 10}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 112, i32 10}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 114, i32 10}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 116, i32 10}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 118, i32 10}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 121, i32 45}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 136, i32 10}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 138, i32 10}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 140, i32 10}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 142, i32 10}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 144, i32 10}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 146, i32 10}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 148, i32 10}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 150, i32 10}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 152, i32 10}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 154, i32 10}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 156, i32 10}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 158, i32 10}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 160, i32 10}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 162, i32 10}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 164, i32 10}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 166, i32 10}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 168, i32 10}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 170, i32 10}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 172, i32 10}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 174, i32 10}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 176, i32 10}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 178, i32 10}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 180, i32 10}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 182, i32 10}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 184, i32 10}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 186, i32 10}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 188, i32 10}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 190, i32 10}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 192, i32 10}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 194, i32 10}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 196, i32 10}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 198, i32 10}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 200, i32 10}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 202, i32 10}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 204, i32 10}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 206, i32 10}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 208, i32 10}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 210, i32 10}
!130 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 212, i32 10}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 214, i32 10}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 216, i32 10}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 218, i32 10}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 220, i32 10}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 222, i32 10}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 224, i32 10}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 226, i32 10}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 228, i32 10}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 230, i32 10}
!150 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 232, i32 10}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 234, i32 10}
!154 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 236, i32 10}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 238, i32 10}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 240, i32 10}
!160 = !{ptr @.str.81, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 242, i32 10}
!162 = !{ptr @.str.82, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 244, i32 10}
!164 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 246, i32 10}
!166 = !{ptr @.str.84, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 248, i32 10}
!168 = !{ptr @.str.85, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 250, i32 10}
!170 = !{ptr @.str.86, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 252, i32 10}
!172 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 254, i32 10}
!174 = !{ptr @.str.88, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 256, i32 10}
!176 = !{ptr @.str.89, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 258, i32 10}
!178 = !{ptr @.str.90, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 260, i32 10}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 262, i32 10}
!182 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 264, i32 10}
!184 = !{ptr @.str.93, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 266, i32 10}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 297, i32 2}
!188 = !{ptr @.str.95, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @i40e_debug_aq._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @i40e_debug_aq._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.97, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 303, i32 2}
!193 = !{ptr @i40e_debug_aq._entry.96, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @i40e_debug_aq._entry_ptr.98, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.100, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 307, i32 2}
!197 = !{ptr @i40e_debug_aq._entry.99, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @i40e_debug_aq._entry_ptr.101, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.103, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 311, i32 2}
!201 = !{ptr @i40e_debug_aq._entry.102, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @i40e_debug_aq._entry_ptr.104, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.106, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 318, i32 3}
!205 = !{ptr @i40e_debug_aq._entry.105, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @i40e_debug_aq._entry_ptr.107, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.108, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 323, i32 5}
!209 = !{ptr @.str.109, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 328, i32 18}
!211 = !{ptr @i40e_ptype_lookup, !212, !"i40e_ptype_lookup", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 576, i32 30}
!213 = !{ptr @.str.110, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 984, i32 3}
!215 = !{ptr @.str.111, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @i40e_read_pba_string.__UNIQUE_ID_ddebug677, !214, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!217 = !{ptr @.str.112, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 990, i32 3}
!219 = !{ptr @i40e_read_pba_string.__UNIQUE_ID_ddebug678, !218, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!220 = !{ptr @.str.113, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 996, i32 3}
!222 = !{ptr @i40e_read_pba_string.__UNIQUE_ID_ddebug679, !221, !"__UNIQUE_ID_ddebug679", i1 false, i1 false}
!223 = !{ptr @.str.114, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 1005, i32 3}
!225 = !{ptr @i40e_read_pba_string.__UNIQUE_ID_ddebug680, !224, !"__UNIQUE_ID_ddebug680", i1 false, i1 false}
!226 = !{ptr @.str.115, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 1012, i32 4}
!228 = !{ptr @i40e_read_pba_string.__UNIQUE_ID_ddebug681, !227, !"__UNIQUE_ID_ddebug681", i1 false, i1 false}
!229 = !{ptr @.str.116, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 1142, i32 3}
!231 = !{ptr @.str.117, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @i40e_pf_reset.__UNIQUE_ID_ddebug684, !230, !"__UNIQUE_ID_ddebug684", i1 false, i1 false}
!233 = !{ptr @.str.118, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 1153, i32 4}
!235 = !{ptr @i40e_pf_reset.__UNIQUE_ID_ddebug685, !234, !"__UNIQUE_ID_ddebug685", i1 false, i1 false}
!236 = !{ptr @.str.119, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 1160, i32 3}
!238 = !{ptr @i40e_pf_reset.__UNIQUE_ID_ddebug686, !237, !"__UNIQUE_ID_ddebug686", i1 false, i1 false}
!239 = !{ptr @.str.120, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 1161, i32 3}
!241 = !{ptr @i40e_pf_reset.__UNIQUE_ID_ddebug687, !240, !"__UNIQUE_ID_ddebug687", i1 false, i1 false}
!242 = !{ptr @.str.121, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 1190, i32 4}
!244 = !{ptr @i40e_pf_reset.__UNIQUE_ID_ddebug688, !243, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!245 = !{ptr @.str.122, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 1401, i32 3}
!247 = !{ptr @.str.123, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @i40e_led_set.__UNIQUE_ID_ddebug689, !246, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!249 = !{ptr @.str.124, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 2469, i32 4}
!251 = !{ptr @.str.125, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @i40e_get_link_status._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @i40e_get_link_status._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.126, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 3642, i32 3}
!256 = !{ptr @.str.127, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @i40e_aq_restore_lldp._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @i40e_aq_restore_lldp._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.128, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 3687, i32 4}
!261 = !{ptr @.str.129, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @i40e_aq_stop_lldp._entry, !260, !"_entry", i1 false, i1 false}
!263 = !{ptr @i40e_aq_stop_lldp._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.130, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 3720, i32 4}
!266 = !{ptr @.str.131, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @i40e_aq_start_lldp._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @i40e_aq_start_lldp._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.132, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 4363, i32 3}
!271 = !{ptr @.str.133, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @i40e_add_filter_to_drop_tx_flow_control_frames.__UNIQUE_ID_ddebug690, !270, !"__UNIQUE_ID_ddebug690", i1 false, i1 false}
!273 = !{ptr @.str.134, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 4663, i32 3}
!275 = !{ptr @.str.135, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @i40e_read_phy_register_clause22._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @i40e_read_phy_register_clause22._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.136, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 4751, i32 3}
!280 = !{ptr @i40e_read_phy_register_clause45._entry, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @i40e_read_phy_register_clause45._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.138, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 4780, i32 3}
!284 = !{ptr @i40e_read_phy_register_clause45._entry.137, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @i40e_read_phy_register_clause45._entry_ptr.139, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.140, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 4824, i32 3}
!288 = !{ptr @i40e_write_phy_register_clause45._entry, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @i40e_write_phy_register_clause45._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.141, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 5730, i32 5}
!292 = !{ptr @.str.142, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @i40e_write_profile._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @i40e_write_profile._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.144, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 5749, i32 4}
!297 = !{ptr @i40e_write_profile._entry.143, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @i40e_write_profile._entry_ptr.145, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.146, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 5800, i32 4}
!301 = !{ptr @i40e_rollback_profile._entry, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @i40e_rollback_profile._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.147, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 1100, i32 2}
!305 = !{ptr @.str.148, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @i40e_poll_globr.__UNIQUE_ID_ddebug682, !304, !"__UNIQUE_ID_ddebug682", i1 false, i1 false}
!307 = !{ptr @.str.149, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 1101, i32 2}
!309 = !{ptr @i40e_poll_globr.__UNIQUE_ID_ddebug683, !308, !"__UNIQUE_ID_ddebug683", i1 false, i1 false}
!310 = !{ptr @.str.150, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 3158, i32 5}
!312 = !{ptr @.str.151, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @i40e_parse_discover_capabilities._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @i40e_parse_discover_capabilities._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.153, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 3227, i32 4}
!317 = !{ptr @i40e_parse_discover_capabilities._entry.152, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @i40e_parse_discover_capabilities._entry_ptr.154, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.156, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 3297, i32 3}
!321 = !{ptr @i40e_parse_discover_capabilities._entry.155, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @i40e_parse_discover_capabilities._entry_ptr.157, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.158, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 5334, i32 4}
!325 = !{ptr @.str.159, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @i40e_mdio_if_number_selection._entry, !324, !"_entry", i1 false, i1 false}
!327 = !{ptr @i40e_mdio_if_number_selection._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.160, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 5651, i32 3}
!330 = !{ptr @.str.161, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @i40e_validate_profile._entry, !329, !"_entry", i1 false, i1 false}
!332 = !{ptr @i40e_validate_profile._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.163, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 5663, i32 3}
!335 = !{ptr @i40e_validate_profile._entry.162, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @i40e_validate_profile._entry_ptr.164, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.166, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 5678, i32 5}
!339 = !{ptr @i40e_validate_profile._entry.165, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @i40e_validate_profile._entry_ptr.167, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.169, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 5685, i32 5}
!343 = !{ptr @i40e_validate_profile._entry.168, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @i40e_validate_profile._entry_ptr.170, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.171, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/ethernet/intel/i40e/i40e_common.c", i32 5617, i32 3}
!347 = !{ptr @.str.172, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @i40e_ddp_exec_aq_section._entry, !346, !"_entry", i1 false, i1 false}
!349 = !{ptr @i40e_ddp_exec_aq_section._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!350 = !{i32 1, !"wchar_size", i32 2}
!351 = !{i32 1, !"min_enum_size", i32 4}
!352 = !{i32 8, !"branch-target-enforcement", i32 0}
!353 = !{i32 8, !"sign-return-address", i32 0}
!354 = !{i32 8, !"sign-return-address-all", i32 0}
!355 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!356 = !{i32 7, !"uwtable", i32 1}
!357 = !{i32 7, !"frame-pointer", i32 2}
!358 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!359 = !{i64 2149236712, i64 2149236717, i64 2149236730, i64 2149236774, i64 2149236808, i64 2149236829}
!360 = !{i64 6336706}
!361 = !{i64 2160451925}
!362 = !{i64 2160562018}
!363 = !{i64 2160562702}
!364 = !{i64 2160563383}
!365 = !{i64 2160565147}
!366 = !{i64 2160565801}
!367 = !{i64 6336288}
!368 = !{i64 2160585602}
!369 = !{i64 2160586286}
!370 = !{i64 2160589752}
!371 = !{i64 2160598711}
!372 = !{i64 2160599150}
!373 = !{i64 2160600040}
!374 = !{i64 2160600716}
!375 = !{i64 2160579866}
!376 = !{i64 2160622971}
!377 = !{i64 2160614900}
!378 = !{i64 2160604215}
!379 = !{i64 2160604993}
!380 = !{i64 2160605849}
!381 = !{i64 2160606404}
!382 = !{i64 2160606961}
!383 = !{i64 2160607487}
!384 = !{i64 2160608048}
!385 = !{i64 2160608624}
!386 = !{i64 2160609201}
!387 = !{i64 2160610165}
!388 = !{i64 2160610719}
!389 = !{i64 2160611844}
!390 = !{i64 2160612407}
!391 = !{i64 2160612970}
!392 = !{i64 2160613533}
!393 = !{i8 0, i8 2}
!394 = !{i64 2160617218}
!395 = !{i64 2160621327}
!396 = !{!"auto-init"}
!397 = !{i64 2160670607}
!398 = !{i64 2160707485}
!399 = !{i64 2160708014}
!400 = !{i64 2160679147}
!401 = !{i64 2160680124}
!402 = !{i64 2160683774}
!403 = !{i64 2160684251}
!404 = !{i64 2160685130}
!405 = !{i64 2160686107}
!406 = !{i64 2160687458}
!407 = !{i64 2160688435}
!408 = !{i64 2160691530}
!409 = !{i64 2160692507}
!410 = !{i64 2160693325}
!411 = !{i64 2160696509}
!412 = !{i64 2160697486}
!413 = !{i64 2160700240}
!414 = !{i64 2160701206}
!415 = !{i64 2160702183}
!416 = !{i64 2160703113}
!417 = !{i64 2160703719}
!418 = !{i64 2160706509}
!419 = !{i64 2160704670}
!420 = !{i64 2160705584}
