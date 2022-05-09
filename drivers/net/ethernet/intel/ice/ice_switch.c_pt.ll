; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_switch.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_switch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ice_dummy_pkt_offsets = type { i32, i16 }
%struct.ice_protocol_entry = type { i32, i8 }
%struct.ice_prot_ext_tbl_entry = type { i32, [40 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.202, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.16 }
%union.anon.16 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.202 = type { ptr }
%struct.ice_sw_recipe = type { i8, i8, i8, i8, [20 x %struct.ice_fv_word], [20 x i16], i8, i8, i8, [2 x i32], i32, i8, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, [2 x i32], i8, %struct.list_head, ptr, %struct.ice_prot_lkup_ext }
%struct.ice_fv_word = type <{ i8, i16, i8 }>
%struct.ice_prot_lkup_ext = type { i16, i8, [20 x i16], [20 x i16], [20 x %struct.ice_fv_word], [1 x i32] }
%struct.ice_hw = type { ptr, ptr, ptr, ptr, i32, i64, i32, i16, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, [9 x i16], %struct.list_head, [768 x ptr], i8, i8, %struct.ice_bus_info, %struct.ice_flash_info, %struct.ice_hw_dev_caps, %struct.ice_hw_func_caps, ptr, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ice_fw_log_cfg, i8, i8, i8, %struct.ice_pkg_ver, i32, [32 x i8], i8, %struct.ice_pkg_ver, [32 x i8], %struct.ice_pkg_ver, [28 x i8], ptr, ptr, i32, %struct.mutex, %struct.ice_tunnel_table, %struct.udp_tunnel_nic_shared, %struct.udp_tunnel_nic_info, [5 x %struct.ice_blk_info], [5 x %struct.mutex], [5 x %struct.list_head], i32, %struct.mutex, %struct.list_head, [28 x i16], ptr, [1 x i32], %struct.mutex, %struct.list_head, %struct.ice_mbx_snapshot, [32 x i32], i16 }
%struct.ice_bus_info = type { i16, i8 }
%struct.ice_flash_info = type { %struct.ice_orom_info, %struct.ice_nvm_info, %struct.ice_netlist_info, %struct.ice_bank_info, i16, i32, i8 }
%struct.ice_orom_info = type { i8, i8, i16 }
%struct.ice_nvm_info = type { i32, i8, i8 }
%struct.ice_netlist_info = type { i32, i32, i32, i32, i32, i16 }
%struct.ice_bank_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_hw_dev_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, %struct.ice_ts_dev_info, i32 }
%struct.ice_hw_common_caps = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_ts_dev_info = type { i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ice_hw_func_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, i32, i32, %struct.ice_ts_func_info }
%struct.ice_ts_func_info = type { i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_ctl_q_info = type { i32, %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring, i32, i16, i16, i16, i16, i32, %struct.mutex, %struct.mutex }
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.1, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.1 = type { ptr }
%struct.ice_fw_log_cfg = type { i8, i8, [27 x %struct.ice_fw_log_evnt] }
%struct.ice_fw_log_evnt = type { i8 }
%struct.ice_pkg_ver = type { i8, i8, i8, i8 }
%struct.ice_tunnel_table = type { [16 x %struct.ice_tunnel_entry], i16, [3 x i16] }
%struct.ice_tunnel_entry = type { i32, i16, i16, ptr, i8 }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.ice_blk_info = type { %struct.ice_xlt1, %struct.ice_xlt2, %struct.ice_prof_tcam, %struct.ice_prof_redir, %struct.ice_es, %struct.ice_masks, i8, i8 }
%struct.ice_xlt1 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_xlt2 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_prof_tcam = type { i32, i16, i16, ptr, i8 }
%struct.ice_prof_redir = type { ptr, i32, i16 }
%struct.ice_es = type { i32, i16, i16, ptr, ptr, %struct.list_head, ptr, %struct.mutex, ptr, i8 }
%struct.ice_masks = type { %struct.mutex, i16, i16, [32 x %struct.ice_mask] }
%struct.ice_mask = type { i16, i16, i16, i8 }
%struct.ice_mbx_snapshot = type { %struct.ice_mbx_snap_buffer_data, %struct.ice_mbx_vf_counter }
%struct.ice_mbx_snap_buffer_data = type { i32, i32, i32, i32, i16, i16, i16 }
%struct.ice_mbx_vf_counter = type { ptr, i32 }
%struct.ice_switch_info = type { %struct.list_head, ptr, i16, i16, [256 x [2 x i32]] }
%struct.ice_vsi_ctx = type { i16, i16, i16, i16, %struct.ice_aqc_vsi_props, %struct.ice_sched_vsi_info, i8, i8, [8 x i16], [8 x ptr], [8 x i16], [8 x ptr] }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.ice_sched_vsi_info = type { [8 x ptr], [8 x ptr], %struct.list_head, [8 x i16], [8 x i16], [8 x %struct.ice_bw_type_info] }
%struct.ice_bw_type_info = type { [1 x i32], i8, %struct.ice_bw, %struct.ice_bw, i32 }
%struct.ice_bw = type { i32, i16 }
%struct.ice_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.217 }
%union.anon.217 = type { %struct.ice_aqc_generic }
%struct.ice_aqc_generic = type { i32, i32, i32, i32 }
%struct.ice_aqc_add_get_update_free_vsi = type { i16, i16, i8, i8, i16, i32, i32 }
%struct.ice_aqc_add_update_free_vsi_resp = type { i16, i16, i16, i16, i32, i32 }
%struct.ice_aqc_get_sw_cfg = type { i16, i16, i16, i16, i32, i32 }
%struct.ice_aqc_get_sw_cfg_resp_elem = type { i16, i16, i16 }
%struct.ice_port_info = type { ptr, ptr, i32, i16, i16, i8, i8, i16, i16, i16, i16, %struct.ice_fc_info, %struct.ice_mac_info, %struct.ice_phy_info, %struct.mutex, [8 x [9 x ptr]], [9 x %struct.list_head], %struct.ice_qos_cfg, i8 }
%struct.ice_fc_info = type { i32, i32 }
%struct.ice_mac_info = type { [6 x i8], [6 x i8] }
%struct.ice_phy_info = type { %struct.ice_link_status, %struct.ice_link_status, i64, i64, i32, i8, i16, i32, i32, %struct.ice_aqc_set_phy_cfg_data }
%struct.ice_link_status = type { i64, i64, i8, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.ice_aqc_set_phy_cfg_data = type { i64, i64, i8, i8, i16, i16, i8, i8 }
%struct.ice_qos_cfg = type { %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg, i8 }
%struct.ice_dcbx_cfg = type { i32, i32, %struct.ice_dcb_ets_cfg, %struct.ice_dcb_ets_cfg, %struct.ice_dcb_pfc_cfg, i8, [64 x %struct.ice_dcb_app_priority_table], [2 x i32], [64 x i8], i8, i8 }
%struct.ice_dcb_ets_cfg = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8] }
%struct.ice_dcb_pfc_cfg = type { i8, i8, i8, i8 }
%struct.ice_dcb_app_priority_table = type { i16, i8, i8 }
%struct.ice_fltr_info = type { i32, i32, i16, i16, i16, i32, %union.anon.218, %union.anon.223, i16, i8, i8, i8 }
%union.anon.218 = type { %struct.anon.220 }
%struct.anon.220 = type { [6 x i8], i16 }
%union.anon.223 = type { i16 }
%struct.ice_aqc_sw_rules_elem = type { i16, i16, %union.anon.224 }
%union.anon.224 = type <{ %struct.ice_sw_rule_lkup_rx_tx, [86 x i8] }>
%struct.ice_sw_rule_lkup_rx_tx = type { i16, i16, i32, i16, i16, [0 x i8] }
%struct.ice_vsi_list_map_info = type { %struct.list_head, [24 x i32], i16, i16 }
%struct.ice_fltr_list_entry = type { %struct.list_head, i32, %struct.ice_fltr_info }
%struct.ice_fltr_mgmt_list_entry = type { ptr, i16, i16, i16, %struct.list_head, %struct.ice_fltr_info, i8 }
%struct.ice_aqc_alloc_free_res_elem = type { i16, i16, [0 x %struct.ice_aqc_res_elem] }
%struct.ice_aqc_res_elem = type { %union.anon.225 }
%union.anon.225 = type { i16 }
%struct.ice_adv_lkup_elem = type { i32, %union.ice_prot_hdr, %union.ice_prot_hdr }
%union.ice_prot_hdr = type { %struct.ice_ipv6_hdr }
%struct.ice_ipv6_hdr = type { i32, i16, i8, i8, [16 x i8], [16 x i8] }
%struct.ice_adv_rule_info = type { i32, %struct.ice_sw_act_ctrl, i32, i8, i16, %struct.ice_adv_rule_flags_info }
%struct.ice_sw_act_ctrl = type { i16, i16, i32, %union.anon.227, i16, i8 }
%union.anon.227 = type { i16 }
%struct.ice_adv_rule_flags_info = type { i32, i8 }
%struct.ice_adv_fltr_mgmt_list_entry = type { %struct.list_head, ptr, %struct.ice_adv_rule_info, i16, ptr, i16 }
%struct.ice_rule_query_data = type { i16, i16, i16 }
%struct.ice_sw_fv_list_entry = type { %struct.list_head, i32, ptr }
%struct.ice_l4_hdr = type { i16, i16, i16, i16 }
%struct.ice_recp_grp_entry = type { %struct.list_head, i16, i8, [4 x i16], [4 x i16], %struct.ice_pref_recipe_group }
%struct.ice_pref_recipe_group = type { i8, [4 x %struct.ice_fv_word], [4 x i16] }
%struct.ice_aqc_recipe_data_elem = type { i8, i8, [2 x i8], [8 x i8], [4 x i8], %struct.ice_aqc_recipe_content, [20 x i8] }
%struct.ice_aqc_recipe_content = type { i8, [5 x i8], [5 x i16], i8, [3 x i8], i8, i8, i8, i8, i32 }
%struct.ice_aqc_add_get_recipe = type { i16, i16, [4 x i8], i32, i32 }

@ice_init_def_sw_recp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&recps[i].filt_rule_lock\00", [39 x i8] zeroinitializer }, align 32
@dummy_eth_header = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\02\00\00\00\00\00\02\00\00\00\00\00\81\00\00\00", [16 x i8] zeroinitializer }, align 32
@ice_free_res_cntr.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 3, i8 -90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ice_free_res_cntr\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/intel/ice/ice_switch.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"counter resource could not be freed\0A\00", [59 x i8] zeroinitializer }, align 32
@ice_init_port_info.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 1, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_init_port_info\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"incorrect VSI/port type received\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_add_vlan_internal.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 2, i8 -59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_add_vlan_internal\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"Invalid configuration: Optimization to reuse VSI list with more than one VSI is not being done yet\0A\00", [60 x i8] zeroinitializer }, align 32
@ice_rem_update_vsi_list.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 2, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_rem_update_vsi_list\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Failed to update pkt fwd rule to FWD_TO_VSI on HW VSI %d, error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ice_rem_update_vsi_list.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.11, i8 2, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to remove VSI list %d, error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ice_remove_vsi_lkup_fltr.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 3, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ice_remove_vsi_lkup_fltr\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported lookup type %d\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dummy_gre_tcp_packet = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00>\00\00\00\00\00/\00\00\00\00\00\00\00\00\00\00\80\00eX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00\14\00\00\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00P\02 \00\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@dummy_gre_tcp_packet_offsets = internal constant { [8 x %struct.ice_dummy_pkt_offsets], [32 x i8] } { [8 x %struct.ice_dummy_pkt_offsets] [%struct.ice_dummy_pkt_offsets zeroinitializer, %struct.ice_dummy_pkt_offsets { i32 2, i16 12 }, %struct.ice_dummy_pkt_offsets { i32 4, i16 14 }, %struct.ice_dummy_pkt_offsets { i32 13, i16 34 }, %struct.ice_dummy_pkt_offsets { i32 1, i16 42 }, %struct.ice_dummy_pkt_offsets { i32 5, i16 56 }, %struct.ice_dummy_pkt_offsets { i32 8, i16 76 }, %struct.ice_dummy_pkt_offsets { i32 16, i16 0 }], [32 x i8] zeroinitializer }, align 32
@dummy_gre_udp_packet = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00>\00\00\00\00\00/\00\00\00\00\00\00\00\00\00\00\80\00eX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00\14\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00", [44 x i8] zeroinitializer }, align 32
@dummy_gre_udp_packet_offsets = internal constant { [8 x %struct.ice_dummy_pkt_offsets], [32 x i8] } { [8 x %struct.ice_dummy_pkt_offsets] [%struct.ice_dummy_pkt_offsets zeroinitializer, %struct.ice_dummy_pkt_offsets { i32 2, i16 12 }, %struct.ice_dummy_pkt_offsets { i32 4, i16 14 }, %struct.ice_dummy_pkt_offsets { i32 13, i16 34 }, %struct.ice_dummy_pkt_offsets { i32 1, i16 42 }, %struct.ice_dummy_pkt_offsets { i32 5, i16 56 }, %struct.ice_dummy_pkt_offsets { i32 10, i16 76 }, %struct.ice_dummy_pkt_offsets { i32 16, i16 0 }], [32 x i8] zeroinitializer }, align 32
@dummy_udp_tun_tcp_packet = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00Z\00\01\00\00@\11\00\00\00\00\00\00\00\00\00\00\00\00\12\B5\00F\00\00\00\00eX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00(\00\01\00\00@\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00P\02 \00\00\00\00\00", [56 x i8] zeroinitializer }, align 32
@dummy_udp_tun_tcp_packet_offsets = internal constant { [11 x %struct.ice_dummy_pkt_offsets], [40 x i8] } { [11 x %struct.ice_dummy_pkt_offsets] [%struct.ice_dummy_pkt_offsets zeroinitializer, %struct.ice_dummy_pkt_offsets { i32 2, i16 12 }, %struct.ice_dummy_pkt_offsets { i32 4, i16 14 }, %struct.ice_dummy_pkt_offsets { i32 9, i16 34 }, %struct.ice_dummy_pkt_offsets { i32 11, i16 42 }, %struct.ice_dummy_pkt_offsets { i32 12, i16 42 }, %struct.ice_dummy_pkt_offsets { i32 14, i16 42 }, %struct.ice_dummy_pkt_offsets { i32 1, i16 50 }, %struct.ice_dummy_pkt_offsets { i32 5, i16 64 }, %struct.ice_dummy_pkt_offsets { i32 8, i16 84 }, %struct.ice_dummy_pkt_offsets { i32 16, i16 0 }], [40 x i8] zeroinitializer }, align 32
@dummy_udp_tun_udp_packet = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00N\00\01\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\12\B5\00:\00\00\00\00eX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00\1C\00\01\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00", [36 x i8] zeroinitializer }, align 32
@dummy_udp_tun_udp_packet_offsets = internal constant { [11 x %struct.ice_dummy_pkt_offsets], [40 x i8] } { [11 x %struct.ice_dummy_pkt_offsets] [%struct.ice_dummy_pkt_offsets zeroinitializer, %struct.ice_dummy_pkt_offsets { i32 2, i16 12 }, %struct.ice_dummy_pkt_offsets { i32 4, i16 14 }, %struct.ice_dummy_pkt_offsets { i32 9, i16 34 }, %struct.ice_dummy_pkt_offsets { i32 11, i16 42 }, %struct.ice_dummy_pkt_offsets { i32 12, i16 42 }, %struct.ice_dummy_pkt_offsets { i32 14, i16 42 }, %struct.ice_dummy_pkt_offsets { i32 1, i16 50 }, %struct.ice_dummy_pkt_offsets { i32 5, i16 64 }, %struct.ice_dummy_pkt_offsets { i32 10, i16 84 }, %struct.ice_dummy_pkt_offsets { i32 16, i16 0 }], [40 x i8] zeroinitializer }, align 32
@dummy_vlan_udp_packet = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\81\00\00\00\08\00E\00\00\1C\00\01\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00", [48 x i8] zeroinitializer }, align 32
@dummy_vlan_udp_packet_offsets = internal constant { [6 x %struct.ice_dummy_pkt_offsets], [48 x i8] } { [6 x %struct.ice_dummy_pkt_offsets] [%struct.ice_dummy_pkt_offsets zeroinitializer, %struct.ice_dummy_pkt_offsets { i32 3, i16 12 }, %struct.ice_dummy_pkt_offsets { i32 2, i16 16 }, %struct.ice_dummy_pkt_offsets { i32 4, i16 18 }, %struct.ice_dummy_pkt_offsets { i32 10, i16 38 }, %struct.ice_dummy_pkt_offsets { i32 16, i16 0 }], [48 x i8] zeroinitializer }, align 32
@dummy_udp_packet = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00\1C\00\01\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00", [52 x i8] zeroinitializer }, align 32
@dummy_udp_packet_offsets = internal constant { [5 x %struct.ice_dummy_pkt_offsets], [56 x i8] } { [5 x %struct.ice_dummy_pkt_offsets] [%struct.ice_dummy_pkt_offsets zeroinitializer, %struct.ice_dummy_pkt_offsets { i32 2, i16 12 }, %struct.ice_dummy_pkt_offsets { i32 4, i16 14 }, %struct.ice_dummy_pkt_offsets { i32 10, i16 34 }, %struct.ice_dummy_pkt_offsets { i32 16, i16 0 }], [56 x i8] zeroinitializer }, align 32
@dummy_vlan_udp_ipv6_packet = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\81\00\00\00\86\DD`\00\00\00\00\08\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00", [60 x i8] zeroinitializer }, align 32
@dummy_vlan_udp_ipv6_packet_offsets = internal constant { [6 x %struct.ice_dummy_pkt_offsets], [48 x i8] } { [6 x %struct.ice_dummy_pkt_offsets] [%struct.ice_dummy_pkt_offsets zeroinitializer, %struct.ice_dummy_pkt_offsets { i32 3, i16 12 }, %struct.ice_dummy_pkt_offsets { i32 2, i16 16 }, %struct.ice_dummy_pkt_offsets { i32 6, i16 18 }, %struct.ice_dummy_pkt_offsets { i32 10, i16 58 }, %struct.ice_dummy_pkt_offsets { i32 16, i16 0 }], [48 x i8] zeroinitializer }, align 32
@dummy_udp_ipv6_packet_offsets = internal constant { [5 x %struct.ice_dummy_pkt_offsets], [56 x i8] } { [5 x %struct.ice_dummy_pkt_offsets] [%struct.ice_dummy_pkt_offsets zeroinitializer, %struct.ice_dummy_pkt_offsets { i32 2, i16 12 }, %struct.ice_dummy_pkt_offsets { i32 6, i16 14 }, %struct.ice_dummy_pkt_offsets { i32 10, i16 54 }, %struct.ice_dummy_pkt_offsets { i32 16, i16 0 }], [56 x i8] zeroinitializer }, align 32
@dummy_vlan_tcp_ipv6_packet_offsets = internal constant { [6 x %struct.ice_dummy_pkt_offsets], [48 x i8] } { [6 x %struct.ice_dummy_pkt_offsets] [%struct.ice_dummy_pkt_offsets zeroinitializer, %struct.ice_dummy_pkt_offsets { i32 3, i16 12 }, %struct.ice_dummy_pkt_offsets { i32 2, i16 16 }, %struct.ice_dummy_pkt_offsets { i32 6, i16 18 }, %struct.ice_dummy_pkt_offsets { i32 8, i16 58 }, %struct.ice_dummy_pkt_offsets { i32 16, i16 0 }], [48 x i8] zeroinitializer }, align 32
@dummy_tcp_ipv6_packet_offsets = internal constant { [5 x %struct.ice_dummy_pkt_offsets], [56 x i8] } { [5 x %struct.ice_dummy_pkt_offsets] [%struct.ice_dummy_pkt_offsets zeroinitializer, %struct.ice_dummy_pkt_offsets { i32 2, i16 12 }, %struct.ice_dummy_pkt_offsets { i32 6, i16 14 }, %struct.ice_dummy_pkt_offsets { i32 8, i16 54 }, %struct.ice_dummy_pkt_offsets { i32 16, i16 0 }], [56 x i8] zeroinitializer }, align 32
@dummy_vlan_tcp_packet_offsets = internal constant { [6 x %struct.ice_dummy_pkt_offsets], [48 x i8] } { [6 x %struct.ice_dummy_pkt_offsets] [%struct.ice_dummy_pkt_offsets zeroinitializer, %struct.ice_dummy_pkt_offsets { i32 3, i16 12 }, %struct.ice_dummy_pkt_offsets { i32 2, i16 16 }, %struct.ice_dummy_pkt_offsets { i32 4, i16 18 }, %struct.ice_dummy_pkt_offsets { i32 8, i16 38 }, %struct.ice_dummy_pkt_offsets { i32 16, i16 0 }], [48 x i8] zeroinitializer }, align 32
@dummy_tcp_packet_offsets = internal constant { [5 x %struct.ice_dummy_pkt_offsets], [56 x i8] } { [5 x %struct.ice_dummy_pkt_offsets] [%struct.ice_dummy_pkt_offsets zeroinitializer, %struct.ice_dummy_pkt_offsets { i32 2, i16 12 }, %struct.ice_dummy_pkt_offsets { i32 4, i16 14 }, %struct.ice_dummy_pkt_offsets { i32 8, i16 34 }, %struct.ice_dummy_pkt_offsets { i32 16, i16 0 }], [56 x i8] zeroinitializer }, align 32
@dummy_udp_ipv6_packet = internal constant { <{ [60 x i8], [12 x i8] }>, [56 x i8] } { <{ [60 x i8], [12 x i8] }> <{ [60 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\86\DD`\00\00\00\00\10\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10", [12 x i8] zeroinitializer }>, [56 x i8] zeroinitializer }, align 32
@dummy_vlan_tcp_ipv6_packet = internal constant { <{ [71 x i8], [9 x i8] }>, [48 x i8] } { <{ [71 x i8], [9 x i8] }> <{ [71 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\81\00\00\00\86\DD`\00\00\00\00\14\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00P", [9 x i8] zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@dummy_tcp_ipv6_packet = internal constant { <{ [67 x i8], [9 x i8] }>, [52 x i8] } { <{ [67 x i8], [9 x i8] }> <{ [67 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\86\DD`\00\00\00\00\14\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00P", [9 x i8] zeroinitializer }>, [52 x i8] zeroinitializer }, align 32
@dummy_vlan_tcp_packet = internal constant { <{ [51 x i8], [9 x i8] }>, [36 x i8] } { <{ [51 x i8], [9 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\81\00\00\00\08\00E\00\00(\00\01\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00P", [9 x i8] zeroinitializer }>, [36 x i8] zeroinitializer }, align 32
@dummy_tcp_packet = internal constant { <{ [47 x i8], [9 x i8] }>, [40 x i8] } { <{ [47 x i8], [9 x i8] }> <{ [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00(\00\01\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00P", [9 x i8] zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@ice_add_adv_recipe.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 4, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_add_adv_recipe\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"profile: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@profile_to_recipe = internal global { [256 x [2 x i32]], [512 x i8] } zeroinitializer, align 32
@recipe_to_profile = internal global { [64 x [8 x i32]], [512 x i8] } zeroinitializer, align 32
@ice_prot_id_tbl = internal constant { [16 x %struct.ice_protocol_entry], [32 x i8] } { [16 x %struct.ice_protocol_entry] [%struct.ice_protocol_entry { i32 0, i8 1 }, %struct.ice_protocol_entry { i32 1, i8 4 }, %struct.ice_protocol_entry { i32 2, i8 9 }, %struct.ice_protocol_entry { i32 3, i8 17 }, %struct.ice_protocol_entry { i32 4, i8 32 }, %struct.ice_protocol_entry { i32 5, i8 33 }, %struct.ice_protocol_entry { i32 6, i8 40 }, %struct.ice_protocol_entry { i32 7, i8 41 }, %struct.ice_protocol_entry { i32 8, i8 49 }, %struct.ice_protocol_entry { i32 9, i8 52 }, %struct.ice_protocol_entry { i32 10, i8 53 }, %struct.ice_protocol_entry { i32 11, i8 52 }, %struct.ice_protocol_entry { i32 12, i8 52 }, %struct.ice_protocol_entry { i32 13, i8 64 }, %struct.ice_protocol_entry zeroinitializer, %struct.ice_protocol_entry zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ice_prot_ext = internal constant { <{ { i32, <{ i8, i8, i8, i8, i8, i8, i8, [33 x i8] }> }, { i32, <{ i8, i8, i8, i8, i8, i8, i8, [33 x i8] }> }, %struct.ice_prot_ext_tbl_entry, { i32, <{ i8, [39 x i8] }> }, { i32, <{ [10 x i8], [30 x i8] }> }, { i32, <{ [10 x i8], [30 x i8] }> }, { i32, <{ [20 x i8], [20 x i8] }> }, { i32, <{ [20 x i8], [20 x i8] }> }, { i32, <{ i8, i8, [38 x i8] }> }, { i32, <{ i8, i8, [38 x i8] }> }, { i32, <{ i8, i8, [38 x i8] }> }, { i32, <{ i8, i8, i8, i8, [36 x i8] }> }, { i32, <{ i8, i8, i8, i8, [36 x i8] }> }, { i32, <{ i8, i8, i8, i8, [36 x i8] }> }, %struct.ice_prot_ext_tbl_entry, %struct.ice_prot_ext_tbl_entry }>, [160 x i8] } { <{ { i32, <{ i8, i8, i8, i8, i8, i8, i8, [33 x i8] }> }, { i32, <{ i8, i8, i8, i8, i8, i8, i8, [33 x i8] }> }, %struct.ice_prot_ext_tbl_entry, { i32, <{ i8, [39 x i8] }> }, { i32, <{ [10 x i8], [30 x i8] }> }, { i32, <{ [10 x i8], [30 x i8] }> }, { i32, <{ [20 x i8], [20 x i8] }> }, { i32, <{ [20 x i8], [20 x i8] }> }, { i32, <{ i8, i8, [38 x i8] }> }, { i32, <{ i8, i8, [38 x i8] }> }, { i32, <{ i8, i8, [38 x i8] }> }, { i32, <{ i8, i8, i8, i8, [36 x i8] }> }, { i32, <{ i8, i8, i8, i8, [36 x i8] }> }, { i32, <{ i8, i8, i8, i8, [36 x i8] }> }, %struct.ice_prot_ext_tbl_entry, %struct.ice_prot_ext_tbl_entry }> <{ { i32, <{ i8, i8, i8, i8, i8, i8, i8, [33 x i8] }> } { i32 0, <{ i8, i8, i8, i8, i8, i8, i8, [33 x i8] }> <{ i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, [33 x i8] zeroinitializer }> }, { i32, <{ i8, i8, i8, i8, i8, i8, i8, [33 x i8] }> } { i32 1, <{ i8, i8, i8, i8, i8, i8, i8, [33 x i8] }> <{ i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, [33 x i8] zeroinitializer }> }, %struct.ice_prot_ext_tbl_entry { i32 2, [40 x i8] zeroinitializer }, { i32, <{ i8, [39 x i8] }> } { i32 3, <{ i8, [39 x i8] }> <{ i8 2, [39 x i8] zeroinitializer }> }, { i32, <{ [10 x i8], [30 x i8] }> } { i32 4, <{ [10 x i8], [30 x i8] }> <{ [10 x i8] c"\00\02\04\06\08\0A\0C\0E\10\12", [30 x i8] zeroinitializer }> }, { i32, <{ [10 x i8], [30 x i8] }> } { i32 5, <{ [10 x i8], [30 x i8] }> <{ [10 x i8] c"\00\02\04\06\08\0A\0C\0E\10\12", [30 x i8] zeroinitializer }> }, { i32, <{ [20 x i8], [20 x i8] }> } { i32 6, <{ [20 x i8], [20 x i8] }> <{ [20 x i8] c"\00\02\04\06\08\0A\0C\0E\10\12\14\16\18\1A\1C\1E \22$&", [20 x i8] zeroinitializer }> }, { i32, <{ [20 x i8], [20 x i8] }> } { i32 7, <{ [20 x i8], [20 x i8] }> <{ [20 x i8] c"\00\02\04\06\08\0A\0C\0E\10\12\14\16\18\1A\1C\1E \22$&", [20 x i8] zeroinitializer }> }, { i32, <{ i8, i8, [38 x i8] }> } { i32 8, <{ i8, i8, [38 x i8] }> <{ i8 0, i8 2, [38 x i8] zeroinitializer }> }, { i32, <{ i8, i8, [38 x i8] }> } { i32 9, <{ i8, i8, [38 x i8] }> <{ i8 0, i8 2, [38 x i8] zeroinitializer }> }, { i32, <{ i8, i8, [38 x i8] }> } { i32 10, <{ i8, i8, [38 x i8] }> <{ i8 0, i8 2, [38 x i8] zeroinitializer }> }, { i32, <{ i8, i8, i8, i8, [36 x i8] }> } { i32 11, <{ i8, i8, i8, i8, [36 x i8] }> <{ i8 8, i8 10, i8 12, i8 14, [36 x i8] zeroinitializer }> }, { i32, <{ i8, i8, i8, i8, [36 x i8] }> } { i32 12, <{ i8, i8, i8, i8, [36 x i8] }> <{ i8 8, i8 10, i8 12, i8 14, [36 x i8] zeroinitializer }> }, { i32, <{ i8, i8, i8, i8, [36 x i8] }> } { i32 13, <{ i8, i8, i8, i8, [36 x i8] }> <{ i8 0, i8 2, i8 4, i8 6, [36 x i8] zeroinitializer }> }, %struct.ice_prot_ext_tbl_entry zeroinitializer, %struct.ice_prot_ext_tbl_entry zeroinitializer }>, [160 x i8] zeroinitializer }, align 32
@ice_add_sw_recipe.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 4, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ice_add_sw_recipe\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Result idx slots: %d, need %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ice_add_sw_recipe.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.24, i8 4, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No chain index available\0A\00", [38 x i8] zeroinitializer }, align 32
@switch.table.ice_add_adv_recipe = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 255, i32 2, i32 2, i32 4, i32 6], [40 x i8] zeroinitializer }, align 32
@switch.table.ice_fill_adv_dummy_packet = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 6, i32 6, i32 1, i32 2, i32 10, i32 10, i32 20, i32 20, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 6, i32 6], [32 x i8] zeroinitializer }, align 32
@switch.table.ice_create_vsi_list_rule = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 768, i16 768, i16 768, i16 768, i16 1024, i16 768, i16 768, i16 768, i16 768, i16 768], [44 x i8] zeroinitializer }, align 32
@switch.table.ice_remove_vsi_list_rule = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 768, i16 768, i16 768, i16 768, i16 1024, i16 768, i16 768, i16 768, i16 768, i16 768], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 9]
@__sancov_gen_cov_switch_values.27 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8, i64 9]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 9]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 6, i64 8, i64 10]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 16]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.41 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8, i64 9]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 546, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"dummy_eth_header\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 29, i32 17 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 3739, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1402, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2837, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2343, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2359, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 3643, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [21 x i8] c"dummy_gre_tcp_packet\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 49, i32 17 }
@___asan_gen_.94 = private unnamed_addr constant [29 x i8] c"dummy_gre_tcp_packet_offsets\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 38, i32 43 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"dummy_gre_udp_packet\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 94, i32 17 }
@___asan_gen_.100 = private unnamed_addr constant [29 x i8] c"dummy_gre_udp_packet_offsets\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 83, i32 43 }
@___asan_gen_.103 = private unnamed_addr constant [25 x i8] c"dummy_udp_tun_tcp_packet\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 139, i32 17 }
@___asan_gen_.106 = private unnamed_addr constant [33 x i8] c"dummy_udp_tun_tcp_packet_offsets\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 125, i32 43 }
@___asan_gen_.109 = private unnamed_addr constant [25 x i8] c"dummy_udp_tun_udp_packet\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 190, i32 17 }
@___asan_gen_.112 = private unnamed_addr constant [33 x i8] c"dummy_udp_tun_udp_packet_offsets\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 176, i32 43 }
@___asan_gen_.115 = private unnamed_addr constant [22 x i8] c"dummy_vlan_udp_packet\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 264, i32 17 }
@___asan_gen_.118 = private unnamed_addr constant [30 x i8] c"dummy_vlan_udp_packet_offsets\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 254, i32 43 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"dummy_udp_packet\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 234, i32 17 }
@___asan_gen_.124 = private unnamed_addr constant [25 x i8] c"dummy_udp_packet_offsets\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 225, i32 43 }
@___asan_gen_.127 = private unnamed_addr constant [27 x i8] c"dummy_vlan_udp_ipv6_packet\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 477, i32 17 }
@___asan_gen_.130 = private unnamed_addr constant [35 x i8] c"dummy_vlan_udp_ipv6_packet_offsets\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 467, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant [30 x i8] c"dummy_udp_ipv6_packet_offsets\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 429, i32 43 }
@___asan_gen_.136 = private unnamed_addr constant [35 x i8] c"dummy_vlan_tcp_ipv6_packet_offsets\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 389, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant [30 x i8] c"dummy_tcp_ipv6_packet_offsets\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 352, i32 43 }
@___asan_gen_.142 = private unnamed_addr constant [30 x i8] c"dummy_vlan_tcp_packet_offsets\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 318, i32 43 }
@___asan_gen_.145 = private unnamed_addr constant [25 x i8] c"dummy_tcp_packet_offsets\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 286, i32 43 }
@___asan_gen_.148 = private unnamed_addr constant [22 x i8] c"dummy_udp_ipv6_packet\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 438, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant [27 x i8] c"dummy_vlan_tcp_ipv6_packet\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 399, i32 17 }
@___asan_gen_.154 = private unnamed_addr constant [22 x i8] c"dummy_tcp_ipv6_packet\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 360, i32 17 }
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"dummy_vlan_tcp_packet\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 328, i32 17 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"dummy_tcp_packet\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 295, i32 17 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 4647, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [18 x i8] c"profile_to_recipe\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 521, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant [18 x i8] c"recipe_to_profile\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 517, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant [16 x i8] c"ice_prot_id_tbl\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 3773, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant [13 x i8] c"ice_prot_ext\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 3754, i32 44 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 4134, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [47 x i8] c"../drivers/net/ethernet/intel/ice/ice_switch.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 4213, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant [32 x i8] c"switch.table.ice_add_adv_recipe\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [39 x i8] c"switch.table.ice_fill_adv_dummy_packet\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [38 x i8] c"switch.table.ice_create_vsi_list_rule\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [38 x i8] c"switch.table.ice_remove_vsi_list_rule\00", align 1
@llvm.compiler.used = appending global [53 x ptr] [ptr @ice_init_def_sw_recp.__key, ptr @.str, ptr @dummy_eth_header, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @dummy_gre_tcp_packet, ptr @dummy_gre_tcp_packet_offsets, ptr @dummy_gre_udp_packet, ptr @dummy_gre_udp_packet_offsets, ptr @dummy_udp_tun_tcp_packet, ptr @dummy_udp_tun_tcp_packet_offsets, ptr @dummy_udp_tun_udp_packet, ptr @dummy_udp_tun_udp_packet_offsets, ptr @dummy_vlan_udp_packet, ptr @dummy_vlan_udp_packet_offsets, ptr @dummy_udp_packet, ptr @dummy_udp_packet_offsets, ptr @dummy_vlan_udp_ipv6_packet, ptr @dummy_vlan_udp_ipv6_packet_offsets, ptr @dummy_udp_ipv6_packet_offsets, ptr @dummy_vlan_tcp_ipv6_packet_offsets, ptr @dummy_tcp_ipv6_packet_offsets, ptr @dummy_vlan_tcp_packet_offsets, ptr @dummy_tcp_packet_offsets, ptr @dummy_udp_ipv6_packet, ptr @dummy_vlan_tcp_ipv6_packet, ptr @dummy_tcp_ipv6_packet, ptr @dummy_vlan_tcp_packet, ptr @dummy_tcp_packet, ptr @.str.19, ptr @.str.20, ptr @profile_to_recipe, ptr @recipe_to_profile, ptr @ice_prot_id_tbl, ptr @ice_prot_ext, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @switch.table.ice_add_adv_recipe, ptr @switch.table.ice_fill_adv_dummy_packet, ptr @switch.table.ice_create_vsi_list_rule, ptr @switch.table.ice_remove_vsi_list_rule], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_def_sw_recp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_eth_header to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_gre_tcp_packet to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_gre_tcp_packet_offsets to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_gre_udp_packet to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_gre_udp_packet_offsets to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_udp_tun_tcp_packet to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_udp_tun_tcp_packet_offsets to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_udp_tun_udp_packet to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_udp_tun_udp_packet_offsets to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_vlan_udp_packet to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_vlan_udp_packet_offsets to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_udp_packet to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_udp_packet_offsets to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_vlan_udp_ipv6_packet to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_vlan_udp_ipv6_packet_offsets to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_udp_ipv6_packet_offsets to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_vlan_tcp_ipv6_packet_offsets to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_tcp_ipv6_packet_offsets to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_vlan_tcp_packet_offsets to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_tcp_packet_offsets to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_udp_ipv6_packet to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_vlan_tcp_ipv6_packet to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_tcp_ipv6_packet to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_vlan_tcp_packet to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_tcp_packet to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_to_recipe to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recipe_to_profile to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_prot_id_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_prot_ext to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_add_adv_recipe to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_fill_adv_dummy_packet to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_create_vsi_list_rule to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_remove_vsi_list_rule to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_init_def_sw_recp(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 29440, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %root_rid = getelementptr %struct.ice_sw_recipe, ptr %call5.i.i, i32 %indvars.iv, i32 1
  %2 = trunc i32 %indvars.iv to i8
  %3 = ptrtoint ptr %root_rid to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %root_rid, align 1
  %filt_rules = getelementptr %struct.ice_sw_recipe, ptr %call5.i.i, i32 %indvars.iv, i32 12
  %4 = ptrtoint ptr %filt_rules to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %filt_rules, ptr %filt_rules, align 4
  %prev.i = getelementptr %struct.ice_sw_recipe, ptr %call5.i.i, i32 %indvars.iv, i32 12, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %filt_rules, ptr %prev.i, align 4
  %filt_replay_rules = getelementptr %struct.ice_sw_recipe, ptr %call5.i.i, i32 %indvars.iv, i32 13
  %6 = ptrtoint ptr %filt_replay_rules to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %filt_replay_rules, ptr %filt_replay_rules, align 4
  %prev.i25 = getelementptr %struct.ice_sw_recipe, ptr %call5.i.i, i32 %indvars.iv, i32 13, i32 1
  %7 = ptrtoint ptr %prev.i25 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %filt_replay_rules, ptr %prev.i25, align 4
  %rg_list = getelementptr %struct.ice_sw_recipe, ptr %call5.i.i, i32 %indvars.iv, i32 20
  %8 = ptrtoint ptr %rg_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %rg_list, ptr %rg_list, align 4
  %prev.i26 = getelementptr %struct.ice_sw_recipe, ptr %call5.i.i, i32 %indvars.iv, i32 20, i32 1
  %9 = ptrtoint ptr %prev.i26 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %rg_list, ptr %prev.i26, align 4
  %filt_rule_lock = getelementptr %struct.ice_sw_recipe, ptr %call5.i.i, i32 %indvars.iv, i32 14
  tail call void @__mutex_init(ptr noundef %filt_rule_lock, ptr noundef nonnull @.str, ptr noundef nonnull @ice_init_def_sw_recp.__key) #13
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %10 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %switch_info, align 8
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %recp_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i, ptr %recp_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ice_is_vsi_valid(ptr nocapture noundef readonly %hw, i16 noundef zeroext %vsi_handle) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %vsi_handle)
  %cmp = icmp ult i16 %vsi_handle, 768
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i16 %vsi_handle to i32
  %arrayidx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool = icmp ne ptr %1, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  ret i1 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @ice_get_hw_vsi_num(ptr nocapture noundef readonly %hw, i16 noundef zeroext %vsi_handle) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %vsi_handle to i32
  %arrayidx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  ret i16 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ice_get_vsi_ctx(ptr nocapture noundef readonly %hw, i16 noundef zeroext %vsi_handle) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %vsi_handle)
  %cmp = icmp ugt i16 %vsi_handle, 767
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i16 %vsi_handle to i32
  %arrayidx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.false ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_clear_all_vsi_ctx(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %hw, i32 -2960
  br label %ice_get_vsi_ctx.exit.i

ice_get_vsi_ctx.exit.i:                           ; preds = %ice_clear_vsi_ctx.exit.ice_get_vsi_ctx.exit.i_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %ice_clear_vsi_ctx.exit.ice_get_vsi_ctx.exit.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %indvars.iv
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %ice_get_vsi_ctx.exit.i.ice_clear_vsi_ctx.exit_crit_edge, label %ice_get_vsi_ctx.exit.i.for.body.i.i_crit_edge

ice_get_vsi_ctx.exit.i.for.body.i.i_crit_edge:    ; preds = %ice_get_vsi_ctx.exit.i
  br label %for.body.i.i

ice_get_vsi_ctx.exit.i.ice_clear_vsi_ctx.exit_crit_edge: ; preds = %ice_get_vsi_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_clear_vsi_ctx.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %ice_get_vsi_ctx.exit.i.for.body.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %ice_get_vsi_ctx.exit.i.for.body.i.i_crit_edge ]
  %arrayidx.i7.i = getelementptr %struct.ice_vsi_ctx, ptr %1, i32 0, i32 9, i32 %indvars.iv.i.i
  %2 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i7.i, align 4
  %tobool2.not.i.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i.i, label %for.body.i.i.if.end10.i.i_crit_edge, label %if.then3.i.i

for.body.i.i.if.end10.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i.i

if.then3.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i.i, ptr noundef nonnull %3) #13
  %6 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.i7.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then3.i.i, %for.body.i.i.if.end10.i.i_crit_edge
  %arrayidx12.i.i = getelementptr %struct.ice_vsi_ctx, ptr %1, i32 0, i32 11, i32 %indvars.iv.i.i
  %7 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx12.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %8, null
  br i1 %tobool13.not.i.i, label %if.end10.i.i.for.inc.i.i_crit_edge, label %if.then14.i.i

if.end10.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then14.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 8
  %dev19.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev19.i.i, ptr noundef nonnull %8) #13
  %11 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx12.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then14.i.i, %if.end10.i.i.for.inc.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 8
  br i1 %exitcond.not.i.i, label %ice_clear_vsi_q_ctx.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

ice_clear_vsi_q_ctx.exit.i:                       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i, ptr noundef nonnull %1) #13
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.i.i, align 4
  br label %ice_clear_vsi_ctx.exit

ice_clear_vsi_ctx.exit:                           ; preds = %ice_clear_vsi_q_ctx.exit.i, %ice_get_vsi_ctx.exit.i.ice_clear_vsi_ctx.exit_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 768
  br i1 %exitcond.not, label %for.end, label %ice_clear_vsi_ctx.exit.ice_get_vsi_ctx.exit.i_crit_edge

ice_clear_vsi_ctx.exit.ice_get_vsi_ctx.exit.i_crit_edge: ; preds = %ice_clear_vsi_ctx.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_get_vsi_ctx.exit.i

for.end:                                          ; preds = %ice_clear_vsi_ctx.exit
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_add_vsi(ptr noundef %hw, i16 noundef zeroext %vsi_handle, ptr noundef %vsi_ctx, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  %desc.i31 = alloca %struct.ice_aq_desc, align 4
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %vsi_handle)
  %cmp = icmp ugt i16 %vsi_handle, 767
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #13
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 528) #13
  %alloc_from_pool.i = getelementptr inbounds %struct.ice_vsi_ctx, ptr %vsi_ctx, i32 0, i32 6
  %3 = ptrtoint ptr %alloc_from_pool.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %alloc_from_pool.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %vsi_ctx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vsi_ctx, align 4
  %7 = or i16 %6, -32768
  %8 = call i16 @llvm.bswap.i16(i16 %7) #13
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %0, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %vf_num.i = getelementptr inbounds %struct.ice_vsi_ctx, ptr %vsi_ctx, i32 0, i32 7
  %10 = ptrtoint ptr %vf_num.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vf_num.i, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %1, align 4
  %flags.i = getelementptr inbounds %struct.ice_vsi_ctx, ptr %vsi_ctx, i32 0, i32 3
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags.i, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %14) #13
  %vsi_flags.i = getelementptr inbounds %struct.ice_aqc_add_get_update_free_vsi, ptr %0, i32 0, i32 4
  %16 = ptrtoint ptr %vsi_flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %vsi_flags.i, align 2
  %17 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %desc.i, align 4
  %19 = or i16 %18, 4
  store i16 %19, ptr %desc.i, align 4
  %info.i = getelementptr inbounds %struct.ice_vsi_ctx, ptr %vsi_ctx, i32 0, i32 4
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %info.i, i16 noundef zeroext 128, ptr noundef %cd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %ice_get_vsi_ctx.exit, label %ice_aq_add_vsi.exit

ice_aq_add_vsi.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  br label %cleanup

ice_get_vsi_ctx.exit:                             ; preds = %if.end.i
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %0, align 4
  %22 = and i16 %21, -253
  %23 = call i16 @llvm.bswap.i16(i16 %22) #13
  %24 = ptrtoint ptr %vsi_ctx to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %vsi_ctx, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %1, align 4
  %27 = call i16 @llvm.bswap.i16(i16 %26) #13
  %vsis_allocd.i = getelementptr inbounds %struct.ice_vsi_ctx, ptr %vsi_ctx, i32 0, i32 1
  %28 = ptrtoint ptr %vsis_allocd.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %vsis_allocd.i, align 2
  %29 = ptrtoint ptr %vsi_flags.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vsi_flags.i, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30) #13
  %vsis_unallocated.i = getelementptr inbounds %struct.ice_vsi_ctx, ptr %vsi_ctx, i32 0, i32 2
  %32 = ptrtoint ptr %vsis_unallocated.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %vsis_unallocated.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  %conv.i = zext i16 %vsi_handle to i32
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not = icmp eq ptr %34, null
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %ice_get_vsi_ctx.exit
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %call.i30 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 564, i32 noundef 3520) #13
  %tobool8.not = icmp eq ptr %call.i30, null
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i31) #13
  %37 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i31, i32 0, i32 6
  %38 = call ptr @memset(ptr %desc.i31, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i31, i16 noundef zeroext 531) #13
  %39 = ptrtoint ptr %vsi_ctx to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vsi_ctx, align 4
  %41 = or i16 %40, -32768
  %42 = call i16 @llvm.bswap.i16(i16 %41) #13
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %37, align 4
  %call.i32 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i31, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool4.not.i = icmp eq i32 %call.i32, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then9.ice_aq_free_vsi.exit_crit_edge

if.then9.ice_aq_free_vsi.exit_crit_edge:          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_aq_free_vsi.exit

if.then5.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %44 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i31, i32 0, i32 6, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %44, align 4
  %47 = call i16 @llvm.bswap.i16(i16 %46) #13
  %48 = ptrtoint ptr %vsis_allocd.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %vsis_allocd.i, align 2
  %vsi_free.i = getelementptr inbounds %struct.ice_aqc_add_update_free_vsi_resp, ptr %37, i32 0, i32 3
  %49 = ptrtoint ptr %vsi_free.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vsi_free.i, align 2
  %51 = call i16 @llvm.bswap.i16(i16 %50) #13
  %52 = ptrtoint ptr %vsis_unallocated.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %vsis_unallocated.i, align 4
  br label %ice_aq_free_vsi.exit

ice_aq_free_vsi.exit:                             ; preds = %if.then5.i, %if.then9.ice_aq_free_vsi.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i31) #13
  br label %cleanup

if.end11:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %53 = call ptr @memcpy(ptr %call.i30, ptr %vsi_ctx, i32 564)
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i30, ptr %arrayidx.i, align 4
  br label %cleanup

if.else:                                          ; preds = %ice_get_vsi_ctx.exit
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %vsi_ctx to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vsi_ctx, align 4
  %57 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %34, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end11, %ice_aq_free_vsi.exit, %ice_aq_add_vsi.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %ice_aq_free_vsi.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %ice_aq_add_vsi.exit ], [ 0, %if.else ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_free_vsi(ptr noundef %hw, i16 noundef zeroext %vsi_handle, ptr nocapture noundef %vsi_ctx, i1 noundef zeroext %keep_vsi_alloc, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %vsi_handle)
  %cmp.i = icmp ult i16 %vsi_handle, 768
  br i1 %cmp.i, label %ice_is_vsi_valid.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

ice_is_vsi_valid.exit:                            ; preds = %entry
  %conv.i = zext i16 %vsi_handle to i32
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %ice_is_vsi_valid.exit.cleanup_crit_edge, label %if.end

ice_is_vsi_valid.exit.cleanup_crit_edge:          ; preds = %ice_is_vsi_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %ice_is_vsi_valid.exit
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %6 = ptrtoint ptr %vsi_ctx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %vsi_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #13
  %7 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %8 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %9 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 531) #13
  %10 = ptrtoint ptr %vsi_ctx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vsi_ctx, align 4
  %12 = or i16 %11, -32768
  %13 = call i16 @llvm.bswap.i16(i16 %12) #13
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %7, align 4
  br i1 %keep_vsi_alloc, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %cmd_flags.i = getelementptr inbounds %struct.ice_aqc_add_get_update_free_vsi, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 256, ptr %cmd_flags.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %ice_get_vsi_ctx.exit.i, label %ice_aq_free_vsi.exit

ice_aq_free_vsi.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  br label %cleanup

ice_get_vsi_ctx.exit.i:                           ; preds = %if.end.i
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %8, align 4
  %18 = call i16 @llvm.bswap.i16(i16 %17) #13
  %vsis_allocd.i = getelementptr inbounds %struct.ice_vsi_ctx, ptr %vsi_ctx, i32 0, i32 1
  %19 = ptrtoint ptr %vsis_allocd.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %vsis_allocd.i, align 2
  %vsi_free.i = getelementptr inbounds %struct.ice_aqc_add_update_free_vsi_resp, ptr %7, i32 0, i32 3
  %20 = ptrtoint ptr %vsi_free.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vsi_free.i, align 2
  %22 = call i16 @llvm.bswap.i16(i16 %21) #13
  %vsis_unallocated.i = getelementptr inbounds %struct.ice_vsi_ctx, ptr %vsi_ctx, i32 0, i32 2
  %23 = ptrtoint ptr %vsis_unallocated.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %vsis_unallocated.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %ice_get_vsi_ctx.exit.i.cleanup_crit_edge, label %for.cond.preheader.i.i

ice_get_vsi_ctx.exit.i.cleanup_crit_edge:         ; preds = %ice_get_vsi_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader.i.i:                           ; preds = %ice_get_vsi_ctx.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i7.i = getelementptr %struct.ice_vsi_ctx, ptr %25, i32 0, i32 9, i32 %indvars.iv.i.i
  %26 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i7.i, align 4
  %tobool2.not.i.i = icmp eq ptr %27, null
  br i1 %tobool2.not.i.i, label %for.body.i.i.if.end10.i.i_crit_edge, label %if.then3.i.i

for.body.i.i.if.end10.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i.i

if.then3.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev.i.i, ptr noundef nonnull %27) #13
  %30 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx.i7.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then3.i.i, %for.body.i.i.if.end10.i.i_crit_edge
  %arrayidx12.i.i = getelementptr %struct.ice_vsi_ctx, ptr %25, i32 0, i32 11, i32 %indvars.iv.i.i
  %31 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx12.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %32, null
  br i1 %tobool13.not.i.i, label %if.end10.i.i.for.inc.i.i_crit_edge, label %if.then14.i.i

if.end10.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then14.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i.i, align 8
  %dev19.i.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev19.i.i, ptr noundef nonnull %32) #13
  %35 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx12.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then14.i.i, %if.end10.i.i.for.inc.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 8
  br i1 %exitcond.not.i.i, label %ice_clear_vsi_q_ctx.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

ice_clear_vsi_q_ctx.exit.i:                       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev.i, ptr noundef nonnull %25) #13
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %ice_clear_vsi_q_ctx.exit.i, %ice_get_vsi_ctx.exit.i.cleanup_crit_edge, %ice_aq_free_vsi.exit, %ice_is_vsi_valid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %ice_is_vsi_valid.exit.cleanup_crit_edge ], [ %call.i, %ice_aq_free_vsi.exit ], [ 0, %ice_get_vsi_ctx.exit.i.cleanup_crit_edge ], [ 0, %ice_clear_vsi_q_ctx.exit.i ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_update_vsi(ptr noundef %hw, i16 noundef zeroext %vsi_handle, ptr noundef %vsi_ctx, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %vsi_handle)
  %cmp.i = icmp ult i16 %vsi_handle, 768
  br i1 %cmp.i, label %ice_is_vsi_valid.exit, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

ice_is_vsi_valid.exit:                            ; preds = %entry
  %conv.i = zext i16 %vsi_handle to i32
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %ice_is_vsi_valid.exit.return_crit_edge, label %if.end

ice_is_vsi_valid.exit.return_crit_edge:           ; preds = %ice_is_vsi_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %ice_is_vsi_valid.exit
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %6 = ptrtoint ptr %vsi_ctx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %vsi_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #13
  %7 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %8 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 529) #13
  %9 = ptrtoint ptr %vsi_ctx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vsi_ctx, align 4
  %11 = or i16 %10, -32768
  %12 = call i16 @llvm.bswap.i16(i16 %11) #13
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %7, align 4
  %14 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %desc.i, align 4
  %16 = or i16 %15, 4
  store i16 %16, ptr %desc.i, align 4
  %info.i = getelementptr inbounds %struct.ice_vsi_ctx, ptr %vsi_ctx, i32 0, i32 4
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %info.i, i16 noundef zeroext 128, ptr noundef %cd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.ice_aq_update_vsi.exit_crit_edge

if.end.ice_aq_update_vsi.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_aq_update_vsi.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %17 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 4
  %20 = call i16 @llvm.bswap.i16(i16 %19) #13
  %vsis_allocd.i = getelementptr inbounds %struct.ice_vsi_ctx, ptr %vsi_ctx, i32 0, i32 1
  %21 = ptrtoint ptr %vsis_allocd.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %vsis_allocd.i, align 2
  %vsi_free.i = getelementptr inbounds %struct.ice_aqc_add_update_free_vsi_resp, ptr %7, i32 0, i32 3
  %22 = ptrtoint ptr %vsi_free.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vsi_free.i, align 2
  %24 = call i16 @llvm.bswap.i16(i16 %23) #13
  %vsis_unallocated.i = getelementptr inbounds %struct.ice_vsi_ctx, ptr %vsi_ctx, i32 0, i32 2
  %25 = ptrtoint ptr %vsis_unallocated.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %vsis_unallocated.i, align 4
  br label %ice_aq_update_vsi.exit

ice_aq_update_vsi.exit:                           ; preds = %if.then.i, %if.end.ice_aq_update_vsi.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  br label %return

return:                                           ; preds = %ice_aq_update_vsi.exit, %ice_is_vsi_valid.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %ice_aq_update_vsi.exit ], [ -22, %ice_is_vsi_valid.exit.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_cfg_rdma_fltr(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %desc.i.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %vsi_handle)
  %cmp.i = icmp ugt i16 %vsi_handle, 767
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %ice_get_vsi_ctx.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

ice_get_vsi_ctx.exit:                             ; preds = %entry
  %conv.i = zext i16 %vsi_handle to i32
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %ice_get_vsi_ctx.exit.cleanup_crit_edge, label %if.end

ice_get_vsi_ctx.exit.cleanup_crit_edge:           ; preds = %ice_get_vsi_ctx.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %ice_get_vsi_ctx.exit
  %q_opt_flags = getelementptr inbounds %struct.ice_vsi_ctx, ptr %1, i32 0, i32 4, i32 21
  %2 = ptrtoint ptr %q_opt_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %q_opt_flags, align 4
  %4 = and i8 %3, -2
  %masksel = zext i1 %enable to i8
  %.sink = or i8 %4, %masksel
  store i8 %.sink, ptr %q_opt_flags, align 4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.i.not.i = icmp eq ptr %6, null
  br i1 %tobool.i.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #13
  %10 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i, i32 0, i32 6
  %11 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i, i16 noundef zeroext 529) #13
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %14 = or i16 %13, -32768
  %15 = call i16 @llvm.bswap.i16(i16 %14) #13
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %10, align 4
  %17 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %desc.i.i, align 4
  %19 = or i16 %18, 4
  store i16 %19, ptr %desc.i.i, align 4
  %info.i.i = getelementptr inbounds %struct.ice_vsi_ctx, ptr %1, i32 0, i32 4
  %call.i.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i.i, ptr noundef %info.i.i, i16 noundef zeroext 128, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.ice_aq_update_vsi.exit.i_crit_edge

if.end.i.ice_aq_update_vsi.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_aq_update_vsi.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %20 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i, i32 0, i32 6, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 4
  %23 = call i16 @llvm.bswap.i16(i16 %22) #13
  %vsis_allocd.i.i = getelementptr inbounds %struct.ice_vsi_ctx, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %vsis_allocd.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %vsis_allocd.i.i, align 2
  %vsi_free.i.i = getelementptr inbounds %struct.ice_aqc_add_update_free_vsi_resp, ptr %10, i32 0, i32 3
  %25 = ptrtoint ptr %vsi_free.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vsi_free.i.i, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26) #13
  %vsis_unallocated.i.i = getelementptr inbounds %struct.ice_vsi_ctx, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %vsis_unallocated.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %vsis_unallocated.i.i, align 4
  br label %ice_aq_update_vsi.exit.i

ice_aq_update_vsi.exit.i:                         ; preds = %if.then.i.i, %if.end.i.ice_aq_update_vsi.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %ice_aq_update_vsi.exit.i, %if.end.cleanup_crit_edge, %ice_get_vsi_ctx.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %ice_get_vsi_ctx.exit.cleanup_crit_edge ], [ %call.i.i, %ice_aq_update_vsi.exit.i ], [ -22, %if.end.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_sw_rules(ptr noundef %hw, ptr noundef %rule_list, i16 noundef zeroext %rule_list_sz, i8 noundef zeroext %num_rules, i32 noundef %opc, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #13
  %opc.off = add i32 %opc, -672
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %opc.off)
  %switch = icmp ult i32 %opc.off, 3
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 672, i32 %opc)
  %cmp.not = icmp eq i32 %opc, 672
  %conv = trunc i32 %opc to i16
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext %conv) #13
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc, align 4
  %4 = or i16 %3, 4
  store i16 %4, ptr %desc, align 4
  %conv6 = zext i8 %num_rules to i16
  %5 = shl nuw i16 %conv6, 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 4
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %rule_list, i16 noundef zeroext %rule_list_sz, ptr noundef %cd) #13
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %land.lhs.true9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true9:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sq_last_status = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 8
  %7 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sq_last_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp10 = icmp eq i32 %8, 2
  %spec.select = select i1 %cmp10, i32 -2, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %spec.select, %land.lhs.true9 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_fill_dflt_direct_cmd_desc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_send_cmd(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_get_initial_sw_cfg(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2048, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup45_crit_edge, label %do.body.preheader

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup45

do.body.preheader:                                ; preds = %entry
  %2 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %element.i = getelementptr inbounds %struct.ice_aqc_get_sw_cfg, ptr %2, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %port_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %req_desc.0 = phi i16 [ %9, %do.cond.do.body_crit_edge ], [ 0, %do.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #13
  %4 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 512) #13
  %5 = call i16 @llvm.bswap.i16(i16 %req_desc.0) #13
  %6 = ptrtoint ptr %element.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %element.i, align 2
  %call.i65 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %call.i, i16 noundef zeroext 2048, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool.not.i = icmp eq i32 %call.i65, 0
  br i1 %tobool.not.i, label %ice_aq_get_sw_cfg.exit, label %cleanup34

ice_aq_get_sw_cfg.exit:                           ; preds = %do.body
  %7 = ptrtoint ptr %element.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %element.i, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8) #13
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %3, align 4
  %12 = call i16 @llvm.bswap.i16(i16 %11) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp80.not = icmp eq i16 %11, 0
  br i1 %cmp80.not, label %ice_aq_get_sw_cfg.exit.do.cond_crit_edge, label %ice_aq_get_sw_cfg.exit.for.body_crit_edge

ice_aq_get_sw_cfg.exit.for.body_crit_edge:        ; preds = %ice_aq_get_sw_cfg.exit
  br label %for.body

ice_aq_get_sw_cfg.exit.do.cond_crit_edge:         ; preds = %ice_aq_get_sw_cfg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %ice_aq_get_sw_cfg.exit.for.body_crit_edge
  %ele.082 = phi ptr [ %incdec.ptr, %cleanup.for.body_crit_edge ], [ %call.i, %ice_aq_get_sw_cfg.exit.for.body_crit_edge ]
  %i.081 = phi i16 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %ice_aq_get_sw_cfg.exit.for.body_crit_edge ]
  %13 = ptrtoint ptr %ele.082 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ele.082, align 2
  %15 = lshr i16 %14, 8
  %pf_vf_num10 = getelementptr inbounds %struct.ice_aqc_get_sw_cfg_resp_elem, ptr %ele.082, i32 0, i32 2
  %16 = ptrtoint ptr %pf_vf_num10 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pf_vf_num10, align 2
  %18 = call i16 @llvm.bswap.i16(i16 %17)
  %and12 = and i16 %18, 32767
  %swid14 = getelementptr inbounds %struct.ice_aqc_get_sw_cfg_resp_elem, ptr %ele.082, i32 0, i32 1
  %19 = ptrtoint ptr %swid14 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %swid14, align 2
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %22 = trunc i16 %14 to i8
  %.mask = and i8 %22, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %.mask)
  %cmp25 = icmp eq i8 %.mask, -128
  br i1 %cmp25, label %for.body.cleanup_crit_edge, label %if.end28

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end28:                                         ; preds = %for.body
  %23 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %22)
  %cond.i = icmp ult i8 %22, 64
  br i1 %cond.i, label %sw.bb.i, label %do.body.i

sw.bb.i:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %conv2.i = trunc i16 %15 to i8
  %lport.i = getelementptr inbounds %struct.ice_port_info, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %lport.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv2.i, ptr %lport.i, align 1
  %sw_id.i = getelementptr inbounds %struct.ice_port_info, ptr %24, i32 0, i32 3
  %26 = ptrtoint ptr %sw_id.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %21, ptr %sw_id.i, align 4
  %pf_vf_num3.i = getelementptr inbounds %struct.ice_port_info, ptr %24, i32 0, i32 4
  %27 = ptrtoint ptr %pf_vf_num3.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %and12, ptr %pf_vf_num3.i, align 2
  %is_vf5.i = getelementptr inbounds %struct.ice_port_info, ptr %24, i32 0, i32 18
  %28 = ptrtoint ptr %is_vf5.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %is_vf5.i, align 8
  %29 = lshr i16 %18, 8
  %30 = trunc i16 %29 to i8
  %31 = and i8 %30, -128
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %31
  store i8 %bf.set.i, ptr %is_vf5.i, align 8
  %dflt_tx_vsi_num.i = getelementptr inbounds %struct.ice_port_info, ptr %24, i32 0, i32 8
  %32 = ptrtoint ptr %dflt_tx_vsi_num.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 255, ptr %dflt_tx_vsi_num.i, align 4
  %dflt_rx_vsi_num.i = getelementptr inbounds %struct.ice_port_info, ptr %24, i32 0, i32 10
  %33 = ptrtoint ptr %dflt_rx_vsi_num.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 255, ptr %dflt_rx_vsi_num.i, align 8
  br label %cleanup

do.body.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_port_info.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_initial_sw_cfg, %if.then.i66)) #13
          to label %cleanup [label %if.then.i66], !srcloc !111

if.then.i66:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %hw.i = getelementptr inbounds %struct.ice_port_info, ptr %24, i32 0, i32 1
  %34 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 -2960
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_port_info.__UNIQUE_ID_ddebug613, ptr noundef %dev.i, ptr noundef nonnull @.str.6) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i66, %do.body.i, %sw.bb.i, %for.body.cleanup_crit_edge
  %inc = add nuw i16 %i.081, 1
  %incdec.ptr = getelementptr %struct.ice_aqc_get_sw_cfg_resp_elem, ptr %ele.082, i32 1
  %cmp = icmp ult i16 %inc, %12
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.do.cond_crit_edge

cleanup.do.cond_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  br label %do.end

do.cond:                                          ; preds = %cleanup.do.cond_crit_edge, %ice_aq_get_sw_cfg.exit.do.cond_crit_edge
  %tobool38.not = icmp eq i16 %8, 0
  br i1 %tobool38.not, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %cleanup34
  %call.i6584 = phi i32 [ %call.i65, %cleanup34 ], [ 0, %do.cond.do.end_crit_edge ]
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr, align 8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev44, ptr noundef nonnull %call.i) #13
  br label %cleanup45

cleanup45:                                        ; preds = %do.end, %entry.cleanup45_crit_edge
  %retval.0 = phi i32 [ %call.i6584, %do.end ], [ -12, %entry.cleanup45_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_update_sw_rule_bridge_mode(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recp_list, align 4
  %filt_rule_lock = getelementptr %struct.ice_sw_recipe, ptr %3, i32 1, i32 14
  %filt_rules = getelementptr %struct.ice_sw_recipe, ptr %3, i32 1, i32 12
  tail call void @mutex_lock_nested(ptr noundef %filt_rule_lock, i32 noundef 0) #13
  %4 = ptrtoint ptr %filt_rules to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn50 = load ptr, ptr %filt_rules, align 4
  %cmp.not51 = icmp eq ptr %.pn50, %filt_rules
  br i1 %cmp.not51, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn52 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn50, %entry.for.body_crit_edge ]
  %fltr_info = getelementptr i8, ptr %.pn52, i32 8
  %flag = getelementptr i8, ptr %.pn52, i32 18
  %5 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flag, align 2
  %7 = and i16 %6, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %land.lhs.true

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body
  %l_data = getelementptr i8, ptr %.pn52, i32 28
  %8 = ptrtoint ptr %l_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %l_data, align 4
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %land.lhs.true4, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true4:                                   ; preds = %land.lhs.true
  %fltr_act = getelementptr i8, ptr %.pn52, i32 12
  %11 = ptrtoint ptr %fltr_act to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fltr_act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %switch46 = icmp ult i32 %12, 4
  br i1 %switch46, label %if.then, label %land.lhs.true4.cleanup_crit_edge

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true4
  %call18 = tail call fastcc i32 @ice_update_pkt_fwd_rule(ptr noundef %hw, ptr noundef %fltr_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then.cleanup_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %13 = ptrtoint ptr %.pn52 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn52, align 4
  %cmp.not = icmp eq ptr %.pn, %filt_rules
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  %status.3 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call18, %if.then.for.end_crit_edge ], [ 0, %cleanup.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  ret i32 %status.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_update_pkt_fwd_rule(ptr noundef %hw, ptr noundef %f_info) unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @ice_fill_sw_rule(ptr noundef %hw, ptr noundef %f_info, ptr noundef nonnull %call.i, i32 noundef 673)
  %fltr_rule_id = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 2
  %2 = ptrtoint ptr %fltr_rule_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fltr_rule_id, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %index = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %index, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #13
  %6 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %7 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 673) #13
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %desc.i, align 4
  %10 = or i16 %9, 4
  store i16 %10, ptr %desc.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 256, ptr %7, align 4
  %call.i16 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %call.i, i16 noundef zeroext 32, ptr noundef null) #13
  %sq_last_status.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 8
  %12 = ptrtoint ptr %sq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sq_last_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp10.i = icmp eq i32 %13, 2
  %spec.select.i = select i1 %cmp10.i, i32 -2, i32 %call.i16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev6, ptr noundef nonnull %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ice_mac_fltr_exist(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %mac, i16 noundef zeroext %vsi_handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %vsi_handle)
  %cmp.i = icmp ult i16 %vsi_handle, 768
  br i1 %cmp.i, label %ice_is_vsi_valid.exit, label %entry.cleanup38_crit_edge

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup38

ice_is_vsi_valid.exit:                            ; preds = %entry
  %conv.i = zext i16 %vsi_handle to i32
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %ice_is_vsi_valid.exit.cleanup38_crit_edge, label %if.end

ice_is_vsi_valid.exit.cleanup38_crit_edge:        ; preds = %ice_is_vsi_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup38

if.end:                                           ; preds = %ice_is_vsi_valid.exit
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %6 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %switch_info, align 8
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %recp_list, align 4
  %filt_rules = getelementptr %struct.ice_sw_recipe, ptr %9, i32 1, i32 12
  %tobool.not = icmp eq ptr %filt_rules, null
  br i1 %tobool.not, label %if.end.cleanup38_crit_edge, label %if.end4

if.end.cleanup38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup38

if.end4:                                          ; preds = %if.end
  %filt_rule_lock = getelementptr %struct.ice_sw_recipe, ptr %9, i32 1, i32 14
  tail call void @mutex_lock_nested(ptr noundef %filt_rule_lock, i32 noundef 0) #13
  %10 = ptrtoint ptr %filt_rules to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn66 = load ptr, ptr %filt_rules, align 4
  %cmp.not67 = icmp eq ptr %.pn66, %filt_rules
  br i1 %cmp.not67, label %if.end4.cleanup38.sink.split_crit_edge, label %for.body.lr.ph

if.end4.cleanup38.sink.split_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup38.sink.split

for.body.lr.ph:                                   ; preds = %if.end4
  %add.ptr.i62 = getelementptr i8, ptr %mac, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn68 = phi ptr [ %.pn66, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %fltr_info = getelementptr i8, ptr %.pn68, i32 8
  %l_data = getelementptr i8, ptr %.pn68, i32 28
  %11 = ptrtoint ptr %l_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %l_data, align 4
  %add.ptr.i = getelementptr i8, ptr %.pn68, i32 32
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i, align 2
  %conv.i60 = zext i16 %14 to i32
  %or.i = or i32 %12, %conv.i60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i61 = icmp eq i32 %or.i, 0
  br i1 %cmp.i61, label %for.body.for.inc_crit_edge, label %if.end11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %flag = getelementptr i8, ptr %.pn68, i32 18
  %15 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flag, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %16)
  %cmp12.not = icmp eq i16 %16, 2
  br i1 %cmp12.not, label %lor.lhs.false, label %if.end11.for.inc_crit_edge

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end11
  %src_id = getelementptr i8, ptr %.pn68, i32 24
  %17 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp14.not = icmp eq i32 %18, 1
  br i1 %cmp14.not, label %lor.lhs.false16, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %19 = ptrtoint ptr %fltr_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fltr_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp17.not = icmp eq i32 %20, 1
  br i1 %cmp17.not, label %lor.lhs.false19, label %lor.lhs.false16.for.inc_crit_edge

lor.lhs.false16.for.inc_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %fltr_act = getelementptr i8, ptr %.pn68, i32 12
  %21 = ptrtoint ptr %fltr_act to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fltr_act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp20.not = icmp eq i32 %22, 0
  br i1 %cmp20.not, label %lor.lhs.false22, label %lor.lhs.false19.for.inc_crit_edge

lor.lhs.false19.for.inc_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %fwd_id = getelementptr i8, ptr %.pn68, i32 36
  %23 = ptrtoint ptr %fwd_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load = load i16, ptr %fwd_id, align 4
  %bf.lshr = lshr i16 %bf.load, 6
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %bf.lshr)
  %cmp25.not = icmp eq i16 %5, %bf.lshr
  br i1 %cmp25.not, label %if.end28, label %lor.lhs.false22.for.inc_crit_edge

lor.lhs.false22.for.inc_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end28:                                         ; preds = %lor.lhs.false22
  %24 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mac, align 4
  %xor.i = xor i32 %25, %12
  %26 = ptrtoint ptr %add.ptr.i62 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i62, align 2
  %xor37.i = xor i16 %27, %14
  %xor3.i = zext i16 %xor37.i to i32
  %or.i63 = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i63)
  %cmp.i64 = icmp eq i32 %or.i63, 0
  br i1 %cmp.i64, label %if.end28.cleanup38.sink.split_crit_edge, label %if.end28.for.inc_crit_edge

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end28.cleanup38.sink.split_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup38.sink.split

for.inc:                                          ; preds = %if.end28.for.inc_crit_edge, %lor.lhs.false22.for.inc_crit_edge, %lor.lhs.false19.for.inc_crit_edge, %lor.lhs.false16.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %28 = ptrtoint ptr %.pn68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn68, align 4
  %cmp.not = icmp eq ptr %.pn, %filt_rules
  br i1 %cmp.not, label %for.inc.cleanup38.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup38.sink.split_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup38.sink.split

cleanup38.sink.split:                             ; preds = %for.inc.cleanup38.sink.split_crit_edge, %if.end28.cleanup38.sink.split_crit_edge, %if.end4.cleanup38.sink.split_crit_edge
  %retval.2.ph = phi i1 [ false, %if.end4.cleanup38.sink.split_crit_edge ], [ true, %if.end28.cleanup38.sink.split_crit_edge ], [ false, %for.inc.cleanup38.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  br label %cleanup38

cleanup38:                                        ; preds = %cleanup38.sink.split, %if.end.cleanup38_crit_edge, %ice_is_vsi_valid.exit.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  %retval.2 = phi i1 [ false, %ice_is_vsi_valid.exit.cleanup38_crit_edge ], [ false, %if.end.cleanup38_crit_edge ], [ false, %entry.cleanup38_crit_edge ], [ %retval.2.ph, %cleanup38.sink.split ]
  ret i1 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ice_vlan_fltr_exist(ptr nocapture noundef readonly %hw, i16 noundef zeroext %vlan_id, i16 noundef zeroext %vsi_handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %vlan_id)
  %cmp = icmp ult i16 %vlan_id, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %vsi_handle)
  %cmp.i = icmp ult i16 %vsi_handle, 768
  %or.cond = and i1 %cmp, %cmp.i
  br i1 %or.cond, label %ice_is_vsi_valid.exit, label %entry.cleanup77_crit_edge

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77

ice_is_vsi_valid.exit:                            ; preds = %entry
  %conv.i = zext i16 %vsi_handle to i32
  %arrayidx.i108 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %0 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i108, align 4
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %ice_is_vsi_valid.exit.cleanup77_crit_edge, label %if.end4

ice_is_vsi_valid.exit.cleanup77_crit_edge:        ; preds = %ice_is_vsi_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77

if.end4:                                          ; preds = %ice_is_vsi_valid.exit
  %2 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i108, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %6 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %switch_info, align 8
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %recp_list, align 4
  %filt_rules = getelementptr %struct.ice_sw_recipe, ptr %9, i32 4, i32 12
  %tobool.not = icmp eq ptr %filt_rules, null
  br i1 %tobool.not, label %if.end4.cleanup77_crit_edge, label %if.end7

if.end4.cleanup77_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77

if.end7:                                          ; preds = %if.end4
  %filt_rule_lock = getelementptr %struct.ice_sw_recipe, ptr %9, i32 4, i32 14
  tail call void @mutex_lock_nested(ptr noundef %filt_rule_lock, i32 noundef 0) #13
  %10 = ptrtoint ptr %filt_rules to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn113 = load ptr, ptr %filt_rules, align 4
  %cmp10.not115 = icmp eq ptr %.pn113, %filt_rules
  br i1 %cmp10.not115, label %if.end7.cleanup77.sink.split_crit_edge, label %for.body.lr.ph

if.end7.cleanup77.sink.split_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77.sink.split

for.body.lr.ph:                                   ; preds = %if.end7
  %div3.i = lshr i32 %conv.i, 5
  %and.i = and i32 %conv.i, 31
  %11 = shl nuw i32 1, %and.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn116 = phi ptr [ %.pn113, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %entry1.0117 = getelementptr i8, ptr %.pn116, i32 -12
  %fltr_info = getelementptr i8, ptr %.pn116, i32 8
  %l_data = getelementptr i8, ptr %.pn116, i32 28
  %12 = ptrtoint ptr %l_data to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %l_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %13)
  %cmp14 = icmp ugt i16 %13, 4095
  br i1 %cmp14, label %for.body.for.inc_crit_edge, label %if.end17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %flag = getelementptr i8, ptr %.pn116, i32 18
  %14 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flag, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %15)
  %cmp19.not = icmp eq i16 %15, 2
  br i1 %cmp19.not, label %lor.lhs.false, label %if.end17.for.inc_crit_edge

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end17
  %src_id = getelementptr i8, ptr %.pn116, i32 24
  %16 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp21.not = icmp eq i32 %17, 1
  br i1 %cmp21.not, label %lor.lhs.false23, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %fltr_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fltr_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp24.not = icmp eq i32 %19, 4
  br i1 %cmp24.not, label %if.end27, label %lor.lhs.false23.for.inc_crit_edge

lor.lhs.false23.for.inc_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end27:                                         ; preds = %lor.lhs.false23
  %fltr_act = getelementptr i8, ptr %.pn116, i32 12
  %20 = ptrtoint ptr %fltr_act to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fltr_act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %switch = icmp ult i32 %21, 2
  br i1 %switch, label %if.end34, label %if.end27.for.inc_crit_edge

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end34:                                         ; preds = %if.end27
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.end34.if.end63_crit_edge [
    i32 0, label %if.then38
    i32 1, label %if.then48
  ]

if.end34.if.end63_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then38:                                        ; preds = %if.end34
  %fwd_id = getelementptr i8, ptr %.pn116, i32 36
  %23 = ptrtoint ptr %fwd_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load = load i16, ptr %fwd_id, align 4
  %bf.lshr = lshr i16 %bf.load, 6
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %bf.lshr)
  %cmp41.not = icmp eq i16 %5, %bf.lshr
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %vlan_id)
  %cmp66.old = icmp eq i16 %13, %vlan_id
  %or.cond112 = select i1 %cmp41.not, i1 %cmp66.old, i1 false
  br i1 %or.cond112, label %if.then38.cleanup77.sink.split_crit_edge, label %if.then38.for.inc_crit_edge

if.then38.for.inc_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then38.cleanup77.sink.split_crit_edge:         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77.sink.split

if.then48:                                        ; preds = %if.end34
  %vsi_count = getelementptr i8, ptr %.pn116, i32 -8
  %24 = ptrtoint ptr %vsi_count to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vsi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %25)
  %cmp50 = icmp eq i16 %25, 1
  br i1 %cmp50, label %land.lhs.true52, label %if.then48.if.end63_crit_edge

if.then48.if.end63_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

land.lhs.true52:                                  ; preds = %if.then48
  %26 = ptrtoint ptr %entry1.0117 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %entry1.0117, align 4
  %tobool53.not = icmp eq ptr %27, null
  br i1 %tobool53.not, label %land.lhs.true52.if.end63_crit_edge, label %if.then54

land.lhs.true52.if.end63_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then54:                                        ; preds = %land.lhs.true52
  %vsi_map = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %27, i32 0, i32 1
  %arrayidx.i = getelementptr i32, ptr %vsi_map, i32 %div3.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i, align 4
  %30 = and i32 %29, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool58.not = icmp ne i32 %30, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %vlan_id)
  %cmp66 = icmp eq i16 %13, %vlan_id
  %or.cond111 = select i1 %tobool58.not, i1 %cmp66, i1 false
  br i1 %or.cond111, label %if.then54.cleanup77.sink.split_crit_edge, label %if.then54.for.inc_crit_edge

if.then54.for.inc_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then54.cleanup77.sink.split_crit_edge:         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77.sink.split

if.end63:                                         ; preds = %land.lhs.true52.if.end63_crit_edge, %if.then48.if.end63_crit_edge, %if.end34.if.end63_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %vlan_id)
  %cmp66.old.old = icmp eq i16 %13, %vlan_id
  br i1 %cmp66.old.old, label %if.end63.cleanup77.sink.split_crit_edge, label %if.end63.for.inc_crit_edge

if.end63.for.inc_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end63.cleanup77.sink.split_crit_edge:          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77.sink.split

for.inc:                                          ; preds = %if.end63.for.inc_crit_edge, %if.then54.for.inc_crit_edge, %if.then38.for.inc_crit_edge, %if.end27.for.inc_crit_edge, %lor.lhs.false23.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %31 = ptrtoint ptr %.pn116 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load ptr, ptr %.pn116, align 4
  %cmp10.not = icmp eq ptr %.pn, %filt_rules
  br i1 %cmp10.not, label %for.inc.cleanup77.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup77.sink.split_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77.sink.split

cleanup77.sink.split:                             ; preds = %for.inc.cleanup77.sink.split_crit_edge, %if.end63.cleanup77.sink.split_crit_edge, %if.then54.cleanup77.sink.split_crit_edge, %if.then38.cleanup77.sink.split_crit_edge, %if.end7.cleanup77.sink.split_crit_edge
  %retval.2.ph = phi i1 [ false, %if.end7.cleanup77.sink.split_crit_edge ], [ true, %if.then38.cleanup77.sink.split_crit_edge ], [ true, %if.then54.cleanup77.sink.split_crit_edge ], [ true, %if.end63.cleanup77.sink.split_crit_edge ], [ false, %for.inc.cleanup77.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  br label %cleanup77

cleanup77:                                        ; preds = %cleanup77.sink.split, %if.end4.cleanup77_crit_edge, %ice_is_vsi_valid.exit.cleanup77_crit_edge, %entry.cleanup77_crit_edge
  %retval.2 = phi i1 [ false, %entry.cleanup77_crit_edge ], [ false, %ice_is_vsi_valid.exit.cleanup77_crit_edge ], [ false, %if.end4.cleanup77_crit_edge ], [ %retval.2.ph, %cleanup77.sink.split ]
  ret i1 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_add_mac(ptr noundef %hw, ptr noundef readonly %m_list) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %m_list, null
  %tobool1.not = icmp eq ptr %hw, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup182_crit_edge, label %if.end

entry.cleanup182_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup182

if.end:                                           ; preds = %entry
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recp_list, align 4
  %filt_rule_lock = getelementptr %struct.ice_sw_recipe, ptr %3, i32 1, i32 14
  %4 = ptrtoint ptr %m_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %m_list_itr.0304 = load ptr, ptr %m_list, align 4
  %cmp.not305 = icmp eq ptr %m_list_itr.0304, %m_list
  br i1 %cmp.not305, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_lock_nested(ptr noundef %filt_rule_lock, i32 noundef 0) #13
  br label %ice_add_mac_exit.thread

for.body.lr.ph:                                   ; preds = %if.end
  %ucast_shared = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 45
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %m_list_itr.0308 = phi ptr [ %m_list_itr.0304, %for.body.lr.ph ], [ %m_list_itr.0, %cleanup.for.body_crit_edge ]
  %num_unicast.0306 = phi i16 [ 0, %for.body.lr.ph ], [ %num_unicast.1, %cleanup.for.body_crit_edge ]
  %fltr_info = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %m_list_itr.0308, i32 0, i32 2
  %l_data = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %m_list_itr.0308, i32 0, i32 2, i32 6
  %flag = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %m_list_itr.0308, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %flag to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2, ptr %flag, align 2
  %vsi_handle5 = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %m_list_itr.0308, i32 0, i32 2, i32 8
  %6 = ptrtoint ptr %vsi_handle5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vsi_handle5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %7)
  %cmp.i = icmp ult i16 %7, 768
  br i1 %cmp.i, label %ice_is_vsi_valid.exit, label %for.body.cleanup182_crit_edge

for.body.cleanup182_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup182

ice_is_vsi_valid.exit:                            ; preds = %for.body
  %conv.i = zext i16 %7 to i32
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.i.not = icmp eq ptr %9, null
  br i1 %tobool.i.not, label %ice_is_vsi_valid.exit.cleanup182_crit_edge, label %if.end7

ice_is_vsi_valid.exit.cleanup182_crit_edge:       ; preds = %ice_is_vsi_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup182

if.end7:                                          ; preds = %ice_is_vsi_valid.exit
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 4
  %fwd_id = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %m_list_itr.0308, i32 0, i32 2, i32 7
  %14 = ptrtoint ptr %fwd_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %fwd_id, align 4
  %bf.shl = shl i16 %13, 6
  %bf.clear = and i16 %bf.load, 63
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %fwd_id, align 4
  %src_id = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %m_list_itr.0308, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp11.not = icmp eq i32 %16, 1
  br i1 %cmp11.not, label %if.end13, label %if.end7.cleanup182_crit_edge

if.end7.cleanup182_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup182

if.end13:                                         ; preds = %if.end7
  %src = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %m_list_itr.0308, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %src to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %13, ptr %src, align 4
  %18 = ptrtoint ptr %fltr_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fltr_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp16.not = icmp eq i32 %19, 1
  br i1 %cmp16.not, label %lor.lhs.false17, label %if.end13.cleanup182_crit_edge

if.end13.cleanup182_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup182

lor.lhs.false17:                                  ; preds = %if.end13
  %20 = ptrtoint ptr %l_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %l_data, align 4
  %add.ptr.i = getelementptr %struct.ice_fltr_list_entry, ptr %m_list_itr.0308, i32 0, i32 2, i32 6, i32 0, i32 0, i32 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i, align 2
  %conv.i277 = zext i16 %23 to i32
  %or.i = or i32 %21, %conv.i277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i278 = icmp eq i32 %or.i, 0
  br i1 %cmp.i278, label %lor.lhs.false17.cleanup182_crit_edge, label %if.end20

lor.lhs.false17.cleanup182_crit_edge:             ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup182

if.end20:                                         ; preds = %lor.lhs.false17
  %24 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i, label %land.lhs.true, label %if.end20.if.then35_crit_edge

if.end20.if.then35_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then35

land.lhs.true:                                    ; preds = %if.end20
  %25 = ptrtoint ptr %ucast_shared to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ucast_shared, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool22.not = icmp eq i8 %26, 0
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true32

if.then23:                                        ; preds = %land.lhs.true
  tail call void @mutex_lock_nested(ptr noundef %filt_rule_lock, i32 noundef 0) #13
  %27 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %switch_info, align 8
  %recp_list.i = getelementptr inbounds %struct.ice_switch_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %recp_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %recp_list.i, align 4
  %filt_rules.i = getelementptr %struct.ice_sw_recipe, ptr %30, i32 1, i32 12
  %31 = ptrtoint ptr %filt_rules.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn20.i = load ptr, ptr %filt_rules.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %filt_rules.i
  br i1 %cmp.not21.i, label %if.then23.if.end28_crit_edge, label %if.then23.for.body.i_crit_edge

if.then23.for.body.i_crit_edge:                   ; preds = %if.then23
  br label %for.body.i

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then23.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %if.then23.for.body.i_crit_edge ]
  %l_data1.i = getelementptr i8, ptr %.pn22.i, i32 28
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %l_data, ptr noundef dereferenceable(8) %l_data1.i, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %32 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flag, align 2
  %flag3.i = getelementptr i8, ptr %.pn22.i, i32 18
  %34 = ptrtoint ptr %flag3.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flag3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %35)
  %cmp5.i = icmp eq i16 %33, %35
  br i1 %cmp5.i, label %ice_find_rule_entry.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %36 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %filt_rules.i
  br i1 %cmp.not.i, label %for.inc.i.if.end28_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end28_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

ice_find_rule_entry.exit:                         ; preds = %land.lhs.true.i
  %list_itr.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -12
  %tobool26.not = icmp eq ptr %list_itr.0.le.i, null
  br i1 %tobool26.not, label %ice_find_rule_entry.exit.if.end28_crit_edge, label %if.then27

ice_find_rule_entry.exit.if.end28_crit_edge:      ; preds = %ice_find_rule_entry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then27:                                        ; preds = %ice_find_rule_entry.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  br label %cleanup182

if.end28:                                         ; preds = %ice_find_rule_entry.exit.if.end28_crit_edge, %for.inc.i.if.end28_crit_edge, %if.then23.if.end28_crit_edge
  tail call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  %inc = add i16 %num_unicast.0306, 1
  br label %cleanup

land.lhs.true32:                                  ; preds = %land.lhs.true
  %37 = ptrtoint ptr %ucast_shared to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ucast_shared, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool34.not = icmp eq i8 %38, 0
  br i1 %tobool34.not, label %land.lhs.true32.cleanup_crit_edge, label %land.lhs.true32.if.then35_crit_edge

land.lhs.true32.if.then35_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then35

land.lhs.true32.cleanup_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then35:                                        ; preds = %land.lhs.true32.if.then35_crit_edge, %if.end20.if.then35_crit_edge
  %call36 = tail call fastcc i32 @ice_add_rule_internal(ptr noundef nonnull %hw, i8 noundef zeroext 1, ptr noundef %m_list_itr.0308)
  %status37 = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %m_list_itr.0308, i32 0, i32 1
  %39 = ptrtoint ptr %status37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call36, ptr %status37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool39.not = icmp eq i32 %call36, 0
  br i1 %tobool39.not, label %if.then35.cleanup_crit_edge, label %if.then35.cleanup182_crit_edge

if.then35.cleanup182_crit_edge:                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup182

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.then35.cleanup_crit_edge, %land.lhs.true32.cleanup_crit_edge, %if.end28
  %num_unicast.1 = phi i16 [ %num_unicast.0306, %if.then35.cleanup_crit_edge ], [ %num_unicast.0306, %land.lhs.true32.cleanup_crit_edge ], [ %inc, %if.end28 ]
  %40 = ptrtoint ptr %m_list_itr.0308 to i32
  call void @__asan_load4_noabort(i32 %40)
  %m_list_itr.0 = load ptr, ptr %m_list_itr.0308, align 4
  %cmp.not = icmp eq ptr %m_list_itr.0, %m_list
  br i1 %cmp.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %cleanup
  tail call void @mutex_lock_nested(ptr noundef %filt_rule_lock, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %num_unicast.1)
  %tobool52.not = icmp eq i16 %num_unicast.1, 0
  br i1 %tobool52.not, label %for.end.ice_add_mac_exit.thread_crit_edge, label %if.end54

for.end.ice_add_mac_exit.thread_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_add_mac_exit.thread

if.end54:                                         ; preds = %for.end
  %41 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %recp_list, align 4
  %filt_rules = getelementptr %struct.ice_sw_recipe, ptr %42, i32 1, i32 12
  %add.ptr59 = getelementptr i8, ptr %hw, i32 -2960
  %conv60 = zext i16 %num_unicast.1 to i32
  %43 = shl nuw nsw i32 %conv60, 5
  %44 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr59, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %43, i32 noundef 3520) #13
  %tobool63.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool63.not, label %if.end54.ice_add_mac_exit.thread_crit_edge, label %for.cond70.preheader

if.end54.ice_add_mac_exit.thread_crit_edge:       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_add_mac_exit.thread

for.cond70.preheader:                             ; preds = %if.end54
  %46 = ptrtoint ptr %m_list to i32
  call void @__asan_load4_noabort(i32 %46)
  %m_list_itr.1309 = load ptr, ptr %m_list, align 4
  %cmp72.not310 = icmp eq ptr %m_list_itr.1309, %m_list
  br i1 %cmp72.not310, label %for.cond70.preheader.for.body98.preheader_crit_edge, label %for.cond70.preheader.for.body75_crit_edge

for.cond70.preheader.for.body75_crit_edge:        ; preds = %for.cond70.preheader
  br label %for.body75

for.cond70.preheader.for.body98.preheader_crit_edge: ; preds = %for.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body98.preheader

for.body98.preheader:                             ; preds = %if.end86.for.body98.preheader_crit_edge, %for.cond70.preheader.for.body98.preheader_crit_edge
  %47 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  br label %for.body98

for.body75:                                       ; preds = %if.end86.for.body75_crit_edge, %for.cond70.preheader.for.body75_crit_edge
  %m_list_itr.1312 = phi ptr [ %m_list_itr.1, %if.end86.for.body75_crit_edge ], [ %m_list_itr.1309, %for.cond70.preheader.for.body75_crit_edge ]
  %r_iter.0311 = phi ptr [ %r_iter.1, %if.end86.for.body75_crit_edge ], [ %call5.i.i, %for.cond70.preheader.for.body75_crit_edge ]
  %l_data78 = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %m_list_itr.1312, i32 0, i32 2, i32 6
  %48 = ptrtoint ptr %l_data78 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %l_data78, align 4
  %50 = and i32 %49, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.i.not.i281 = icmp eq i32 %50, 0
  br i1 %tobool.i.not.i281, label %if.then82, label %for.body75.if.end86_crit_edge

for.body75.if.end86_crit_edge:                    ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then82:                                        ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #15
  %fltr_info76 = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %m_list_itr.1312, i32 0, i32 2
  tail call fastcc void @ice_fill_sw_rule(ptr noundef nonnull %hw, ptr noundef %fltr_info76, ptr noundef %r_iter.0311, i32 noundef 672)
  %add.ptr85 = getelementptr i8, ptr %r_iter.0311, i32 32
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %for.body75.if.end86_crit_edge
  %r_iter.1 = phi ptr [ %add.ptr85, %if.then82 ], [ %r_iter.0311, %for.body75.if.end86_crit_edge ]
  %51 = ptrtoint ptr %m_list_itr.1312 to i32
  call void @__asan_load4_noabort(i32 %51)
  %m_list_itr.1 = load ptr, ptr %m_list_itr.1312, align 4
  %cmp72.not = icmp eq ptr %m_list_itr.1, %m_list
  br i1 %cmp72.not, label %if.end86.for.body98.preheader_crit_edge, label %if.end86.for.body75_crit_edge

if.end86.for.body75_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body75

if.end86.for.body98.preheader_crit_edge:          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body98.preheader

for.cond134.preheader:                            ; preds = %for.inc125
  %52 = ptrtoint ptr %m_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %m_list_itr.2316 = load ptr, ptr %m_list, align 4
  %cmp136.not317 = icmp eq ptr %m_list_itr.2316, %m_list
  br i1 %cmp136.not317, label %for.cond134.preheader.ice_add_mac_exit_crit_edge, label %for.cond134.preheader.for.body139_crit_edge

for.cond134.preheader.for.body139_crit_edge:      ; preds = %for.cond134.preheader
  br label %for.body139

for.cond134.preheader.ice_add_mac_exit_crit_edge: ; preds = %for.cond134.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_add_mac_exit

for.body98:                                       ; preds = %for.inc125.for.body98_crit_edge, %for.body98.preheader
  %r_iter.2315 = phi ptr [ %add.ptr121, %for.inc125.for.body98_crit_edge ], [ %call5.i.i, %for.body98.preheader ]
  %total_elem_left.0314 = phi i16 [ %conv128, %for.inc125.for.body98_crit_edge ], [ %num_unicast.1, %for.body98.preheader ]
  %53 = and i16 %total_elem_left.0314, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp106.not.not = icmp eq i16 %53, 0
  %conv104 = trunc i16 %total_elem_left.0314 to i8
  %cond = select i1 %cmp106.not.not, i8 %conv104, i8 -128
  %conv111 = zext i8 %cond to i32
  %mul = shl nuw nsw i32 %conv111, 5
  %conv113 = trunc i32 %mul to i16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #13
  %54 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 672) #13
  %55 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %desc.i, align 4
  %57 = or i16 %56, 4
  store i16 %57, ptr %desc.i, align 4
  %conv6.i = zext i8 %cond to i16
  %58 = shl nuw i16 %conv6.i, 8
  %59 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %47, align 4
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %r_iter.2315, i16 noundef zeroext %conv113, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool115.not = icmp eq i32 %call.i, 0
  br i1 %tobool115.not, label %for.inc125, label %for.body98.ice_add_mac_exit_crit_edge

for.body98.ice_add_mac_exit_crit_edge:            ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_add_mac_exit

for.inc125:                                       ; preds = %for.body98
  %add.ptr121 = getelementptr i8, ptr %r_iter.2315, i32 %mul
  %conv128 = sub i16 %total_elem_left.0314, %conv6.i
  %cmp96.not = icmp eq i16 %conv128, 0
  br i1 %cmp96.not, label %for.cond134.preheader, label %for.inc125.for.body98_crit_edge

for.inc125.for.body98_crit_edge:                  ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body98

for.body139:                                      ; preds = %cleanup162.for.body139_crit_edge, %for.cond134.preheader.for.body139_crit_edge
  %m_list_itr.2319 = phi ptr [ %m_list_itr.2, %cleanup162.for.body139_crit_edge ], [ %m_list_itr.2316, %for.cond134.preheader.for.body139_crit_edge ]
  %r_iter.4318 = phi ptr [ %r_iter.6, %cleanup162.for.body139_crit_edge ], [ %call5.i.i, %for.cond134.preheader.for.body139_crit_edge ]
  %fltr_info141 = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %m_list_itr.2319, i32 0, i32 2
  %l_data143 = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %m_list_itr.2319, i32 0, i32 2, i32 6
  %60 = ptrtoint ptr %l_data143 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %l_data143, align 4
  %62 = and i32 %61, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.i.not.i282 = icmp eq i32 %62, 0
  br i1 %tobool.i.not.i282, label %if.then147, label %for.body139.cleanup162_crit_edge

for.body139.cleanup162_crit_edge:                 ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup162

if.then147:                                       ; preds = %for.body139
  %index = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %r_iter.4318, i32 0, i32 2, i32 0, i32 3
  %63 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %index, align 2
  %65 = call i16 @llvm.bswap.i16(i16 %64)
  %fltr_rule_id = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %m_list_itr.2319, i32 0, i32 2, i32 2
  %66 = ptrtoint ptr %fltr_rule_id to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %fltr_rule_id, align 4
  %fltr_act = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %m_list_itr.2319, i32 0, i32 2, i32 1
  %67 = ptrtoint ptr %fltr_act to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %fltr_act, align 4
  %68 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr59, align 8
  %dev152 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %call.i283 = call noalias ptr @devm_kmalloc(ptr noundef %dev152, i32 noundef 60, i32 noundef 3520) #13
  %tobool154.not = icmp eq ptr %call.i283, null
  br i1 %tobool154.not, label %if.then147.ice_add_mac_exit_crit_edge, label %if.end156

if.then147.ice_add_mac_exit_crit_edge:            ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_add_mac_exit

if.end156:                                        ; preds = %if.then147
  %fltr_info157 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %call.i283, i32 0, i32 5
  %70 = call ptr @memcpy(ptr %fltr_info157, ptr %fltr_info141, i32 36)
  %vsi_count = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %call.i283, i32 0, i32 1
  %71 = ptrtoint ptr %vsi_count to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %vsi_count, align 4
  %list_entry158 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %call.i283, i32 0, i32 4
  %72 = ptrtoint ptr %filt_rules to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %filt_rules, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list_entry158, ptr noundef %filt_rules, ptr noundef %73) #13
  br i1 %call.i.i, label %if.end.i.i284, label %if.end156.list_add.exit_crit_edge

if.end156.list_add.exit_crit_edge:                ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i284:                                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %list_entry158, ptr %prev1.i.i, align 4
  %75 = ptrtoint ptr %list_entry158 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %73, ptr %list_entry158, align 4
  %prev3.i.i = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %call.i283, i32 0, i32 4, i32 1
  %76 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %filt_rules, ptr %prev3.i.i, align 4
  %77 = ptrtoint ptr %filt_rules to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %list_entry158, ptr %filt_rules, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i284, %if.end156.list_add.exit_crit_edge
  %add.ptr160 = getelementptr i8, ptr %r_iter.4318, i32 32
  br label %cleanup162

cleanup162:                                       ; preds = %list_add.exit, %for.body139.cleanup162_crit_edge
  %r_iter.6 = phi ptr [ %add.ptr160, %list_add.exit ], [ %r_iter.4318, %for.body139.cleanup162_crit_edge ]
  %78 = ptrtoint ptr %m_list_itr.2319 to i32
  call void @__asan_load4_noabort(i32 %78)
  %m_list_itr.2 = load ptr, ptr %m_list_itr.2319, align 4
  %cmp136.not = icmp eq ptr %m_list_itr.2, %m_list
  br i1 %cmp136.not, label %cleanup162.ice_add_mac_exit_crit_edge, label %cleanup162.for.body139_crit_edge

cleanup162.for.body139_crit_edge:                 ; preds = %cleanup162
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body139

cleanup162.ice_add_mac_exit_crit_edge:            ; preds = %cleanup162
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_add_mac_exit

ice_add_mac_exit.thread:                          ; preds = %if.end54.ice_add_mac_exit.thread_crit_edge, %for.end.ice_add_mac_exit.thread_crit_edge, %for.end.thread
  %status.3.ph = phi i32 [ -12, %if.end54.ice_add_mac_exit.thread_crit_edge ], [ 0, %for.end.ice_add_mac_exit.thread_crit_edge ], [ 0, %for.end.thread ]
  tail call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  br label %cleanup182

ice_add_mac_exit:                                 ; preds = %cleanup162.ice_add_mac_exit_crit_edge, %if.then147.ice_add_mac_exit_crit_edge, %for.body98.ice_add_mac_exit_crit_edge, %for.cond134.preheader.ice_add_mac_exit_crit_edge
  %status.3 = phi i32 [ 0, %for.cond134.preheader.ice_add_mac_exit_crit_edge ], [ 0, %cleanup162.ice_add_mac_exit_crit_edge ], [ -12, %if.then147.ice_add_mac_exit_crit_edge ], [ %call.i, %for.body98.ice_add_mac_exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  %79 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr59, align 8
  %dev180 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev180, ptr noundef nonnull %call5.i.i) #13
  br label %cleanup182

cleanup182:                                       ; preds = %ice_add_mac_exit, %ice_add_mac_exit.thread, %if.then35.cleanup182_crit_edge, %if.then27, %lor.lhs.false17.cleanup182_crit_edge, %if.end13.cleanup182_crit_edge, %if.end7.cleanup182_crit_edge, %ice_is_vsi_valid.exit.cleanup182_crit_edge, %for.body.cleanup182_crit_edge, %entry.cleanup182_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup182_crit_edge ], [ %status.3, %ice_add_mac_exit ], [ %status.3.ph, %ice_add_mac_exit.thread ], [ -17, %if.then27 ], [ -22, %for.body.cleanup182_crit_edge ], [ -22, %ice_is_vsi_valid.exit.cleanup182_crit_edge ], [ -22, %if.end7.cleanup182_crit_edge ], [ -22, %lor.lhs.false17.cleanup182_crit_edge ], [ -22, %if.end13.cleanup182_crit_edge ], [ %call36, %if.then35.cleanup182_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ice_find_rule_entry(ptr nocapture noundef readonly %hw, i8 noundef zeroext %recp_id, ptr nocapture noundef readonly %f_info) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recp_list, align 4
  %idxprom = zext i8 %recp_id to i32
  %filt_rules = getelementptr %struct.ice_sw_recipe, ptr %3, i32 %idxprom, i32 12
  %flag = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 3
  %4 = ptrtoint ptr %filt_rules to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn20 = load ptr, ptr %filt_rules, align 4
  %cmp.not21 = icmp eq ptr %.pn20, %filt_rules
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %l_data = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn22 = phi ptr [ %.pn20, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %l_data1 = getelementptr i8, ptr %.pn22, i32 28
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %l_data, ptr noundef dereferenceable(8) %l_data1, i32 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %5 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flag, align 2
  %flag3 = getelementptr i8, ptr %.pn22, i32 18
  %7 = ptrtoint ptr %flag3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flag3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp5 = icmp eq i16 %6, %8
  br i1 %cmp5, label %for.end.split.loop.exit, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn22, align 4
  %cmp.not = icmp eq ptr %.pn, %filt_rules
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end.split.loop.exit:                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %list_itr.0.le = getelementptr i8, ptr %.pn22, i32 -12
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0 = phi ptr [ %list_itr.0.le, %for.end.split.loop.exit ], [ null, %entry.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  ret ptr %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_add_rule_internal(ptr noundef %hw, i8 noundef zeroext %recp_id, ptr nocapture noundef %f_entry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  %fltr_info = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2
  %vsi_handle = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2, i32 8
  %2 = ptrtoint ptr %vsi_handle to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vsi_handle, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %3)
  %cmp.i = icmp ult i16 %3, 768
  br i1 %cmp.i, label %ice_is_vsi_valid.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

ice_is_vsi_valid.exit:                            ; preds = %entry
  %conv.i = zext i16 %3 to i32
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.i.not = icmp eq ptr %5, null
  br i1 %tobool.i.not, label %ice_is_vsi_valid.exit.cleanup_crit_edge, label %if.end

ice_is_vsi_valid.exit.cleanup_crit_edge:          ; preds = %ice_is_vsi_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %ice_is_vsi_valid.exit
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 4
  %fwd_id = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2, i32 7
  %10 = ptrtoint ptr %fwd_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %fwd_id, align 4
  %bf.shl = shl i16 %9, 6
  %bf.clear = and i16 %bf.load, 63
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %fwd_id, align 4
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %recp_list, align 4
  %idxprom = zext i8 %recp_id to i32
  %filt_rule_lock = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %idxprom, i32 14
  tail call void @mutex_lock_nested(ptr noundef %filt_rule_lock, i32 noundef 0) #13
  %flag = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flag, align 2
  %conv = zext i16 %14 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %port_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %15 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port_info, align 4
  %lport = getelementptr inbounds %struct.ice_port_info, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %lport to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %lport, align 1
  %conv7 = zext i8 %18 to i16
  br label %if.end18.sink.split

if.else:                                          ; preds = %if.end
  %and10 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else.if.end18_crit_edge, label %if.then12

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %fwd_id to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load15 = load i16, ptr %fwd_id, align 4
  %bf.lshr = lshr i16 %bf.load15, 6
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %if.then12, %if.then6
  %bf.lshr.sink = phi i16 [ %bf.lshr, %if.then12 ], [ %conv7, %if.then6 ]
  %src16 = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %src16 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %bf.lshr.sink, ptr %src16, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else.if.end18_crit_edge
  %21 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %switch_info, align 8
  %recp_list.i = getelementptr inbounds %struct.ice_switch_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %recp_list.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %recp_list.i, align 4
  %filt_rules.i = getelementptr %struct.ice_sw_recipe, ptr %24, i32 %idxprom, i32 12
  %25 = ptrtoint ptr %filt_rules.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn20.i = load ptr, ptr %filt_rules.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %filt_rules.i
  br i1 %cmp.not21.i, label %if.end18.if.then21_crit_edge, label %for.body.lr.ph.i

if.end18.if.then21_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

for.body.lr.ph.i:                                 ; preds = %if.end18
  %l_data.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn22.i = phi ptr [ %.pn20.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %l_data1.i = getelementptr i8, ptr %.pn22.i, i32 28
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %l_data.i, ptr noundef dereferenceable(8) %l_data1.i, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %26 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flag, align 2
  %flag3.i = getelementptr i8, ptr %.pn22.i, i32 18
  %28 = ptrtoint ptr %flag3.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flag3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp5.i = icmp eq i16 %27, %29
  br i1 %cmp5.i, label %ice_find_rule_entry.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %30 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %filt_rules.i
  br i1 %cmp.not.i, label %for.inc.i.if.then21_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.then21_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

ice_find_rule_entry.exit:                         ; preds = %land.lhs.true.i
  %list_itr.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -12
  %tobool20.not = icmp eq ptr %list_itr.0.le.i, null
  br i1 %tobool20.not, label %ice_find_rule_entry.exit.if.then21_crit_edge, label %if.end23

ice_find_rule_entry.exit.if.then21_crit_edge:     ; preds = %ice_find_rule_entry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

if.then21:                                        ; preds = %ice_find_rule_entry.exit.if.then21_crit_edge, %for.inc.i.if.then21_crit_edge, %if.end18.if.then21_crit_edge
  tail call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  %call22 = tail call fastcc i32 @ice_create_pkt_fwd_rule(ptr noundef %hw, ptr noundef %f_entry)
  br label %cleanup

if.end23:                                         ; preds = %ice_find_rule_entry.exit
  call void @__sanitizer_cov_trace_pc() #15
  %fltr_info24 = getelementptr i8, ptr %.pn22.i, i32 8
  %call25 = tail call fastcc i32 @ice_add_update_vsi_list(ptr noundef %hw, ptr noundef nonnull %list_itr.0.le.i, ptr noundef %fltr_info24, ptr noundef %fltr_info)
  tail call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then21, %ice_is_vsi_valid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end23 ], [ %call22, %if.then21 ], [ -22, %ice_is_vsi_valid.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @ice_fill_sw_rule(ptr nocapture noundef readonly %hw, ptr noundef %f_info, ptr nocapture noundef writeonly %s_rule, i32 noundef %opc) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 674, i32 %opc)
  %cmp = icmp eq i32 %opc, 674
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %act1 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %s_rule, i32 0, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %act1 to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 0, ptr %act1, align 2
  %fltr_rule_id = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 2
  %1 = ptrtoint ptr %fltr_rule_id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %fltr_rule_id, align 4
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %index = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %s_rule, i32 0, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %index, align 2
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %pdata4 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %s_rule, i32 0, i32 2
  %hdr = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %s_rule, i32 0, i32 2, i32 1
  %5 = call ptr @memcpy(ptr %hdr, ptr @dummy_eth_header, i32 16)
  %lb_en.i = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 10
  %6 = ptrtoint ptr %lb_en.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %lb_en.i, align 1
  %lan_en.i = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 11
  %7 = ptrtoint ptr %lan_en.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %lan_en.i, align 2
  %flag.i = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 3
  %8 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flag.i, align 2
  %10 = and i16 %9, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %if.end.ice_fill_sw_info.exit_crit_edge, label %land.lhs.true.i

if.end.ice_fill_sw_info.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_fill_sw_info.exit

land.lhs.true.i:                                  ; preds = %if.end
  %fltr_act.i = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 1
  %11 = ptrtoint ptr %fltr_act.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fltr_act.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %switch.i = icmp ult i32 %12, 4
  br i1 %switch.i, label %if.then.i, label %land.lhs.true.i.ice_fill_sw_info.exit_crit_edge

land.lhs.true.i.ice_fill_sw_info.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_fill_sw_info.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %13 = ptrtoint ptr %f_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp13.not.i = icmp eq i32 %14, 4
  br i1 %cmp13.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then15.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then15.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %lb_en.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %lb_en.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then15.i, %if.then.i.if.end.i_crit_edge
  %evb_veb.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 23
  %16 = ptrtoint ptr %evb_veb.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %evb_veb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool17.not.i = icmp eq i8 %17, 0
  br i1 %tobool17.not.i, label %if.end.i.if.end61.sink.split.i_crit_edge, label %if.then18.i

if.end.i.if.end61.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.sink.split.i

if.then18.i:                                      ; preds = %if.end.i
  %18 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %14, label %if.then18.i.ice_fill_sw_info.exit_crit_edge [
    i32 0, label %if.then18.i.if.end61.sink.split.i_crit_edge
    i32 3, label %if.then18.i.if.end61.sink.split.i_crit_edge215
    i32 8, label %if.then18.i.if.end61.sink.split.i_crit_edge216
    i32 9, label %if.then18.i.if.end61.sink.split.i_crit_edge217
    i32 5, label %if.then18.i.if.end61.sink.split.i_crit_edge218
    i32 4, label %if.then18.i.if.end61.sink.split.i_crit_edge219
    i32 1, label %land.lhs.true46.i
    i32 2, label %land.lhs.true51.i
  ]

if.then18.i.if.end61.sink.split.i_crit_edge219:   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.sink.split.i

if.then18.i.if.end61.sink.split.i_crit_edge218:   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.sink.split.i

if.then18.i.if.end61.sink.split.i_crit_edge217:   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.sink.split.i

if.then18.i.if.end61.sink.split.i_crit_edge216:   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.sink.split.i

if.then18.i.if.end61.sink.split.i_crit_edge215:   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.sink.split.i

if.then18.i.if.end61.sink.split.i_crit_edge:      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.sink.split.i

if.then18.i.ice_fill_sw_info.exit_crit_edge:      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_fill_sw_info.exit

land.lhs.true46.i:                                ; preds = %if.then18.i
  %l_data.i = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 6
  %19 = ptrtoint ptr %l_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %l_data.i, align 4
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.i.not.i.i, label %land.lhs.true46.i.ice_fill_sw_info.exit_crit_edge, label %land.lhs.true46.i.if.end61.sink.split.i_crit_edge

land.lhs.true46.i.if.end61.sink.split.i_crit_edge: ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.sink.split.i

land.lhs.true46.i.ice_fill_sw_info.exit_crit_edge: ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_fill_sw_info.exit

land.lhs.true51.i:                                ; preds = %if.then18.i
  %l_data52.i = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 6
  %22 = ptrtoint ptr %l_data52.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %l_data52.i, align 4
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i83.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i83.i, label %land.lhs.true51.i.ice_fill_sw_info.exit_crit_edge, label %land.lhs.true51.i.if.end61.sink.split.i_crit_edge

land.lhs.true51.i.if.end61.sink.split.i_crit_edge: ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.sink.split.i

land.lhs.true51.i.ice_fill_sw_info.exit_crit_edge: ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_fill_sw_info.exit

if.end61.sink.split.i:                            ; preds = %land.lhs.true51.i.if.end61.sink.split.i_crit_edge, %land.lhs.true46.i.if.end61.sink.split.i_crit_edge, %if.then18.i.if.end61.sink.split.i_crit_edge, %if.then18.i.if.end61.sink.split.i_crit_edge215, %if.then18.i.if.end61.sink.split.i_crit_edge216, %if.then18.i.if.end61.sink.split.i_crit_edge217, %if.then18.i.if.end61.sink.split.i_crit_edge218, %if.then18.i.if.end61.sink.split.i_crit_edge219, %if.end.i.if.end61.sink.split.i_crit_edge
  %25 = ptrtoint ptr %lan_en.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %lan_en.i, align 2
  br label %ice_fill_sw_info.exit

ice_fill_sw_info.exit:                            ; preds = %if.end61.sink.split.i, %land.lhs.true51.i.ice_fill_sw_info.exit_crit_edge, %land.lhs.true46.i.ice_fill_sw_info.exit_crit_edge, %if.then18.i.ice_fill_sw_info.exit_crit_edge, %land.lhs.true.i.ice_fill_sw_info.exit_crit_edge, %if.end.ice_fill_sw_info.exit_crit_edge
  %fltr_act = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 1
  %26 = ptrtoint ptr %fltr_act to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fltr_act, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %27, label %ice_fill_sw_info.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb26
    i32 4, label %ice_fill_sw_info.exit.sw.epilog_crit_edge
    i32 3, label %sw.bb37
  ]

ice_fill_sw_info.exit.sw.epilog_crit_edge:        ; preds = %ice_fill_sw_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

ice_fill_sw_info.exit.cleanup_crit_edge:          ; preds = %ice_fill_sw_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %ice_fill_sw_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  %fwd_id = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 7
  %29 = ptrtoint ptr %fwd_id to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load = load i16, ptr %fwd_id, align 4
  %30 = lshr i16 %bf.load, 2
  %31 = and i16 %30, 16368
  %and = zext i16 %31 to i32
  %32 = ptrtoint ptr %f_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %f_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp6.not = icmp eq i32 %33, 4
  %or9 = or i32 %and, 131072
  %spec.select = select i1 %cmp6.not, i32 %and, i32 %or9
  br label %sw.epilog

sw.bb11:                                          ; preds = %ice_fill_sw_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  %fwd_id13 = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 7
  %34 = ptrtoint ptr %fwd_id13 to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load14 = load i16, ptr %fwd_id13, align 4
  %35 = lshr i16 %bf.load14, 2
  %36 = and i16 %35, 16368
  %37 = or i16 %36, 16384
  %or19 = zext i16 %37 to i32
  %38 = ptrtoint ptr %f_info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %f_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp21.not = icmp eq i32 %39, 4
  %or24 = or i32 %or19, 131072
  %spec.select212 = select i1 %cmp21.not, i32 %or19, i32 %or24
  br label %sw.epilog

sw.bb26:                                          ; preds = %ice_fill_sw_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  %fwd_id28 = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 7
  %40 = ptrtoint ptr %fwd_id28 to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load29 = load i16, ptr %fwd_id28, align 4
  %41 = lshr i16 %bf.load29, 1
  %42 = and i16 %41, 32752
  %43 = or i16 %42, 1
  %or34 = zext i16 %43 to i32
  br label %sw.epilog

sw.bb37:                                          ; preds = %ice_fill_sw_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  %qgrp_size = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 9
  %44 = ptrtoint ptr %qgrp_size to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %qgrp_size, align 4
  %conv38 = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp39.not = icmp eq i8 %45, 0
  %46 = tail call i32 @llvm.ctlz.i32(i32 %conv38, i1 true) #13, !range !112
  %sub.i = shl nuw nsw i32 %46, 15
  %phi.cast = and i32 %sub.i, 229376
  %phi.bo211 = xor i32 %phi.cast, 229376
  %cond59 = select i1 %cmp39.not, i32 0, i32 %phi.bo211
  %fwd_id62 = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 7
  %47 = ptrtoint ptr %fwd_id62 to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load63 = load i16, ptr %fwd_id62, align 4
  %48 = lshr i16 %bf.load63, 1
  %49 = and i16 %48, 32752
  %50 = or i16 %49, 1
  %or68 = zext i16 %50 to i32
  %or72 = or i32 %cond59, %or68
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb37, %sw.bb26, %sw.bb11, %sw.bb, %ice_fill_sw_info.exit.sw.epilog_crit_edge
  %act.0 = phi i32 [ %or72, %sw.bb37 ], [ %or34, %sw.bb26 ], [ %spec.select, %sw.bb ], [ %spec.select212, %sw.bb11 ], [ 393216, %ice_fill_sw_info.exit.sw.epilog_crit_edge ]
  %51 = ptrtoint ptr %lb_en.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %lb_en.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not = icmp eq i8 %52, 0
  %or74 = or i32 %act.0, 4
  %spec.select213 = select i1 %tobool.not, i32 %act.0, i32 %or74
  %53 = ptrtoint ptr %lan_en.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %lan_en.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool76.not = icmp eq i8 %54, 0
  %or78 = or i32 %spec.select213, 8
  %act.2 = select i1 %tobool76.not, i32 %spec.select213, i32 %or78
  %55 = ptrtoint ptr %f_info to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %f_info, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %56, label %sw.epilog.sw.epilog116_crit_edge [
    i32 1, label %sw.bb81
    i32 4, label %sw.bb83
    i32 8, label %sw.bb96
    i32 0, label %sw.epilog.sw.bb100_crit_edge
    i32 2, label %sw.bb102
    i32 9, label %sw.bb108
    i32 3, label %sw.epilog.sw.bb111_crit_edge
  ]

sw.epilog.sw.bb111_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb111

sw.epilog.sw.bb100_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb100

sw.epilog.sw.epilog116_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog116

sw.bb81:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %l_data = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 6
  br label %sw.epilog116

sw.bb83:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %l_data84 = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 6
  %58 = ptrtoint ptr %l_data84 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %l_data84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %switch = icmp ult i32 %27, 2
  %or94 = or i32 %act.2, 98306
  %spec.select214 = select i1 %switch, i32 %or94, i32 %act.2
  br label %sw.epilog116

sw.bb96:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %mac_addr98 = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 6, i32 0, i32 0, i32 2
  br label %sw.bb100

sw.bb100:                                         ; preds = %sw.bb96, %sw.epilog.sw.bb100_crit_edge
  %daddr.0 = phi ptr [ null, %sw.epilog.sw.bb100_crit_edge ], [ %mac_addr98, %sw.bb96 ]
  %add.ptr = getelementptr %struct.ice_aqc_sw_rules_elem, ptr %s_rule, i32 0, i32 2, i32 1, i32 12
  %l_data101 = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 6
  %60 = ptrtoint ptr %l_data101 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %l_data101, align 4
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %add.ptr, align 2
  br label %sw.epilog116

sw.bb102:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %l_data103 = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 6
  %vlan_id107 = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 6, i32 0, i32 1
  %63 = ptrtoint ptr %vlan_id107 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vlan_id107, align 2
  br label %sw.epilog116

sw.bb108:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %vlan_id110 = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 6, i32 0, i32 1
  %65 = ptrtoint ptr %vlan_id110 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vlan_id110, align 2
  br label %sw.bb111

sw.bb111:                                         ; preds = %sw.bb108, %sw.epilog.sw.bb111_crit_edge
  %vlan_id.0 = phi i16 [ 4096, %sw.epilog.sw.bb111_crit_edge ], [ %66, %sw.bb108 ]
  %l_data112 = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 6
  br label %sw.epilog116

sw.epilog116:                                     ; preds = %sw.bb111, %sw.bb102, %sw.bb100, %sw.bb83, %sw.bb81, %sw.epilog.sw.epilog116_crit_edge
  %vlan_id.1 = phi i16 [ 4096, %sw.epilog.sw.epilog116_crit_edge ], [ %vlan_id.0, %sw.bb111 ], [ %64, %sw.bb102 ], [ 4096, %sw.bb100 ], [ 4096, %sw.bb81 ], [ %59, %sw.bb83 ]
  %daddr.1 = phi ptr [ null, %sw.epilog.sw.epilog116_crit_edge ], [ %l_data112, %sw.bb111 ], [ %l_data103, %sw.bb102 ], [ %daddr.0, %sw.bb100 ], [ %l_data, %sw.bb81 ], [ null, %sw.bb83 ]
  %act.3 = phi i32 [ %act.2, %sw.epilog.sw.epilog116_crit_edge ], [ %act.2, %sw.bb111 ], [ %act.2, %sw.bb102 ], [ %act.2, %sw.bb100 ], [ %act.2, %sw.bb81 ], [ %spec.select214, %sw.bb83 ]
  %67 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %flag.i, align 2
  %69 = shl i16 %68, 8
  %70 = and i16 %69, 256
  %71 = xor i16 %70, 256
  %72 = ptrtoint ptr %s_rule to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %s_rule, align 2
  %73 = ptrtoint ptr %f_info to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %f_info, align 4
  %conv123 = trunc i32 %74 to i16
  %75 = tail call i16 @llvm.bswap.i16(i16 %conv123)
  %76 = ptrtoint ptr %pdata4 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %pdata4, align 2
  %src = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 4
  %77 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %src, align 4
  %79 = tail call i16 @llvm.bswap.i16(i16 %78)
  %src126 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %s_rule, i32 0, i32 2, i32 0, i32 1
  %80 = ptrtoint ptr %src126 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %src126, align 2
  %81 = tail call i32 @llvm.bswap.i32(i32 %act.3)
  %act128 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %s_rule, i32 0, i32 2, i32 0, i32 2
  %82 = ptrtoint ptr %act128 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %81, ptr %act128, align 2
  %tobool129.not = icmp eq ptr %daddr.1, null
  br i1 %tobool129.not, label %sw.epilog116.if.end132_crit_edge, label %if.then130

sw.epilog116.if.end132_crit_edge:                 ; preds = %sw.epilog116
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

if.then130:                                       ; preds = %sw.epilog116
  call void @__sanitizer_cov_trace_pc() #15
  %83 = ptrtoint ptr %daddr.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %daddr.1, align 4
  %85 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %hdr, align 4
  %add.ptr.i = getelementptr i8, ptr %daddr.1, i32 4
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ice_aqc_sw_rules_elem, ptr %s_rule, i32 0, i32 2, i32 1, i32 4
  %88 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %add.ptr1.i, align 2
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %sw.epilog116.if.end132_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %vlan_id.1)
  %cmp134 = icmp ugt i16 %vlan_id.1, 4095
  br i1 %cmp134, label %if.end132.if.end138_crit_edge, label %if.then136

if.end132.if.end138_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end138

if.then136:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr137 = getelementptr %struct.ice_aqc_sw_rules_elem, ptr %s_rule, i32 0, i32 2, i32 1, i32 14
  %89 = ptrtoint ptr %add.ptr137 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %vlan_id.1, ptr %add.ptr137, align 2
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %if.end132.if.end138_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 673, i32 %opc)
  %cmp139.not = icmp eq i32 %opc, 673
  br i1 %cmp139.not, label %if.end138.cleanup_crit_edge, label %if.end138.cleanup.sink.split_crit_edge

if.end138.cleanup.sink.split_crit_edge:           ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end138.cleanup_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end138.cleanup.sink.split_crit_edge, %if.then
  %.sink = phi i16 [ 0, %if.then ], [ 4096, %if.end138.cleanup.sink.split_crit_edge ]
  %hdr_len143 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %s_rule, i32 0, i32 2, i32 0, i32 4
  %90 = ptrtoint ptr %hdr_len143 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %.sink, ptr %hdr_len143, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end138.cleanup_crit_edge, %ice_fill_sw_info.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_add_vlan(ptr noundef %hw, ptr noundef readonly %v_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %v_list, null
  %tobool1.not = icmp eq ptr %hw, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond:                                         ; preds = %if.end4.for.cond_crit_edge, %entry.for.cond_crit_edge
  %v_list_itr.0.in = phi ptr [ %v_list_itr.0, %if.end4.for.cond_crit_edge ], [ %v_list, %entry.for.cond_crit_edge ]
  %0 = ptrtoint ptr %v_list_itr.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %v_list_itr.0 = load ptr, ptr %v_list_itr.0.in, align 4
  %cmp.not = icmp eq ptr %v_list_itr.0, %v_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %fltr_info = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %v_list_itr.0, i32 0, i32 2
  %1 = ptrtoint ptr %fltr_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fltr_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp2.not = icmp eq i32 %2, 4
  br i1 %cmp2.not, label %if.end4, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %flag = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %v_list_itr.0, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %flag to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2, ptr %flag, align 2
  %call = tail call fastcc i32 @ice_add_vlan_internal(ptr noundef nonnull %hw, ptr noundef %v_list_itr.0)
  %status = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %v_list_itr.0, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %status, align 4
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end4.for.cond_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4.for.cond_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

cleanup:                                          ; preds = %if.end4.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %if.end4.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_add_vlan_internal(ptr noundef %hw, ptr nocapture noundef %f_entry) unnamed_addr #0 align 64 {
entry:
  %vsi_list_id = alloca i16, align 2
  %vsi_handle = alloca i16, align 2
  %tmp_fltr = alloca %struct.ice_fltr_info, align 4
  %vsi_handle_arr = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vsi_list_id) #13
  %2 = ptrtoint ptr %vsi_list_id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %vsi_list_id, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vsi_handle) #13
  %fltr_info = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2
  %vsi_handle1 = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2, i32 8
  %3 = ptrtoint ptr %vsi_handle1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vsi_handle1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %4)
  %cmp.i = icmp ult i16 %4, 768
  br i1 %cmp.i, label %ice_is_vsi_valid.exit, label %entry.cleanup130_crit_edge

entry.cleanup130_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup130

ice_is_vsi_valid.exit:                            ; preds = %entry
  %conv.i = zext i16 %4 to i32
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.i.not = icmp eq ptr %6, null
  br i1 %tobool.i.not, label %ice_is_vsi_valid.exit.cleanup130_crit_edge, label %if.end

ice_is_vsi_valid.exit.cleanup130_crit_edge:       ; preds = %ice_is_vsi_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup130

if.end:                                           ; preds = %ice_is_vsi_valid.exit
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 4
  %fwd_id = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2, i32 7
  %11 = ptrtoint ptr %fwd_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %fwd_id, align 4
  %bf.shl = shl i16 %10, 6
  %bf.clear = and i16 %bf.load, 63
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %fwd_id, align 4
  %l_data = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2, i32 6
  %12 = ptrtoint ptr %l_data to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %l_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %13)
  %cmp = icmp ugt i16 %13, 4095
  br i1 %cmp, label %if.end.cleanup130_crit_edge, label %if.end9

if.end.cleanup130_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup130

if.end9:                                          ; preds = %if.end
  %src_id = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp10.not = icmp eq i32 %15, 1
  br i1 %cmp10.not, label %if.end13, label %if.end9.cleanup130_crit_edge

if.end9.cleanup130_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup130

if.end13:                                         ; preds = %if.end9
  %bf.lshr = and i16 %10, 1023
  %src = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %src to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %bf.lshr, ptr %src, align 4
  %17 = ptrtoint ptr %fltr_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fltr_info, align 4
  %19 = ptrtoint ptr %vsi_handle to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %4, ptr %vsi_handle, align 2
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %recp_list, align 4
  %filt_rule_lock = getelementptr %struct.ice_sw_recipe, ptr %21, i32 4, i32 14
  tail call void @mutex_lock_nested(ptr noundef %filt_rule_lock, i32 noundef 0) #13
  %22 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %switch_info, align 8
  %recp_list.i = getelementptr inbounds %struct.ice_switch_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %recp_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %recp_list.i, align 4
  %filt_rules.i = getelementptr %struct.ice_sw_recipe, ptr %25, i32 4, i32 12
  %flag.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %filt_rules.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn20.i = load ptr, ptr %filt_rules.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %filt_rules.i
  br i1 %cmp.not21.i, label %if.end13.if.then19_crit_edge, label %if.end13.for.body.i_crit_edge

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

if.end13.if.then19_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %if.end13.for.body.i_crit_edge ]
  %l_data1.i = getelementptr i8, ptr %.pn22.i, i32 28
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %l_data, ptr noundef dereferenceable(8) %l_data1.i, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %27 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flag.i, align 2
  %flag3.i = getelementptr i8, ptr %.pn22.i, i32 18
  %29 = ptrtoint ptr %flag3.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flag3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp5.i = icmp eq i16 %28, %30
  br i1 %cmp5.i, label %ice_find_rule_entry.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %31 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %filt_rules.i
  br i1 %cmp.not.i, label %for.inc.i.if.then19_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.then19_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

ice_find_rule_entry.exit:                         ; preds = %land.lhs.true.i
  %list_itr.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -12
  %tobool.not = icmp eq ptr %list_itr.0.le.i, null
  br i1 %tobool.not, label %ice_find_rule_entry.exit.if.then19_crit_edge, label %if.else52

ice_find_rule_entry.exit.if.then19_crit_edge:     ; preds = %ice_find_rule_entry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

if.then19:                                        ; preds = %ice_find_rule_entry.exit.if.then19_crit_edge, %for.inc.i.if.then19_crit_edge, %if.end13.if.then19_crit_edge
  %fltr_act = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %fltr_act to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fltr_act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp20 = icmp eq i32 %33, 0
  br i1 %cmp20, label %if.then22, label %if.then19.if.end38_crit_edge

if.then19.if.end38_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then22:                                        ; preds = %if.then19
  %call23 = call fastcc ptr @ice_find_vsi_list_entry(ptr noundef %hw, i16 noundef zeroext %4, ptr noundef nonnull %vsi_list_id)
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.then25, label %if.then22.if.end30_crit_edge

if.then22.if.end30_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then25:                                        ; preds = %if.then22
  %call26 = call fastcc i32 @ice_create_vsi_list_rule(ptr noundef %hw, ptr noundef nonnull %vsi_handle, i16 noundef zeroext 1, ptr noundef nonnull %vsi_list_id, i32 noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then25.if.end30_crit_edge, label %if.then25.exit_crit_edge

if.then25.exit_crit_edge:                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.end30:                                         ; preds = %if.then25.if.end30_crit_edge, %if.then22.if.end30_crit_edge
  %34 = ptrtoint ptr %fltr_act to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %fltr_act, align 4
  %35 = ptrtoint ptr %vsi_list_id to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vsi_list_id, align 2
  %37 = ptrtoint ptr %fwd_id to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load33 = load i16, ptr %fwd_id, align 4
  %bf.shl35 = shl i16 %36, 6
  %bf.clear36 = and i16 %bf.load33, 63
  %bf.set37 = or i16 %bf.clear36, %bf.shl35
  store i16 %bf.set37, ptr %fwd_id, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end30, %if.then19.if.end38_crit_edge
  %map_info.0 = phi ptr [ %call23, %if.end30 ], [ null, %if.then19.if.end38_crit_edge ]
  %call39 = tail call fastcc i32 @ice_create_pkt_fwd_rule(ptr noundef %hw, ptr noundef %f_entry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end38.exit_crit_edge

if.end38.exit_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

if.then41:                                        ; preds = %if.end38
  %call42 = tail call fastcc ptr @ice_find_rule_entry(ptr noundef %hw, i8 noundef zeroext 4, ptr noundef %fltr_info)
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.then41.exit_crit_edge, label %if.end45

if.then41.exit_crit_edge:                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

if.end45:                                         ; preds = %if.then41
  %tobool46.not = icmp eq ptr %map_info.0, null
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %call42 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %map_info.0, ptr %call42, align 4
  %ref_cnt = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %map_info.0, i32 0, i32 3
  %39 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ref_cnt, align 2
  %inc = add i16 %40, 1
  store i16 %inc, ptr %ref_cnt, align 2
  br label %exit

if.else:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %vsi_list_id to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vsi_list_id, align 2
  %call48 = call fastcc ptr @ice_create_vsi_list_map(ptr noundef %hw, ptr noundef nonnull %vsi_handle, i16 noundef zeroext 1, i16 noundef zeroext %42)
  %43 = ptrtoint ptr %call42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call48, ptr %call42, align 4
  br label %exit

if.else52:                                        ; preds = %ice_find_rule_entry.exit
  %44 = ptrtoint ptr %list_itr.0.le.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %list_itr.0.le.i, align 4
  %ref_cnt54 = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %ref_cnt54 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ref_cnt54, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %47)
  %cmp56 = icmp eq i16 %47, 1
  br i1 %cmp56, label %if.then58, label %if.else61

if.then58:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #15
  %fltr_info59 = getelementptr i8, ptr %.pn22.i, i32 8
  %call60 = tail call fastcc i32 @ice_add_update_vsi_list(ptr noundef %hw, ptr noundef nonnull %list_itr.0.le.i, ptr noundef %fltr_info59, ptr noundef %fltr_info)
  br label %exit

if.else61:                                        ; preds = %if.else52
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp_fltr) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vsi_handle_arr) #13
  %48 = getelementptr inbounds [2 x i16], ptr %vsi_handle_arr, i32 0, i32 1
  %vsi_count = getelementptr i8, ptr %.pn22.i, i32 -8
  %49 = ptrtoint ptr %vsi_count to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vsi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %50)
  %cmp63 = icmp ugt i16 %50, 1
  br i1 %cmp63, label %land.lhs.true, label %if.else61.if.end78_crit_edge

if.else61.if.end78_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

land.lhs.true:                                    ; preds = %if.else61
  %51 = ptrtoint ptr %list_itr.0.le.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %list_itr.0.le.i, align 4
  %ref_cnt66 = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %ref_cnt66 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %ref_cnt66, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %54)
  %cmp68 = icmp ugt i16 %54, 1
  br i1 %cmp68, label %do.body, label %land.lhs.true.if.end78_crit_edge

land.lhs.true.if.end78_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_add_vlan_internal.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_add_vlan_internal, %if.then75)) #13
          to label %cleanup123 [label %if.then75], !srcloc !111

if.then75:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_add_vlan_internal.__UNIQUE_ID_ddebug618, ptr noundef %dev, ptr noundef nonnull @.str.8) #13
  br label %cleanup123

if.end78:                                         ; preds = %land.lhs.true.if.end78_crit_edge, %if.else61.if.end78_crit_edge
  %57 = ptrtoint ptr %list_itr.0.le.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %list_itr.0.le.i, align 4
  %vsi_map = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %58, i32 0, i32 1
  %call80 = tail call i32 @_find_first_bit_be(ptr noundef %vsi_map, i32 noundef 768) #13
  %59 = trunc i32 %call80 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %59)
  %cmp84 = icmp eq i16 %4, %59
  br i1 %cmp84, label %if.end78.cleanup123_crit_edge, label %if.end87

if.end78.cleanup123_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup123

if.end87:                                         ; preds = %if.end78
  %60 = ptrtoint ptr %vsi_handle_arr to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %vsi_handle_arr, align 2
  %61 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %4, ptr %48, align 2
  %call91 = call fastcc i32 @ice_create_vsi_list_rule(ptr noundef %hw, ptr noundef nonnull %vsi_handle_arr, i16 noundef zeroext 2, ptr noundef nonnull %vsi_list_id, i32 noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end87.cleanup123_crit_edge

if.end87.cleanup123_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup123

if.end94:                                         ; preds = %if.end87
  %fltr_info95 = getelementptr i8, ptr %.pn22.i, i32 8
  %62 = call ptr @memcpy(ptr %tmp_fltr, ptr %fltr_info95, i32 36)
  %fltr_rule_id = getelementptr i8, ptr %.pn22.i, i32 16
  %63 = ptrtoint ptr %fltr_rule_id to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %fltr_rule_id, align 4
  %fltr_rule_id97 = getelementptr inbounds %struct.ice_fltr_info, ptr %tmp_fltr, i32 0, i32 2
  %65 = ptrtoint ptr %fltr_rule_id97 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %fltr_rule_id97, align 4
  %66 = ptrtoint ptr %vsi_list_id to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vsi_list_id, align 2
  %fwd_id98 = getelementptr inbounds %struct.ice_fltr_info, ptr %tmp_fltr, i32 0, i32 7
  %68 = ptrtoint ptr %fwd_id98 to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load99 = load i16, ptr %fwd_id98, align 4
  %bf.shl101 = shl i16 %67, 6
  %bf.clear102 = and i16 %bf.load99, 63
  %bf.set103 = or i16 %bf.clear102, %bf.shl101
  store i16 %bf.set103, ptr %fwd_id98, align 4
  %fltr_act104 = getelementptr inbounds %struct.ice_fltr_info, ptr %tmp_fltr, i32 0, i32 1
  %69 = ptrtoint ptr %fltr_act104 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %fltr_act104, align 4
  %call105 = call fastcc i32 @ice_update_pkt_fwd_rule(ptr noundef %hw, ptr noundef nonnull %tmp_fltr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %if.end94.cleanup123_crit_edge

if.end94.cleanup123_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup123

if.end108:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %list_itr.0.le.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %list_itr.0.le.i, align 4
  %ref_cnt110 = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %ref_cnt110 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %ref_cnt110, align 2
  %dec = add i16 %73, -1
  store i16 %dec, ptr %ref_cnt110, align 2
  %fwd_id112 = getelementptr i8, ptr %.pn22.i, i32 36
  %74 = ptrtoint ptr %fwd_id112 to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load113 = load i16, ptr %fwd_id112, align 4
  %bf.clear116 = and i16 %bf.load113, 63
  %bf.set117 = or i16 %bf.clear116, %bf.shl101
  store i16 %bf.set117, ptr %fwd_id112, align 4
  %call119 = call fastcc ptr @ice_create_vsi_list_map(ptr noundef %hw, ptr noundef nonnull %vsi_handle_arr, i16 noundef zeroext 2, i16 noundef zeroext %67)
  %75 = ptrtoint ptr %list_itr.0.le.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call119, ptr %list_itr.0.le.i, align 4
  %76 = ptrtoint ptr %vsi_count to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vsi_count, align 4
  %inc122 = add i16 %77, 1
  store i16 %inc122, ptr %vsi_count, align 4
  br label %cleanup123

cleanup123:                                       ; preds = %if.end108, %if.end94.cleanup123_crit_edge, %if.end87.cleanup123_crit_edge, %if.end78.cleanup123_crit_edge, %if.then75, %do.body
  %status.1 = phi i32 [ 0, %if.end108 ], [ -5, %if.then75 ], [ -17, %if.end78.cleanup123_crit_edge ], [ %call91, %if.end87.cleanup123_crit_edge ], [ %call105, %if.end94.cleanup123_crit_edge ], [ -5, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vsi_handle_arr) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp_fltr) #13
  br label %exit

exit:                                             ; preds = %cleanup123, %if.then58, %if.else, %if.then47, %if.then41.exit_crit_edge, %if.end38.exit_crit_edge, %if.then25.exit_crit_edge
  %status.2 = phi i32 [ %call60, %if.then58 ], [ %status.1, %cleanup123 ], [ %call26, %if.then25.exit_crit_edge ], [ -2, %if.then41.exit_crit_edge ], [ 0, %if.then47 ], [ 0, %if.else ], [ %call39, %if.end38.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  br label %cleanup130

cleanup130:                                       ; preds = %exit, %if.end9.cleanup130_crit_edge, %if.end.cleanup130_crit_edge, %ice_is_vsi_valid.exit.cleanup130_crit_edge, %entry.cleanup130_crit_edge
  %retval.0 = phi i32 [ %status.2, %exit ], [ -22, %ice_is_vsi_valid.exit.cleanup130_crit_edge ], [ -22, %if.end.cleanup130_crit_edge ], [ -22, %if.end9.cleanup130_crit_edge ], [ -22, %entry.cleanup130_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vsi_handle) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vsi_list_id) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_add_eth_mac(ptr noundef %hw, ptr noundef readonly %em_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %em_list, null
  %tobool1.not = icmp eq ptr %hw, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup16_crit_edge, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup16

for.cond:                                         ; preds = %cleanup.for.cond_crit_edge, %entry.for.cond_crit_edge
  %em_list_itr.0.in = phi ptr [ %em_list_itr.0, %cleanup.for.cond_crit_edge ], [ %em_list, %entry.for.cond_crit_edge ]
  %0 = ptrtoint ptr %em_list_itr.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %em_list_itr.0 = load ptr, ptr %em_list_itr.0.in, align 4
  %cmp.not = icmp eq ptr %em_list_itr.0, %em_list
  br i1 %cmp.not, label %for.cond.cleanup16_crit_edge, label %for.body

for.cond.cleanup16_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup16

for.body:                                         ; preds = %for.cond
  %fltr_info = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %em_list_itr.0, i32 0, i32 2
  %1 = ptrtoint ptr %fltr_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fltr_info, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %2, label %for.body.cleanup16_crit_edge [
    i32 8, label %for.body.cleanup_crit_edge
    i32 0, label %for.body.cleanup_crit_edge30
  ]

for.body.cleanup_crit_edge30:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.cleanup16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup16

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.body.cleanup_crit_edge30
  %conv = trunc i32 %2 to i8
  %call = tail call fastcc i32 @ice_add_rule_internal(ptr noundef nonnull %hw, i8 noundef zeroext %conv, ptr noundef %em_list_itr.0)
  %status = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %em_list_itr.0, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %status, align 4
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %cleanup.for.cond_crit_edge, label %cleanup.cleanup16_crit_edge

cleanup.cleanup16_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup16

cleanup.for.cond_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

cleanup16:                                        ; preds = %cleanup.cleanup16_crit_edge, %for.body.cleanup16_crit_edge, %for.cond.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup16_crit_edge ], [ -22, %for.body.cleanup16_crit_edge ], [ 0, %for.cond.cleanup16_crit_edge ], [ %call, %cleanup.cleanup16_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_remove_eth_mac(ptr noundef %hw, ptr noundef readonly %em_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %em_list, null
  %tobool1.not = icmp eq ptr %hw, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup22_crit_edge, label %if.end

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup22

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %em_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %em_list, align 4
  br label %for.cond

for.cond:                                         ; preds = %cleanup.for.cond_crit_edge, %if.end
  %em_list_itr.0 = phi ptr [ %1, %if.end ], [ %tmp.0, %cleanup.for.cond_crit_edge ]
  %2 = ptrtoint ptr %em_list_itr.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %em_list_itr.0, align 4
  %cmp.not = icmp eq ptr %em_list_itr.0, %em_list
  br i1 %cmp.not, label %for.cond.cleanup22_crit_edge, label %for.body

for.cond.cleanup22_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup22

for.body:                                         ; preds = %for.cond
  %fltr_info = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %em_list_itr.0, i32 0, i32 2
  %3 = ptrtoint ptr %fltr_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fltr_info, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %4, label %for.body.cleanup22_crit_edge [
    i32 8, label %for.body.cleanup_crit_edge
    i32 0, label %for.body.cleanup_crit_edge38
  ]

for.body.cleanup_crit_edge38:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.cleanup22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup22

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.body.cleanup_crit_edge38
  %conv = trunc i32 %4 to i8
  %call = tail call fastcc i32 @ice_remove_rule_internal(ptr noundef nonnull %hw, i8 noundef zeroext %conv, ptr noundef %em_list_itr.0)
  %status = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %em_list_itr.0, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %status, align 4
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %cleanup.for.cond_crit_edge, label %cleanup.cleanup22_crit_edge

cleanup.cleanup22_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup22

cleanup.for.cond_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

cleanup22:                                        ; preds = %cleanup.cleanup22_crit_edge, %for.body.cleanup22_crit_edge, %for.cond.cleanup22_crit_edge, %entry.cleanup22_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup22_crit_edge ], [ -22, %for.body.cleanup22_crit_edge ], [ 0, %for.cond.cleanup22_crit_edge ], [ %call, %cleanup.cleanup22_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_remove_rule_internal(ptr noundef %hw, i8 noundef zeroext %recp_id, ptr nocapture noundef %f_entry) unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  %vsi_handle1 = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2, i32 8
  %2 = ptrtoint ptr %vsi_handle1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vsi_handle1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %3)
  %cmp.i = icmp ult i16 %3, 768
  br i1 %cmp.i, label %ice_is_vsi_valid.exit, label %entry.cleanup58_crit_edge

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup58

ice_is_vsi_valid.exit:                            ; preds = %entry
  %conv.i = zext i16 %3 to i32
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.i.not = icmp eq ptr %5, null
  br i1 %tobool.i.not, label %ice_is_vsi_valid.exit.cleanup58_crit_edge, label %if.end

ice_is_vsi_valid.exit.cleanup58_crit_edge:        ; preds = %ice_is_vsi_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup58

if.end:                                           ; preds = %ice_is_vsi_valid.exit
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 4
  %fwd_id = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2, i32 7
  %10 = ptrtoint ptr %fwd_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %fwd_id, align 4
  %bf.shl = shl i16 %9, 6
  %bf.clear = and i16 %bf.load, 63
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %fwd_id, align 4
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %recp_list, align 4
  %idxprom = zext i8 %recp_id to i32
  %filt_rule_lock = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %idxprom, i32 14
  tail call void @mutex_lock_nested(ptr noundef %filt_rule_lock, i32 noundef 0) #13
  %13 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %switch_info, align 8
  %recp_list.i = getelementptr inbounds %struct.ice_switch_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %recp_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %recp_list.i, align 4
  %filt_rules.i = getelementptr %struct.ice_sw_recipe, ptr %16, i32 %idxprom, i32 12
  %flag.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %filt_rules.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn20.i = load ptr, ptr %filt_rules.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %filt_rules.i
  br i1 %cmp.not21.i, label %if.end.exit_crit_edge, label %for.body.lr.ph.i

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %l_data.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn22.i = phi ptr [ %.pn20.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %l_data1.i = getelementptr i8, ptr %.pn22.i, i32 28
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %l_data.i, ptr noundef dereferenceable(8) %l_data1.i, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %18 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flag.i, align 2
  %flag3.i = getelementptr i8, ptr %.pn22.i, i32 18
  %20 = ptrtoint ptr %flag3.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flag3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp5.i = icmp eq i16 %19, %21
  br i1 %cmp5.i, label %ice_find_rule_entry.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %22 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %filt_rules.i
  br i1 %cmp.not.i, label %for.inc.i.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.exit_crit_edge:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

ice_find_rule_entry.exit:                         ; preds = %land.lhs.true.i
  %list_itr.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -12
  %tobool.not = icmp eq ptr %list_itr.0.le.i, null
  br i1 %tobool.not, label %ice_find_rule_entry.exit.exit_crit_edge, label %if.end9

ice_find_rule_entry.exit.exit_crit_edge:          ; preds = %ice_find_rule_entry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

if.end9:                                          ; preds = %ice_find_rule_entry.exit
  %fltr_act = getelementptr i8, ptr %.pn22.i, i32 12
  %23 = ptrtoint ptr %fltr_act to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fltr_act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.not = icmp eq i32 %24, 1
  br i1 %cmp.not, label %if.else, label %if.end9.if.then37_crit_edge

if.end9.if.then37_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37

if.else:                                          ; preds = %if.end9
  %25 = ptrtoint ptr %list_itr.0.le.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %list_itr.0.le.i, align 4
  %tobool12.not = icmp eq ptr %26, null
  br i1 %tobool12.not, label %if.else.exit_crit_edge, label %if.else14

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

if.else14:                                        ; preds = %if.else
  %ref_cnt = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ref_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %28)
  %cmp16 = icmp ugt i16 %28, 1
  br i1 %cmp16, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #15
  %dec = add i16 %28, -1
  %29 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %dec, ptr %ref_cnt, align 2
  br label %if.then37

if.else21:                                        ; preds = %if.else14
  %30 = ptrtoint ptr %vsi_handle1 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vsi_handle1, align 2
  %call24 = tail call fastcc i32 @ice_rem_update_vsi_list(ptr noundef %hw, i16 noundef zeroext %31, ptr noundef nonnull %list_itr.0.le.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.else21.exit_crit_edge

if.else21.exit_crit_edge:                         ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

if.end27:                                         ; preds = %if.else21
  %vsi_count = getelementptr i8, ptr %.pn22.i, i32 -8
  %32 = ptrtoint ptr %vsi_count to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vsi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp29 = icmp eq i16 %33, 0
  br i1 %cmp29, label %if.end27.if.then37_crit_edge, label %if.end27.exit_crit_edge

if.end27.exit_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

if.end27.if.then37_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37

if.then37:                                        ; preds = %if.end27.if.then37_crit_edge, %if.then18, %if.end9.if.then37_crit_edge
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #13
  %tobool39.not = icmp eq ptr %call.i, null
  br i1 %tobool39.not, label %if.then37.exit_crit_edge, label %if.end41

if.then37.exit_crit_edge:                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

if.end41:                                         ; preds = %if.then37
  %act1.i = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %36 = ptrtoint ptr %act1.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 0, ptr %act1.i, align 2
  %fltr_rule_id.i = getelementptr i8, ptr %.pn22.i, i32 16
  %37 = ptrtoint ptr %fltr_rule_id.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %fltr_rule_id.i, align 4
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #13
  %index.i = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %40 = ptrtoint ptr %index.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %index.i, align 2
  %hdr_len143.i = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call.i, i32 0, i32 2, i32 0, i32 4
  %41 = ptrtoint ptr %hdr_len143.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %hdr_len143.i, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #13
  %42 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %43 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 674) #13
  %44 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %desc.i, align 4
  %46 = or i16 %45, 4
  store i16 %46, ptr %desc.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 256, ptr %43, align 4
  %call.i96 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %call.i, i16 noundef zeroext 16, ptr noundef null) #13
  %sq_last_status.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 8
  %48 = ptrtoint ptr %sq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sq_last_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp10.i = icmp eq i32 %49, 2
  %spec.select.i = select i1 %cmp10.i, i32 -2, i32 %call.i96
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 8
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev48, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool49.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool49.not, label %if.end51, label %if.end41.exit_crit_edge

if.end41.exit_crit_edge:                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

if.end51:                                         ; preds = %if.end41
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn22.i) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end51.list_del.exit_crit_edge

if.end51.list_del.exit_crit_edge:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn22.i, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %.pn22.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end51.list_del.exit_crit_edge
  %58 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn22.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn22.i, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %60 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr, align 8
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev56, ptr noundef nonnull %list_itr.0.le.i) #13
  br label %exit

exit:                                             ; preds = %list_del.exit, %if.end41.exit_crit_edge, %if.then37.exit_crit_edge, %if.end27.exit_crit_edge, %if.else21.exit_crit_edge, %if.else.exit_crit_edge, %ice_find_rule_entry.exit.exit_crit_edge, %for.inc.i.exit_crit_edge, %if.end.exit_crit_edge
  %status.2 = phi i32 [ 0, %if.end27.exit_crit_edge ], [ %call24, %if.else21.exit_crit_edge ], [ -2, %ice_find_rule_entry.exit.exit_crit_edge ], [ -2, %if.else.exit_crit_edge ], [ 0, %list_del.exit ], [ -12, %if.then37.exit_crit_edge ], [ %spec.select.i, %if.end41.exit_crit_edge ], [ -2, %if.end.exit_crit_edge ], [ -2, %for.inc.i.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  br label %cleanup58

cleanup58:                                        ; preds = %exit, %ice_is_vsi_valid.exit.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  %retval.0 = phi i32 [ %status.2, %exit ], [ -22, %ice_is_vsi_valid.exit.cleanup58_crit_edge ], [ -22, %entry.cleanup58_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_cfg_dflt_vsi(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i1 noundef zeroext %set, i8 noundef zeroext %direction) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  %f_info = alloca %struct.ice_fltr_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %f_info) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %vsi_handle)
  %cmp.i = icmp ult i16 %vsi_handle, 768
  br i1 %cmp.i, label %ice_is_vsi_valid.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

ice_is_vsi_valid.exit:                            ; preds = %entry
  %conv.i = zext i16 %vsi_handle to i32
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %ice_is_vsi_valid.exit.cleanup_crit_edge, label %if.end

ice_is_vsi_valid.exit.cleanup_crit_edge:          ; preds = %ice_is_vsi_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %ice_is_vsi_valid.exit
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %conv = select i1 %set, i16 32, i16 16
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %conv2 = zext i16 %conv to i32
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %conv2, i32 noundef 3520) #13
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = getelementptr inbounds i8, ptr %f_info, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 28)
  %10 = ptrtoint ptr %f_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %f_info, align 4
  %conv7 = zext i8 %direction to i16
  %flag = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 3
  %11 = ptrtoint ptr %flag to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv7, ptr %flag, align 2
  %fltr_act = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 1
  %12 = ptrtoint ptr %fltr_act to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %fltr_act, align 4
  %fwd_id = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 7
  %bf.shl = shl i16 %5, 6
  %13 = ptrtoint ptr %fwd_id to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %bf.shl, ptr %fwd_id, align 4
  %conv9 = zext i8 %direction to i32
  %and = and i32 %conv9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end6
  %port_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %14 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port_info, align 4
  %lport = getelementptr inbounds %struct.ice_port_info, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %lport to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %lport, align 1
  %conv12 = zext i8 %17 to i16
  %src = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 4
  %18 = ptrtoint ptr %src to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv12, ptr %src, align 4
  %src_id = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 5
  %19 = ptrtoint ptr %src_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %src_id, align 4
  br i1 %set, label %if.then11.if.end30_crit_edge, label %if.then14

if.then11.if.end30_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %dflt_rx_vsi_rule_id = getelementptr inbounds %struct.ice_port_info, ptr %15, i32 0, i32 9
  br label %if.end30.sink.split

if.else:                                          ; preds = %if.end6
  %and19 = and i32 %conv9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else.if.end30_crit_edge, label %if.then21

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then21:                                        ; preds = %if.else
  %src_id22 = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 5
  %20 = ptrtoint ptr %src_id22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %src_id22, align 4
  %src23 = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 4
  %21 = ptrtoint ptr %src23 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %5, ptr %src23, align 4
  br i1 %set, label %if.then21.if.end30_crit_edge, label %if.then25

if.then21.if.end30_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  %port_info26 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %22 = ptrtoint ptr %port_info26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port_info26, align 4
  %dflt_tx_vsi_rule_id = getelementptr inbounds %struct.ice_port_info, ptr %23, i32 0, i32 7
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.then25, %if.then14
  %dflt_tx_vsi_rule_id.sink = phi ptr [ %dflt_tx_vsi_rule_id, %if.then25 ], [ %dflt_rx_vsi_rule_id, %if.then14 ]
  %24 = ptrtoint ptr %dflt_tx_vsi_rule_id.sink to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %dflt_tx_vsi_rule_id.sink, align 2
  %fltr_rule_id27 = getelementptr inbounds %struct.ice_fltr_info, ptr %f_info, i32 0, i32 2
  %26 = ptrtoint ptr %fltr_rule_id27 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %fltr_rule_id27, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.then21.if.end30_crit_edge, %if.else.if.end30_crit_edge, %if.then11.if.end30_crit_edge
  %. = select i1 %set, i32 672, i32 674
  call fastcc void @ice_fill_sw_rule(ptr noundef %hw, ptr noundef nonnull %f_info, ptr noundef nonnull %call.i, i32 noundef %.)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #13
  %27 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %28 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %conv.i131 = trunc i32 %. to i16
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext %conv.i131) #13
  %29 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %desc.i, align 4
  %31 = or i16 %30, 4
  store i16 %31, ptr %desc.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 256, ptr %28, align 4
  %call.i132 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %call.i, i16 noundef zeroext %conv, ptr noundef null) #13
  br i1 %set, label %if.end30.ice_aq_sw_rules.exit_crit_edge, label %land.lhs.true9.i

if.end30.ice_aq_sw_rules.exit_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_aq_sw_rules.exit

land.lhs.true9.i:                                 ; preds = %if.end30
  %sq_last_status.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 8
  %33 = ptrtoint ptr %sq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sq_last_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp10.i = icmp eq i32 %34, 2
  br i1 %cmp10.i, label %ice_aq_sw_rules.exit.thread, label %land.lhs.true9.i.ice_aq_sw_rules.exit_crit_edge

land.lhs.true9.i.ice_aq_sw_rules.exit_crit_edge:  ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_aq_sw_rules.exit

ice_aq_sw_rules.exit.thread:                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  br label %out

ice_aq_sw_rules.exit:                             ; preds = %land.lhs.true9.i.ice_aq_sw_rules.exit_crit_edge, %if.end30.ice_aq_sw_rules.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool36.not = icmp eq i32 %call.i132, 0
  br i1 %tobool36.not, label %lor.lhs.false, label %ice_aq_sw_rules.exit.out_crit_edge

ice_aq_sw_rules.exit.out_crit_edge:               ; preds = %ice_aq_sw_rules.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false:                                    ; preds = %ice_aq_sw_rules.exit
  %35 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %flag, align 2
  %conv38 = zext i16 %36 to i32
  %and39 = and i32 %conv38, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %lor.lhs.false.out_crit_edge, label %if.end42

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end42:                                         ; preds = %lor.lhs.false
  br i1 %set, label %if.then44, label %if.else65

if.then44:                                        ; preds = %if.end42
  %index45 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %37 = ptrtoint ptr %index45 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %index45, align 2
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  %and48 = and i32 %conv38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.else54, label %if.then50

if.then50:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  %port_info51 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %40 = ptrtoint ptr %port_info51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port_info51, align 4
  %dflt_tx_vsi_num = getelementptr inbounds %struct.ice_port_info, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %dflt_tx_vsi_num to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %5, ptr %dflt_tx_vsi_num, align 4
  %43 = load ptr, ptr %port_info51, align 4
  %dflt_tx_vsi_rule_id53 = getelementptr inbounds %struct.ice_port_info, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %dflt_tx_vsi_rule_id53 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %39, ptr %dflt_tx_vsi_rule_id53, align 2
  br label %out

if.else54:                                        ; preds = %if.then44
  %and57 = and i32 %conv38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.else54.out_crit_edge, label %if.then59

if.else54.out_crit_edge:                          ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then59:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #15
  %port_info60 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %45 = ptrtoint ptr %port_info60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port_info60, align 4
  %dflt_rx_vsi_num = getelementptr inbounds %struct.ice_port_info, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %dflt_rx_vsi_num to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %5, ptr %dflt_rx_vsi_num, align 8
  %48 = load ptr, ptr %port_info60, align 4
  %dflt_rx_vsi_rule_id62 = getelementptr inbounds %struct.ice_port_info, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %dflt_rx_vsi_rule_id62 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %39, ptr %dflt_rx_vsi_rule_id62, align 2
  br label %out

if.else65:                                        ; preds = %if.end42
  %and68 = and i32 %conv38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.else75, label %if.then70

if.then70:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #15
  %port_info71 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %50 = ptrtoint ptr %port_info71 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port_info71, align 4
  %dflt_tx_vsi_num72 = getelementptr inbounds %struct.ice_port_info, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %dflt_tx_vsi_num72 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 255, ptr %dflt_tx_vsi_num72, align 4
  %53 = load ptr, ptr %port_info71, align 4
  %dflt_tx_vsi_rule_id74 = getelementptr inbounds %struct.ice_port_info, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %dflt_tx_vsi_rule_id74 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 5, ptr %dflt_tx_vsi_rule_id74, align 2
  br label %out

if.else75:                                        ; preds = %if.else65
  %and78 = and i32 %conv38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.else75.out_crit_edge, label %if.then80

if.else75.out_crit_edge:                          ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then80:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #15
  %port_info81 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %55 = ptrtoint ptr %port_info81 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %port_info81, align 4
  %dflt_rx_vsi_num82 = getelementptr inbounds %struct.ice_port_info, ptr %56, i32 0, i32 10
  %57 = ptrtoint ptr %dflt_rx_vsi_num82 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 255, ptr %dflt_rx_vsi_num82, align 8
  %58 = load ptr, ptr %port_info81, align 4
  %dflt_rx_vsi_rule_id84 = getelementptr inbounds %struct.ice_port_info, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %dflt_rx_vsi_rule_id84 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 5, ptr %dflt_rx_vsi_rule_id84, align 2
  br label %out

out:                                              ; preds = %if.then80, %if.else75.out_crit_edge, %if.then70, %if.then59, %if.else54.out_crit_edge, %if.then50, %lor.lhs.false.out_crit_edge, %ice_aq_sw_rules.exit.out_crit_edge, %ice_aq_sw_rules.exit.thread
  %retval.0.i135 = phi i32 [ -2, %ice_aq_sw_rules.exit.thread ], [ 0, %if.then50 ], [ 0, %if.then59 ], [ 0, %if.else54.out_crit_edge ], [ 0, %if.else75.out_crit_edge ], [ 0, %if.then80 ], [ 0, %if.then70 ], [ %call.i132, %ice_aq_sw_rules.exit.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ]
  %60 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr, align 8
  %dev92 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev92, ptr noundef nonnull %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %ice_is_vsi_valid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i135, %out ], [ -22, %ice_is_vsi_valid.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %f_info) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_remove_mac(ptr noundef %hw, ptr noundef readonly %m_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %m_list, null
  br i1 %tobool.not, label %entry.cleanup40_crit_edge, label %if.end

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup40

if.end:                                           ; preds = %entry
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recp_list, align 4
  %filt_rule_lock = getelementptr %struct.ice_sw_recipe, ptr %3, i32 1, i32 14
  %4 = ptrtoint ptr %m_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_list, align 4
  %ucast_shared = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 45
  br label %for.cond

for.cond:                                         ; preds = %cleanup.for.cond_crit_edge, %if.end
  %list_itr.0 = phi ptr [ %5, %if.end ], [ %tmp.0, %cleanup.for.cond_crit_edge ]
  %6 = ptrtoint ptr %list_itr.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.0 = load ptr, ptr %list_itr.0, align 4
  %cmp.not = icmp eq ptr %list_itr.0, %m_list
  br i1 %cmp.not, label %for.cond.cleanup40_crit_edge, label %for.body

for.cond.cleanup40_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup40

for.body:                                         ; preds = %for.cond
  %fltr_info = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %list_itr.0, i32 0, i32 2
  %7 = ptrtoint ptr %fltr_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fltr_info, align 4
  %l_data = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %list_itr.0, i32 0, i32 2, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp9.not = icmp eq i32 %8, 1
  br i1 %cmp9.not, label %if.end11, label %for.body.cleanup40_crit_edge

for.body.cleanup40_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup40

if.end11:                                         ; preds = %for.body
  %vsi_handle13 = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %list_itr.0, i32 0, i32 2, i32 8
  %9 = ptrtoint ptr %vsi_handle13 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vsi_handle13, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %10)
  %cmp.i = icmp ult i16 %10, 768
  br i1 %cmp.i, label %ice_is_vsi_valid.exit, label %if.end11.cleanup40_crit_edge

if.end11.cleanup40_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup40

ice_is_vsi_valid.exit:                            ; preds = %if.end11
  %conv.i = zext i16 %10 to i32
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool.i.not = icmp eq ptr %12, null
  br i1 %tobool.i.not, label %ice_is_vsi_valid.exit.cleanup40_crit_edge, label %if.end15

ice_is_vsi_valid.exit.cleanup40_crit_edge:        ; preds = %ice_is_vsi_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup40

if.end15:                                         ; preds = %ice_is_vsi_valid.exit
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 4
  %fwd_id = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %list_itr.0, i32 0, i32 2, i32 7
  %17 = ptrtoint ptr %fwd_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %fwd_id, align 4
  %bf.shl = shl i16 %16, 6
  %bf.clear = and i16 %bf.load, 63
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %fwd_id, align 4
  %18 = ptrtoint ptr %l_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %l_data, align 4
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i, label %land.lhs.true, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end15
  %21 = ptrtoint ptr %ucast_shared to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ucast_shared, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool19.not = icmp eq i8 %22, 0
  br i1 %tobool19.not, label %if.then20, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then20:                                        ; preds = %land.lhs.true
  tail call void @mutex_lock_nested(ptr noundef %filt_rule_lock, i32 noundef 0) #13
  %23 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %switch_info, align 8
  %recp_list.i = getelementptr inbounds %struct.ice_switch_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %recp_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %recp_list.i, align 4
  %filt_rules.i = getelementptr %struct.ice_sw_recipe, ptr %26, i32 1, i32 12
  %flag.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %list_itr.0, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %filt_rules.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn3.i = load ptr, ptr %filt_rules.i, align 4
  %cmp.not4.i = icmp eq ptr %.pn3.i, %filt_rules.i
  br i1 %cmp.not4.i, label %if.then20.if.then24_crit_edge, label %if.then20.for.body.i_crit_edge

if.then20.for.body.i_crit_edge:                   ; preds = %if.then20
  br label %for.body.i

if.then20.if.then24_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then20.for.body.i_crit_edge
  %.pn5.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn3.i, %if.then20.for.body.i_crit_edge ]
  %l_data1.i = getelementptr i8, ptr %.pn5.i, i32 28
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %l_data, ptr noundef dereferenceable(8) %l_data1.i, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %28 = ptrtoint ptr %fwd_id to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i = load i16, ptr %fwd_id, align 4
  %fwd_id3.i = getelementptr i8, ptr %.pn5.i, i32 36
  %29 = ptrtoint ptr %fwd_id3.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load4.i = load i16, ptr %fwd_id3.i, align 4
  %cmp7.unshifted.i = xor i16 %bf.load4.i, %bf.load.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %cmp7.unshifted.i)
  %cmp7.i = icmp ult i16 %cmp7.unshifted.i, 64
  br i1 %cmp7.i, label %land.lhs.true9.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %30 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flag.i, align 2
  %flag12.i = getelementptr i8, ptr %.pn5.i, i32 18
  %32 = ptrtoint ptr %flag12.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flag12.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp14.i = icmp eq i16 %31, %33
  br i1 %cmp14.i, label %ice_find_ucast_rule_entry.exit, label %land.lhs.true9.i.for.inc.i_crit_edge

land.lhs.true9.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true9.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %34 = ptrtoint ptr %.pn5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn.i = load ptr, ptr %.pn5.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %filt_rules.i
  br i1 %cmp.not.i, label %for.inc.i.if.then24_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.then24_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

ice_find_ucast_rule_entry.exit:                   ; preds = %land.lhs.true9.i
  %list_itr.0.le.i = getelementptr i8, ptr %.pn5.i, i32 -12
  %tobool23.not = icmp eq ptr %list_itr.0.le.i, null
  br i1 %tobool23.not, label %ice_find_ucast_rule_entry.exit.if.then24_crit_edge, label %if.end25

ice_find_ucast_rule_entry.exit.if.then24_crit_edge: ; preds = %ice_find_ucast_rule_entry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

if.then24:                                        ; preds = %ice_find_ucast_rule_entry.exit.if.then24_crit_edge, %for.inc.i.if.then24_crit_edge, %if.then20.if.then24_crit_edge
  tail call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  br label %cleanup40

if.end25:                                         ; preds = %ice_find_ucast_rule_entry.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %land.lhs.true.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  %call27 = tail call fastcc i32 @ice_remove_rule_internal(ptr noundef %hw, i8 noundef zeroext 1, ptr noundef %list_itr.0)
  %status = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %list_itr.0, i32 0, i32 1
  %35 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call27, ptr %status, align 4
  %tobool29.not = icmp eq i32 %call27, 0
  br i1 %tobool29.not, label %cleanup.for.cond_crit_edge, label %cleanup.cleanup40_crit_edge

cleanup.cleanup40_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup40

cleanup.for.cond_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

cleanup40:                                        ; preds = %cleanup.cleanup40_crit_edge, %if.then24, %ice_is_vsi_valid.exit.cleanup40_crit_edge, %if.end11.cleanup40_crit_edge, %for.body.cleanup40_crit_edge, %for.cond.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup40_crit_edge ], [ -2, %if.then24 ], [ -22, %if.end11.cleanup40_crit_edge ], [ -22, %for.body.cleanup40_crit_edge ], [ -22, %ice_is_vsi_valid.exit.cleanup40_crit_edge ], [ 0, %for.cond.cleanup40_crit_edge ], [ %call27, %cleanup.cleanup40_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_remove_vlan(ptr noundef %hw, ptr noundef readonly %v_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %v_list, null
  %tobool1.not = icmp eq ptr %hw, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup21_crit_edge, label %if.end

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup21

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %v_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v_list, align 4
  br label %for.cond

for.cond:                                         ; preds = %cleanup.for.cond_crit_edge, %if.end
  %v_list_itr.0 = phi ptr [ %1, %if.end ], [ %tmp.0, %cleanup.for.cond_crit_edge ]
  %2 = ptrtoint ptr %v_list_itr.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %v_list_itr.0, align 4
  %cmp.not = icmp eq ptr %v_list_itr.0, %v_list
  br i1 %cmp.not, label %for.cond.cleanup21_crit_edge, label %for.body

for.cond.cleanup21_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup21

for.body:                                         ; preds = %for.cond
  %fltr_info = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %v_list_itr.0, i32 0, i32 2
  %3 = ptrtoint ptr %fltr_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fltr_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp8.not = icmp eq i32 %4, 4
  br i1 %cmp8.not, label %cleanup, label %for.body.cleanup21_crit_edge

for.body.cleanup21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup21

cleanup:                                          ; preds = %for.body
  %call = tail call fastcc i32 @ice_remove_rule_internal(ptr noundef nonnull %hw, i8 noundef zeroext 4, ptr noundef %v_list_itr.0)
  %status = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %v_list_itr.0, i32 0, i32 1
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %status, align 4
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %cleanup.for.cond_crit_edge, label %cleanup.cleanup21_crit_edge

cleanup.cleanup21_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup21

cleanup.for.cond_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

cleanup21:                                        ; preds = %cleanup.cleanup21_crit_edge, %for.body.cleanup21_crit_edge, %for.cond.cleanup21_crit_edge, %entry.cleanup21_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup21_crit_edge ], [ -22, %for.body.cleanup21_crit_edge ], [ 0, %for.cond.cleanup21_crit_edge ], [ %call, %cleanup.cleanup21_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_clear_vsi_promisc(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %promisc_mask, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %remove_list_head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %remove_list_head) #13
  %2 = getelementptr inbounds %struct.list_head, ptr %remove_list_head, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %vsi_handle)
  %cmp.i = icmp ult i16 %vsi_handle, 768
  br i1 %cmp.i, label %ice_is_vsi_valid.exit, label %entry.cleanup68_crit_edge

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup68

ice_is_vsi_valid.exit:                            ; preds = %entry
  %conv.i = zext i16 %vsi_handle to i32
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool.i.not = icmp eq ptr %4, null
  br i1 %tobool.i.not, label %ice_is_vsi_valid.exit.cleanup68_crit_edge, label %if.end

ice_is_vsi_valid.exit.cleanup68_crit_edge:        ; preds = %ice_is_vsi_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup68

if.end:                                           ; preds = %ice_is_vsi_valid.exit
  %conv = zext i8 %promisc_mask to i32
  %and = and i32 %conv, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i8 3, i8 9
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %recp_list, align 4
  %idxprom = zext i8 %. to i32
  %filt_rules = getelementptr %struct.ice_sw_recipe, ptr %6, i32 %idxprom, i32 12
  %filt_rule_lock = getelementptr %struct.ice_sw_recipe, ptr %6, i32 %idxprom, i32 14
  %7 = ptrtoint ptr %remove_list_head to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %remove_list_head, ptr %remove_list_head, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %remove_list_head, ptr %2, align 4
  call void @mutex_lock_nested(ptr noundef %filt_rule_lock, i32 noundef 0) #13
  %9 = ptrtoint ptr %filt_rules to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn117 = load ptr, ptr %filt_rules, align 4
  %cmp.not118 = icmp eq ptr %.pn117, %filt_rules
  br i1 %cmp.not118, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %div3.i.i = lshr i32 %conv.i, 5
  %and.i.i = and i32 %conv.i, 31
  %10 = shl nuw i32 1, %and.i.i
  %neg = xor i32 %conv, -1
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn119 = phi ptr [ %.pn117, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %fltr_act.i = getelementptr i8, ptr %.pn119, i32 12
  %11 = ptrtoint ptr %fltr_act.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fltr_act.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %12, label %for.body.for.inc_crit_edge [
    i32 0, label %ice_vsi_uses_fltr.exit
    i32 1, label %land.lhs.true10.i
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true10.i:                                ; preds = %for.body
  %itr.0 = getelementptr i8, ptr %.pn119, i32 -12
  %14 = ptrtoint ptr %itr.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %itr.0, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %land.lhs.true10.i.for.inc_crit_edge, label %land.rhs.i102

land.lhs.true10.i.for.inc_crit_edge:              ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.rhs.i102:                                    ; preds = %land.lhs.true10.i
  %vsi_map.i = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %15, i32 0, i32 1
  %arrayidx.i.i = getelementptr i32, ptr %vsi_map.i, i32 %div3.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i, align 4
  %18 = and i32 %17, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool13.i.not = icmp eq i32 %18, 0
  br i1 %tobool13.i.not, label %land.rhs.i102.for.inc_crit_edge, label %land.rhs.i102.if.end10_crit_edge

land.rhs.i102.if.end10_crit_edge:                 ; preds = %land.rhs.i102
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

land.rhs.i102.for.inc_crit_edge:                  ; preds = %land.rhs.i102
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

ice_vsi_uses_fltr.exit:                           ; preds = %for.body
  %vsi_handle2.i = getelementptr i8, ptr %.pn119, i32 38
  %19 = ptrtoint ptr %vsi_handle2.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vsi_handle2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %vsi_handle)
  %cmp4.i = icmp eq i16 %20, %vsi_handle
  br i1 %cmp4.i, label %ice_vsi_uses_fltr.exit.if.end10_crit_edge, label %ice_vsi_uses_fltr.exit.for.inc_crit_edge

ice_vsi_uses_fltr.exit.for.inc_crit_edge:         ; preds = %ice_vsi_uses_fltr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

ice_vsi_uses_fltr.exit.if.end10_crit_edge:        ; preds = %ice_vsi_uses_fltr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.end10:                                         ; preds = %ice_vsi_uses_fltr.exit.if.end10_crit_edge, %land.rhs.i102.if.end10_crit_edge
  %fltr_info11 = getelementptr i8, ptr %.pn119, i32 8
  br i1 %tobool.not, label %if.end10.if.end20_crit_edge, label %land.lhs.true

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end10
  %vlan_id = getelementptr i8, ptr %.pn119, i32 34
  %21 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vlan_id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %vid)
  %cmp17.not = icmp eq i16 %22, %vid
  br i1 %cmp17.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end10.if.end20_crit_edge
  %l_data.i = getelementptr i8, ptr %.pn119, i32 28
  %vlan_id.i = getelementptr i8, ptr %.pn119, i32 34
  %23 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vlan_id.i, align 2
  %flag.i = getelementptr i8, ptr %.pn119, i32 18
  %25 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %26)
  %cmp.i103 = icmp eq i16 %26, 2
  %27 = ptrtoint ptr %l_data.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %l_data.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %.pn119, i32 30
  %29 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %30, %28
  %add.ptr3.i.i = getelementptr i8, ptr %.pn119, i32 32
  %31 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %conv6.i = select i1 %cmp.i103, i32 32, i32 16
  br label %ice_determine_promisc_mask.exit

if.else.i:                                        ; preds = %if.end20
  %33 = ptrtoint ptr %l_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %l_data.i, align 4
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i, label %if.else15.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv14.i = select i1 %cmp.i103, i32 8, i32 4
  br label %ice_determine_promisc_mask.exit

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv23.i = select i1 %cmp.i103, i32 2, i32 1
  br label %ice_determine_promisc_mask.exit

ice_determine_promisc_mask.exit:                  ; preds = %if.else15.i, %if.then8.i, %if.then3.i
  %promisc_mask.0.i = phi i32 [ %conv6.i, %if.then3.i ], [ %conv14.i, %if.then8.i ], [ %conv23.i, %if.else15.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool27.not.i = icmp eq i16 %24, 0
  %cond31.i = select i1 %cmp.i103, i32 128, i32 64
  %or33.i = select i1 %tobool27.not.i, i32 0, i32 %cond31.i
  %promisc_mask.1.i = or i32 %promisc_mask.0.i, %or33.i
  %and27 = and i32 %promisc_mask.1.i, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end30, label %ice_determine_promisc_mask.exit.for.inc_crit_edge

ice_determine_promisc_mask.exit.for.inc_crit_edge: ; preds = %ice_determine_promisc_mask.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end30:                                         ; preds = %ice_determine_promisc_mask.exit
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 48, i32 noundef 3520) #13
  %tobool.not.i104 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i104, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %if.end30
  %fltr_info.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2
  %38 = call ptr @memcpy(ptr %fltr_info.i, ptr %fltr_info11, i32 36)
  %fltr_act.i105 = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %fltr_act.i105 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %fltr_act.i105, align 4
  %vsi_handle4.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2, i32 8
  %40 = ptrtoint ptr %vsi_handle4.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %vsi_handle, ptr %vsi_handle4.i, align 2
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %42, align 4
  %fwd_id.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2, i32 7
  %45 = ptrtoint ptr %fwd_id.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load.i = load i16, ptr %fwd_id.i, align 4
  %bf.shl.i = shl i16 %44, 6
  %bf.clear.i = and i16 %bf.load.i, 63
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i, ptr %fwd_id.i, align 4
  %46 = ptrtoint ptr %remove_list_head to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %remove_list_head, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef nonnull %remove_list_head, ptr noundef %47) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i.i, ptr %prev1.i.i.i, align 4
  %49 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %remove_list_head, ptr %prev3.i.i.i, align 4
  %51 = ptrtoint ptr %remove_list_head to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %call.i.i, ptr %remove_list_head, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  br label %free_fltr_list

for.inc:                                          ; preds = %if.end.i.i.i, %if.end.i.for.inc_crit_edge, %ice_determine_promisc_mask.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %ice_vsi_uses_fltr.exit.for.inc_crit_edge, %land.rhs.i102.for.inc_crit_edge, %land.lhs.true10.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %52 = ptrtoint ptr %.pn119 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn = load ptr, ptr %.pn119, align 4
  %cmp.not = icmp eq ptr %.pn, %filt_rules
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  %53 = ptrtoint ptr %remove_list_head to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %remove_list_head, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.end
  %v_list_itr.0.i = phi ptr [ %54, %for.end ], [ %tmp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %v_list_itr.0.i, %remove_list_head
  br i1 %cmp.not.i, label %for.cond.i.free_fltr_list_crit_edge, label %for.body.i

for.cond.i.free_fltr_list_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_fltr_list

for.body.i:                                       ; preds = %for.cond.i
  %55 = ptrtoint ptr %v_list_itr.0.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %tmp.0.i = load ptr, ptr %v_list_itr.0.i, align 4
  %call.i = call fastcc i32 @ice_remove_rule_internal(ptr noundef %hw, i8 noundef zeroext %., ptr noundef %v_list_itr.0.i) #13
  %status.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %v_list_itr.0.i, i32 0, i32 1
  %56 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call.i, ptr %status.i, align 4
  %tobool.not.i107 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i107, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.free_fltr_list_crit_edge

for.body.i.free_fltr_list_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_fltr_list

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

free_fltr_list:                                   ; preds = %for.body.i.free_fltr_list_crit_edge, %for.cond.i.free_fltr_list_crit_edge, %cleanup
  %status.2 = phi i32 [ -12, %cleanup ], [ 0, %for.cond.i.free_fltr_list_crit_edge ], [ %call.i, %for.body.i.free_fltr_list_crit_edge ]
  %57 = ptrtoint ptr %remove_list_head to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %remove_list_head, align 4
  %cmp53.not120 = icmp eq ptr %58, %remove_list_head
  br i1 %cmp53.not120, label %free_fltr_list.cleanup68_crit_edge, label %for.body56.lr.ph

free_fltr_list.cleanup68_crit_edge:               ; preds = %free_fltr_list
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup68

for.body56.lr.ph:                                 ; preds = %free_fltr_list
  %add.ptr60 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body56

for.body56:                                       ; preds = %list_del.exit.for.body56_crit_edge, %for.body56.lr.ph
  %fm_entry.0121 = phi ptr [ %58, %for.body56.lr.ph ], [ %tmp.0, %list_del.exit.for.body56_crit_edge ]
  %59 = ptrtoint ptr %fm_entry.0121 to i32
  call void @__asan_load4_noabort(i32 %59)
  %tmp.0 = load ptr, ptr %fm_entry.0121, align 4
  %call.i.i109 = call zeroext i1 @__list_del_entry_valid(ptr noundef %fm_entry.0121) #13
  br i1 %call.i.i109, label %if.end.i.i, label %for.body56.list_del.exit_crit_edge

for.body56.list_del.exit_crit_edge:               ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fm_entry.0121, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i, align 4
  %62 = ptrtoint ptr %fm_entry.0121 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fm_entry.0121, align 4
  %prev1.i.i.i110 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i110, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body56.list_del.exit_crit_edge
  %66 = ptrtoint ptr %fm_entry.0121 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 256 to ptr), ptr %fm_entry.0121, align 4
  %prev.i111 = getelementptr inbounds %struct.list_head, ptr %fm_entry.0121, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i111, align 4
  %68 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr60, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev, ptr noundef %fm_entry.0121) #13
  %cmp53.not = icmp eq ptr %tmp.0, %remove_list_head
  br i1 %cmp53.not, label %list_del.exit.cleanup68_crit_edge, label %list_del.exit.for.body56_crit_edge

list_del.exit.for.body56_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body56

list_del.exit.cleanup68_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup68

cleanup68:                                        ; preds = %list_del.exit.cleanup68_crit_edge, %free_fltr_list.cleanup68_crit_edge, %ice_is_vsi_valid.exit.cleanup68_crit_edge, %entry.cleanup68_crit_edge
  %retval.0 = phi i32 [ -22, %ice_is_vsi_valid.exit.cleanup68_crit_edge ], [ -22, %entry.cleanup68_crit_edge ], [ %status.2, %free_fltr_list.cleanup68_crit_edge ], [ %status.2, %list_del.exit.cleanup68_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %remove_list_head) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_set_vsi_promisc(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %promisc_mask, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %f_list_entry = alloca %struct.ice_fltr_list_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %f_list_entry) #13
  %0 = call ptr @memset(ptr %f_list_entry, i32 255, i32 12)
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %vsi_handle)
  %cmp.i = icmp ult i16 %vsi_handle, 768
  br i1 %cmp.i, label %ice_is_vsi_valid.exit, label %entry.cleanup113_crit_edge

entry.cleanup113_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup113

ice_is_vsi_valid.exit:                            ; preds = %entry
  %conv.i = zext i16 %vsi_handle to i32
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.i.not = icmp eq ptr %2, null
  br i1 %tobool.i.not, label %ice_is_vsi_valid.exit.cleanup113_crit_edge, label %if.end

ice_is_vsi_valid.exit.cleanup113_crit_edge:       ; preds = %ice_is_vsi_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup113

if.end:                                           ; preds = %ice_is_vsi_valid.exit
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %promisc_mask)
  %tobool.not = icmp ult i8 %promisc_mask, 64
  %new_fltr.sroa.0.0 = select i1 %tobool.not, i32 3, i32 9
  %new_fltr.sroa.18.0 = select i1 %tobool.not, i16 0, i16 %vid
  %recipe_id.0 = select i1 %tobool.not, i8 3, i8 9
  %port_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %bf.shl = shl i16 %6, 6
  %fltr_info = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_list_entry, i32 0, i32 2
  %new_fltr.sroa.7.0.fltr_info.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_list_entry, i32 0, i32 2, i32 1
  %new_fltr.sroa.8.0.fltr_info.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_list_entry, i32 0, i32 2, i32 2
  %new_fltr.sroa.8152.0.fltr_info.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_list_entry, i32 0, i32 2, i32 3
  %new_fltr.sroa.11.0.fltr_info.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_list_entry, i32 0, i32 2, i32 4
  %new_fltr.sroa.13.0.fltr_info.sroa_idx = getelementptr inbounds i8, ptr %fltr_info, i32 14
  %new_fltr.sroa.13153.0.fltr_info.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_list_entry, i32 0, i32 2, i32 6
  %new_fltr.sroa.17.0.fltr_info.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_list_entry, i32 0, i32 2, i32 6, i32 0, i32 0, i32 4
  %new_fltr.sroa.18.0.fltr_info.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_list_entry, i32 0, i32 2, i32 6, i32 0, i32 1
  %new_fltr.sroa.19.0.fltr_info.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_list_entry, i32 0, i32 2, i32 7
  %new_fltr.sroa.21.0.fltr_info.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_list_entry, i32 0, i32 2, i32 8
  %new_fltr.sroa.22.0.fltr_info.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_list_entry, i32 0, i32 2, i32 9
  br label %while.cond

while.cond:                                       ; preds = %if.end107.while.cond_crit_edge, %if.end
  %new_fltr.sroa.13153.sroa.0.0 = phi i8 [ 0, %if.end ], [ %new_fltr.sroa.13153.sroa.0.1, %if.end107.while.cond_crit_edge ]
  %new_fltr.sroa.13153.sroa.9.sroa.0.0 = phi i24 [ 0, %if.end ], [ %new_fltr.sroa.13153.sroa.9.sroa.0.1, %if.end107.while.cond_crit_edge ]
  %new_fltr.sroa.17.0 = phi i16 [ 0, %if.end ], [ %new_fltr.sroa.17.1, %if.end107.while.cond_crit_edge ]
  %new_fltr.sroa.19.0 = phi i16 [ 0, %if.end ], [ %bf.set, %if.end107.while.cond_crit_edge ]
  %promisc_mask.addr.0 = phi i8 [ %promisc_mask, %if.end ], [ %promisc_mask.addr.2, %if.end107.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %promisc_mask.addr.0)
  %tobool5.not = icmp eq i8 %promisc_mask.addr.0, 0
  br i1 %tobool5.not, label %while.cond.cleanup113_crit_edge, label %while.body

while.cond.cleanup113_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup113

while.body:                                       ; preds = %while.cond
  %conv6 = zext i8 %promisc_mask.addr.0 to i32
  %and7 = and i32 %conv6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else13, label %if.then9

if.then9:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %and11 = and i8 %promisc_mask.addr.0, -2
  br label %if.end58

if.else13:                                        ; preds = %while.body
  %and15 = and i32 %conv6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else21, label %if.then17

if.then17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  %and19 = and i8 %promisc_mask.addr.0, -3
  br label %if.end58

if.else21:                                        ; preds = %if.else13
  %and23 = and i32 %conv6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else29, label %if.then25

if.then25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #15
  %and27 = and i8 %promisc_mask.addr.0, -5
  br label %if.end58

if.else29:                                        ; preds = %if.else21
  %and31 = and i32 %conv6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else37, label %if.then33

if.then33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #15
  %and35 = and i8 %promisc_mask.addr.0, -9
  br label %if.end58

if.else37:                                        ; preds = %if.else29
  %and39 = and i32 %conv6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else45, label %if.then41

if.then41:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #15
  %and43 = and i8 %promisc_mask.addr.0, -17
  br label %if.end58

if.else45:                                        ; preds = %if.else37
  %and47 = and i32 %conv6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.else45.if.end58_crit_edge, label %if.then49

if.else45.if.end58_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then49:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #15
  %and51 = and i8 %promisc_mask.addr.0, -33
  br label %if.end58

if.end58:                                         ; preds = %if.then49, %if.else45.if.end58_crit_edge, %if.then41, %if.then33, %if.then25, %if.then17, %if.then9
  %promisc_mask.addr.1 = phi i8 [ %and11, %if.then9 ], [ %and19, %if.then17 ], [ %and27, %if.then25 ], [ %and35, %if.then33 ], [ %and43, %if.then41 ], [ %and51, %if.then49 ], [ %promisc_mask.addr.0, %if.else45.if.end58_crit_edge ]
  %is_tx_fltr.0.off0 = phi i1 [ false, %if.then9 ], [ true, %if.then17 ], [ false, %if.then25 ], [ true, %if.then33 ], [ false, %if.then41 ], [ true, %if.then49 ], [ false, %if.else45.if.end58_crit_edge ]
  %cmp = phi i1 [ false, %if.then9 ], [ false, %if.then17 ], [ false, %if.then25 ], [ false, %if.then33 ], [ true, %if.then41 ], [ true, %if.then49 ], [ false, %if.else45.if.end58_crit_edge ]
  %cmp81 = phi i1 [ false, %if.then9 ], [ false, %if.then17 ], [ true, %if.then25 ], [ true, %if.then33 ], [ false, %if.then41 ], [ false, %if.then49 ], [ false, %if.else45.if.end58_crit_edge ]
  %cmp83 = phi i1 [ true, %if.then9 ], [ true, %if.then17 ], [ false, %if.then25 ], [ false, %if.then33 ], [ false, %if.then41 ], [ false, %if.then49 ], [ false, %if.else45.if.end58_crit_edge ]
  %conv59 = zext i8 %promisc_mask.addr.1 to i32
  %and60 = and i32 %conv59, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.else66, label %if.then62

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  %and64 = and i8 %promisc_mask.addr.1, -65
  br label %if.end75

if.else66:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  %and68 = and i32 %conv59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %and72 = and i8 %promisc_mask.addr.1, 127
  %spec.select = select i1 %tobool69.not, i8 %promisc_mask.addr.1, i8 %and72
  %not.tobool69.not = xor i1 %tobool69.not, true
  %spec.select150 = or i1 %is_tx_fltr.0.off0, %not.tobool69.not
  br label %if.end75

if.end75:                                         ; preds = %if.else66, %if.then62
  %promisc_mask.addr.2 = phi i8 [ %and64, %if.then62 ], [ %spec.select, %if.else66 ]
  %is_tx_fltr.1.off0 = phi i1 [ %is_tx_fltr.0.off0, %if.then62 ], [ %spec.select150, %if.else66 ]
  br i1 %cmp, label %if.end75.if.end93_crit_edge, label %if.else80

if.end75.if.end93_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

if.else80:                                        ; preds = %if.end75
  %brmerge = or i1 %cmp81, %cmp83
  br i1 %brmerge, label %if.then85, label %if.else80.if.end93_crit_edge

if.else80.if.end93_crit_edge:                     ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

if.then85:                                        ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select171 = select i1 %cmp81, i8 3, i8 2
  br label %if.end93

if.end93:                                         ; preds = %if.then85, %if.else80.if.end93_crit_edge, %if.end75.if.end93_crit_edge
  %new_fltr.sroa.13153.sroa.0.1 = phi i8 [ %new_fltr.sroa.13153.sroa.0.0, %if.else80.if.end93_crit_edge ], [ -1, %if.end75.if.end93_crit_edge ], [ %spec.select171, %if.then85 ]
  %new_fltr.sroa.13153.sroa.9.sroa.0.1 = phi i24 [ %new_fltr.sroa.13153.sroa.9.sroa.0.0, %if.else80.if.end93_crit_edge ], [ -1, %if.end75.if.end93_crit_edge ], [ 0, %if.then85 ]
  %new_fltr.sroa.17.1 = phi i16 [ %new_fltr.sroa.17.0, %if.else80.if.end93_crit_edge ], [ -1, %if.end75.if.end93_crit_edge ], [ 0, %if.then85 ]
  br i1 %is_tx_fltr.1.off0, label %if.end93.if.end107_crit_edge, label %if.else100

if.end93.if.end107_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

if.else100:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_info, align 4
  %lport = getelementptr inbounds %struct.ice_port_info, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %lport to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lport, align 1
  %conv105 = zext i8 %10 to i16
  br label %if.end107

if.end107:                                        ; preds = %if.else100, %if.end93.if.end107_crit_edge
  %new_fltr.sroa.8152.0 = phi i16 [ 1, %if.else100 ], [ 2, %if.end93.if.end107_crit_edge ]
  %new_fltr.sroa.11.0 = phi i16 [ %conv105, %if.else100 ], [ %6, %if.end93.if.end107_crit_edge ]
  %bf.clear = and i16 %new_fltr.sroa.19.0, 63
  %bf.set = or i16 %bf.clear, %bf.shl
  %11 = ptrtoint ptr %fltr_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %new_fltr.sroa.0.0, ptr %fltr_info, align 4
  %12 = ptrtoint ptr %new_fltr.sroa.7.0.fltr_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %new_fltr.sroa.7.0.fltr_info.sroa_idx, align 4
  %13 = ptrtoint ptr %new_fltr.sroa.8.0.fltr_info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %new_fltr.sroa.8.0.fltr_info.sroa_idx, align 4
  %14 = ptrtoint ptr %new_fltr.sroa.8152.0.fltr_info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %new_fltr.sroa.8152.0, ptr %new_fltr.sroa.8152.0.fltr_info.sroa_idx, align 2
  %15 = ptrtoint ptr %new_fltr.sroa.11.0.fltr_info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %new_fltr.sroa.11.0, ptr %new_fltr.sroa.11.0.fltr_info.sroa_idx, align 4
  %16 = call ptr @memset(ptr %new_fltr.sroa.13.0.fltr_info.sroa_idx, i32 0, i32 6)
  %new_fltr.sroa.13153.sroa.9.0.insert.ext = zext i24 %new_fltr.sroa.13153.sroa.9.sroa.0.1 to i32
  %new_fltr.sroa.13153.sroa.0.0.insert.ext = zext i8 %new_fltr.sroa.13153.sroa.0.1 to i32
  %new_fltr.sroa.13153.sroa.0.0.insert.shift = shl nuw i32 %new_fltr.sroa.13153.sroa.0.0.insert.ext, 24
  %new_fltr.sroa.13153.sroa.0.0.insert.insert = or i32 %new_fltr.sroa.13153.sroa.0.0.insert.shift, %new_fltr.sroa.13153.sroa.9.0.insert.ext
  %17 = ptrtoint ptr %new_fltr.sroa.13153.0.fltr_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %new_fltr.sroa.13153.sroa.0.0.insert.insert, ptr %new_fltr.sroa.13153.0.fltr_info.sroa_idx, align 4
  %18 = ptrtoint ptr %new_fltr.sroa.17.0.fltr_info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %new_fltr.sroa.17.1, ptr %new_fltr.sroa.17.0.fltr_info.sroa_idx, align 4
  %19 = ptrtoint ptr %new_fltr.sroa.18.0.fltr_info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %new_fltr.sroa.18.0, ptr %new_fltr.sroa.18.0.fltr_info.sroa_idx, align 2
  %20 = ptrtoint ptr %new_fltr.sroa.19.0.fltr_info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %bf.set, ptr %new_fltr.sroa.19.0.fltr_info.sroa_idx, align 4
  %21 = ptrtoint ptr %new_fltr.sroa.21.0.fltr_info.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %vsi_handle, ptr %new_fltr.sroa.21.0.fltr_info.sroa_idx, align 2
  %22 = ptrtoint ptr %new_fltr.sroa.22.0.fltr_info.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %new_fltr.sroa.22.0.fltr_info.sroa_idx, align 4
  %call109 = call fastcc i32 @ice_add_rule_internal(ptr noundef %hw, i8 noundef zeroext %recipe_id.0, ptr noundef nonnull %f_list_entry)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end107.while.cond_crit_edge, label %if.end107.cleanup113_crit_edge

if.end107.cleanup113_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup113

if.end107.while.cond_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

cleanup113:                                       ; preds = %if.end107.cleanup113_crit_edge, %while.cond.cleanup113_crit_edge, %ice_is_vsi_valid.exit.cleanup113_crit_edge, %entry.cleanup113_crit_edge
  %retval.0 = phi i32 [ -22, %ice_is_vsi_valid.exit.cleanup113_crit_edge ], [ -22, %entry.cleanup113_crit_edge ], [ 0, %while.cond.cleanup113_crit_edge ], [ %call109, %if.end107.cleanup113_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %f_list_entry) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_set_vlan_vsi_promisc(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %promisc_mask, i1 noundef zeroext %rm_vlan_promisc) local_unnamed_addr #0 align 64 {
entry:
  %vsi_list_head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsi_list_head) #13
  %2 = getelementptr inbounds %struct.list_head, ptr %vsi_list_head, i32 0, i32 1
  %3 = ptrtoint ptr %vsi_list_head to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %vsi_list_head, ptr %vsi_list_head, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vsi_list_head, ptr %2, align 4
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %recp_list, align 4
  %filt_rule_lock = getelementptr %struct.ice_sw_recipe, ptr %6, i32 4, i32 14
  %filt_rules = getelementptr %struct.ice_sw_recipe, ptr %6, i32 4, i32 12
  call void @mutex_lock_nested(ptr noundef %filt_rule_lock, i32 noundef 0) #13
  %call = call fastcc i32 @ice_add_to_vsi_fltr_list(ptr noundef %hw, i16 noundef zeroext %vsi_handle, ptr noundef %filt_rules, ptr noundef nonnull %vsi_list_head)
  call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.free_fltr_list_crit_edge

entry.free_fltr_list_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_fltr_list

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end9.for.cond_crit_edge, %entry.for.cond_crit_edge
  %list_itr.0.in = phi ptr [ %list_itr.0, %if.end9.for.cond_crit_edge ], [ %vsi_list_head, %entry.for.cond_crit_edge ]
  %7 = ptrtoint ptr %list_itr.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %list_itr.0 = load ptr, ptr %list_itr.0.in, align 4
  %cmp.not = icmp eq ptr %list_itr.0, %vsi_list_head
  br i1 %cmp.not, label %for.cond.free_fltr_list_crit_edge, label %for.body

for.cond.free_fltr_list_crit_edge:                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_fltr_list

for.body:                                         ; preds = %for.cond
  %l_data = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %list_itr.0, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %l_data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %l_data, align 4
  br i1 %rm_vlan_promisc, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = call i32 @ice_clear_vsi_promisc(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %promisc_mask, i16 noundef zeroext %9)
  br label %if.end9

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = call i32 @ice_set_vsi_promisc(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %promisc_mask, i16 noundef zeroext %9)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %status.1 = phi i32 [ %call7, %if.then6 ], [ %call8, %if.else ]
  %tobool10.not = icmp eq i32 %status.1, 0
  br i1 %tobool10.not, label %if.end9.for.cond_crit_edge, label %if.end9.free_fltr_list_crit_edge

if.end9.free_fltr_list_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_fltr_list

if.end9.for.cond_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

free_fltr_list:                                   ; preds = %if.end9.free_fltr_list_crit_edge, %for.cond.free_fltr_list_crit_edge, %entry.free_fltr_list_crit_edge
  %status.2 = phi i32 [ %call, %entry.free_fltr_list_crit_edge ], [ 0, %for.cond.free_fltr_list_crit_edge ], [ %status.1, %if.end9.free_fltr_list_crit_edge ]
  %10 = ptrtoint ptr %vsi_list_head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vsi_list_head, align 4
  %cmp29.not63 = icmp eq ptr %11, %vsi_list_head
  br i1 %cmp29.not63, label %free_fltr_list.for.end42_crit_edge, label %for.body31.lr.ph

free_fltr_list.for.end42_crit_edge:               ; preds = %free_fltr_list
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end42

for.body31.lr.ph:                                 ; preds = %free_fltr_list
  %add.ptr35 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body31

for.body31:                                       ; preds = %list_del.exit.for.body31_crit_edge, %for.body31.lr.ph
  %list_itr.164 = phi ptr [ %11, %for.body31.lr.ph ], [ %tmp.0, %list_del.exit.for.body31_crit_edge ]
  %12 = ptrtoint ptr %list_itr.164 to i32
  call void @__asan_load4_noabort(i32 %12)
  %tmp.0 = load ptr, ptr %list_itr.164, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list_itr.164) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body31.list_del.exit_crit_edge

for.body31.list_del.exit_crit_edge:               ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %list_itr.164, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %list_itr.164 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list_itr.164, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body31.list_del.exit_crit_edge
  %19 = ptrtoint ptr %list_itr.164 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %list_itr.164, align 4
  %prev.i62 = getelementptr inbounds %struct.list_head, ptr %list_itr.164, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i62 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i62, align 4
  %21 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr35, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev, ptr noundef %list_itr.164) #13
  %cmp29.not = icmp eq ptr %tmp.0, %vsi_list_head
  br i1 %cmp29.not, label %list_del.exit.for.end42_crit_edge, label %list_del.exit.for.body31_crit_edge

list_del.exit.for.body31_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body31

list_del.exit.for.end42_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end42

for.end42:                                        ; preds = %list_del.exit.for.end42_crit_edge, %free_fltr_list.for.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsi_list_head) #13
  ret i32 %status.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_add_to_vsi_fltr_list(ptr nocapture noundef readonly %hw, i16 noundef zeroext %vsi_handle, ptr noundef readonly %lkup_list_head, ptr noundef %vsi_list_head) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %vsi_handle)
  %cmp.i = icmp ult i16 %vsi_handle, 768
  br i1 %cmp.i, label %ice_is_vsi_valid.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

ice_is_vsi_valid.exit:                            ; preds = %entry
  %conv.i = zext i16 %vsi_handle to i32
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %ice_is_vsi_valid.exit.cleanup_crit_edge, label %for.cond.preheader

ice_is_vsi_valid.exit.cleanup_crit_edge:          ; preds = %ice_is_vsi_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %ice_is_vsi_valid.exit
  %2 = ptrtoint ptr %lkup_list_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn28 = load ptr, ptr %lkup_list_head, align 4
  %cmp.not29 = icmp eq ptr %.pn28, %lkup_list_head
  br i1 %cmp.not29, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %div3.i.i = lshr i32 %conv.i, 5
  %and.i.i = and i32 %conv.i, 31
  %3 = shl nuw i32 1, %and.i.i
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn30 = phi ptr [ %.pn28, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %fltr_act.i = getelementptr i8, ptr %.pn30, i32 12
  %4 = ptrtoint ptr %fltr_act.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fltr_act.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %5, label %for.body.for.inc_crit_edge [
    i32 0, label %ice_vsi_uses_fltr.exit
    i32 1, label %land.lhs.true10.i
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true10.i:                                ; preds = %for.body
  %fm_entry.0 = getelementptr i8, ptr %.pn30, i32 -12
  %7 = ptrtoint ptr %fm_entry.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fm_entry.0, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %land.lhs.true10.i.for.inc_crit_edge, label %land.rhs.i22

land.lhs.true10.i.for.inc_crit_edge:              ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.rhs.i22:                                     ; preds = %land.lhs.true10.i
  %vsi_map.i = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %8, i32 0, i32 1
  %arrayidx.i.i = getelementptr i32, ptr %vsi_map.i, i32 %div3.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i.i, align 4
  %11 = and i32 %10, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.i.not = icmp eq i32 %11, 0
  br i1 %tobool13.i.not, label %land.rhs.i22.for.inc_crit_edge, label %land.rhs.i22.if.end3_crit_edge

land.rhs.i22.if.end3_crit_edge:                   ; preds = %land.rhs.i22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

land.rhs.i22.for.inc_crit_edge:                   ; preds = %land.rhs.i22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

ice_vsi_uses_fltr.exit:                           ; preds = %for.body
  %vsi_handle2.i = getelementptr i8, ptr %.pn30, i32 38
  %12 = ptrtoint ptr %vsi_handle2.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vsi_handle2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %vsi_handle)
  %cmp4.i = icmp eq i16 %13, %vsi_handle
  br i1 %cmp4.i, label %ice_vsi_uses_fltr.exit.if.end3_crit_edge, label %ice_vsi_uses_fltr.exit.for.inc_crit_edge

ice_vsi_uses_fltr.exit.for.inc_crit_edge:         ; preds = %ice_vsi_uses_fltr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

ice_vsi_uses_fltr.exit.if.end3_crit_edge:         ; preds = %ice_vsi_uses_fltr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.end3:                                          ; preds = %ice_vsi_uses_fltr.exit.if.end3_crit_edge, %land.rhs.i22.if.end3_crit_edge
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 48, i32 noundef 3520) #13
  %tobool.not.i23 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i23, label %if.end3.cleanup_crit_edge, label %if.end.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end3
  %fltr_info = getelementptr i8, ptr %.pn30, i32 8
  %fltr_info.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2
  %16 = call ptr @memcpy(ptr %fltr_info.i, ptr %fltr_info, i32 36)
  %fltr_act.i24 = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %fltr_act.i24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %fltr_act.i24, align 4
  %vsi_handle4.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2, i32 8
  %18 = ptrtoint ptr %vsi_handle4.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %vsi_handle, ptr %vsi_handle4.i, align 2
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 4
  %fwd_id.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2, i32 7
  %23 = ptrtoint ptr %fwd_id.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i = load i16, ptr %fwd_id.i, align 4
  %bf.shl.i = shl i16 %22, 6
  %bf.clear.i = and i16 %bf.load.i, 63
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i, ptr %fwd_id.i, align 4
  %24 = ptrtoint ptr %vsi_list_head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vsi_list_head, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %vsi_list_head, ptr noundef %25) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %vsi_list_head, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %vsi_list_head to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call.i.i, ptr %vsi_list_head, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %if.end.i.for.inc_crit_edge, %ice_vsi_uses_fltr.exit.for.inc_crit_edge, %land.rhs.i22.for.inc_crit_edge, %land.lhs.true10.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %30 = ptrtoint ptr %.pn30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn30, align 4
  %cmp.not = icmp eq ptr %.pn, %lkup_list_head
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %ice_is_vsi_valid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %ice_is_vsi_valid.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_remove_vsi_fltr(ptr noundef %hw, i16 noundef zeroext %vsi_handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ice_remove_vsi_lkup_fltr(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i32 noundef 1)
  tail call fastcc void @ice_remove_vsi_lkup_fltr(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i32 noundef 2)
  tail call fastcc void @ice_remove_vsi_lkup_fltr(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i32 noundef 3)
  tail call fastcc void @ice_remove_vsi_lkup_fltr(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i32 noundef 4)
  tail call fastcc void @ice_remove_vsi_lkup_fltr(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i32 noundef 5)
  tail call fastcc void @ice_remove_vsi_lkup_fltr(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i32 noundef 0)
  tail call fastcc void @ice_remove_vsi_lkup_fltr(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i32 noundef 8)
  tail call fastcc void @ice_remove_vsi_lkup_fltr(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i32 noundef 9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_remove_vsi_lkup_fltr(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i32 noundef %lkup) unnamed_addr #0 align 64 {
entry:
  %remove_list_head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %remove_list_head) #13
  %2 = getelementptr inbounds %struct.list_head, ptr %remove_list_head, i32 0, i32 1
  %3 = ptrtoint ptr %remove_list_head to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %remove_list_head, ptr %remove_list_head, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %remove_list_head, ptr %2, align 4
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %recp_list, align 4
  %filt_rule_lock = getelementptr %struct.ice_sw_recipe, ptr %6, i32 %lkup, i32 14
  %filt_rules = getelementptr %struct.ice_sw_recipe, ptr %6, i32 %lkup, i32 12
  call void @mutex_lock_nested(ptr noundef %filt_rule_lock, i32 noundef 0) #13
  %call = call fastcc i32 @ice_add_to_vsi_fltr_list(ptr noundef %hw, i16 noundef zeroext %vsi_handle, ptr noundef %filt_rules, ptr noundef nonnull %remove_list_head)
  call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.free_fltr_list_crit_edge

entry.free_fltr_list_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_fltr_list

if.end:                                           ; preds = %entry
  %7 = zext i32 %lkup to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %lkup, label %do.body [
    i32 1, label %sw.bb
    i32 4, label %sw.bb4
    i32 3, label %if.end.sw.bb6_crit_edge
    i32 9, label %if.end.sw.bb6_crit_edge74
  ]

if.end.sw.bb6_crit_edge74:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb6

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call i32 @ice_remove_mac(ptr noundef %hw, ptr noundef nonnull %remove_list_head)
  br label %free_fltr_list

sw.bb4:                                           ; preds = %if.end
  %tobool1.not.i = icmp eq ptr %hw, null
  br i1 %tobool1.not.i, label %sw.bb4.free_fltr_list_crit_edge, label %if.end.i

sw.bb4.free_fltr_list_crit_edge:                  ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_fltr_list

if.end.i:                                         ; preds = %sw.bb4
  %8 = ptrtoint ptr %remove_list_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remove_list_head, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i.for.cond.i_crit_edge, %if.end.i
  %v_list_itr.0.i = phi ptr [ %9, %if.end.i ], [ %tmp.0.i, %cleanup.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %v_list_itr.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp.0.i = load ptr, ptr %v_list_itr.0.i, align 4
  %cmp.not.i = icmp eq ptr %v_list_itr.0.i, %remove_list_head
  br i1 %cmp.not.i, label %for.cond.i.free_fltr_list_crit_edge, label %for.body.i

for.cond.i.free_fltr_list_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_fltr_list

for.body.i:                                       ; preds = %for.cond.i
  %fltr_info.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %v_list_itr.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %fltr_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fltr_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp8.not.i = icmp eq i32 %12, 4
  br i1 %cmp8.not.i, label %cleanup.i, label %for.body.i.free_fltr_list_crit_edge

for.body.i.free_fltr_list_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_fltr_list

cleanup.i:                                        ; preds = %for.body.i
  %call.i = call fastcc i32 @ice_remove_rule_internal(ptr noundef nonnull %hw, i8 noundef zeroext 4, ptr noundef %v_list_itr.0.i) #13
  %status.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %v_list_itr.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i, ptr %status.i, align 4
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %cleanup.i.for.cond.i_crit_edge, label %cleanup.i.free_fltr_list_crit_edge

cleanup.i.free_fltr_list_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_fltr_list

cleanup.i.for.cond.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge74
  %conv = trunc i32 %lkup to i8
  %14 = ptrtoint ptr %remove_list_head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %remove_list_head, align 4
  br label %for.cond.i57

for.cond.i57:                                     ; preds = %for.body.i61.for.cond.i57_crit_edge, %sw.bb6
  %v_list_itr.0.i55 = phi ptr [ %15, %sw.bb6 ], [ %tmp.0.i58, %for.body.i61.for.cond.i57_crit_edge ]
  %cmp.not.i56 = icmp eq ptr %v_list_itr.0.i55, %remove_list_head
  br i1 %cmp.not.i56, label %for.cond.i57.free_fltr_list_crit_edge, label %for.body.i61

for.cond.i57.free_fltr_list_crit_edge:            ; preds = %for.cond.i57
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_fltr_list

for.body.i61:                                     ; preds = %for.cond.i57
  %16 = ptrtoint ptr %v_list_itr.0.i55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %tmp.0.i58 = load ptr, ptr %v_list_itr.0.i55, align 4
  %call.i59 = call fastcc i32 @ice_remove_rule_internal(ptr noundef %hw, i8 noundef zeroext %conv, ptr noundef %v_list_itr.0.i55) #13
  %status.i60 = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %v_list_itr.0.i55, i32 0, i32 1
  %17 = ptrtoint ptr %status.i60 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i59, ptr %status.i60, align 4
  %tobool.not.i = icmp eq i32 %call.i59, 0
  br i1 %tobool.not.i, label %for.body.i61.for.cond.i57_crit_edge, label %for.body.i61.free_fltr_list_crit_edge

for.body.i61.free_fltr_list_crit_edge:            ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_fltr_list

for.body.i61.for.cond.i57_crit_edge:              ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i57

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_remove_vsi_lkup_fltr.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_remove_vsi_lkup_fltr, %if.then14)) #13
          to label %free_fltr_list [label %if.then14], !srcloc !111

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_remove_vsi_lkup_fltr.__UNIQUE_ID_ddebug619, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %lkup) #13
  br label %free_fltr_list

free_fltr_list:                                   ; preds = %if.then14, %do.body, %for.body.i61.free_fltr_list_crit_edge, %for.cond.i57.free_fltr_list_crit_edge, %cleanup.i.free_fltr_list_crit_edge, %for.body.i.free_fltr_list_crit_edge, %for.cond.i.free_fltr_list_crit_edge, %sw.bb4.free_fltr_list_crit_edge, %sw.bb, %entry.free_fltr_list_crit_edge
  %20 = ptrtoint ptr %remove_list_head to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remove_list_head, align 4
  %cmp.not67 = icmp eq ptr %21, %remove_list_head
  br i1 %cmp.not67, label %free_fltr_list.for.end_crit_edge, label %for.body.lr.ph

free_fltr_list.for.end_crit_edge:                 ; preds = %free_fltr_list
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %free_fltr_list
  %add.ptr31 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %fm_entry.068 = phi ptr [ %21, %for.body.lr.ph ], [ %tmp.0, %list_del.exit.for.body_crit_edge ]
  %22 = ptrtoint ptr %fm_entry.068 to i32
  call void @__asan_load4_noabort(i32 %22)
  %tmp.0 = load ptr, ptr %fm_entry.068, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %fm_entry.068) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fm_entry.068, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %fm_entry.068 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fm_entry.068, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %29 = ptrtoint ptr %fm_entry.068 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %fm_entry.068, align 4
  %prev.i64 = getelementptr inbounds %struct.list_head, ptr %fm_entry.068, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i64 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i64, align 4
  %31 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr31, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev33, ptr noundef %fm_entry.068) #13
  %cmp.not = icmp eq ptr %tmp.0, %remove_list_head
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %free_fltr_list.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %remove_list_head) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_alloc_res_cntr(ptr noundef %hw, i8 noundef zeroext %type, i8 noundef zeroext %alloc_shared, i16 noundef zeroext %num_items, ptr nocapture noundef writeonly %counter_id) local_unnamed_addr #0 align 64 {
kzalloc.exit:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 6) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  %1 = tail call i16 @llvm.bswap.i16(i16 %num_items)
  %num_elems = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %num_elems to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %num_elems, align 2
  %3 = and i8 %type, 127
  %or19 = or i8 %3, %alloc_shared
  %conv5 = zext i8 %or19 to i16
  %4 = shl nuw i16 %conv5, 8
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %call7.i.i, align 8
  %call6 = tail call i32 @ice_aq_alloc_free_res(ptr noundef %hw, i16 noundef zeroext 1, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 6, i32 noundef 520, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %elem = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %elem to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %elem, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %9 = ptrtoint ptr %counter_id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %counter_id, align 2
  br label %exit

exit:                                             ; preds = %if.end9, %if.end.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %exit, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %exit ], [ -12, %kzalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_alloc_free_res(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_free_res_cntr(ptr noundef %hw, i8 noundef zeroext %type, i8 noundef zeroext %alloc_shared, i16 noundef zeroext %num_items, i16 noundef zeroext %counter_id) local_unnamed_addr #0 align 64 {
kzalloc.exit:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 6) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  %1 = tail call i16 @llvm.bswap.i16(i16 %num_items)
  %num_elems = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %num_elems to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %num_elems, align 2
  %3 = and i8 %type, 127
  %or27 = or i8 %3, %alloc_shared
  %conv5 = zext i8 %or27 to i16
  %4 = shl nuw i16 %conv5, 8
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %call7.i.i, align 8
  %6 = tail call i16 @llvm.bswap.i16(i16 %counter_id)
  %elem = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %elem to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %elem, align 4
  %call6 = tail call i32 @ice_aq_alloc_free_res(ptr noundef %hw, i16 noundef zeroext 1, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 6, i32 noundef 521, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.if.end16_crit_edge, label %do.body

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_free_res_cntr.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_free_res_cntr, %if.then13)) #13
          to label %if.end16 [label %if.then13], !srcloc !111

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_free_res_cntr.__UNIQUE_ID_ddebug620, ptr noundef %dev, ptr noundef nonnull @.str.4) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %do.body, %if.end.if.end16_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end16 ], [ -12, %kzalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_add_adv_rule(ptr noundef %hw, ptr noundef %lkups, i16 noundef zeroext %lkups_cnt, ptr nocapture noundef %rinfo, ptr noundef writeonly %added_entry) local_unnamed_addr #0 align 64 {
entry:
  %rid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rid) #13
  %0 = ptrtoint ptr %rid to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %rid, align 2
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %1 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %switch_info, align 8
  %prof_res_bm_init = getelementptr inbounds %struct.ice_switch_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %prof_res_bm_init to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %prof_res_bm_init, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %prof_res_bm_init to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %prof_res_bm_init, align 4
  tail call void @ice_init_prof_result_bm(ptr noundef %hw) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %lkups_cnt)
  %tobool3.not = icmp eq i16 %lkups_cnt, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %wide.trip.count = zext i16 %lkups_cnt to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %word_cnt.0426 = phi i16 [ 0, %for.body.preheader ], [ %spec.select.19, %for.body.for.body_crit_edge ]
  %m_u = getelementptr %struct.ice_adv_lkup_elem, ptr %lkups, i32 %indvars.iv, i32 2
  %6 = ptrtoint ptr %m_u to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %m_u, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp16.not = icmp ne i16 %7, 0
  %inc = zext i1 %cmp16.not to i16
  %spec.select = add i16 %word_cnt.0426, %inc
  %arrayidx14.1 = getelementptr i16, ptr %m_u, i32 1
  %8 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx14.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp16.not.1 = icmp ne i16 %9, 0
  %inc.1 = zext i1 %cmp16.not.1 to i16
  %spec.select.1 = add i16 %spec.select, %inc.1
  %arrayidx14.2 = getelementptr i16, ptr %m_u, i32 2
  %10 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx14.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp16.not.2 = icmp ne i16 %11, 0
  %inc.2 = zext i1 %cmp16.not.2 to i16
  %spec.select.2 = add i16 %spec.select.1, %inc.2
  %arrayidx14.3 = getelementptr i16, ptr %m_u, i32 3
  %12 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx14.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp16.not.3 = icmp ne i16 %13, 0
  %inc.3 = zext i1 %cmp16.not.3 to i16
  %spec.select.3 = add i16 %spec.select.2, %inc.3
  %arrayidx14.4 = getelementptr i16, ptr %m_u, i32 4
  %14 = ptrtoint ptr %arrayidx14.4 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx14.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp16.not.4 = icmp ne i16 %15, 0
  %inc.4 = zext i1 %cmp16.not.4 to i16
  %spec.select.4 = add i16 %spec.select.3, %inc.4
  %arrayidx14.5 = getelementptr i16, ptr %m_u, i32 5
  %16 = ptrtoint ptr %arrayidx14.5 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx14.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp16.not.5 = icmp ne i16 %17, 0
  %inc.5 = zext i1 %cmp16.not.5 to i16
  %spec.select.5 = add i16 %spec.select.4, %inc.5
  %arrayidx14.6 = getelementptr i16, ptr %m_u, i32 6
  %18 = ptrtoint ptr %arrayidx14.6 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx14.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp16.not.6 = icmp ne i16 %19, 0
  %inc.6 = zext i1 %cmp16.not.6 to i16
  %spec.select.6 = add i16 %spec.select.5, %inc.6
  %arrayidx14.7 = getelementptr i16, ptr %m_u, i32 7
  %20 = ptrtoint ptr %arrayidx14.7 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx14.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp16.not.7 = icmp ne i16 %21, 0
  %inc.7 = zext i1 %cmp16.not.7 to i16
  %spec.select.7 = add i16 %spec.select.6, %inc.7
  %arrayidx14.8 = getelementptr i16, ptr %m_u, i32 8
  %22 = ptrtoint ptr %arrayidx14.8 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx14.8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp16.not.8 = icmp ne i16 %23, 0
  %inc.8 = zext i1 %cmp16.not.8 to i16
  %spec.select.8 = add i16 %spec.select.7, %inc.8
  %arrayidx14.9 = getelementptr i16, ptr %m_u, i32 9
  %24 = ptrtoint ptr %arrayidx14.9 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx14.9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp16.not.9 = icmp ne i16 %25, 0
  %inc.9 = zext i1 %cmp16.not.9 to i16
  %spec.select.9 = add i16 %spec.select.8, %inc.9
  %arrayidx14.10 = getelementptr i16, ptr %m_u, i32 10
  %26 = ptrtoint ptr %arrayidx14.10 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx14.10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp16.not.10 = icmp ne i16 %27, 0
  %inc.10 = zext i1 %cmp16.not.10 to i16
  %spec.select.10 = add i16 %spec.select.9, %inc.10
  %arrayidx14.11 = getelementptr i16, ptr %m_u, i32 11
  %28 = ptrtoint ptr %arrayidx14.11 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx14.11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp16.not.11 = icmp ne i16 %29, 0
  %inc.11 = zext i1 %cmp16.not.11 to i16
  %spec.select.11 = add i16 %spec.select.10, %inc.11
  %arrayidx14.12 = getelementptr i16, ptr %m_u, i32 12
  %30 = ptrtoint ptr %arrayidx14.12 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx14.12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp16.not.12 = icmp ne i16 %31, 0
  %inc.12 = zext i1 %cmp16.not.12 to i16
  %spec.select.12 = add i16 %spec.select.11, %inc.12
  %arrayidx14.13 = getelementptr i16, ptr %m_u, i32 13
  %32 = ptrtoint ptr %arrayidx14.13 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx14.13, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp16.not.13 = icmp ne i16 %33, 0
  %inc.13 = zext i1 %cmp16.not.13 to i16
  %spec.select.13 = add i16 %spec.select.12, %inc.13
  %arrayidx14.14 = getelementptr i16, ptr %m_u, i32 14
  %34 = ptrtoint ptr %arrayidx14.14 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx14.14, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp16.not.14 = icmp ne i16 %35, 0
  %inc.14 = zext i1 %cmp16.not.14 to i16
  %spec.select.14 = add i16 %spec.select.13, %inc.14
  %arrayidx14.15 = getelementptr i16, ptr %m_u, i32 15
  %36 = ptrtoint ptr %arrayidx14.15 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx14.15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp16.not.15 = icmp ne i16 %37, 0
  %inc.15 = zext i1 %cmp16.not.15 to i16
  %spec.select.15 = add i16 %spec.select.14, %inc.15
  %arrayidx14.16 = getelementptr i16, ptr %m_u, i32 16
  %38 = ptrtoint ptr %arrayidx14.16 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx14.16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp16.not.16 = icmp ne i16 %39, 0
  %inc.16 = zext i1 %cmp16.not.16 to i16
  %spec.select.16 = add i16 %spec.select.15, %inc.16
  %arrayidx14.17 = getelementptr i16, ptr %m_u, i32 17
  %40 = ptrtoint ptr %arrayidx14.17 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx14.17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp16.not.17 = icmp ne i16 %41, 0
  %inc.17 = zext i1 %cmp16.not.17 to i16
  %spec.select.17 = add i16 %spec.select.16, %inc.17
  %arrayidx14.18 = getelementptr i16, ptr %m_u, i32 18
  %42 = ptrtoint ptr %arrayidx14.18 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx14.18, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp16.not.18 = icmp ne i16 %43, 0
  %inc.18 = zext i1 %cmp16.not.18 to i16
  %spec.select.18 = add i16 %spec.select.17, %inc.18
  %arrayidx14.19 = getelementptr i16, ptr %m_u, i32 19
  %44 = ptrtoint ptr %arrayidx14.19 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx14.19, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp16.not.19 = icmp ne i16 %45, 0
  %inc.19 = zext i1 %cmp16.not.19 to i16
  %spec.select.19 = add i16 %spec.select.18, %inc.19
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end23, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end23:                                        ; preds = %for.body
  %46 = add i16 %spec.select.19, -21
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20, i16 %46)
  %47 = icmp ult i16 %46, -20
  br i1 %47, label %for.end23.cleanup_crit_edge, label %for.body.preheader.i

for.end23.cleanup_crit_edge:                      ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.preheader.i:                             ; preds = %for.end23
  %48 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rinfo, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %vlan.0.off0201.i = phi i1 [ false, %for.body.preheader.i ], [ %vlan.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %ipv6.0.off0200.i = phi i1 [ false, %for.body.preheader.i ], [ %ipv6.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %udp.0.off0199.i = phi i1 [ false, %for.body.preheader.i ], [ %udp.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %tcp.0.off0198.i = phi i1 [ false, %for.body.preheader.i ], [ %tcp.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ice_adv_lkup_elem, ptr %lkups, i32 %indvars.iv.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %51, label %for.inc.fold.split.i [
    i32 10, label %for.body.i.for.inc.i_crit_edge
    i32 8, label %if.then10.i
    i32 6, label %if.then17.i
    i32 3, label %if.then24.i
    i32 2, label %land.lhs.true.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then17.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then24.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %h_u.i = getelementptr %struct.ice_adv_lkup_elem, ptr %lkups, i32 %indvars.iv.i, i32 1
  %53 = ptrtoint ptr %h_u.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %h_u.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %54)
  %cmp34.i = icmp eq i16 %54, -31011
  br i1 %cmp34.i, label %land.lhs.true36.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true36.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %m_u.i = getelementptr %struct.ice_adv_lkup_elem, ptr %lkups, i32 %indvars.iv.i, i32 2
  %55 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %m_u.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %56)
  %cmp41.i = icmp eq i16 %56, -1
  %spec.select.i = select i1 %cmp41.i, i1 true, i1 %ipv6.0.off0200.i
  br label %for.inc.i

for.inc.fold.split.i:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.fold.split.i, %land.lhs.true36.i, %land.lhs.true.i.for.inc.i_crit_edge, %if.then24.i, %if.then17.i, %if.then10.i, %for.body.i.for.inc.i_crit_edge
  %tcp.1.off0.i = phi i1 [ true, %if.then10.i ], [ %tcp.0.off0198.i, %if.then17.i ], [ %tcp.0.off0198.i, %if.then24.i ], [ %tcp.0.off0198.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %tcp.0.off0198.i, %for.body.i.for.inc.i_crit_edge ], [ %tcp.0.off0198.i, %for.inc.fold.split.i ], [ %tcp.0.off0198.i, %land.lhs.true36.i ]
  %udp.1.off0.i = phi i1 [ %udp.0.off0199.i, %if.then10.i ], [ %udp.0.off0199.i, %if.then17.i ], [ %udp.0.off0199.i, %if.then24.i ], [ %udp.0.off0199.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ true, %for.body.i.for.inc.i_crit_edge ], [ %udp.0.off0199.i, %for.inc.fold.split.i ], [ %udp.0.off0199.i, %land.lhs.true36.i ]
  %ipv6.1.off0.i = phi i1 [ %ipv6.0.off0200.i, %if.then10.i ], [ true, %if.then17.i ], [ %ipv6.0.off0200.i, %if.then24.i ], [ %ipv6.0.off0200.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %ipv6.0.off0200.i, %for.body.i.for.inc.i_crit_edge ], [ %ipv6.0.off0200.i, %for.inc.fold.split.i ], [ %spec.select.i, %land.lhs.true36.i ]
  %vlan.1.off0.i = phi i1 [ %vlan.0.off0201.i, %if.then10.i ], [ %vlan.0.off0201.i, %if.then17.i ], [ true, %if.then24.i ], [ %vlan.0.off0201.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %vlan.0.off0201.i, %for.body.i.for.inc.i_crit_edge ], [ %vlan.0.off0201.i, %for.inc.fold.split.i ], [ %vlan.0.off0201.i, %land.lhs.true36.i ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %57 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %49, label %if.end62.i [
    i32 4, label %if.then50.i
    i32 2, label %for.end.i.if.then58.i_crit_edge
    i32 3, label %for.end.i.if.then58.i_crit_edge439
  ]

for.end.i.if.then58.i_crit_edge439:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then58.i

for.end.i.if.then58.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then58.i

if.then50.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %dummy_gre_tcp_packet.dummy_gre_udp_packet.i = select i1 %tcp.1.off0.i, ptr @dummy_gre_tcp_packet, ptr @dummy_gre_udp_packet
  %.206.i = select i1 %tcp.1.off0.i, i16 96, i16 84
  %dummy_gre_tcp_packet_offsets.dummy_gre_udp_packet_offsets.i = select i1 %tcp.1.off0.i, ptr @dummy_gre_tcp_packet_offsets, ptr @dummy_gre_udp_packet_offsets
  br label %if.end32

if.then58.i:                                      ; preds = %for.end.i.if.then58.i_crit_edge, %for.end.i.if.then58.i_crit_edge439
  %dummy_udp_tun_tcp_packet.dummy_udp_tun_udp_packet.i = select i1 %tcp.1.off0.i, ptr @dummy_udp_tun_tcp_packet, ptr @dummy_udp_tun_udp_packet
  %.207.i = select i1 %tcp.1.off0.i, i16 104, i16 92
  %dummy_udp_tun_tcp_packet_offsets.dummy_udp_tun_udp_packet_offsets.i = select i1 %tcp.1.off0.i, ptr @dummy_udp_tun_tcp_packet_offsets, ptr @dummy_udp_tun_udp_packet_offsets
  br label %if.end32

if.end62.i:                                       ; preds = %for.end.i
  %udp.0.off0.not.i = xor i1 %udp.1.off0.i, true
  %brmerge.i = select i1 %udp.0.off0.not.i, i1 true, i1 %ipv6.1.off0.i
  br i1 %brmerge.i, label %if.else71.i, label %if.then67.i

if.then67.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  %dummy_vlan_udp_packet.dummy_udp_packet.i = select i1 %vlan.1.off0.i, ptr @dummy_vlan_udp_packet, ptr @dummy_udp_packet
  %.208.i = select i1 %vlan.1.off0.i, i16 48, i16 44
  %dummy_vlan_udp_packet_offsets.dummy_udp_packet_offsets.i = select i1 %vlan.1.off0.i, ptr @dummy_vlan_udp_packet_offsets, ptr @dummy_udp_packet_offsets
  br label %if.end32

if.else71.i:                                      ; preds = %if.end62.i
  %58 = select i1 %udp.1.off0.i, i1 %ipv6.1.off0.i, i1 false
  br i1 %58, label %if.then77.i, label %if.else81.i

if.then77.i:                                      ; preds = %if.else71.i
  call void @__sanitizer_cov_trace_pc() #15
  %dummy_vlan_udp_ipv6_packet.dummy_udp_ipv6_packet.i = select i1 %vlan.1.off0.i, ptr @dummy_vlan_udp_ipv6_packet, ptr @dummy_udp_ipv6_packet
  %.209.i = select i1 %vlan.1.off0.i, i16 68, i16 72
  %dummy_vlan_udp_ipv6_packet_offsets.dummy_udp_ipv6_packet_offsets.i = select i1 %vlan.1.off0.i, ptr @dummy_vlan_udp_ipv6_packet_offsets, ptr @dummy_udp_ipv6_packet_offsets
  br label %if.end32

if.else81.i:                                      ; preds = %if.else71.i
  %59 = select i1 %tcp.1.off0.i, i1 %ipv6.1.off0.i, i1 false
  %brmerge196.i = select i1 %59, i1 true, i1 %ipv6.1.off0.i
  br i1 %brmerge196.i, label %if.then90.i, label %if.end96.i

if.then90.i:                                      ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #15
  %dummy_vlan_tcp_ipv6_packet.dummy_tcp_ipv6_packet.i = select i1 %vlan.1.off0.i, ptr @dummy_vlan_tcp_ipv6_packet, ptr @dummy_tcp_ipv6_packet
  %.210.i = select i1 %vlan.1.off0.i, i16 80, i16 76
  %dummy_vlan_tcp_ipv6_packet_offsets.dummy_tcp_ipv6_packet_offsets.i = select i1 %vlan.1.off0.i, ptr @dummy_vlan_tcp_ipv6_packet_offsets, ptr @dummy_tcp_ipv6_packet_offsets
  br label %if.end32

if.end96.i:                                       ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #15
  %dummy_vlan_tcp_packet.dummy_tcp_packet.i = select i1 %vlan.1.off0.i, ptr @dummy_vlan_tcp_packet, ptr @dummy_tcp_packet
  %..i = select i1 %vlan.1.off0.i, i16 60, i16 56
  %dummy_vlan_tcp_packet_offsets.dummy_tcp_packet_offsets.i = select i1 %vlan.1.off0.i, ptr @dummy_vlan_tcp_packet_offsets, ptr @dummy_tcp_packet_offsets
  br label %if.end32

if.end32:                                         ; preds = %if.end96.i, %if.then90.i, %if.then77.i, %if.then67.i, %if.then58.i, %if.then50.i
  %dummy_vlan_tcp_packet.dummy_tcp_packet.sink.i = phi ptr [ %dummy_vlan_tcp_packet.dummy_tcp_packet.i, %if.end96.i ], [ %dummy_gre_tcp_packet.dummy_gre_udp_packet.i, %if.then50.i ], [ %dummy_udp_tun_tcp_packet.dummy_udp_tun_udp_packet.i, %if.then58.i ], [ %dummy_vlan_udp_packet.dummy_udp_packet.i, %if.then67.i ], [ %dummy_vlan_udp_ipv6_packet.dummy_udp_ipv6_packet.i, %if.then77.i ], [ %dummy_vlan_tcp_ipv6_packet.dummy_tcp_ipv6_packet.i, %if.then90.i ]
  %..sink.i = phi i16 [ %..i, %if.end96.i ], [ %.206.i, %if.then50.i ], [ %.207.i, %if.then58.i ], [ %.208.i, %if.then67.i ], [ %.209.i, %if.then77.i ], [ %.210.i, %if.then90.i ]
  %dummy_vlan_tcp_packet_offsets.dummy_tcp_packet_offsets.sink.i = phi ptr [ %dummy_vlan_tcp_packet_offsets.dummy_tcp_packet_offsets.i, %if.end96.i ], [ %dummy_gre_tcp_packet_offsets.dummy_gre_udp_packet_offsets.i, %if.then50.i ], [ %dummy_udp_tun_tcp_packet_offsets.dummy_udp_tun_udp_packet_offsets.i, %if.then58.i ], [ %dummy_vlan_udp_packet_offsets.dummy_udp_packet_offsets.i, %if.then67.i ], [ %dummy_vlan_udp_ipv6_packet_offsets.dummy_udp_ipv6_packet_offsets.i, %if.then77.i ], [ %dummy_vlan_tcp_ipv6_packet_offsets.dummy_tcp_ipv6_packet_offsets.i, %if.then90.i ]
  %sw_act = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 1
  %fltr_act = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 1, i32 2
  %60 = ptrtoint ptr %fltr_act to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fltr_act, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %61, label %if.end32.cleanup_crit_edge [
    i32 0, label %if.end32.if.end51_crit_edge
    i32 2, label %if.end32.if.end51_crit_edge440
    i32 3, label %if.end32.if.end51_crit_edge441
    i32 4, label %if.end32.if.end51_crit_edge442
  ]

if.end32.if.end51_crit_edge442:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.end32.if.end51_crit_edge441:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.end32.if.end51_crit_edge440:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.end32.if.end51_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end51:                                         ; preds = %if.end32.if.end51_crit_edge, %if.end32.if.end51_crit_edge440, %if.end32.if.end51_crit_edge441, %if.end32.if.end51_crit_edge442
  %vsi_handle53 = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 1, i32 4
  %63 = ptrtoint ptr %vsi_handle53 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vsi_handle53, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %64)
  %cmp.i = icmp ult i16 %64, 768
  br i1 %cmp.i, label %ice_is_vsi_valid.exit, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

ice_is_vsi_valid.exit:                            ; preds = %if.end51
  %conv.i = zext i16 %64 to i32
  %arrayidx.i400 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %65 = ptrtoint ptr %arrayidx.i400 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i400, align 4
  %tobool.i.not = icmp eq ptr %66, null
  br i1 %tobool.i.not, label %ice_is_vsi_valid.exit.cleanup_crit_edge, label %if.end55

ice_is_vsi_valid.exit.cleanup_crit_edge:          ; preds = %ice_is_vsi_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end55:                                         ; preds = %ice_is_vsi_valid.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp58 = icmp eq i32 %61, 0
  br i1 %cmp58, label %if.then60, label %if.end55.if.end63_crit_edge

if.end55.if.end63_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  %67 = ptrtoint ptr %arrayidx.i400 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i400, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %68, align 4
  %fwd_id = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 1, i32 3
  %71 = ptrtoint ptr %fwd_id to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load = load i16, ptr %fwd_id, align 4
  %bf.shl = shl i16 %70, 6
  %bf.clear = and i16 %bf.load, 63
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %fwd_id, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end55.if.end63_crit_edge
  %flag = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %flag, align 2
  %74 = and i16 %73, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool66.not = icmp eq i16 %74, 0
  br i1 %tobool66.not, label %if.end63.if.end70_crit_edge, label %if.then67

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %arrayidx.i400 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i400, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %76, align 4
  %79 = ptrtoint ptr %sw_act to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %sw_act, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.end63.if.end70_crit_edge
  %call71 = call fastcc i32 @ice_add_adv_recipe(ptr noundef %hw, ptr noundef %lkups, i16 noundef zeroext %lkups_cnt, ptr noundef %rinfo, ptr noundef nonnull %rid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end74:                                         ; preds = %if.end70
  %80 = ptrtoint ptr %rid to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %rid, align 2
  %82 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %switch_info, align 8
  %recp_list.i = getelementptr inbounds %struct.ice_switch_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %recp_list.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %recp_list.i, align 4
  %idxprom.i404 = zext i16 %81 to i32
  %filt_rules.i = getelementptr %struct.ice_sw_recipe, ptr %85, i32 %idxprom.i404, i32 12
  %86 = ptrtoint ptr %filt_rules.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %list_itr.065.i = load ptr, ptr %filt_rules.i, align 4
  %cmp.not66.i = icmp eq ptr %list_itr.065.i, %filt_rules.i
  br i1 %cmp.not66.i, label %if.end74.if.end87_crit_edge, label %if.end74.for.body.i405_crit_edge

if.end74.for.body.i405_crit_edge:                 ; preds = %if.end74
  br label %for.body.i405

if.end74.if.end87_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

for.body.i405:                                    ; preds = %for.inc35.i.for.body.i405_crit_edge, %if.end74.for.body.i405_crit_edge
  %list_itr.067.i = phi ptr [ %list_itr.0.i, %for.inc35.i.for.body.i405_crit_edge ], [ %list_itr.065.i, %if.end74.for.body.i405_crit_edge ]
  %lkups_cnt5.i = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.067.i, i32 0, i32 3
  %87 = ptrtoint ptr %lkups_cnt5.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %lkups_cnt5.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %88, i16 %lkups_cnt)
  %cmp7.not.i = icmp eq i16 %88, %lkups_cnt
  br i1 %cmp7.not.i, label %for.body14.lr.ph.i, label %for.body.i405.for.inc35.i_crit_edge

for.body.i405.for.inc35.i_crit_edge:              ; preds = %for.body.i405
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc35.i

for.body14.lr.ph.i:                               ; preds = %for.body.i405
  %lkups15.i = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.067.i, i32 0, i32 1
  %89 = ptrtoint ptr %lkups15.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %lkups15.i, align 4
  %bcmp.i429 = tail call i32 @bcmp(ptr noundef dereferenceable(84) %90, ptr noundef dereferenceable(84) %lkups, i32 84) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i429)
  %tobool.not.i430 = icmp eq i32 %bcmp.i429, 0
  br i1 %tobool.not.i430, label %for.body14.lr.ph.i.for.cond9.i_crit_edge, label %for.body14.lr.ph.i.for.end.i407_crit_edge

for.body14.lr.ph.i.for.end.i407_crit_edge:        ; preds = %for.body14.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i407

for.body14.lr.ph.i.for.cond9.i_crit_edge:         ; preds = %for.body14.lr.ph.i
  br label %for.cond9.i

for.cond9.i:                                      ; preds = %for.body14.i.for.cond9.i_crit_edge, %for.body14.lr.ph.i.for.cond9.i_crit_edge
  %i.062.i431 = phi i32 [ %inc.i, %for.body14.i.for.cond9.i_crit_edge ], [ 0, %for.body14.lr.ph.i.for.cond9.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.062.i431, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %wide.trip.count)
  %exitcond.not.i406 = icmp eq i32 %inc.i, %wide.trip.count
  br i1 %exitcond.not.i406, label %for.cond9.i.for.end.i407.loopexit_crit_edge, label %for.body14.i

for.cond9.i.for.end.i407.loopexit_crit_edge:      ; preds = %for.cond9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i407.loopexit

for.body14.i:                                     ; preds = %for.cond9.i
  %arrayidx16.i = getelementptr %struct.ice_adv_lkup_elem, ptr %90, i32 %inc.i
  %arrayidx17.i = getelementptr %struct.ice_adv_lkup_elem, ptr %lkups, i32 %inc.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(84) %arrayidx16.i, ptr noundef dereferenceable(84) %arrayidx17.i, i32 84) #16
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %for.body14.i.for.cond9.i_crit_edge, label %for.body14.i.for.end.i407.loopexit_crit_edge

for.body14.i.for.end.i407.loopexit_crit_edge:     ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i407.loopexit

for.body14.i.for.cond9.i_crit_edge:               ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond9.i

for.end.i407.loopexit:                            ; preds = %for.body14.i.for.end.i407.loopexit_crit_edge, %for.cond9.i.for.end.i407.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %wide.trip.count)
  %cmp12.i.le = icmp ult i32 %inc.i, %wide.trip.count
  br label %for.end.i407

for.end.i407:                                     ; preds = %for.end.i407.loopexit, %for.body14.lr.ph.i.for.end.i407_crit_edge
  %cmp12.lcssa.i = phi i1 [ true, %for.body14.lr.ph.i.for.end.i407_crit_edge ], [ %cmp12.i.le, %for.end.i407.loopexit ]
  %91 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %flag, align 2
  %flag22.i = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.067.i, i32 0, i32 2, i32 1, i32 1
  %93 = ptrtoint ptr %flag22.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %flag22.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %92, i16 %94)
  %cmp24.i = icmp eq i16 %92, %94
  br i1 %cmp24.i, label %land.lhs.true.i409, label %for.end.i407.for.inc35.i_crit_edge

for.end.i407.for.inc35.i_crit_edge:               ; preds = %for.end.i407
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc35.i

land.lhs.true.i409:                               ; preds = %for.end.i407
  %rule_info.i = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.067.i, i32 0, i32 2
  %95 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rinfo, align 4
  %97 = ptrtoint ptr %rule_info.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rule_info.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %98)
  %cmp28.i = icmp ne i32 %96, %98
  %brmerge.i408 = select i1 %cmp28.i, i1 true, i1 %cmp12.lcssa.i
  br i1 %brmerge.i408, label %land.lhs.true.i409.for.inc35.i_crit_edge, label %ice_find_adv_rule_entry.exit

land.lhs.true.i409.for.inc35.i_crit_edge:         ; preds = %land.lhs.true.i409
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc35.i

for.inc35.i:                                      ; preds = %land.lhs.true.i409.for.inc35.i_crit_edge, %for.end.i407.for.inc35.i_crit_edge, %for.body.i405.for.inc35.i_crit_edge
  %99 = ptrtoint ptr %list_itr.067.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %list_itr.0.i = load ptr, ptr %list_itr.067.i, align 4
  %cmp.not.i = icmp eq ptr %list_itr.0.i, %filt_rules.i
  br i1 %cmp.not.i, label %for.inc35.i.if.end87_crit_edge, label %for.inc35.i.for.body.i405_crit_edge

for.inc35.i.for.body.i405_crit_edge:              ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i405

for.inc35.i.if.end87_crit_edge:                   ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

ice_find_adv_rule_entry.exit:                     ; preds = %land.lhs.true.i409
  %tobool76.not = icmp eq ptr %list_itr.067.i, null
  br i1 %tobool76.not, label %ice_find_adv_rule_entry.exit.if.end87_crit_edge, label %if.then77

ice_find_adv_rule_entry.exit.if.end87_crit_edge:  ; preds = %ice_find_adv_rule_entry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then77:                                        ; preds = %ice_find_adv_rule_entry.exit
  %call78 = tail call fastcc i32 @ice_adv_add_update_vsi_list(ptr noundef %hw, ptr noundef nonnull %list_itr.067.i, ptr noundef %rule_info.i, ptr noundef %rinfo)
  %tobool79.not = icmp eq ptr %added_entry, null
  br i1 %tobool79.not, label %if.then77.cleanup_crit_edge, label %if.then80

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then80:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #15
  %100 = ptrtoint ptr %rid to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %rid, align 2
  %102 = ptrtoint ptr %added_entry to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %added_entry, align 2
  %fltr_rule_id = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.067.i, i32 0, i32 2, i32 4
  %103 = ptrtoint ptr %fltr_rule_id to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %fltr_rule_id, align 2
  %rule_id = getelementptr inbounds %struct.ice_rule_query_data, ptr %added_entry, i32 0, i32 1
  %105 = ptrtoint ptr %rule_id to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %rule_id, align 2
  %106 = ptrtoint ptr %vsi_handle53 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %vsi_handle53, align 2
  %vsi_handle85 = getelementptr inbounds %struct.ice_rule_query_data, ptr %added_entry, i32 0, i32 2
  %108 = ptrtoint ptr %vsi_handle85 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %vsi_handle85, align 2
  br label %cleanup

if.end87:                                         ; preds = %ice_find_adv_rule_entry.exit.if.end87_crit_edge, %for.inc35.i.if.end87_crit_edge, %if.end74.if.end87_crit_edge
  %add = add nuw nsw i16 %..sink.i, 16
  %conv90 = zext i16 %add to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv90, i32 noundef 3520) #19
  %tobool92.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool92.not, label %if.end87.cleanup_crit_edge, label %if.end94

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end94:                                         ; preds = %if.end87
  %act_valid = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 5, i32 1
  %109 = ptrtoint ptr %act_valid to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %act_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool95.not = icmp eq i8 %110, 0
  br i1 %tobool95.not, label %if.end94.if.end102_crit_edge, label %if.else

if.end94.if.end102_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.else:                                          ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  %flags_info = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 5
  %111 = ptrtoint ptr %flags_info to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags_info, align 4
  %and100 = and i32 %112, 12
  br label %if.end102

if.end102:                                        ; preds = %if.else, %if.end94.if.end102_crit_edge
  %act.0 = phi i32 [ %and100, %if.else ], [ 12, %if.end94.if.end102_crit_edge ]
  %113 = ptrtoint ptr %fltr_act to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %fltr_act, align 4
  %115 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %114, label %if.end102.if.end261_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb112
    i32 3, label %sw.bb122
    i32 4, label %sw.bb165
  ]

if.end102.if.end261_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end261

sw.bb:                                            ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  %fwd_id106 = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 1, i32 3
  %116 = ptrtoint ptr %fwd_id106 to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load107 = load i16, ptr %fwd_id106, align 4
  %117 = lshr i16 %bf.load107, 2
  %118 = and i16 %117, 16368
  %and109 = zext i16 %118 to i32
  %or110 = or i32 %act.0, %and109
  %or111 = or i32 %or110, 131072
  br label %sw.epilog

sw.bb112:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  %fwd_id115 = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 1, i32 3
  %119 = ptrtoint ptr %fwd_id115 to i32
  call void @__asan_load2_noabort(i32 %119)
  %bf.load116 = load i16, ptr %fwd_id115, align 4
  %120 = lshr i16 %bf.load116, 1
  %121 = and i16 %120, 32752
  %and120 = zext i16 %121 to i32
  %or113 = or i32 %act.0, %and120
  %or121 = or i32 %or113, 1
  br label %sw.epilog

sw.bb122:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  %qgrp_size = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 1, i32 5
  %122 = ptrtoint ptr %qgrp_size to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %qgrp_size, align 4
  %conv124 = zext i8 %123 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp125.not = icmp eq i8 %123, 0
  %124 = tail call i32 @llvm.ctlz.i32(i32 %conv124, i1 true) #13, !range !112
  %sub.i = shl nuw nsw i32 %124, 15
  %phi.cast = and i32 %sub.i, 229376
  %phi.bo398 = xor i32 %phi.cast, 229376
  %cond150 = select i1 %cmp125.not, i32 0, i32 %phi.bo398
  %fwd_id154 = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 1, i32 3
  %125 = ptrtoint ptr %fwd_id154 to i32
  call void @__asan_load2_noabort(i32 %125)
  %bf.load155 = load i16, ptr %fwd_id154, align 4
  %126 = lshr i16 %bf.load155, 1
  %127 = and i16 %126, 32752
  %and159 = zext i16 %127 to i32
  %or152 = or i32 %act.0, %cond150
  %or160 = or i32 %or152, %and159
  %or164 = or i32 %or160, 1
  br label %sw.epilog

sw.bb165:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  %or166 = or i32 %act.0, 393216
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb165, %sw.bb122, %sw.bb112, %sw.bb
  %act.1 = phi i32 [ %or166, %sw.bb165 ], [ %or164, %sw.bb122 ], [ %or121, %sw.bb112 ], [ %or111, %sw.bb ]
  %rx = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 3
  %128 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %rx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool167.not = icmp eq i8 %129, 0
  br i1 %tobool167.not, label %if.else171, label %if.then168

if.then168:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %130 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %call9.i.i, align 128
  %port_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %131 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %port_info, align 4
  %lport = getelementptr inbounds %struct.ice_port_info, ptr %132, i32 0, i32 6
  %133 = ptrtoint ptr %lport to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %lport, align 1
  %conv169 = zext i8 %134 to i16
  %135 = shl nuw i16 %conv169, 8
  br label %if.end177

if.else171:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %136 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 256, ptr %call9.i.i, align 128
  %137 = ptrtoint ptr %sw_act to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %sw_act, align 4
  %139 = tail call i16 @llvm.bswap.i16(i16 %138)
  br label %if.end177

if.end177:                                        ; preds = %if.else171, %if.then168
  %.sink = phi i16 [ %139, %if.else171 ], [ %135, %if.then168 ]
  %140 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 1
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %.sink, ptr %140, align 2
  %142 = tail call i16 @llvm.bswap.i16(i16 %81)
  %pdata178 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call9.i.i, i32 0, i32 2
  %143 = ptrtoint ptr %pdata178 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %142, ptr %pdata178, align 4
  %144 = tail call i32 @llvm.bswap.i32(i32 %act.1)
  %act180 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 2
  %145 = ptrtoint ptr %act180 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %act180, align 8
  %call181 = tail call fastcc i32 @ice_fill_adv_dummy_packet(ptr noundef %lkups, i16 noundef zeroext %lkups_cnt, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %dummy_vlan_tcp_packet.dummy_tcp_packet.sink.i, i16 noundef zeroext %..sink.i, ptr noundef nonnull %dummy_vlan_tcp_packet_offsets.dummy_tcp_packet_offsets.sink.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end184, label %if.end177.if.end261_crit_edge

if.end177.if.end261_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end261

if.end184:                                        ; preds = %if.end177
  %146 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %147)
  %switch = icmp ult i32 %147, 2
  br i1 %switch, label %if.end184.if.end198_crit_edge, label %if.then191

if.end184.if.end198_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end198

if.then191:                                       ; preds = %if.end184
  %hdr = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call9.i.i, i32 0, i32 2, i32 1
  %call194 = tail call fastcc i32 @ice_fill_adv_packet_tun(ptr noundef %hw, i32 noundef %147, ptr noundef %hdr, ptr noundef nonnull %dummy_vlan_tcp_packet_offsets.dummy_tcp_packet_offsets.sink.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.then191.if.end198_crit_edge, label %if.then191.if.end261_crit_edge

if.then191.if.end261_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end261

if.then191.if.end198_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end198

if.end198:                                        ; preds = %if.then191.if.end198_crit_edge, %if.end184.if.end198_crit_edge
  %call199 = tail call i32 @ice_aq_sw_rules(ptr noundef %hw, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %add, i8 noundef zeroext 1, i32 noundef 672, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.end202, label %if.end198.if.end261_crit_edge

if.end198.if.end261_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end261

if.end202:                                        ; preds = %if.end198
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %148 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %149, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #13
  %tobool204.not = icmp eq ptr %call.i, null
  br i1 %tobool204.not, label %if.end202.if.end261_crit_edge, label %if.end206

if.end202.if.end261_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end261

if.end206:                                        ; preds = %if.end202
  %150 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %add.ptr, align 8
  %dev211 = getelementptr inbounds %struct.pci_dev, ptr %151, i32 0, i32 44
  %mul = mul nuw nsw i32 %wide.trip.count, 84
  %call213 = tail call ptr @devm_kmemdup(ptr noundef %dev211, ptr noundef %lkups, i32 noundef %mul, i32 noundef 3264) #13
  %lkups214 = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %call.i, i32 0, i32 1
  %152 = ptrtoint ptr %lkups214 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call213, ptr %lkups214, align 4
  %tobool216.not = icmp eq ptr %call213, null
  br i1 %tobool216.not, label %if.then249, label %if.end218

if.end218:                                        ; preds = %if.end206
  %lkups_cnt219 = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %call.i, i32 0, i32 3
  %153 = ptrtoint ptr %lkups_cnt219 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %lkups_cnt, ptr %lkups_cnt219, align 4
  %rule_info220 = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %call.i, i32 0, i32 2
  %154 = call ptr @memcpy(ptr %rule_info220, ptr %rinfo, i32 36)
  %index = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 3
  %155 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %index, align 4
  %157 = tail call i16 @llvm.bswap.i16(i16 %156)
  %fltr_rule_id223 = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %call.i, i32 0, i32 2, i32 4
  %158 = ptrtoint ptr %fltr_rule_id223 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %157, ptr %fltr_rule_id223, align 2
  %159 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %switch_info, align 8
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %recp_list, align 4
  %163 = ptrtoint ptr %rid to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %rid, align 2
  %idxprom225 = zext i16 %164 to i32
  %adv_rule = getelementptr %struct.ice_sw_recipe, ptr %162, i32 %idxprom225, i32 11
  %165 = ptrtoint ptr %adv_rule to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 1, ptr %adv_rule, align 4
  %166 = load ptr, ptr %recp_list, align 4
  %filt_rules = getelementptr %struct.ice_sw_recipe, ptr %166, i32 %idxprom225, i32 12
  %167 = ptrtoint ptr %fltr_act to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %fltr_act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp232 = icmp eq i32 %168, 0
  br i1 %cmp232, label %if.then234, label %if.end218.if.end235_crit_edge

if.end218.if.end235_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end235

if.then234:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #15
  %vsi_count = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %call.i, i32 0, i32 5
  %169 = ptrtoint ptr %vsi_count to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 1, ptr %vsi_count, align 4
  br label %if.end235

if.end235:                                        ; preds = %if.then234, %if.end218.if.end235_crit_edge
  %170 = ptrtoint ptr %filt_rules to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %filt_rules, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %filt_rules, ptr noundef %171) #13
  br i1 %call.i.i, label %if.end.i.i410, label %if.end235.list_add.exit_crit_edge

if.end235.list_add.exit_crit_edge:                ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i410:                                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %173 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %171, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %174 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %filt_rules, ptr %prev3.i.i, align 4
  %175 = ptrtoint ptr %filt_rules to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %call.i, ptr %filt_rules, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i410, %if.end235.list_add.exit_crit_edge
  %tobool236.not = icmp eq ptr %added_entry, null
  br i1 %tobool236.not, label %list_add.exit.if.end261_crit_edge, label %if.then237

list_add.exit.if.end261_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end261

if.then237:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  %176 = ptrtoint ptr %added_entry to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %164, ptr %added_entry, align 2
  %177 = ptrtoint ptr %fltr_rule_id223 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %fltr_rule_id223, align 2
  %rule_id241 = getelementptr inbounds %struct.ice_rule_query_data, ptr %added_entry, i32 0, i32 1
  %179 = ptrtoint ptr %rule_id241 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %178, ptr %rule_id241, align 2
  %180 = ptrtoint ptr %vsi_handle53 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %vsi_handle53, align 2
  %vsi_handle244 = getelementptr inbounds %struct.ice_rule_query_data, ptr %added_entry, i32 0, i32 2
  %182 = ptrtoint ptr %vsi_handle244 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %181, ptr %vsi_handle244, align 2
  br label %if.end261

if.then249:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #15
  %183 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %add.ptr, align 8
  %dev254 = getelementptr inbounds %struct.pci_dev, ptr %184, i32 0, i32 44
  %185 = ptrtoint ptr %lkups214 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %lkups214, align 4
  tail call void @devm_kfree(ptr noundef %dev254, ptr noundef %186) #13
  %187 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %add.ptr, align 8
  %dev260 = getelementptr inbounds %struct.pci_dev, ptr %188, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev260, ptr noundef nonnull %call.i) #13
  br label %if.end261

if.end261:                                        ; preds = %if.then249, %if.then237, %list_add.exit.if.end261_crit_edge, %if.end202.if.end261_crit_edge, %if.end198.if.end261_crit_edge, %if.then191.if.end261_crit_edge, %if.end177.if.end261_crit_edge, %if.end102.if.end261_crit_edge
  %status.0421 = phi i32 [ -12, %if.then249 ], [ -12, %if.end202.if.end261_crit_edge ], [ -5, %if.end102.if.end261_crit_edge ], [ 0, %list_add.exit.if.end261_crit_edge ], [ 0, %if.then237 ], [ %call199, %if.end198.if.end261_crit_edge ], [ %call194, %if.then191.if.end261_crit_edge ], [ %call181, %if.end177.if.end261_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end261, %if.end87.cleanup_crit_edge, %if.then80, %if.then77.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %ice_is_vsi_valid.exit.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %for.end23.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0421, %if.end261 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.end23.cleanup_crit_edge ], [ -5, %if.end32.cleanup_crit_edge ], [ -22, %ice_is_vsi_valid.exit.cleanup_crit_edge ], [ %call71, %if.end70.cleanup_crit_edge ], [ %call78, %if.then80 ], [ %call78, %if.then77.cleanup_crit_edge ], [ -12, %if.end87.cleanup_crit_edge ], [ -22, %if.end51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rid) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_init_prof_result_bm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_add_adv_recipe(ptr noundef %hw, ptr nocapture noundef readonly %lkups, i16 noundef zeroext %lkups_cnt, ptr nocapture noundef readonly %rinfo, ptr nocapture noundef writeonly %rid) unnamed_addr #0 align 64 {
entry:
  %fv_bitmap = alloca [8 x i32], align 4
  %profiles = alloca [8 x i32], align 4
  %r_bitmap = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fv_bitmap) #13
  %0 = call ptr @memset(ptr %fv_bitmap, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %profiles) #13
  %1 = call ptr @memset(ptr %profiles, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 168) #18
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %entry.cleanup230_crit_edge, label %for.cond.preheader

entry.cleanup230_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup230

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %lkups_cnt)
  %cmp372.not = icmp eq i16 %lkups_cnt, 0
  br i1 %cmp372.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %n_val_words.i = getelementptr inbounds %struct.ice_prot_lkup_ext, ptr %call7.i.i, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %ice_fill_valid_words.exit
  %inc = add i8 %i.0373, 1
  %3 = zext i8 %inc to i16
  %cmp = icmp ult i16 %3, %lkups_cnt
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0373 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %conv = zext i8 %i.0373 to i32
  %arrayidx = getelementptr %struct.ice_adv_lkup_elem, ptr %lkups, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %switch.i = icmp ult i32 %5, 14
  br i1 %switch.i, label %if.end.i, label %for.body.err_free_lkup_exts_crit_edge

for.body.err_free_lkup_exts_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_lkup_exts

if.end.i:                                         ; preds = %for.body
  %6 = ptrtoint ptr %n_val_words.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %n_val_words.i, align 2
  %m_u.i = getelementptr %struct.ice_adv_lkup_elem, ptr %lkups, i32 %conv, i32 2
  %protocol_id.i = getelementptr [16 x %struct.ice_protocol_entry], ptr @ice_prot_id_tbl, i32 0, i32 %5, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %indvars.iv.i = phi i32 [ 0, %if.end.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %word.063.i = phi i8 [ %7, %if.end.i ], [ %word.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %m_u.i, i32 %indvars.iv.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i.not = icmp eq i16 %9, 0
  br i1 %tobool.not.i.not, label %for.body.i.for.inc.i_crit_edge, label %if.then6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %word.063.i)
  %cmp8.i = icmp ugt i8 %word.063.i, 19
  br i1 %cmp8.i, label %if.then6.i.err_free_lkup_exts_crit_edge, label %if.end11.i

if.then6.i.err_free_lkup_exts_crit_edge:          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_lkup_exts

if.end11.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i = zext i8 %word.063.i to i32
  %arrayidx15.i = getelementptr [16 x %struct.ice_prot_ext_tbl_entry], ptr @ice_prot_ext, i32 0, i32 %5, i32 1, i32 %indvars.iv.i
  %10 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %11 to i16
  %arrayidx18.i = getelementptr %struct.ice_prot_lkup_ext, ptr %call7.i.i, i32 0, i32 4, i32 %conv7.i
  %off.i = getelementptr %struct.ice_prot_lkup_ext, ptr %call7.i.i, i32 0, i32 4, i32 %conv7.i, i32 1
  %12 = ptrtoint ptr %off.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %conv16.i, ptr %off.i, align 1
  %13 = ptrtoint ptr %protocol_id.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %protocol_id.i, align 4
  %15 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx18.i, align 4
  %arrayidx29.i = getelementptr %struct.ice_prot_lkup_ext, ptr %call7.i.i, i32 0, i32 3, i32 %conv7.i
  %16 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %9, ptr %arrayidx29.i, align 2
  %inc.i = add nuw nsw i8 %word.063.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i, %for.body.i.for.inc.i_crit_edge
  %word.1.i = phi i8 [ %inc.i, %if.end11.i ], [ %word.063.i, %for.body.i.for.inc.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 20
  br i1 %exitcond.not.i, label %ice_fill_valid_words.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

ice_fill_valid_words.exit:                        ; preds = %for.inc.i
  %17 = ptrtoint ptr %n_val_words.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %word.1.i, ptr %n_val_words.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %word.1.i, i8 %7)
  %tobool14.not = icmp eq i8 %word.1.i, %7
  br i1 %tobool14.not, label %ice_fill_valid_words.exit.err_free_lkup_exts_crit_edge, label %for.cond

ice_fill_valid_words.exit.err_free_lkup_exts_crit_edge: ; preds = %ice_fill_valid_words.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_lkup_exts

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i328 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 460) #18
  %tobool18.not = icmp eq ptr %call7.i.i328, null
  br i1 %tobool18.not, label %for.end.err_free_lkup_exts_crit_edge, label %if.end20

for.end.err_free_lkup_exts_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_lkup_exts

if.end20:                                         ; preds = %for.end
  %fv_list = getelementptr inbounds %struct.ice_sw_recipe, ptr %call7.i.i328, i32 0, i32 15
  %19 = ptrtoint ptr %fv_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %fv_list, ptr %fv_list, align 4
  %prev.i = getelementptr inbounds %struct.ice_sw_recipe, ptr %call7.i.i328, i32 0, i32 15, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %fv_list, ptr %prev.i, align 8
  %rg_list = getelementptr inbounds %struct.ice_sw_recipe, ptr %call7.i.i328, i32 0, i32 20
  %21 = ptrtoint ptr %rg_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %rg_list, ptr %rg_list, align 8
  %prev.i329 = getelementptr inbounds %struct.ice_sw_recipe, ptr %call7.i.i328, i32 0, i32 20, i32 1
  %22 = ptrtoint ptr %prev.i329 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %rg_list, ptr %prev.i329, align 4
  %23 = call ptr @memset(ptr %fv_bitmap, i32 0, i32 32)
  %24 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %26 = icmp ult i32 %25, 6
  br i1 %26, label %switch.lookup, label %if.end20.ice_get_compat_fv_bitmap.exit_crit_edge

if.end20.ice_get_compat_fv_bitmap.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_get_compat_fv_bitmap.exit

switch.lookup:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.ice_add_adv_recipe, i32 0, i32 %25
  %27 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ice_get_compat_fv_bitmap.exit

ice_get_compat_fv_bitmap.exit:                    ; preds = %switch.lookup, %if.end20.ice_get_compat_fv_bitmap.exit_crit_edge
  %prof_type.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 255, %if.end20.ice_get_compat_fv_bitmap.exit_crit_edge ]
  call void @ice_get_sw_fv_bitmap(ptr noundef %hw, i32 noundef %prof_type.0.i, ptr noundef nonnull %fv_bitmap) #13
  %conv.i = zext i16 %lkups_cnt to i32
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv.i, i32 noundef 3520) #19
  %tobool.not.i330 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i330, label %ice_get_compat_fv_bitmap.exit.err_unroll_crit_edge, label %for.cond.preheader.i

ice_get_compat_fv_bitmap.exit.err_unroll_crit_edge: ; preds = %ice_get_compat_fv_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_unroll

for.cond.preheader.i:                             ; preds = %ice_get_compat_fv_bitmap.exit
  br i1 %cmp372.not, label %for.cond.preheader.i.ice_get_fv.exit_crit_edge, label %for.cond.preheader.i.for.body.i334_crit_edge

for.cond.preheader.i.for.body.i334_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i334

for.cond.preheader.i.ice_get_fv.exit_crit_edge:   ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_get_fv.exit

for.body.i334:                                    ; preds = %for.inc.i337.for.body.i334_crit_edge, %for.cond.preheader.i.for.body.i334_crit_edge
  %indvars.iv.i331 = phi i32 [ %indvars.iv.next.i335, %for.inc.i337.for.body.i334_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i334_crit_edge ]
  %arrayidx.i332 = getelementptr %struct.ice_adv_lkup_elem, ptr %lkups, i32 %indvars.iv.i331
  %28 = ptrtoint ptr %arrayidx.i332 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i332, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %29)
  %switch.i333 = icmp ult i32 %29, 14
  br i1 %switch.i333, label %for.inc.i337, label %ice_get_fv.exit.thread357

ice_get_fv.exit.thread357:                        ; preds = %for.body.i334
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #13
  br label %err_unroll

for.inc.i337:                                     ; preds = %for.body.i334
  %arrayidx5.i = getelementptr i8, ptr %call8.i.i.i, i32 %indvars.iv.i331
  %protocol_id.i.i = getelementptr [16 x %struct.ice_protocol_entry], ptr @ice_prot_id_tbl, i32 0, i32 %29, i32 1
  %30 = ptrtoint ptr %protocol_id.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %protocol_id.i.i, align 4
  %32 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx5.i, align 1
  %indvars.iv.next.i335 = add nuw nsw i32 %indvars.iv.i331, 1
  %exitcond.not.i336 = icmp eq i32 %indvars.iv.next.i335, %conv.i
  br i1 %exitcond.not.i336, label %for.inc.i337.ice_get_fv.exit_crit_edge, label %for.inc.i337.for.body.i334_crit_edge

for.inc.i337.for.body.i334_crit_edge:             ; preds = %for.inc.i337
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i334

for.inc.i337.ice_get_fv.exit_crit_edge:           ; preds = %for.inc.i337
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_get_fv.exit

ice_get_fv.exit:                                  ; preds = %for.inc.i337.ice_get_fv.exit_crit_edge, %for.cond.preheader.i.ice_get_fv.exit_crit_edge
  %call9.i = call i32 @ice_get_sw_fv_list(ptr noundef %hw, ptr noundef nonnull %call8.i.i.i, i16 noundef zeroext %lkups_cnt, ptr noundef nonnull %fv_bitmap, ptr noundef %fv_list) #13
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool24.not = icmp eq i32 %call9.i, 0
  br i1 %tobool24.not, label %if.end26, label %ice_get_fv.exit.err_unroll_crit_edge

ice_get_fv.exit.err_unroll_crit_edge:             ; preds = %ice_get_fv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_unroll

if.end26:                                         ; preds = %ice_get_fv.exit
  %33 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rinfo, align 4
  %tun_type.off.i.i = add i32 %34, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tun_type.off.i.i)
  %switch.i.i = icmp ult i32 %tun_type.off.i.i, 3
  %..i.i = select i1 %switch.i.i, i16 255, i16 0
  br i1 %switch.i.i, label %if.then.i, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then.i:                                        ; preds = %if.end26
  %n_val_words.i340 = getelementptr inbounds %struct.ice_prot_lkup_ext, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %n_val_words.i340 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %n_val_words.i340, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %36)
  %cmp.i = icmp ult i8 %36, 20
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.err_free_lkup_exts_crit_edge

if.then.i.err_free_lkup_exts_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_lkup_exts

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i341 = zext i8 %36 to i32
  %inc.i342 = add nuw nsw i8 %36, 1
  %37 = ptrtoint ptr %n_val_words.i340 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %inc.i342, ptr %n_val_words.i340, align 2
  %arrayidx.i343 = getelementptr %struct.ice_prot_lkup_ext, ptr %call7.i.i, i32 0, i32 4, i32 %conv.i341
  %38 = ptrtoint ptr %arrayidx.i343 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %arrayidx.i343, align 4
  %off.i344 = getelementptr %struct.ice_prot_lkup_ext, ptr %call7.i.i, i32 0, i32 4, i32 %conv.i341, i32 1
  %39 = ptrtoint ptr %off.i344 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 42, ptr %off.i344, align 1
  %arrayidx8.i = getelementptr %struct.ice_prot_lkup_ext, ptr %call7.i.i, i32 0, i32 3, i32 %conv.i341
  %40 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %..i.i, ptr %arrayidx8.i, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then2.i, %if.end26.if.end30_crit_edge
  %call31 = call fastcc i32 @ice_create_recipe_group(ptr noundef %hw, ptr noundef nonnull %call7.i.i328, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.err_unroll_crit_edge

if.end30.err_unroll_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_unroll

if.end34:                                         ; preds = %if.end30
  %priority = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 2
  %41 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %priority, align 4
  %conv35 = trunc i32 %42 to i8
  %priority36 = getelementptr inbounds %struct.ice_sw_recipe, ptr %call7.i.i328, i32 0, i32 19
  %43 = ptrtoint ptr %priority36 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv35, ptr %priority36, align 4
  %call39 = call fastcc i32 @ice_fill_fv_word_index(ptr noundef %hw, ptr noundef %fv_list, ptr noundef %rg_list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end34.err_unroll_crit_edge

if.end34.err_unroll_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_unroll

if.end42:                                         ; preds = %if.end34
  %44 = call ptr @memset(ptr %profiles, i32 0, i32 32)
  %45 = ptrtoint ptr %fv_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %fvit.0374 = load ptr, ptr %fv_list, align 4
  %cmp48.not375 = icmp eq ptr %fvit.0374, %fv_list
  br i1 %cmp48.not375, label %if.end42.for.end72_crit_edge, label %do.body.lr.ph

if.end42.for.end72_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end72

do.body.lr.ph:                                    ; preds = %if.end42
  %add.ptr60 = getelementptr i8, ptr %hw, i32 -2960
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %do.body.lr.ph
  %fvit.0376 = phi ptr [ %fvit.0374, %do.body.lr.ph ], [ %fvit.0, %do.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_add_adv_recipe.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_add_adv_recipe, %if.then57)) #13
          to label %do.end [label %if.then57], !srcloc !111

if.then57:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr60, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %profile_id = getelementptr inbounds %struct.ice_sw_fv_list_entry, ptr %fvit.0376, i32 0, i32 1
  %48 = ptrtoint ptr %profile_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %profile_id, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_add_adv_recipe.__UNIQUE_ID_ddebug623, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %49) #13
  br label %do.end

do.end:                                           ; preds = %if.then57, %do.body
  %profile_id62 = getelementptr inbounds %struct.ice_sw_fv_list_entry, ptr %fvit.0376, i32 0, i32 1
  %50 = ptrtoint ptr %profile_id62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %profile_id62, align 4
  %conv64 = and i32 %51, 65535
  call void @_set_bit(i32 noundef %conv64, ptr noundef nonnull %profiles) #13
  %52 = ptrtoint ptr %fvit.0376 to i32
  call void @__asan_load4_noabort(i32 %52)
  %fvit.0 = load ptr, ptr %fvit.0376, align 4
  %cmp48.not = icmp eq ptr %fvit.0, %fv_list
  br i1 %cmp48.not, label %do.end.for.end72_crit_edge, label %do.end.do.body_crit_edge

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end.for.end72_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end72

for.end72:                                        ; preds = %do.end.for.end72_crit_edge, %if.end42.for.end72_crit_edge
  %53 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rinfo, align 4
  %call73 = call fastcc zeroext i16 @ice_find_recp(ptr noundef %hw, ptr noundef nonnull %call7.i.i, i32 noundef %54)
  %55 = ptrtoint ptr %rid to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %call73, ptr %rid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %call73)
  %cmp75 = icmp ult i16 %call73, 64
  br i1 %cmp75, label %for.end72.err_unroll_crit_edge, label %if.end78

for.end72.err_unroll_crit_edge:                   ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_unroll

if.end78:                                         ; preds = %for.end72
  %56 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rinfo, align 4
  %tun_type80 = getelementptr inbounds %struct.ice_sw_recipe, ptr %call7.i.i328, i32 0, i32 10
  %58 = ptrtoint ptr %tun_type80 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %tun_type80, align 8
  %call82 = call fastcc i32 @ice_add_sw_recipe(ptr noundef %hw, ptr noundef nonnull %call7.i.i328, ptr noundef nonnull %profiles)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %for.cond91.preheader, label %if.end78.err_unroll_crit_edge

if.end78.err_unroll_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_unroll

for.cond91.preheader:                             ; preds = %if.end78
  %59 = ptrtoint ptr %fv_list to i32
  call void @__asan_load4_noabort(i32 %59)
  %fvit.1380 = load ptr, ptr %fv_list, align 4
  %cmp94.not381 = icmp eq ptr %fvit.1380, %fv_list
  br i1 %cmp94.not381, label %for.cond91.preheader.for.end155_crit_edge, label %for.body98.lr.ph

for.cond91.preheader.for.end155_crit_edge:        ; preds = %for.cond91.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end155

for.body98.lr.ph:                                 ; preds = %for.cond91.preheader
  %60 = getelementptr inbounds [2 x i32], ptr %r_bitmap, i32 0, i32 1
  %r_bitmap107 = getelementptr inbounds %struct.ice_sw_recipe, ptr %call7.i.i328, i32 0, i32 9
  br label %for.body98

for.body98:                                       ; preds = %cleanup145.for.body98_crit_edge, %for.body98.lr.ph
  %fvit.1382 = phi ptr [ %fvit.1380, %for.body98.lr.ph ], [ %fvit.1, %cleanup145.for.body98_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %r_bitmap) #13
  %61 = ptrtoint ptr %r_bitmap to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %r_bitmap, align 8, !annotation !113
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %60, align 4, !annotation !113
  %profile_id99 = getelementptr inbounds %struct.ice_sw_fv_list_entry, ptr %fvit.1382, i32 0, i32 1
  %63 = ptrtoint ptr %profile_id99 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %profile_id99, align 4
  %call101 = call fastcc i32 @ice_aq_get_recipe_to_profile(ptr noundef %hw, i32 noundef %64, ptr noundef nonnull %r_bitmap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %for.body98.cleanup145.thread_crit_edge

for.body98.cleanup145.thread_crit_edge:           ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup145.thread

if.end104:                                        ; preds = %for.body98
  call void @__bitmap_or(ptr noundef nonnull %r_bitmap, ptr noundef nonnull %r_bitmap, ptr noundef %r_bitmap107, i32 noundef 64) #13
  %call109 = call i32 @ice_acquire_change_lock(ptr noundef %hw, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %if.end104.cleanup145.thread_crit_edge

if.end104.cleanup145.thread_crit_edge:            ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup145.thread

if.end112:                                        ; preds = %if.end104
  %65 = ptrtoint ptr %profile_id99 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %profile_id99, align 4
  %call115 = call fastcc i32 @ice_aq_map_recipe_to_profile(ptr noundef %hw, i32 noundef %66, ptr noundef nonnull %r_bitmap)
  call void @ice_release_change_lock(ptr noundef %hw) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %if.end112.cleanup145.thread_crit_edge

if.end112.cleanup145.thread_crit_edge:            ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup145.thread

if.end118:                                        ; preds = %if.end112
  %67 = ptrtoint ptr %profile_id99 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %profile_id99, align 4
  %arrayidx120 = getelementptr [256 x [2 x i32]], ptr @profile_to_recipe, i32 0, i32 %68
  %69 = ptrtoint ptr %r_bitmap to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %r_bitmap, align 8
  %71 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 8)
  store i64 %70, ptr %arrayidx120, align 4
  %call125 = call i32 @_find_next_bit_be(ptr noundef %r_bitmap107, i32 noundef 64, i32 noundef 0) #13
  %conv128377 = and i32 %call125, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv128377)
  %cmp129378 = icmp ult i32 %conv128377, 64
  br i1 %cmp129378, label %if.end118.for.body131_crit_edge, label %if.end118.cleanup145_crit_edge

if.end118.cleanup145_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup145

if.end118.for.body131_crit_edge:                  ; preds = %if.end118
  br label %for.body131

for.body131:                                      ; preds = %for.body131.for.body131_crit_edge, %if.end118.for.body131_crit_edge
  %conv128379 = phi i32 [ %conv128, %for.body131.for.body131_crit_edge ], [ %conv128377, %if.end118.for.body131_crit_edge ]
  %72 = ptrtoint ptr %profile_id99 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %profile_id99, align 4
  %conv134 = and i32 %73, 65535
  %arrayidx136 = getelementptr [64 x [8 x i32]], ptr @recipe_to_profile, i32 0, i32 %conv128379
  call void @_set_bit(i32 noundef %conv134, ptr noundef %arrayidx136) #13
  %add = add nuw nsw i32 %conv128379, 1
  %call142 = call i32 @_find_next_bit_be(ptr noundef %r_bitmap107, i32 noundef 64, i32 noundef %add) #13
  %conv128 = and i32 %call142, 65535
  %cmp129 = icmp ult i32 %conv128, 64
  br i1 %cmp129, label %for.body131.for.body131_crit_edge, label %for.body131.cleanup145_crit_edge

for.body131.cleanup145_crit_edge:                 ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup145

for.body131.for.body131_crit_edge:                ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body131

cleanup145.thread:                                ; preds = %if.end112.cleanup145.thread_crit_edge, %if.end104.cleanup145.thread_crit_edge, %for.body98.cleanup145.thread_crit_edge
  %status.3.ph = phi i32 [ %call115, %if.end112.cleanup145.thread_crit_edge ], [ %call109, %if.end104.cleanup145.thread_crit_edge ], [ %call101, %for.body98.cleanup145.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %r_bitmap) #13
  br label %err_unroll

cleanup145:                                       ; preds = %for.body131.cleanup145_crit_edge, %if.end118.cleanup145_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %r_bitmap) #13
  %74 = ptrtoint ptr %fvit.1382 to i32
  call void @__asan_load4_noabort(i32 %74)
  %fvit.1 = load ptr, ptr %fvit.1382, align 4
  %cmp94.not = icmp eq ptr %fvit.1, %fv_list
  br i1 %cmp94.not, label %cleanup145.for.end155_crit_edge, label %cleanup145.for.body98_crit_edge

cleanup145.for.body98_crit_edge:                  ; preds = %cleanup145
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body98

cleanup145.for.end155_crit_edge:                  ; preds = %cleanup145
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end155

for.end155:                                       ; preds = %cleanup145.for.end155_crit_edge, %for.cond91.preheader.for.end155_crit_edge
  %root_rid = getelementptr inbounds %struct.ice_sw_recipe, ptr %call7.i.i328, i32 0, i32 1
  %75 = ptrtoint ptr %root_rid to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %root_rid, align 1
  %conv156 = zext i8 %76 to i16
  %77 = ptrtoint ptr %rid to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv156, ptr %rid, align 2
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %78 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %switch_info, align 8
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %recp_list, align 4
  %idxprom157 = zext i8 %76 to i32
  %lkup_exts159 = getelementptr %struct.ice_sw_recipe, ptr %81, i32 %idxprom157, i32 22
  %82 = call ptr @memcpy(ptr %lkup_exts159, ptr %call7.i.i, i32 168)
  br label %err_unroll

err_unroll:                                       ; preds = %for.end155, %cleanup145.thread, %if.end78.err_unroll_crit_edge, %for.end72.err_unroll_crit_edge, %if.end34.err_unroll_crit_edge, %if.end30.err_unroll_crit_edge, %ice_get_fv.exit.err_unroll_crit_edge, %ice_get_fv.exit.thread357, %ice_get_compat_fv_bitmap.exit.err_unroll_crit_edge
  %status.4 = phi i32 [ %call9.i, %ice_get_fv.exit.err_unroll_crit_edge ], [ %call31, %if.end30.err_unroll_crit_edge ], [ %call39, %if.end34.err_unroll_crit_edge ], [ 0, %for.end72.err_unroll_crit_edge ], [ %call82, %if.end78.err_unroll_crit_edge ], [ 0, %for.end155 ], [ -5, %ice_get_fv.exit.thread357 ], [ %status.3.ph, %cleanup145.thread ], [ -12, %ice_get_compat_fv_bitmap.exit.err_unroll_crit_edge ]
  %83 = ptrtoint ptr %rg_list to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rg_list, align 8
  %cmp172.not383 = icmp eq ptr %84, %rg_list
  br i1 %cmp172.not383, label %err_unroll.for.end189_crit_edge, label %for.body176.lr.ph

err_unroll.for.end189_crit_edge:                  ; preds = %err_unroll
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end189

for.body176.lr.ph:                                ; preds = %err_unroll
  %add.ptr180 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body176

for.body176:                                      ; preds = %list_del.exit.for.body176_crit_edge, %for.body176.lr.ph
  %r_entry.0384 = phi ptr [ %84, %for.body176.lr.ph ], [ %r_tmp.0, %list_del.exit.for.body176_crit_edge ]
  %85 = ptrtoint ptr %r_entry.0384 to i32
  call void @__asan_load4_noabort(i32 %85)
  %r_tmp.0 = load ptr, ptr %r_entry.0384, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %r_entry.0384) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body176.list_del.exit_crit_edge

for.body176.list_del.exit_crit_edge:              ; preds = %for.body176
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body176
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %r_entry.0384, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i, align 4
  %88 = ptrtoint ptr %r_entry.0384 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %r_entry.0384, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev1.i.i.i, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %89, ptr %87, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body176.list_del.exit_crit_edge
  %92 = ptrtoint ptr %r_entry.0384 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 256 to ptr), ptr %r_entry.0384, align 4
  %prev.i346 = getelementptr inbounds %struct.list_head, ptr %r_entry.0384, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i346 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i346, align 4
  %94 = ptrtoint ptr %add.ptr180 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr180, align 8
  %dev182 = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev182, ptr noundef %r_entry.0384) #13
  %cmp172.not = icmp eq ptr %r_tmp.0, %rg_list
  br i1 %cmp172.not, label %list_del.exit.for.end189_crit_edge, label %list_del.exit.for.body176_crit_edge

list_del.exit.for.body176_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body176

list_del.exit.for.end189_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end189

for.end189:                                       ; preds = %list_del.exit.for.end189_crit_edge, %err_unroll.for.end189_crit_edge
  %96 = ptrtoint ptr %fv_list to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fv_list, align 4
  %cmp203.not386 = icmp eq ptr %97, %fv_list
  br i1 %cmp203.not386, label %for.end189.for.end220_crit_edge, label %for.body207.lr.ph

for.end189.for.end220_crit_edge:                  ; preds = %for.end189
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end220

for.body207.lr.ph:                                ; preds = %for.end189
  %add.ptr211 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body207

for.body207:                                      ; preds = %list_del.exit352.for.body207_crit_edge, %for.body207.lr.ph
  %fvit.2387 = phi ptr [ %97, %for.body207.lr.ph ], [ %tmp.0, %list_del.exit352.for.body207_crit_edge ]
  %98 = ptrtoint ptr %fvit.2387 to i32
  call void @__asan_load4_noabort(i32 %98)
  %tmp.0 = load ptr, ptr %fvit.2387, align 4
  %call.i.i347 = call zeroext i1 @__list_del_entry_valid(ptr noundef %fvit.2387) #13
  br i1 %call.i.i347, label %if.end.i.i350, label %for.body207.list_del.exit352_crit_edge

for.body207.list_del.exit352_crit_edge:           ; preds = %for.body207
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit352

if.end.i.i350:                                    ; preds = %for.body207
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i348 = getelementptr inbounds %struct.list_head, ptr %fvit.2387, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i.i348 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i.i348, align 4
  %101 = ptrtoint ptr %fvit.2387 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fvit.2387, align 4
  %prev1.i.i.i349 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev1.i.i.i349 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev1.i.i.i349, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %102, ptr %100, align 4
  br label %list_del.exit352

list_del.exit352:                                 ; preds = %if.end.i.i350, %for.body207.list_del.exit352_crit_edge
  %105 = ptrtoint ptr %fvit.2387 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr inttoptr (i32 256 to ptr), ptr %fvit.2387, align 4
  %prev.i351 = getelementptr inbounds %struct.list_head, ptr %fvit.2387, i32 0, i32 1
  %106 = ptrtoint ptr %prev.i351 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i351, align 4
  %107 = ptrtoint ptr %add.ptr211 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr211, align 8
  %dev213 = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev213, ptr noundef %fvit.2387) #13
  %cmp203.not = icmp eq ptr %tmp.0, %fv_list
  br i1 %cmp203.not, label %list_del.exit352.for.end220_crit_edge, label %list_del.exit352.for.body207_crit_edge

list_del.exit352.for.body207_crit_edge:           ; preds = %list_del.exit352
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body207

list_del.exit352.for.end220_crit_edge:            ; preds = %list_del.exit352
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end220

for.end220:                                       ; preds = %list_del.exit352.for.end220_crit_edge, %for.end189.for.end220_crit_edge
  %root_buf = getelementptr inbounds %struct.ice_sw_recipe, ptr %call7.i.i328, i32 0, i32 21
  %109 = ptrtoint ptr %root_buf to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %root_buf, align 8
  %tobool221.not = icmp eq ptr %110, null
  br i1 %tobool221.not, label %for.end220.if.end229_crit_edge, label %if.then222

for.end220.if.end229_crit_edge:                   ; preds = %for.end220
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end229

if.then222:                                       ; preds = %for.end220
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr225 = getelementptr i8, ptr %hw, i32 -2960
  %111 = ptrtoint ptr %add.ptr225 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %add.ptr225, align 8
  %dev227 = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev227, ptr noundef nonnull %110) #13
  br label %if.end229

if.end229:                                        ; preds = %if.then222, %for.end220.if.end229_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i328) #13
  br label %err_free_lkup_exts

err_free_lkup_exts:                               ; preds = %if.end229, %if.then.i.err_free_lkup_exts_crit_edge, %for.end.err_free_lkup_exts_crit_edge, %ice_fill_valid_words.exit.err_free_lkup_exts_crit_edge, %if.then6.i.err_free_lkup_exts_crit_edge, %for.body.err_free_lkup_exts_crit_edge
  %status.5 = phi i32 [ %status.4, %if.end229 ], [ -12, %for.end.err_free_lkup_exts_crit_edge ], [ -28, %if.then.i.err_free_lkup_exts_crit_edge ], [ -5, %if.then6.i.err_free_lkup_exts_crit_edge ], [ -5, %for.body.err_free_lkup_exts_crit_edge ], [ -5, %ice_fill_valid_words.exit.err_free_lkup_exts_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup230

cleanup230:                                       ; preds = %err_free_lkup_exts, %entry.cleanup230_crit_edge
  %retval.0 = phi i32 [ %status.5, %err_free_lkup_exts ], [ -12, %entry.cleanup230_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %profiles) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fv_bitmap) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_adv_add_update_vsi_list(ptr noundef %hw, ptr nocapture noundef %m_entry, ptr nocapture noundef %cur_fltr, ptr nocapture noundef readonly %new_fltr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fltr_act = getelementptr inbounds %struct.ice_adv_rule_info, ptr %cur_fltr, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %fltr_act to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fltr_act, align 4
  %.off = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %entry.cleanup103_crit_edge, label %if.end

entry.cleanup103_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup103

if.end:                                           ; preds = %entry
  %fltr_act9 = getelementptr inbounds %struct.ice_adv_rule_info, ptr %new_fltr, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %fltr_act9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fltr_act9, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch141 = icmp eq i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch142 = icmp ult i32 %1, 2
  %or.cond = select i1 %switch141, i1 %switch142, i1 false
  br i1 %or.cond, label %if.end.cleanup103_crit_edge, label %if.end23

if.end.cleanup103_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup103

if.end23:                                         ; preds = %if.end
  %vsi_count = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %m_entry, i32 0, i32 5
  %5 = ptrtoint ptr %vsi_count to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vsi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp24 = icmp ult i16 %6, 2
  br i1 %cmp24, label %land.lhs.true26, label %if.end23.if.else_crit_edge

if.end23.if.else_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true26:                                  ; preds = %if.end23
  %vsi_list_info = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %m_entry, i32 0, i32 4
  %7 = ptrtoint ptr %vsi_list_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vsi_list_info, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then27, label %land.lhs.true26.if.else_crit_edge

land.lhs.true26.if.else_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then27:                                        ; preds = %land.lhs.true26
  %fwd_id = getelementptr inbounds %struct.ice_adv_rule_info, ptr %cur_fltr, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %fwd_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %fwd_id, align 4
  %fwd_id31 = getelementptr inbounds %struct.ice_adv_rule_info, ptr %new_fltr, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %fwd_id31 to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load32 = load i16, ptr %fwd_id31, align 4
  %cmp35.unshifted = xor i16 %bf.load32, %bf.load
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %cmp35.unshifted)
  %cmp35 = icmp ult i16 %cmp35.unshifted, 64
  br i1 %cmp35, label %if.then27.cleanup103_crit_edge, label %if.end38

if.then27.cleanup103_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup103

if.end38:                                         ; preds = %if.then27
  %add.ptr.i.i = getelementptr i8, ptr %hw, i32 -2960
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i.i, i32 noundef 6, i32 noundef 3520) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end38.cleanup103_crit_edge, label %if.end.i.i

if.end38.cleanup103_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup103

if.end.i.i:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %num_elems.i.i = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, ptr %call.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %num_elems.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 256, ptr %num_elems.i.i, align 2
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 8
  %dev45.i.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev45.i.i, ptr noundef nonnull %call.i.i.i) #13
  br label %cleanup103

if.else:                                          ; preds = %land.lhs.true26.if.else_crit_edge, %if.end23.if.else_crit_edge
  %vsi_list_info73 = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %m_entry, i32 0, i32 4
  %16 = ptrtoint ptr %vsi_list_info73 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vsi_list_info73, align 4
  %tobool74.not = icmp eq ptr %17, null
  br i1 %tobool74.not, label %if.else.cleanup103_crit_edge, label %if.end76

if.else.cleanup103_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup103

if.end76:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %vsi_handle72 = getelementptr inbounds %struct.ice_adv_rule_info, ptr %new_fltr, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %vsi_handle72 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vsi_handle72, align 2
  %conv77 = zext i16 %19 to i32
  %vsi_map = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %17, i32 0, i32 1
  %div3.i = lshr i32 %conv77, 5
  %arrayidx.i = getelementptr i32, ptr %vsi_map, i32 %div3.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv77, 31
  %22 = shl nuw i32 1, %and.i
  %23 = and i32 %22, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool80.not = icmp eq i32 %23, 0
  %spec.select = select i1 %tobool80.not, i32 -22, i32 0
  br label %cleanup103

cleanup103:                                       ; preds = %if.end76, %if.else.cleanup103_crit_edge, %if.end.i.i, %if.end38.cleanup103_crit_edge, %if.then27.cleanup103_crit_edge, %if.end.cleanup103_crit_edge, %entry.cleanup103_crit_edge
  %retval.2 = phi i32 [ -95, %entry.cleanup103_crit_edge ], [ -5, %if.else.cleanup103_crit_edge ], [ -95, %if.end.cleanup103_crit_edge ], [ -17, %if.then27.cleanup103_crit_edge ], [ -22, %if.end.i.i ], [ -12, %if.end38.cleanup103_crit_edge ], [ %spec.select, %if.end76 ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_fill_adv_dummy_packet(ptr nocapture noundef readonly %lkups, i16 noundef zeroext %lkups_cnt, ptr nocapture noundef %s_rule, ptr nocapture noundef readonly %dummy_pkt, i16 noundef zeroext %pkt_len, ptr nocapture noundef readonly %offsets) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %s_rule, i32 0, i32 2, i32 1
  %conv = zext i16 %pkt_len to i32
  %0 = call ptr @memcpy(ptr %hdr, ptr %dummy_pkt, i32 %conv)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %lkups_cnt)
  %cmp133.not = icmp eq i16 %lkups_cnt, 0
  br i1 %cmp133.not, label %entry.for.end86_crit_edge, label %for.body.preheader

entry.for.end86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end86

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i16 %lkups_cnt to i32
  br label %for.body

for.body:                                         ; preds = %for.inc84.for.body_crit_edge, %for.body.preheader
  %indvars.iv137 = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next138, %for.inc84.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ice_adv_lkup_elem, ptr %lkups, i32 %indvars.iv137
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offsets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp9.not128 = icmp eq i32 %4, 16
  br i1 %cmp9.not128, label %for.body.cleanup88_crit_edge, label %for.body11.preheader

for.body.cleanup88_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup88

for.body11.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp15144 = icmp eq i32 %2, %4
  br i1 %cmp15144, label %for.body11.preheader.if.end21_crit_edge, label %for.body11.preheader.for.cond5_crit_edge

for.body11.preheader.for.cond5_crit_edge:         ; preds = %for.body11.preheader
  br label %for.cond5

for.body11.preheader.if.end21_crit_edge:          ; preds = %for.body11.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

for.cond5:                                        ; preds = %for.body11.for.cond5_crit_edge, %for.body11.preheader.for.cond5_crit_edge
  %j.0129145 = phi i16 [ %inc, %for.body11.for.cond5_crit_edge ], [ 0, %for.body11.preheader.for.cond5_crit_edge ]
  %inc = add i16 %j.0129145, 1
  %idxprom6 = zext i16 %inc to i32
  %arrayidx7 = getelementptr %struct.ice_dummy_pkt_offsets, ptr %offsets, i32 %idxprom6
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp9.not = icmp eq i32 %6, 16
  br i1 %cmp9.not, label %for.cond5.cleanup88_crit_edge, label %for.body11

for.cond5.cleanup88_crit_edge:                    ; preds = %for.cond5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup88

for.body11:                                       ; preds = %for.cond5
  %cmp15 = icmp eq i32 %2, %6
  br i1 %cmp15, label %for.body11.if.end21_crit_edge, label %for.body11.for.cond5_crit_edge

for.body11.for.cond5_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond5

for.body11.if.end21_crit_edge:                    ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end21:                                         ; preds = %for.body11.if.end21_crit_edge, %for.body11.preheader.if.end21_crit_edge
  %idxprom6130.lcssa = phi i32 [ 0, %for.body11.preheader.if.end21_crit_edge ], [ %idxprom6, %for.body11.if.end21_crit_edge ]
  %offset19 = getelementptr %struct.ice_dummy_pkt_offsets, ptr %offsets, i32 %idxprom6130.lcssa, i32 1
  %7 = ptrtoint ptr %offset19 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %offset19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %9 = icmp ult i32 %2, 16
  br i1 %9, label %switch.hole_check, label %if.end21.cleanup88_crit_edge

if.end21.cleanup88_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup88

switch.hole_check:                                ; preds = %if.end21
  %switch.maskindex = trunc i32 %2 to i16
  %switch.shifted = lshr i16 -16385, %switch.maskindex
  %10 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %switch.lobit.not = icmp eq i16 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup88_crit_edge, label %switch.lookup

switch.hole_check.cleanup88_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup88

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.ice_fill_adv_dummy_packet, i32 0, i32 %2
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %m_u = getelementptr %struct.ice_adv_lkup_elem, ptr %lkups, i32 %indvars.iv137, i32 2
  %conv49 = zext i16 %8 to i32
  %add.ptr = getelementptr i8, ptr %hdr, i32 %conv49
  %h_u = getelementptr %struct.ice_adv_lkup_elem, ptr %lkups, i32 %indvars.iv137, i32 1
  br label %for.body42

for.body42:                                       ; preds = %for.inc77.for.body42_crit_edge, %switch.lookup
  %indvars.iv = phi i32 [ 0, %switch.lookup ], [ %indvars.iv.next, %for.inc77.for.body42_crit_edge ]
  %arrayidx46 = getelementptr i16, ptr %m_u, i32 %indvars.iv
  %12 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx46, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool47.not = icmp eq i16 %13, 0
  br i1 %tobool47.not, label %for.body42.for.inc77_crit_edge, label %if.then48

for.body42.for.inc77_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc77

if.then48:                                        ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx51 = getelementptr i16, ptr %add.ptr, i32 %indvars.iv
  %14 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx51, align 2
  %neg = xor i16 %13, -1
  %and = and i16 %15, %neg
  %arrayidx62 = getelementptr i16, ptr %h_u, i32 %indvars.iv
  %16 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx62, align 2
  %and70122 = and i16 %17, %13
  %or = or i16 %and70122, %and
  store i16 %or, ptr %arrayidx51, align 2
  br label %for.inc77

for.inc77:                                        ; preds = %if.then48, %for.body42.for.inc77_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %switch.load
  br i1 %exitcond.not, label %for.inc84, label %for.inc77.for.body42_crit_edge

for.inc77.for.body42_crit_edge:                   ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body42

for.inc84:                                        ; preds = %for.inc77
  %indvars.iv.next138 = add nuw nsw i32 %indvars.iv137, 1
  %exitcond139.not = icmp eq i32 %indvars.iv.next138, %wide.trip.count
  br i1 %exitcond139.not, label %for.inc84.for.end86_crit_edge, label %for.inc84.for.body_crit_edge

for.inc84.for.body_crit_edge:                     ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc84.for.end86_crit_edge:                    ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end86

for.end86:                                        ; preds = %for.inc84.for.end86_crit_edge, %entry.for.end86_crit_edge
  %18 = tail call i16 @llvm.bswap.i16(i16 %pkt_len)
  %hdr_len = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %s_rule, i32 0, i32 2, i32 0, i32 4
  %19 = ptrtoint ptr %hdr_len to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %hdr_len, align 2
  br label %cleanup88

cleanup88:                                        ; preds = %for.end86, %switch.hole_check.cleanup88_crit_edge, %if.end21.cleanup88_crit_edge, %for.cond5.cleanup88_crit_edge, %for.body.cleanup88_crit_edge
  %retval.2 = phi i32 [ 0, %for.end86 ], [ -22, %for.cond5.cleanup88_crit_edge ], [ -22, %switch.hole_check.cleanup88_crit_edge ], [ -22, %if.end21.cleanup88_crit_edge ], [ -22, %for.body.cleanup88_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_fill_adv_packet_tun(ptr noundef %hw, i32 noundef %tun_type, ptr nocapture noundef writeonly %pkt, ptr nocapture noundef readonly %offsets) unnamed_addr #0 align 64 {
entry:
  %open_port = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %open_port) #13
  %0 = ptrtoint ptr %open_port to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %open_port, align 2, !annotation !113
  %1 = zext i32 %tun_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %tun_type, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = call zeroext i1 @ice_get_open_tunnel_port(ptr noundef %hw, ptr noundef nonnull %open_port, i32 noundef 0) #13
  br i1 %call, label %sw.bb.for.cond.preheader_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.for.cond.preheader_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

sw.bb1:                                           ; preds = %entry
  %call2 = call zeroext i1 @ice_get_open_tunnel_port(ptr noundef %hw, ptr noundef nonnull %open_port, i32 noundef 1) #13
  br i1 %call2, label %sw.bb1.for.cond.preheader_crit_edge, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb1.for.cond.preheader_crit_edge:              ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.bb1.for.cond.preheader_crit_edge, %sw.bb.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %for.cond.preheader
  %i.0 = phi i16 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %idxprom = zext i16 %i.0 to i32
  %arrayidx = getelementptr %struct.ice_dummy_pkt_offsets, ptr %offsets, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %3, label %for.inc [
    i32 16, label %for.cond.cleanup_crit_edge
    i32 9, label %if.then9
  ]

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %offset12 = getelementptr %struct.ice_dummy_pkt_offsets, ptr %offsets, i32 %idxprom, i32 1
  %5 = ptrtoint ptr %offset12 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %offset12, align 4
  %idxprom13 = zext i16 %6 to i32
  %arrayidx14 = getelementptr i8, ptr %pkt, i32 %idxprom13
  %7 = ptrtoint ptr %open_port to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %open_port, align 2
  %dst_port = getelementptr inbounds %struct.ice_l4_hdr, ptr %arrayidx14, i32 0, i32 1
  %9 = ptrtoint ptr %dst_port to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %dst_port, align 2
  br label %cleanup

for.inc:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add i16 %i.0, 1
  br label %for.cond

cleanup:                                          ; preds = %if.then9, %for.cond.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then9 ], [ -5, %sw.bb.cleanup_crit_edge ], [ -5, %sw.bb1.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -5, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %open_port) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_rem_adv_rule_by_id(ptr noundef %hw, ptr nocapture noundef readonly %remove_entry) local_unnamed_addr #0 align 64 {
entry:
  %rinfo = alloca %struct.ice_adv_rule_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %rinfo) #13
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recp_list, align 4
  %4 = ptrtoint ptr %remove_entry to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %remove_entry, align 2
  %idxprom = zext i16 %5 to i32
  %recp_created = getelementptr %struct.ice_sw_recipe, ptr %3, i32 %idxprom, i32 2
  %6 = ptrtoint ptr %recp_created to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %recp_created, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %filt_rules = getelementptr %struct.ice_sw_recipe, ptr %3, i32 %idxprom, i32 12
  %rule_id = getelementptr inbounds %struct.ice_rule_query_data, ptr %remove_entry, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %list_itr.0.in = phi ptr [ %filt_rules, %if.end ], [ %list_itr.0, %for.body.for.cond_crit_edge ]
  %8 = ptrtoint ptr %list_itr.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %list_itr.0 = load ptr, ptr %list_itr.0.in, align 4
  %cmp.not = icmp eq ptr %list_itr.0, %filt_rules
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %fltr_rule_id = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.0, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %fltr_rule_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fltr_rule_id, align 2
  %11 = ptrtoint ptr %rule_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rule_id, align 2
  %cmp6 = icmp eq i16 %10, %12
  br i1 %cmp6, label %if.then8, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %rule_info = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.0, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %rinfo, ptr %rule_info, i32 36)
  %vsi_handle = getelementptr inbounds %struct.ice_rule_query_data, ptr %remove_entry, i32 0, i32 2
  %14 = ptrtoint ptr %vsi_handle to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vsi_handle, align 2
  %vsi_handle10 = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %vsi_handle10 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %vsi_handle10, align 2
  %lkups = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.0, i32 0, i32 1
  %17 = ptrtoint ptr %lkups to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lkups, align 4
  %lkups_cnt = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.0, i32 0, i32 3
  %19 = ptrtoint ptr %lkups_cnt to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %lkups_cnt, align 4
  %call = call fastcc i32 @ice_rem_adv_rule(ptr noundef %hw, ptr noundef %18, i16 noundef zeroext %20, ptr noundef nonnull %rinfo)
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then8 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %rinfo) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_rem_adv_rule(ptr noundef %hw, ptr nocapture noundef readonly %lkups, i16 noundef zeroext %lkups_cnt, ptr nocapture noundef readonly %rinfo) unnamed_addr #0 align 64 {
entry:
  %lkup_exts = alloca %struct.ice_prot_lkup_ext, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %lkup_exts) #13
  %0 = call ptr @memset(ptr %lkup_exts, i32 0, i32 168)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %lkups_cnt)
  %cmp195.not = icmp eq i16 %lkups_cnt, 0
  br i1 %cmp195.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_val_words.i = getelementptr inbounds %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 1
  %1 = ptrtoint ptr %n_val_words.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %n_val_words.i.promoted = load i8, ptr %n_val_words.i, align 2
  br label %for.body

for.cond:                                         ; preds = %ice_fill_valid_words.exit
  %inc = add i16 %i.0196, 1
  %cmp = icmp ult i16 %inc, %lkups_cnt
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %word.1.i.lcssa197 = phi i8 [ %n_val_words.i.promoted, %for.body.lr.ph ], [ %word.1.i, %for.cond.for.body_crit_edge ]
  %i.0196 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %conv = zext i16 %i.0196 to i32
  %arrayidx = getelementptr %struct.ice_adv_lkup_elem, ptr %lkups, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %3)
  %switch.i = icmp ult i32 %3, 14
  br i1 %switch.i, label %if.end.i, label %for.body.cleanup89_crit_edge

for.body.cleanup89_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup89

if.end.i:                                         ; preds = %for.body
  %m_u.i = getelementptr %struct.ice_adv_lkup_elem, ptr %lkups, i32 %conv, i32 2
  %protocol_id.i = getelementptr [16 x %struct.ice_protocol_entry], ptr @ice_prot_id_tbl, i32 0, i32 %3, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %indvars.iv.i = phi i32 [ 0, %if.end.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %word.063.i = phi i8 [ %word.1.i.lcssa197, %if.end.i ], [ %word.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %m_u.i, i32 %indvars.iv.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.not = icmp eq i16 %5, 0
  br i1 %tobool.not.i.not, label %for.body.i.for.inc.i_crit_edge, label %if.then6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %word.063.i)
  %cmp8.i = icmp ugt i8 %word.063.i, 19
  br i1 %cmp8.i, label %if.then6.i.cleanup89_crit_edge, label %if.end11.i

if.then6.i.cleanup89_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup89

if.end11.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i = zext i8 %word.063.i to i32
  %arrayidx15.i = getelementptr [16 x %struct.ice_prot_ext_tbl_entry], ptr @ice_prot_ext, i32 0, i32 %3, i32 1, i32 %indvars.iv.i
  %6 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %7 to i16
  %arrayidx18.i = getelementptr %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 4, i32 %conv7.i
  %off.i = getelementptr %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 4, i32 %conv7.i, i32 1
  %8 = ptrtoint ptr %off.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %conv16.i, ptr %off.i, align 1
  %9 = ptrtoint ptr %protocol_id.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %protocol_id.i, align 4
  %11 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx18.i, align 4
  %arrayidx29.i = getelementptr %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 3, i32 %conv7.i
  %12 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %5, ptr %arrayidx29.i, align 2
  %inc.i = add nuw nsw i8 %word.063.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i, %for.body.i.for.inc.i_crit_edge
  %word.1.i = phi i8 [ %inc.i, %if.end11.i ], [ %word.063.i, %for.body.i.for.inc.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 20
  br i1 %exitcond.not.i, label %ice_fill_valid_words.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

ice_fill_valid_words.exit:                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_cmp1(i8 %word.1.i, i8 %word.1.i.lcssa197)
  %tobool.not = icmp eq i8 %word.1.i, %word.1.i.lcssa197
  br i1 %tobool.not, label %ice_fill_valid_words.exit.cleanup89_crit_edge, label %for.cond

ice_fill_valid_words.exit.cleanup89_crit_edge:    ; preds = %ice_fill_valid_words.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup89

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %n_val_words.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %word.1.i, ptr %n_val_words.i, align 2
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %14 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rinfo, align 4
  %tun_type.off.i.i = add i32 %15, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tun_type.off.i.i)
  %switch.i.i = icmp ult i32 %tun_type.off.i.i, 3
  %..i.i = select i1 %switch.i.i, i16 255, i16 0
  br i1 %switch.i.i, label %if.then.i, label %for.end.if.end13_crit_edge

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then.i:                                        ; preds = %for.end
  %n_val_words.i148 = getelementptr inbounds %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 1
  %16 = ptrtoint ptr %n_val_words.i148 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %n_val_words.i148, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %17)
  %cmp.i = icmp ult i8 %17, 20
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.cleanup89_crit_edge

if.then.i.cleanup89_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup89

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = zext i8 %17 to i32
  %inc.i149 = add nuw nsw i8 %17, 1
  %18 = ptrtoint ptr %n_val_words.i148 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %inc.i149, ptr %n_val_words.i148, align 2
  %arrayidx.i150 = getelementptr %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 4, i32 %conv.i
  %19 = ptrtoint ptr %arrayidx.i150 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %arrayidx.i150, align 4
  %off.i151 = getelementptr %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 4, i32 %conv.i, i32 1
  %20 = ptrtoint ptr %off.i151 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 42, ptr %off.i151, align 1
  %arrayidx8.i = getelementptr %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 3, i32 %conv.i
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %..i.i, ptr %arrayidx8.i, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.then2.i, %for.end.if.end13_crit_edge
  %call14 = call fastcc zeroext i16 @ice_find_recp(ptr noundef %hw, ptr noundef nonnull %lkup_exts, i32 noundef %15)
  %conv15 = zext i16 %call14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %call14)
  %cmp16 = icmp eq i16 %call14, 64
  br i1 %cmp16, label %if.end13.cleanup89_crit_edge, label %if.end19

if.end13.cleanup89_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup89

if.end19:                                         ; preds = %if.end13
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %22 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %switch_info, align 8
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %recp_list, align 4
  %filt_rule_lock = getelementptr %struct.ice_sw_recipe, ptr %25, i32 %conv15, i32 14
  %filt_rules.i = getelementptr %struct.ice_sw_recipe, ptr %25, i32 %conv15, i32 12
  %26 = ptrtoint ptr %filt_rules.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %list_itr.065.i = load ptr, ptr %filt_rules.i, align 4
  %cmp.not66.i = icmp eq ptr %list_itr.065.i, %filt_rules.i
  br i1 %cmp.not66.i, label %if.end19.cleanup89_crit_edge, label %for.body.lr.ph.i

if.end19.cleanup89_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup89

for.body.lr.ph.i:                                 ; preds = %if.end19
  %flag.i = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 1, i32 1
  %conv11.i = zext i16 %lkups_cnt to i32
  br label %for.body.i153

for.body.i153:                                    ; preds = %for.inc35.i.for.body.i153_crit_edge, %for.body.lr.ph.i
  %list_itr.067.i = phi ptr [ %list_itr.065.i, %for.body.lr.ph.i ], [ %list_itr.0.i, %for.inc35.i.for.body.i153_crit_edge ]
  %lkups_cnt5.i = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.067.i, i32 0, i32 3
  %27 = ptrtoint ptr %lkups_cnt5.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %lkups_cnt5.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %lkups_cnt)
  %cmp7.not.i = icmp eq i16 %28, %lkups_cnt
  br i1 %cmp7.not.i, label %for.cond9.preheader.i, label %for.body.i153.for.inc35.i_crit_edge

for.body.i153.for.inc35.i_crit_edge:              ; preds = %for.body.i153
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc35.i

for.cond9.preheader.i:                            ; preds = %for.body.i153
  br i1 %cmp195.not, label %for.cond9.preheader.i.for.end.i157_crit_edge, label %for.body14.lr.ph.i

for.cond9.preheader.i.for.end.i157_crit_edge:     ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i157

for.body14.lr.ph.i:                               ; preds = %for.cond9.preheader.i
  %lkups15.i = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.067.i, i32 0, i32 1
  %29 = ptrtoint ptr %lkups15.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lkups15.i, align 4
  %bcmp.i200 = tail call i32 @bcmp(ptr noundef dereferenceable(84) %30, ptr noundef dereferenceable(84) %lkups, i32 84) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i200)
  %tobool.not.i156201 = icmp eq i32 %bcmp.i200, 0
  br i1 %tobool.not.i156201, label %for.body14.lr.ph.i.for.cond9.i_crit_edge, label %for.body14.lr.ph.i.for.end.i157_crit_edge

for.body14.lr.ph.i.for.end.i157_crit_edge:        ; preds = %for.body14.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i157

for.body14.lr.ph.i.for.cond9.i_crit_edge:         ; preds = %for.body14.lr.ph.i
  br label %for.cond9.i

for.cond9.i:                                      ; preds = %for.body14.i.for.cond9.i_crit_edge, %for.body14.lr.ph.i.for.cond9.i_crit_edge
  %i.062.i202 = phi i32 [ %inc.i154, %for.body14.i.for.cond9.i_crit_edge ], [ 0, %for.body14.lr.ph.i.for.cond9.i_crit_edge ]
  %inc.i154 = add nuw nsw i32 %i.062.i202, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i154, i32 %conv11.i)
  %exitcond.not.i155 = icmp eq i32 %inc.i154, %conv11.i
  br i1 %exitcond.not.i155, label %for.cond9.i.for.end.i157.loopexit_crit_edge, label %for.body14.i

for.cond9.i.for.end.i157.loopexit_crit_edge:      ; preds = %for.cond9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i157.loopexit

for.body14.i:                                     ; preds = %for.cond9.i
  %arrayidx16.i = getelementptr %struct.ice_adv_lkup_elem, ptr %30, i32 %inc.i154
  %arrayidx17.i = getelementptr %struct.ice_adv_lkup_elem, ptr %lkups, i32 %inc.i154
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(84) %arrayidx16.i, ptr noundef dereferenceable(84) %arrayidx17.i, i32 84) #16
  %tobool.not.i156 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i156, label %for.body14.i.for.cond9.i_crit_edge, label %for.body14.i.for.end.i157.loopexit_crit_edge

for.body14.i.for.end.i157.loopexit_crit_edge:     ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i157.loopexit

for.body14.i.for.cond9.i_crit_edge:               ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond9.i

for.end.i157.loopexit:                            ; preds = %for.body14.i.for.end.i157.loopexit_crit_edge, %for.cond9.i.for.end.i157.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i154, i32 %conv11.i)
  %cmp12.i.le = icmp ult i32 %inc.i154, %conv11.i
  br label %for.end.i157

for.end.i157:                                     ; preds = %for.end.i157.loopexit, %for.body14.lr.ph.i.for.end.i157_crit_edge, %for.cond9.preheader.i.for.end.i157_crit_edge
  %cmp12.lcssa.i = phi i1 [ false, %for.cond9.preheader.i.for.end.i157_crit_edge ], [ true, %for.body14.lr.ph.i.for.end.i157_crit_edge ], [ %cmp12.i.le, %for.end.i157.loopexit ]
  %31 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flag.i, align 2
  %flag22.i = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.067.i, i32 0, i32 2, i32 1, i32 1
  %33 = ptrtoint ptr %flag22.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flag22.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %34)
  %cmp24.i = icmp eq i16 %32, %34
  br i1 %cmp24.i, label %land.lhs.true.i158, label %for.end.i157.for.inc35.i_crit_edge

for.end.i157.for.inc35.i_crit_edge:               ; preds = %for.end.i157
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc35.i

land.lhs.true.i158:                               ; preds = %for.end.i157
  %rule_info.i = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.067.i, i32 0, i32 2
  %35 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rinfo, align 4
  %37 = ptrtoint ptr %rule_info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rule_info.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp28.i = icmp ne i32 %36, %38
  %brmerge.i = select i1 %cmp28.i, i1 true, i1 %cmp12.lcssa.i
  br i1 %brmerge.i, label %land.lhs.true.i158.for.inc35.i_crit_edge, label %ice_find_adv_rule_entry.exit

land.lhs.true.i158.for.inc35.i_crit_edge:         ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc35.i

for.inc35.i:                                      ; preds = %land.lhs.true.i158.for.inc35.i_crit_edge, %for.end.i157.for.inc35.i_crit_edge, %for.body.i153.for.inc35.i_crit_edge
  %39 = ptrtoint ptr %list_itr.067.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %list_itr.0.i = load ptr, ptr %list_itr.067.i, align 4
  %cmp.not.i = icmp eq ptr %list_itr.0.i, %filt_rules.i
  br i1 %cmp.not.i, label %for.inc35.i.cleanup89_crit_edge, label %for.inc35.i.for.body.i153_crit_edge

for.inc35.i.for.body.i153_crit_edge:              ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i153

for.inc35.i.cleanup89_crit_edge:                  ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup89

ice_find_adv_rule_entry.exit:                     ; preds = %land.lhs.true.i158
  %tobool23.not = icmp eq ptr %list_itr.067.i, null
  br i1 %tobool23.not, label %ice_find_adv_rule_entry.exit.cleanup89_crit_edge, label %if.end25

ice_find_adv_rule_entry.exit.cleanup89_crit_edge: ; preds = %ice_find_adv_rule_entry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup89

if.end25:                                         ; preds = %ice_find_adv_rule_entry.exit
  tail call void @mutex_lock_nested(ptr noundef %filt_rule_lock, i32 noundef 0) #13
  %fltr_act = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.067.i, i32 0, i32 2, i32 1, i32 2
  %40 = ptrtoint ptr %fltr_act to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fltr_act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp26.not = icmp eq i32 %41, 1
  br i1 %cmp26.not, label %if.else, label %if.then52

if.else:                                          ; preds = %if.end25
  %vsi_count = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.067.i, i32 0, i32 5
  %42 = ptrtoint ptr %vsi_count to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vsi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %43)
  %cmp30 = icmp ugt i16 %43, 1
  br i1 %cmp30, label %if.end50, label %lor.lhs.false.i166

lor.lhs.false.i166:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp1.i165 = icmp eq i16 %43, 0
  br i1 %cmp1.i165, label %lor.lhs.false.i166.if.then41_crit_edge, label %if.end.i175

lor.lhs.false.i166.if.then41_crit_edge:           ; preds = %lor.lhs.false.i166
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

if.end.i175:                                      ; preds = %lor.lhs.false.i166
  call void @__sanitizer_cov_trace_pc() #15
  %vsi_handle38 = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %vsi_handle38 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vsi_handle38, align 2
  %conv3.i167 = zext i16 %45 to i32
  %vsi_list_info4.i168 = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.067.i, i32 0, i32 4
  %46 = ptrtoint ptr %vsi_list_info4.i168 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vsi_list_info4.i168, align 4
  %vsi_map.i169 = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %47, i32 0, i32 1
  %div3.i.i170 = lshr i32 %conv3.i167, 5
  %arrayidx.i.i171 = getelementptr i32, ptr %vsi_map.i169, i32 %div3.i.i170
  %48 = ptrtoint ptr %arrayidx.i.i171 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx.i.i171, align 4
  %and.i.i172 = and i32 %conv3.i167, 31
  %50 = shl nuw i32 1, %and.i.i172
  %51 = and i32 %50, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i173 = icmp eq i32 %51, 0
  %spec.select.i174 = select i1 %tobool.not.i173, i32 -2, i32 -22
  br label %if.then41

if.then41:                                        ; preds = %if.end.i175, %lor.lhs.false.i166.if.then41_crit_edge
  %retval.1.i176 = phi i32 [ -22, %lor.lhs.false.i166.if.then41_crit_edge ], [ %spec.select.i174, %if.end.i175 ]
  tail call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  br label %cleanup89

if.end50:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %vsi_handle34 = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 1, i32 4
  %52 = ptrtoint ptr %vsi_handle34 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vsi_handle34, align 2
  %conv3.i = zext i16 %53 to i32
  %vsi_list_info4.i = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.067.i, i32 0, i32 4
  %54 = ptrtoint ptr %vsi_list_info4.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vsi_list_info4.i, align 4
  %vsi_map.i = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %55, i32 0, i32 1
  %div3.i.i = lshr i32 %conv3.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %vsi_map.i, i32 %div3.i.i
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv3.i, 31
  %58 = shl nuw i32 1, %and.i.i
  %59 = and i32 %58, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i160 = icmp eq i32 %59, 0
  %spec.select.i = select i1 %tobool.not.i160, i32 -2, i32 -22
  tail call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  br label %cleanup89

if.then52:                                        ; preds = %if.end25
  tail call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 16) #18
  %tobool55.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool55.not, label %if.then52.cleanup89_crit_edge, label %if.end57

if.then52.cleanup89_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup89

if.end57:                                         ; preds = %if.then52
  %act = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %61 = ptrtoint ptr %act to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %act, align 8
  %fltr_rule_id = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.067.i, i32 0, i32 2, i32 4
  %62 = ptrtoint ptr %fltr_rule_id to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %fltr_rule_id, align 2
  %64 = tail call i16 @llvm.bswap.i16(i16 %63)
  %index = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  %65 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %index, align 4
  %hdr_len = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 4
  %66 = ptrtoint ptr %hdr_len to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %hdr_len, align 2
  %call61 = tail call i32 @ice_aq_sw_rules(ptr noundef %hw, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 16, i8 noundef zeroext 1, i32 noundef 674, ptr noundef null)
  %67 = zext i32 %call61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call61, label %if.end57.cleanup84_crit_edge [
    i32 0, label %if.end57.if.then65_crit_edge
    i32 -2, label %if.end57.if.then65_crit_edge215
  ]

if.end57.if.then65_crit_edge215:                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then65

if.end57.if.then65_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then65

if.end57.cleanup84_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup84

if.then65:                                        ; preds = %if.end57.if.then65_crit_edge, %if.end57.if.then65_crit_edge215
  %68 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %switch_info, align 8
  tail call void @mutex_lock_nested(ptr noundef %filt_rule_lock, i32 noundef 0) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %list_itr.067.i) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then65.list_del.exit_crit_edge

if.then65.list_del.exit_crit_edge:                ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %list_itr.067.i, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i, align 4
  %72 = ptrtoint ptr %list_itr.067.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %list_itr.067.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then65.list_del.exit_crit_edge
  %76 = ptrtoint ptr %list_itr.067.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 256 to ptr), ptr %list_itr.067.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list_itr.067.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  %lkups67 = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.067.i, i32 0, i32 1
  %80 = ptrtoint ptr %lkups67 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lkups67, align 4
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %81) #13
  %82 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr, align 8
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev72, ptr noundef nonnull %list_itr.067.i) #13
  tail call void @mutex_unlock(ptr noundef %filt_rule_lock) #13
  %recp_list73 = getelementptr inbounds %struct.ice_switch_info, ptr %69, i32 0, i32 1
  %84 = ptrtoint ptr %recp_list73 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %recp_list73, align 4
  %filt_rules = getelementptr %struct.ice_sw_recipe, ptr %85, i32 %conv15, i32 12
  %86 = ptrtoint ptr %filt_rules to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %filt_rules, align 4
  %cmp.i178.not = icmp eq ptr %87, %filt_rules
  br i1 %cmp.i178.not, label %if.then78, label %list_del.exit.cleanup84_crit_edge

list_del.exit.cleanup84_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup84

if.then78:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %adv_rule = getelementptr %struct.ice_sw_recipe, ptr %85, i32 %conv15, i32 11
  %88 = ptrtoint ptr %adv_rule to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %adv_rule, align 4
  br label %cleanup84

cleanup84:                                        ; preds = %if.then78, %list_del.exit.cleanup84_crit_edge, %if.end57.cleanup84_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup89

cleanup89:                                        ; preds = %cleanup84, %if.then52.cleanup89_crit_edge, %if.end50, %if.then41, %ice_find_adv_rule_entry.exit.cleanup89_crit_edge, %for.inc35.i.cleanup89_crit_edge, %if.end19.cleanup89_crit_edge, %if.end13.cleanup89_crit_edge, %if.then.i.cleanup89_crit_edge, %ice_fill_valid_words.exit.cleanup89_crit_edge, %if.then6.i.cleanup89_crit_edge, %for.body.cleanup89_crit_edge
  %retval.3 = phi i32 [ %retval.1.i176, %if.then41 ], [ -22, %if.end13.cleanup89_crit_edge ], [ 0, %ice_find_adv_rule_entry.exit.cleanup89_crit_edge ], [ -28, %if.then.i.cleanup89_crit_edge ], [ %call61, %cleanup84 ], [ %spec.select.i, %if.end50 ], [ 0, %if.end19.cleanup89_crit_edge ], [ -12, %if.then52.cleanup89_crit_edge ], [ 0, %for.inc35.i.cleanup89_crit_edge ], [ -5, %if.then6.i.cleanup89_crit_edge ], [ -5, %for.body.cleanup89_crit_edge ], [ -5, %ice_fill_valid_words.exit.cleanup89_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %lkup_exts) #13
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_rem_adv_rule_for_vsi(ptr noundef %hw, i16 noundef zeroext %vsi_handle) local_unnamed_addr #0 align 64 {
entry:
  %rinfo = alloca %struct.ice_adv_rule_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %rinfo) #13
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  %fltr_act = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 1, i32 2
  %vsi_handle31 = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rinfo, i32 0, i32 1, i32 4
  %conv26 = zext i16 %vsi_handle to i32
  %div3.i = lshr i32 %conv26, 5
  %and.i = and i32 %conv26, 31
  %2 = shl nuw i32 1, %and.i
  br label %for.body

for.body:                                         ; preds = %for.inc50.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc50.for.body_crit_edge ]
  %3 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %recp_list, align 4
  %recp_created = getelementptr %struct.ice_sw_recipe, ptr %4, i32 %indvars.iv, i32 2
  %5 = ptrtoint ptr %recp_created to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %recp_created, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %for.body.for.inc50_crit_edge, label %if.end

for.body.for.inc50_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc50

if.end:                                           ; preds = %for.body
  %adv_rule = getelementptr %struct.ice_sw_recipe, ptr %4, i32 %indvars.iv, i32 11
  %7 = ptrtoint ptr %adv_rule to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %adv_rule, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %if.end.for.inc50_crit_edge, label %if.end7

if.end.for.inc50_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc50

if.end7:                                          ; preds = %if.end
  %filt_rules = getelementptr %struct.ice_sw_recipe, ptr %4, i32 %indvars.iv, i32 12
  %9 = ptrtoint ptr %filt_rules to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %filt_rules, align 4
  %cmp17.not79 = icmp eq ptr %10, %filt_rules
  br i1 %cmp17.not79, label %if.end7.for.inc50_crit_edge, label %if.end7.for.body19_crit_edge

if.end7.for.body19_crit_edge:                     ; preds = %if.end7
  br label %for.body19

if.end7.for.inc50_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc50

for.body19:                                       ; preds = %for.inc.for.body19_crit_edge, %if.end7.for.body19_crit_edge
  %list_itr.080 = phi ptr [ %tmp_entry.081, %for.inc.for.body19_crit_edge ], [ %10, %if.end7.for.body19_crit_edge ]
  %11 = ptrtoint ptr %list_itr.080 to i32
  call void @__asan_load4_noabort(i32 %11)
  %tmp_entry.081 = load ptr, ptr %list_itr.080, align 4
  %rule_info = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.080, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %rinfo, ptr %rule_info, i32 36)
  %13 = ptrtoint ptr %fltr_act to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fltr_act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp20 = icmp eq i32 %14, 1
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %for.body19
  %vsi_list_info = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.080, i32 0, i32 4
  %15 = ptrtoint ptr %vsi_list_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vsi_list_info, align 4
  %tobool23.not = icmp eq ptr %16, null
  br i1 %tobool23.not, label %if.then22.for.inc_crit_edge, label %if.end25

if.then22.for.inc_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end25:                                         ; preds = %if.then22
  %vsi_map = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %16, i32 0, i32 1
  %arrayidx.i = getelementptr i32, ptr %vsi_map, i32 %div3.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i, align 4
  %19 = and i32 %18, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool27.not = icmp eq i32 %19, 0
  br i1 %tobool27.not, label %if.end25.for.inc_crit_edge, label %if.end25.if.end38_crit_edge

if.end25.if.end38_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.else:                                          ; preds = %for.body19
  %20 = ptrtoint ptr %vsi_handle31 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vsi_handle31, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %vsi_handle)
  %cmp34.not = icmp eq i16 %21, %vsi_handle
  br i1 %cmp34.not, label %if.else.if.end38_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.end38:                                         ; preds = %if.else.if.end38_crit_edge, %if.end25.if.end38_crit_edge
  %22 = ptrtoint ptr %vsi_handle31 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %vsi_handle, ptr %vsi_handle31, align 2
  %lkups = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.080, i32 0, i32 1
  %23 = ptrtoint ptr %lkups to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lkups, align 4
  %lkups_cnt = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %list_itr.080, i32 0, i32 3
  %25 = ptrtoint ptr %lkups_cnt to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %lkups_cnt, align 4
  %call41 = call fastcc i32 @ice_rem_adv_rule(ptr noundef %hw, ptr noundef %24, i16 noundef zeroext %26, ptr noundef nonnull %rinfo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end38.for.inc_crit_edge, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end38.for.inc_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %if.end38.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.end25.for.inc_crit_edge, %if.then22.for.inc_crit_edge
  %cmp17.not = icmp eq ptr %tmp_entry.081, %filt_rules
  br i1 %cmp17.not, label %for.inc.for.inc50_crit_edge, label %for.inc.for.body19_crit_edge

for.inc.for.body19_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body19

for.inc.for.inc50_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc50

for.inc50:                                        ; preds = %for.inc.for.inc50_crit_edge, %if.end7.for.inc50_crit_edge, %if.end.for.inc50_crit_edge, %for.body.for.inc50_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.inc50.cleanup_crit_edge, label %for.inc50.for.body_crit_edge

for.inc50.for.body_crit_edge:                     ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc50.cleanup_crit_edge:                      ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc50.cleanup_crit_edge, %if.end38.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end38.cleanup_crit_edge ], [ 0, %for.inc50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %rinfo) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_replay_vsi_all_fltr(ptr noundef %hw, i16 noundef zeroext %vsi_handle) local_unnamed_addr #0 align 64 {
entry:
  %added_entry.i = alloca %struct.ice_rule_query_data, align 2
  %f_entry.i = alloca %struct.ice_fltr_list_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  %idxprom.i.i = zext i16 %vsi_handle to i32
  %arrayidx.i91.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %idxprom.i.i
  %fltr_info.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry.i, i32 0, i32 2
  %src_id.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry.i, i32 0, i32 2, i32 5
  %src.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry.i, i32 0, i32 2, i32 4
  %div3.i.i = lshr i32 %idxprom.i.i, 5
  %and.i.i = and i32 %idxprom.i.i, 31
  %2 = shl nuw i32 1, %and.i.i
  %vsi_handle39.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry.i, i32 0, i32 2, i32 8
  %fltr_act.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry.i, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %recp_list, align 4
  %filt_replay_rules = getelementptr %struct.ice_sw_recipe, ptr %4, i32 %indvars.iv, i32 13
  %adv_rule = getelementptr %struct.ice_sw_recipe, ptr %4, i32 %indvars.iv, i32 11
  %5 = ptrtoint ptr %adv_rule to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %adv_rule, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = ptrtoint ptr %filt_replay_rules to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %filt_replay_rules, align 4
  %cmp.i.not.i = icmp eq ptr %8, %filt_replay_rules
  br i1 %cmp.i.not.i, label %if.then.for.inc_crit_edge, label %for.body.lr.ph.i

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %if.then
  %9 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i91.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv)
  %cmp6.not.i = icmp eq i32 %indvars.iv, 4
  %13 = trunc i32 %indvars.iv to i8
  %14 = trunc i32 %indvars.iv to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn99.i = phi ptr [ %8, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %itr.0100.i = getelementptr i8, ptr %.pn99.i, i32 -12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %f_entry.i) #13
  %15 = call ptr @memset(ptr %f_entry.i, i32 255, i32 12)
  %fltr_info2.i = getelementptr i8, ptr %.pn99.i, i32 8
  %16 = call ptr @memcpy(ptr %fltr_info.i, ptr %fltr_info2.i, i32 36)
  %vsi_count.i = getelementptr i8, ptr %.pn99.i, i32 -8
  %17 = ptrtoint ptr %vsi_count.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vsi_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %18)
  %cmp3.i = icmp ugt i16 %18, 1
  %or.cond.i = or i1 %cmp6.not.i, %cmp3.i
  br i1 %or.cond.i, label %for.body.i.if.end26.i_crit_edge, label %land.lhs.true8.i

for.body.i.if.end26.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

land.lhs.true8.i:                                 ; preds = %for.body.i
  %vsi_handle10.i = getelementptr i8, ptr %.pn99.i, i32 38
  %19 = ptrtoint ptr %vsi_handle10.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vsi_handle10.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %vsi_handle)
  %cmp13.i = icmp eq i16 %20, %vsi_handle
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true8.i.if.end26.i_crit_edge

land.lhs.true8.i.if.end26.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

if.then15.i:                                      ; preds = %land.lhs.true8.i
  %21 = ptrtoint ptr %src_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %src_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp17.i = icmp eq i32 %22, 1
  br i1 %cmp17.i, label %if.then19.i, label %if.then15.i.if.end21.i_crit_edge

if.then15.i.if.end21.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %src.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %12, ptr %src.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.then15.i.if.end21.i_crit_edge
  %call22.i = call fastcc i32 @ice_add_rule_internal(ptr noundef %hw, i8 noundef zeroext %13, ptr noundef nonnull %f_entry.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.for.inc.i_crit_edge, label %if.end21.i.if.end.thread33_crit_edge

if.end21.i.if.end.thread33_crit_edge:             ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread33

if.end21.i.for.inc.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end26.i:                                       ; preds = %land.lhs.true8.i.if.end26.i_crit_edge, %for.body.i.if.end26.i_crit_edge
  %24 = ptrtoint ptr %itr.0100.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %itr.0100.i, align 4
  %tobool27.not.i = icmp eq ptr %25, null
  br i1 %tobool27.not.i, label %if.end26.i.for.inc.i_crit_edge, label %lor.lhs.false.i

if.end26.i.for.inc.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end26.i
  %vsi_map.i = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %25, i32 0, i32 1
  %arrayidx.i.i = getelementptr i32, ptr %vsi_map.i, i32 %div3.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i.i, align 4
  %28 = and i32 %27, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool31.not.i = icmp eq i32 %28, 0
  br i1 %tobool31.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end33.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end33.i:                                       ; preds = %lor.lhs.false.i
  call void @_clear_bit(i32 noundef %idxprom.i.i, ptr noundef %vsi_map.i) #13
  %29 = ptrtoint ptr %vsi_handle39.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %vsi_handle, ptr %vsi_handle39.i, align 2
  %30 = ptrtoint ptr %fltr_act.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %fltr_act.i, align 4
  %31 = ptrtoint ptr %src_id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp43.i = icmp eq i32 %32, 1
  br i1 %cmp43.i, label %if.then45.i, label %if.end33.i.if.end48.i_crit_edge

if.end33.i.if.end48.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48.i

if.then45.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %src.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %12, ptr %src.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then45.i, %if.end33.i.if.end48.i_crit_edge
  br i1 %cmp6.not.i, label %if.then52.i, label %if.else.i

if.then52.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  %call53.i = call fastcc i32 @ice_add_vlan_internal(ptr noundef %hw, ptr noundef nonnull %f_entry.i) #13
  br label %if.end55.i

if.else.i:                                        ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  %call54.i = call fastcc i32 @ice_add_rule_internal(ptr noundef %hw, i8 noundef zeroext %14, ptr noundef nonnull %f_entry.i) #13
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else.i, %if.then52.i
  %status.1.i = phi i32 [ %call53.i, %if.then52.i ], [ %call54.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.i)
  %tobool56.not.i = icmp eq i32 %status.1.i, 0
  br i1 %tobool56.not.i, label %if.end55.i.for.inc.i_crit_edge, label %if.end55.i.if.end.thread33_crit_edge

if.end55.i.if.end.thread33_crit_edge:             ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread33

if.end55.i.for.inc.i_crit_edge:                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.thread33:                                  ; preds = %if.end55.i.if.end.thread33_crit_edge, %if.end21.i.if.end.thread33_crit_edge
  %status.2.i = phi i32 [ %call22.i, %if.end21.i.if.end.thread33_crit_edge ], [ %status.1.i, %if.end55.i.if.end.thread33_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %f_entry.i) #13
  br label %cleanup9

for.inc.i:                                        ; preds = %if.end55.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %if.end26.i.for.inc.i_crit_edge, %if.end21.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %f_entry.i) #13
  %34 = ptrtoint ptr %.pn99.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn.i = load ptr, ptr %.pn99.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %filt_replay_rules
  br i1 %cmp.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %added_entry.i) #13
  %35 = call ptr @memset(ptr %added_entry.i, i32 0, i32 6)
  %36 = ptrtoint ptr %filt_replay_rules to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %filt_replay_rules, align 4
  %cmp.i.not.i23 = icmp eq ptr %37, %filt_replay_rules
  br i1 %cmp.i.not.i23, label %if.else.if.end.thread38_crit_edge, label %for.cond.i.preheader

if.else.if.end.thread38_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread38

for.cond.i.preheader:                             ; preds = %if.else
  %38 = ptrtoint ptr %filt_replay_rules to i32
  call void @__asan_load4_noabort(i32 %38)
  %adv_fltr.0.i44 = load ptr, ptr %filt_replay_rules, align 4
  %cmp.not.i2445 = icmp eq ptr %adv_fltr.0.i44, %filt_replay_rules
  br i1 %cmp.not.i2445, label %for.cond.i.preheader.if.end.thread38_crit_edge, label %for.cond.i.preheader.for.body.i25_crit_edge

for.cond.i.preheader.for.body.i25_crit_edge:      ; preds = %for.cond.i.preheader
  br label %for.body.i25

for.cond.i.preheader.if.end.thread38_crit_edge:   ; preds = %for.cond.i.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread38

for.body.i25:                                     ; preds = %cleanup.i26.for.body.i25_crit_edge, %for.cond.i.preheader.for.body.i25_crit_edge
  %adv_fltr.0.i46 = phi ptr [ %adv_fltr.0.i, %cleanup.i26.for.body.i25_crit_edge ], [ %adv_fltr.0.i44, %for.cond.i.preheader.for.body.i25_crit_edge ]
  %vsi_handle1.i = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %adv_fltr.0.i46, i32 0, i32 2, i32 1, i32 4
  %39 = ptrtoint ptr %vsi_handle1.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vsi_handle1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %vsi_handle)
  %cmp3.not.i = icmp eq i16 %40, %vsi_handle
  br i1 %cmp3.not.i, label %if.end6.i, label %for.body.i25.cleanup.i26_crit_edge

for.body.i25.cleanup.i26_crit_edge:               ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i26

if.end6.i:                                        ; preds = %for.body.i25
  %rule_info.i = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %adv_fltr.0.i46, i32 0, i32 2
  %lkups_cnt.i = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %adv_fltr.0.i46, i32 0, i32 3
  %41 = ptrtoint ptr %lkups_cnt.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %lkups_cnt.i, align 4
  %lkups.i = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %adv_fltr.0.i46, i32 0, i32 1
  %43 = ptrtoint ptr %lkups.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lkups.i, align 4
  %call7.i = call i32 @ice_add_adv_rule(ptr noundef %hw, ptr noundef %44, i16 noundef zeroext %42, ptr noundef %rule_info.i, ptr noundef nonnull %added_entry.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.cleanup.i26_crit_edge, label %if.end

if.end6.i.cleanup.i26_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i26

cleanup.i26:                                      ; preds = %if.end6.i.cleanup.i26_crit_edge, %for.body.i25.cleanup.i26_crit_edge
  %45 = ptrtoint ptr %adv_fltr.0.i46 to i32
  call void @__asan_load4_noabort(i32 %45)
  %adv_fltr.0.i = load ptr, ptr %adv_fltr.0.i46, align 4
  %cmp.not.i24 = icmp eq ptr %adv_fltr.0.i, %filt_replay_rules
  br i1 %cmp.not.i24, label %cleanup.i26.if.end.thread38_crit_edge, label %cleanup.i26.for.body.i25_crit_edge

cleanup.i26.for.body.i25_crit_edge:               ; preds = %cleanup.i26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i25

cleanup.i26.if.end.thread38_crit_edge:            ; preds = %cleanup.i26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread38

if.end.thread38:                                  ; preds = %cleanup.i26.if.end.thread38_crit_edge, %for.cond.i.preheader.if.end.thread38_crit_edge, %if.else.if.end.thread38_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %added_entry.i) #13
  br label %for.inc

if.end:                                           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %added_entry.i) #13
  br label %cleanup9

for.inc:                                          ; preds = %if.end.thread38, %for.inc.i.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.inc.cleanup9_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup9

cleanup9:                                         ; preds = %for.inc.cleanup9_crit_edge, %if.end, %if.end.thread33
  %retval.2 = phi i32 [ %call7.i, %if.end ], [ %status.2.i, %if.end.thread33 ], [ 0, %for.inc.cleanup9_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_rm_all_sw_replay_rule_info(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  %add.ptr9.i = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recp_list, align 4
  %filt_replay_rules = getelementptr %struct.ice_sw_recipe, ptr %3, i32 %indvars.iv, i32 13
  %4 = ptrtoint ptr %filt_replay_rules to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %filt_replay_rules, align 4
  %cmp.i.not = icmp eq ptr %5, %filt_replay_rules
  br i1 %cmp.i.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then3:                                         ; preds = %for.body
  %adv_rule = getelementptr %struct.ice_sw_recipe, ptr %3, i32 %indvars.iv, i32 11
  %6 = ptrtoint ptr %adv_rule to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %adv_rule, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool11.not = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %filt_replay_rules to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %filt_replay_rules, align 4
  %cmp.i.not.i = icmp eq ptr %9, %filt_replay_rules
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then3
  br i1 %cmp.i.not.i, label %if.then12.for.inc_crit_edge, label %if.then12.for.body.i_crit_edge

if.then12.for.body.i_crit_edge:                   ; preds = %if.then12
  br label %for.body.i

if.then12.for.inc_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then12.for.body.i_crit_edge
  %.pn.in25.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %9, %if.then12.for.body.i_crit_edge ]
  %entry1.0.i = getelementptr i8, ptr %.pn.in25.i, i32 -12
  %10 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in25.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in25.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %17 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr9.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i, ptr noundef %entry1.0.i) #13
  %cmp.not.i = icmp eq ptr %.pn.i, %filt_replay_rules
  br i1 %cmp.not.i, label %list_del.exit.i.for.inc_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

list_del.exit.i.for.inc_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.else:                                          ; preds = %if.then3
  br i1 %cmp.i.not.i, label %if.else.for.inc_crit_edge, label %if.else.for.body.i29_crit_edge

if.else.for.body.i29_crit_edge:                   ; preds = %if.else
  br label %for.body.i29

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.i29:                                     ; preds = %list_del.exit.i36.for.body.i29_crit_edge, %if.else.for.body.i29_crit_edge
  %lst_itr.030.i = phi ptr [ %tmp_entry.0.i, %list_del.exit.i36.for.body.i29_crit_edge ], [ %9, %if.else.for.body.i29_crit_edge ]
  %21 = ptrtoint ptr %lst_itr.030.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %tmp_entry.0.i = load ptr, ptr %lst_itr.030.i, align 4
  %call.i.i.i28 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lst_itr.030.i) #13
  br i1 %call.i.i.i28, label %if.end.i.i.i32, label %for.body.i29.list_del.exit.i36_crit_edge

for.body.i29.list_del.exit.i36_crit_edge:         ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i36

if.end.i.i.i32:                                   ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i30 = getelementptr inbounds %struct.list_head, ptr %lst_itr.030.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i30, align 4
  %24 = ptrtoint ptr %lst_itr.030.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lst_itr.030.i, align 4
  %prev1.i.i.i.i31 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i31, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit.i36

list_del.exit.i36:                                ; preds = %if.end.i.i.i32, %for.body.i29.list_del.exit.i36_crit_edge
  %28 = ptrtoint ptr %lst_itr.030.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %lst_itr.030.i, align 4
  %prev.i.i33 = getelementptr inbounds %struct.list_head, ptr %lst_itr.030.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i33, align 4
  %30 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr9.i, align 8
  %dev.i34 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %lkups.i = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %lst_itr.030.i, i32 0, i32 1
  %32 = ptrtoint ptr %lkups.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lkups.i, align 4
  tail call void @devm_kfree(ptr noundef %dev.i34, ptr noundef %33) #13
  %34 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr9.i, align 8
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev14.i, ptr noundef %lst_itr.030.i) #13
  %cmp.not.i35 = icmp eq ptr %tmp_entry.0.i, %filt_replay_rules
  br i1 %cmp.not.i35, label %list_del.exit.i36.for.inc_crit_edge, label %list_del.exit.i36.for.body.i29_crit_edge

list_del.exit.i36.for.body.i29_crit_edge:         ; preds = %list_del.exit.i36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i29

list_del.exit.i36.for.inc_crit_edge:              ; preds = %list_del.exit.i36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit.i36.for.inc_crit_edge, %if.else.for.inc_crit_edge, %list_del.exit.i.for.inc_crit_edge, %if.then12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_create_pkt_fwd_rule(ptr noundef %hw, ptr nocapture noundef %f_entry) unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i59 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev5, i32 noundef 60, i32 noundef 3520) #13
  %tobool7.not = icmp eq ptr %call.i59, null
  br i1 %tobool7.not, label %if.end.ice_create_pkt_fwd_rule_exit_crit_edge, label %if.end9

if.end.ice_create_pkt_fwd_rule_exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_create_pkt_fwd_rule_exit

if.end9:                                          ; preds = %if.end
  %fltr_info = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %call.i59, i32 0, i32 5
  %fltr_info10 = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %fltr_info, ptr %fltr_info10, i32 36)
  %vsi_count = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %call.i59, i32 0, i32 1
  %5 = ptrtoint ptr %vsi_count to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %vsi_count, align 4
  %lg_act_idx = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %call.i59, i32 0, i32 2
  %6 = ptrtoint ptr %lg_act_idx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %lg_act_idx, align 2
  %sw_marker_id = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %call.i59, i32 0, i32 3
  %7 = ptrtoint ptr %sw_marker_id to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %sw_marker_id, align 4
  %counter_index = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %call.i59, i32 0, i32 6
  %8 = ptrtoint ptr %counter_index to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %counter_index, align 4
  tail call fastcc void @ice_fill_sw_rule(ptr noundef %hw, ptr noundef %fltr_info, ptr noundef nonnull %call.i, i32 noundef 672)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #13
  %9 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %10 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 672) #13
  %11 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %desc.i, align 4
  %13 = or i16 %12, 4
  store i16 %13, ptr %desc.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 256, ptr %10, align 4
  %call.i60 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %call.i, i16 noundef zeroext 32, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool13.not = icmp eq i32 %call.i60, 0
  br i1 %tobool13.not, label %if.end20, label %if.then14

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev19, ptr noundef nonnull %call.i59) #13
  br label %ice_create_pkt_fwd_rule_exit

if.end20:                                         ; preds = %if.end9
  %index = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %index, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %fltr_rule_id = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %f_entry, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %fltr_rule_id to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %fltr_rule_id, align 4
  %fltr_rule_id25 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %call.i59, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %fltr_rule_id25 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %19, ptr %fltr_rule_id25, align 4
  %22 = ptrtoint ptr %fltr_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fltr_info, align 4
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %24 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %switch_info, align 8
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %recp_list, align 4
  %list_entry = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %call.i59, i32 0, i32 4
  %filt_rules = getelementptr %struct.ice_sw_recipe, ptr %27, i32 %23, i32 12
  %28 = ptrtoint ptr %filt_rules to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %filt_rules, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list_entry, ptr noundef %filt_rules, ptr noundef %29) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.ice_create_pkt_fwd_rule_exit_crit_edge

if.end20.ice_create_pkt_fwd_rule_exit_crit_edge:  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_create_pkt_fwd_rule_exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list_entry, ptr %prev1.i.i, align 4
  %31 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %list_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %call.i59, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %filt_rules, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %filt_rules to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list_entry, ptr %filt_rules, align 4
  br label %ice_create_pkt_fwd_rule_exit

ice_create_pkt_fwd_rule_exit:                     ; preds = %if.end.i.i, %if.end20.ice_create_pkt_fwd_rule_exit_crit_edge, %if.then14, %if.end.ice_create_pkt_fwd_rule_exit_crit_edge
  %status.0 = phi i32 [ %call.i60, %if.then14 ], [ -12, %if.end.ice_create_pkt_fwd_rule_exit_crit_edge ], [ 0, %if.end20.ice_create_pkt_fwd_rule_exit_crit_edge ], [ 0, %if.end.i.i ]
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev31, ptr noundef nonnull %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %ice_create_pkt_fwd_rule_exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %ice_create_pkt_fwd_rule_exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_add_update_vsi_list(ptr noundef %hw, ptr noundef %m_entry, ptr nocapture noundef %cur_fltr, ptr nocapture noundef readonly %new_fltr) unnamed_addr #0 align 64 {
entry:
  %vsi_list_id = alloca i16, align 2
  %tmp_fltr = alloca %struct.ice_fltr_info, align 4
  %vsi_handle_arr = alloca [2 x i16], align 2
  %vsi_handle64 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vsi_list_id) #13
  %0 = ptrtoint ptr %vsi_list_id to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %vsi_list_id, align 2
  %fltr_act = getelementptr inbounds %struct.ice_fltr_info, ptr %cur_fltr, i32 0, i32 1
  %1 = ptrtoint ptr %fltr_act to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fltr_act, align 4
  %3 = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp eq i32 %3, 2
  br i1 %switch, label %entry.cleanup97_crit_edge, label %if.end

entry.cleanup97_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup97

if.end:                                           ; preds = %entry
  %fltr_act3 = getelementptr inbounds %struct.ice_fltr_info, ptr %new_fltr, i32 0, i32 1
  %4 = ptrtoint ptr %fltr_act3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fltr_act3, align 4
  %6 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch142 = icmp eq i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch143 = icmp ult i32 %2, 2
  %or.cond = select i1 %switch142, i1 %switch143, i1 false
  br i1 %or.cond, label %if.end.cleanup97_crit_edge, label %if.end14

if.end.cleanup97_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup97

if.end14:                                         ; preds = %if.end
  %vsi_count = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %m_entry, i32 0, i32 1
  %7 = ptrtoint ptr %vsi_count to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vsi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp15 = icmp ult i16 %8, 2
  %9 = ptrtoint ptr %m_entry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_entry, align 4
  br i1 %cmp15, label %land.lhs.true17, label %if.else

land.lhs.true17:                                  ; preds = %if.end14
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.then18, label %if.else.thread

if.else.thread:                                   ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vsi_handle64) #13
  %vsi_handle65147 = getelementptr inbounds %struct.ice_fltr_info, ptr %new_fltr, i32 0, i32 8
  %11 = ptrtoint ptr %vsi_handle65147 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vsi_handle65147, align 2
  %13 = ptrtoint ptr %vsi_handle64 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %vsi_handle64, align 2
  br label %if.end69

if.then18:                                        ; preds = %land.lhs.true17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp_fltr) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vsi_handle_arr) #13
  %fwd_id = getelementptr inbounds %struct.ice_fltr_info, ptr %cur_fltr, i32 0, i32 7
  %14 = ptrtoint ptr %fwd_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %fwd_id, align 4
  %fwd_id20 = getelementptr inbounds %struct.ice_fltr_info, ptr %new_fltr, i32 0, i32 7
  %15 = ptrtoint ptr %fwd_id20 to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load21 = load i16, ptr %fwd_id20, align 4
  %cmp24.unshifted = xor i16 %bf.load21, %bf.load
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %cmp24.unshifted)
  %cmp24 = icmp ult i16 %cmp24.unshifted, 64
  br i1 %cmp24, label %if.then18.cleanup.thread_crit_edge, label %if.end27

if.then18.cleanup.thread_crit_edge:               ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end27:                                         ; preds = %if.then18
  %16 = getelementptr inbounds [2 x i16], ptr %vsi_handle_arr, i32 0, i32 1
  %vsi_handle = getelementptr inbounds %struct.ice_fltr_info, ptr %cur_fltr, i32 0, i32 8
  %17 = ptrtoint ptr %vsi_handle to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vsi_handle, align 2
  %19 = ptrtoint ptr %vsi_handle_arr to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %vsi_handle_arr, align 2
  %vsi_handle28 = getelementptr inbounds %struct.ice_fltr_info, ptr %new_fltr, i32 0, i32 8
  %20 = ptrtoint ptr %vsi_handle28 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vsi_handle28, align 2
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %16, align 2
  %23 = ptrtoint ptr %new_fltr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %new_fltr, align 4
  %call = call fastcc i32 @ice_create_vsi_list_rule(ptr noundef %hw, ptr noundef nonnull %vsi_handle_arr, i16 noundef zeroext 2, ptr noundef nonnull %vsi_list_id, i32 noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool31.not = icmp eq i32 %call, 0
  br i1 %tobool31.not, label %if.end33, label %if.end27.cleanup.thread_crit_edge

if.end27.cleanup.thread_crit_edge:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end33:                                         ; preds = %if.end27
  %25 = call ptr @memcpy(ptr %tmp_fltr, ptr %new_fltr, i32 36)
  %fltr_rule_id = getelementptr inbounds %struct.ice_fltr_info, ptr %cur_fltr, i32 0, i32 2
  %26 = ptrtoint ptr %fltr_rule_id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %fltr_rule_id, align 4
  %fltr_rule_id34 = getelementptr inbounds %struct.ice_fltr_info, ptr %tmp_fltr, i32 0, i32 2
  %28 = ptrtoint ptr %fltr_rule_id34 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %fltr_rule_id34, align 4
  %fltr_act35 = getelementptr inbounds %struct.ice_fltr_info, ptr %tmp_fltr, i32 0, i32 1
  %29 = ptrtoint ptr %fltr_act35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %fltr_act35, align 4
  %30 = ptrtoint ptr %vsi_list_id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vsi_list_id, align 2
  %fwd_id36 = getelementptr inbounds %struct.ice_fltr_info, ptr %tmp_fltr, i32 0, i32 7
  %32 = ptrtoint ptr %fwd_id36 to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load37 = load i16, ptr %fwd_id36, align 4
  %bf.shl = shl i16 %31, 6
  %bf.clear = and i16 %bf.load37, 63
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %fwd_id36, align 4
  %call38 = call fastcc i32 @ice_update_pkt_fwd_rule(ptr noundef %hw, ptr noundef nonnull %tmp_fltr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end33.cleanup.thread_crit_edge

if.end33.cleanup.thread_crit_edge:                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end41:                                         ; preds = %if.end33
  %33 = ptrtoint ptr %fwd_id to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load43 = load i16, ptr %fwd_id, align 4
  %bf.clear46 = and i16 %bf.load43, 63
  %bf.set47 = or i16 %bf.clear46, %bf.shl
  store i16 %bf.set47, ptr %fwd_id, align 4
  %34 = ptrtoint ptr %fltr_act to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %fltr_act, align 4
  %call50 = call fastcc ptr @ice_create_vsi_list_map(ptr noundef %hw, ptr noundef nonnull %vsi_handle_arr, i16 noundef zeroext 2, i16 noundef zeroext %31)
  %35 = ptrtoint ptr %m_entry to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call50, ptr %m_entry, align 4
  %tobool53.not = icmp eq ptr %call50, null
  br i1 %tobool53.not, label %if.end41.cleanup.thread_crit_edge, label %if.end55

if.end41.cleanup.thread_crit_edge:                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end55:                                         ; preds = %if.end41
  %sw_marker_id = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %m_entry, i32 0, i32 3
  %36 = ptrtoint ptr %sw_marker_id to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sw_marker_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %37)
  %cmp57.not = icmp eq i16 %37, -1
  br i1 %cmp57.not, label %if.end55.cleanup_crit_edge, label %if.then59

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  %lg_act_idx = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %m_entry, i32 0, i32 2
  %38 = ptrtoint ptr %lg_act_idx to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %lg_act_idx, align 2
  %call61 = call fastcc i32 @ice_add_marker_act(ptr noundef %hw, ptr noundef %m_entry, i16 noundef zeroext %37, i16 noundef zeroext %39)
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end41.cleanup.thread_crit_edge, %if.end33.cleanup.thread_crit_edge, %if.end27.cleanup.thread_crit_edge, %if.then18.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end41.cleanup.thread_crit_edge ], [ %call38, %if.end33.cleanup.thread_crit_edge ], [ %call, %if.end27.cleanup.thread_crit_edge ], [ -17, %if.then18.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vsi_handle_arr) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp_fltr) #13
  br label %cleanup97

cleanup:                                          ; preds = %if.then59, %if.end55.cleanup_crit_edge
  %status.1 = phi i32 [ %call61, %if.then59 ], [ 0, %if.end55.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vsi_handle_arr) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp_fltr) #13
  br label %if.end92

if.else:                                          ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vsi_handle64) #13
  %vsi_handle65 = getelementptr inbounds %struct.ice_fltr_info, ptr %new_fltr, i32 0, i32 8
  %40 = ptrtoint ptr %vsi_handle65 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vsi_handle65, align 2
  %42 = ptrtoint ptr %vsi_handle64 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %vsi_handle64, align 2
  %tobool67.not = icmp eq ptr %10, null
  br i1 %tobool67.not, label %if.else.cleanup88_crit_edge, label %if.else.if.end69_crit_edge

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.else.cleanup88_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup88

if.end69:                                         ; preds = %if.else.if.end69_crit_edge, %if.else.thread
  %43 = phi i16 [ %12, %if.else.thread ], [ %41, %if.else.if.end69_crit_edge ]
  %conv70 = zext i16 %43 to i32
  %vsi_map = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %10, i32 0, i32 1
  %div3.i = lshr i32 %conv70, 5
  %arrayidx.i = getelementptr i32, ptr %vsi_map, i32 %div3.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv70, 31
  %46 = shl nuw i32 1, %and.i
  %47 = and i32 %46, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool73.not = icmp eq i32 %47, 0
  br i1 %tobool73.not, label %if.end75, label %if.end69.cleanup88_crit_edge

if.end69.cleanup88_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup88

if.end75:                                         ; preds = %if.end69
  %fwd_id76 = getelementptr inbounds %struct.ice_fltr_info, ptr %cur_fltr, i32 0, i32 7
  %48 = ptrtoint ptr %fwd_id76 to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load77 = load i16, ptr %fwd_id76, align 4
  %bf.lshr78 = lshr i16 %bf.load77, 6
  %49 = ptrtoint ptr %vsi_list_id to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %bf.lshr78, ptr %vsi_list_id, align 2
  %50 = ptrtoint ptr %new_fltr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %new_fltr, align 4
  %call80 = call fastcc i32 @ice_update_vsi_list_rule(ptr noundef %hw, ptr noundef nonnull %vsi_handle64, i16 noundef zeroext 1, i16 noundef zeroext %bf.lshr78, i1 noundef zeroext false, i32 noundef 673, i32 noundef %51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then82, label %if.end75.cleanup88.thread_crit_edge

if.end75.cleanup88.thread_crit_edge:              ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup88.thread

if.then82:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %m_entry to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %m_entry, align 4
  %vsi_map85 = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %53, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %conv70, ptr noundef %vsi_map85) #13
  br label %cleanup88.thread

cleanup88.thread:                                 ; preds = %if.then82, %if.end75.cleanup88.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vsi_handle64) #13
  br label %if.end92

cleanup88:                                        ; preds = %if.end69.cleanup88_crit_edge, %if.else.cleanup88_crit_edge
  %retval.1 = phi i32 [ -5, %if.else.cleanup88_crit_edge ], [ 0, %if.end69.cleanup88_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vsi_handle64) #13
  br label %cleanup97

if.end92:                                         ; preds = %cleanup88.thread, %cleanup
  %status.3 = phi i32 [ %status.1, %cleanup ], [ %call80, %cleanup88.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.3)
  %tobool93.not = icmp eq i32 %status.3, 0
  br i1 %tobool93.not, label %if.then94, label %if.end92.cleanup97_crit_edge

if.end92.cleanup97_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup97

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %vsi_count to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vsi_count, align 4
  %inc = add i16 %55, 1
  store i16 %inc, ptr %vsi_count, align 4
  br label %cleanup97

cleanup97:                                        ; preds = %if.then94, %if.end92.cleanup97_crit_edge, %cleanup88, %cleanup.thread, %if.end.cleanup97_crit_edge, %entry.cleanup97_crit_edge
  %retval.2 = phi i32 [ %retval.1, %cleanup88 ], [ -95, %entry.cleanup97_crit_edge ], [ 0, %if.then94 ], [ %status.3, %if.end92.cleanup97_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ -95, %if.end.cleanup97_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vsi_list_id) #13
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_create_vsi_list_rule(ptr noundef %hw, ptr nocapture noundef readonly %vsi_handle_arr, i16 noundef zeroext %num_vsi, ptr nocapture noundef %vsi_list_id, i32 noundef %lkup_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 6, i32 noundef 3520) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %num_elems.i = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, ptr %call.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %num_elems.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 256, ptr %num_elems.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %lkup_type)
  %3 = icmp ult i32 %lkup_type, 10
  br i1 %3, label %switch.hole_check, label %if.end.i.ice_aq_alloc_free_vsi_list.exit_crit_edge

if.end.i.ice_aq_alloc_free_vsi_list.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_aq_alloc_free_vsi_list.exit

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = trunc i32 %lkup_type to i16
  %switch.shifted = lshr i16 799, %switch.maskindex
  %4 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %switch.lobit.not = icmp eq i16 %4, 0
  br i1 %switch.lobit.not, label %switch.hole_check.ice_aq_alloc_free_vsi_list.exit_crit_edge, label %switch.lookup

switch.hole_check.ice_aq_alloc_free_vsi_list.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_aq_alloc_free_vsi_list.exit

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [10 x i16], ptr @switch.table.ice_create_vsi_list_rule, i32 0, i32 %lkup_type
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %5)
  %switch.load = load i16, ptr %switch.gep, align 2
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %switch.load, ptr %call.i.i, align 2
  %call30.i = tail call i32 @ice_aq_alloc_free_res(ptr noundef %hw, i16 noundef zeroext 1, ptr noundef nonnull %call.i.i, i16 noundef zeroext 6, i32 noundef 520, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %switch.lookup.ice_aq_alloc_free_vsi_list.exit_crit_edge

switch.lookup.ice_aq_alloc_free_vsi_list.exit_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_aq_alloc_free_vsi_list.exit

if.end33.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %elem37.i = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, ptr %call.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %elem37.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %elem37.i, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #13
  %10 = ptrtoint ptr %vsi_list_id to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %vsi_list_id, align 2
  br label %ice_aq_alloc_free_vsi_list.exit

ice_aq_alloc_free_vsi_list.exit:                  ; preds = %if.end33.i, %switch.lookup.ice_aq_alloc_free_vsi_list.exit_crit_edge, %switch.hole_check.ice_aq_alloc_free_vsi_list.exit_crit_edge, %if.end.i.ice_aq_alloc_free_vsi_list.exit_crit_edge
  %status.0.i = phi i32 [ %call30.i, %switch.lookup.ice_aq_alloc_free_vsi_list.exit_crit_edge ], [ 0, %if.end33.i ], [ -22, %if.end.i.ice_aq_alloc_free_vsi_list.exit_crit_edge ], [ -22, %switch.hole_check.ice_aq_alloc_free_vsi_list.exit_crit_edge ]
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %dev45.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev45.i, ptr noundef nonnull %call.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %tobool.not = icmp eq i32 %status.0.i, 0
  br i1 %tobool.not, label %if.end, label %ice_aq_alloc_free_vsi_list.exit.cleanup_crit_edge

ice_aq_alloc_free_vsi_list.exit.cleanup_crit_edge: ; preds = %ice_aq_alloc_free_vsi_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %ice_aq_alloc_free_vsi_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %vsi_list_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vsi_list_id, align 2
  %call1 = tail call fastcc i32 @ice_update_vsi_list_rule(ptr noundef %hw, ptr noundef %vsi_handle_arr, i16 noundef zeroext %num_vsi, i16 noundef zeroext %14, i1 noundef zeroext false, i32 noundef 672, i32 noundef %lkup_type)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ice_aq_alloc_free_vsi_list.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %status.0.i, %ice_aq_alloc_free_vsi_list.exit.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ice_create_vsi_list_map(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vsi_handle_arr, i16 noundef zeroext %num_vsi, i16 noundef zeroext %vsi_list_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 108, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %vsi_list_id1 = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %vsi_list_id1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %vsi_list_id, ptr %vsi_list_id1, align 4
  %ref_cnt = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %ref_cnt, align 2
  %conv = zext i16 %num_vsi to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %num_vsi)
  %cmp14.not = icmp eq i16 %num_vsi, 0
  br i1 %cmp14.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %vsi_map = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %call.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %vsi_handle_arr, i32 %i.015
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv3 = zext i16 %7 to i32
  tail call void @_set_bit(i32 noundef %conv3, ptr noundef %vsi_map) #13
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %1, ptr noundef %9) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call.i, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_add_marker_act(ptr noundef %hw, ptr noundef %m_ent, i16 noundef zeroext %sw_marker, i16 noundef zeroext %l_id) unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fltr_info = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %m_ent, i32 0, i32 5
  %0 = ptrtoint ptr %fltr_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fltr_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr6 = getelementptr i8, ptr %call.i, i32 20
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 512, ptr %call.i, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %l_id)
  %pdata = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %pdata, align 2
  %size = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 768, ptr %size, align 2
  %vsi_count = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %m_ent, i32 0, i32 1
  %cond.in.in.in = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %m_ent, i32 0, i32 5, i32 7
  %8 = ptrtoint ptr %cond.in.in.in to i32
  call void @__asan_load2_noabort(i32 %8)
  %cond.in.in = load i16, ptr %cond.in.in.in, align 4
  %9 = lshr i16 %cond.in.in, 3
  %10 = and i16 %9, 8184
  %and = zext i16 %10 to i32
  %11 = ptrtoint ptr %vsi_count to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vsi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp22 = icmp ugt i16 %12, 1
  %act.0.v = select i1 %cmp22, i32 73728, i32 65536
  %act.0 = or i32 %act.0.v, %and
  %13 = tail call i32 @llvm.bswap.i32(i32 %act.0)
  %act28 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %14 = ptrtoint ptr %act28 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %act28, align 2
  %arrayidx32 = getelementptr %struct.ice_aqc_sw_rules_elem, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 218103808, ptr %arrayidx32, align 2
  %conv34 = zext i16 %sw_marker to i32
  %shl35 = shl nuw nsw i32 %conv34, 3
  %or37 = or i32 %shl35, 3670021
  %16 = tail call i32 @llvm.bswap.i32(i32 %or37)
  %arrayidx40 = getelementptr %struct.ice_aqc_sw_rules_elem, ptr %call.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %arrayidx40, align 2
  tail call fastcc void @ice_fill_sw_rule(ptr noundef %hw, ptr noundef %fltr_info, ptr noundef %add.ptr6, i32 noundef 673)
  %conv42 = zext i16 %l_id to i32
  %shl43 = shl nuw nsw i32 %conv42, 4
  %and44 = and i32 %shl43, 131056
  %or45 = or i32 %and44, 2
  %18 = tail call i32 @llvm.bswap.i32(i32 %or45)
  %act47 = getelementptr i8, ptr %call.i, i32 28
  %19 = ptrtoint ptr %act47 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %act47, align 2
  %fltr_rule_id = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %m_ent, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %fltr_rule_id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %fltr_rule_id, align 4
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %index50 = getelementptr i8, ptr %call.i, i32 32
  %23 = ptrtoint ptr %index50 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %index50, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #13
  %24 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %25 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 673) #13
  %26 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %desc.i, align 4
  %28 = or i16 %27, 4
  store i16 %28, ptr %desc.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 512, ptr %25, align 4
  %call.i102 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %call.i, i16 noundef zeroext 52, ptr noundef null) #13
  %sq_last_status.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 8
  %30 = ptrtoint ptr %sq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sq_last_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp10.i = icmp eq i32 %31, 2
  %spec.select.i = select i1 %cmp10.i, i32 -2, i32 %call.i102
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool52.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool52.not, label %if.then53, label %if.end4.if.end54_crit_edge

if.end4.if.end54_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then53:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %lg_act_idx = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %m_ent, i32 0, i32 2
  %32 = ptrtoint ptr %lg_act_idx to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %l_id, ptr %lg_act_idx, align 2
  %sw_marker_id = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %m_ent, i32 0, i32 3
  %33 = ptrtoint ptr %sw_marker_id to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %sw_marker, ptr %sw_marker_id, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end4.if.end54_crit_edge
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 8
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev59, ptr noundef nonnull %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end54 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_update_vsi_list_rule(ptr noundef %hw, ptr nocapture noundef readonly %vsi_handle_arr, i16 noundef zeroext %num_vsi, i16 noundef zeroext %vsi_list_id, i1 noundef zeroext %remove, i32 noundef %opc, i32 noundef %lkup_type) unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %lkup_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %lkup_type, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.then10_crit_edge
    i32 2, label %entry.if.then10_crit_edge80
    i32 0, label %entry.if.then10_crit_edge81
    i32 8, label %entry.if.then10_crit_edge82
    i32 3, label %entry.if.then10_crit_edge83
    i32 9, label %entry.if.then10_crit_edge84
    i32 4, label %if.then14
  ]

entry.if.then10_crit_edge84:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

entry.if.then10_crit_edge83:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

entry.if.then10_crit_edge82:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

entry.if.then10_crit_edge81:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

entry.if.then10_crit_edge80:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10:                                        ; preds = %entry.if.then10_crit_edge, %entry.if.then10_crit_edge80, %entry.if.then10_crit_edge81, %entry.if.then10_crit_edge82, %entry.if.then10_crit_edge83, %entry.if.then10_crit_edge84
  %conv = select i1 %remove, i16 1024, i16 768
  br label %if.end21

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv18 = select i1 %remove, i16 1536, i16 1280
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.then10
  %rule_type.0 = phi i16 [ %conv, %if.then10 ], [ %conv18, %if.then14 ]
  %conv22 = zext i16 %num_vsi to i32
  %mul = shl i16 %num_vsi, 1
  %add = add i16 %mul, 8
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %conv24 = zext i16 %add to i32
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %conv24, i32 noundef 3520) #13
  %tobool25.not = icmp eq ptr %call.i, null
  br i1 %tobool25.not, label %if.end21.cleanup_crit_edge, label %for.cond.preheader

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %num_vsi)
  %cmp2978.not = icmp eq i16 %num_vsi, 0
  br i1 %cmp2978.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vsi = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end33.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %vsi_handle_arr, i32 %i.079
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %4)
  %cmp.i = icmp ult i16 %4, 768
  br i1 %cmp.i, label %ice_is_vsi_valid.exit, label %for.body.exit_crit_edge

for.body.exit_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

ice_is_vsi_valid.exit:                            ; preds = %for.body
  %conv.i = zext i16 %4 to i32
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.i.not = icmp eq ptr %6, null
  br i1 %tobool.i.not, label %ice_is_vsi_valid.exit.exit_crit_edge, label %if.end33

ice_is_vsi_valid.exit.exit_crit_edge:             ; preds = %ice_is_vsi_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

if.end33:                                         ; preds = %ice_is_vsi_valid.exit
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %arrayidx36 = getelementptr [0 x i16], ptr %vsi, i32 0, i32 %i.079
  %12 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayidx36, align 2
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, %conv22
  br i1 %exitcond.not, label %if.end33.for.end_crit_edge, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end33.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %rule_type.0, ptr %call.i, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %num_vsi)
  %pdata37 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call.i, i32 0, i32 2
  %number_vsi = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %number_vsi to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %number_vsi, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %vsi_list_id)
  %17 = ptrtoint ptr %pdata37 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %pdata37, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #13
  %opc.off.i = add i32 %opc, -672
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %opc.off.i)
  %switch.i = icmp ult i32 %opc.off.i, 3
  %18 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  br i1 %switch.i, label %if.end.i, label %for.end.ice_aq_sw_rules.exit_crit_edge

for.end.ice_aq_sw_rules.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_aq_sw_rules.exit

if.end.i:                                         ; preds = %for.end
  %19 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 672, i32 %opc)
  %cmp.not.i = icmp eq i32 %opc, 672
  %conv.i76 = trunc i32 %opc to i16
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext %conv.i76) #13
  %20 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %desc.i, align 4
  %22 = or i16 %21, 4
  store i16 %22, ptr %desc.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 256, ptr %19, align 4
  %call.i77 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %call.i, i16 noundef zeroext %add, ptr noundef null) #13
  br i1 %cmp.not.i, label %if.end.i.ice_aq_sw_rules.exit_crit_edge, label %land.lhs.true9.i

if.end.i.ice_aq_sw_rules.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_aq_sw_rules.exit

land.lhs.true9.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %sq_last_status.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 8
  %24 = ptrtoint ptr %sq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sq_last_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp10.i = icmp eq i32 %25, 2
  %spec.select.i = select i1 %cmp10.i, i32 -2, i32 %call.i77
  br label %ice_aq_sw_rules.exit

ice_aq_sw_rules.exit:                             ; preds = %land.lhs.true9.i, %if.end.i.ice_aq_sw_rules.exit_crit_edge, %for.end.ice_aq_sw_rules.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %for.end.ice_aq_sw_rules.exit_crit_edge ], [ %call.i77, %if.end.i.ice_aq_sw_rules.exit_crit_edge ], [ %spec.select.i, %land.lhs.true9.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  br label %exit

exit:                                             ; preds = %ice_aq_sw_rules.exit, %ice_is_vsi_valid.exit.exit_crit_edge, %for.body.exit_crit_edge
  %status.0 = phi i32 [ %retval.0.i, %ice_aq_sw_rules.exit ], [ -22, %ice_is_vsi_valid.exit.exit_crit_edge ], [ -22, %for.body.exit_crit_edge ]
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev44, ptr noundef nonnull %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %exit ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ice_find_vsi_list_entry(ptr nocapture noundef readonly %hw, i16 noundef zeroext %vsi_handle, ptr nocapture noundef writeonly %vsi_list_id) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recp_list, align 4
  %filt_rules = getelementptr %struct.ice_sw_recipe, ptr %3, i32 4, i32 12
  %4 = ptrtoint ptr %filt_rules to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn1 = load ptr, ptr %filt_rules, align 4
  %cmp.not3 = icmp eq ptr %.pn1, %filt_rules
  br i1 %cmp.not3, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %conv4 = zext i16 %vsi_handle to i32
  %div3.i = lshr i32 %conv4, 5
  %and.i = and i32 %conv4, 31
  %5 = shl nuw i32 1, %and.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn4 = phi ptr [ %.pn1, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %vsi_count = getelementptr i8, ptr %.pn4, i32 -8
  %6 = ptrtoint ptr %vsi_count to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vsi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp1 = icmp eq i16 %7, 1
  br i1 %cmp1, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %list_itr.05 = getelementptr i8, ptr %.pn4, i32 -12
  %8 = ptrtoint ptr %list_itr.05 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list_itr.05, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %vsi_map = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %9, i32 0, i32 1
  %arrayidx.i = getelementptr i32, ptr %vsi_map, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  %12 = and i32 %11, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %if.then.for.inc_crit_edge, label %if.then6

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %vsi_list_id7 = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %vsi_list_id7 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vsi_list_id7, align 4
  %15 = ptrtoint ptr %vsi_list_id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %vsi_list_id, align 2
  br label %cleanup

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn4, align 4
  %cmp.not = icmp eq ptr %.pn, %filt_rules
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %if.then6 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_rem_update_vsi_list(ptr noundef %hw, i16 noundef zeroext %vsi_handle, ptr nocapture noundef %fm_list) unnamed_addr #0 align 64 {
entry:
  %vsi_handle.addr = alloca i16, align 2
  %tmp_fltr_info = alloca %struct.ice_fltr_info, align 4
  %rem_vsi_handle = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsi_handle.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %vsi_handle, ptr %vsi_handle.addr, align 2
  %fltr_info = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %fm_list, i32 0, i32 5
  %fltr_act = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %fm_list, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %fltr_act to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fltr_act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup117_crit_edge

entry.cleanup117_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup117

lor.lhs.false:                                    ; preds = %entry
  %vsi_count = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %fm_list, i32 0, i32 1
  %3 = ptrtoint ptr %vsi_count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vsi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp1 = icmp eq i16 %4, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup117_crit_edge, label %if.end

lor.lhs.false.cleanup117_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup117

if.end:                                           ; preds = %lor.lhs.false
  %conv3 = zext i16 %vsi_handle to i32
  %5 = ptrtoint ptr %fm_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fm_list, align 4
  %vsi_map = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %6, i32 0, i32 1
  %div3.i = lshr i32 %conv3, 5
  %arrayidx.i = getelementptr i32, ptr %vsi_map, i32 %div3.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv3, 31
  %9 = shl nuw i32 1, %and.i
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end.cleanup117_crit_edge, label %if.end5

if.end.cleanup117_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup117

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %fltr_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fltr_info, align 4
  %fwd_id = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, ptr %fm_list, i32 0, i32 5, i32 7
  %13 = ptrtoint ptr %fwd_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %fwd_id, align 4
  %bf.lshr = lshr i16 %bf.load, 6
  %call9 = call fastcc i32 @ice_update_vsi_list_rule(ptr noundef %hw, ptr noundef nonnull %vsi_handle.addr, i16 noundef zeroext 1, i16 noundef zeroext %bf.lshr, i1 noundef zeroext true, i32 noundef 673, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end5.cleanup117_crit_edge

if.end5.cleanup117_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup117

if.end12:                                         ; preds = %if.end5
  %14 = ptrtoint ptr %vsi_count to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vsi_count, align 4
  %dec = add i16 %15, -1
  store i16 %dec, ptr %vsi_count, align 4
  %16 = ptrtoint ptr %fm_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fm_list, align 4
  %vsi_map16 = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %17, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %conv3, ptr noundef %vsi_map16) #13
  %18 = ptrtoint ptr %vsi_count to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vsi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %19)
  %cmp20 = icmp ne i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp22.not = icmp eq i32 %12, 4
  %or.cond = or i1 %cmp22.not, %cmp20
  br i1 %or.cond, label %if.end12.if.end62_crit_edge, label %if.then24

if.end12.if.end62_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then24:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp_fltr_info) #13
  %20 = call ptr @memcpy(ptr %tmp_fltr_info, ptr %fltr_info, i32 36)
  %21 = ptrtoint ptr %fm_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fm_list, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rem_vsi_handle) #13
  %vsi_map28 = getelementptr inbounds %struct.ice_vsi_list_map_info, ptr %22, i32 0, i32 1
  %call30 = tail call i32 @_find_first_bit_be(ptr noundef %vsi_map28, i32 noundef 768) #13
  %conv31 = trunc i32 %call30 to i16
  %23 = ptrtoint ptr %rem_vsi_handle to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv31, ptr %rem_vsi_handle, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %conv31)
  %cmp.i = icmp ult i16 %conv31, 768
  br i1 %cmp.i, label %ice_is_vsi_valid.exit, label %if.then24.cleanup.thread_crit_edge

if.then24.cleanup.thread_crit_edge:               ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

ice_is_vsi_valid.exit:                            ; preds = %if.then24
  %conv.i = and i32 %call30, 65535
  %arrayidx.i168 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 22, i32 %conv.i
  %24 = ptrtoint ptr %arrayidx.i168 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i168, align 4
  %tobool.i.not = icmp eq ptr %25, null
  br i1 %tobool.i.not, label %ice_is_vsi_valid.exit.cleanup.thread_crit_edge, label %if.end34

ice_is_vsi_valid.exit.cleanup.thread_crit_edge:   ; preds = %ice_is_vsi_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end34:                                         ; preds = %ice_is_vsi_valid.exit
  %call35 = call fastcc i32 @ice_update_vsi_list_rule(ptr noundef %hw, ptr noundef nonnull %rem_vsi_handle, i16 noundef zeroext 1, i16 noundef zeroext %bf.lshr, i1 noundef zeroext true, i32 noundef 673, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup.thread_crit_edge

if.end34.cleanup.thread_crit_edge:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end38:                                         ; preds = %if.end34
  %fltr_act39 = getelementptr inbounds %struct.ice_fltr_info, ptr %tmp_fltr_info, i32 0, i32 1
  %26 = ptrtoint ptr %fltr_act39 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %fltr_act39, align 4
  %27 = ptrtoint ptr %arrayidx.i168 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i168, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 4
  %fwd_id41 = getelementptr inbounds %struct.ice_fltr_info, ptr %tmp_fltr_info, i32 0, i32 7
  %31 = ptrtoint ptr %fwd_id41 to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load42 = load i16, ptr %fwd_id41, align 4
  %bf.shl = shl i16 %30, 6
  %bf.clear = and i16 %bf.load42, 63
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %fwd_id41, align 4
  %vsi_handle43 = getelementptr inbounds %struct.ice_fltr_info, ptr %tmp_fltr_info, i32 0, i32 8
  %32 = ptrtoint ptr %vsi_handle43 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv31, ptr %vsi_handle43, align 2
  %call44 = call fastcc i32 @ice_update_pkt_fwd_rule(ptr noundef %hw, ptr noundef nonnull %tmp_fltr_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cleanup.thread174, label %do.body

do.body:                                          ; preds = %if.end38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_rem_update_vsi_list.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_rem_update_vsi_list, %if.then51)) #13
          to label %cleanup [label %if.then51], !srcloc !111

if.then51:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %fwd_id41 to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load54 = load i16, ptr %fwd_id41, align 4
  %bf.lshr55 = lshr i16 %bf.load54, 6
  %conv56 = zext i16 %bf.lshr55 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_rem_update_vsi_list.__UNIQUE_ID_ddebug614, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %conv56, i32 noundef %call44) #13
  br label %cleanup.thread

cleanup.thread174:                                ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %36 = call ptr @memcpy(ptr %fltr_info, ptr %tmp_fltr_info, i32 36)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rem_vsi_handle) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp_fltr_info) #13
  br label %if.end62

cleanup.thread:                                   ; preds = %if.then51, %if.end34.cleanup.thread_crit_edge, %ice_is_vsi_valid.exit.cleanup.thread_crit_edge, %if.then24.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call44, %if.then51 ], [ %call35, %if.end34.cleanup.thread_crit_edge ], [ -5, %ice_is_vsi_valid.exit.cleanup.thread_crit_edge ], [ -5, %if.then24.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rem_vsi_handle) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp_fltr_info) #13
  br label %cleanup117

cleanup:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rem_vsi_handle) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp_fltr_info) #13
  br label %cleanup117

if.end62:                                         ; preds = %cleanup.thread174, %if.end12.if.end62_crit_edge
  %37 = ptrtoint ptr %vsi_count to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vsi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %38)
  %cmp65 = icmp ne i16 %38, 1
  %or.cond163 = or i1 %cmp22.not, %cmp65
  %or.cond163.not = xor i1 %or.cond163, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp73 = icmp eq i16 %38, 0
  %or.cond164 = and i1 %cmp22.not, %cmp73
  %or.cond180 = select i1 %or.cond163.not, i1 true, i1 %or.cond164
  br i1 %or.cond180, label %if.then78, label %if.end62.cleanup117_crit_edge

if.end62.cleanup117_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup117

if.then78:                                        ; preds = %if.end62
  %39 = ptrtoint ptr %fm_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fm_list, align 4
  %call81 = call fastcc i32 @ice_remove_vsi_list_rule(ptr noundef %hw, i16 noundef zeroext %bf.lshr, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end106, label %do.body84

do.body84:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_rem_update_vsi_list.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_rem_update_vsi_list, %if.then96)) #13
          to label %cleanup117 [label %if.then96], !srcloc !111

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr99 = getelementptr i8, ptr %hw, i32 -2960
  %41 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr99, align 8
  %dev101 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %conv102 = zext i16 %bf.lshr to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_rem_update_vsi_list.__UNIQUE_ID_ddebug615, ptr noundef %dev101, ptr noundef nonnull @.str.11, i32 noundef %conv102, i32 noundef %call81) #13
  br label %cleanup117

if.end106:                                        ; preds = %if.then78
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %40) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end106.cleanup113.thread_crit_edge

if.end106.cleanup113.thread_crit_edge:            ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup113.thread

if.end.i.i:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %40, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %cleanup113.thread

cleanup113.thread:                                ; preds = %if.end.i.i, %if.end106.cleanup113.thread_crit_edge
  %49 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 256 to ptr), ptr %40, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %add.ptr109 = getelementptr i8, ptr %hw, i32 -2960
  %51 = ptrtoint ptr %add.ptr109 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr109, align 8
  %dev111 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev111, ptr noundef %40) #13
  %53 = ptrtoint ptr %fm_list to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %fm_list, align 4
  br label %cleanup117

cleanup117:                                       ; preds = %cleanup113.thread, %if.then96, %do.body84, %if.end62.cleanup117_crit_edge, %cleanup, %cleanup.thread, %if.end5.cleanup117_crit_edge, %if.end.cleanup117_crit_edge, %lor.lhs.false.cleanup117_crit_edge, %entry.cleanup117_crit_edge
  %retval.3 = phi i32 [ %call44, %cleanup ], [ -22, %lor.lhs.false.cleanup117_crit_edge ], [ -22, %entry.cleanup117_crit_edge ], [ -2, %if.end.cleanup117_crit_edge ], [ %call9, %if.end5.cleanup117_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ %call81, %if.then96 ], [ %call81, %do.body84 ], [ 0, %cleanup113.thread ], [ 0, %if.end62.cleanup117_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_remove_vsi_list_rule(ptr noundef %hw, i16 noundef zeroext %vsi_list_id, i32 noundef %lkup_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1024, ptr %call.i, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %vsi_list_id)
  %pdata = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %pdata, align 2
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 6, i32 noundef 3520) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.ice_aq_alloc_free_vsi_list.exit_crit_edge, label %if.end.i

if.end.ice_aq_alloc_free_vsi_list.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_aq_alloc_free_vsi_list.exit

if.end.i:                                         ; preds = %if.end
  %num_elems.i = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, ptr %call.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %num_elems.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %num_elems.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %lkup_type)
  %8 = icmp ult i32 %lkup_type, 10
  br i1 %8, label %switch.hole_check, label %if.end.i.ice_aq_alloc_free_vsi_list_exit.i_crit_edge

if.end.i.ice_aq_alloc_free_vsi_list_exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_aq_alloc_free_vsi_list_exit.i

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = trunc i32 %lkup_type to i16
  %switch.shifted = lshr i16 799, %switch.maskindex
  %9 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %switch.lobit.not = icmp eq i16 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.ice_aq_alloc_free_vsi_list_exit.i_crit_edge, label %switch.lookup

switch.hole_check.ice_aq_alloc_free_vsi_list_exit.i_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_aq_alloc_free_vsi_list_exit.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [10 x i16], ptr @switch.table.ice_remove_vsi_list_rule, i32 0, i32 %lkup_type
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %10)
  %switch.load = load i16, ptr %switch.gep, align 2
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %switch.load, ptr %call.i.i, align 2
  %elem.i = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, ptr %call.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %elem.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %3, ptr %elem.i, align 2
  %call3069.i = tail call i32 @ice_aq_alloc_free_res(ptr noundef %hw, i16 noundef zeroext 1, ptr noundef nonnull %call.i.i, i16 noundef zeroext 6, i32 noundef 521, ptr noundef null) #13
  br label %ice_aq_alloc_free_vsi_list_exit.i

ice_aq_alloc_free_vsi_list_exit.i:                ; preds = %switch.lookup, %switch.hole_check.ice_aq_alloc_free_vsi_list_exit.i_crit_edge, %if.end.i.ice_aq_alloc_free_vsi_list_exit.i_crit_edge
  %status.0.i = phi i32 [ -22, %if.end.i.ice_aq_alloc_free_vsi_list_exit.i_crit_edge ], [ %call3069.i, %switch.lookup ], [ -22, %switch.hole_check.ice_aq_alloc_free_vsi_list_exit.i_crit_edge ]
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %dev45.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev45.i, ptr noundef nonnull %call.i.i) #13
  br label %ice_aq_alloc_free_vsi_list.exit

ice_aq_alloc_free_vsi_list.exit:                  ; preds = %ice_aq_alloc_free_vsi_list_exit.i, %if.end.ice_aq_alloc_free_vsi_list.exit_crit_edge
  %retval.0.i = phi i32 [ %status.0.i, %ice_aq_alloc_free_vsi_list_exit.i ], [ -12, %if.end.ice_aq_alloc_free_vsi_list.exit_crit_edge ]
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev6, ptr noundef nonnull %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %ice_aq_alloc_free_vsi_list.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ice_aq_alloc_free_vsi_list.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_create_recipe_group(ptr nocapture noundef readonly %hw, ptr noundef %rm, ptr noundef %lkup_exts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %n_grp_count = getelementptr inbounds %struct.ice_sw_recipe, ptr %rm, i32 0, i32 8
  %0 = ptrtoint ptr %n_grp_count to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %n_grp_count, align 2
  %rg_list = getelementptr inbounds %struct.ice_sw_recipe, ptr %rm, i32 0, i32 20
  %n_val_words.i = getelementptr inbounds %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 1
  %1 = ptrtoint ptr %n_val_words.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %n_val_words.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp58.not.i = icmp eq i8 %2, 0
  br i1 %cmp58.not.i, label %entry.if.then_crit_edge, label %for.body.lr.ph.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %done.i = getelementptr inbounds %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 5
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %recp_count.0 = phi i8 [ 0, %for.body.lr.ph.i ], [ %recp_count.2, %for.inc.i.for.body.i_crit_edge ]
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %grp.060.i = phi ptr [ null, %for.body.lr.ph.i ], [ %grp.3.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %indvars.iv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %done.i, i32 %div3.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %indvars.iv.i, 31
  %5 = shl nuw i32 1, %and.i.i
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %tobool4.not.i = icmp eq ptr %grp.060.i, null
  br i1 %tobool4.not.i, label %if.then.i.if.then8.i_crit_edge, label %lor.lhs.false.i

if.then.i.if.then8.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %7 = ptrtoint ptr %grp.060.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %grp.060.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp6.i = icmp eq i8 %8, 4
  br i1 %cmp6.i, label %lor.lhs.false.i.if.then8.i_crit_edge, label %lor.lhs.false.i.if.end13.i_crit_edge

lor.lhs.false.i.if.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

lor.lhs.false.i.if.then8.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i

if.then8.i:                                       ; preds = %lor.lhs.false.i.if.then8.i_crit_edge, %if.then.i.if.then8.i_crit_edge
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 56, i32 noundef 3520) #13
  %tobool11.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool11.not.i, label %if.then8.i.if.end_crit_edge, label %if.end.i

if.then8.i.if.end_crit_edge:                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %if.then8.i
  %11 = ptrtoint ptr %rg_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rg_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %rg_list, ptr noundef %12) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rg_list, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %rg_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call.i.i, ptr %rg_list, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i.i, %if.end.i.cleanup.i_crit_edge
  %r_group.i = getelementptr inbounds %struct.ice_recp_grp_entry, ptr %call.i.i, i32 0, i32 5
  %inc.i = add i8 %recp_count.0, 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %cleanup.i, %lor.lhs.false.i.if.end13.i_crit_edge
  %recp_count.1 = phi i8 [ %inc.i, %cleanup.i ], [ %recp_count.0, %lor.lhs.false.i.if.end13.i_crit_edge ]
  %grp.2.i = phi ptr [ %r_group.i, %cleanup.i ], [ %grp.060.i, %lor.lhs.false.i.if.end13.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 4, i32 %indvars.iv.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 4
  %19 = ptrtoint ptr %grp.2.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %grp.2.i, align 2
  %idxprom15.i = zext i8 %20 to i32
  %arrayidx16.i = getelementptr %struct.ice_pref_recipe_group, ptr %grp.2.i, i32 0, i32 1, i32 %idxprom15.i
  %21 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %18, ptr %arrayidx16.i, align 1
  %off.i = getelementptr %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 4, i32 %indvars.iv.i, i32 1
  %22 = ptrtoint ptr %off.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %off.i, align 1
  %off25.i = getelementptr %struct.ice_pref_recipe_group, ptr %grp.2.i, i32 0, i32 1, i32 %idxprom15.i, i32 1
  %24 = ptrtoint ptr %off25.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %off25.i, align 1
  %arrayidx27.i = getelementptr %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 3, i32 %indvars.iv.i
  %25 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx27.i, align 2
  %arrayidx30.i = getelementptr %struct.ice_pref_recipe_group, ptr %grp.2.i, i32 0, i32 2, i32 %idxprom15.i
  %27 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %arrayidx30.i, align 2
  %inc32.i = add i8 %20, 1
  store i8 %inc32.i, ptr %grp.2.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i, %for.body.i.for.inc.i_crit_edge
  %recp_count.2 = phi i8 [ %recp_count.1, %if.end13.i ], [ %recp_count.0, %for.body.i.for.inc.i_crit_edge ]
  %grp.3.i = phi ptr [ %grp.2.i, %if.end13.i ], [ %grp.060.i, %for.body.i.for.inc.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %28 = ptrtoint ptr %n_val_words.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %n_val_words.i, align 2
  %30 = zext i8 %29 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %30
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.then_crit_edge

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.then:                                          ; preds = %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  %recp_count.3.ph = phi i8 [ 0, %entry.if.then_crit_edge ], [ %recp_count.2, %for.inc.i.if.then_crit_edge ]
  %31 = ptrtoint ptr %n_grp_count to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %n_grp_count, align 2
  %add = add i8 %32, %recp_count.3.ph
  store i8 %add, ptr %n_grp_count, align 2
  %33 = ptrtoint ptr %n_val_words.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %n_val_words.i, align 2
  %n_ext_words = getelementptr inbounds %struct.ice_sw_recipe, ptr %rm, i32 0, i32 3
  %35 = ptrtoint ptr %n_ext_words to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %n_ext_words, align 1
  %ext_words = getelementptr inbounds %struct.ice_sw_recipe, ptr %rm, i32 0, i32 4
  %fv_words = getelementptr inbounds %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 4
  %36 = call ptr @memcpy(ptr %ext_words, ptr %fv_words, i32 80)
  %word_masks = getelementptr inbounds %struct.ice_sw_recipe, ptr %rm, i32 0, i32 5
  %field_mask = getelementptr inbounds %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 3
  %37 = call ptr @memcpy(ptr %word_masks, ptr %field_mask, i32 40)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then8.i.if.end_crit_edge
  %retval.4.i20 = phi i32 [ 0, %if.then ], [ -12, %if.then8.i.if.end_crit_edge ]
  ret i32 %retval.4.i20
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_fill_fv_word_index(ptr nocapture noundef readonly %hw, ptr noundef %fv_list, ptr noundef readonly %rg_list) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fv_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fv_list, align 4
  %cmp.i.not = icmp eq ptr %1, %fv_list
  br i1 %cmp.i.not, label %entry.cleanup62_crit_edge, label %if.end

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup62

if.end:                                           ; preds = %entry
  %fv_ptr = getelementptr inbounds %struct.ice_sw_fv_list_entry, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fv_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fv_ptr, align 4
  %4 = ptrtoint ptr %rg_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %rg.093 = load ptr, ptr %rg_list, align 4
  %cmp.not94 = icmp eq ptr %rg.093, %rg_list
  br i1 %cmp.not94, label %if.end.cleanup62_crit_edge, label %for.cond5.preheader.lr.ph

if.end.cleanup62_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup62

for.cond5.preheader.lr.ph:                        ; preds = %if.end
  %fvw = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 0, i32 4, i32 2
  br label %for.cond5.preheader

for.cond.loopexit:                                ; preds = %if.then36.for.cond.loopexit_crit_edge, %for.cond5.preheader.for.cond.loopexit_crit_edge
  %5 = ptrtoint ptr %rg.095 to i32
  call void @__asan_load4_noabort(i32 %5)
  %rg.0 = load ptr, ptr %rg.095, align 4
  %cmp.not = icmp eq ptr %rg.0, %rg_list
  br i1 %cmp.not, label %for.cond.loopexit.cleanup62_crit_edge, label %for.cond.loopexit.for.cond5.preheader_crit_edge

for.cond.loopexit.for.cond5.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond5.preheader

for.cond.loopexit.cleanup62_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup62

for.cond5.preheader:                              ; preds = %for.cond.loopexit.for.cond5.preheader_crit_edge, %for.cond5.preheader.lr.ph
  %rg.095 = phi ptr [ %rg.093, %for.cond5.preheader.lr.ph ], [ %rg.0, %for.cond.loopexit.for.cond5.preheader_crit_edge ]
  %r_group = getelementptr inbounds %struct.ice_recp_grp_entry, ptr %rg.095, i32 0, i32 5
  %6 = ptrtoint ptr %r_group to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %r_group, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp790.not = icmp eq i8 %7, 0
  br i1 %cmp790.not, label %for.cond5.preheader.for.cond.loopexit_crit_edge, label %for.cond5.preheader.for.body9_crit_edge

for.cond5.preheader.for.body9_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body9

for.cond5.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.loopexit

for.body9:                                        ; preds = %if.then36.for.body9_crit_edge, %for.cond5.preheader.for.body9_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.then36.for.body9_crit_edge ], [ 0, %for.cond5.preheader.for.body9_crit_edge ]
  %arrayidx14 = getelementptr %struct.ice_recp_grp_entry, ptr %rg.095, i32 0, i32 5, i32 2, i32 %indvars.iv
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx14, align 2
  %10 = ptrtoint ptr %fvw to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %fvw, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp1988.not = icmp eq i16 %11, 0
  br i1 %cmp1988.not, label %for.body9.cleanup62_crit_edge, label %for.body21.lr.ph

for.body9.cleanup62_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup62

for.body21.lr.ph:                                 ; preds = %for.body9
  %arrayidx = getelementptr %struct.ice_recp_grp_entry, ptr %rg.095, i32 0, i32 5, i32 1, i32 %indvars.iv
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %off32 = getelementptr %struct.ice_recp_grp_entry, ptr %rg.095, i32 0, i32 5, i32 1, i32 %indvars.iv, i32 1
  br label %for.body21

for.body21:                                       ; preds = %for.inc.for.body21_crit_edge, %for.body21.lr.ph
  %14 = phi i16 [ 0, %for.body21.lr.ph ], [ %26, %for.inc.for.body21_crit_edge ]
  %j.089 = phi i8 [ 0, %for.body21.lr.ph ], [ %inc, %for.inc.for.body21_crit_edge ]
  %conv16 = zext i8 %j.089 to i32
  %arrayidx23 = getelementptr %struct.ice_fv_word, ptr %3, i32 %conv16
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %13)
  %cmp27 = icmp eq i8 %16, %13
  br i1 %cmp27, label %land.lhs.true, label %for.body21.for.inc_crit_edge

for.body21.for.inc_crit_edge:                     ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body21
  %off = getelementptr %struct.ice_fv_word, ptr %3, i32 %conv16, i32 1
  %17 = ptrtoint ptr %off to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %off, align 1
  %19 = ptrtoint ptr %off32 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %off32, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp34 = icmp eq i16 %18, %20
  br i1 %cmp34, label %if.then36, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then36:                                        ; preds = %land.lhs.true
  %arrayidx39 = getelementptr %struct.ice_recp_grp_entry, ptr %rg.095, i32 0, i32 3, i32 %indvars.iv
  %21 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %14, ptr %arrayidx39, align 2
  %arrayidx41 = getelementptr %struct.ice_recp_grp_entry, ptr %rg.095, i32 0, i32 4, i32 %indvars.iv
  %22 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %9, ptr %arrayidx41, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %23 = ptrtoint ptr %r_group to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %r_group, align 4
  %25 = zext i8 %24 to i32
  %cmp7 = icmp ult i32 %indvars.iv.next, %25
  br i1 %cmp7, label %if.then36.for.body9_crit_edge, label %if.then36.for.cond.loopexit_crit_edge

if.then36.for.cond.loopexit_crit_edge:            ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.loopexit

if.then36.for.body9_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body9

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body21.for.inc_crit_edge
  %inc = add i8 %j.089, 1
  %26 = zext i8 %inc to i16
  %cmp19 = icmp ugt i16 %11, %26
  br i1 %cmp19, label %for.inc.for.body21_crit_edge, label %for.inc.cleanup62_crit_edge

for.inc.cleanup62_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup62

for.inc.for.body21_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body21

cleanup62:                                        ; preds = %for.inc.cleanup62_crit_edge, %for.body9.cleanup62_crit_edge, %for.cond.loopexit.cleanup62_crit_edge, %if.end.cleanup62_crit_edge, %entry.cleanup62_crit_edge
  %retval.4 = phi i32 [ 0, %entry.cleanup62_crit_edge ], [ 0, %if.end.cleanup62_crit_edge ], [ -22, %for.inc.cleanup62_crit_edge ], [ -22, %for.body9.cleanup62_crit_edge ], [ 0, %for.cond.loopexit.cleanup62_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @ice_find_recp(ptr noundef %hw, ptr nocapture noundef readonly %lkup_exts, i32 noundef %tun_type) unnamed_addr #0 align 64 {
entry:
  %desc.i.i.i = alloca %struct.ice_aq_desc, align 4
  %r_bitmap.i.i = alloca [2 x i32], align 8
  %desc.i.i = alloca %struct.ice_aq_desc, align 4
  %result_bm.i = alloca [2 x i32], align 8
  %root_bufs.i = alloca %struct.ice_aqc_recipe_data_elem, align 4
  %prot.i = alloca i8, align 1
  %off.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recp_list, align 4
  %4 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i, i32 0, i32 6
  %return_index.i.i = getelementptr inbounds %struct.ice_aqc_add_get_recipe, ptr %4, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i.i, i32 0, i32 6
  %6 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i.i, i32 0, i32 6, i32 0, i32 2
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %content.i = getelementptr inbounds %struct.ice_aqc_recipe_data_elem, ptr %root_bufs.i, i32 0, i32 5
  %result_indx.i = getelementptr inbounds %struct.ice_aqc_recipe_data_elem, ptr %root_bufs.i, i32 0, i32 5, i32 3
  %act_ctrl_fwd_priority.i = getelementptr inbounds %struct.ice_aqc_recipe_data_elem, ptr %root_bufs.i, i32 0, i32 5, i32 6
  %recipe_bitmap.i = getelementptr inbounds %struct.ice_aqc_recipe_data_elem, ptr %root_bufs.i, i32 0, i32 3
  %n_val_words = getelementptr inbounds %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 1
  %fv_words29 = getelementptr inbounds %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 4
  %field_mask35 = getelementptr inbounds %struct.ice_prot_lkup_ext, ptr %lkup_exts, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc115.for.body_crit_edge, %entry
  %indvars.iv194 = phi i32 [ 0, %entry ], [ %indvars.iv.next195, %for.inc115.for.body_crit_edge ]
  %refresh_required.0176 = phi i8 [ 1, %entry ], [ %refresh_required.5, %for.inc115.for.body_crit_edge ]
  %recp_created = getelementptr %struct.ice_sw_recipe, ptr %3, i32 %indvars.iv194, i32 2
  %7 = ptrtoint ptr %recp_created to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %recp_created, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then, label %for.body.if.end6_crit_edge

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then:                                          ; preds = %for.body
  %9 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %switch_info, align 8
  %recp_list3 = getelementptr inbounds %struct.ice_switch_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %recp_list3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %recp_list3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result_bm.i) #13
  %13 = ptrtoint ptr %result_bm.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %result_bm.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 4096) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %ice_get_recp_frm_fw.exit.thread, label %ice_aq_get_recipe.exit.i

ice_get_recp_frm_fw.exit.thread:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result_bm.i) #13
  br label %for.inc115

ice_aq_get_recipe.exit.i:                         ; preds = %if.then
  %15 = trunc i32 %indvars.iv194 to i8
  %16 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %call7.i.i.i.i, align 8
  %17 = trunc i32 %indvars.iv194 to i16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #13
  %18 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i, i16 noundef zeroext 658) #13
  %19 = shl nuw nsw i16 %17, 8
  %20 = ptrtoint ptr %return_index.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %return_index.i.i, align 2
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %4, align 4
  %call.i.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i.i, ptr noundef nonnull %call7.i.i.i.i, i16 noundef zeroext 4096, ptr noundef null) #13
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %4, align 4
  %24 = call i16 @llvm.bswap.i16(i16 %23) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %ice_aq_get_recipe.exit.i.ice_get_recp_frm_fw.exit.thread161_crit_edge

ice_aq_get_recipe.exit.i.ice_get_recp_frm_fw.exit.thread161_crit_edge: ; preds = %ice_aq_get_recipe.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_get_recp_frm_fw.exit.thread161

if.end4.i:                                        ; preds = %ice_aq_get_recipe.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %refresh_required.0176)
  %tobool5.not.i = icmp eq i8 %refresh_required.0176, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end7.i_crit_edge, label %if.then6.i

if.end4.i.if.end7.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %r_bitmap.i.i) #13
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %if.then6.i
  %conv42.i.i = phi i32 [ 0, %if.then6.i ], [ %conv.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %i.041.i.i = phi i16 [ 0, %if.then6.i ], [ %inc.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i289.i = getelementptr [256 x [2 x i32]], ptr @profile_to_recipe, i32 0, i32 %conv42.i.i
  %25 = ptrtoint ptr %arrayidx.i289.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 0, ptr %arrayidx.i289.i, align 4
  %26 = ptrtoint ptr %r_bitmap.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %r_bitmap.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i) #13
  %27 = call ptr @memset(ptr %desc.i.i.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i.i, i16 noundef zeroext 659) #13
  %28 = call i16 @llvm.bswap.i16(i16 %i.041.i.i) #13
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %5, align 4
  %call.i.i.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i.i.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i290.i, label %ice_aq_get_recipe_to_profile.exit.i.i

ice_aq_get_recipe_to_profile.exit.i.i:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i) #13
  br label %cleanup.i.i

if.end.i290.i:                                    ; preds = %for.body.i.i
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %6, align 4
  %32 = ptrtoint ptr %r_bitmap.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %r_bitmap.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i) #13
  %33 = ptrtoint ptr %arrayidx.i289.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %31, ptr %arrayidx.i289.i, align 4
  %call11.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %r_bitmap.i.i, i32 noundef 64, i32 noundef 0) #13
  %conv1437.i.i = and i32 %call11.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv1437.i.i)
  %cmp1538.i.i = icmp ult i32 %conv1437.i.i, 64
  br i1 %cmp1538.i.i, label %if.end.i290.i.for.body17.i.i_crit_edge, label %if.end.i290.i.cleanup.i.i_crit_edge

if.end.i290.i.cleanup.i.i_crit_edge:              ; preds = %if.end.i290.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

if.end.i290.i.for.body17.i.i_crit_edge:           ; preds = %if.end.i290.i
  br label %for.body17.i.i

for.body17.i.i:                                   ; preds = %for.body17.i.i.for.body17.i.i_crit_edge, %if.end.i290.i.for.body17.i.i_crit_edge
  %conv1439.i.i = phi i32 [ %conv14.i.i, %for.body17.i.i.for.body17.i.i_crit_edge ], [ %conv1437.i.i, %if.end.i290.i.for.body17.i.i_crit_edge ]
  %arrayidx20.i.i = getelementptr [64 x [8 x i32]], ptr @recipe_to_profile, i32 0, i32 %conv1439.i.i
  call void @_set_bit(i32 noundef %conv42.i.i, ptr noundef %arrayidx20.i.i) #13
  %add24.i.i = add nuw nsw i32 %conv1439.i.i, 1
  %call25.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %r_bitmap.i.i, i32 noundef 64, i32 noundef %add24.i.i) #13
  %conv14.i.i = and i32 %call25.i.i, 65535
  %cmp15.i.i = icmp ult i32 %conv14.i.i, 64
  br i1 %cmp15.i.i, label %for.body17.i.i.for.body17.i.i_crit_edge, label %for.body17.i.i.cleanup.i.i_crit_edge

for.body17.i.i.cleanup.i.i_crit_edge:             ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

for.body17.i.i.for.body17.i.i_crit_edge:          ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17.i.i

cleanup.i.i:                                      ; preds = %for.body17.i.i.cleanup.i.i_crit_edge, %if.end.i290.i.cleanup.i.i_crit_edge, %ice_aq_get_recipe_to_profile.exit.i.i
  %inc.i.i = add i16 %i.041.i.i, 1
  %conv.i.i = zext i16 %inc.i.i to i32
  %34 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %switch_info, align 8
  %max_used_prof_index.i.i = getelementptr inbounds %struct.ice_switch_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %max_used_prof_index.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %max_used_prof_index.i.i, align 2
  %cmp.not.i291.i = icmp ult i16 %37, %inc.i.i
  br i1 %cmp.not.i291.i, label %ice_get_recp_to_prof_map.exit.i, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

ice_get_recp_to_prof_map.exit.i:                  ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %r_bitmap.i.i) #13
  br label %if.end7.i

if.end7.i:                                        ; preds = %ice_get_recp_to_prof_map.exit.i, %if.end4.i.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp305.not.i = icmp eq i16 %23, 0
  br i1 %cmp305.not.i, label %if.end7.i.for.end168.i_crit_edge, label %for.body.lr.ph.i

if.end7.i.for.end168.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end168.i

for.body.lr.ph.i:                                 ; preds = %if.end7.i
  %rg_list.i = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %indvars.iv194, i32 20
  %umax.i = call i16 @llvm.umax.i16(i16 %24, i16 1) #13
  %wide.trip.count.i = zext i16 %umax.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc166.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv308.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next309.i, %for.inc166.i.for.body.i_crit_edge ]
  %fv_word_idx.0307.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %fv_word_idx.2.i, %for.inc166.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %root_bufs.i) #13
  %arrayidx14.i = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call7.i.i.i.i, i32 %indvars.iv308.i
  %38 = call ptr @memcpy(ptr %root_bufs.i, ptr %arrayidx14.i, i32 64)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %prot.i) #13
  %39 = ptrtoint ptr %prot.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %prot.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %off.i) #13
  %40 = ptrtoint ptr %off.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %off.i, align 2
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %call.i292.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 56, i32 noundef 3520) #13
  %tobool17.not.i = icmp eq ptr %call.i292.i, null
  br i1 %tobool17.not.i, label %cleanup156.i, label %if.end19.i

if.end19.i:                                       ; preds = %for.body.i
  %43 = ptrtoint ptr %root_bufs.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %root_bufs.i, align 4
  %45 = ptrtoint ptr %content.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %content.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool23.i = icmp slt i8 %46, 0
  %47 = ptrtoint ptr %result_indx.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %result_indx.i, align 4
  %conv25.i = zext i8 %48 to i32
  %and26.i = and i32 %conv25.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end19.i.if.end34.i_crit_edge, label %if.then28.i

if.end19.i.if.end34.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.then28.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  %and32.i = and i32 %conv25.i, 127
  call void @_set_bit(i32 noundef %and32.i, ptr noundef nonnull %result_bm.i) #13
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then28.i, %if.end19.i.if.end34.i_crit_edge
  %idxprom35.i = zext i8 %44 to i32
  %arrayidx36.i = getelementptr [64 x [8 x i32]], ptr @recipe_to_profile, i32 0, i32 %idxprom35.i
  %call38.i = call i32 @_find_first_bit_be(ptr noundef %arrayidx36.i, i32 noundef 256) #13
  %conv39.i = trunc i32 %call38.i to i8
  %idxprom62.i = and i32 %call38.i, 255
  br label %for.body44.i

for.body44.i:                                     ; preds = %cleanup.i.for.body44.i_crit_edge, %if.end34.i
  %indvars.iv.i = phi i32 [ 0, %if.end34.i ], [ %add.i, %cleanup.i.for.body44.i_crit_edge ]
  %fv_word_idx.1304.i = phi i8 [ %fv_word_idx.0307.i, %if.end34.i ], [ %fv_word_idx.2.i, %cleanup.i.for.body44.i_crit_edge ]
  %add.i = add nuw nsw i32 %indvars.iv.i, 1
  %arrayidx48.i = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %root_bufs.i, i32 0, i32 5, i32 1, i32 %add.i
  %49 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %50 to i16
  %arrayidx51.i = getelementptr %struct.ice_recp_grp_entry, ptr %call.i292.i, i32 0, i32 3, i32 %indvars.iv.i
  %51 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv49.i, ptr %arrayidx51.i, align 2
  %arrayidx55.i = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %root_bufs.i, i32 0, i32 5, i32 2, i32 %add.i
  %52 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx55.i, align 2
  %54 = call i16 @llvm.bswap.i16(i16 %53) #13
  %arrayidx57.i = getelementptr %struct.ice_recp_grp_entry, ptr %call.i292.i, i32 0, i32 4, i32 %indvars.iv.i
  %55 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %arrayidx57.i, align 2
  %conv61.i = zext i8 %50 to i32
  %56 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %switch_info, align 8
  %arrayidx63.i = getelementptr %struct.ice_switch_info, ptr %57, i32 0, i32 4, i32 %idxprom62.i
  %div3.i.i = lshr i32 %conv61.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %arrayidx63.i, i32 %div3.i.i
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv61.i, 31
  %60 = shl nuw i32 1, %and.i.i
  %61 = and i32 %59, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool66.not.i = icmp eq i32 %61, 0
  br i1 %tobool66.not.i, label %lor.lhs.false.i, label %for.body44.i.cleanup.i_crit_edge

for.body44.i.cleanup.i_crit_edge:                 ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %for.body44.i
  %62 = and i16 %conv49.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool72.not.i = icmp ne i16 %62, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp78.i = icmp eq i8 %50, 0
  %or.cond.i = or i1 %cmp78.i, %tobool72.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.cleanup.i_crit_edge, label %if.end81.i

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end81.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %call85.i = call i32 @ice_find_prot_off(ptr noundef %hw, i32 noundef 0, i8 noundef zeroext %conv39.i, i16 noundef zeroext %conv49.i, ptr noundef nonnull %prot.i, ptr noundef nonnull %off.i) #13
  %63 = ptrtoint ptr %prot.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %prot.i, align 1
  %idxprom86.i = zext i8 %fv_word_idx.1304.i to i32
  %arrayidx87.i = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %indvars.iv194, i32 22, i32 4, i32 %idxprom86.i
  %65 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx87.i, align 4
  %66 = ptrtoint ptr %off.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %off.i, align 2
  %off91.i = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %indvars.iv194, i32 22, i32 4, i32 %idxprom86.i, i32 1
  %68 = ptrtoint ptr %off91.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 %67, ptr %off91.i, align 1
  %69 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx57.i, align 2
  %arrayidx96.i = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %indvars.iv194, i32 22, i32 3, i32 %idxprom86.i
  %71 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %arrayidx96.i, align 2
  %inc.i = add i8 %fv_word_idx.1304.i, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end81.i, %lor.lhs.false.i.cleanup.i_crit_edge, %for.body44.i.cleanup.i_crit_edge
  %fv_word_idx.2.i = phi i8 [ %inc.i, %if.end81.i ], [ %fv_word_idx.1304.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %fv_word_idx.1304.i, %for.body44.i.cleanup.i_crit_edge ]
  %exitcond.not.i = icmp eq i32 %add.i, 4
  br i1 %exitcond.not.i, label %for.end.i, label %cleanup.i.for.body44.i_crit_edge

cleanup.i.for.body44.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body44.i

for.end.i:                                        ; preds = %cleanup.i
  %72 = ptrtoint ptr %rg_list.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rg_list.i, align 4
  %call.i.i293.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i292.i, ptr noundef %rg_list.i, ptr noundef %73) #13
  br i1 %call.i.i293.i, label %if.end.i.i.i, label %for.end.i.list_add.exit.i_crit_edge

for.end.i.list_add.exit.i_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i292.i, ptr %prev1.i.i.i, align 4
  %75 = ptrtoint ptr %call.i292.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %73, ptr %call.i292.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i292.i, i32 0, i32 1
  %76 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %rg_list.i, ptr %prev3.i.i.i, align 4
  %77 = ptrtoint ptr %rg_list.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %call.i292.i, ptr %rg_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %for.end.i.list_add.exit.i_crit_edge
  %.lobit.i = lshr i8 %46, 7
  %arrayidx104.i = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %idxprom35.i
  %78 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %.lobit.i, ptr %arrayidx104.i, align 4
  %79 = ptrtoint ptr %act_ctrl_fwd_priority.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %act_ctrl_fwd_priority.i, align 1
  %priority.i = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %idxprom35.i, i32 19
  %81 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %priority.i, align 4
  %res_idxs.i = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %idxprom35.i, i32 18
  %82 = ptrtoint ptr %res_idxs.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 8)
  store i64 0, ptr %res_idxs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %tobool116.not.i = icmp sgt i8 %48, -1
  br i1 %tobool116.not.i, label %if.else.i, label %if.then117.i

if.then117.i:                                     ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %and121.i = and i8 %48, 127
  %chain_idx.i = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %idxprom35.i, i32 7
  %83 = ptrtoint ptr %chain_idx.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %and121.i, ptr %chain_idx.i, align 1
  %conv128.i = zext i8 %and121.i to i32
  call void @_set_bit(i32 noundef %conv128.i, ptr noundef %res_idxs.i) #13
  br label %if.end136.i

if.else.i:                                        ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %chain_idx135.i = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %idxprom35.i, i32 7
  %84 = ptrtoint ptr %chain_idx135.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -1, ptr %chain_idx135.i, align 1
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.else.i, %if.then117.i
  br i1 %tobool23.i, label %if.end139.i, label %if.end136.i.for.inc166.i_crit_edge

if.end136.i.for.inc166.i_crit_edge:               ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc166.i

if.end139.i:                                      ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #15
  %r_bitmap.i = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %idxprom35.i, i32 9
  %85 = ptrtoint ptr %recipe_bitmap.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 8)
  %86 = load i64, ptr %recipe_bitmap.i, align 4
  %87 = ptrtoint ptr %r_bitmap.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 8)
  store i64 %86, ptr %r_bitmap.i, align 4
  %88 = and i8 %46, 127
  %root_rid.i = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %idxprom35.i, i32 1
  %89 = ptrtoint ptr %root_rid.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %root_rid.i, align 1
  %90 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %80, ptr %priority.i, align 4
  br label %for.inc166.i

cleanup156.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %off.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prot.i) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %root_bufs.i) #13
  br label %ice_get_recp_frm_fw.exit.thread161

for.inc166.i:                                     ; preds = %if.end139.i, %if.end136.i.for.inc166.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %off.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prot.i) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %root_bufs.i) #13
  %indvars.iv.next309.i = add nuw nsw i32 %indvars.iv308.i, 1
  %exitcond310.not.i = icmp eq i32 %indvars.iv.next309.i, %wide.trip.count.i
  br i1 %exitcond310.not.i, label %for.inc166.i.for.end168.i_crit_edge, label %for.inc166.i.for.body.i_crit_edge

for.inc166.i.for.body.i_crit_edge:                ; preds = %for.inc166.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc166.i.for.end168.i_crit_edge:              ; preds = %for.inc166.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end168.i

for.end168.i:                                     ; preds = %for.inc166.i.for.end168.i_crit_edge, %if.end7.i.for.end168.i_crit_edge
  %fv_word_idx.0.lcssa.i = phi i8 [ 0, %if.end7.i.for.end168.i_crit_edge ], [ %fv_word_idx.2.i, %for.inc166.i.for.end168.i_crit_edge ]
  %n_val_words.i = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %indvars.iv194, i32 22, i32 1
  %91 = ptrtoint ptr %n_val_words.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %fv_word_idx.0.lcssa.i, ptr %n_val_words.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %24)
  %cmp170.i = icmp ugt i16 %24, 1
  %conv172.i = zext i1 %cmp170.i to i8
  %big_recp.i = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %indvars.iv194, i32 6
  %92 = ptrtoint ptr %big_recp.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv172.i, ptr %big_recp.i, align 4
  %conv175.i = trunc i16 %24 to i8
  %n_grp_count.i = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %indvars.iv194, i32 8
  %93 = ptrtoint ptr %n_grp_count.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv175.i, ptr %n_grp_count.i, align 2
  %94 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr.i, align 8
  %dev182.i = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  %conv175.mask.i = shl i16 %24, 6
  %96 = and i16 %conv175.mask.i, 16320
  %mul.i = zext i16 %96 to i32
  %call187.i = call ptr @devm_kmemdup(ptr noundef %dev182.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef %mul.i, i32 noundef 3264) #13
  %root_buf.i = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %indvars.iv194, i32 21
  %97 = ptrtoint ptr %root_buf.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call187.i, ptr %root_buf.i, align 4
  %tobool193.not.i = icmp eq ptr %call187.i, null
  br i1 %tobool193.not.i, label %for.end168.i.ice_get_recp_frm_fw.exit.thread161_crit_edge, label %ice_get_recp_frm_fw.exit

for.end168.i.ice_get_recp_frm_fw.exit.thread161_crit_edge: ; preds = %for.end168.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_get_recp_frm_fw.exit.thread161

ice_get_recp_frm_fw.exit.thread161:               ; preds = %for.end168.i.ice_get_recp_frm_fw.exit.thread161_crit_edge, %cleanup156.i, %ice_aq_get_recipe.exit.i.ice_get_recp_frm_fw.exit.thread161_crit_edge
  %refresh_required.2.ph = phi i8 [ %refresh_required.0176, %ice_aq_get_recipe.exit.i.ice_get_recp_frm_fw.exit.thread161_crit_edge ], [ 0, %cleanup156.i ], [ 0, %for.end168.i.ice_get_recp_frm_fw.exit.thread161_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result_bm.i) #13
  br label %for.inc115

ice_get_recp_frm_fw.exit:                         ; preds = %for.end168.i
  call void @__sanitizer_cov_trace_pc() #15
  %res_idxs198.i = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %indvars.iv194, i32 18
  %98 = ptrtoint ptr %result_bm.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %result_bm.i, align 8
  %100 = ptrtoint ptr %res_idxs198.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 8)
  store i64 %99, ptr %res_idxs198.i, align 4
  %recp_created.i = getelementptr %struct.ice_sw_recipe, ptr %12, i32 %indvars.iv194, i32 2
  %101 = ptrtoint ptr %recp_created.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %recp_created.i, align 2
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result_bm.i) #13
  br label %if.end6

if.end6:                                          ; preds = %ice_get_recp_frm_fw.exit, %for.body.if.end6_crit_edge
  %refresh_required.4 = phi i8 [ 0, %ice_get_recp_frm_fw.exit ], [ %refresh_required.0176, %for.body.if.end6_crit_edge ]
  %root_buf = getelementptr %struct.ice_sw_recipe, ptr %3, i32 %indvars.iv194, i32 21
  %102 = ptrtoint ptr %root_buf to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %root_buf, align 4
  %tobool9.not = icmp eq ptr %103, null
  br i1 %tobool9.not, label %if.end6.if.end16_crit_edge, label %land.lhs.true

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end6
  %act_ctrl = getelementptr inbounds %struct.ice_aqc_recipe_data_elem, ptr %103, i32 0, i32 5, i32 7
  %104 = ptrtoint ptr %act_ctrl to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %act_ctrl, align 2
  %106 = and i8 %105, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool14.not = icmp eq i8 %106, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true.for.inc115_crit_edge

land.lhs.true.for.inc115_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc115

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %107 = ptrtoint ptr %n_val_words to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %n_val_words, align 2
  %n_val_words21 = getelementptr %struct.ice_sw_recipe, ptr %3, i32 %indvars.iv194, i32 22, i32 1
  %109 = ptrtoint ptr %n_val_words21 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %n_val_words21, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %108, i8 %110)
  %cmp23 = icmp eq i8 %108, %110
  br i1 %cmp23, label %if.then25, label %if.end16.for.inc115_crit_edge

if.end16.for.inc115_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc115

if.then25:                                        ; preds = %if.end16
  %fv_words = getelementptr %struct.ice_sw_recipe, ptr %3, i32 %indvars.iv194, i32 22, i32 4
  %field_mask = getelementptr %struct.ice_sw_recipe, ptr %3, i32 %indvars.iv194, i32 22, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %cmp41172.not = icmp eq i8 %108, 0
  br i1 %cmp41172.not, label %if.then25.cleanup_crit_edge, label %for.cond44.preheader.lr.ph

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond44.preheader.lr.ph:                       ; preds = %if.then25
  %111 = zext i8 %108 to i32
  br label %for.body53.lr.ph

for.body53.lr.ph:                                 ; preds = %for.inc94.for.body53.lr.ph_crit_edge, %for.cond44.preheader.lr.ph
  %indvars.iv190 = phi i32 [ 0, %for.cond44.preheader.lr.ph ], [ %indvars.iv.next191, %for.inc94.for.body53.lr.ph_crit_edge ]
  %cmp41175 = phi i1 [ true, %for.cond44.preheader.lr.ph ], [ %cmp41, %for.inc94.for.body53.lr.ph_crit_edge ]
  %off59 = getelementptr %struct.ice_fv_word, ptr %fv_words29, i32 %indvars.iv190, i32 1
  %112 = ptrtoint ptr %off59 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %113 = load i16, ptr %off59, align 1
  %arrayidx58 = getelementptr %struct.ice_fv_word, ptr %fv_words29, i32 %indvars.iv190
  %arrayidx78 = getelementptr i16, ptr %field_mask35, i32 %indvars.iv190
  br label %for.body53

for.body53:                                       ; preds = %for.inc.for.body53_crit_edge, %for.body53.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body53.lr.ph ], [ %indvars.iv.next, %for.inc.for.body53_crit_edge ]
  %off = getelementptr %struct.ice_fv_word, ptr %fv_words, i32 %indvars.iv, i32 1
  %114 = ptrtoint ptr %off to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %off, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %115, i16 %113)
  %cmp61 = icmp eq i16 %115, %113
  br i1 %cmp61, label %land.lhs.true63, label %for.body53.for.inc_crit_edge

for.body53.for.inc_crit_edge:                     ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true63:                                  ; preds = %for.body53
  %arrayidx55 = getelementptr %struct.ice_fv_word, ptr %fv_words, i32 %indvars.iv
  %116 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx55, align 1
  %118 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx58, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %117, i8 %119)
  %cmp71 = icmp eq i8 %117, %119
  br i1 %cmp71, label %land.lhs.true73, label %land.lhs.true63.for.inc_crit_edge

land.lhs.true63.for.inc_crit_edge:                ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true73:                                  ; preds = %land.lhs.true63
  %arrayidx75 = getelementptr i16, ptr %field_mask, i32 %indvars.iv
  %120 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %arrayidx75, align 2
  %122 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %arrayidx78, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %121, i16 %123)
  %cmp80 = icmp eq i16 %121, %123
  br i1 %cmp80, label %for.inc94, label %land.lhs.true73.for.inc_crit_edge

land.lhs.true73.for.inc_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true73.for.inc_crit_edge, %land.lhs.true63.for.inc_crit_edge, %for.body53.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %111
  br i1 %exitcond.not, label %for.end96, label %for.inc.for.body53_crit_edge

for.inc.for.body53_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body53

for.inc94:                                        ; preds = %land.lhs.true73
  %indvars.iv.next191 = add nuw nsw i32 %indvars.iv190, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.next191, i32 %111)
  %cmp41 = icmp ult i32 %indvars.iv.next191, %111
  %exitcond193.not = icmp eq i32 %indvars.iv.next191, %111
  br i1 %exitcond193.not, label %for.inc94.cleanup_crit_edge, label %for.inc94.for.body53.lr.ph_crit_edge

for.inc94.for.body53.lr.ph_crit_edge:             ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body53.lr.ph

for.inc94.cleanup_crit_edge:                      ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end96:                                        ; preds = %for.inc
  br i1 %cmp41175, label %for.end96.for.inc115_crit_edge, label %for.end96.cleanup_crit_edge

for.end96.cleanup_crit_edge:                      ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end96.for.inc115_crit_edge:                   ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc115

cleanup:                                          ; preds = %for.end96.cleanup_crit_edge, %for.inc94.cleanup_crit_edge, %if.then25.cleanup_crit_edge
  %tun_type102 = getelementptr %struct.ice_sw_recipe, ptr %3, i32 %indvars.iv194, i32 10
  %124 = ptrtoint ptr %tun_type102 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tun_type102, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %tun_type)
  %cmp103 = icmp eq i32 %125, %tun_type
  br i1 %cmp103, label %cleanup118.split.loop.exit198, label %cleanup.for.inc115_crit_edge

cleanup.for.inc115_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc115

for.inc115:                                       ; preds = %cleanup.for.inc115_crit_edge, %for.end96.for.inc115_crit_edge, %if.end16.for.inc115_crit_edge, %land.lhs.true.for.inc115_crit_edge, %ice_get_recp_frm_fw.exit.thread161, %ice_get_recp_frm_fw.exit.thread
  %refresh_required.5 = phi i8 [ %refresh_required.4, %cleanup.for.inc115_crit_edge ], [ %refresh_required.4, %if.end16.for.inc115_crit_edge ], [ %refresh_required.4, %land.lhs.true.for.inc115_crit_edge ], [ %refresh_required.0176, %ice_get_recp_frm_fw.exit.thread ], [ %refresh_required.2.ph, %ice_get_recp_frm_fw.exit.thread161 ], [ %refresh_required.4, %for.end96.for.inc115_crit_edge ]
  %indvars.iv.next195 = add nuw nsw i32 %indvars.iv194, 1
  %exitcond196.not = icmp eq i32 %indvars.iv.next195, 64
  br i1 %exitcond196.not, label %for.inc115.cleanup118_crit_edge, label %for.inc115.for.body_crit_edge

for.inc115.for.body_crit_edge:                    ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc115.cleanup118_crit_edge:                  ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup118

cleanup118.split.loop.exit198:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  %126 = trunc i32 %indvars.iv194 to i16
  br label %cleanup118

cleanup118:                                       ; preds = %cleanup118.split.loop.exit198, %for.inc115.cleanup118_crit_edge
  %retval.3 = phi i16 [ %126, %cleanup118.split.loop.exit198 ], [ 64, %for.inc115.cleanup118_crit_edge ]
  ret i16 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_add_sw_recipe(ptr noundef %hw, ptr noundef %rm, ptr noundef %profiles) unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  %possible_idx.i = alloca [2 x i32], align 4
  %recipes.i = alloca [2 x i32], align 8
  %used_idx.i = alloca [2 x i32], align 8
  %result_idx_bm = alloca [2 x i32], align 8
  %rid227 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result_idx_bm) #13
  %0 = ptrtoint ptr %result_idx_bm to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %result_idx_bm, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %possible_idx.i) #13
  %1 = ptrtoint ptr %possible_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %possible_idx.i, align 4, !annotation !113
  %2 = getelementptr inbounds [2 x i32], ptr %possible_idx.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %recipes.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %used_idx.i) #13
  %4 = ptrtoint ptr %recipes.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %recipes.i, align 8
  %5 = ptrtoint ptr %used_idx.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %used_idx.i, align 8
  call void @__bitmap_set(ptr noundef nonnull %possible_idx.i, i32 noundef 0, i32 noundef 48) #13
  %call.i = call i32 @_find_next_bit_be(ptr noundef %profiles, i32 noundef 256, i32 noundef 0) #13
  %conv351.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %conv351.i)
  %cmp52.i = icmp ult i32 %conv351.i, 256
  br i1 %cmp52.i, label %for.body.lr.ph.i, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %switch_info.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv353.i = phi i32 [ %conv351.i, %for.body.lr.ph.i ], [ %conv3.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [256 x [2 x i32]], ptr @profile_to_recipe, i32 0, i32 %conv353.i
  call void @__bitmap_or(ptr noundef nonnull %recipes.i, ptr noundef nonnull %recipes.i, ptr noundef %arrayidx.i, i32 noundef 64) #13
  %6 = ptrtoint ptr %switch_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %switch_info.i, align 8
  %arrayidx11.i = getelementptr %struct.ice_switch_info, ptr %7, i32 0, i32 4, i32 %conv353.i
  %call.i.i = call i32 @__bitmap_and(ptr noundef nonnull %possible_idx.i, ptr noundef nonnull %possible_idx.i, ptr noundef %arrayidx11.i, i32 noundef 48) #13
  %add.i = add nuw nsw i32 %conv353.i, 1
  %call15.i = call i32 @_find_next_bit_be(ptr noundef %profiles, i32 noundef 256, i32 noundef %add.i) #13
  %conv3.i = and i32 %call15.i, 65535
  %cmp.i = icmp ult i32 %conv3.i, 256
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %call18.i = call i32 @_find_next_bit_be(ptr noundef nonnull %recipes.i, i32 noundef 64, i32 noundef 0) #13
  %conv2154.i = and i32 %call18.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv2154.i)
  %cmp2255.i = icmp ult i32 %conv2154.i, 64
  br i1 %cmp2255.i, label %for.body24.lr.ph.i, label %for.end.i.ice_find_free_recp_res_idx.exit_crit_edge

for.end.i.ice_find_free_recp_res_idx.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_find_free_recp_res_idx.exit

for.body24.lr.ph.i:                               ; preds = %for.end.i
  %switch_info27.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.body24.i.for.body24.i_crit_edge, %for.body24.lr.ph.i
  %conv2156.i = phi i32 [ %conv2154.i, %for.body24.lr.ph.i ], [ %conv21.i, %for.body24.i.for.body24.i_crit_edge ]
  %8 = ptrtoint ptr %switch_info27.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %switch_info27.i, align 8
  %recp_list.i = getelementptr inbounds %struct.ice_switch_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %recp_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %recp_list.i, align 4
  %res_idxs.i = getelementptr %struct.ice_sw_recipe, ptr %11, i32 %conv2156.i, i32 18
  call void @__bitmap_or(ptr noundef nonnull %used_idx.i, ptr noundef nonnull %used_idx.i, ptr noundef %res_idxs.i, i32 noundef 48) #13
  %add34.i = add nuw nsw i32 %conv2156.i, 1
  %call35.i = call i32 @_find_next_bit_be(ptr noundef nonnull %recipes.i, i32 noundef 64, i32 noundef %add34.i) #13
  %conv21.i = and i32 %call35.i, 65535
  %cmp22.i = icmp ult i32 %conv21.i, 64
  br i1 %cmp22.i, label %for.body24.i.for.body24.i_crit_edge, label %for.body24.i.ice_find_free_recp_res_idx.exit_crit_edge

for.body24.i.ice_find_free_recp_res_idx.exit_crit_edge: ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_find_free_recp_res_idx.exit

for.body24.i.for.body24.i_crit_edge:              ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24.i

ice_find_free_recp_res_idx.exit:                  ; preds = %for.body24.i.ice_find_free_recp_res_idx.exit_crit_edge, %for.end.i.ice_find_free_recp_res_idx.exit_crit_edge
  call void @__bitmap_xor(ptr noundef nonnull %result_idx_bm, ptr noundef nonnull %used_idx.i, ptr noundef nonnull %possible_idx.i, i32 noundef 48) #13
  %call4.i.i = call i32 @__bitmap_weight(ptr noundef nonnull %result_idx_bm, i32 noundef 48) #13
  %conv41.i = trunc i32 %call4.i.i to i16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %used_idx.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %recipes.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %possible_idx.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_add_sw_recipe.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_add_sw_recipe, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !111

if.then:                                          ; preds = %ice_find_free_recp_res_idx.exit
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %conv = and i32 %call4.i.i, 65535
  %n_grp_count = getelementptr inbounds %struct.ice_sw_recipe, ptr %rm, i32 0, i32 8
  %14 = ptrtoint ptr %n_grp_count to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %n_grp_count, align 2
  %conv8 = zext i8 %15 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_add_sw_recipe.__UNIQUE_ID_ddebug621, ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %conv, i32 noundef %conv8) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %ice_find_free_recp_res_idx.exit
  %n_grp_count9 = getelementptr inbounds %struct.ice_sw_recipe, ptr %rm, i32 0, i32 8
  %16 = ptrtoint ptr %n_grp_count9 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %n_grp_count9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp = icmp ugt i8 %17, 1
  br i1 %cmp, label %if.then12, label %do.end.if.end27_crit_edge

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then12:                                        ; preds = %do.end
  %18 = zext i8 %17 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv41.i, i16 %18)
  %cmp16 = icmp ult i16 %conv41.i, %18
  br i1 %cmp16, label %if.then12.cleanup485_crit_edge, label %if.end21

if.then12.cleanup485_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup485

if.end21:                                         ; preds = %if.then12
  %inc = add i8 %17, 1
  %19 = ptrtoint ptr %n_grp_count9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %inc, ptr %n_grp_count9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc)
  %cmp24 = icmp ugt i8 %inc, 5
  br i1 %cmp24, label %if.end21.cleanup485_crit_edge, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.end21.cleanup485_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup485

if.end27:                                         ; preds = %if.end21.if.end27_crit_edge, %do.end.if.end27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 4096) #18
  %tobool29.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool29.not, label %if.end27.cleanup485_crit_edge, label %if.end31

if.end27.cleanup485_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup485

if.end31:                                         ; preds = %if.end27
  %add.ptr34 = getelementptr i8, ptr %hw, i32 -2960
  %21 = ptrtoint ptr %n_grp_count9 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %n_grp_count9, align 2
  %conv38 = zext i8 %22 to i32
  %23 = shl nuw nsw i32 %conv38, 6
  %24 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr34, align 8
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev36, i32 noundef %23, i32 noundef 3520) #13
  %tobool40.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool40.not, label %if.end31.err_mem_crit_edge, label %ice_aq_get_recipe.exit

if.end31.err_mem_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mem

ice_aq_get_recipe.exit:                           ; preds = %if.end31
  %r_bitmap = getelementptr inbounds %struct.ice_sw_recipe, ptr %rm, i32 0, i32 9
  %26 = ptrtoint ptr %r_bitmap to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 0, ptr %r_bitmap, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #13
  %27 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %28 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 658) #13
  %return_index.i = getelementptr inbounds %struct.ice_aqc_add_get_recipe, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %return_index.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 256, ptr %return_index.i, align 2
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %28, align 4
  %call.i691 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 4096, ptr noundef null) #13
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %28, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i691)
  %tobool45.not = icmp eq i32 %call.i691, 0
  br i1 %tobool45.not, label %lor.lhs.false, label %ice_aq_get_recipe.exit.err_mem_crit_edge

ice_aq_get_recipe.exit.err_mem_crit_edge:         ; preds = %ice_aq_get_recipe.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mem

lor.lhs.false:                                    ; preds = %ice_aq_get_recipe.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp47 = icmp eq i16 %32, 0
  br i1 %cmp47, label %lor.lhs.false.err_mem_crit_edge, label %if.end50

lor.lhs.false.err_mem_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mem

if.end50:                                         ; preds = %lor.lhs.false
  %call52 = call i32 @_find_first_bit_be(ptr noundef nonnull %result_idx_bm, i32 noundef 48) #13
  %conv53 = trunc i32 %call52 to i8
  %rg_list = getelementptr inbounds %struct.ice_sw_recipe, ptr %rm, i32 0, i32 20
  %result_indx = getelementptr inbounds %struct.ice_aqc_recipe_data_elem, ptr %call7.i.i.i, i32 0, i32 5, i32 3
  %priority = getelementptr inbounds %struct.ice_sw_recipe, ptr %rm, i32 0, i32 19
  %uglygep = getelementptr i8, ptr %call5.i.i, i32 18
  %uglygep771 = getelementptr i8, ptr %call5.i.i, i32 24
  br label %for.cond

for.cond:                                         ; preds = %cleanup.for.cond_crit_edge, %if.end50
  %recps.0 = phi i8 [ 0, %if.end50 ], [ %recps.1, %cleanup.for.cond_crit_edge ]
  %chain_idx.0 = phi i8 [ %conv53, %if.end50 ], [ %chain_idx.2, %cleanup.for.cond_crit_edge ]
  %entry1.0.in = phi ptr [ %rg_list, %if.end50 ], [ %entry1.0, %cleanup.for.cond_crit_edge ]
  %33 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %33)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp58.not = icmp eq ptr %entry1.0, %rg_list
  br i1 %cmp58.not, label %for.end198, label %for.body

for.body:                                         ; preds = %for.cond
  %rid = getelementptr inbounds %struct.ice_recp_grp_entry, ptr %entry1.0, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i693 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 6) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i693, null
  br i1 %tobool.not.i, label %for.body.err_mem_crit_edge, label %if.end.i694

for.body.err_mem_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mem

if.end.i694:                                      ; preds = %for.body
  %num_elems.i = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, ptr %call7.i.i.i693, i32 0, i32 1
  %35 = ptrtoint ptr %num_elems.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 256, ptr %num_elems.i, align 2
  %36 = ptrtoint ptr %call7.i.i.i693 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -31488, ptr %call7.i.i.i693, align 8
  %call3.i = call i32 @ice_aq_alloc_free_res(ptr noundef %hw, i16 noundef zeroext 1, ptr noundef nonnull %call7.i.i.i693, i16 noundef zeroext 6, i32 noundef 520, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end65, label %ice_alloc_recipe.exit

ice_alloc_recipe.exit:                            ; preds = %if.end.i694
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i693) #13
  br label %err_mem

if.end65:                                         ; preds = %if.end.i694
  %elem.i = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, ptr %call7.i.i.i693, i32 0, i32 2
  %37 = ptrtoint ptr %elem.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %elem.i, align 4
  %39 = call i16 @llvm.bswap.i16(i16 %38) #13
  %40 = ptrtoint ptr %rid to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %rid, align 2
  call void @kfree(ptr noundef nonnull %call7.i.i.i693) #13
  %41 = ptrtoint ptr %result_indx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %result_indx, align 8
  %idxprom = zext i8 %recps.0 to i32
  %arrayidx66 = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom
  %42 = call ptr @memcpy(ptr %arrayidx66, ptr %call7.i.i.i, i32 64)
  %43 = ptrtoint ptr %rid to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %rid, align 4
  %conv69 = trunc i16 %44 to i8
  %45 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv69, ptr %arrayidx66, align 4
  %content74 = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom, i32 5
  %mask = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom, i32 5, i32 2
  %46 = call ptr @memset(ptr %content74, i32 0, i32 6)
  %47 = ptrtoint ptr %mask to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -256, ptr %mask, align 2
  %48 = shl nuw nsw i32 %idxprom, 6
  %uglygep770 = getelementptr i8, ptr %uglygep, i32 %48
  %49 = ptrtoint ptr %uglygep770 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 -2139062144, ptr %uglygep770, align 1
  %uglygep772 = getelementptr i8, ptr %uglygep771, i32 %48
  %50 = ptrtoint ptr %uglygep772 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 0, ptr %uglygep772, align 2
  %r_group = getelementptr inbounds %struct.ice_recp_grp_entry, ptr %entry1.0, i32 0, i32 5
  %51 = ptrtoint ptr %r_group to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %r_group, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp109745.not = icmp eq i8 %52, 0
  br i1 %cmp109745.not, label %if.end65.for.end132_crit_edge, label %if.end65.for.body111_crit_edge

if.end65.for.body111_crit_edge:                   ; preds = %if.end65
  br label %for.body111

if.end65.for.end132_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end132

for.body111:                                      ; preds = %for.body111.for.body111_crit_edge, %if.end65.for.body111_crit_edge
  %indvars.iv = phi i32 [ %add, %for.body111.for.body111_crit_edge ], [ 0, %if.end65.for.body111_crit_edge ]
  %arrayidx113 = getelementptr %struct.ice_recp_grp_entry, ptr %entry1.0, i32 0, i32 3, i32 %indvars.iv
  %53 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx113, align 2
  %conv114 = trunc i16 %54 to i8
  %add = add nuw nsw i32 %indvars.iv, 1
  %arrayidx120 = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom, i32 5, i32 1, i32 %add
  %55 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv114, ptr %arrayidx120, align 1
  %arrayidx122 = getelementptr %struct.ice_recp_grp_entry, ptr %entry1.0, i32 0, i32 4, i32 %indvars.iv
  %56 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx122, align 2
  %58 = call i16 @llvm.bswap.i16(i16 %57)
  %arrayidx129 = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom, i32 5, i32 2, i32 %add
  %59 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %arrayidx129, align 2
  %60 = ptrtoint ptr %r_group to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %r_group, align 4
  %62 = zext i8 %61 to i32
  %cmp109 = icmp ult i32 %add, %62
  br i1 %cmp109, label %for.body111.for.body111_crit_edge, label %for.body111.for.end132_crit_edge

for.body111.for.end132_crit_edge:                 ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end132

for.body111.for.body111_crit_edge:                ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body111

for.end132:                                       ; preds = %for.body111.for.end132_crit_edge, %if.end65.for.end132_crit_edge
  %63 = ptrtoint ptr %n_grp_count9 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %n_grp_count9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %cmp135 = icmp ugt i8 %64, 1
  br i1 %cmp135, label %if.then137, label %for.end132.if.end176_crit_edge

for.end132.if.end176_crit_edge:                   ; preds = %for.end132
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end176

if.then137:                                       ; preds = %for.end132
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %chain_idx.0)
  %cmp139 = icmp ugt i8 %chain_idx.0, 47
  br i1 %cmp139, label %do.body142, label %if.end163

do.body142:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_add_sw_recipe.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_add_sw_recipe, %if.then154)) #13
          to label %cleanup [label %if.then154], !srcloc !111

if.then154:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr34, align 8
  %dev159 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_add_sw_recipe.__UNIQUE_ID_ddebug622, ptr noundef %dev159, ptr noundef nonnull @.str.24) #13
  br label %err_mem

if.end163:                                        ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #15
  %conv138 = zext i8 %chain_idx.0 to i32
  %chain_idx164 = getelementptr inbounds %struct.ice_recp_grp_entry, ptr %entry1.0, i32 0, i32 2
  %67 = ptrtoint ptr %chain_idx164 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %chain_idx.0, ptr %chain_idx164, align 2
  %or = or i8 %chain_idx.0, -128
  %result_indx170 = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom, i32 5, i32 3
  %68 = ptrtoint ptr %result_indx170 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %or, ptr %result_indx170, align 4
  call void @_clear_bit(i32 noundef %conv138, ptr noundef nonnull %result_idx_bm) #13
  %call174 = call i32 @_find_first_bit_be(ptr noundef nonnull %result_idx_bm, i32 noundef 48) #13
  %conv175 = trunc i32 %call174 to i8
  br label %if.end176

if.end176:                                        ; preds = %if.end163, %for.end132.if.end176_crit_edge
  %chain_idx.1 = phi i8 [ %conv175, %if.end163 ], [ %chain_idx.0, %for.end132.if.end176_crit_edge ]
  %recipe_bitmap = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom, i32 3
  %69 = ptrtoint ptr %recipe_bitmap to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 0, ptr %recipe_bitmap, align 4
  %70 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx66, align 4
  %conv183 = zext i8 %71 to i32
  call void @_set_bit(i32 noundef %conv183, ptr noundef %recipe_bitmap) #13
  %72 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %priority, align 4
  %act_ctrl_fwd_priority = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom, i32 5, i32 6
  %74 = ptrtoint ptr %act_ctrl_fwd_priority to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %act_ctrl_fwd_priority, align 1
  %inc191 = add i8 %recps.0, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end176, %do.body142
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end176 ], [ 5, %do.body142 ]
  %status.0 = phi i32 [ 0, %if.end176 ], [ -28, %do.body142 ]
  %recps.1 = phi i8 [ %inc191, %if.end176 ], [ %recps.0, %do.body142 ]
  %chain_idx.2 = phi i8 [ %chain_idx.1, %if.end176 ], [ %chain_idx.0, %do.body142 ]
  %75 = zext i32 %cleanup.dest.slot.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %cleanup.dest.slot.0, label %cleanup.cleanup485_crit_edge [
    i32 0, label %cleanup.for.cond_crit_edge
    i32 5, label %cleanup.err_mem_crit_edge
  ]

cleanup.err_mem_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mem

cleanup.for.cond_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

cleanup.cleanup485_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup485

for.end198:                                       ; preds = %for.cond
  %76 = ptrtoint ptr %n_grp_count9 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %n_grp_count9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %77)
  %cmp201 = icmp eq i8 %77, 1
  br i1 %cmp201, label %if.then203, label %if.else

if.then203:                                       ; preds = %for.end198
  call void @__sanitizer_cov_trace_pc() #15
  %78 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %call5.i.i, align 4
  %root_rid = getelementptr inbounds %struct.ice_sw_recipe, ptr %rm, i32 0, i32 1
  %80 = ptrtoint ptr %root_rid to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %root_rid, align 1
  %conv208 = zext i8 %79 to i32
  call void @_set_bit(i32 noundef %conv208, ptr noundef %r_bitmap) #13
  %81 = ptrtoint ptr %root_rid to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %root_rid, align 1
  %83 = or i8 %82, -128
  %content216 = getelementptr inbounds %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 0, i32 5
  %84 = ptrtoint ptr %content216 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %content216, align 4
  %recipe_bitmap219 = getelementptr inbounds %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 0, i32 3
  %85 = ptrtoint ptr %r_bitmap to i32
  call void @__asan_loadN_noabort(i32 %85, i32 8)
  %86 = load i64, ptr %r_bitmap, align 4
  %87 = ptrtoint ptr %recipe_bitmap219 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 8)
  store i64 %86, ptr %recipe_bitmap219, align 4
  %88 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %priority, align 4
  %act_ctrl_fwd_priority226 = getelementptr inbounds %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 0, i32 5, i32 6
  %90 = ptrtoint ptr %act_ctrl_fwd_priority226 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %act_ctrl_fwd_priority226, align 1
  br label %if.end361

if.else:                                          ; preds = %for.end198
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rid227) #13
  %91 = ptrtoint ptr %rid227 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 -1, ptr %rid227, align 2, !annotation !113
  %call229 = call fastcc i32 @ice_alloc_recipe(ptr noundef %hw, ptr noundef nonnull %rid227)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.end232, label %if.else.cleanup356.thread_crit_edge

if.else.cleanup356.thread_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup356.thread

if.end232:                                        ; preds = %if.else
  %92 = ptrtoint ptr %rid227 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %rid227, align 2
  %conv233 = trunc i16 %93 to i8
  %idxprom234 = zext i8 %recps.0 to i32
  %arrayidx235 = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom234
  %94 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv233, ptr %arrayidx235, align 4
  %content240 = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom234, i32 5
  %conv248 = or i8 %conv233, -128
  %95 = ptrtoint ptr %content240 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv248, ptr %content240, align 4
  %96 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr34, align 8
  %dev253 = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  %call.i696 = call noalias ptr @devm_kmalloc(ptr noundef %dev253, i32 noundef 56, i32 noundef 3520) #13
  %tobool255.not = icmp eq ptr %call.i696, null
  br i1 %tobool255.not, label %if.end232.cleanup356.thread_crit_edge, label %if.end257

if.end232.cleanup356.thread_crit_edge:            ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup356.thread

if.end257:                                        ; preds = %if.end232
  %rid258 = getelementptr inbounds %struct.ice_recp_grp_entry, ptr %call.i696, i32 0, i32 1
  %98 = ptrtoint ptr %rid258 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %93, ptr %rid258, align 4
  %lkup_indx262 = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom234, i32 5, i32 1
  %mask271 = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom234, i32 5, i32 2
  %99 = call ptr @memset(ptr %lkup_indx262, i32 0, i32 5)
  %100 = ptrtoint ptr %mask271 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 -256, ptr %mask271, align 2
  %101 = shl nuw nsw i32 %idxprom234, 6
  %102 = or i32 %101, 18
  %uglygep773 = getelementptr i8, ptr %call5.i.i, i32 %102
  %103 = ptrtoint ptr %uglygep773 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 -2139062144, ptr %uglygep773, align 1
  %104 = or i32 %101, 24
  %uglygep774 = getelementptr i8, ptr %call5.i.i, i32 %104
  %105 = ptrtoint ptr %uglygep774 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 8)
  store i64 0, ptr %uglygep774, align 2
  %conv293 = zext i16 %93 to i32
  call void @_set_bit(i32 noundef %conv293, ptr noundef %r_bitmap) #13
  %chain_idx296 = getelementptr inbounds %struct.ice_recp_grp_entry, ptr %call.i696, i32 0, i32 2
  %106 = ptrtoint ptr %chain_idx296 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -1, ptr %chain_idx296, align 2
  %107 = ptrtoint ptr %rg_list to i32
  call void @__asan_load4_noabort(i32 %107)
  %entry1.1748 = load ptr, ptr %rg_list, align 4
  %cmp305.not749 = icmp eq ptr %entry1.1748, %rg_list
  br i1 %cmp305.not749, label %if.end257.for.end339_crit_edge, label %if.end257.for.body309_crit_edge

if.end257.for.body309_crit_edge:                  ; preds = %if.end257
  br label %for.body309

if.end257.for.end339_crit_edge:                   ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end339

for.body309:                                      ; preds = %for.body309.for.body309_crit_edge, %if.end257.for.body309_crit_edge
  %entry1.1751 = phi ptr [ %entry1.1, %for.body309.for.body309_crit_edge ], [ %entry1.1748, %if.end257.for.body309_crit_edge ]
  %i228.1750 = phi i16 [ %inc326, %for.body309.for.body309_crit_edge ], [ 1, %if.end257.for.body309_crit_edge ]
  %chain_idx310 = getelementptr inbounds %struct.ice_recp_grp_entry, ptr %entry1.1751, i32 0, i32 2
  %108 = ptrtoint ptr %chain_idx310 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %chain_idx310, align 2
  %conv311 = zext i8 %109 to i16
  %idxprom313 = zext i16 %i228.1750 to i32
  %arrayidx314 = getelementptr %struct.ice_recp_grp_entry, ptr %call.i696, i32 0, i32 3, i32 %idxprom313
  %110 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv311, ptr %arrayidx314, align 2
  %111 = load i8, ptr %chain_idx310, align 2
  %arrayidx321 = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom234, i32 5, i32 1, i32 %idxprom313
  %112 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %arrayidx321, align 1
  %inc326 = add i16 %i228.1750, 1
  %arrayidx328 = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom234, i32 5, i32 2, i32 %idxprom313
  %113 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 -1, ptr %arrayidx328, align 2
  %rid329 = getelementptr inbounds %struct.ice_recp_grp_entry, ptr %entry1.1751, i32 0, i32 1
  %114 = ptrtoint ptr %rid329 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %rid329, align 4
  %conv330 = zext i16 %115 to i32
  call void @_set_bit(i32 noundef %conv330, ptr noundef %r_bitmap) #13
  %116 = ptrtoint ptr %entry1.1751 to i32
  call void @__asan_load4_noabort(i32 %116)
  %entry1.1 = load ptr, ptr %entry1.1751, align 4
  %cmp305.not = icmp eq ptr %entry1.1, %rg_list
  br i1 %cmp305.not, label %for.body309.for.end339_crit_edge, label %for.body309.for.body309_crit_edge

for.body309.for.body309_crit_edge:                ; preds = %for.body309
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body309

for.body309.for.end339_crit_edge:                 ; preds = %for.body309
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end339

for.end339:                                       ; preds = %for.body309.for.end339_crit_edge, %if.end257.for.end339_crit_edge
  %117 = ptrtoint ptr %rg_list to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rg_list, align 4
  %call.i.i697 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i696, ptr noundef %rg_list, ptr noundef %118) #13
  br i1 %call.i.i697, label %if.end.i.i698, label %for.end339.cleanup356_crit_edge

for.end339.cleanup356_crit_edge:                  ; preds = %for.end339
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup356

if.end.i.i698:                                    ; preds = %for.end339
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i696, ptr %prev1.i.i, align 4
  %120 = ptrtoint ptr %call.i696 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %118, ptr %call.i696, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i696, i32 0, i32 1
  %121 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %rg_list, ptr %prev3.i.i, align 4
  %122 = ptrtoint ptr %rg_list to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %call.i696, ptr %rg_list, align 4
  br label %cleanup356

cleanup356.thread:                                ; preds = %if.end232.cleanup356.thread_crit_edge, %if.else.cleanup356.thread_crit_edge
  %status.1.ph = phi i32 [ -12, %if.end232.cleanup356.thread_crit_edge ], [ %call229, %if.else.cleanup356.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rid227) #13
  br label %err_mem

cleanup356:                                       ; preds = %if.end.i.i698, %for.end339.cleanup356_crit_edge
  %recipe_bitmap344 = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom234, i32 3
  %123 = ptrtoint ptr %r_bitmap to i32
  call void @__asan_loadN_noabort(i32 %123, i32 8)
  %124 = load i64, ptr %r_bitmap, align 4
  %125 = ptrtoint ptr %recipe_bitmap344 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 8)
  store i64 %124, ptr %recipe_bitmap344, align 4
  %126 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %priority, align 4
  %act_ctrl_fwd_priority352 = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom234, i32 5, i32 6
  %128 = ptrtoint ptr %act_ctrl_fwd_priority352 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %act_ctrl_fwd_priority352, align 1
  %root_rid355 = getelementptr inbounds %struct.ice_sw_recipe, ptr %rm, i32 0, i32 1
  %129 = ptrtoint ptr %root_rid355 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv233, ptr %root_rid355, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rid227) #13
  br label %if.end361

if.end361:                                        ; preds = %cleanup356, %if.then203
  %call362 = call i32 @ice_acquire_change_lock(ptr noundef %hw, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call362)
  %tobool363.not = icmp eq i32 %call362, 0
  br i1 %tobool363.not, label %if.end365, label %if.end361.err_mem_crit_edge

if.end361.err_mem_crit_edge:                      ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mem

if.end365:                                        ; preds = %if.end361
  %130 = ptrtoint ptr %n_grp_count9 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %n_grp_count9, align 2
  %conv367 = zext i8 %131 to i16
  %call368 = call fastcc i32 @ice_aq_add_recipe(ptr noundef %hw, ptr noundef nonnull %call5.i.i, i16 noundef zeroext %conv367)
  call void @ice_release_change_lock(ptr noundef %hw) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call368)
  %tobool369.not = icmp eq i32 %call368, 0
  br i1 %tobool369.not, label %for.cond377.preheader, label %if.end365.err_mem_crit_edge

if.end365.err_mem_crit_edge:                      ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mem

for.cond377.preheader:                            ; preds = %if.end365
  %132 = ptrtoint ptr %rg_list to i32
  call void @__asan_load4_noabort(i32 %132)
  %entry1.2757 = load ptr, ptr %rg_list, align 4
  %cmp380.not758 = icmp eq ptr %entry1.2757, %rg_list
  br i1 %cmp380.not758, label %for.cond377.preheader.for.end479_crit_edge, label %for.body384.lr.ph

for.cond377.preheader.for.end479_crit_edge:       ; preds = %for.cond377.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end479

for.body384.lr.ph:                                ; preds = %for.cond377.preheader
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %root_rid411 = getelementptr inbounds %struct.ice_sw_recipe, ptr %rm, i32 0, i32 1
  %tun_type = getelementptr inbounds %struct.ice_sw_recipe, ptr %rm, i32 0, i32 10
  br label %for.body384

for.body384:                                      ; preds = %cleanup465.for.body384_crit_edge, %for.body384.lr.ph
  %entry1.2759 = phi ptr [ %entry1.2757, %for.body384.lr.ph ], [ %entry1.2, %cleanup465.for.body384_crit_edge ]
  %133 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %switch_info, align 8
  %135 = ptrtoint ptr %n_grp_count9 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %n_grp_count9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %cmp389752.not = icmp eq i8 %136, 0
  br i1 %cmp389752.not, label %for.body384.err_mem_crit_edge, label %for.body391.lr.ph

for.body384.err_mem_crit_edge:                    ; preds = %for.body384
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mem

for.body391.lr.ph:                                ; preds = %for.body384
  %rid396 = getelementptr inbounds %struct.ice_recp_grp_entry, ptr %entry1.2759, i32 0, i32 1
  %137 = ptrtoint ptr %rid396 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %rid396, align 4
  %wide.trip.count = zext i8 %136 to i32
  br label %for.body391

for.body391:                                      ; preds = %for.body391.for.body391_crit_edge, %for.body391.lr.ph
  %indvars.iv777 = phi i32 [ 0, %for.body391.lr.ph ], [ %indvars.iv.next778, %for.body391.for.body391_crit_edge ]
  %buf_idx.0755 = phi i16 [ 0, %for.body391.lr.ph ], [ %spec.select687, %for.body391.for.body391_crit_edge ]
  %idx_found.0.off0753 = phi i1 [ false, %for.body391.lr.ph ], [ %spec.select, %for.body391.for.body391_crit_edge ]
  %arrayidx393 = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %indvars.iv777
  %139 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx393, align 4
  %141 = zext i8 %140 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %138, i16 %141)
  %cmp398 = icmp eq i16 %138, %141
  %spec.select = select i1 %cmp398, i1 true, i1 %idx_found.0.off0753
  %142 = trunc i32 %indvars.iv777 to i16
  %spec.select687 = select i1 %cmp398, i16 %142, i16 %buf_idx.0755
  %indvars.iv.next778 = add nuw nsw i32 %indvars.iv777, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next778, %wide.trip.count
  br i1 %exitcond.not, label %for.end404, label %for.body391.for.body391_crit_edge

for.body391.for.body391_crit_edge:                ; preds = %for.body391
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body391

for.end404:                                       ; preds = %for.body391
  br i1 %spec.select, label %if.end407, label %for.end404.err_mem_crit_edge

for.end404.err_mem_crit_edge:                     ; preds = %for.end404
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mem

if.end407:                                        ; preds = %for.end404
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %134, i32 0, i32 1
  %143 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %recp_list, align 4
  %rid408 = getelementptr inbounds %struct.ice_recp_grp_entry, ptr %entry1.2759, i32 0, i32 1
  %145 = ptrtoint ptr %rid408 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %rid408, align 4
  %idxprom409 = zext i16 %146 to i32
  %arrayidx410 = getelementptr %struct.ice_sw_recipe, ptr %144, i32 %idxprom409
  %147 = ptrtoint ptr %root_rid411 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %root_rid411, align 1
  %149 = zext i8 %148 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %146, i16 %149)
  %cmp415 = icmp eq i16 %146, %149
  %frombool417 = zext i1 %cmp415 to i8
  %150 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %frombool417, ptr %arrayidx410, align 4
  %151 = ptrtoint ptr %rid408 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %rid408, align 4
  %conv422 = trunc i16 %152 to i8
  %root_rid423 = getelementptr %struct.ice_sw_recipe, ptr %144, i32 %idxprom409, i32 1
  %153 = ptrtoint ptr %root_rid423 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv422, ptr %root_rid423, align 1
  br i1 %cmp415, label %land.rhs, label %if.end407.land.end_crit_edge

if.end407.land.end_crit_edge:                     ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #15
  %154 = ptrtoint ptr %n_grp_count9 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %n_grp_count9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %155)
  %cmp428 = icmp ugt i8 %155, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end407.land.end_crit_edge
  %156 = phi i1 [ false, %if.end407.land.end_crit_edge ], [ %cmp428, %land.rhs ]
  %conv430 = zext i1 %156 to i8
  %big_recp = getelementptr %struct.ice_sw_recipe, ptr %144, i32 %idxprom409, i32 6
  %157 = ptrtoint ptr %big_recp to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv430, ptr %big_recp, align 4
  %ext_words = getelementptr %struct.ice_sw_recipe, ptr %144, i32 %idxprom409, i32 4
  %r_group431 = getelementptr inbounds %struct.ice_recp_grp_entry, ptr %entry1.2759, i32 0, i32 5
  %pairs = getelementptr inbounds %struct.ice_recp_grp_entry, ptr %entry1.2759, i32 0, i32 5, i32 1
  %158 = ptrtoint ptr %r_group431 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %r_group431, align 4
  %conv435 = zext i8 %159 to i32
  %mul = shl nuw nsw i32 %conv435, 2
  %160 = call ptr @memcpy(ptr %ext_words, ptr %pairs, i32 %mul)
  %r_bitmap436 = getelementptr %struct.ice_sw_recipe, ptr %144, i32 %idxprom409, i32 9
  %idxprom438 = zext i16 %spec.select687 to i32
  %recipe_bitmap440 = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom438, i32 3
  %161 = ptrtoint ptr %recipe_bitmap440 to i32
  call void @__asan_loadN_noabort(i32 %161, i32 8)
  %162 = load i64, ptr %recipe_bitmap440, align 4
  %163 = ptrtoint ptr %r_bitmap436 to i32
  call void @__asan_storeN_noabort(i32 %163, i32 8)
  store i64 %162, ptr %r_bitmap436, align 4
  %result_indx.i = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom438, i32 5, i32 3
  %164 = ptrtoint ptr %result_indx.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %result_indx.i, align 4
  %conv.i = zext i8 %165 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i699 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i699, label %land.end.ice_collect_result_idx.exit_crit_edge, label %if.then.i

land.end.ice_collect_result_idx.exit_crit_edge:   ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %ice_collect_result_idx.exit

if.then.i:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  %and4.i = and i32 %conv.i, 127
  %res_idxs.i700 = getelementptr %struct.ice_sw_recipe, ptr %144, i32 %idxprom409, i32 18
  call void @_set_bit(i32 noundef %and4.i, ptr noundef %res_idxs.i700) #13
  br label %ice_collect_result_idx.exit

ice_collect_result_idx.exit:                      ; preds = %if.then.i, %land.end.ice_collect_result_idx.exit_crit_edge
  br i1 %cmp415, label %ice_collect_result_idx.exit.cleanup465_crit_edge, label %if.then445

ice_collect_result_idx.exit.cleanup465_crit_edge: ; preds = %ice_collect_result_idx.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup465

if.then445:                                       ; preds = %ice_collect_result_idx.exit
  %166 = ptrtoint ptr %result_indx.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %result_indx.i, align 4
  %conv.i703 = zext i8 %167 to i32
  %and.i704 = and i32 %conv.i703, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i704)
  %tobool.not.i705 = icmp eq i32 %and.i704, 0
  br i1 %tobool.not.i705, label %if.then445.cleanup465_crit_edge, label %if.then.i708

if.then445.cleanup465_crit_edge:                  ; preds = %if.then445
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup465

if.then.i708:                                     ; preds = %if.then445
  call void @__sanitizer_cov_trace_pc() #15
  %168 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %recp_list, align 4
  %170 = ptrtoint ptr %root_rid411 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %root_rid411, align 1
  %idxprom450 = zext i8 %171 to i32
  %and4.i706 = and i32 %conv.i703, 127
  %res_idxs.i707 = getelementptr %struct.ice_sw_recipe, ptr %169, i32 %idxprom450, i32 18
  call void @_set_bit(i32 noundef %and4.i706, ptr noundef %res_idxs.i707) #13
  br label %cleanup465

cleanup465:                                       ; preds = %if.then.i708, %if.then445.cleanup465_crit_edge, %ice_collect_result_idx.exit.cleanup465_crit_edge
  %172 = ptrtoint ptr %r_group431 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %r_group431, align 4
  %n_ext_words = getelementptr %struct.ice_sw_recipe, ptr %144, i32 %idxprom409, i32 3
  %174 = ptrtoint ptr %n_ext_words to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %n_ext_words, align 1
  %chain_idx455 = getelementptr inbounds %struct.ice_recp_grp_entry, ptr %entry1.2759, i32 0, i32 2
  %175 = ptrtoint ptr %chain_idx455 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %chain_idx455, align 2
  %chain_idx456 = getelementptr %struct.ice_sw_recipe, ptr %144, i32 %idxprom409, i32 7
  %177 = ptrtoint ptr %chain_idx456 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %chain_idx456, align 1
  %act_ctrl_fwd_priority460 = getelementptr %struct.ice_aqc_recipe_data_elem, ptr %call5.i.i, i32 %idxprom438, i32 5, i32 6
  %178 = ptrtoint ptr %act_ctrl_fwd_priority460 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %act_ctrl_fwd_priority460, align 1
  %priority461 = getelementptr %struct.ice_sw_recipe, ptr %144, i32 %idxprom409, i32 19
  %180 = ptrtoint ptr %priority461 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %priority461, align 4
  %181 = ptrtoint ptr %n_grp_count9 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %n_grp_count9, align 2
  %n_grp_count463 = getelementptr %struct.ice_sw_recipe, ptr %144, i32 %idxprom409, i32 8
  %183 = ptrtoint ptr %n_grp_count463 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %n_grp_count463, align 2
  %184 = ptrtoint ptr %tun_type to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %tun_type, align 4
  %tun_type464 = getelementptr %struct.ice_sw_recipe, ptr %144, i32 %idxprom409, i32 10
  %186 = ptrtoint ptr %tun_type464 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %tun_type464, align 4
  %recp_created = getelementptr %struct.ice_sw_recipe, ptr %144, i32 %idxprom409, i32 2
  %187 = ptrtoint ptr %recp_created to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 1, ptr %recp_created, align 2
  %188 = ptrtoint ptr %entry1.2759 to i32
  call void @__asan_load4_noabort(i32 %188)
  %entry1.2 = load ptr, ptr %entry1.2759, align 4
  %cmp380.not = icmp eq ptr %entry1.2, %rg_list
  br i1 %cmp380.not, label %cleanup465.for.end479_crit_edge, label %cleanup465.for.body384_crit_edge

cleanup465.for.body384_crit_edge:                 ; preds = %cleanup465
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body384

cleanup465.for.end479_crit_edge:                  ; preds = %cleanup465
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end479

for.end479:                                       ; preds = %cleanup465.for.end479_crit_edge, %for.cond377.preheader.for.end479_crit_edge
  %root_buf = getelementptr inbounds %struct.ice_sw_recipe, ptr %rm, i32 0, i32 21
  %189 = ptrtoint ptr %root_buf to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call5.i.i, ptr %root_buf, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %cleanup485

err_mem:                                          ; preds = %for.end404.err_mem_crit_edge, %for.body384.err_mem_crit_edge, %if.end365.err_mem_crit_edge, %if.end361.err_mem_crit_edge, %cleanup356.thread, %cleanup.err_mem_crit_edge, %if.then154, %ice_alloc_recipe.exit, %for.body.err_mem_crit_edge, %lor.lhs.false.err_mem_crit_edge, %ice_aq_get_recipe.exit.err_mem_crit_edge, %if.end31.err_mem_crit_edge
  %status.4 = phi i32 [ %call.i691, %ice_aq_get_recipe.exit.err_mem_crit_edge ], [ 0, %lor.lhs.false.err_mem_crit_edge ], [ %call362, %if.end361.err_mem_crit_edge ], [ %call368, %if.end365.err_mem_crit_edge ], [ -12, %if.end31.err_mem_crit_edge ], [ %status.1.ph, %cleanup356.thread ], [ %call3.i, %ice_alloc_recipe.exit ], [ -28, %if.then154 ], [ -5, %for.end404.err_mem_crit_edge ], [ -5, %for.body384.err_mem_crit_edge ], [ %status.0, %cleanup.err_mem_crit_edge ], [ -12, %for.body.err_mem_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  %190 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %add.ptr34, align 8
  %dev484 = getelementptr inbounds %struct.pci_dev, ptr %191, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev484, ptr noundef %call5.i.i) #13
  br label %cleanup485

cleanup485:                                       ; preds = %err_mem, %for.end479, %cleanup.cleanup485_crit_edge, %if.end27.cleanup485_crit_edge, %if.end21.cleanup485_crit_edge, %if.then12.cleanup485_crit_edge
  %retval.0 = phi i32 [ %status.4, %err_mem ], [ 0, %for.end479 ], [ -28, %if.then12.cleanup485_crit_edge ], [ -28, %if.end21.cleanup485_crit_edge ], [ -12, %if.end27.cleanup485_crit_edge ], [ undef, %cleanup.cleanup485_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result_idx_bm) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_aq_get_recipe_to_profile(ptr noundef %hw, i32 noundef %profile_id, ptr nocapture noundef writeonly %r_bitmap) unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #13
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 659) #13
  %conv = trunc i32 %profile_id to i16
  %2 = call i16 @llvm.bswap.i16(i16 %conv)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 4
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %4, align 4
  %7 = ptrtoint ptr %r_bitmap to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %r_bitmap, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_acquire_change_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_aq_map_recipe_to_profile(ptr noundef %hw, i32 noundef %profile_id, ptr nocapture noundef readonly %r_bitmap) unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #13
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 657) #13
  %conv = trunc i32 %profile_id to i16
  %3 = call i16 @llvm.bswap.i16(i16 %conv)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %0, align 4
  %5 = ptrtoint ptr %r_bitmap to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %r_bitmap, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %1, align 4
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_release_change_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_get_sw_fv_bitmap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_get_sw_fv_list(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_find_prot_off(ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_alloc_recipe(ptr noundef %hw, ptr nocapture noundef writeonly %rid) unnamed_addr #0 align 64 {
kzalloc.exit:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 6) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  %num_elems = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %num_elems to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 256, ptr %num_elems, align 2
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -31488, ptr %call7.i.i, align 8
  %call3 = tail call i32 @ice_aq_alloc_free_res(ptr noundef %hw, i16 noundef zeroext 1, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 6, i32 noundef 520, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %elem = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %elem to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %elem, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = ptrtoint ptr %rid to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %rid, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end6 ], [ -12, %kzalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_aq_add_recipe(ptr noundef %hw, ptr noundef %s_recipe_list, i16 noundef zeroext %num_recipes) unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #13
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 656) #13
  %2 = call i16 @llvm.bswap.i16(i16 %num_recipes)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 4
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %desc, align 4
  %6 = or i16 %5, 4
  store i16 %6, ptr %desc, align 4
  %mul = shl i16 %num_recipes, 6
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %s_recipe_list, i16 noundef zeroext %mul, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_get_open_tunnel_port(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !84, !86, !88, !89, !90, !92, !93, !95, !97, !99, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @ice_init_def_sw_recp.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 546, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 3739, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ice_free_res_cntr.__UNIQUE_ID_ddebug620, !4, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 1402, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ice_init_port_info.__UNIQUE_ID_ddebug613, !10, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 2837, i32 4}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ice_add_vlan_internal.__UNIQUE_ID_ddebug618, !14, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 2343, i32 4}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ice_rem_update_vsi_list.__UNIQUE_ID_ddebug614, !18, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 2359, i32 4}
!23 = !{ptr @ice_rem_update_vsi_list.__UNIQUE_ID_ddebug615, !22, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!24 = !{ptr @dummy_eth_header, !25, !"dummy_eth_header", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 29, i32 17}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 3643, i32 3}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ice_remove_vsi_lkup_fltr.__UNIQUE_ID_ddebug619, !27, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!30 = !{ptr @dummy_gre_tcp_packet, !31, !"dummy_gre_tcp_packet", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 49, i32 17}
!32 = !{ptr @dummy_gre_tcp_packet_offsets, !33, !"dummy_gre_tcp_packet_offsets", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 38, i32 43}
!34 = !{ptr @dummy_gre_udp_packet, !35, !"dummy_gre_udp_packet", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 94, i32 17}
!36 = !{ptr @dummy_gre_udp_packet_offsets, !37, !"dummy_gre_udp_packet_offsets", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 83, i32 43}
!38 = !{ptr @dummy_udp_tun_tcp_packet, !39, !"dummy_udp_tun_tcp_packet", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 139, i32 17}
!40 = !{ptr @dummy_udp_tun_tcp_packet_offsets, !41, !"dummy_udp_tun_tcp_packet_offsets", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 125, i32 43}
!42 = !{ptr @dummy_udp_tun_udp_packet, !43, !"dummy_udp_tun_udp_packet", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 190, i32 17}
!44 = !{ptr @dummy_udp_tun_udp_packet_offsets, !45, !"dummy_udp_tun_udp_packet_offsets", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 176, i32 43}
!46 = !{ptr @dummy_vlan_udp_packet, !47, !"dummy_vlan_udp_packet", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 264, i32 17}
!48 = !{ptr @dummy_vlan_udp_packet_offsets, !49, !"dummy_vlan_udp_packet_offsets", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 254, i32 43}
!50 = !{ptr @dummy_udp_packet, !51, !"dummy_udp_packet", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 234, i32 17}
!52 = !{ptr @dummy_udp_packet_offsets, !53, !"dummy_udp_packet_offsets", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 225, i32 43}
!54 = !{ptr @dummy_vlan_udp_ipv6_packet, !55, !"dummy_vlan_udp_ipv6_packet", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 477, i32 17}
!56 = !{ptr @dummy_vlan_udp_ipv6_packet_offsets, !57, !"dummy_vlan_udp_ipv6_packet_offsets", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 467, i32 1}
!58 = !{ptr @dummy_udp_ipv6_packet, !59, !"dummy_udp_ipv6_packet", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 438, i32 17}
!60 = !{ptr @dummy_udp_ipv6_packet_offsets, !61, !"dummy_udp_ipv6_packet_offsets", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 429, i32 43}
!62 = !{ptr @dummy_vlan_tcp_ipv6_packet, !63, !"dummy_vlan_tcp_ipv6_packet", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 399, i32 17}
!64 = !{ptr @dummy_vlan_tcp_ipv6_packet_offsets, !65, !"dummy_vlan_tcp_ipv6_packet_offsets", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 389, i32 1}
!66 = !{ptr @dummy_tcp_ipv6_packet, !67, !"dummy_tcp_ipv6_packet", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 360, i32 17}
!68 = !{ptr @dummy_tcp_ipv6_packet_offsets, !69, !"dummy_tcp_ipv6_packet_offsets", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 352, i32 43}
!70 = !{ptr @dummy_vlan_tcp_packet, !71, !"dummy_vlan_tcp_packet", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 328, i32 17}
!72 = !{ptr @dummy_vlan_tcp_packet_offsets, !73, !"dummy_vlan_tcp_packet_offsets", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 318, i32 43}
!74 = !{ptr @dummy_tcp_packet, !75, !"dummy_tcp_packet", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 295, i32 17}
!76 = !{ptr @dummy_tcp_packet_offsets, !77, !"dummy_tcp_packet_offsets", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 286, i32 43}
!78 = !{ptr @.str.19, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 4647, i32 3}
!80 = !{ptr @.str.20, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ice_add_adv_recipe.__UNIQUE_ID_ddebug623, !79, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!82 = !{ptr @ice_prot_ext, !83, !"ice_prot_ext", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 3754, i32 44}
!84 = !{ptr @ice_prot_id_tbl, !85, !"ice_prot_id_tbl", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 3773, i32 34}
!86 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 4134, i32 2}
!88 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ice_add_sw_recipe.__UNIQUE_ID_ddebug621, !87, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!90 = !{ptr @.str.24, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 4213, i32 5}
!92 = !{ptr @ice_add_sw_recipe.__UNIQUE_ID_ddebug622, !91, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!93 = !{ptr @profile_to_recipe, !94, !"profile_to_recipe", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 521, i32 8}
!95 = !{ptr @recipe_to_profile, !96, !"recipe_to_profile", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 517, i32 8}
!97 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 5492, i32 4}
!99 = distinct !{null, !98, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!100 = distinct !{null, !101, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/ice/ice_switch.c", i32 5501, i32 4}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 2148893477, i64 2148893482, i64 2148893495, i64 2148893539, i64 2148893573, i64 2148893594}
!112 = !{i32 24, i32 33}
!113 = !{!"auto-init"}
