; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_common.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ice_ctx_ele = type { i16, i16, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.ice_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.202 }
%union.anon.202 = type { %struct.ice_aqc_generic }
%struct.ice_aqc_generic = type { i32, i32, i32, i32 }
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
%struct.ice_aqc_get_phy_caps = type { i8, i8, i16, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.205, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.205 = type { ptr }
%struct.ice_aqc_get_phy_caps_data = type { i64, i64, i8, i8, i16, i16, [4 x i8], [8 x i8], i8, i8, i8, [3 x i8], i8, [7 x i8], [16 x %struct.anon.203] }
%struct.anon.203 = type { [3 x i8], i8, [16 x i8], i32, i64 }
%struct.ice_aqc_get_link_status_data = type { i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i32, i64, i64 }
%struct.ice_aqc_get_link_status = type { i8, i8, i16, i32, i32, i32 }
%struct.ice_aqc_link_topo_params = type { i8, i8, i8, i8 }
%struct.ice_aqc_set_mac_cfg = type { i16, i8, i8, i16, i16, i8, [7 x i8] }
%struct.ice_aqc_fw_logging = type { i8, i8, i8, [5 x i8], i32, i32 }
%struct.ice_switch_info = type { %struct.list_head, ptr, i16, i16, [256 x [2 x i32]] }
%struct.ice_aqc_manage_mac_read_resp = type { i8, i8, [6 x i8] }
%struct.ice_sw_recipe = type { i8, i8, i8, i8, [20 x %struct.ice_fv_word], [20 x i16], i8, i8, i8, [2 x i32], i32, i8, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, [2 x i32], i8, %struct.list_head, ptr, %struct.ice_prot_lkup_ext }
%struct.ice_fv_word = type <{ i8, i16, i8 }>
%struct.ice_prot_lkup_ext = type { i16, i8, [20 x i16], [20 x i16], [20 x %struct.ice_fv_word], [1 x i32] }
%struct.ice_adv_fltr_mgmt_list_entry = type { %struct.list_head, ptr, %struct.ice_adv_rule_info, i16, ptr, i16 }
%struct.ice_adv_rule_info = type { i32, %struct.ice_sw_act_ctrl, i32, i8, i16, %struct.ice_adv_rule_flags_info }
%struct.ice_sw_act_ctrl = type { i16, i16, i32, %union.anon.223, i16, i8 }
%union.anon.223 = type { i16 }
%struct.ice_adv_rule_flags_info = type { i32, i8 }
%struct.ice_rlan_ctx = type { i16, i16, i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i16, i8 }
%struct.ice_sbq_cmd_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.220, [6 x i8], i32, i32 }
%union.anon.220 = type { i16 }
%struct.ice_sbq_msg_req = type { i8, i8, i8, i8, i8, i8, i16, i32, i32 }
%struct.ice_sbq_msg_input = type { i8, i8, i16, i32, i32 }
%struct.ice_aqc_get_ver = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_driver_ver = type { i8, i8, i8, i8, [32 x i8] }
%struct.ice_aqc_driver_ver = type { i8, i8, i8, i8, [4 x i8], i32, i32 }
%struct.ice_aqc_req_res = type { i16, i16, i32, i32, i16, [2 x i8] }
%struct.ice_aqc_alloc_free_res_elem = type { i16, i16, [0 x %struct.ice_aqc_res_elem] }
%struct.ice_aqc_res_elem = type { %union.anon.221 }
%union.anon.221 = type { i16 }
%struct.ice_aqc_list_caps_elem = type { i16, i8, i8, i32, i32, i32, i64, i64 }
%struct.ice_aqc_manage_mac_write = type { i8, i8, [6 x i8], i32, i32 }
%struct.ice_link_default_override_tlv = type { i8, i8, i8, i8, i64, i64 }
%struct.ice_aqc_restart_an = type { i8, i8, i8, [13 x i8] }
%struct.ice_aqc_set_port_id_led = type { i8, i8, i8, [13 x i8] }
%struct.ice_aqc_sff_eeprom = type { i8, i8, i16, i16, i16, i32, i32 }
%struct.ice_aq_get_set_rss_lut_params = type { i16, i16, i8, ptr, i8 }
%struct.ice_aqc_get_set_rss_lut = type { i16, i16, i32, i32, i32 }
%struct.ice_vsi_ctx = type { i16, i16, i16, i16, %struct.ice_aqc_vsi_props, %struct.ice_sched_vsi_info, i8, i8, [8 x i16], [8 x ptr], [8 x i16], [8 x ptr] }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.ice_sched_vsi_info = type { [8 x ptr], [8 x ptr], %struct.list_head, [8 x i16], [8 x i16], [8 x %struct.ice_bw_type_info] }
%struct.ice_bw_type_info = type { [1 x i32], i8, %struct.ice_bw, %struct.ice_bw, i32 }
%struct.ice_bw = type { i32, i16 }
%struct.ice_q_ctx = type { i16, i32, %struct.ice_bw_type_info }
%struct.ice_aqc_txsched_elem_data = type { i32, i32, %struct.ice_aqc_txsched_elem }
%struct.ice_aqc_txsched_elem = type { i8, i8, i8, i8, %struct.ice_aqc_elem_info_bw, %struct.ice_aqc_elem_info_bw, i16, i16 }
%struct.ice_aqc_elem_info_bw = type { i16, i16 }
%struct.ice_aqc_add_tx_qgrp = type { i32, i8, [3 x i8], [0 x %struct.ice_aqc_add_txqs_perq] }
%struct.ice_aqc_add_txqs_perq = type { i16, [2 x i8], i32, [22 x i8], [2 x i8], %struct.ice_aqc_txsched_elem }
%struct.ice_sched_node = type { ptr, ptr, ptr, %struct.ice_aqc_txsched_elem_data, i32, i16, i8, i8, i8, i8, i8 }
%struct.ice_aqc_dis_txq_item = type <{ i32, i8, i8, [0 x i16] }>
%struct.ice_aqc_dis_txqs = type { i8, i8, i16, i32, i32, i32 }
%struct.ice_aqc_add_rdma_qset_data = type { i32, i16, [2 x i8], [0 x %struct.ice_aqc_add_tx_rdma_qset_entry] }
%struct.ice_aqc_add_tx_rdma_qset_entry = type { i16, [2 x i8], i32, %struct.ice_aqc_txsched_elem }
%struct.ice_aqc_driver_shared_params = type { i8, i8, [2 x i8], i32, i32, i32 }
%struct.ice_aqc_gpio = type { i16, i8, i8, [12 x i8] }
%struct.ice_aqc_lldp_set_local_mib = type { i8, i8, i16, [4 x i8], i32, i32 }
%struct.ice_aqc_lldp_filter_ctrl = type { i8, i8, i16, [12 x i8] }

@ice_aq_get_phy_caps.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ice_aq_get_phy_caps\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/intel/ice/ice_common.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"get phy caps - report_mode = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_aq_get_phy_caps.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09phy_type_low = 0x%llx\0A\00", [40 x i8] zeroinitializer }, align 32
@ice_aq_get_phy_caps.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09phy_type_high = 0x%llx\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_aq_get_phy_caps.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\09caps = 0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@ice_aq_get_phy_caps.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09low_power_ctrl_an = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@ice_aq_get_phy_caps.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09eee_cap = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@ice_aq_get_phy_caps.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09eeer_value = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@ice_aq_get_phy_caps.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09link_fec_options = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_aq_get_phy_caps.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\09module_compliance_enforcement = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@ice_aq_get_phy_caps.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"   extended_compliance_code = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@ice_aq_get_phy_caps.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"   module_type[0] = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_aq_get_phy_caps.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"   module_type[1] = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_aq_get_phy_caps.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.15, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"   module_type[2] = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_aq_get_link_info.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_aq_get_link_info\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get link info\0A\00", [17 x i8] zeroinitializer }, align 32
@ice_aq_get_link_info.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09link_speed = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@ice_aq_get_link_info.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.4, i8 0, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_aq_get_link_info.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.5, i8 0, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_aq_get_link_info.__UNIQUE_ID_ddebug632 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09media_type = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@ice_aq_get_link_info.__UNIQUE_ID_ddebug633 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.20, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09link_info = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@ice_aq_get_link_info.__UNIQUE_ID_ddebug634 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.21, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09link_cfg_err = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@ice_aq_get_link_info.__UNIQUE_ID_ddebug635 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.22, i8 0, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09an_info = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@ice_aq_get_link_info.__UNIQUE_ID_ddebug636 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.23, i8 0, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09ext_info = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@ice_aq_get_link_info.__UNIQUE_ID_ddebug637 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.24, i8 0, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09fec_info = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@ice_aq_get_link_info.__UNIQUE_ID_ddebug638 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.25, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09lse_ena = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@ice_aq_get_link_info.__UNIQUE_ID_ddebug639 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.26, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09max_frame = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@ice_aq_get_link_info.__UNIQUE_ID_ddebug640 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.27, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09pacing = 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@ice_output_fw_log.__UNIQUE_ID_ddebug641 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ice_output_fw_log\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[ FW Log Msg Start ]\0A\00", [42 x i8] zeroinitializer }, align 32
@ice_output_fw_log.__UNIQUE_ID_ddebug642 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 -39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ice \00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@ice_output_fw_log.__UNIQUE_ID_ddebug643 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.32, i8 0, i8 -38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[ FW Log Msg End ]\0A\00", [44 x i8] zeroinitializer }, align 32
@ice_init_hw.__UNIQUE_ID_ddebug644 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ice_init_hw\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to enable FW logging.\0A\00", [34 x i8] zeroinitializer }, align 32
@ice_init_hw.__UNIQUE_ID_ddebug645 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.35, i8 0, i8 -13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to get scheduler allocated resources\0A\00", [51 x i8] zeroinitializer }, align 32
@ice_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.2, i32 998, ptr @.str.37, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Get PHY capabilities failed status = %d, continuing anyway\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_init_hw._entry_ptr = internal global ptr @ice_init_hw._entry, section ".printk_index", align 4
@ice_init_hw.__UNIQUE_ID_ddebug646 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.39, i8 0, i8 -5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid sw entry point\0A\00", [40 x i8] zeroinitializer }, align 32
@ice_init_hw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&hw->tnl_lock\00", [18 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ice_check_reset.__UNIQUE_ID_ddebug647 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 1, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ice_check_reset\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Global reset polling failed to complete.\0A\00", [54 x i8] zeroinitializer }, align 32
@ice_check_reset.__UNIQUE_ID_ddebug648 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.43, i8 1, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Global reset processes done. %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_check_reset.__UNIQUE_ID_ddebug649 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.44, i8 1, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Wait for Reset Done timed out. GLNVM_ULD = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@ice_reset.__UNIQUE_ID_ddebug651 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 1, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ice_reset\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CoreR requested\0A\00", [47 x i8] zeroinitializer }, align 32
@ice_reset.__UNIQUE_ID_ddebug652 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 1, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GlobalR requested\0A\00", [45 x i8] zeroinitializer }, align 32
@ice_rlan_ctx_info = internal constant { [21 x %struct.ice_ctx_ele], [56 x i8] } { [21 x %struct.ice_ctx_ele] [%struct.ice_ctx_ele { i16 0, i16 2, i16 13, i16 0 }, %struct.ice_ctx_ele { i16 2, i16 2, i16 8, i16 13 }, %struct.ice_ctx_ele { i16 8, i16 8, i16 57, i16 32 }, %struct.ice_ctx_ele { i16 16, i16 2, i16 13, i16 89 }, %struct.ice_ctx_ele { i16 18, i16 2, i16 7, i16 102 }, %struct.ice_ctx_ele { i16 20, i16 2, i16 5, i16 109 }, %struct.ice_ctx_ele { i16 22, i16 1, i16 2, i16 114 }, %struct.ice_ctx_ele { i16 23, i16 1, i16 1, i16 116 }, %struct.ice_ctx_ele { i16 24, i16 1, i16 1, i16 117 }, %struct.ice_ctx_ele { i16 25, i16 1, i16 1, i16 119 }, %struct.ice_ctx_ele { i16 26, i16 1, i16 4, i16 120 }, %struct.ice_ctx_ele { i16 27, i16 1, i16 2, i16 124 }, %struct.ice_ctx_ele { i16 28, i16 1, i16 1, i16 127 }, %struct.ice_ctx_ele { i16 32, i16 4, i16 14, i16 174 }, %struct.ice_ctx_ele { i16 36, i16 1, i16 1, i16 193 }, %struct.ice_ctx_ele { i16 37, i16 1, i16 1, i16 194 }, %struct.ice_ctx_ele { i16 38, i16 1, i16 1, i16 195 }, %struct.ice_ctx_ele { i16 39, i16 1, i16 1, i16 196 }, %struct.ice_ctx_ele { i16 40, i16 2, i16 3, i16 198 }, %struct.ice_ctx_ele { i16 42, i16 1, i16 1, i16 201 }, %struct.ice_ctx_ele zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ice_tlan_ctx_info = dso_local constant { [29 x %struct.ice_ctx_ele], [56 x i8] } { [29 x %struct.ice_ctx_ele] [%struct.ice_ctx_ele { i16 0, i16 8, i16 57, i16 0 }, %struct.ice_ctx_ele { i16 8, i16 1, i16 3, i16 57 }, %struct.ice_ctx_ele { i16 10, i16 2, i16 5, i16 60 }, %struct.ice_ctx_ele { i16 12, i16 1, i16 3, i16 65 }, %struct.ice_ctx_ele { i16 14, i16 2, i16 10, i16 68 }, %struct.ice_ctx_ele { i16 16, i16 1, i16 2, i16 78 }, %struct.ice_ctx_ele { i16 18, i16 2, i16 10, i16 80 }, %struct.ice_ctx_ele { i16 20, i16 1, i16 1, i16 90 }, %struct.ice_ctx_ele { i16 21, i16 1, i16 1, i16 91 }, %struct.ice_ctx_ele { i16 22, i16 1, i16 1, i16 92 }, %struct.ice_ctx_ele { i16 24, i16 2, i16 8, i16 93 }, %struct.ice_ctx_ele { i16 26, i16 1, i16 1, i16 101 }, %struct.ice_ctx_ele { i16 27, i16 1, i16 1, i16 102 }, %struct.ice_ctx_ele { i16 28, i16 1, i16 1, i16 103 }, %struct.ice_ctx_ele { i16 29, i16 1, i16 1, i16 104 }, %struct.ice_ctx_ele { i16 30, i16 2, i16 9, i16 105 }, %struct.ice_ctx_ele { i16 32, i16 2, i16 14, i16 114 }, %struct.ice_ctx_ele { i16 34, i16 1, i16 1, i16 128 }, %struct.ice_ctx_ele { i16 35, i16 1, i16 6, i16 129 }, %struct.ice_ctx_ele { i16 36, i16 4, i16 13, i16 135 }, %struct.ice_ctx_ele { i16 40, i16 1, i16 4, i16 148 }, %struct.ice_ctx_ele { i16 41, i16 1, i16 1, i16 152 }, %struct.ice_ctx_ele { i16 42, i16 2, i16 11, i16 153 }, %struct.ice_ctx_ele { i16 44, i16 1, i16 1, i16 164 }, %struct.ice_ctx_ele { i16 45, i16 1, i16 1, i16 165 }, %struct.ice_ctx_ele { i16 46, i16 1, i16 2, i16 166 }, %struct.ice_ctx_ele { i16 47, i16 1, i16 3, i16 168 }, %struct.ice_ctx_ele { i16 48, i16 1, i16 122, i16 171 }, %struct.ice_ctx_ele zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ice_global_cfg_lock_sw.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@ice_global_cfg_lock_sw = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ice_global_cfg_lock_sw, i64 52), ptr getelementptr (i8, ptr @ice_global_cfg_lock_sw, i64 52) }, ptr @ice_global_cfg_lock_sw, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.49, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_global_cfg_lock_sw\00", [41 x i8] zeroinitializer }, align 32
@ice_acquire_res.__UNIQUE_ID_ddebug654 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 1, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ice_acquire_res\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"resource %d acquire type %d failed.\0A\00", [59 x i8] zeroinitializer }, align 32
@ice_acquire_res.__UNIQUE_ID_ddebug655 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.52, i8 1, i8 -62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"resource acquire timed out.\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_acquire_res.__UNIQUE_ID_ddebug656 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.53, i8 1, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"resource indicates no work to do.\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_acquire_res.__UNIQUE_ID_ddebug657 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.54, i8 1, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Warning: -EALREADY not expected\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_free_hw_res.__UNIQUE_ID_ddebug658 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 1, i8 -28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ice_free_hw_res\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CQ CMD Buffer:\0A\00", [16 x i8] zeroinitializer }, align 32
@ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug711 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 2, i8 -33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_aq_set_phy_cfg\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Invalid bit is set in ice_aqc_set_phy_cfg_data->caps : 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug712 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.59, i8 2, i8 -31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set phy cfg\0A\00", [19 x i8] zeroinitializer }, align 32
@ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug713 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.4, i8 2, i8 -31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug714 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.5, i8 2, i8 -30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug715 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.6, i8 2, i8 -30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug716 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.7, i8 2, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug717 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.8, i8 2, i8 -29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug718 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.9, i8 2, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug719 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.60, i8 2, i8 -28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09link_fec_opt = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@ice_get_link_status.__UNIQUE_ID_ddebug720 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 3, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ice_get_link_status\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"get link status error, status = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ice_set_ctx.__UNIQUE_ID_ddebug723 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 4, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ice_set_ctx\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Field %d width of %d bits larger than size of %d byte(s) ... skipping write\0A\00", [51 x i8] zeroinitializer }, align 32
@ice_ena_vsi_txq.__UNIQUE_ID_ddebug724 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 4, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ice_ena_vsi_txq\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enaq: invalid queue handle %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ice_ena_vsi_txq.__UNIQUE_ID_ddebug725 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.67, i8 4, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"enable queue %d failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ice_dis_vsi_txq.__UNIQUE_ID_ddebug726 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 4, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ice_dis_vsi_txq\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid queue handle%d\0A\00", [40 x i8] zeroinitializer }, align 32
@ice_dis_vsi_txq.__UNIQUE_ID_ddebug727 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.70, i8 4, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Err:handles %d %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ice_ena_vsi_rdma_qset.__UNIQUE_ID_ddebug728 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 4, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_ena_vsi_rdma_qset\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"add RDMA qset failed\0A\00", [42 x i8] zeroinitializer }, align 32
@ice_sched_query_elem.__UNIQUE_ID_ddebug729 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 4, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_sched_query_elem\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"query element failed\0A\00", [42 x i8] zeroinitializer }, align 32
@ice_get_link_default_override.__UNIQUE_ID_ddebug730 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 4, i8 -47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ice_get_link_default_override\00", [34 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read link override TLV.\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_get_link_default_override.__UNIQUE_ID_ddebug731 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.77, i8 4, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read override link options.\0A\00", [57 x i8] zeroinitializer }, align 32
@ice_get_link_default_override.__UNIQUE_ID_ddebug732 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.78, i8 4, i8 -42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read override phy config.\0A\00", [59 x i8] zeroinitializer }, align 32
@ice_get_link_default_override.__UNIQUE_ID_ddebug733 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.77, i8 4, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_get_link_default_override.__UNIQUE_ID_ddebug734 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.77, i8 4, i8 -36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_set_mac_type.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 0, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ice_set_mac_type\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mac_type: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@ice_aq_manage_mac_read.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_aq_manage_mac_read\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"got invalid MAC address\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_pf_reset.__UNIQUE_ID_ddebug650 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 1, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ice_pf_reset\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PF reset polling failed to complete.\0A\00", [58 x i8] zeroinitializer }, align 32
@ice_copy_rxq_ctx_to_hw.__UNIQUE_ID_ddebug653 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 1, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_copy_rxq_ctx_to_hw\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qrxdata[%d]: %08X\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev caps\00", [23 x i8] zeroinitializer }, align 32
@ice_parse_dev_caps.__UNIQUE_ID_ddebug710 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 2, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_parse_dev_caps\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dev caps: unknown capability[%d]: 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug659 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.91, i8 1, i8 -14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_parse_common_caps\00", [42 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: valid_functions (bitmap) = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug660 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.92, i8 1, i8 -12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: sr_iov_1_1 = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug661 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.93, i8 1, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: dcb = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug662 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.94, i8 1, i8 -10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: active_tc_bitmap = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug663 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.95, i8 1, i8 -10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: maxtc = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug664 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.96, i8 1, i8 -9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: rss_table_size = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug665 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.97, i8 1, i8 -8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: rss_table_entry_width = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug666 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.98, i8 1, i8 -7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: num_rxq = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug667 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.99, i8 1, i8 -6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: rxq_first_id = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug668 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.100, i8 1, i8 -5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: num_txq = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug669 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.101, i8 1, i8 -4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: txq_first_id = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug670 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.102, i8 1, i8 -3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: num_msix_vectors = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug671 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.103, i8 1, i8 -2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: msix_vector_first_id = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug672 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.104, i8 1, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: update_pending_nvm\0A\00", [40 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug673 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.105, i8 2, i8 0, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: update_pending_orom\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug674 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.106, i8 2, i8 1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: update_pending_netlist\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug675 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.107, i8 2, i8 3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: nvm_unified_update = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug676 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.108, i8 2, i8 4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: rdma = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.109, i8 2, i8 5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: max_mtu = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.110, i8 2, i8 6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: pcie_reset_avoidance = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ice_parse_common_caps.__UNIQUE_ID_ddebug679 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.111, i8 2, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: reset_restrict_support = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_parse_valid_functions_cap.__UNIQUE_ID_ddebug697 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.2, ptr @.str.113, i8 2, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ice_parse_valid_functions_cap\00", [34 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dev caps: num_funcs = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_parse_vf_dev_caps.__UNIQUE_ID_ddebug698 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.2, ptr @.str.115, i8 2, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_parse_vf_dev_caps\00", [42 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dev_caps: num_vfs_exposed = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_parse_vsi_dev_caps.__UNIQUE_ID_ddebug699 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.117, i8 2, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_parse_vsi_dev_caps\00", [41 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dev caps: num_vsi_allocd_to_host = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug700 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.2, ptr @.str.119, i8 2, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_parse_1588_dev_caps\00", [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dev caps: ieee_1588 = %u\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug701 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.2, ptr @.str.120, i8 2, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dev caps: tmr0_owner = %u\0A\00", [37 x i8] zeroinitializer }, align 32
@ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug702 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.2, ptr @.str.121, i8 2, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dev caps: tmr0_owned = %u\0A\00", [37 x i8] zeroinitializer }, align 32
@ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug703 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.2, ptr @.str.122, i8 2, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dev caps: tmr0_ena = %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug704 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.2, ptr @.str.123, i8 2, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dev caps: tmr1_owner = %u\0A\00", [37 x i8] zeroinitializer }, align 32
@ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug705 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.2, ptr @.str.124, i8 2, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dev caps: tmr1_owned = %u\0A\00", [37 x i8] zeroinitializer }, align 32
@ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug706 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.2, ptr @.str.125, i8 2, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dev caps: tmr1_ena = %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug707 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.2, ptr @.str.126, i8 2, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dev caps: ieee_1588 ena_ports = %u\0A\00", [60 x i8] zeroinitializer }, align 32
@ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug708 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.2, ptr @.str.127, i8 2, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dev caps: tmr_own_map = %u\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_parse_fdir_dev_caps.__UNIQUE_ID_ddebug709 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.128, ptr @.str.2, ptr @.str.129, i8 2, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_parse_fdir_dev_caps\00", [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dev caps: num_flow_director_fltr = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ice_recalc_port_limited_caps.__UNIQUE_ID_ddebug680 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.2, ptr @.str.131, i8 2, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ice_recalc_port_limited_caps\00", [35 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"reducing maxtc to %d (based on #ports)\0A\00", [56 x i8] zeroinitializer }, align 32
@ice_recalc_port_limited_caps.__UNIQUE_ID_ddebug681 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.2, ptr @.str.132, i8 2, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"forcing RDMA off\0A\00", [46 x i8] zeroinitializer }, align 32
@ice_recalc_port_limited_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.130, ptr @.str.2, i32 2120, ptr @.str.134, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"RDMA functionality is not available with the current device configuration.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ice_recalc_port_limited_caps._entry_ptr = internal global ptr @ice_recalc_port_limited_caps._entry, section ".printk_index", align 4
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"func caps\00", [22 x i8] zeroinitializer }, align 32
@ice_parse_func_caps.__UNIQUE_ID_ddebug696 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.2, ptr @.str.137, i8 2, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ice_parse_func_caps\00", [44 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"func caps: unknown capability[%d]: 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@ice_parse_vf_func_caps.__UNIQUE_ID_ddebug682 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.138, ptr @.str.2, ptr @.str.139, i8 2, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_parse_vf_func_caps\00", [41 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"func caps: num_allocd_vfs = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_parse_vf_func_caps.__UNIQUE_ID_ddebug683 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.138, ptr @.str.2, ptr @.str.140, i8 2, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"func caps: vf_base_id = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_parse_vsi_func_caps.__UNIQUE_ID_ddebug684 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.2, ptr @.str.142, i8 2, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_parse_vsi_func_caps\00", [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"func caps: guar_num_vsi (fw) = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_parse_vsi_func_caps.__UNIQUE_ID_ddebug685 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.2, ptr @.str.143, i8 2, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"func caps: guar_num_vsi = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ice_parse_1588_func_caps.__UNIQUE_ID_ddebug686 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.145, i8 2, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ice_parse_1588_func_caps\00", [39 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"1588 func caps: unknown clock frequency %u\0A\00", [52 x i8] zeroinitializer }, align 32
@ice_parse_1588_func_caps.__UNIQUE_ID_ddebug687 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.146, i8 2, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"func caps: ieee_1588 = %u\0A\00", [37 x i8] zeroinitializer }, align 32
@ice_parse_1588_func_caps.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.147, i8 2, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"func caps: src_tmr_owned = %u\0A\00", [33 x i8] zeroinitializer }, align 32
@ice_parse_1588_func_caps.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.148, i8 2, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"func caps: tmr_ena = %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_parse_1588_func_caps.__UNIQUE_ID_ddebug690 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.149, i8 2, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"func caps: tmr_index_owned = %u\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_parse_1588_func_caps.__UNIQUE_ID_ddebug691 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.150, i8 2, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"func caps: tmr_index_assoc = %u\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_parse_1588_func_caps.__UNIQUE_ID_ddebug692 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.151, i8 2, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"func caps: clk_freq = %u\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_parse_1588_func_caps.__UNIQUE_ID_ddebug693 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.152, i8 2, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"func caps: clk_src = %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_parse_fdir_func_caps.__UNIQUE_ID_ddebug694 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.2, ptr @.str.154, i8 2, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ice_parse_fdir_func_caps\00", [39 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"func caps: fd_fltr_guar = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ice_parse_fdir_func_caps.__UNIQUE_ID_ddebug695 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.2, ptr @.str.155, i8 2, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"func caps: fd_fltr_best_effort = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ice_aq_dis_lan_txq.__UNIQUE_ID_ddebug721 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.156, ptr @.str.2, ptr @.str.157, i8 3, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_aq_dis_lan_txq\00", [45 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VM%d disable failed %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ice_aq_dis_lan_txq.__UNIQUE_ID_ddebug722 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.156, ptr @.str.2, ptr @.str.158, i8 3, i8 -52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.158 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disable queue %d failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 9, i64 3136, i64 3139]
@__sancov_gen_cov_switch_values.159 = internal global [6 x i64] [i64 4, i64 16, i64 1760, i64 2565, i64 2566, i64 2570]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.162 = internal global [65 x i64] [i64 63, i64 64, i64 1, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648, i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888, i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328, i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968, i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808]
@__sancov_gen_cov_switch_values.163 = internal global [7 x i64] [i64 5, i64 64, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.164 = internal global [27 x i64] [i64 25, i64 16, i64 4684, i64 4685, i64 4686, i64 4687, i64 5405, i64 5521, i64 5522, i64 5523, i64 5529, i64 5530, i64 5531, i64 6282, i64 6283, i64 6284, i64 6285, i64 6286, i64 6288, i64 6289, i64 6290, i64 6291, i64 6292, i64 6295, i64 6296, i64 6297, i64 6298]
@__sancov_gen_cov_switch_values.165 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.166 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.167 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 256, i64 512]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@__sancov_gen_cov_switch_values.169 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 256, i64 512]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@__sancov_gen_cov_switch_values.171 = internal global [7 x i64] [i64 5, i64 16, i64 5, i64 19, i64 23, i64 69, i64 70]
@__sancov_gen_cov_switch_values.172 = internal global [66 x i64] [i64 64, i64 64, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648, i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888, i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328, i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968, i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808]
@__sancov_gen_cov_switch_values.173 = internal global [7 x i64] [i64 5, i64 64, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.175 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.178 = internal global [5 x i64] [i64 3, i64 16, i64 128, i64 512, i64 2048]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.181 = internal global [17 x i64] [i64 15, i64 16, i64 5, i64 18, i64 24, i64 64, i64 65, i64 66, i64 67, i64 71, i64 73, i64 75, i64 77, i64 81, i64 118, i64 119, i64 128]
@__sancov_gen_cov_switch_values.182 = internal global [6 x i64] [i64 4, i64 16, i64 19, i64 23, i64 69, i64 70]
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 207, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 209, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 211, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 213, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 214, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 216, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 217, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 219, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 221, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 223, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 225, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 227, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 229, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 486, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 487, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 492, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 493, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 494, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 495, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 496, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 497, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 498, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 499, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 501, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 869, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 870, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 872, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 935, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 975, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 997, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1007, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1048, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1117, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1136, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1143, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1222, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1226, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant [18 x i8] c"ice_rlan_ctx_info\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1273, i32 33 }
@___asan_gen_.336 = private unnamed_addr constant [18 x i8] c"ice_tlan_ctx_info\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1324, i32 26 }
@___asan_gen_.342 = private unnamed_addr constant [23 x i8] c"ice_global_cfg_lock_sw\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1420, i32 1 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1784, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1802, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1807, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1809, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1939, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2939, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2949, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2959, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3383, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 4146, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 4234, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 4277, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 4356, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 4361, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 4517, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 4757, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 4933, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 4944, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 4955, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 58, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 151, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1195, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1265, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2461, i32 26 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2482, i32 5 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1994, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1999, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2006, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2007, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2009, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2014, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2016, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2022, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2024, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2030, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2032, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2038, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2040, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2045, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2049, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2053, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2059, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2064, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2068, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2073, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2079, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2319, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2338, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2357, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2392, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2394, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2396, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2398, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2400, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2402, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2404, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2406, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2408, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2427, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2109, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2112, i32 4 }
@___asan_gen_.597 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2120, i32 4 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2277, i32 26 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2295, i32 5 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2141, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2143, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2160, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2162, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2199, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2204, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2206, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2208, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2210, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2212, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2214, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2216, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2241, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2243, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3886, i32 4 }
@___asan_gen_.675 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.676 = private constant [47 x i8] c"../drivers/net/ethernet/intel/ice/ice_common.c\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3889, i32 4 }
@llvm.compiler.used = appending global [167 x ptr] [ptr @ice_init_hw._entry, ptr @ice_init_hw._entry_ptr, ptr @ice_recalc_port_limited_caps._entry, ptr @ice_recalc_port_limited_caps._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @ice_init_hw.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @ice_rlan_ctx_info, ptr @ice_tlan_ctx_info, ptr @.str.48, ptr @ice_global_cfg_lock_sw, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158], section "llvm.metadata"
@0 = internal global [165 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_hw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_rlan_ctx_info to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_tlan_ctx_info to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_global_cfg_lock_sw to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_recalc_port_limited_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ice_is_e810(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_type = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ice_is_e810t(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device_id = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5523, i16 %1)
  %cond = icmp eq i16 %1, 5523
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %subsystem_device_id = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 10
  %2 = ptrtoint ptr %subsystem_device_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subsystem_device_id, align 2
  %4 = and i16 %3, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %4)
  %switch = icmp eq i16 %4, 14
  br i1 %switch, label %sw.bb.return_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.return_crit_edge
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %sw.bb.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_clear_pf_cfg(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 676) #12
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_fill_dflt_direct_cmd_desc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef %desc, ptr noundef %buf, i16 noundef zeroext %buf_size, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %opcode = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %opcode, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %entry.sw.default_crit_edge [
    i16 3136, label %entry.sw.epilog_crit_edge
    i16 3139, label %entry.sw.epilog_crit_edge9
    i16 1, label %entry.sw.epilog_crit_edge10
    i16 9, label %sw.bb1
  ]

entry.sw.epilog_crit_edge10:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default

sw.bb1:                                           ; preds = %entry
  %params = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %5)
  %cmp = icmp eq i16 %5, 1024
  br i1 %cmp, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.sw.default_crit_edge

sw.bb1.sw.default_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb1.sw.default_crit_edge, %entry.sw.default_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @ice_global_cfg_lock_sw, i32 noundef 0) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge9, %entry.sw.epilog_crit_edge10
  %lock_acquired.0.off0 = phi i1 [ true, %sw.default ], [ false, %sw.bb1.sw.epilog_crit_edge ], [ false, %entry.sw.epilog_crit_edge ], [ false, %entry.sw.epilog_crit_edge9 ], [ false, %entry.sw.epilog_crit_edge10 ]
  %adminq = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30
  %6 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %opcode, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #12
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.159)
  switch i16 %8, label %sw.epilog.if.end8.i_crit_edge [
    i16 1760, label %sw.epilog.if.then.i_crit_edge
    i16 2565, label %sw.epilog.if.then.i_crit_edge11
    i16 2566, label %sw.epilog.if.then.i_crit_edge12
    i16 2570, label %sw.epilog.if.then.i_crit_edge13
  ]

sw.epilog.if.then.i_crit_edge13:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

sw.epilog.if.then.i_crit_edge12:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

sw.epilog.if.then.i_crit_edge11:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

sw.epilog.if.then.i_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

sw.epilog.if.end8.i_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then.i:                                        ; preds = %sw.epilog.if.then.i_crit_edge, %sw.epilog.if.then.i_crit_edge11, %sw.epilog.if.then.i_crit_edge12, %sw.epilog.if.then.i_crit_edge13
  %tobool2.not.i = icmp eq ptr %buf, null
  br i1 %tobool2.not.i, label %if.then.i.if.end7.i_crit_edge, label %if.end8.i.i.i

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.end8.i.i.i:                                    ; preds = %if.then.i
  %conv.i = zext i16 %buf_size to i32
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv.i, i32 noundef 3520) #15
  %tobool5.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool5.not.i, label %if.end8.i.i.i.ice_sq_send_cmd_retry.exit_crit_edge, label %if.end8.i.i.i.if.end7.i_crit_edge

if.end8.i.i.i.if.end7.i_crit_edge:                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.end8.i.i.i.ice_sq_send_cmd_retry.exit_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_sq_send_cmd_retry.exit

if.end7.i:                                        ; preds = %if.end8.i.i.i.if.end7.i_crit_edge, %if.then.i.if.end7.i_crit_edge
  %buf_cpy.0.i = phi ptr [ %call9.i.i.i, %if.end8.i.i.i.if.end7.i_crit_edge ], [ null, %if.then.i.if.end7.i_crit_edge ]
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %10)
  %desc_cpy.sroa.0.0.copyload.i = load i16, ptr %desc, align 4
  %11 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %11)
  %desc_cpy.sroa.6.0.copyload.i = load i16, ptr %opcode, align 2
  %desc_cpy.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %desc, i32 4
  %12 = ptrtoint ptr %desc_cpy.sroa.7.0..sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %desc_cpy.sroa.7.0.copyload.i = load i16, ptr %desc_cpy.sroa.7.0..sroa_idx.i, align 4
  %desc_cpy.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %desc, i32 6
  %13 = ptrtoint ptr %desc_cpy.sroa.8.0..sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %desc_cpy.sroa.8.0.copyload.i = load i16, ptr %desc_cpy.sroa.8.0..sroa_idx.i, align 2
  %desc_cpy.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %desc, i32 8
  %14 = ptrtoint ptr %desc_cpy.sroa.9.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %desc_cpy.sroa.9.0.copyload.i = load i32, ptr %desc_cpy.sroa.9.0..sroa_idx.i, align 4
  %desc_cpy.sroa.10.0..sroa_idx.i = getelementptr inbounds i8, ptr %desc, i32 12
  %15 = ptrtoint ptr %desc_cpy.sroa.10.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %desc_cpy.sroa.10.0.copyload.i = load i32, ptr %desc_cpy.sroa.10.0..sroa_idx.i, align 4
  %desc_cpy.sroa.11.0..sroa_idx.i = getelementptr inbounds i8, ptr %desc, i32 16
  %16 = ptrtoint ptr %desc_cpy.sroa.11.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %desc_cpy.sroa.11.0.copyload.i = load i32, ptr %desc_cpy.sroa.11.0..sroa_idx.i, align 4
  %desc_cpy.sroa.12.0..sroa_idx.i = getelementptr inbounds i8, ptr %desc, i32 20
  %17 = ptrtoint ptr %desc_cpy.sroa.12.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %desc_cpy.sroa.12.0.copyload.i = load i32, ptr %desc_cpy.sroa.12.0..sroa_idx.i, align 4
  %desc_cpy.sroa.13.0..sroa_idx.i = getelementptr inbounds i8, ptr %desc, i32 24
  %18 = ptrtoint ptr %desc_cpy.sroa.13.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %desc_cpy.sroa.13.0.copyload.i = load i32, ptr %desc_cpy.sroa.13.0..sroa_idx.i, align 4
  %desc_cpy.sroa.14.0..sroa_idx.i = getelementptr inbounds i8, ptr %desc, i32 28
  %19 = ptrtoint ptr %desc_cpy.sroa.14.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %desc_cpy.sroa.14.0.copyload.i = load i32, ptr %desc_cpy.sroa.14.0..sroa_idx.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end7.i, %sw.epilog.if.end8.i_crit_edge
  %retval.0.i62.i = phi i1 [ false, %if.end7.i ], [ true, %sw.epilog.if.end8.i_crit_edge ]
  %desc_cpy.sroa.0.0.i = phi i16 [ %desc_cpy.sroa.0.0.copyload.i, %if.end7.i ], [ 0, %sw.epilog.if.end8.i_crit_edge ]
  %desc_cpy.sroa.6.0.i = phi i16 [ %desc_cpy.sroa.6.0.copyload.i, %if.end7.i ], [ 0, %sw.epilog.if.end8.i_crit_edge ]
  %desc_cpy.sroa.7.0.i = phi i16 [ %desc_cpy.sroa.7.0.copyload.i, %if.end7.i ], [ 0, %sw.epilog.if.end8.i_crit_edge ]
  %desc_cpy.sroa.8.0.i = phi i16 [ %desc_cpy.sroa.8.0.copyload.i, %if.end7.i ], [ 0, %sw.epilog.if.end8.i_crit_edge ]
  %desc_cpy.sroa.9.0.i = phi i32 [ %desc_cpy.sroa.9.0.copyload.i, %if.end7.i ], [ 0, %sw.epilog.if.end8.i_crit_edge ]
  %desc_cpy.sroa.10.0.i = phi i32 [ %desc_cpy.sroa.10.0.copyload.i, %if.end7.i ], [ 0, %sw.epilog.if.end8.i_crit_edge ]
  %desc_cpy.sroa.11.0.i = phi i32 [ %desc_cpy.sroa.11.0.copyload.i, %if.end7.i ], [ 0, %sw.epilog.if.end8.i_crit_edge ]
  %desc_cpy.sroa.12.0.i = phi i32 [ %desc_cpy.sroa.12.0.copyload.i, %if.end7.i ], [ 0, %sw.epilog.if.end8.i_crit_edge ]
  %desc_cpy.sroa.13.0.i = phi i32 [ %desc_cpy.sroa.13.0.copyload.i, %if.end7.i ], [ 0, %sw.epilog.if.end8.i_crit_edge ]
  %desc_cpy.sroa.14.0.i = phi i32 [ %desc_cpy.sroa.14.0.copyload.i, %if.end7.i ], [ 0, %sw.epilog.if.end8.i_crit_edge ]
  %buf_cpy.1.i = phi ptr [ %buf_cpy.0.i, %if.end7.i ], [ null, %sw.epilog.if.end8.i_crit_edge ]
  %sq_last_status.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 8
  %tobool16.not.i = icmp eq ptr %buf_cpy.1.i, null
  %conv18.i = zext i16 %buf_size to i32
  %desc_cpy.sroa.7.0..sroa_idx37.i = getelementptr inbounds i8, ptr %desc, i32 4
  %desc_cpy.sroa.8.0..sroa_idx39.i = getelementptr inbounds i8, ptr %desc, i32 6
  %desc_cpy.sroa.9.0..sroa_idx41.i = getelementptr inbounds i8, ptr %desc, i32 8
  %desc_cpy.sroa.10.0..sroa_idx43.i = getelementptr inbounds i8, ptr %desc, i32 12
  %desc_cpy.sroa.11.0..sroa_idx45.i = getelementptr inbounds i8, ptr %desc, i32 16
  %desc_cpy.sroa.12.0..sroa_idx47.i = getelementptr inbounds i8, ptr %desc, i32 20
  %desc_cpy.sroa.13.0..sroa_idx49.i = getelementptr inbounds i8, ptr %desc, i32 24
  %desc_cpy.sroa.14.0..sroa_idx51.i = getelementptr inbounds i8, ptr %desc, i32 28
  br label %do.body.i

do.body.i:                                        ; preds = %if.end19.i.do.body.i_crit_edge, %if.end8.i
  %idx.0.i = phi i8 [ 0, %if.end8.i ], [ %inc.i, %if.end19.i.do.body.i_crit_edge ]
  %call9.i = tail call i32 @ice_sq_send_cmd(ptr noundef %hw, ptr noundef %adminq, ptr noundef %desc, ptr noundef %buf, i16 noundef zeroext %buf_size, ptr noundef %cd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool11.not.i = icmp eq i32 %call9.i, 0
  %or.cond.i = select i1 %retval.0.i62.i, i1 true, i1 %tobool11.not.i
  br i1 %or.cond.i, label %do.body.i.do.end.i_crit_edge, label %lor.lhs.false12.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

lor.lhs.false12.i:                                ; preds = %do.body.i
  %20 = ptrtoint ptr %sq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sq_last_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 12
  br i1 %cmp.not.i, label %if.end15.i, label %lor.lhs.false12.i.do.end.i_crit_edge

lor.lhs.false12.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.end15.i:                                       ; preds = %lor.lhs.false12.i
  br i1 %tobool16.not.i, label %if.end15.i.if.end19.i_crit_edge, label %if.then17.i

if.end15.i.if.end19.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = call ptr @memcpy(ptr %buf, ptr %buf_cpy.1.i, i32 %conv18.i)
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.end15.i.if.end19.i_crit_edge
  %23 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %desc_cpy.sroa.0.0.i, ptr %desc, align 4
  %24 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %desc_cpy.sroa.6.0.i, ptr %opcode, align 2
  %25 = ptrtoint ptr %desc_cpy.sroa.7.0..sroa_idx37.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %desc_cpy.sroa.7.0.i, ptr %desc_cpy.sroa.7.0..sroa_idx37.i, align 4
  %26 = ptrtoint ptr %desc_cpy.sroa.8.0..sroa_idx39.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %desc_cpy.sroa.8.0.i, ptr %desc_cpy.sroa.8.0..sroa_idx39.i, align 2
  %27 = ptrtoint ptr %desc_cpy.sroa.9.0..sroa_idx41.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %desc_cpy.sroa.9.0.i, ptr %desc_cpy.sroa.9.0..sroa_idx41.i, align 4
  %28 = ptrtoint ptr %desc_cpy.sroa.10.0..sroa_idx43.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %desc_cpy.sroa.10.0.i, ptr %desc_cpy.sroa.10.0..sroa_idx43.i, align 4
  %29 = ptrtoint ptr %desc_cpy.sroa.11.0..sroa_idx45.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %desc_cpy.sroa.11.0.i, ptr %desc_cpy.sroa.11.0..sroa_idx45.i, align 4
  %30 = ptrtoint ptr %desc_cpy.sroa.12.0..sroa_idx47.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %desc_cpy.sroa.12.0.i, ptr %desc_cpy.sroa.12.0..sroa_idx47.i, align 4
  %31 = ptrtoint ptr %desc_cpy.sroa.13.0..sroa_idx49.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %desc_cpy.sroa.13.0.i, ptr %desc_cpy.sroa.13.0..sroa_idx49.i, align 4
  %32 = ptrtoint ptr %desc_cpy.sroa.14.0..sroa_idx51.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %desc_cpy.sroa.14.0.i, ptr %desc_cpy.sroa.14.0..sroa_idx51.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #12
  %inc.i = add nuw nsw i8 %idx.0.i, 1
  %cmp22.i = icmp ult i8 %idx.0.i, 2
  br i1 %cmp22.i, label %if.end19.i.do.body.i_crit_edge, label %if.end19.i.do.end.i_crit_edge

if.end19.i.do.end.i_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.end19.i.do.body.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end.i:                                         ; preds = %if.end19.i.do.end.i_crit_edge, %lor.lhs.false12.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  tail call void @kfree(ptr noundef %buf_cpy.1.i) #12
  br label %ice_sq_send_cmd_retry.exit

ice_sq_send_cmd_retry.exit:                       ; preds = %do.end.i, %if.end8.i.i.i.ice_sq_send_cmd_retry.exit_crit_edge
  %retval.0.i = phi i32 [ %call9.i, %do.end.i ], [ -12, %if.end8.i.i.i.ice_sq_send_cmd_retry.exit_crit_edge ]
  br i1 %lock_acquired.0.off0, label %if.then4, label %ice_sq_send_cmd_retry.exit.if.end5_crit_edge

ice_sq_send_cmd_retry.exit.if.end5_crit_edge:     ; preds = %ice_sq_send_cmd_retry.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %ice_sq_send_cmd_retry.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @ice_global_cfg_lock_sw) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %ice_sq_send_cmd_retry.exit.if.end5_crit_edge
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_get_phy_caps(ptr noundef %pi, i1 noundef zeroext %qual_mods, i8 noundef zeroext %report_mode, ptr noundef %pcaps, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %tobool.not = icmp eq ptr %pcaps, null
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i8 %report_mode to i32
  %and = and i32 %conv, 241
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp ne i32 %and, 0
  %tobool3.not = icmp eq ptr %pi, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hw4 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %report_mode)
  %cmp = icmp eq i8 %report_mode, 8
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %api_maj_ver.i = getelementptr inbounds %struct.ice_hw, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %api_maj_ver.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %api_maj_ver.i, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.160)
  switch i8 %5, label %land.lhs.true.if.end8_crit_edge [
    i8 1, label %if.then.i
    i8 0, label %land.lhs.true.cleanup_crit_edge
  ]

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then.i:                                        ; preds = %land.lhs.true
  %api_min_ver.i = getelementptr inbounds %struct.ice_hw, ptr %3, i32 0, i32 35
  %7 = ptrtoint ptr %api_min_ver.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %api_min_ver.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %8)
  %cmp3.i = icmp ugt i8 %8, 7
  br i1 %cmp3.i, label %if.then.i.if.end8_crit_edge, label %if.end.i

if.then.i.if.end8_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %8)
  %cmp8.i = icmp eq i8 %8, 7
  br i1 %cmp8.i, label %land.lhs.true.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %api_patch.i = getelementptr inbounds %struct.ice_hw, ptr %3, i32 0, i32 36
  %9 = ptrtoint ptr %api_patch.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %api_patch.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp11.i = icmp ugt i8 %10, 2
  br i1 %cmp11.i, label %land.lhs.true.i.if.end8_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i.if.end8_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.i.if.end8_crit_edge, %if.then.i.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1536) #12
  br i1 %qual_mods, label %if.then10, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %param0 = getelementptr inbounds %struct.ice_aqc_get_phy_caps, ptr %0, i32 0, i32 2
  %11 = ptrtoint ptr %param0 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %param0, align 2
  %13 = or i16 %12, 256
  store i16 %13, ptr %param0, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %conv14 = zext i8 %report_mode to i16
  %14 = shl nuw i16 %conv14, 8
  %param016 = getelementptr inbounds %struct.ice_aqc_get_phy_caps, ptr %0, i32 0, i32 2
  %15 = ptrtoint ptr %param016 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %param016, align 2
  %or18 = or i16 %16, %14
  store i16 %or18, ptr %param016, align 2
  %call20 = call i32 @ice_aq_send_cmd(ptr noundef %3, ptr noundef nonnull %desc, ptr noundef nonnull %pcaps, i16 noundef zeroext 560, ptr noundef %cd)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_phy_caps, %if.then26)) #12
          to label %do.body30 [label %if.then26], !srcloc !428

if.then26:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %3, i32 -2960
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug615, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %conv) #12
  br label %do.body30

do.body30:                                        ; preds = %if.then26, %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_phy_caps, %if.then42)) #12
          to label %do.body51 [label %if.then42], !srcloc !428

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr45 = getelementptr i8, ptr %3, i32 -2960
  %19 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr45, align 8
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %pcaps to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pcaps, align 8
  %23 = call i64 @llvm.bswap.i64(i64 %22)
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug616, ptr noundef %dev47, ptr noundef nonnull @.str.4, i64 noundef %23) #12
  br label %do.body51

do.body51:                                        ; preds = %if.then42, %do.body30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_phy_caps, %if.then63)) #12
          to label %do.body72 [label %if.then63], !srcloc !428

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr66 = getelementptr i8, ptr %3, i32 -2960
  %24 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr66, align 8
  %dev68 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %phy_type_high = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %pcaps, i32 0, i32 1
  %26 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %phy_type_high, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27)
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug617, ptr noundef %dev68, ptr noundef nonnull @.str.5, i64 noundef %28) #12
  br label %do.body72

do.body72:                                        ; preds = %if.then63, %do.body51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_phy_caps, %if.then84)) #12
          to label %do.body94 [label %if.then84], !srcloc !428

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr87 = getelementptr i8, ptr %3, i32 -2960
  %29 = ptrtoint ptr %add.ptr87 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr87, align 8
  %dev89 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %caps = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %pcaps, i32 0, i32 2
  %31 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %caps, align 8
  %conv90 = zext i8 %32 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug618, ptr noundef %dev89, ptr noundef nonnull @.str.6, i32 noundef %conv90) #12
  br label %do.body94

do.body94:                                        ; preds = %if.then84, %do.body72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_phy_caps, %if.then106)) #12
          to label %do.body116 [label %if.then106], !srcloc !428

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr109 = getelementptr i8, ptr %3, i32 -2960
  %33 = ptrtoint ptr %add.ptr109 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr109, align 8
  %dev111 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %low_power_ctrl_an = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %pcaps, i32 0, i32 3
  %35 = ptrtoint ptr %low_power_ctrl_an to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %low_power_ctrl_an, align 1
  %conv112 = zext i8 %36 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug619, ptr noundef %dev111, ptr noundef nonnull @.str.7, i32 noundef %conv112) #12
  br label %do.body116

do.body116:                                       ; preds = %if.then106, %do.body94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_phy_caps, %if.then128)) #12
          to label %do.body138 [label %if.then128], !srcloc !428

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr131 = getelementptr i8, ptr %3, i32 -2960
  %37 = ptrtoint ptr %add.ptr131 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr131, align 8
  %dev133 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %eee_cap = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %pcaps, i32 0, i32 4
  %39 = ptrtoint ptr %eee_cap to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %eee_cap, align 2
  %conv134 = zext i16 %40 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug620, ptr noundef %dev133, ptr noundef nonnull @.str.8, i32 noundef %conv134) #12
  br label %do.body138

do.body138:                                       ; preds = %if.then128, %do.body116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_phy_caps, %if.then150)) #12
          to label %do.body160 [label %if.then150], !srcloc !428

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr153 = getelementptr i8, ptr %3, i32 -2960
  %41 = ptrtoint ptr %add.ptr153 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr153, align 8
  %dev155 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %eeer_value = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %pcaps, i32 0, i32 5
  %43 = ptrtoint ptr %eeer_value to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %eeer_value, align 4
  %conv156 = zext i16 %44 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug621, ptr noundef %dev155, ptr noundef nonnull @.str.9, i32 noundef %conv156) #12
  br label %do.body160

do.body160:                                       ; preds = %if.then150, %do.body138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_phy_caps, %if.then172)) #12
          to label %do.body182 [label %if.then172], !srcloc !428

if.then172:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr175 = getelementptr i8, ptr %3, i32 -2960
  %45 = ptrtoint ptr %add.ptr175 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr175, align 8
  %dev177 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %link_fec_options = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %pcaps, i32 0, i32 8
  %47 = ptrtoint ptr %link_fec_options to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %link_fec_options, align 2
  %conv178 = zext i8 %48 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug622, ptr noundef %dev177, ptr noundef nonnull @.str.10, i32 noundef %conv178) #12
  br label %do.body182

do.body182:                                       ; preds = %if.then172, %do.body160
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_phy_caps, %if.then194)) #12
          to label %do.body204 [label %if.then194], !srcloc !428

if.then194:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr197 = getelementptr i8, ptr %3, i32 -2960
  %49 = ptrtoint ptr %add.ptr197 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr197, align 8
  %dev199 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %module_compliance_enforcement = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %pcaps, i32 0, i32 9
  %51 = ptrtoint ptr %module_compliance_enforcement to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %module_compliance_enforcement, align 1
  %conv200 = zext i8 %52 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug623, ptr noundef %dev199, ptr noundef nonnull @.str.11, i32 noundef %conv200) #12
  br label %do.body204

do.body204:                                       ; preds = %if.then194, %do.body182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_phy_caps, %if.then216)) #12
          to label %do.body226 [label %if.then216], !srcloc !428

if.then216:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr219 = getelementptr i8, ptr %3, i32 -2960
  %53 = ptrtoint ptr %add.ptr219 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr219, align 8
  %dev221 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %extended_compliance_code = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %pcaps, i32 0, i32 10
  %55 = ptrtoint ptr %extended_compliance_code to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %extended_compliance_code, align 4
  %conv222 = zext i8 %56 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug624, ptr noundef %dev221, ptr noundef nonnull @.str.12, i32 noundef %conv222) #12
  br label %do.body226

do.body226:                                       ; preds = %if.then216, %do.body204
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_phy_caps, %if.then238)) #12
          to label %do.body248 [label %if.then238], !srcloc !428

if.then238:                                       ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr241 = getelementptr i8, ptr %3, i32 -2960
  %57 = ptrtoint ptr %add.ptr241 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr241, align 8
  %dev243 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %module_type = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %pcaps, i32 0, i32 11
  %59 = ptrtoint ptr %module_type to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %module_type, align 1
  %conv244 = zext i8 %60 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug625, ptr noundef %dev243, ptr noundef nonnull @.str.13, i32 noundef %conv244) #12
  br label %do.body248

do.body248:                                       ; preds = %if.then238, %do.body226
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_phy_caps, %if.then260)) #12
          to label %do.body272 [label %if.then260], !srcloc !428

if.then260:                                       ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr263 = getelementptr i8, ptr %3, i32 -2960
  %61 = ptrtoint ptr %add.ptr263 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr263, align 8
  %dev265 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %arrayidx267 = getelementptr %struct.ice_aqc_get_phy_caps_data, ptr %pcaps, i32 0, i32 11, i32 1
  %63 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx267, align 1
  %conv268 = zext i8 %64 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug626, ptr noundef %dev265, ptr noundef nonnull @.str.14, i32 noundef %conv268) #12
  br label %do.body272

do.body272:                                       ; preds = %if.then260, %do.body248
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_phy_caps, %if.then284)) #12
          to label %do.end295 [label %if.then284], !srcloc !428

if.then284:                                       ; preds = %do.body272
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr287 = getelementptr i8, ptr %3, i32 -2960
  %65 = ptrtoint ptr %add.ptr287 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr287, align 8
  %dev289 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %arrayidx291 = getelementptr %struct.ice_aqc_get_phy_caps_data, ptr %pcaps, i32 0, i32 11, i32 2
  %67 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx291, align 1
  %conv292 = zext i8 %68 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug627, ptr noundef %dev289, ptr noundef nonnull @.str.15, i32 noundef %conv292) #12
  br label %do.end295

do.end295:                                        ; preds = %if.then284, %do.body272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool296.not = icmp eq i32 %call20, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %report_mode)
  %cmp299 = icmp eq i8 %report_mode, 2
  %or.cond355 = and i1 %cmp299, %tobool296.not
  br i1 %or.cond355, label %if.then301, label %do.end295.cleanup_crit_edge

do.end295.cleanup_crit_edge:                      ; preds = %do.end295
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then301:                                       ; preds = %do.end295
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %pcaps to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %pcaps, align 8
  %71 = call i64 @llvm.bswap.i64(i64 %70)
  %phy_type_low303 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 2
  %72 = ptrtoint ptr %phy_type_low303 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %phy_type_low303, align 8
  %phy_type_high304 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %pcaps, i32 0, i32 1
  %73 = ptrtoint ptr %phy_type_high304 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %phy_type_high304, align 8
  %75 = call i64 @llvm.bswap.i64(i64 %74)
  %phy_type_high306 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 3
  %76 = ptrtoint ptr %phy_type_high306 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %phy_type_high306, align 8
  %module_type308 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 0, i32 13
  %module_type309 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %pcaps, i32 0, i32 11
  %77 = call ptr @memcpy(ptr %module_type308, ptr %module_type309, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.then301, %do.end295.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then301 ], [ %call20, %do.end295.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ice_fw_supports_report_dflt_cfg(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %api_maj_ver = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 34
  %0 = ptrtoint ptr %api_maj_ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %api_maj_ver, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.161)
  switch i8 %1, label %entry.return_crit_edge [
    i8 1, label %if.then
    i8 0, label %entry.if.end21_crit_edge
  ]

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %entry
  %api_min_ver = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 35
  %3 = ptrtoint ptr %api_min_ver to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %api_min_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %cmp3 = icmp ugt i8 %4, 7
  br i1 %cmp3, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %cmp8 = icmp eq i8 %4, 7
  br i1 %cmp8, label %land.lhs.true, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end
  %api_patch = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 36
  %5 = ptrtoint ptr %api_patch to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %api_patch, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp11 = icmp ugt i8 %6, 2
  br i1 %cmp11, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %if.end.if.end21_crit_edge, %entry.if.end21_crit_edge
  br label %return

return:                                           ; preds = %if.end21, %land.lhs.true.return_crit_edge, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end21 ], [ true, %if.then.return_crit_edge ], [ true, %land.lhs.true.return_crit_edge ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_get_link_info(ptr noundef %pi, i1 noundef zeroext %ena_lse, ptr noundef writeonly %link, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc.i.i45.i = alloca %struct.ice_aq_desc, align 4
  %desc.i.i.i = alloca %struct.ice_aq_desc, align 4
  %link_data = alloca %struct.ice_aqc_get_link_status_data, align 8
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %link_data) #12
  %0 = call ptr @memset(ptr %link_data, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %tobool.not = icmp eq ptr %pi, null
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %hw1 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw1, align 4
  %phy = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13
  %media_type = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 4
  %fc = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 11
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1543) #12
  %conv = select i1 %ena_lse, i16 768, i16 512
  %cmd_flags5 = getelementptr inbounds %struct.ice_aqc_get_link_status, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %cmd_flags5 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %cmd_flags5, align 2
  %lport = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 6
  %6 = ptrtoint ptr %lport to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lport, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %2, align 4
  %call = call i32 @ice_aq_send_cmd(ptr noundef %4, ptr noundef nonnull %desc, ptr noundef nonnull %link_data, i16 noundef zeroext 32, ptr noundef %cd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %link_info_old = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 1
  %9 = call ptr @memcpy(ptr %link_info_old, ptr %phy, i32 40)
  %link_speed = getelementptr inbounds %struct.ice_aqc_get_link_status_data, ptr %link_data, i32 0, i32 9
  %10 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %link_speed, align 2
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %link_speed9 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 0, i32 4
  %13 = ptrtoint ptr %link_speed9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %link_speed9, align 4
  %phy_type_low = getelementptr inbounds %struct.ice_aqc_get_link_status_data, ptr %link_data, i32 0, i32 11
  %14 = ptrtoint ptr %phy_type_low to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %phy_type_low, align 8
  %16 = call i64 @llvm.bswap.i64(i64 %15)
  %17 = ptrtoint ptr %phy to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %phy, align 8
  %phy_type_high = getelementptr inbounds %struct.ice_aqc_get_link_status_data, ptr %link_data, i32 0, i32 12
  %18 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %phy_type_high, align 8
  %20 = call i64 @llvm.bswap.i64(i64 %19)
  %phy_type_high11 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 0, i32 1
  %21 = ptrtoint ptr %phy_type_high11 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %phy_type_high11, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool1.not.i = icmp eq i64 %15, 0
  br i1 %tobool1.not.i, label %if.else.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool2.not.i = icmp eq i64 %19, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %land.lhs.true.i.ice_get_media_type.exit_crit_edge

land.lhs.true.i.ice_get_media_type.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.162)
  switch i64 %16, label %if.end4.i.if.end34.i_crit_edge [
    i64 64, label %land.lhs.true9.i
    i64 8, label %if.end4.i.ice_get_media_type.exit_crit_edge
    i64 16, label %if.end4.i.ice_get_media_type.exit_crit_edge466
    i64 16384, label %if.end4.i.ice_get_media_type.exit_crit_edge467
    i64 32768, label %if.end4.i.ice_get_media_type.exit_crit_edge468
    i64 262144, label %if.end4.i.ice_get_media_type.exit_crit_edge469
    i64 8388608, label %if.end4.i.ice_get_media_type.exit_crit_edge470
    i64 16777216, label %if.end4.i.ice_get_media_type.exit_crit_edge471
    i64 2147483648, label %if.end4.i.ice_get_media_type.exit_crit_edge472
    i64 4294967296, label %if.end4.i.ice_get_media_type.exit_crit_edge473
    i64 137438953472, label %if.end4.i.ice_get_media_type.exit_crit_edge474
    i64 274877906944, label %if.end4.i.ice_get_media_type.exit_crit_edge475
    i64 35184372088832, label %if.end4.i.ice_get_media_type.exit_crit_edge476
    i64 70368744177664, label %if.end4.i.ice_get_media_type.exit_crit_edge477
    i64 140737488355328, label %if.end4.i.ice_get_media_type.exit_crit_edge478
    i64 4503599627370496, label %if.end4.i.ice_get_media_type.exit_crit_edge479
    i64 9007199254740992, label %if.end4.i.ice_get_media_type.exit_crit_edge480
    i64 4611686018427387904, label %if.end4.i.ice_get_media_type.exit_crit_edge481
    i64 -9223372036854775808, label %if.end4.i.ice_get_media_type.exit_crit_edge482
    i64 131072, label %if.end4.i.ice_get_media_type.exit_crit_edge483
    i64 268435456, label %if.end4.i.ice_get_media_type.exit_crit_edge484
    i64 17179869184, label %if.end4.i.ice_get_media_type.exit_crit_edge485
    i64 1099511627776, label %if.end4.i.ice_get_media_type.exit_crit_edge486
    i64 4398046511104, label %if.end4.i.ice_get_media_type.exit_crit_edge487
    i64 562949953421312, label %if.end4.i.ice_get_media_type.exit_crit_edge488
    i64 36028797018963968, label %if.end4.i.ice_get_media_type.exit_crit_edge489
    i64 144115188075855872, label %if.end4.i.ice_get_media_type.exit_crit_edge490
    i64 1, label %if.end4.i.sw.bb20.i_crit_edge
    i64 4, label %if.end4.i.sw.bb20.i_crit_edge491
    i64 128, label %if.end4.i.sw.bb20.i_crit_edge492
    i64 1024, label %if.end4.i.sw.bb20.i_crit_edge493
    i64 4096, label %if.end4.i.sw.bb20.i_crit_edge494
    i64 524288, label %if.end4.i.sw.bb20.i_crit_edge495
    i64 8192, label %if.end4.i.sw.bb21.i_crit_edge
    i64 1048576, label %if.end4.i.sw.bb21.i_crit_edge496
    i64 2097152, label %if.end4.i.sw.bb21.i_crit_edge497
    i64 4194304, label %if.end4.i.sw.bb21.i_crit_edge498
    i64 1073741824, label %if.end4.i.sw.bb21.i_crit_edge499
    i64 68719476736, label %if.end4.i.sw.bb21.i_crit_edge500
    i64 17592186044416, label %if.end4.i.sw.bb21.i_crit_edge501
    i64 2251799813685248, label %if.end4.i.sw.bb21.i_crit_edge502
    i64 576460752303423488, label %if.end4.i.sw.bb21.i_crit_edge503
    i64 2305843009213693952, label %if.end4.i.sw.bb21.i_crit_edge504
    i64 536870912, label %if.end4.i.sw.bb22.i_crit_edge
    i64 34359738368, label %if.end4.i.sw.bb22.i_crit_edge505
    i64 2199023255552, label %if.end4.i.sw.bb22.i_crit_edge506
    i64 8796093022208, label %if.end4.i.sw.bb22.i_crit_edge507
    i64 1125899906842624, label %if.end4.i.sw.bb22.i_crit_edge508
    i64 288230376151711744, label %if.end4.i.sw.bb22.i_crit_edge509
    i64 72057594037927936, label %if.end4.i.sw.bb22.i_crit_edge510
    i64 32, label %if.end4.i.sw.bb25.i_crit_edge
    i64 512, label %if.end4.i.sw.bb25.i_crit_edge511
    i64 256, label %if.end4.i.sw.bb25.i_crit_edge512
    i64 2048, label %if.end4.i.sw.bb25.i_crit_edge513
    i64 65536, label %if.end4.i.sw.bb25.i_crit_edge514
    i64 33554432, label %if.end4.i.sw.bb25.i_crit_edge515
    i64 134217728, label %if.end4.i.sw.bb25.i_crit_edge516
    i64 67108864, label %if.end4.i.sw.bb25.i_crit_edge517
    i64 8589934592, label %if.end4.i.sw.bb25.i_crit_edge518
    i64 281474976710656, label %if.end4.i.sw.bb25.i_crit_edge519
    i64 549755813888, label %if.end4.i.sw.bb25.i_crit_edge520
    i64 18014398509481984, label %if.end4.i.sw.bb25.i_crit_edge521
    i64 1152921504606846976, label %if.end4.i.sw.bb25.i_crit_edge522
  ]

if.end4.i.sw.bb25.i_crit_edge522:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25.i

if.end4.i.sw.bb25.i_crit_edge521:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25.i

if.end4.i.sw.bb25.i_crit_edge520:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25.i

if.end4.i.sw.bb25.i_crit_edge519:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25.i

if.end4.i.sw.bb25.i_crit_edge518:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25.i

if.end4.i.sw.bb25.i_crit_edge517:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25.i

if.end4.i.sw.bb25.i_crit_edge516:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25.i

if.end4.i.sw.bb25.i_crit_edge515:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25.i

if.end4.i.sw.bb25.i_crit_edge514:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25.i

if.end4.i.sw.bb25.i_crit_edge513:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25.i

if.end4.i.sw.bb25.i_crit_edge512:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25.i

if.end4.i.sw.bb25.i_crit_edge511:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25.i

if.end4.i.sw.bb25.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25.i

if.end4.i.sw.bb22.i_crit_edge510:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb22.i

if.end4.i.sw.bb22.i_crit_edge509:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb22.i

if.end4.i.sw.bb22.i_crit_edge508:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb22.i

if.end4.i.sw.bb22.i_crit_edge507:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb22.i

if.end4.i.sw.bb22.i_crit_edge506:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb22.i

if.end4.i.sw.bb22.i_crit_edge505:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb22.i

if.end4.i.sw.bb22.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb22.i

if.end4.i.sw.bb21.i_crit_edge504:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21.i

if.end4.i.sw.bb21.i_crit_edge503:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21.i

if.end4.i.sw.bb21.i_crit_edge502:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21.i

if.end4.i.sw.bb21.i_crit_edge501:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21.i

if.end4.i.sw.bb21.i_crit_edge500:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21.i

if.end4.i.sw.bb21.i_crit_edge499:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21.i

if.end4.i.sw.bb21.i_crit_edge498:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21.i

if.end4.i.sw.bb21.i_crit_edge497:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21.i

if.end4.i.sw.bb21.i_crit_edge496:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21.i

if.end4.i.sw.bb21.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21.i

if.end4.i.sw.bb20.i_crit_edge495:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb20.i

if.end4.i.sw.bb20.i_crit_edge494:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb20.i

if.end4.i.sw.bb20.i_crit_edge493:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb20.i

if.end4.i.sw.bb20.i_crit_edge492:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb20.i

if.end4.i.sw.bb20.i_crit_edge491:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb20.i

if.end4.i.sw.bb20.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb20.i

if.end4.i.ice_get_media_type.exit_crit_edge490:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge489:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge488:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge487:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge486:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge485:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge484:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge483:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge482:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge481:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge480:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge479:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge478:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge477:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge476:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge475:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge474:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge473:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge472:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge471:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge470:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge469:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge468:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge467:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge466:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.ice_get_media_type.exit_crit_edge:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.end4.i.if.end34.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

land.lhs.true9.i:                                 ; preds = %if.end4.i
  %arrayidx.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 0, i32 13, i32 1
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %.off.i = add i8 %23, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %land.lhs.true9.i.ice_get_media_type.exit_crit_edge, label %land.lhs.true9.i.if.end34.i_crit_edge

land.lhs.true9.i.if.end34.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

land.lhs.true9.i.ice_get_media_type.exit_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

sw.bb20.i:                                        ; preds = %if.end4.i.sw.bb20.i_crit_edge, %if.end4.i.sw.bb20.i_crit_edge491, %if.end4.i.sw.bb20.i_crit_edge492, %if.end4.i.sw.bb20.i_crit_edge493, %if.end4.i.sw.bb20.i_crit_edge494, %if.end4.i.sw.bb20.i_crit_edge495
  br label %ice_get_media_type.exit

sw.bb21.i:                                        ; preds = %if.end4.i.sw.bb21.i_crit_edge, %if.end4.i.sw.bb21.i_crit_edge496, %if.end4.i.sw.bb21.i_crit_edge497, %if.end4.i.sw.bb21.i_crit_edge498, %if.end4.i.sw.bb21.i_crit_edge499, %if.end4.i.sw.bb21.i_crit_edge500, %if.end4.i.sw.bb21.i_crit_edge501, %if.end4.i.sw.bb21.i_crit_edge502, %if.end4.i.sw.bb21.i_crit_edge503, %if.end4.i.sw.bb21.i_crit_edge504
  br label %ice_get_media_type.exit

sw.bb22.i:                                        ; preds = %if.end4.i.sw.bb22.i_crit_edge, %if.end4.i.sw.bb22.i_crit_edge505, %if.end4.i.sw.bb22.i_crit_edge506, %if.end4.i.sw.bb22.i_crit_edge507, %if.end4.i.sw.bb22.i_crit_edge508, %if.end4.i.sw.bb22.i_crit_edge509, %if.end4.i.sw.bb22.i_crit_edge510
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i) #12
  %24 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i.i, i32 0, i32 6
  %25 = call ptr @memset(ptr %desc.i.i.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i.i, i16 noundef zeroext 1760) #12
  %node_type_ctx.i.i.i = getelementptr inbounds %struct.ice_aqc_link_topo_params, ptr %24, i32 0, i32 2
  %26 = ptrtoint ptr %node_type_ctx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 38, ptr %node_type_ctx.i.i.i, align 2
  %27 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw1, align 4
  %call.i.i.i = call i32 @ice_aq_send_cmd(ptr noundef %28, ptr noundef nonnull %desc.i.i.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb22.i.ice_get_media_type.exit_crit_edge, label %sw.bb22.i.sw.bb25.i_crit_edge

sw.bb22.i.sw.bb25.i_crit_edge:                    ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25.i

sw.bb22.i.ice_get_media_type.exit_crit_edge:      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

sw.bb25.i:                                        ; preds = %sw.bb22.i.sw.bb25.i_crit_edge, %if.end4.i.sw.bb25.i_crit_edge, %if.end4.i.sw.bb25.i_crit_edge511, %if.end4.i.sw.bb25.i_crit_edge512, %if.end4.i.sw.bb25.i_crit_edge513, %if.end4.i.sw.bb25.i_crit_edge514, %if.end4.i.sw.bb25.i_crit_edge515, %if.end4.i.sw.bb25.i_crit_edge516, %if.end4.i.sw.bb25.i_crit_edge517, %if.end4.i.sw.bb25.i_crit_edge518, %if.end4.i.sw.bb25.i_crit_edge519, %if.end4.i.sw.bb25.i_crit_edge520, %if.end4.i.sw.bb25.i_crit_edge521, %if.end4.i.sw.bb25.i_crit_edge522
  br label %ice_get_media_type.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.163)
  switch i64 %20, label %if.else.i.if.end34.i_crit_edge [
    i64 16, label %if.else.i.sw.bb27.i_crit_edge
    i64 4, label %if.else.i.sw.bb27.i_crit_edge523
    i64 1, label %if.else.i.sw.bb31.i_crit_edge
    i64 2, label %if.else.i.ice_get_media_type.exit_crit_edge
    i64 8, label %if.else.i.ice_get_media_type.exit_crit_edge524
  ]

if.else.i.ice_get_media_type.exit_crit_edge524:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.else.i.ice_get_media_type.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

if.else.i.sw.bb31.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb31.i

if.else.i.sw.bb27.i_crit_edge523:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb27.i

if.else.i.sw.bb27.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb27.i

if.else.i.if.end34.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

sw.bb27.i:                                        ; preds = %if.else.i.sw.bb27.i_crit_edge, %if.else.i.sw.bb27.i_crit_edge523
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i45.i) #12
  %29 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i45.i, i32 0, i32 6
  %30 = call ptr @memset(ptr %desc.i.i45.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i45.i, i16 noundef zeroext 1760) #12
  %node_type_ctx.i.i46.i = getelementptr inbounds %struct.ice_aqc_link_topo_params, ptr %29, i32 0, i32 2
  %31 = ptrtoint ptr %node_type_ctx.i.i46.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 38, ptr %node_type_ctx.i.i46.i, align 2
  %32 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw1, align 4
  %call.i.i48.i = call i32 @ice_aq_send_cmd(ptr noundef %33, ptr noundef nonnull %desc.i.i45.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i45.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48.i)
  %tobool.not.i49.i = icmp eq i32 %call.i.i48.i, 0
  br i1 %tobool.not.i49.i, label %sw.bb27.i.ice_get_media_type.exit_crit_edge, label %sw.bb27.i.sw.bb31.i_crit_edge

sw.bb27.i.sw.bb31.i_crit_edge:                    ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb31.i

sw.bb27.i.ice_get_media_type.exit_crit_edge:      ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_media_type.exit

sw.bb31.i:                                        ; preds = %sw.bb27.i.sw.bb31.i_crit_edge, %if.else.i.sw.bb31.i_crit_edge
  br label %ice_get_media_type.exit

if.end34.i:                                       ; preds = %if.else.i.if.end34.i_crit_edge, %land.lhs.true9.i.if.end34.i_crit_edge, %if.end4.i.if.end34.i_crit_edge
  br label %ice_get_media_type.exit

ice_get_media_type.exit:                          ; preds = %if.end34.i, %sw.bb31.i, %sw.bb27.i.ice_get_media_type.exit_crit_edge, %if.else.i.ice_get_media_type.exit_crit_edge, %if.else.i.ice_get_media_type.exit_crit_edge524, %sw.bb25.i, %sw.bb22.i.ice_get_media_type.exit_crit_edge, %sw.bb21.i, %sw.bb20.i, %land.lhs.true9.i.ice_get_media_type.exit_crit_edge, %if.end4.i.ice_get_media_type.exit_crit_edge, %if.end4.i.ice_get_media_type.exit_crit_edge466, %if.end4.i.ice_get_media_type.exit_crit_edge467, %if.end4.i.ice_get_media_type.exit_crit_edge468, %if.end4.i.ice_get_media_type.exit_crit_edge469, %if.end4.i.ice_get_media_type.exit_crit_edge470, %if.end4.i.ice_get_media_type.exit_crit_edge471, %if.end4.i.ice_get_media_type.exit_crit_edge472, %if.end4.i.ice_get_media_type.exit_crit_edge473, %if.end4.i.ice_get_media_type.exit_crit_edge474, %if.end4.i.ice_get_media_type.exit_crit_edge475, %if.end4.i.ice_get_media_type.exit_crit_edge476, %if.end4.i.ice_get_media_type.exit_crit_edge477, %if.end4.i.ice_get_media_type.exit_crit_edge478, %if.end4.i.ice_get_media_type.exit_crit_edge479, %if.end4.i.ice_get_media_type.exit_crit_edge480, %if.end4.i.ice_get_media_type.exit_crit_edge481, %if.end4.i.ice_get_media_type.exit_crit_edge482, %if.end4.i.ice_get_media_type.exit_crit_edge483, %if.end4.i.ice_get_media_type.exit_crit_edge484, %if.end4.i.ice_get_media_type.exit_crit_edge485, %if.end4.i.ice_get_media_type.exit_crit_edge486, %if.end4.i.ice_get_media_type.exit_crit_edge487, %if.end4.i.ice_get_media_type.exit_crit_edge488, %if.end4.i.ice_get_media_type.exit_crit_edge489, %if.end4.i.ice_get_media_type.exit_crit_edge490, %land.lhs.true.i.ice_get_media_type.exit_crit_edge
  %retval.0.i452 = phi i32 [ 0, %if.end34.i ], [ 3, %sw.bb25.i ], [ 4, %sw.bb21.i ], [ 2, %sw.bb20.i ], [ 3, %sw.bb31.i ], [ 0, %land.lhs.true.i.ice_get_media_type.exit_crit_edge ], [ 4, %land.lhs.true9.i.ice_get_media_type.exit_crit_edge ], [ 4, %sw.bb22.i.ice_get_media_type.exit_crit_edge ], [ 4, %sw.bb27.i.ice_get_media_type.exit_crit_edge ], [ 1, %if.else.i.ice_get_media_type.exit_crit_edge ], [ 1, %if.else.i.ice_get_media_type.exit_crit_edge524 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge466 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge467 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge468 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge469 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge470 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge471 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge472 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge473 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge474 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge475 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge476 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge477 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge478 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge479 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge480 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge481 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge482 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge483 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge484 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge485 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge486 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge487 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge488 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge489 ], [ 1, %if.end4.i.ice_get_media_type.exit_crit_edge490 ]
  %34 = ptrtoint ptr %media_type to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i452, ptr %media_type, align 4
  %link_info13 = getelementptr inbounds %struct.ice_aqc_get_link_status_data, ptr %link_data, i32 0, i32 2
  %35 = ptrtoint ptr %link_info13 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %link_info13, align 2
  %link_info14 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 0, i32 8
  %37 = ptrtoint ptr %link_info14 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %link_info14, align 2
  %link_cfg_err = getelementptr inbounds %struct.ice_aqc_get_link_status_data, ptr %link_data, i32 0, i32 1
  %38 = ptrtoint ptr %link_cfg_err to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %link_cfg_err, align 1
  %link_cfg_err15 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 0, i32 6
  %40 = ptrtoint ptr %link_cfg_err15 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %link_cfg_err15, align 8
  %an_info = getelementptr inbounds %struct.ice_aqc_get_link_status_data, ptr %link_data, i32 0, i32 3
  %41 = ptrtoint ptr %an_info to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %an_info, align 1
  %an_info16 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 0, i32 9
  %43 = ptrtoint ptr %an_info16 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %an_info16, align 1
  %ext_info = getelementptr inbounds %struct.ice_aqc_get_link_status_data, ptr %link_data, i32 0, i32 4
  %44 = ptrtoint ptr %ext_info to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ext_info, align 4
  %ext_info17 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 0, i32 10
  %46 = ptrtoint ptr %ext_info17 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %ext_info17, align 4
  %max_frame_size = getelementptr inbounds %struct.ice_aqc_get_link_status_data, ptr %link_data, i32 0, i32 6
  %47 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %max_frame_size, align 2
  %49 = call i16 @llvm.bswap.i16(i16 %48)
  %max_frame_size18 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 0, i32 3
  %50 = ptrtoint ptr %max_frame_size18 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %max_frame_size18, align 2
  %cfg = getelementptr inbounds %struct.ice_aqc_get_link_status_data, ptr %link_data, i32 0, i32 7
  %51 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cfg, align 8
  %53 = and i8 %52, 7
  %fec_info = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 0, i32 11
  %54 = ptrtoint ptr %fec_info to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %fec_info, align 1
  %55 = ptrtoint ptr %link_data to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %link_data, align 8
  %topo_media_conflict21 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 0, i32 2
  %57 = ptrtoint ptr %topo_media_conflict21 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %topo_media_conflict21, align 8
  %58 = and i8 %52, -8
  %pacing = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 0, i32 12
  %59 = ptrtoint ptr %pacing to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %pacing, align 2
  %conv27 = zext i8 %42 to i32
  %60 = and i32 %conv27, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %60)
  %.not = icmp eq i32 %60, 96
  %and28 = and i32 %conv27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %and34 = lshr i32 %conv27, 6
  %and34.lobit = and i32 %and34, 1
  %spec.select = select i1 %tobool29.not, i32 %and34.lobit, i32 2
  %.sink = select i1 %.not, i32 3, i32 %spec.select
  %61 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.sink, ptr %fc, align 4
  %62 = ptrtoint ptr %cmd_flags5 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %cmd_flags5, align 2
  %64 = lshr i16 %63, 8
  %65 = trunc i16 %64 to i8
  %66 = and i8 %65, 1
  %lse_ena = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 0, i32 7
  %67 = ptrtoint ptr %lse_ena to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %lse_ena, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_link_info, %if.then71)) #12
          to label %do.body74 [label %if.then71], !srcloc !428

if.then71:                                        ; preds = %ice_get_media_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %4, i32 -2960
  %68 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_link_info.__UNIQUE_ID_ddebug628, ptr noundef %dev, ptr noundef nonnull @.str.17) #12
  br label %do.body74

do.body74:                                        ; preds = %if.then71, %ice_get_media_type.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_link_info, %if.then86)) #12
          to label %do.body97 [label %if.then86], !srcloc !428

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr89 = getelementptr i8, ptr %4, i32 -2960
  %70 = ptrtoint ptr %add.ptr89 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr89, align 8
  %dev91 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %72 = ptrtoint ptr %link_speed9 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %link_speed9, align 4
  %conv93 = zext i16 %73 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_link_info.__UNIQUE_ID_ddebug629, ptr noundef %dev91, ptr noundef nonnull @.str.18, i32 noundef %conv93) #12
  br label %do.body97

do.body97:                                        ; preds = %if.then86, %do.body74
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_link_info, %if.then109)) #12
          to label %do.body119 [label %if.then109], !srcloc !428

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr112 = getelementptr i8, ptr %4, i32 -2960
  %74 = ptrtoint ptr %add.ptr112 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr112, align 8
  %dev114 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %76 = ptrtoint ptr %phy to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %phy, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_link_info.__UNIQUE_ID_ddebug630, ptr noundef %dev114, ptr noundef nonnull @.str.4, i64 noundef %77) #12
  br label %do.body119

do.body119:                                       ; preds = %if.then109, %do.body97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_link_info, %if.then131)) #12
          to label %do.body141 [label %if.then131], !srcloc !428

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr134 = getelementptr i8, ptr %4, i32 -2960
  %78 = ptrtoint ptr %add.ptr134 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr134, align 8
  %dev136 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  %80 = ptrtoint ptr %phy_type_high11 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %phy_type_high11, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_link_info.__UNIQUE_ID_ddebug631, ptr noundef %dev136, ptr noundef nonnull @.str.5, i64 noundef %81) #12
  br label %do.body141

do.body141:                                       ; preds = %if.then131, %do.body119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_link_info, %if.then153)) #12
          to label %do.body162 [label %if.then153], !srcloc !428

if.then153:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr156 = getelementptr i8, ptr %4, i32 -2960
  %82 = ptrtoint ptr %add.ptr156 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr156, align 8
  %dev158 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  %84 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %media_type, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_link_info.__UNIQUE_ID_ddebug632, ptr noundef %dev158, ptr noundef nonnull @.str.19, i32 noundef %85) #12
  br label %do.body162

do.body162:                                       ; preds = %if.then153, %do.body141
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug633, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_link_info, %if.then174)) #12
          to label %do.body185 [label %if.then174], !srcloc !428

if.then174:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr177 = getelementptr i8, ptr %4, i32 -2960
  %86 = ptrtoint ptr %add.ptr177 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr177, align 8
  %dev179 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %88 = ptrtoint ptr %link_info14 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %link_info14, align 2
  %conv181 = zext i8 %89 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_link_info.__UNIQUE_ID_ddebug633, ptr noundef %dev179, ptr noundef nonnull @.str.20, i32 noundef %conv181) #12
  br label %do.body185

do.body185:                                       ; preds = %if.then174, %do.body162
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug634, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_link_info, %if.then197)) #12
          to label %do.body208 [label %if.then197], !srcloc !428

if.then197:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr200 = getelementptr i8, ptr %4, i32 -2960
  %90 = ptrtoint ptr %add.ptr200 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr200, align 8
  %dev202 = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %92 = ptrtoint ptr %link_cfg_err15 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %link_cfg_err15, align 8
  %conv204 = zext i8 %93 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_link_info.__UNIQUE_ID_ddebug634, ptr noundef %dev202, ptr noundef nonnull @.str.21, i32 noundef %conv204) #12
  br label %do.body208

do.body208:                                       ; preds = %if.then197, %do.body185
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug635, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_link_info, %if.then220)) #12
          to label %do.body231 [label %if.then220], !srcloc !428

if.then220:                                       ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr223 = getelementptr i8, ptr %4, i32 -2960
  %94 = ptrtoint ptr %add.ptr223 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr223, align 8
  %dev225 = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  %96 = ptrtoint ptr %an_info16 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %an_info16, align 1
  %conv227 = zext i8 %97 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_link_info.__UNIQUE_ID_ddebug635, ptr noundef %dev225, ptr noundef nonnull @.str.22, i32 noundef %conv227) #12
  br label %do.body231

do.body231:                                       ; preds = %if.then220, %do.body208
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug636, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_link_info, %if.then243)) #12
          to label %do.body254 [label %if.then243], !srcloc !428

if.then243:                                       ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr246 = getelementptr i8, ptr %4, i32 -2960
  %98 = ptrtoint ptr %add.ptr246 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr246, align 8
  %dev248 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  %100 = ptrtoint ptr %ext_info17 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %ext_info17, align 4
  %conv250 = zext i8 %101 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_link_info.__UNIQUE_ID_ddebug636, ptr noundef %dev248, ptr noundef nonnull @.str.23, i32 noundef %conv250) #12
  br label %do.body254

do.body254:                                       ; preds = %if.then243, %do.body231
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug637, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_link_info, %if.then266)) #12
          to label %do.body277 [label %if.then266], !srcloc !428

if.then266:                                       ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr269 = getelementptr i8, ptr %4, i32 -2960
  %102 = ptrtoint ptr %add.ptr269 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr269, align 8
  %dev271 = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  %104 = ptrtoint ptr %fec_info to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %fec_info, align 1
  %conv273 = zext i8 %105 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_link_info.__UNIQUE_ID_ddebug637, ptr noundef %dev271, ptr noundef nonnull @.str.24, i32 noundef %conv273) #12
  br label %do.body277

do.body277:                                       ; preds = %if.then266, %do.body254
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug638, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_link_info, %if.then289)) #12
          to label %do.body300 [label %if.then289], !srcloc !428

if.then289:                                       ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr292 = getelementptr i8, ptr %4, i32 -2960
  %106 = ptrtoint ptr %add.ptr292 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr292, align 8
  %dev294 = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  %108 = ptrtoint ptr %lse_ena to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %lse_ena, align 1
  %conv296 = zext i8 %109 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_link_info.__UNIQUE_ID_ddebug638, ptr noundef %dev294, ptr noundef nonnull @.str.25, i32 noundef %conv296) #12
  br label %do.body300

do.body300:                                       ; preds = %if.then289, %do.body277
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug639, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_link_info, %if.then312)) #12
          to label %do.body323 [label %if.then312], !srcloc !428

if.then312:                                       ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr315 = getelementptr i8, ptr %4, i32 -2960
  %110 = ptrtoint ptr %add.ptr315 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr315, align 8
  %dev317 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  %112 = ptrtoint ptr %max_frame_size18 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %max_frame_size18, align 2
  %conv319 = zext i16 %113 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_link_info.__UNIQUE_ID_ddebug639, ptr noundef %dev317, ptr noundef nonnull @.str.26, i32 noundef %conv319) #12
  br label %do.body323

do.body323:                                       ; preds = %if.then312, %do.body300
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug640, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_get_link_info, %if.then335)) #12
          to label %do.end345 [label %if.then335], !srcloc !428

if.then335:                                       ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr338 = getelementptr i8, ptr %4, i32 -2960
  %114 = ptrtoint ptr %add.ptr338 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %add.ptr338, align 8
  %dev340 = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 44
  %116 = ptrtoint ptr %pacing to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %pacing, align 2
  %conv342 = zext i8 %117 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_get_link_info.__UNIQUE_ID_ddebug640, ptr noundef %dev340, ptr noundef nonnull @.str.27, i32 noundef %conv342) #12
  br label %do.end345

do.end345:                                        ; preds = %if.then335, %do.body323
  %tobool346.not = icmp eq ptr %link, null
  br i1 %tobool346.not, label %do.end345.if.end348_crit_edge, label %if.then347

do.end345.if.end348_crit_edge:                    ; preds = %do.end345
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end348

if.then347:                                       ; preds = %do.end345
  call void @__sanitizer_cov_trace_pc() #14
  %118 = call ptr @memcpy(ptr %link, ptr %phy, i32 40)
  br label %if.end348

if.end348:                                        ; preds = %if.then347, %do.end345.if.end348_crit_edge
  %get_link_info = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 5
  %119 = ptrtoint ptr %get_link_info to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %get_link_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end348, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end348 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %link_data) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_set_mac_cfg(ptr noundef %hw, i16 noundef zeroext %max_frame_size, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %max_frame_size)
  %cmp = icmp eq i16 %max_frame_size, 0
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1539) #12
  %3 = call i16 @llvm.bswap.i16(i16 %max_frame_size)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %2, align 4
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 1980384
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !429
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !430
  %8 = lshr i32 %7, 16
  %9 = trunc i32 %8 to i16
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %1, align 4
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 8
  %add.ptr5.i = getelementptr i8, ptr %12, i32 1980672
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !429
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !431
  %14 = lshr i32 %13, 16
  %15 = trunc i32 %14 to i16
  %fc_refresh_threshold.i = getelementptr inbounds %struct.ice_aqc_set_mac_cfg, ptr %2, i32 0, i32 4
  %16 = ptrtoint ptr %fc_refresh_threshold.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %fc_refresh_threshold.i, align 2
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_output_fw_log(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %desc, ptr noundef %buf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_output_fw_log.__UNIQUE_ID_ddebug641, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_output_fw_log, %if.then)) #12
          to label %do.body4 [label %if.then], !srcloc !428

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_output_fw_log.__UNIQUE_ID_ddebug641, ptr noundef %dev, ptr noundef nonnull @.str.29) #12
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_output_fw_log.__UNIQUE_ID_ddebug642, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_output_fw_log, %if.then16)) #12
          to label %do.body19 [label %if.then16], !srcloc !428

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  %datalen = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 2
  %2 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %datalen, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %buf, i32 noundef %conv, i1 noundef zeroext false) #12
  br label %do.body19

do.body19:                                        ; preds = %if.then16, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_output_fw_log.__UNIQUE_ID_ddebug643, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_output_fw_log, %if.then31)) #12
          to label %do.end38 [label %if.then31], !srcloc !428

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr34 = getelementptr i8, ptr %hw, i32 -2960
  %5 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr34, align 8
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_output_fw_log.__UNIQUE_ID_ddebug643, ptr noundef %dev36, ptr noundef nonnull @.str.32) #12
  br label %do.end38

do.end38:                                         ; preds = %if.then31, %do.body19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_init_hw(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ice_set_mac_type(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 649344
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !429
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !432
  %4 = trunc i32 %3 to i8
  %conv = and i8 %4, 7
  %pf_id = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 13
  %5 = ptrtoint ptr %pf_id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %pf_id, align 1
  %call.i = tail call fastcc i32 @ice_pf_reset(ptr noundef %hw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 754188
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !433
  %9 = and i32 %8, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %9)
  %switch.not.i = icmp eq i32 %9, 192
  %spec.select.i = select i1 %switch.not.i, i8 4, i8 2
  %spec.select12.i = select i1 %switch.not.i, i8 8, i8 4
  %10 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 43
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select.i, ptr %10, align 1
  %12 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 44
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.select12.i, ptr %12, align 2
  %call9 = tail call i32 @ice_create_all_ctrlq(ptr noundef %hw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.err_unroll_cqinit_crit_edge

if.end8.err_unroll_cqinit_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unroll_cqinit

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc i32 @ice_cfg_fw_log(ptr noundef %hw, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.if.end25_crit_edge, label %do.body

if.end12.if.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

do.body:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_hw.__UNIQUE_ID_ddebug644, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_hw, %if.then21)) #12
          to label %if.end25 [label %if.then21], !srcloc !428

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr23 = getelementptr i8, ptr %hw, i32 -2960
  %14 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr23, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_hw.__UNIQUE_ID_ddebug644, ptr noundef %dev, ptr noundef nonnull @.str.34) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %do.body, %if.end12.if.end25_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #12
  %16 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 676) #12
  %call.i274 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %tobool27.not = icmp eq i32 %call.i274, 0
  br i1 %tobool27.not, label %do.body30, label %if.end25.err_unroll_cqinit_crit_edge

if.end25.err_unroll_cqinit_crit_edge:             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unroll_cqinit

do.body30:                                        ; preds = %if.end25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !434
  call void @arm_heavy_mb() #12
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %add.ptr34 = getelementptr i8, ptr %18, i32 4431872
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 16777216) #12, !srcloc !435
  %fdir_list_head = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 66
  %19 = ptrtoint ptr %fdir_list_head to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %fdir_list_head, ptr %fdir_list_head, align 4
  %prev.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 66, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %fdir_list_head, ptr %prev.i, align 4
  call void @ice_clear_pxe_mode(ptr noundef %hw)
  %call35 = call i32 @ice_init_nvm(ptr noundef %hw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %do.body30.err_unroll_cqinit_crit_edge

do.body30.err_unroll_cqinit_crit_edge:            ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unroll_cqinit

if.end38:                                         ; preds = %do.body30
  %call39 = call i32 @ice_get_caps(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.err_unroll_cqinit_crit_edge

if.end38.err_unroll_cqinit_crit_edge:             ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unroll_cqinit

if.end42:                                         ; preds = %if.end38
  %add.ptr45 = getelementptr i8, ptr %hw, i32 -2960
  %21 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr45, align 8
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %call.i275 = call noalias ptr @devm_kmalloc(ptr noundef %dev47, i32 noundef 1848, i32 noundef 3520) #12
  %port_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %23 = ptrtoint ptr %port_info to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i275, ptr %port_info, align 4
  %tobool50.not = icmp eq ptr %call.i275, null
  br i1 %tobool50.not, label %if.end42.err_unroll_cqinit_crit_edge, label %if.end52

if.end42.err_unroll_cqinit_crit_edge:             ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unroll_cqinit

if.end52:                                         ; preds = %if.end42
  %hw54 = getelementptr inbounds %struct.ice_port_info, ptr %call.i275, i32 0, i32 1
  %24 = ptrtoint ptr %hw54 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %hw, ptr %hw54, align 4
  %call55 = call i32 @ice_get_initial_sw_cfg(ptr noundef %hw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end52.err_unroll_alloc_crit_edge

if.end52.err_unroll_alloc_crit_edge:              ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unroll_alloc

if.end58:                                         ; preds = %if.end52
  %evb_veb = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 23
  %25 = ptrtoint ptr %evb_veb to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %evb_veb, align 4
  %call59 = call i32 @ice_sched_query_res_alloc(ptr noundef %hw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end83, label %do.body62

do.body62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_hw.__UNIQUE_ID_ddebug645, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_hw, %if.then74)) #12
          to label %err_unroll_alloc [label %if.then74], !srcloc !428

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr45, align 8
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_hw.__UNIQUE_ID_ddebug645, ptr noundef %dev79, ptr noundef nonnull @.str.35) #12
  br label %err_unroll_alloc

if.end83:                                         ; preds = %if.end58
  call void @ice_sched_get_psm_clk_freq(ptr noundef %hw) #12
  %28 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port_info, align 4
  %call85 = call i32 @ice_sched_init_port(ptr noundef %29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end83.err_unroll_sched_crit_edge

if.end83.err_unroll_sched_crit_edge:              ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unroll_sched

if.end88:                                         ; preds = %if.end83
  %30 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr45, align 8
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %call.i276 = call noalias ptr @devm_kmalloc(ptr noundef %dev93, i32 noundef 560, i32 noundef 3520) #12
  %tobool95.not = icmp eq ptr %call.i276, null
  br i1 %tobool95.not, label %if.end88.err_unroll_sched_crit_edge, label %if.end97

if.end88.err_unroll_sched_crit_edge:              ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unroll_sched

if.end97:                                         ; preds = %if.end88
  %32 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port_info, align 4
  %call99 = call i32 @ice_aq_get_phy_caps(ptr noundef %33, i1 noundef zeroext false, i8 noundef zeroext 2, ptr noundef nonnull %call.i276, ptr noundef null)
  %34 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr45, align 8
  %dev104 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev104, ptr noundef nonnull %call.i276) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool105.not = icmp eq i32 %call99, 0
  br i1 %tobool105.not, label %if.end97.if.end115_crit_edge, label %do.end109

if.end97.if.end115_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

do.end109:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr45, align 8
  %dev114 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev114, ptr noundef nonnull @.str.36, i32 noundef %call99) #16
  br label %if.end115

if.end115:                                        ; preds = %do.end109, %if.end97.if.end115_crit_edge
  %38 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port_info, align 4
  %call117 = call i32 @ice_aq_get_link_info(ptr noundef %39, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %if.end115.err_unroll_sched_crit_edge

if.end115.err_unroll_sched_crit_edge:             ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unroll_sched

if.end120:                                        ; preds = %if.end115
  %sw_entry_point_layer = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 19
  %40 = ptrtoint ptr %sw_entry_point_layer to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sw_entry_point_layer, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool121.not = icmp eq i8 %41, 0
  br i1 %tobool121.not, label %do.body123, label %if.end144

do.body123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_hw.__UNIQUE_ID_ddebug646, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_hw, %if.then135)) #12
          to label %err_unroll_sched [label %if.then135], !srcloc !428

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr45, align 8
  %dev140 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_hw.__UNIQUE_ID_ddebug646, ptr noundef %dev140, ptr noundef nonnull @.str.39) #12
  br label %err_unroll_sched

if.end144:                                        ; preds = %if.end120
  %agg_list = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 21
  %44 = ptrtoint ptr %agg_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %agg_list, ptr %agg_list, align 4
  %prev.i277 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 21, i32 1
  %45 = ptrtoint ptr %prev.i277 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %agg_list, ptr %prev.i277, align 4
  %max_burst_size = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 14
  %46 = ptrtoint ptr %max_burst_size to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %max_burst_size, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool145.not = icmp eq i16 %47, 0
  br i1 %tobool145.not, label %if.then146, label %if.end144.if.end148_crit_edge

if.end144.if.end148_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

if.then146:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  %call147 = call i32 @ice_cfg_rl_burst_size(ptr noundef %hw, i32 noundef 15360) #12
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %if.end144.if.end148_crit_edge
  %call149 = call fastcc i32 @ice_init_fltr_mgmt_struct(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end152, label %if.end148.err_unroll_sched_crit_edge

if.end148.err_unroll_sched_crit_edge:             ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unroll_sched

if.end152:                                        ; preds = %if.end148
  %48 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr45, align 8
  %dev157 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev157, i32 noundef 16, i32 noundef 3520) #12
  %tobool159.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool159.not, label %if.end152.err_unroll_fltr_mgmt_struct_crit_edge, label %if.end161

if.end152.err_unroll_fltr_mgmt_struct_crit_edge:  ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unroll_fltr_mgmt_struct

if.end161:                                        ; preds = %if.end152
  %call162 = call fastcc i32 @ice_aq_manage_mac_read(ptr noundef %hw, ptr noundef nonnull %call5.i.i)
  %50 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr45, align 8
  %dev167 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev167, ptr noundef nonnull %call5.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool168.not = icmp eq i32 %call162, 0
  br i1 %tobool168.not, label %if.end170, label %if.end161.err_unroll_fltr_mgmt_struct_crit_edge

if.end161.err_unroll_fltr_mgmt_struct_crit_edge:  ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unroll_fltr_mgmt_struct

if.end170:                                        ; preds = %if.end161
  %call171 = call i32 @ice_aq_set_mac_cfg(ptr noundef %hw, i16 noundef zeroext 9728, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.end174, label %if.end170.err_unroll_fltr_mgmt_struct_crit_edge

if.end170.err_unroll_fltr_mgmt_struct_crit_edge:  ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unroll_fltr_mgmt_struct

if.end174:                                        ; preds = %if.end170
  %fd_ctr_base = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 7
  %call175 = call i32 @ice_alloc_fd_res_cntr(ptr noundef %hw, ptr noundef %fd_ctr_base) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.end178, label %if.end174.err_unroll_fltr_mgmt_struct_crit_edge

if.end174.err_unroll_fltr_mgmt_struct_crit_edge:  ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unroll_fltr_mgmt_struct

if.end178:                                        ; preds = %if.end174
  %call179 = call i32 @ice_init_hw_tbls(ptr noundef %hw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %do.body183, label %if.end178.err_unroll_fltr_mgmt_struct_crit_edge

if.end178.err_unroll_fltr_mgmt_struct_crit_edge:  ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unroll_fltr_mgmt_struct

do.body183:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #14
  %tnl_lock = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 57
  call void @__mutex_init(ptr noundef %tnl_lock, ptr noundef nonnull @.str.40, ptr noundef nonnull @ice_init_hw.__key) #12
  br label %cleanup

err_unroll_fltr_mgmt_struct:                      ; preds = %if.end178.err_unroll_fltr_mgmt_struct_crit_edge, %if.end174.err_unroll_fltr_mgmt_struct_crit_edge, %if.end170.err_unroll_fltr_mgmt_struct_crit_edge, %if.end161.err_unroll_fltr_mgmt_struct_crit_edge, %if.end152.err_unroll_fltr_mgmt_struct_crit_edge
  %status.0 = phi i32 [ %call162, %if.end161.err_unroll_fltr_mgmt_struct_crit_edge ], [ %call171, %if.end170.err_unroll_fltr_mgmt_struct_crit_edge ], [ %call175, %if.end174.err_unroll_fltr_mgmt_struct_crit_edge ], [ %call179, %if.end178.err_unroll_fltr_mgmt_struct_crit_edge ], [ -12, %if.end152.err_unroll_fltr_mgmt_struct_crit_edge ]
  call fastcc void @ice_cleanup_fltr_mgmt_struct(ptr noundef %hw)
  br label %err_unroll_sched

err_unroll_sched:                                 ; preds = %err_unroll_fltr_mgmt_struct, %if.end148.err_unroll_sched_crit_edge, %if.then135, %do.body123, %if.end115.err_unroll_sched_crit_edge, %if.end88.err_unroll_sched_crit_edge, %if.end83.err_unroll_sched_crit_edge
  %status.1 = phi i32 [ %call85, %if.end83.err_unroll_sched_crit_edge ], [ %call117, %if.end115.err_unroll_sched_crit_edge ], [ %call149, %if.end148.err_unroll_sched_crit_edge ], [ %status.0, %err_unroll_fltr_mgmt_struct ], [ -12, %if.end88.err_unroll_sched_crit_edge ], [ -5, %if.then135 ], [ -5, %do.body123 ]
  call void @ice_sched_cleanup_all(ptr noundef %hw) #12
  br label %err_unroll_alloc

err_unroll_alloc:                                 ; preds = %err_unroll_sched, %if.then74, %do.body62, %if.end52.err_unroll_alloc_crit_edge
  %status.2 = phi i32 [ %call55, %if.end52.err_unroll_alloc_crit_edge ], [ %call59, %if.then74 ], [ %status.1, %err_unroll_sched ], [ %call59, %do.body62 ]
  %52 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr45, align 8
  %dev190 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %54 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %port_info, align 4
  call void @devm_kfree(ptr noundef %dev190, ptr noundef %55) #12
  br label %err_unroll_cqinit

err_unroll_cqinit:                                ; preds = %err_unroll_alloc, %if.end42.err_unroll_cqinit_crit_edge, %if.end38.err_unroll_cqinit_crit_edge, %do.body30.err_unroll_cqinit_crit_edge, %if.end25.err_unroll_cqinit_crit_edge, %if.end8.err_unroll_cqinit_crit_edge
  %status.3 = phi i32 [ %call9, %if.end8.err_unroll_cqinit_crit_edge ], [ %call.i274, %if.end25.err_unroll_cqinit_crit_edge ], [ %call35, %do.body30.err_unroll_cqinit_crit_edge ], [ %call39, %if.end38.err_unroll_cqinit_crit_edge ], [ %status.2, %err_unroll_alloc ], [ -12, %if.end42.err_unroll_cqinit_crit_edge ]
  call void @ice_destroy_all_ctrlq(ptr noundef %hw) #12
  br label %cleanup

cleanup:                                          ; preds = %err_unroll_cqinit, %do.body183, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.3, %err_unroll_cqinit ], [ 0, %do.body183 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_set_mac_type(ptr nocapture noundef %hw) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor_id = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor_id, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %1)
  %cmp.not = icmp eq i16 %1, -32634
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %device_id = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 8
  %2 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device_id, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.164)
  switch i16 %3, label %sw.default [
    i16 5521, label %if.end.do.body_crit_edge
    i16 5522, label %if.end.do.body_crit_edge19
    i16 5523, label %if.end.do.body_crit_edge20
    i16 5529, label %if.end.do.body_crit_edge21
    i16 5530, label %if.end.do.body_crit_edge22
    i16 5531, label %if.end.do.body_crit_edge23
    i16 6285, label %if.end.sw.bb3_crit_edge
    i16 6282, label %if.end.sw.bb3_crit_edge24
    i16 6283, label %if.end.sw.bb3_crit_edge25
    i16 6284, label %if.end.sw.bb3_crit_edge26
    i16 6286, label %if.end.sw.bb3_crit_edge27
    i16 6291, label %if.end.sw.bb3_crit_edge28
    i16 6288, label %if.end.sw.bb3_crit_edge29
    i16 6289, label %if.end.sw.bb3_crit_edge30
    i16 6290, label %if.end.sw.bb3_crit_edge31
    i16 6292, label %if.end.sw.bb3_crit_edge32
    i16 6297, label %if.end.sw.bb3_crit_edge33
    i16 6295, label %if.end.sw.bb3_crit_edge34
    i16 6296, label %if.end.sw.bb3_crit_edge35
    i16 6298, label %if.end.sw.bb3_crit_edge36
    i16 4686, label %if.end.sw.bb3_crit_edge37
    i16 4687, label %if.end.sw.bb3_crit_edge38
    i16 4684, label %if.end.sw.bb3_crit_edge39
    i16 5405, label %if.end.sw.bb3_crit_edge40
    i16 4685, label %if.end.sw.bb3_crit_edge41
  ]

if.end.sw.bb3_crit_edge41:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge40:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge39:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge38:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge37:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge36:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge35:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge34:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge33:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge32:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge31:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge30:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge29:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge28:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge27:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge26:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge25:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge24:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.do.body_crit_edge23:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.do.body_crit_edge22:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.do.body_crit_edge21:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.do.body_crit_edge20:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.do.body_crit_edge19:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

sw.bb3:                                           ; preds = %if.end.sw.bb3_crit_edge, %if.end.sw.bb3_crit_edge24, %if.end.sw.bb3_crit_edge25, %if.end.sw.bb3_crit_edge26, %if.end.sw.bb3_crit_edge27, %if.end.sw.bb3_crit_edge28, %if.end.sw.bb3_crit_edge29, %if.end.sw.bb3_crit_edge30, %if.end.sw.bb3_crit_edge31, %if.end.sw.bb3_crit_edge32, %if.end.sw.bb3_crit_edge33, %if.end.sw.bb3_crit_edge34, %if.end.sw.bb3_crit_edge35, %if.end.sw.bb3_crit_edge36, %if.end.sw.bb3_crit_edge37, %if.end.sw.bb3_crit_edge38, %if.end.sw.bb3_crit_edge39, %if.end.sw.bb3_crit_edge40, %if.end.sw.bb3_crit_edge41
  br label %do.body

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %sw.default, %sw.bb3, %if.end.do.body_crit_edge, %if.end.do.body_crit_edge19, %if.end.do.body_crit_edge20, %if.end.do.body_crit_edge21, %if.end.do.body_crit_edge22, %if.end.do.body_crit_edge23
  %.sink = phi i32 [ 2, %sw.bb3 ], [ 0, %sw.default ], [ 1, %if.end.do.body_crit_edge ], [ 1, %if.end.do.body_crit_edge19 ], [ 1, %if.end.do.body_crit_edge20 ], [ 1, %if.end.do.body_crit_edge21 ], [ 1, %if.end.do.body_crit_edge22 ], [ 1, %if.end.do.body_crit_edge23 ]
  %mac_type = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 6
  %5 = ptrtoint ptr %mac_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %mac_type, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_set_mac_type.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_set_mac_type, %if.then8)) #12
          to label %return [label %if.then8], !srcloc !428

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %mac_type10 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 6
  %8 = ptrtoint ptr %mac_type10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mac_type10, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_set_mac_type.__UNIQUE_ID_ddebug613, ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %9) #12
  br label %return

return:                                           ; preds = %if.then8, %do.body, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %entry.return_crit_edge ], [ 0, %if.then8 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_reset(ptr nocapture noundef readonly %hw, i32 noundef %req) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %req to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %req, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 1, label %do.body
    i32 2, label %do.body7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @ice_pf_reset(ptr noundef %hw)
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_reset.__UNIQUE_ID_ddebug651, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_reset, %if.then)) #12
          to label %sw.epilog [label %if.then], !srcloc !428

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_reset.__UNIQUE_ID_ddebug651, ptr noundef %dev, ptr noundef nonnull @.str.46) #12
  br label %sw.epilog

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_reset.__UNIQUE_ID_ddebug652, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_reset, %if.then19)) #12
          to label %sw.epilog [label %if.then19], !srcloc !428

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr22 = getelementptr i8, ptr %hw, i32 -2960
  %3 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr22, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_reset.__UNIQUE_ID_ddebug652, ptr noundef %dev24, ptr noundef nonnull @.str.47) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then19, %do.body7, %if.then, %do.body
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr28 = getelementptr i8, ptr %6, i32 754064
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #12, !srcloc !429
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !436
  %or = or i32 %8, %req
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !437
  tail call void @arm_heavy_mb() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr36 = getelementptr i8, ptr %11, i32 754064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %9) #12, !srcloc !435
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %add.ptr40 = getelementptr i8, ptr %13, i32 745772
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #12, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  %call44 = tail call i32 @ice_check_reset(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call44, %sw.epilog ], [ %call, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_create_all_ctrlq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_cfg_fw_log(ptr noundef %hw, i1 noundef zeroext %enable) unnamed_addr #1 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %fw_log = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 42
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  %2 = ptrtoint ptr %fw_log to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %fw_log, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %3 = icmp ult i8 %bf.load, 64
  br i1 %3, label %entry.cleanup175_crit_edge, label %if.end

entry.cleanup175_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup175

if.end:                                           ; preds = %entry
  br i1 %enable, label %if.end.if.end11_crit_edge, label %land.lhs.true6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

land.lhs.true6:                                   ; preds = %if.end
  %actv_evnts8 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 42, i32 1
  %4 = ptrtoint ptr %actv_evnts8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %actv_evnts8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %land.lhs.true6.cleanup175_crit_edge, label %lor.lhs.false

land.lhs.true6.cleanup175_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup175

lor.lhs.false:                                    ; preds = %land.lhs.true6
  %adminq = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30
  %call = tail call zeroext i1 @ice_check_sq_alive(ptr noundef %hw, ptr noundef %adminq) #12
  br i1 %call, label %lor.lhs.false.if.end11_crit_edge, label %lor.lhs.false.cleanup175_crit_edge

lor.lhs.false.cleanup175_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup175

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end11:                                         ; preds = %lor.lhs.false.if.end11_crit_edge, %if.end.if.end11_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #12
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %6 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 54, i32 noundef 3520) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %ice_get_fw_log_cfg.exit.thread, label %if.end.i

ice_get_fw_log_cfg.exit.thread:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  br label %cleanup175

if.end.i:                                         ; preds = %if.end11
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext -240) #12
  %call1.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %call.i.i, i16 noundef zeroext 54, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.body.i_crit_edge, label %ice_get_fw_log_cfg.exit.thread259

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

ice_get_fw_log_cfg.exit.thread259:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %dev25.i260 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev25.i260, ptr noundef nonnull %call.i.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  br label %cleanup175

for.body.i:                                       ; preds = %if.end19.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %if.end19.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %call.i.i, i32 %indvars.iv.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 2
  %13 = call i16 @llvm.bswap.i16(i16 %12) #12
  %and.i = and i16 %13, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 27, i16 %and.i)
  %cmp13.i = icmp ult i16 %and.i, 27
  br i1 %cmp13.i, label %if.then15.i, label %for.body.i.if.end19.i_crit_edge

for.body.i.if.end19.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then15.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv12.i = zext i16 %and.i to i32
  %14 = lshr i16 %13, 12
  %conv16.i = trunc i16 %14 to i8
  %arrayidx18.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 42, i32 2, i32 %conv12.i
  %15 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %arrayidx18.i, align 1
  %bf.clear.i = and i8 %bf.load.i, -16
  %bf.set.i = or i8 %bf.clear.i, %conv16.i
  store i8 %bf.set.i, ptr %arrayidx18.i, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %for.body.i.if.end19.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 27
  br i1 %exitcond.not.i, label %ice_get_fw_log_cfg.exit, label %if.end19.i.for.body.i_crit_edge

if.end19.i.for.body.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

ice_get_fw_log_cfg.exit:                          ; preds = %if.end19.i
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %dev25.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev25.i, ptr noundef nonnull %call.i.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  br i1 %tobool2.not.i, label %if.end15, label %ice_get_fw_log_cfg.exit.cleanup175_crit_edge

ice_get_fw_log_cfg.exit.cleanup175_crit_edge:     ; preds = %ice_get_fw_log_cfg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup175

if.end15:                                         ; preds = %ice_get_fw_log_cfg.exit
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext -247) #12
  %18 = ptrtoint ptr %fw_log to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load17 = load i8, ptr %fw_log, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load17)
  %tobool19.not = icmp sgt i8 %bf.load17, -1
  br i1 %tobool19.not, label %if.end15.if.end22_crit_edge, label %if.then20

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %log_ctrl_valid = getelementptr inbounds %struct.ice_aqc_fw_logging, ptr %0, i32 0, i32 2
  %19 = ptrtoint ptr %log_ctrl_valid to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %log_ctrl_valid, align 2
  %21 = or i8 %20, 1
  store i8 %21, ptr %log_ctrl_valid, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end15.if.end22_crit_edge
  %22 = and i8 %bf.load17, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool27.not = icmp eq i8 %22, 0
  br i1 %tobool27.not, label %if.end22.if.end33_crit_edge, label %if.then28

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %log_ctrl_valid29 = getelementptr inbounds %struct.ice_aqc_fw_logging, ptr %0, i32 0, i32 2
  %23 = ptrtoint ptr %log_ctrl_valid29 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %log_ctrl_valid29, align 2
  %25 = or i8 %24, 2
  store i8 %25, ptr %log_ctrl_valid29, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end22.if.end33_crit_edge
  br i1 %enable, label %if.end33.for.body_crit_edge, label %if.end33.if.end117_crit_edge

if.end33.if.end117_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end33.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %if.end33.for.body_crit_edge ]
  %chgs.0249 = phi i16 [ %chgs.1.ph, %for.inc.for.body_crit_edge ], [ 0, %if.end33.for.body_crit_edge ]
  %actv_evnts.0248 = phi i8 [ %or43236, %for.inc.for.body_crit_edge ], [ 0, %if.end33.for.body_crit_edge ]
  %data.0247 = phi ptr [ %data.2.ph, %for.inc.for.body_crit_edge ], [ null, %if.end33.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 42, i32 2, i32 %indvars.iv
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load39 = load i8, ptr %arrayidx, align 1
  %bf.lshr40 = lshr i8 %bf.load39, 4
  %or43236 = or i8 %bf.lshr40, %actv_evnts.0248
  %bf.clear57 = and i8 %bf.load39, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr40, i8 %bf.clear57)
  %cmp59 = icmp eq i8 %bf.lshr40, %bf.clear57
  br i1 %cmp59, label %for.body.for.inc_crit_edge, label %if.end62

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end62:                                         ; preds = %for.body
  %tobool63.not = icmp eq ptr %data.0247, null
  br i1 %tobool63.not, label %if.then64, label %if.end62.if.end69_crit_edge

if.end62.if.end69_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then64:                                        ; preds = %if.end62
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 54, i32 noundef 3520) #12
  %tobool66.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool66.not, label %if.then64.cleanup175_crit_edge, label %if.then64.if.end69_crit_edge

if.then64.if.end69_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then64.cleanup175_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup175

if.end69:                                         ; preds = %if.then64.if.end69_crit_edge, %if.end62.if.end69_crit_edge
  %data.1 = phi ptr [ %data.0247, %if.end62.if.end69_crit_edge ], [ %call5.i.i, %if.then64.if.end69_crit_edge ]
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load76 = load i8, ptr %arrayidx, align 1
  %bf.lshr77 = lshr i8 %bf.load76, 4
  %conv78 = zext i8 %bf.lshr77 to i16
  %shl79 = shl nuw i16 %conv78, 12
  %30 = trunc i32 %indvars.iv to i16
  %or81 = or i16 %shl79, %30
  %31 = call i16 @llvm.bswap.i16(i16 %or81)
  %inc = add i16 %chgs.0249, 1
  %idxprom83 = zext i16 %chgs.0249 to i32
  %arrayidx84 = getelementptr i16, ptr %data.1, i32 %idxprom83
  %32 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %arrayidx84, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end69, %for.body.for.inc_crit_edge
  %data.2.ph = phi ptr [ %data.0247, %for.body.for.inc_crit_edge ], [ %data.1, %if.end69 ]
  %chgs.1.ph = phi i16 [ %chgs.0249, %for.body.for.inc_crit_edge ], [ %inc, %if.end69 ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 27
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or43236)
  %tobool86.not = icmp eq i8 %or43236, 0
  br i1 %tobool86.not, label %for.end.if.end117_crit_edge, label %if.then87

for.end.if.end117_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117

if.then87:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %chgs.1.ph)
  %tobool88.not = icmp eq i16 %chgs.1.ph, 0
  br i1 %tobool88.not, label %if.then87.out_crit_edge, label %if.end90

if.then87.out_crit_edge:                          ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end90:                                         ; preds = %if.then87
  %33 = ptrtoint ptr %fw_log to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load92 = load i8, ptr %fw_log, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load92)
  %tobool94.not = icmp sgt i8 %bf.load92, -1
  br i1 %tobool94.not, label %if.end90.if.end99_crit_edge, label %if.then95

if.end90.if.end99_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.then95:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %0, align 4
  %36 = or i8 %35, 1
  store i8 %36, ptr %0, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %if.end90.if.end99_crit_edge
  %37 = and i8 %bf.load92, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool104.not = icmp eq i8 %37, 0
  br i1 %tobool104.not, label %if.end99.if.end110_crit_edge, label %if.then105

if.end99.if.end110_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.then105:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %0, align 4
  %40 = or i8 %39, 2
  store i8 %40, ptr %0, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then105, %if.end99.if.end110_crit_edge
  %mul = shl i16 %chgs.1.ph, 1
  %41 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %desc, align 4
  %43 = or i16 %42, 4
  store i16 %43, ptr %desc, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.end110, %for.end.if.end117_crit_edge, %if.end33.if.end117_crit_edge
  %spec.select = phi i16 [ %chgs.1.ph, %for.end.if.end117_crit_edge ], [ %chgs.1.ph, %if.end110 ], [ 27, %if.end33.if.end117_crit_edge ]
  %len.0 = phi i16 [ 0, %for.end.if.end117_crit_edge ], [ %mul, %if.end110 ], [ 0, %if.end33.if.end117_crit_edge ]
  %data.3 = phi ptr [ %data.2.ph, %for.end.if.end117_crit_edge ], [ %data.2.ph, %if.end110 ], [ null, %if.end33.if.end117_crit_edge ]
  %actv_evnts.1 = phi i8 [ 0, %for.end.if.end117_crit_edge ], [ %or43236, %if.end110 ], [ 0, %if.end33.if.end117_crit_edge ]
  %buf.0 = phi ptr [ null, %for.end.if.end117_crit_edge ], [ %data.2.ph, %if.end110 ], [ null, %if.end33.if.end117_crit_edge ]
  %call118 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %buf.0, i16 noundef zeroext %len.0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.then120, label %if.end117.out_crit_edge

if.end117.out_crit_edge:                          ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then120:                                       ; preds = %if.end117
  %actv_evnts126 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 42, i32 1
  %44 = ptrtoint ptr %actv_evnts126 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %actv_evnts.1, ptr %actv_evnts126, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select)
  %cmp130252.not = icmp eq i16 %spec.select, 0
  br i1 %cmp130252.not, label %if.then120.out_crit_edge, label %for.body132.preheader

if.then120.out_crit_edge:                         ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body132.preheader:                            ; preds = %if.then120
  %wide.trip.count = zext i16 %spec.select to i32
  br label %for.body132

for.body132:                                      ; preds = %cleanup159.for.body132_crit_edge, %for.body132.preheader
  %indvars.iv256 = phi i32 [ 0, %for.body132.preheader ], [ %indvars.iv.next257, %cleanup159.for.body132_crit_edge ]
  br i1 %enable, label %if.end141, label %if.then134

if.then134:                                       ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx138 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 42, i32 2, i32 %indvars.iv256
  %45 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load139 = load i8, ptr %arrayidx138, align 1
  %bf.clear140 = and i8 %bf.load139, -16
  store i8 %bf.clear140, ptr %arrayidx138, align 1
  br label %cleanup159

if.end141:                                        ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx143 = getelementptr i16, ptr %data.3, i32 %indvars.iv256
  %46 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx143, align 2
  %48 = and i16 %47, -241
  %49 = call i16 @llvm.bswap.i16(i16 %48)
  %idxprom148 = zext i16 %49 to i32
  %arrayidx149 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 42, i32 2, i32 %idxprom148
  %50 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load150 = load i8, ptr %arrayidx149, align 1
  %bf.lshr151 = lshr i8 %bf.load150, 4
  %bf.clear157 = and i8 %bf.load150, -16
  %bf.set158 = or i8 %bf.clear157, %bf.lshr151
  store i8 %bf.set158, ptr %arrayidx149, align 1
  br label %cleanup159

cleanup159:                                       ; preds = %if.end141, %if.then134
  %indvars.iv.next257 = add nuw nsw i32 %indvars.iv256, 1
  %exitcond258.not = icmp eq i32 %indvars.iv.next257, %wide.trip.count
  br i1 %exitcond258.not, label %cleanup159.out_crit_edge, label %cleanup159.for.body132_crit_edge

cleanup159.for.body132_crit_edge:                 ; preds = %cleanup159
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body132

cleanup159.out_crit_edge:                         ; preds = %cleanup159
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %cleanup159.out_crit_edge, %if.then120.out_crit_edge, %if.end117.out_crit_edge, %if.then87.out_crit_edge
  %data.4 = phi ptr [ %data.3, %if.end117.out_crit_edge ], [ %data.2.ph, %if.then87.out_crit_edge ], [ %data.3, %if.then120.out_crit_edge ], [ %data.3, %cleanup159.out_crit_edge ]
  %status.0 = phi i32 [ %call118, %if.end117.out_crit_edge ], [ 0, %if.then87.out_crit_edge ], [ 0, %if.then120.out_crit_edge ], [ 0, %cleanup159.out_crit_edge ]
  %tobool167.not = icmp eq ptr %data.4, null
  br i1 %tobool167.not, label %out.cleanup175_crit_edge, label %if.then168

out.cleanup175_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup175

if.then168:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 8
  %dev173 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev173, ptr noundef nonnull %data.4) #12
  br label %cleanup175

cleanup175:                                       ; preds = %if.then168, %out.cleanup175_crit_edge, %if.then64.cleanup175_crit_edge, %ice_get_fw_log_cfg.exit.cleanup175_crit_edge, %ice_get_fw_log_cfg.exit.thread259, %ice_get_fw_log_cfg.exit.thread, %lor.lhs.false.cleanup175_crit_edge, %land.lhs.true6.cleanup175_crit_edge, %entry.cleanup175_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup175_crit_edge ], [ 0, %lor.lhs.false.cleanup175_crit_edge ], [ 0, %land.lhs.true6.cleanup175_crit_edge ], [ %call1.i, %ice_get_fw_log_cfg.exit.cleanup175_crit_edge ], [ %status.0, %if.then168 ], [ %status.0, %out.cleanup175_crit_edge ], [ -12, %ice_get_fw_log_cfg.exit.thread ], [ %call1.i, %ice_get_fw_log_cfg.exit.thread259 ], [ -12, %if.then64.cleanup175_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_clear_pxe_mode(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %adminq = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30
  %call = tail call zeroext i1 @ice_check_sq_alive(ptr noundef %hw, ptr noundef %adminq) #12
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 272) #12
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %0, align 4
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_init_nvm(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_get_caps(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  %desc.i.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_caps = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27
  %call = tail call i32 @ice_discover_dev_caps(ptr noundef %hw, ptr noundef %dev_caps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %func_caps = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #12
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i, i32 0, i32 6, i32 0, i32 1
  %2 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i, i16 noundef zeroext 10) #12
  %call.i.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i.i, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 4096, ptr noundef null) #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %5 = call i32 @llvm.bswap.i32(i32 %4) #12
  call fastcc void @ice_parse_func_caps(ptr noundef %hw, ptr noundef %func_caps, ptr noundef nonnull %call7.i.i.i, i32 noundef %5) #12
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end4.i ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_get_initial_sw_cfg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_sched_query_res_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_sched_get_psm_clk_freq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_sched_init_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_cfg_rl_burst_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_init_fltr_mgmt_struct(ptr noundef %hw) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2064, i32 noundef 3520) #12
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %2 = ptrtoint ptr %switch_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %switch_info, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %prev.i, align 4
  %prof_res_bm_init = getelementptr inbounds %struct.ice_switch_info, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %prof_res_bm_init to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %prof_res_bm_init, align 4
  %call2 = tail call i32 @ice_init_def_sw_recp(ptr noundef %hw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %switch_info, align 8
  tail call void @devm_kfree(ptr noundef %dev9, ptr noundef %9) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_aq_manage_mac_read(ptr noundef %hw, ptr noundef %buf) unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 263) #12
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %buf, i16 noundef zeroext 16, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 4
  %5 = and i16 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool9.not = icmp eq i16 %5, 0
  br i1 %tobool9.not, label %do.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end3
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp214.not = icmp eq i8 %7, 0
  br i1 %cmp214.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i8 %7 to i32
  br label %for.body

do.body:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_manage_mac_read.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_manage_mac_read, %if.then15)) #12
          to label %cleanup [label %if.then15], !srcloc !428

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_manage_mac_read.__UNIQUE_ID_ddebug614, ptr noundef %dev, ptr noundef nonnull @.str.82) #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %addr_type = getelementptr %struct.ice_aqc_manage_mac_read_resp, ptr %buf, i32 %indvars.iv, i32 1
  %10 = ptrtoint ptr %addr_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp24 = icmp eq i8 %11, 0
  br i1 %cmp24, label %if.then26, label %for.cond

if.then26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %port_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %12 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port_info, align 4
  %mac = getelementptr inbounds %struct.ice_port_info, ptr %13, i32 0, i32 12
  %mac_addr = getelementptr %struct.ice_aqc_manage_mac_read_resp, ptr %buf, i32 %indvars.iv, i32 2
  %14 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac_addr, align 4
  %16 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %mac, align 4
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ice_port_info, ptr %13, i32 0, i32 12, i32 0, i32 4
  %19 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %add.ptr1.i, align 2
  %20 = load ptr, ptr %port_info, align 4
  %perm_addr = getelementptr inbounds %struct.ice_port_info, ptr %20, i32 0, i32 12, i32 1
  %21 = load i32, ptr %mac_addr, align 4
  %22 = ptrtoint ptr %perm_addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %perm_addr, align 4
  %23 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i2 = getelementptr %struct.ice_port_info, ptr %20, i32 0, i32 12, i32 1, i32 4
  %24 = ptrtoint ptr %add.ptr1.i2 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %add.ptr1.i2, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %for.cond.cleanup_crit_edge, %if.then15, %do.body, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -5, %if.then15 ], [ 0, %if.then26 ], [ -5, %do.body ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_alloc_fd_res_cntr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_init_hw_tbls(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_cleanup_fltr_mgmt_struct(ptr noundef %hw) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %switch_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.not234 = icmp eq ptr %3, %1
  br i1 %cmp.not234, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr10 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %v_pos_map.0235 = phi ptr [ %3, %for.body.lr.ph ], [ %v_tmp_map.0, %list_del.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %v_pos_map.0235 to i32
  call void @__asan_load4_noabort(i32 %4)
  %v_tmp_map.0 = load ptr, ptr %v_pos_map.0235, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %v_pos_map.0235) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %v_pos_map.0235, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %v_pos_map.0235 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %v_pos_map.0235, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %v_pos_map.0235 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %v_pos_map.0235, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %v_pos_map.0235, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr10, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %v_pos_map.0235) #12
  %cmp.not = icmp eq ptr %v_tmp_map.0, %1
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %recp_list = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %recp_list, align 4
  %add.ptr42 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body19

for.body19:                                       ; preds = %if.end145.for.body19_crit_edge, %for.end
  %indvars.iv = phi i32 [ 0, %for.end ], [ %indvars.iv.next, %if.end145.for.body19_crit_edge ]
  %root_rid = getelementptr %struct.ice_sw_recipe, ptr %16, i32 %indvars.iv, i32 1
  %17 = trunc i32 %indvars.iv to i8
  %18 = ptrtoint ptr %root_rid to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %root_rid, align 1
  %rg_list = getelementptr %struct.ice_sw_recipe, ptr %16, i32 %indvars.iv, i32 20
  %19 = ptrtoint ptr %rg_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rg_list, align 4
  %cmp35.not237 = icmp eq ptr %20, %rg_list
  br i1 %cmp35.not237, label %for.body19.for.end51_crit_edge, label %for.body19.for.body38_crit_edge

for.body19.for.body38_crit_edge:                  ; preds = %for.body19
  br label %for.body38

for.body19.for.end51_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end51

for.body38:                                       ; preds = %list_del.exit220.for.body38_crit_edge, %for.body19.for.body38_crit_edge
  %rg_entry.0238 = phi ptr [ %tmprg_entry.0, %list_del.exit220.for.body38_crit_edge ], [ %20, %for.body19.for.body38_crit_edge ]
  %21 = ptrtoint ptr %rg_entry.0238 to i32
  call void @__asan_load4_noabort(i32 %21)
  %tmprg_entry.0 = load ptr, ptr %rg_entry.0238, align 4
  %call.i.i215 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rg_entry.0238) #12
  br i1 %call.i.i215, label %if.end.i.i218, label %for.body38.list_del.exit220_crit_edge

for.body38.list_del.exit220_crit_edge:            ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit220

if.end.i.i218:                                    ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i216 = getelementptr inbounds %struct.list_head, ptr %rg_entry.0238, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i216 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i216, align 4
  %24 = ptrtoint ptr %rg_entry.0238 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rg_entry.0238, align 4
  %prev1.i.i.i217 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i217 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i217, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit220

list_del.exit220:                                 ; preds = %if.end.i.i218, %for.body38.list_del.exit220_crit_edge
  %28 = ptrtoint ptr %rg_entry.0238 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %rg_entry.0238, align 4
  %prev.i219 = getelementptr inbounds %struct.list_head, ptr %rg_entry.0238, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i219 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i219, align 4
  %30 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr42, align 8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev44, ptr noundef %rg_entry.0238) #12
  %cmp35.not = icmp eq ptr %tmprg_entry.0, %rg_list
  br i1 %cmp35.not, label %list_del.exit220.for.end51_crit_edge, label %list_del.exit220.for.body38_crit_edge

list_del.exit220.for.body38_crit_edge:            ; preds = %list_del.exit220
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body38

list_del.exit220.for.end51_crit_edge:             ; preds = %list_del.exit220
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end51

for.end51:                                        ; preds = %list_del.exit220.for.end51_crit_edge, %for.body19.for.end51_crit_edge
  %adv_rule = getelementptr %struct.ice_sw_recipe, ptr %16, i32 %indvars.iv, i32 11
  %32 = ptrtoint ptr %adv_rule to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %adv_rule, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not = icmp eq i8 %33, 0
  %filt_rule_lock98 = getelementptr %struct.ice_sw_recipe, ptr %16, i32 %indvars.iv, i32 14
  tail call void @mutex_destroy(ptr noundef %filt_rule_lock98) #12
  %filt_rules102 = getelementptr %struct.ice_sw_recipe, ptr %16, i32 %indvars.iv, i32 12
  %34 = ptrtoint ptr %filt_rules102 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %filt_rules102, align 4
  %cmp116.not243 = icmp eq ptr %35, %filt_rules102
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end51
  br i1 %cmp116.not243, label %if.then.if.end_crit_edge, label %if.then.for.body75_crit_edge

if.then.for.body75_crit_edge:                     ; preds = %if.then
  br label %for.body75

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body75:                                       ; preds = %list_del.exit226.for.body75_crit_edge, %if.then.for.body75_crit_edge
  %lst_itr.0241 = phi ptr [ %tmp_entry.0, %list_del.exit226.for.body75_crit_edge ], [ %35, %if.then.for.body75_crit_edge ]
  %36 = ptrtoint ptr %lst_itr.0241 to i32
  call void @__asan_load4_noabort(i32 %36)
  %tmp_entry.0 = load ptr, ptr %lst_itr.0241, align 4
  %call.i.i221 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lst_itr.0241) #12
  br i1 %call.i.i221, label %if.end.i.i224, label %for.body75.list_del.exit226_crit_edge

for.body75.list_del.exit226_crit_edge:            ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit226

if.end.i.i224:                                    ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i222 = getelementptr inbounds %struct.list_head, ptr %lst_itr.0241, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i222 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i222, align 4
  %39 = ptrtoint ptr %lst_itr.0241 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lst_itr.0241, align 4
  %prev1.i.i.i223 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i223 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i223, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit226

list_del.exit226:                                 ; preds = %if.end.i.i224, %for.body75.list_del.exit226_crit_edge
  %43 = ptrtoint ptr %lst_itr.0241 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %lst_itr.0241, align 4
  %prev.i225 = getelementptr inbounds %struct.list_head, ptr %lst_itr.0241, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i225 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i225, align 4
  %45 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr42, align 8
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %lkups = getelementptr inbounds %struct.ice_adv_fltr_mgmt_list_entry, ptr %lst_itr.0241, i32 0, i32 1
  %47 = ptrtoint ptr %lkups to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lkups, align 4
  tail call void @devm_kfree(ptr noundef %dev81, ptr noundef %48) #12
  %49 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr42, align 8
  %dev86 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev86, ptr noundef %lst_itr.0241) #12
  %cmp72.not = icmp eq ptr %tmp_entry.0, %filt_rules102
  br i1 %cmp72.not, label %list_del.exit226.if.end_crit_edge, label %list_del.exit226.for.body75_crit_edge

list_del.exit226.for.body75_crit_edge:            ; preds = %list_del.exit226
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body75

list_del.exit226.if.end_crit_edge:                ; preds = %list_del.exit226
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %for.end51
  br i1 %cmp116.not243, label %if.else.if.end_crit_edge, label %if.else.for.body119_crit_edge

if.else.for.body119_crit_edge:                    ; preds = %if.else
  br label %for.body119

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body119:                                      ; preds = %list_del.exit232.for.body119_crit_edge, %if.else.for.body119_crit_edge
  %.pn.in244 = phi ptr [ %.pn, %list_del.exit232.for.body119_crit_edge ], [ %35, %if.else.for.body119_crit_edge ]
  %lst_itr94.0 = getelementptr i8, ptr %.pn.in244, i32 -12
  %51 = ptrtoint ptr %.pn.in244 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn = load ptr, ptr %.pn.in244, align 4
  %call.i.i227 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in244) #12
  br i1 %call.i.i227, label %if.end.i.i230, label %for.body119.list_del.exit232_crit_edge

for.body119.list_del.exit232_crit_edge:           ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit232

if.end.i.i230:                                    ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i228 = getelementptr inbounds %struct.list_head, ptr %.pn.in244, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i228 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i228, align 4
  %54 = ptrtoint ptr %.pn.in244 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %.pn.in244, align 4
  %prev1.i.i.i229 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i229 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i229, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del.exit232

list_del.exit232:                                 ; preds = %if.end.i.i230, %for.body119.list_del.exit232_crit_edge
  %58 = ptrtoint ptr %.pn.in244 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in244, align 4
  %prev.i231 = getelementptr inbounds %struct.list_head, ptr %.pn.in244, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i231 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i231, align 4
  %60 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr42, align 8
  %dev125 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev125, ptr noundef %lst_itr94.0) #12
  %cmp116.not = icmp eq ptr %.pn, %filt_rules102
  br i1 %cmp116.not, label %list_del.exit232.if.end_crit_edge, label %list_del.exit232.for.body119_crit_edge

list_del.exit232.for.body119_crit_edge:           ; preds = %list_del.exit232
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body119

list_del.exit232.if.end_crit_edge:                ; preds = %list_del.exit232
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %list_del.exit232.if.end_crit_edge, %if.else.if.end_crit_edge, %list_del.exit226.if.end_crit_edge, %if.then.if.end_crit_edge
  %root_buf = getelementptr %struct.ice_sw_recipe, ptr %16, i32 %indvars.iv, i32 21
  %62 = ptrtoint ptr %root_buf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %root_buf, align 4
  %tobool135.not = icmp eq ptr %63, null
  br i1 %tobool135.not, label %if.end.if.end145_crit_edge, label %if.then136

if.end.if.end145_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145

if.then136:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr42, align 8
  %dev141 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev141, ptr noundef nonnull %63) #12
  br label %if.end145

if.end145:                                        ; preds = %if.then136, %if.end.if.end145_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.end147, label %if.end145.for.body19_crit_edge

if.end145.for.body19_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body19

for.end147:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ice_rm_all_sw_replay_rule_info(ptr noundef %hw) #12
  %66 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr42, align 8
  %dev152 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %68 = ptrtoint ptr %recp_list to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %recp_list, align 4
  tail call void @devm_kfree(ptr noundef %dev152, ptr noundef %69) #12
  %70 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr42, align 8
  %dev158 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev158, ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_sched_cleanup_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_destroy_all_ctrlq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_deinit_hw(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fd_ctr_base = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %fd_ctr_base to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fd_ctr_base, align 4
  %call = tail call i32 @ice_free_fd_res_cntr(ptr noundef %hw, i16 noundef zeroext %1) #12
  tail call fastcc void @ice_cleanup_fltr_mgmt_struct(ptr noundef %hw)
  tail call void @ice_sched_cleanup_all(ptr noundef %hw) #12
  tail call void @ice_sched_clear_agg(ptr noundef %hw) #12
  tail call void @ice_free_seg(ptr noundef %hw) #12
  tail call void @ice_free_hw_tbls(ptr noundef %hw) #12
  %tnl_lock = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 57
  tail call void @mutex_destroy(ptr noundef %tnl_lock) #12
  %port_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_info, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %3) #12
  %6 = ptrtoint ptr %port_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %port_info, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call fastcc i32 @ice_cfg_fw_log(ptr noundef %hw, i1 noundef zeroext false)
  tail call void @ice_destroy_all_ctrlq(ptr noundef %hw) #12
  tail call void @ice_clear_all_vsi_ctx(ptr noundef %hw) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_free_fd_res_cntr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_sched_clear_agg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_free_seg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_free_hw_tbls(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_clear_all_vsi_ctx(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_check_reset(ptr nocapture noundef readonly %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 754048
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !429
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !439
  %and = and i32 %3, 63
  %add = add nuw nsw i32 %and, 10
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %entry
  %cnt.0129 = phi i32 [ 0, %entry ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader
  %__ms.0128 = phi i32 [ 100, %while.cond.preheader ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0128, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #12
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr5 = getelementptr i8, ptr %6, i32 754056
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #12, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  %8 = and i32 %7, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %while.end
  %inc = add nuw nsw i32 %cnt.0129, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.end:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0129, i32 %add)
  %cmp11 = icmp eq i32 %cnt.0129, %add
  br i1 %cmp11, label %for.end.do.body_crit_edge, label %if.end22

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %for.inc.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_check_reset.__UNIQUE_ID_ddebug647, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_check_reset, %if.then18)) #12
          to label %cleanup [label %if.then18], !srcloc !428

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr20 = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr20, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_check_reset.__UNIQUE_ID_ddebug647, ptr noundef %dev, ptr noundef nonnull @.str.42) #12
  br label %cleanup

if.end22:                                         ; preds = %for.end
  %rdma = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 0, i32 15
  %11 = ptrtoint ptr %rdma to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rdma, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool23.not = icmp eq i8 %12, 0
  %or = select i1 %tobool23.not, i32 827, i32 1851
  br label %for.body27

for.body27:                                       ; preds = %while.body65.preheader.for.body27_crit_edge, %if.end22
  %cnt.1131 = phi i32 [ 0, %if.end22 ], [ %inc68, %while.body65.preheader.for.body27_crit_edge ]
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 8
  %add.ptr31 = getelementptr i8, ptr %14, i32 745480
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #12, !srcloc !429
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  %and35 = and i32 %16, %or
  call void @__sanitizer_cov_trace_cmp4(i32 %and35, i32 %or)
  %cmp36 = icmp eq i32 %and35, %or
  br i1 %cmp36, label %do.body39, label %while.body65.preheader

while.body65.preheader:                           ; preds = %for.body27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #12
  %inc68 = add nuw nsw i32 %cnt.1131, 1
  %exitcond135.not = icmp eq i32 %inc68, 300
  br i1 %exitcond135.not, label %while.body65.preheader.do.body73_crit_edge, label %while.body65.preheader.for.body27_crit_edge

while.body65.preheader.for.body27_crit_edge:      ; preds = %while.body65.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body27

while.body65.preheader.do.body73_crit_edge:       ; preds = %while.body65.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body73

do.body39:                                        ; preds = %for.body27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_check_reset.__UNIQUE_ID_ddebug648, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_check_reset, %for.end69.thread)) #12
          to label %for.end69 [label %for.end69.thread], !srcloc !428

for.end69.thread:                                 ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr54 = getelementptr i8, ptr %hw, i32 -2960
  %27 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr54, align 8
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_check_reset.__UNIQUE_ID_ddebug648, ptr noundef %dev56, ptr noundef nonnull @.str.43, i32 noundef %cnt.1131) #12
  br label %cleanup

for.end69:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %cnt.1131)
  %cmp70 = icmp eq i32 %cnt.1131, 300
  br i1 %cmp70, label %for.end69.do.body73_crit_edge, label %for.end69.cleanup_crit_edge

for.end69.cleanup_crit_edge:                      ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end69.do.body73_crit_edge:                    ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body73

do.body73:                                        ; preds = %for.end69.do.body73_crit_edge, %while.body65.preheader.do.body73_crit_edge
  %and35133142 = phi i32 [ %or, %for.end69.do.body73_crit_edge ], [ %and35, %while.body65.preheader.do.body73_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_check_reset.__UNIQUE_ID_ddebug649, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_check_reset, %if.then85)) #12
          to label %cleanup [label %if.then85], !srcloc !428

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr88 = getelementptr i8, ptr %hw, i32 -2960
  %29 = ptrtoint ptr %add.ptr88 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr88, align 8
  %dev90 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_check_reset.__UNIQUE_ID_ddebug649, ptr noundef %dev90, ptr noundef nonnull @.str.44, i32 noundef %and35133142) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %do.body73, %for.end69.cleanup_crit_edge, %for.end69.thread, %if.then18, %do.body
  %retval.0 = phi i32 [ -5, %if.then18 ], [ -5, %if.then85 ], [ 0, %for.end69.cleanup_crit_edge ], [ -5, %do.body ], [ 0, %for.end69.thread ], [ -5, %do.body73 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_pf_reset(ptr nocapture noundef readonly %hw) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 754056
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  %3 = and i32 %2, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr5 = getelementptr i8, ptr %5, i32 745480
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #12, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  %7 = and i32 %6, 990052352
  call void @__sanitizer_cov_trace_const_cmp4(i32 990052352, i32 %7)
  %tobool10.not = icmp eq i32 %7, 990052352
  br i1 %tobool10.not, label %if.end14, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call11 = tail call i32 @ice_check_reset(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %. = select i1 %tobool12.not, i32 0, i32 -5
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %add.ptr18 = getelementptr i8, ptr %9, i32 593920
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #12, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !444
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !445
  tail call void @arm_heavy_mb() #12
  %11 = or i32 %10, 16777216
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %add.ptr23 = getelementptr i8, ptr %13, i32 593920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %11) #12, !srcloc !435
  br label %for.body

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %if.end14
  %cnt.063 = phi i32 [ 0, %if.end14 ], [ %inc, %if.end34.for.body_crit_edge ]
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %add.ptr27 = getelementptr i8, ptr %15, i32 593920
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #12, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !446
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool32.not = icmp eq i32 %17, 0
  br i1 %tobool32.not, label %for.end, label %if.end34

if.end34:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #12
  %inc = add nuw nsw i32 %cnt.063, 1
  %exitcond.not = icmp eq i32 %inc, 5300
  br i1 %exitcond.not, label %if.end34.cleanup_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %cnt.063)
  %cmp35 = icmp eq i32 %cnt.063, 300
  br i1 %cmp35, label %do.body37, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_pf_reset.__UNIQUE_ID_ddebug650, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_pf_reset, %if.then43)) #12
          to label %cleanup [label %if.then43], !srcloc !428

if.then43:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr45 = getelementptr i8, ptr %hw, i32 -2960
  %19 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr45, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_pf_reset.__UNIQUE_ID_ddebug650, ptr noundef %dev, ptr noundef nonnull @.str.84) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %do.body37, %for.end.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ -5, %if.then43 ], [ 0, %for.end.cleanup_crit_edge ], [ -5, %do.body37 ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_write_rxq_ctx(ptr nocapture noundef readonly %hw, ptr noundef %rlan_ctx, i32 noundef %rxq_index) local_unnamed_addr #1 align 64 {
entry:
  %ctx_buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ctx_buf) #12
  %0 = call ptr @memset(ptr %ctx_buf, i32 0, i32 32)
  %tobool.not = icmp eq ptr %rlan_ctx, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %prefena = getelementptr inbounds %struct.ice_rlan_ctx, ptr %rlan_ctx, i32 0, i32 19
  %1 = ptrtoint ptr %prefena to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %prefena, align 2
  %call = call i32 @ice_set_ctx(ptr noundef %hw, ptr noundef nonnull %rlan_ctx, ptr noundef nonnull %ctx_buf, ptr noundef nonnull @ice_rlan_ctx_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %rxq_index)
  %cmp.i = icmp ugt i32 %rxq_index, 2047
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %for.cond.preheader.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end
  %mul8.i = shl nuw nsw i32 %rxq_index, 2
  %add.i = add nuw nsw i32 %mul8.i, 2621440
  %add.ptr17.i = getelementptr i8, ptr %hw, i32 -2960
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %for.cond.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.cond.preheader.i ], [ %indvars.iv.next.i, %for.inc.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !447
  tail call void @arm_heavy_mb() #12
  %mul.i = shl nuw nsw i32 %indvars.iv.i, 2
  %add.ptr.i = getelementptr i8, ptr %ctx_buf, i32 %mul.i
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %mul7.i = shl nuw nsw i32 %indvars.iv.i, 13
  %add9.i = add i32 %add.i, %mul7.i
  %add.ptr10.i = getelementptr i8, ptr %6, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %4) #12, !srcloc !435
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_copy_rxq_ctx_to_hw.__UNIQUE_ID_ddebug653, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_rxq_ctx, %if.then15.i)) #12
          to label %for.inc.i [label %if.then15.i], !srcloc !428

if.then15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr17.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_copy_rxq_ctx_to_hw.__UNIQUE_ID_ddebug653, ptr noundef %dev.i, ptr noundef nonnull @.str.86, i32 noundef %indvars.iv.i, i32 noundef %3) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then15.i, %do.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.do.body.i_crit_edge

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ctx_buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_set_ctx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %src_ctx, ptr nocapture noundef %dest_ctx, ptr nocapture noundef readonly %ce_info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %width91 = getelementptr %struct.ice_ctx_ele, ptr %ce_info, i32 0, i32 2
  %0 = ptrtoint ptr %width91 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %width91, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not92 = icmp eq i16 %1, 0
  br i1 %tobool.not92, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i16 [ %1, %for.body.lr.ph ], [ %71, %for.inc.for.body_crit_edge ]
  %width96 = phi ptr [ %width91, %for.body.lr.ph ], [ %width, %for.inc.for.body_crit_edge ]
  %arrayidx95 = phi ptr [ %ce_info, %for.body.lr.ph ], [ %arrayidx, %for.inc.for.body_crit_edge ]
  %f.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv = zext i16 %2 to i32
  %size_of = getelementptr %struct.ice_ctx_ele, ptr %ce_info, i32 %f.093, i32 1
  %3 = ptrtoint ptr %size_of to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %size_of, align 2
  %conv4 = zext i16 %4 to i32
  %mul = shl nuw nsw i32 %conv4, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv)
  %cmp = icmp ult i32 %mul, %conv
  br i1 %cmp, label %do.body, label %if.end17

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_set_ctx.__UNIQUE_ID_ddebug723, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_set_ctx, %if.then9)) #12
          to label %for.inc [label %if.then9], !srcloc !428

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %width96 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %width96, align 2
  %conv13 = zext i16 %8 to i32
  %9 = ptrtoint ptr %size_of to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %size_of, align 2
  %conv16 = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_set_ctx.__UNIQUE_ID_ddebug723, ptr noundef %dev, ptr noundef nonnull @.str.64, i32 noundef %f.093, i32 noundef %conv13, i32 noundef %conv16) #12
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %11 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.166)
  switch i16 %4, label %if.end17.cleanup_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %sw.bb22
    i16 4, label %sw.bb24
    i16 8, label %sw.bb26
  ]

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx95, align 2
  %conv.i = zext i16 %13 to i32
  %add.ptr.i = getelementptr i8, ptr %src_ctx, i32 %conv.i
  %lsb.i = getelementptr %struct.ice_ctx_ele, ptr %ce_info, i32 %f.093, i32 3
  %14 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %lsb.i, align 2
  %rem.i = and i16 %15, 7
  %width.i = getelementptr %struct.ice_ctx_ele, ptr %ce_info, i32 %f.093, i32 2
  %16 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %width.i, align 2
  %conv3.i = zext i16 %17 to i32
  %notmask.i = shl nsw i32 -1, %conv3.i
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr.i, align 1
  %conv4.i = and i32 %notmask.i, 255
  %conv5.i = xor i32 %conv4.i, 255
  %20 = trunc i32 %conv5.i to i8
  %conv7.i = and i8 %19, %20
  %conv8.i = zext i16 %rem.i to i32
  %shl10.i = shl i32 %conv5.i, %conv8.i
  %conv13.i = zext i8 %conv7.i to i16
  %shl14.i = shl nuw nsw i16 %conv13.i, %rem.i
  %21 = lshr i16 %15, 3
  %div.i = zext i16 %21 to i32
  %add.ptr18.i = getelementptr i8, ptr %dest_ctx, i32 %div.i
  %22 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %dest_byte.0.copyload.i = load i8, ptr %add.ptr18.i, align 1
  %23 = trunc i32 %shl10.i to i8
  %24 = xor i8 %23, -1
  %conv22.i = and i8 %dest_byte.0.copyload.i, %24
  %conv23.i = trunc i16 %shl14.i to i8
  %or.i = or i8 %conv22.i, %conv23.i
  store i8 %or.i, ptr %add.ptr18.i, align 1
  br label %for.inc

sw.bb22:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx95, align 2
  %conv.i54 = zext i16 %26 to i32
  %add.ptr.i55 = getelementptr i8, ptr %src_ctx, i32 %conv.i54
  %lsb.i56 = getelementptr %struct.ice_ctx_ele, ptr %ce_info, i32 %f.093, i32 3
  %27 = ptrtoint ptr %lsb.i56 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %lsb.i56, align 2
  %rem.i57 = and i16 %28, 7
  %width.i58 = getelementptr %struct.ice_ctx_ele, ptr %ce_info, i32 %f.093, i32 2
  %29 = ptrtoint ptr %width.i58 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %width.i58, align 2
  %conv3.i59 = zext i16 %30 to i32
  %notmask.i60 = shl nsw i32 -1, %conv3.i59
  %31 = ptrtoint ptr %add.ptr.i55 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i55, align 2
  %conv4.i61 = and i32 %notmask.i60, 65535
  %conv5.i62 = xor i32 %conv4.i61, 65535
  %33 = trunc i32 %conv5.i62 to i16
  %conv7.i63 = and i16 %32, %33
  %conv8.i64 = zext i16 %rem.i57 to i32
  %shl10.i65 = shl i32 %conv5.i62, %conv8.i64
  %conv11.i = trunc i32 %shl10.i65 to i16
  %shl14.i66 = shl i16 %conv7.i63, %rem.i57
  %34 = lshr i16 %28, 3
  %div.i67 = zext i16 %34 to i32
  %add.ptr18.i68 = getelementptr i8, ptr %dest_ctx, i32 %div.i67
  %35 = ptrtoint ptr %add.ptr18.i68 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %dest_word.0.copyload.i = load i16, ptr %add.ptr18.i68, align 1
  %36 = xor i16 %conv11.i, -1
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #12
  %and21.i = and i16 %37, %dest_word.0.copyload.i
  %38 = tail call i16 @llvm.bswap.i16(i16 %shl14.i66) #12
  %or37.i = or i16 %and21.i, %38
  %39 = ptrtoint ptr %add.ptr18.i68 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %or37.i, ptr %add.ptr18.i68, align 1
  br label %for.inc

sw.bb24:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx95, align 2
  %lsb.i69 = getelementptr %struct.ice_ctx_ele, ptr %ce_info, i32 %f.093, i32 3
  %42 = ptrtoint ptr %lsb.i69 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %lsb.i69, align 2
  %width.i70 = getelementptr %struct.ice_ctx_ele, ptr %ce_info, i32 %f.093, i32 2
  %44 = ptrtoint ptr %width.i70 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %width.i70, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %45)
  %cmp.i = icmp ult i16 %45, 32
  %conv3.i71 = zext i16 %45 to i32
  %notmask.i72 = shl nsw i32 -1, %conv3.i71
  %sub.i = xor i32 %notmask.i72, -1
  %mask.0.i = select i1 %cmp.i, i32 %sub.i, i32 -1
  %46 = and i16 %43, 7
  %conv.i73 = zext i16 %41 to i32
  %add.ptr.i74 = getelementptr i8, ptr %src_ctx, i32 %conv.i73
  %47 = ptrtoint ptr %add.ptr.i74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i74, align 4
  %and.i = and i32 %mask.0.i, %48
  %conv7.i75 = zext i16 %46 to i32
  %shl8.i = shl i32 %mask.0.i, %conv7.i75
  %shl10.i76 = shl i32 %and.i, %conv7.i75
  %49 = lshr i16 %43, 3
  %div.i77 = zext i16 %49 to i32
  %add.ptr13.i = getelementptr i8, ptr %dest_ctx, i32 %div.i77
  %50 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %dest_dword.0.copyload.i = load i32, ptr %add.ptr13.i, align 1
  %51 = xor i32 %shl8.i, -1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  %and14.i = and i32 %52, %dest_dword.0.copyload.i
  %53 = tail call i32 @llvm.bswap.i32(i32 %shl10.i76) #12
  %or.i78 = or i32 %and14.i, %53
  %54 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %or.i78, ptr %add.ptr13.i, align 1
  br label %for.inc

sw.bb26:                                          ; preds = %if.end17
  %55 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx95, align 2
  %lsb.i79 = getelementptr %struct.ice_ctx_ele, ptr %ce_info, i32 %f.093, i32 3
  %57 = ptrtoint ptr %lsb.i79 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %lsb.i79, align 2
  %width.i80 = getelementptr %struct.ice_ctx_ele, ptr %ce_info, i32 %f.093, i32 2
  %59 = ptrtoint ptr %width.i80 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %width.i80, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %60)
  %cmp.i81 = icmp ult i16 %60, 64
  br i1 %cmp.i81, label %if.then.i, label %sw.bb26.ice_write_qword.exit_crit_edge

sw.bb26.ice_write_qword.exit_crit_edge:           ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_write_qword.exit

if.then.i:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #14
  %sh_prom.i = zext i16 %60 to i64
  %notmask.i82 = shl nsw i64 -1, %sh_prom.i
  %sub.i83 = xor i64 %notmask.i82, -1
  br label %ice_write_qword.exit

ice_write_qword.exit:                             ; preds = %if.then.i, %sw.bb26.ice_write_qword.exit_crit_edge
  %mask.0.i84 = phi i64 [ %sub.i83, %if.then.i ], [ -1, %sw.bb26.ice_write_qword.exit_crit_edge ]
  %61 = and i16 %58, 7
  %conv.i85 = zext i16 %56 to i32
  %add.ptr.i86 = getelementptr i8, ptr %src_ctx, i32 %conv.i85
  %62 = ptrtoint ptr %add.ptr.i86 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %add.ptr.i86, align 8
  %and.i87 = and i64 %63, %mask.0.i84
  %sh_prom8.i = zext i16 %61 to i64
  %shl9.i = shl i64 %mask.0.i84, %sh_prom8.i
  %shl12.i = shl i64 %and.i87, %sh_prom8.i
  %64 = lshr i16 %58, 3
  %div.i88 = zext i16 %64 to i32
  %add.ptr15.i = getelementptr i8, ptr %dest_ctx, i32 %div.i88
  %65 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 8)
  %dest_qword.0.copyload.i = load i64, ptr %add.ptr15.i, align 1
  %66 = xor i64 %shl9.i, -1
  %67 = tail call i64 @llvm.bswap.i64(i64 %66) #12
  %and16.i = and i64 %dest_qword.0.copyload.i, %67
  %68 = tail call i64 @llvm.bswap.i64(i64 %shl12.i) #12
  %or.i89 = or i64 %68, %and16.i
  %69 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 %or.i89, ptr %add.ptr15.i, align 1
  br label %for.inc

for.inc:                                          ; preds = %ice_write_qword.exit, %sw.bb24, %sw.bb22, %sw.bb, %if.then9, %do.body
  %inc = add i32 %f.093, 1
  %arrayidx = getelementptr %struct.ice_ctx_ele, ptr %ce_info, i32 %inc
  %width = getelementptr %struct.ice_ctx_ele, ptr %ce_info, i32 %inc, i32 2
  %70 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %width, align 2
  %tobool.not = icmp eq i16 %71, 0
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr nocapture noundef %in) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_sbq_cmd_desc, align 4
  %msg = alloca %struct.ice_sbq_msg_req, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = getelementptr inbounds i8, ptr %desc, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #12
  %2 = call ptr @memset(ptr %msg, i32 0, i32 16)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %in, align 4
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %msg, align 4
  %opcode = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %in, i32 0, i32 1
  %6 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %opcode, align 1
  %opcode2 = getelementptr inbounds %struct.ice_sbq_msg_req, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %opcode2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %opcode2, align 2
  %flags = getelementptr inbounds %struct.ice_sbq_msg_req, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 64, ptr %flags, align 1
  %sbe_fbe = getelementptr inbounds %struct.ice_sbq_msg_req, ptr %msg, i32 0, i32 4
  %10 = ptrtoint ptr %sbe_fbe to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 15, ptr %sbe_fbe, align 4
  %msg_addr_low = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %in, i32 0, i32 2
  %11 = ptrtoint ptr %msg_addr_low to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %msg_addr_low, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %msg_addr_low3 = getelementptr inbounds %struct.ice_sbq_msg_req, ptr %msg, i32 0, i32 6
  %14 = ptrtoint ptr %msg_addr_low3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %msg_addr_low3, align 2
  %msg_addr_high = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %in, i32 0, i32 3
  %15 = ptrtoint ptr %msg_addr_high to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_addr_high, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %msg_addr_high4 = getelementptr inbounds %struct.ice_sbq_msg_req, ptr %msg, i32 0, i32 7
  %18 = ptrtoint ptr %msg_addr_high4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %msg_addr_high4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %in, i32 0, i32 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %data6 = getelementptr inbounds %struct.ice_sbq_msg_req, ptr %msg, i32 0, i32 8
  %22 = ptrtoint ptr %data6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %data6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %msg_len.0 = phi i16 [ 16, %if.then ], [ 12, %entry.if.end_crit_edge ]
  %23 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 4, ptr %desc, align 4
  %opcode9 = getelementptr inbounds %struct.ice_sbq_cmd_desc, ptr %desc, i32 0, i32 1
  %24 = ptrtoint ptr %opcode9 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 12, ptr %opcode9, align 2
  %25 = shl nuw nsw i16 %msg_len.0, 8
  %param0 = getelementptr inbounds %struct.ice_sbq_cmd_desc, ptr %desc, i32 0, i32 6
  %26 = ptrtoint ptr %param0 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %param0, align 4
  %call.i = tail call ptr @ice_get_sbq(ptr noundef %hw) #12
  %call1.i = call i32 @ice_sq_send_cmd(ptr noundef %hw, ptr noundef %call.i, ptr noundef nonnull %desc, ptr noundef nonnull %msg, i16 noundef zeroext %msg_len.0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool10.not = icmp eq i32 %call1.i, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %27 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %opcode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool12.not = icmp eq i8 %28, 0
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %sbe_fbe to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sbe_fbe, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %data15 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %in, i32 0, i32 4
  %32 = ptrtoint ptr %data15 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %data15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %call1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_get_fw_ver(ptr noundef %hw, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1) #12
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 3
  %2 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %2, align 4
  %fw_branch1 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 37
  %7 = ptrtoint ptr %fw_branch1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %fw_branch1, align 4
  %fw_major = getelementptr inbounds %struct.ice_aqc_get_ver, ptr %4, i32 0, i32 3
  %8 = ptrtoint ptr %fw_major to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fw_major, align 1
  %fw_maj_ver = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 38
  %10 = ptrtoint ptr %fw_maj_ver to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %fw_maj_ver, align 1
  %fw_minor = getelementptr inbounds %struct.ice_aqc_get_ver, ptr %4, i32 0, i32 4
  %11 = ptrtoint ptr %fw_minor to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fw_minor, align 2
  %fw_min_ver = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 39
  %13 = ptrtoint ptr %fw_min_ver to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %fw_min_ver, align 2
  %fw_patch = getelementptr inbounds %struct.ice_aqc_get_ver, ptr %4, i32 0, i32 5
  %14 = ptrtoint ptr %fw_patch to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fw_patch, align 1
  %fw_patch2 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 40
  %16 = ptrtoint ptr %fw_patch2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %fw_patch2, align 1
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %fw_build3 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 41
  %20 = ptrtoint ptr %fw_build3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %fw_build3, align 8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 4
  %api_branch4 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 33
  %23 = ptrtoint ptr %api_branch4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %api_branch4, align 8
  %api_major = getelementptr inbounds %struct.ice_aqc_get_ver, ptr %4, i32 0, i32 7
  %24 = ptrtoint ptr %api_major to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %api_major, align 1
  %api_maj_ver = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 34
  %26 = ptrtoint ptr %api_maj_ver to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %api_maj_ver, align 1
  %api_minor = getelementptr inbounds %struct.ice_aqc_get_ver, ptr %4, i32 0, i32 8
  %27 = ptrtoint ptr %api_minor to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %api_minor, align 2
  %api_min_ver = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 35
  %29 = ptrtoint ptr %api_min_ver to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %api_min_ver, align 2
  %api_patch = getelementptr inbounds %struct.ice_aqc_get_ver, ptr %4, i32 0, i32 9
  %30 = ptrtoint ptr %api_patch to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %api_patch, align 1
  %api_patch5 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 36
  %32 = ptrtoint ptr %api_patch5 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %api_patch5, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_send_driver_ver(ptr noundef %hw, ptr noundef %dv, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %tobool.not = icmp eq ptr %dv, null
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2) #12
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc, align 4
  %4 = or i16 %3, 4
  store i16 %4, ptr %desc, align 4
  %5 = ptrtoint ptr %dv to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dv, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %1, align 4
  %minor_ver = getelementptr inbounds %struct.ice_driver_ver, ptr %dv, i32 0, i32 1
  %8 = ptrtoint ptr %minor_ver to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %minor_ver, align 1
  %minor_ver3 = getelementptr inbounds %struct.ice_aqc_driver_ver, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %minor_ver3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %minor_ver3, align 1
  %build_ver = getelementptr inbounds %struct.ice_driver_ver, ptr %dv, i32 0, i32 2
  %11 = ptrtoint ptr %build_ver to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %build_ver, align 1
  %build_ver4 = getelementptr inbounds %struct.ice_aqc_driver_ver, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %build_ver4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %build_ver4, align 2
  %subbuild_ver = getelementptr inbounds %struct.ice_driver_ver, ptr %dv, i32 0, i32 3
  %14 = ptrtoint ptr %subbuild_ver to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %subbuild_ver, align 1
  %subbuild_ver5 = getelementptr inbounds %struct.ice_aqc_driver_ver, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %subbuild_ver5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %subbuild_ver5, align 1
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body.land.lhs.true_crit_edge, %if.end
  %indvars.iv = phi i32 [ 0, %if.end ], [ %indvars.iv.next, %while.body.land.lhs.true_crit_edge ]
  %arrayidx = getelementptr %struct.ice_driver_ver, ptr %dv, i32 0, i32 4, i32 %indvars.iv
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %19 = icmp slt i8 %18, 1
  br i1 %19, label %while.end.split.loop.exit35, label %while.body

while.body:                                       ; preds = %land.lhs.true
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 32
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.land.lhs.true_crit_edge

while.body.land.lhs.true_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end.split.loop.exit35:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %20 = trunc i32 %indvars.iv to i16
  br label %while.end

while.end:                                        ; preds = %while.end.split.loop.exit35, %while.body.while.end_crit_edge
  %len.0.lcssa = phi i16 [ %20, %while.end.split.loop.exit35 ], [ 32, %while.body.while.end_crit_edge ]
  %driver_string16 = getelementptr inbounds %struct.ice_driver_ver, ptr %dv, i32 0, i32 4
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %driver_string16, i16 noundef zeroext %len.0.lcssa, ptr noundef %cd)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %while.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_q_shutdown(ptr noundef %hw, i1 noundef zeroext %unloading) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 3) #12
  br i1 %unloading, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_acquire_res(ptr noundef %hw, i32 noundef %res, i32 noundef %access, i32 noundef %timeout) local_unnamed_addr #1 align 64 {
entry:
  %desc.i155 = alloca %struct.ice_aq_desc, align 4
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 2
  %3 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 8) #12
  %conv.i = trunc i32 %res to i16
  %4 = call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %0, align 4
  %conv1.i = trunc i32 %access to i16
  %6 = call i16 @llvm.bswap.i16(i16 %conv1.i) #12
  %access_type.i = getelementptr inbounds %struct.ice_aqc_req_res, ptr %0, i32 0, i32 1
  %7 = ptrtoint ptr %access_type.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %access_type.i, align 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %2, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %timeout) #12
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 4
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %res)
  %cmp.i = icmp eq i32 %res, 4
  br i1 %cmp.i, label %if.then.i, label %if.end25.i

if.then.i:                                        ; preds = %entry
  %11 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 4
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.167)
  switch i16 %13, label %ice_aq_req_res.exit.thread198 [
    i16 0, label %if.then.i.cleanup.sink.split.sink.split.i_crit_edge
    i16 256, label %if.then15.i
    i16 512, label %ice_aq_req_res.exit.thread
  ]

if.then.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.sink.split.i

ice_aq_req_res.exit.thread198:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  br label %do.body

ice_aq_req_res.exit.thread:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  br label %if.then68

if.then15.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.sink.split.i

if.end25.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end25.i.cleanup.sink.split.sink.split.i_crit_edge, label %lor.lhs.false.i

if.end25.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.sink.split.i

lor.lhs.false.i:                                  ; preds = %if.end25.i
  %sq_last_status.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 8
  %15 = ptrtoint ptr %sq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sq_last_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %16)
  %cmp26.i = icmp eq i32 %16, 12
  br i1 %cmp26.i, label %lor.lhs.false.i.cleanup.sink.split.sink.split.i_crit_edge, label %lor.lhs.false.i.ice_aq_req_res.exit_crit_edge

lor.lhs.false.i.ice_aq_req_res.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_aq_req_res.exit

lor.lhs.false.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %lor.lhs.false.i.cleanup.sink.split.sink.split.i_crit_edge, %if.end25.i.cleanup.sink.split.sink.split.i_crit_edge, %if.then15.i, %if.then.i.cleanup.sink.split.sink.split.i_crit_edge
  %retval.0.ph.ph.i = phi i32 [ -5, %if.then15.i ], [ 0, %if.then.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %call.i, %lor.lhs.false.i.cleanup.sink.split.sink.split.i_crit_edge ], [ 0, %if.end25.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18) #12
  br label %ice_aq_req_res.exit

ice_aq_req_res.exit:                              ; preds = %cleanup.sink.split.sink.split.i, %lor.lhs.false.i.ice_aq_req_res.exit_crit_edge
  %time_left.0 = phi i32 [ 0, %lor.lhs.false.i.ice_aq_req_res.exit_crit_edge ], [ %19, %cleanup.sink.split.sink.split.i ]
  %retval.0.i154 = phi i32 [ %call.i, %lor.lhs.false.i.ice_aq_req_res.exit_crit_edge ], [ %retval.0.ph.ph.i, %cleanup.sink.split.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  %20 = zext i32 %retval.0.i154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %retval.0.i154, label %ice_aq_req_res.exit.do.body_crit_edge [
    i32 -114, label %ice_aq_req_res.exit.if.then68_crit_edge
    i32 0, label %ice_aq_req_res.exit.if.end9_crit_edge
  ]

ice_aq_req_res.exit.if.end9_crit_edge:            ; preds = %ice_aq_req_res.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

ice_aq_req_res.exit.if.then68_crit_edge:          ; preds = %ice_aq_req_res.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68

ice_aq_req_res.exit.do.body_crit_edge:            ; preds = %ice_aq_req_res.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %ice_aq_req_res.exit.do.body_crit_edge, %ice_aq_req_res.exit.thread198
  %retval.0.i154204 = phi i32 [ -5, %ice_aq_req_res.exit.thread198 ], [ %retval.0.i154, %ice_aq_req_res.exit.do.body_crit_edge ]
  %time_left.0202 = phi i32 [ 0, %ice_aq_req_res.exit.thread198 ], [ %time_left.0, %ice_aq_req_res.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_acquire_res.__UNIQUE_ID_ddebug654, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_acquire_res, %if.then6)) #12
          to label %if.end9 [label %if.then6], !srcloc !428

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_acquire_res.__UNIQUE_ID_ddebug654, ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %res, i32 noundef %access) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.body, %ice_aq_req_res.exit.if.end9_crit_edge
  %retval.0.i154203 = phi i32 [ %retval.0.i154204, %do.body ], [ %retval.0.i154, %ice_aq_req_res.exit.if.end9_crit_edge ], [ %retval.0.i154204, %if.then6 ]
  %time_left.0201 = phi i32 [ %time_left.0202, %do.body ], [ %time_left.0, %ice_aq_req_res.exit.if.end9_crit_edge ], [ %time_left.0202, %if.then6 ]
  %23 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i155, i32 0, i32 6
  %24 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i155, i32 0, i32 6, i32 0, i32 1
  %25 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i155, i32 0, i32 6, i32 0, i32 2
  %access_type.i158 = getelementptr inbounds %struct.ice_aqc_req_res, ptr %23, i32 0, i32 1
  %sq_last_status.i165 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 8
  %26 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i155, i32 0, i32 6, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %ice_aq_req_res.exit174.while.cond_crit_edge, %if.end9
  %time_left.1 = phi i32 [ %time_left.0201, %if.end9 ], [ %time_left.2, %ice_aq_req_res.exit174.while.cond_crit_edge ]
  %status.0 = phi i32 [ %retval.0.i154203, %if.end9 ], [ %retval.0.i173, %ice_aq_req_res.exit174.while.cond_crit_edge ]
  %timeout.addr.0 = phi i32 [ %time_left.0201, %if.end9 ], [ %37, %ice_aq_req_res.exit174.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool10.not = icmp eq i32 %status.0, 0
  br i1 %tobool10.not, label %while.cond.if.end114_crit_edge, label %land.lhs.true

while.cond.if.end114_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

land.lhs.true:                                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.addr.0)
  %tobool11.not = icmp eq i32 %timeout.addr.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %time_left.1)
  %tobool12.not = icmp eq i32 %time_left.1, 0
  %or.cond = select i1 %tobool11.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %while.end40, label %while.body27.preheader

while.body27.preheader:                           ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 214748000) #12
  %37 = call i32 @llvm.usub.sat.i32(i32 %timeout.addr.0, i32 10)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i155) #12
  %38 = call ptr @memset(ptr %desc.i155, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i155, i16 noundef zeroext 8) #12
  %39 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %4, ptr %23, align 4
  %40 = ptrtoint ptr %access_type.i158 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %6, ptr %access_type.i158, align 2
  %41 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %25, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %time_left.1) #12
  %43 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %24, align 4
  %call.i159 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i155, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #12
  br i1 %cmp.i, label %if.then.i161, label %if.end25.i164

if.then.i161:                                     ; preds = %while.body27.preheader
  %44 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %26, align 4
  %46 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.169)
  switch i16 %45, label %if.then.i161.ice_aq_req_res.exit174_crit_edge [
    i16 0, label %if.then.i161.cleanup.sink.split.sink.split.i169_crit_edge
    i16 256, label %if.then15.i162
    i16 512, label %ice_aq_req_res.exit174.thread
  ]

if.then.i161.cleanup.sink.split.sink.split.i169_crit_edge: ; preds = %if.then.i161
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.sink.split.i169

if.then.i161.ice_aq_req_res.exit174_crit_edge:    ; preds = %if.then.i161
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_aq_req_res.exit174

ice_aq_req_res.exit174.thread:                    ; preds = %if.then.i161
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i155) #12
  br label %if.then68

if.then15.i162:                                   ; preds = %if.then.i161
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.sink.split.i169

if.end25.i164:                                    ; preds = %while.body27.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool.not.i163 = icmp eq i32 %call.i159, 0
  br i1 %tobool.not.i163, label %if.end25.i164.cleanup.sink.split.sink.split.i169_crit_edge, label %lor.lhs.false.i167

if.end25.i164.cleanup.sink.split.sink.split.i169_crit_edge: ; preds = %if.end25.i164
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.sink.split.i169

lor.lhs.false.i167:                               ; preds = %if.end25.i164
  %47 = ptrtoint ptr %sq_last_status.i165 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sq_last_status.i165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %48)
  %cmp26.i166 = icmp eq i32 %48, 12
  br i1 %cmp26.i166, label %lor.lhs.false.i167.cleanup.sink.split.sink.split.i169_crit_edge, label %lor.lhs.false.i167.ice_aq_req_res.exit174_crit_edge

lor.lhs.false.i167.ice_aq_req_res.exit174_crit_edge: ; preds = %lor.lhs.false.i167
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_aq_req_res.exit174

lor.lhs.false.i167.cleanup.sink.split.sink.split.i169_crit_edge: ; preds = %lor.lhs.false.i167
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.sink.split.i169

cleanup.sink.split.sink.split.i169:               ; preds = %lor.lhs.false.i167.cleanup.sink.split.sink.split.i169_crit_edge, %if.end25.i164.cleanup.sink.split.sink.split.i169_crit_edge, %if.then15.i162, %if.then.i161.cleanup.sink.split.sink.split.i169_crit_edge
  %retval.0.ph.ph.i168 = phi i32 [ -5, %if.then15.i162 ], [ 0, %if.then.i161.cleanup.sink.split.sink.split.i169_crit_edge ], [ %call.i159, %lor.lhs.false.i167.cleanup.sink.split.sink.split.i169_crit_edge ], [ 0, %if.end25.i164.cleanup.sink.split.sink.split.i169_crit_edge ]
  %49 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %24, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50) #12
  br label %ice_aq_req_res.exit174

ice_aq_req_res.exit174:                           ; preds = %cleanup.sink.split.sink.split.i169, %lor.lhs.false.i167.ice_aq_req_res.exit174_crit_edge, %if.then.i161.ice_aq_req_res.exit174_crit_edge
  %time_left.2 = phi i32 [ 0, %lor.lhs.false.i167.ice_aq_req_res.exit174_crit_edge ], [ 0, %if.then.i161.ice_aq_req_res.exit174_crit_edge ], [ %51, %cleanup.sink.split.sink.split.i169 ]
  %retval.0.i173 = phi i32 [ %call.i159, %lor.lhs.false.i167.ice_aq_req_res.exit174_crit_edge ], [ -5, %if.then.i161.ice_aq_req_res.exit174_crit_edge ], [ %retval.0.ph.ph.i168, %cleanup.sink.split.sink.split.i169 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i155) #12
  %52 = zext i32 %retval.0.i173 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %retval.0.i173, label %ice_aq_req_res.exit174.while.cond_crit_edge [
    i32 -114, label %ice_aq_req_res.exit174.if.then68_crit_edge
    i32 0, label %ice_aq_req_res.exit174.if.end114_crit_edge
  ]

ice_aq_req_res.exit174.if.end114_crit_edge:       ; preds = %ice_aq_req_res.exit174
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

ice_aq_req_res.exit174.if.then68_crit_edge:       ; preds = %ice_aq_req_res.exit174
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68

ice_aq_req_res.exit174.while.cond_crit_edge:      ; preds = %ice_aq_req_res.exit174
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end40:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -114, i32 %status.0)
  %cond = icmp eq i32 %status.0, -114
  br i1 %cond, label %while.end40.if.then68_crit_edge, label %do.body45

while.end40.if.then68_crit_edge:                  ; preds = %while.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68

do.body45:                                        ; preds = %while.end40
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_acquire_res.__UNIQUE_ID_ddebug655, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_acquire_res, %if.then57)) #12
          to label %if.end114 [label %if.then57], !srcloc !428

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr60 = getelementptr i8, ptr %hw, i32 -2960
  %53 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr60, align 8
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_acquire_res.__UNIQUE_ID_ddebug655, ptr noundef %dev62, ptr noundef nonnull @.str.52) #12
  br label %if.end114

if.then68:                                        ; preds = %while.end40.if.then68_crit_edge, %ice_aq_req_res.exit174.if.then68_crit_edge, %ice_aq_req_res.exit174.thread, %ice_aq_req_res.exit.if.then68_crit_edge, %ice_aq_req_res.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %access)
  %cmp69 = icmp eq i32 %access, 2
  br i1 %cmp69, label %do.body71, label %do.body92

do.body71:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_acquire_res.__UNIQUE_ID_ddebug656, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_acquire_res, %if.then83)) #12
          to label %if.end114 [label %if.then83], !srcloc !428

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr86 = getelementptr i8, ptr %hw, i32 -2960
  %55 = ptrtoint ptr %add.ptr86 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr86, align 8
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_acquire_res.__UNIQUE_ID_ddebug656, ptr noundef %dev88, ptr noundef nonnull @.str.53) #12
  br label %if.end114

do.body92:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_acquire_res.__UNIQUE_ID_ddebug657, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_acquire_res, %if.then104)) #12
          to label %if.end114 [label %if.then104], !srcloc !428

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr107 = getelementptr i8, ptr %hw, i32 -2960
  %57 = ptrtoint ptr %add.ptr107 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr107, align 8
  %dev109 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_acquire_res.__UNIQUE_ID_ddebug657, ptr noundef %dev109, ptr noundef nonnull @.str.54) #12
  br label %if.end114

if.end114:                                        ; preds = %if.then104, %do.body92, %if.then83, %do.body71, %if.then57, %do.body45, %ice_aq_req_res.exit174.if.end114_crit_edge, %while.cond.if.end114_crit_edge
  %status.2190 = phi i32 [ -114, %if.then83 ], [ -114, %if.then104 ], [ -114, %do.body71 ], [ -114, %do.body92 ], [ %status.0, %do.body45 ], [ %status.0, %if.then57 ], [ %retval.0.i173, %ice_aq_req_res.exit174.if.end114_crit_edge ], [ 0, %while.cond.if.end114_crit_edge ]
  ret i32 %status.2190
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_release_res(ptr noundef %hw, i32 noundef %res) local_unnamed_addr #1 align 64 {
entry:
  %desc.i7 = alloca %struct.ice_aq_desc, align 4
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 2
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 9) #12
  %conv.i = trunc i32 %res to i16
  %3 = call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %1, align 4
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  %sq_cmd_timeout = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call.i)
  %cmp10 = icmp eq i32 %call.i, -5
  br i1 %cmp10, label %land.rhs.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %6 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i7, i32 0, i32 6
  %7 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i7, i32 0, i32 6, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %total_delay.011 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %while.body.land.rhs_crit_edge ]
  %8 = ptrtoint ptr %sq_cmd_timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sq_cmd_timeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %total_delay.011, i32 %9)
  %cmp1 = icmp ult i32 %total_delay.011, %9
  br i1 %cmp1, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i7) #12
  %11 = call ptr @memset(ptr %desc.i7, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i7, i16 noundef zeroext 9) #12
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %3, ptr %6, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %7, align 4
  %call.i9 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i7, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i7) #12
  %inc = add nuw i32 %total_delay.011, 1
  %cmp = icmp eq i32 %call.i9, -5
  br i1 %cmp, label %while.body.land.rhs_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_alloc_free_res(ptr noundef %hw, i16 noundef zeroext %num_entries, ptr noundef %buf, i16 noundef zeroext %buf_size, i32 noundef %opc, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %tobool.not = icmp eq ptr %buf, null
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %buf_size to i32
  %conv1 = zext i16 %num_entries to i32
  %2 = shl nuw nsw i32 %conv1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp = icmp ugt i32 %2, %conv
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv5 = trunc i32 %opc to i16
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext %conv5) #12
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %desc, align 4
  %5 = or i16 %4, 4
  store i16 %5, ptr %desc, align 4
  %6 = call i16 @llvm.bswap.i16(i16 %num_entries)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %0, align 4
  %call9 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef nonnull %buf, i16 noundef zeroext %buf_size, ptr noundef %cd)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_alloc_hw_res(ptr noundef %hw, i16 noundef zeroext %type, i16 noundef zeroext %num, i1 noundef zeroext %btm, ptr nocapture noundef writeonly %res) local_unnamed_addr #1 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %num to i32
  %0 = shl nuw nsw i32 %conv, 1
  %spec.select.i39 = add nuw nsw i32 %0, 4
  %conv1 = trunc i32 %spec.select.i39 to i16
  %conv2 = and i32 %spec.select.i39, 65534
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv2, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %1 = tail call i16 @llvm.bswap.i16(i16 %num)
  %num_elems = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, ptr %call9.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %num_elems to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %num_elems, align 2
  %3 = or i16 %type, 8192
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = or i16 %4, 16
  %spec.select = select i1 %btm, i16 %5, i16 %4
  %6 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %spec.select, ptr %call9.i.i, align 128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #12
  %7 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %cmp.i = icmp eq i32 %conv2, 0
  br i1 %cmp.i, label %ice_aq_alloc_free_res.exit.thread, label %ice_aq_alloc_free_res.exit

ice_aq_alloc_free_res.exit.thread:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  br label %ice_alloc_res_exit

ice_aq_alloc_free_res.exit:                       ; preds = %if.end.i
  %8 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 520) #12
  %9 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %desc.i, align 4
  %11 = or i16 %10, 4
  store i16 %11, ptr %desc.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 256, ptr %8, align 4
  %call9.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv1, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool15.not = icmp eq i32 %call9.i, 0
  br i1 %tobool15.not, label %if.end17, label %ice_aq_alloc_free_res.exit.ice_alloc_res_exit_crit_edge

ice_aq_alloc_free_res.exit.ice_alloc_res_exit_crit_edge: ; preds = %ice_aq_alloc_free_res.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_alloc_res_exit

if.end17:                                         ; preds = %ice_aq_alloc_free_res.exit
  call void @__sanitizer_cov_trace_pc() #14
  %elem = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, ptr %call9.i.i, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %res, ptr %elem, i32 %0)
  br label %ice_alloc_res_exit

ice_alloc_res_exit:                               ; preds = %if.end17, %ice_aq_alloc_free_res.exit.ice_alloc_res_exit_crit_edge, %ice_aq_alloc_free_res.exit.thread
  %retval.0.i3138 = phi i32 [ %call9.i, %ice_aq_alloc_free_res.exit.ice_alloc_res_exit_crit_edge ], [ 0, %if.end17 ], [ -22, %ice_aq_alloc_free_res.exit.thread ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %ice_alloc_res_exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i3138, %ice_alloc_res_exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_free_hw_res(ptr noundef %hw, i16 noundef zeroext %type, i16 noundef zeroext %num, ptr nocapture noundef readonly %res) local_unnamed_addr #1 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %num to i32
  %0 = shl nuw nsw i32 %conv, 1
  %spec.select.i39 = add nuw nsw i32 %0, 4
  %conv2 = and i32 %spec.select.i39, 65534
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv2, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %1 = tail call i16 @llvm.bswap.i16(i16 %num)
  %num_elems = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, ptr %call9.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %num_elems to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %num_elems, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %type)
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %call9.i.i, align 128
  %elem = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, ptr %call9.i.i, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %elem, ptr %res, i32 %0)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #12
  %6 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %conv2)
  %cmp.i = icmp ugt i32 %0, %conv2
  br i1 %cmp.i, label %ice_aq_alloc_free_res.exit.thread, label %ice_aq_alloc_free_res.exit

ice_aq_alloc_free_res.exit.thread:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  br label %do.body

ice_aq_alloc_free_res.exit:                       ; preds = %if.end.i
  %conv1 = trunc i32 %spec.select.i39 to i16
  %7 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 521) #12
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %desc.i, align 4
  %10 = or i16 %9, 4
  store i16 %10, ptr %desc.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %1, ptr %7, align 4
  %call9.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv1, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool6.not = icmp eq i32 %call9.i, 0
  br i1 %tobool6.not, label %ice_aq_alloc_free_res.exit.if.end15_crit_edge, label %ice_aq_alloc_free_res.exit.do.body_crit_edge

ice_aq_alloc_free_res.exit.do.body_crit_edge:     ; preds = %ice_aq_alloc_free_res.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

ice_aq_alloc_free_res.exit.if.end15_crit_edge:    ; preds = %ice_aq_alloc_free_res.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

do.body:                                          ; preds = %ice_aq_alloc_free_res.exit.do.body_crit_edge, %ice_aq_alloc_free_res.exit.thread
  %retval.0.i3036 = phi i32 [ -22, %ice_aq_alloc_free_res.exit.thread ], [ %call9.i, %ice_aq_alloc_free_res.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_free_hw_res.__UNIQUE_ID_ddebug658, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_free_hw_res, %if.then12)) #12
          to label %if.end15 [label %if.then12], !srcloc !428

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_free_hw_res.__UNIQUE_ID_ddebug658, ptr noundef %dev, ptr noundef nonnull @.str.56) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %do.body, %ice_aq_alloc_free_res.exit.if.end15_crit_edge
  %retval.0.i3037 = phi i32 [ %retval.0.i3036, %if.then12 ], [ 0, %ice_aq_alloc_free_res.exit.if.end15_crit_edge ], [ %retval.0.i3036, %do.body ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i3037, %if.end15 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_list_caps(ptr noundef %hw, ptr noundef %buf, i16 noundef zeroext %buf_size, ptr noundef writeonly %cap_count, i32 noundef %opc, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %1 = and i32 %opc, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %switch = icmp eq i32 %1, 10
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %opc to i16
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext %conv) #12
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %buf, i16 noundef zeroext %buf_size, ptr noundef %cd)
  %tobool.not = icmp eq ptr %cap_count, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %cap_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %cap_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then2 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_discover_dev_caps(ptr noundef %hw, ptr noundef %dev_caps) local_unnamed_addr #1 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #12
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 11) #12
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4096, ptr noundef null) #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %5 = call i32 @llvm.bswap.i32(i32 %4) #12
  call fastcc void @ice_parse_dev_caps(ptr noundef %hw, ptr noundef %dev_caps, ptr noundef nonnull %call7.i.i, i32 noundef %5)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_parse_dev_caps(ptr noundef %hw, ptr noundef %dev_p, ptr nocapture noundef readonly %buf, i32 noundef %cap_count) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %dev_p, i32 0, i32 80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cap_count)
  %cmp69.not = icmp eq i32 %cap_count, 0
  br i1 %cmp69.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %num_flow_director_fltr.i = getelementptr inbounds %struct.ice_hw_dev_caps, ptr %dev_p, i32 0, i32 3
  %add.ptr.i61 = getelementptr i8, ptr %hw, i32 -2960
  %num_vsi_allocd_to_host.i = getelementptr inbounds %struct.ice_hw_dev_caps, ptr %dev_p, i32 0, i32 2
  %num_vfs_exposed.i = getelementptr inbounds %struct.ice_hw_dev_caps, ptr %dev_p, i32 0, i32 1
  %num_funcs.i = getelementptr inbounds %struct.ice_hw_dev_caps, ptr %dev_p, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ice_aqc_list_caps_elem, ptr %buf, i32 %i.070
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 8
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %call = tail call fastcc zeroext i1 @ice_parse_common_caps(ptr noundef %hw, ptr noundef %dev_p, ptr noundef %arrayidx, ptr noundef nonnull @.str.87)
  %conv = zext i16 %3 to i32
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.171)
  switch i16 %3, label %sw.default [
    i16 5, label %cond.false.i
    i16 19, label %sw.bb4
    i16 23, label %sw.bb6
    i16 70, label %sw.bb8
    i16 69, label %sw.bb10
  ]

cond.false.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %number1.i = getelementptr %struct.ice_aqc_list_caps_elem, ptr %buf, i32 %i.070, i32 3
  %5 = ptrtoint ptr %number1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %number1.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %7) #12
  %8 = ptrtoint ptr %num_funcs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i.i, ptr %num_funcs.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_valid_functions_cap.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_dev_caps, %if.then.i)) #12
          to label %sw.epilog [label %if.then.i], !srcloc !428

if.then.i:                                        ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %add.ptr.i61 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i61, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %num_funcs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_funcs.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_valid_functions_cap.__UNIQUE_ID_ddebug697, ptr noundef %dev.i, ptr noundef nonnull @.str.113, i32 noundef %12) #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %number1.i52 = getelementptr %struct.ice_aqc_list_caps_elem, ptr %buf, i32 %i.070, i32 3
  %13 = ptrtoint ptr %number1.i52 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number1.i52, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %16 = ptrtoint ptr %num_vfs_exposed.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %num_vfs_exposed.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_vf_dev_caps.__UNIQUE_ID_ddebug698, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_dev_caps, %if.then.i55)) #12
          to label %sw.epilog [label %if.then.i55], !srcloc !428

if.then.i55:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %add.ptr.i61 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i61, align 8
  %dev.i54 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %num_vfs_exposed.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_vfs_exposed.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_vf_dev_caps.__UNIQUE_ID_ddebug698, ptr noundef %dev.i54, ptr noundef nonnull @.str.115, i32 noundef %20) #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %number1.i56 = getelementptr %struct.ice_aqc_list_caps_elem, ptr %buf, i32 %i.070, i32 3
  %21 = ptrtoint ptr %number1.i56 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number1.i56, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  %24 = ptrtoint ptr %num_vsi_allocd_to_host.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %num_vsi_allocd_to_host.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_vsi_dev_caps.__UNIQUE_ID_ddebug699, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_dev_caps, %if.then.i59)) #12
          to label %sw.epilog [label %if.then.i59], !srcloc !428

if.then.i59:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %add.ptr.i61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i61, align 8
  %dev.i58 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %num_vsi_allocd_to_host.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_vsi_allocd_to_host.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_vsi_dev_caps.__UNIQUE_ID_ddebug699, ptr noundef %dev.i58, ptr noundef nonnull @.str.117, i32 noundef %28) #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ice_parse_1588_dev_caps(ptr noundef %hw, ptr noundef %dev_p, ptr noundef %arrayidx)
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %number1.i60 = getelementptr %struct.ice_aqc_list_caps_elem, ptr %buf, i32 %i.070, i32 3
  %29 = ptrtoint ptr %number1.i60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %number1.i60, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  %32 = ptrtoint ptr %num_flow_director_fltr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %num_flow_director_fltr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_fdir_dev_caps.__UNIQUE_ID_ddebug709, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_dev_caps, %if.then.i63)) #12
          to label %sw.epilog [label %if.then.i63], !srcloc !428

if.then.i63:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %add.ptr.i61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i61, align 8
  %dev.i62 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %num_flow_director_fltr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_flow_director_fltr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_fdir_dev_caps.__UNIQUE_ID_ddebug709, ptr noundef %dev.i62, ptr noundef nonnull @.str.129, i32 noundef %36) #12
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br i1 %call, label %sw.default.sw.epilog_crit_edge, label %do.body

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_dev_caps.__UNIQUE_ID_ddebug710, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_dev_caps, %if.then17)) #12
          to label %sw.epilog [label %if.then17], !srcloc !428

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %add.ptr.i61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i61, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_dev_caps.__UNIQUE_ID_ddebug710, ptr noundef %dev, ptr noundef nonnull @.str.89, i32 noundef %i.070, i32 noundef %conv) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then17, %do.body, %sw.default.sw.epilog_crit_edge, %if.then.i63, %sw.bb10, %sw.bb8, %if.then.i59, %sw.bb6, %if.then.i55, %sw.bb4, %if.then.i, %cond.false.i
  %inc = add nuw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, %cap_count
  br i1 %exitcond.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  %dev_caps.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27
  %num_funcs.i64 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27, i32 5
  %39 = ptrtoint ptr %num_funcs.i64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_funcs.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp.i = icmp ugt i32 %40, 4
  br i1 %cmp.i, label %if.then.i65, label %for.end.ice_recalc_port_limited_caps.exit_crit_edge

for.end.ice_recalc_port_limited_caps.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_recalc_port_limited_caps.exit

if.then.i65:                                      ; preds = %for.end
  %maxtc.i = getelementptr inbounds %struct.ice_hw_common_caps, ptr %dev_p, i32 0, i32 2
  %41 = ptrtoint ptr %maxtc.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %maxtc.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_recalc_port_limited_caps.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_dev_caps, %if.then3.i)) #12
          to label %do.end.i [label %if.then3.i], !srcloc !428

if.then3.i:                                       ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i66 = getelementptr i8, ptr %hw, i32 -2960
  %42 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i66, align 8
  %dev.i67 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %maxtc.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %maxtc.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_recalc_port_limited_caps.__UNIQUE_ID_ddebug680, ptr noundef %dev.i67, ptr noundef nonnull @.str.131, i32 noundef %45) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i, %if.then.i65
  %rdma.i = getelementptr inbounds %struct.ice_hw_common_caps, ptr %dev_p, i32 0, i32 15
  %46 = ptrtoint ptr %rdma.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %rdma.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool6.not.i = icmp eq i8 %47, 0
  br i1 %tobool6.not.i, label %do.end.i.if.end29.i_crit_edge, label %do.body8.i

do.end.i.if.end29.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

do.body8.i:                                       ; preds = %do.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_recalc_port_limited_caps.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_dev_caps, %if.then20.i)) #12
          to label %do.end27.i [label %if.then20.i], !srcloc !428

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr23.i = getelementptr i8, ptr %hw, i32 -2960
  %48 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr23.i, align 8
  %dev25.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_recalc_port_limited_caps.__UNIQUE_ID_ddebug681, ptr noundef %dev25.i, ptr noundef nonnull @.str.132) #12
  br label %do.end27.i

do.end27.i:                                       ; preds = %if.then20.i, %do.body8.i
  %50 = ptrtoint ptr %rdma.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %rdma.i, align 1
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end27.i, %do.end.i.if.end29.i_crit_edge
  %cmp31.i = icmp eq ptr %dev_caps.i, %dev_p
  br i1 %cmp31.i, label %do.end34.i, label %if.end29.i.ice_recalc_port_limited_caps.exit_crit_edge

if.end29.i.ice_recalc_port_limited_caps.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_recalc_port_limited_caps.exit

do.end34.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr37.i = getelementptr i8, ptr %hw, i32 -2960
  %51 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr37.i, align 8
  %dev39.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev39.i, ptr noundef nonnull @.str.133) #16
  br label %ice_recalc_port_limited_caps.exit

ice_recalc_port_limited_caps.exit:                ; preds = %do.end34.i, %if.end29.i.ice_recalc_port_limited_caps.exit_crit_edge, %for.end.ice_recalc_port_limited_caps.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ice_set_safe_mode_caps(ptr noundef %hw) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %func_caps1 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28
  %dev_caps2 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27
  %0 = ptrtoint ptr %func_caps1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %cached_caps.sroa.0.0.copyload = load i32, ptr %func_caps1, align 4
  %cached_caps.sroa.781.0.common_cap.sroa_idx = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 0, i32 4
  %1 = ptrtoint ptr %cached_caps.sroa.781.0.common_cap.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %1)
  %cached_caps.sroa.781.0.copyload = load i16, ptr %cached_caps.sroa.781.0.common_cap.sroa_idx, align 2
  %cached_caps.sroa.985.0.common_cap.sroa_idx = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 0, i32 6
  %2 = ptrtoint ptr %cached_caps.sroa.985.0.common_cap.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %cached_caps.sroa.985.0.copyload = load i16, ptr %cached_caps.sroa.985.0.common_cap.sroa_idx, align 2
  %cached_caps.sroa.1189.0.common_cap.sroa_idx = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 0, i32 8
  %3 = ptrtoint ptr %cached_caps.sroa.1189.0.common_cap.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %3)
  %cached_caps.sroa.1189.0.copyload = load i16, ptr %cached_caps.sroa.1189.0.common_cap.sroa_idx, align 2
  %cached_caps.sroa.13.0.common_cap.sroa_idx = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 0, i32 9
  %4 = ptrtoint ptr %cached_caps.sroa.13.0.common_cap.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %cached_caps.sroa.13.0.copyload = load i16, ptr %cached_caps.sroa.13.0.common_cap.sroa_idx, align 4
  %cached_caps.sroa.1594.0.common_cap.sroa_idx = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 0, i32 16
  %5 = ptrtoint ptr %cached_caps.sroa.1594.0.common_cap.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %cached_caps.sroa.1594.0.copyload = load i8, ptr %cached_caps.sroa.1594.0.common_cap.sroa_idx, align 2
  %cached_caps.sroa.17.0.common_cap.sroa_idx = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 0, i32 17
  %6 = ptrtoint ptr %cached_caps.sroa.17.0.common_cap.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %cached_caps.sroa.17.0.copyload = load i8, ptr %cached_caps.sroa.17.0.common_cap.sroa_idx, align 1
  %cached_caps.sroa.19.0.common_cap.sroa_idx = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 0, i32 18
  %7 = ptrtoint ptr %cached_caps.sroa.19.0.common_cap.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %cached_caps.sroa.19.0.copyload = load i8, ptr %cached_caps.sroa.19.0.common_cap.sroa_idx, align 4
  %cached_caps.sroa.21.0.common_cap.sroa_idx = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 0, i32 19
  %8 = ptrtoint ptr %cached_caps.sroa.21.0.common_cap.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %cached_caps.sroa.21.0.copyload = load i8, ptr %cached_caps.sroa.21.0.common_cap.sroa_idx, align 1
  %9 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 0, i32 1
  %10 = call ptr @memset(ptr %9, i32 0, i32 68)
  store i32 %cached_caps.sroa.0.0.copyload, ptr %func_caps1, align 4
  store i16 %cached_caps.sroa.985.0.copyload, ptr %cached_caps.sroa.985.0.common_cap.sroa_idx, align 2
  store i16 %cached_caps.sroa.781.0.copyload, ptr %cached_caps.sroa.781.0.common_cap.sroa_idx, align 2
  store i16 %cached_caps.sroa.1189.0.copyload, ptr %cached_caps.sroa.1189.0.common_cap.sroa_idx, align 2
  store i16 %cached_caps.sroa.13.0.copyload, ptr %cached_caps.sroa.13.0.common_cap.sroa_idx, align 4
  %11 = and i8 %cached_caps.sroa.21.0.copyload, 1
  store i8 %11, ptr %cached_caps.sroa.21.0.common_cap.sroa_idx, align 1
  %12 = and i8 %cached_caps.sroa.1594.0.copyload, 1
  store i8 %12, ptr %cached_caps.sroa.1594.0.common_cap.sroa_idx, align 2
  %13 = and i8 %cached_caps.sroa.17.0.copyload, 1
  store i8 %13, ptr %cached_caps.sroa.17.0.common_cap.sroa_idx, align 1
  %14 = and i8 %cached_caps.sroa.19.0.copyload, 1
  store i8 %14, ptr %cached_caps.sroa.19.0.common_cap.sroa_idx, align 4
  %num_rxq = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 0, i32 3
  %15 = ptrtoint ptr %num_rxq to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %num_rxq, align 4
  %num_txq = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 0, i32 5
  %16 = ptrtoint ptr %num_txq to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %num_txq, align 4
  %num_msix_vectors = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 0, i32 7
  %17 = ptrtoint ptr %num_msix_vectors to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %num_msix_vectors, align 4
  %guar_num_vsi = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 3
  %18 = ptrtoint ptr %guar_num_vsi to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %guar_num_vsi, align 4
  %19 = ptrtoint ptr %dev_caps2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %cached_caps.sroa.0.0.copyload80 = load i32, ptr %dev_caps2, align 4
  %cached_caps.sroa.781.0.common_cap30.sroa_idx = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27, i32 0, i32 4
  %20 = ptrtoint ptr %cached_caps.sroa.781.0.common_cap30.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %20)
  %cached_caps.sroa.781.0.copyload82 = load i16, ptr %cached_caps.sroa.781.0.common_cap30.sroa_idx, align 2
  %cached_caps.sroa.985.0.common_cap30.sroa_idx = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27, i32 0, i32 6
  %21 = ptrtoint ptr %cached_caps.sroa.985.0.common_cap30.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %21)
  %cached_caps.sroa.985.0.copyload86 = load i16, ptr %cached_caps.sroa.985.0.common_cap30.sroa_idx, align 2
  %cached_caps.sroa.1189.0.common_cap30.sroa_idx = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27, i32 0, i32 8
  %22 = ptrtoint ptr %cached_caps.sroa.1189.0.common_cap30.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %22)
  %cached_caps.sroa.1189.0.copyload90 = load i16, ptr %cached_caps.sroa.1189.0.common_cap30.sroa_idx, align 2
  %cached_caps.sroa.13.0.common_cap30.sroa_idx = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27, i32 0, i32 9
  %23 = ptrtoint ptr %cached_caps.sroa.13.0.common_cap30.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %23)
  %cached_caps.sroa.13.0.copyload92 = load i16, ptr %cached_caps.sroa.13.0.common_cap30.sroa_idx, align 4
  %cached_caps.sroa.1594.0.common_cap30.sroa_idx = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27, i32 0, i32 16
  %24 = ptrtoint ptr %cached_caps.sroa.1594.0.common_cap30.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %cached_caps.sroa.1594.0.copyload95 = load i8, ptr %cached_caps.sroa.1594.0.common_cap30.sroa_idx, align 2
  %cached_caps.sroa.17.0.common_cap30.sroa_idx = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27, i32 0, i32 17
  %25 = ptrtoint ptr %cached_caps.sroa.17.0.common_cap30.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %cached_caps.sroa.17.0.copyload97 = load i8, ptr %cached_caps.sroa.17.0.common_cap30.sroa_idx, align 1
  %cached_caps.sroa.19.0.common_cap30.sroa_idx = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27, i32 0, i32 18
  %26 = ptrtoint ptr %cached_caps.sroa.19.0.common_cap30.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %26)
  %cached_caps.sroa.19.0.copyload99 = load i8, ptr %cached_caps.sroa.19.0.common_cap30.sroa_idx, align 4
  %cached_caps.sroa.21.0.common_cap30.sroa_idx = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27, i32 0, i32 19
  %27 = ptrtoint ptr %cached_caps.sroa.21.0.common_cap30.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %cached_caps.sroa.21.0.copyload101 = load i8, ptr %cached_caps.sroa.21.0.common_cap30.sroa_idx, align 1
  %num_funcs31 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27, i32 5
  %28 = ptrtoint ptr %num_funcs31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_funcs31, align 4
  %30 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27, i32 0, i32 1
  %31 = call ptr @memset(ptr %30, i32 0, i32 72)
  store i32 %cached_caps.sroa.0.0.copyload80, ptr %dev_caps2, align 4
  store i16 %cached_caps.sroa.985.0.copyload86, ptr %cached_caps.sroa.985.0.common_cap30.sroa_idx, align 2
  store i16 %cached_caps.sroa.781.0.copyload82, ptr %cached_caps.sroa.781.0.common_cap30.sroa_idx, align 2
  store i16 %cached_caps.sroa.1189.0.copyload90, ptr %cached_caps.sroa.1189.0.common_cap30.sroa_idx, align 2
  store i16 %cached_caps.sroa.13.0.copyload92, ptr %cached_caps.sroa.13.0.common_cap30.sroa_idx, align 4
  %32 = and i8 %cached_caps.sroa.21.0.copyload101, 1
  store i8 %32, ptr %cached_caps.sroa.21.0.common_cap30.sroa_idx, align 1
  %33 = and i8 %cached_caps.sroa.1594.0.copyload95, 1
  store i8 %33, ptr %cached_caps.sroa.1594.0.common_cap30.sroa_idx, align 2
  %34 = and i8 %cached_caps.sroa.17.0.copyload97, 1
  store i8 %34, ptr %cached_caps.sroa.17.0.common_cap30.sroa_idx, align 1
  %35 = and i8 %cached_caps.sroa.19.0.copyload99, 1
  store i8 %35, ptr %cached_caps.sroa.19.0.common_cap30.sroa_idx, align 4
  store i32 %29, ptr %num_funcs31, align 4
  %conv = trunc i32 %29 to i16
  %num_rxq69 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27, i32 0, i32 3
  %36 = ptrtoint ptr %num_rxq69 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv, ptr %num_rxq69, align 4
  %num_txq72 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27, i32 0, i32 5
  %37 = ptrtoint ptr %num_txq72 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv, ptr %num_txq72, align 4
  %conv73 = shl i16 %conv, 1
  %num_msix_vectors75 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27, i32 0, i32 7
  %38 = ptrtoint ptr %num_msix_vectors75 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv73, ptr %num_msix_vectors75, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_manage_mac_write(ptr noundef %hw, ptr nocapture noundef readonly %mac_addr, i8 noundef zeroext %flags, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 264) #12
  %flags1 = getelementptr inbounds %struct.ice_aqc_manage_mac_write, ptr %0, i32 0, i32 1
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %flags, ptr %flags1, align 1
  %mac_addr2 = getelementptr inbounds %struct.ice_aqc_manage_mac_write, ptr %0, i32 0, i32 2
  %3 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac_addr, align 4
  %5 = ptrtoint ptr %mac_addr2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mac_addr2, align 4
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds %struct.ice_aqc_manage_mac_write, ptr %0, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %add.ptr1.i, align 2
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_check_sq_alive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_update_phy_type(ptr nocapture noundef %phy_type_low, ptr nocapture noundef %phy_type_high, i16 noundef zeroext %link_speeds_bitmap) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %index.034 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %sh_prom = zext i32 %index.034 to i64
  %shl = shl nuw i64 1, %sh_prom
  %call = tail call fastcc zeroext i16 @ice_get_link_speed_based_on_phy_type(i64 noundef %shl, i64 noundef 0)
  %and33 = and i16 %call, %link_speeds_bitmap
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and33)
  %tobool.not = icmp eq i16 %and33, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %phy_type_low to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %phy_type_low, align 8
  %or = or i64 %1, %shl
  store i64 %or, ptr %phy_type_low, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %index.034, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %ice_get_link_speed_based_on_phy_type.exit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

ice_get_link_speed_based_on_phy_type.exit:        ; preds = %for.inc
  %and1332 = and i16 %link_speeds_bitmap, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and1332)
  %tobool14.not = icmp eq i16 %and1332, 0
  br i1 %tobool14.not, label %ice_get_link_speed_based_on_phy_type.exit.ice_get_link_speed_based_on_phy_type.exit.1_crit_edge, label %if.then15

ice_get_link_speed_based_on_phy_type.exit.ice_get_link_speed_based_on_phy_type.exit.1_crit_edge: ; preds = %ice_get_link_speed_based_on_phy_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_link_speed_based_on_phy_type.exit.1

if.then15:                                        ; preds = %ice_get_link_speed_based_on_phy_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %phy_type_high, align 8
  %or18 = or i64 %3, 1
  store i64 %or18, ptr %phy_type_high, align 8
  br label %ice_get_link_speed_based_on_phy_type.exit.1

ice_get_link_speed_based_on_phy_type.exit.1:      ; preds = %if.then15, %ice_get_link_speed_based_on_phy_type.exit.ice_get_link_speed_based_on_phy_type.exit.1_crit_edge
  %and1332.1 = and i16 %link_speeds_bitmap, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and1332.1)
  %tobool14.not.1 = icmp eq i16 %and1332.1, 0
  br i1 %tobool14.not.1, label %ice_get_link_speed_based_on_phy_type.exit.1.ice_get_link_speed_based_on_phy_type.exit.2_crit_edge, label %if.then15.1

ice_get_link_speed_based_on_phy_type.exit.1.ice_get_link_speed_based_on_phy_type.exit.2_crit_edge: ; preds = %ice_get_link_speed_based_on_phy_type.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_link_speed_based_on_phy_type.exit.2

if.then15.1:                                      ; preds = %ice_get_link_speed_based_on_phy_type.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %phy_type_high, align 8
  %or18.1 = or i64 %5, 2
  store i64 %or18.1, ptr %phy_type_high, align 8
  br label %ice_get_link_speed_based_on_phy_type.exit.2

ice_get_link_speed_based_on_phy_type.exit.2:      ; preds = %if.then15.1, %ice_get_link_speed_based_on_phy_type.exit.1.ice_get_link_speed_based_on_phy_type.exit.2_crit_edge
  %and1332.2 = and i16 %link_speeds_bitmap, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and1332.2)
  %tobool14.not.2 = icmp eq i16 %and1332.2, 0
  br i1 %tobool14.not.2, label %ice_get_link_speed_based_on_phy_type.exit.2.ice_get_link_speed_based_on_phy_type.exit.3_crit_edge, label %if.then15.2

ice_get_link_speed_based_on_phy_type.exit.2.ice_get_link_speed_based_on_phy_type.exit.3_crit_edge: ; preds = %ice_get_link_speed_based_on_phy_type.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_link_speed_based_on_phy_type.exit.3

if.then15.2:                                      ; preds = %ice_get_link_speed_based_on_phy_type.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %phy_type_high, align 8
  %or18.2 = or i64 %7, 4
  store i64 %or18.2, ptr %phy_type_high, align 8
  br label %ice_get_link_speed_based_on_phy_type.exit.3

ice_get_link_speed_based_on_phy_type.exit.3:      ; preds = %if.then15.2, %ice_get_link_speed_based_on_phy_type.exit.2.ice_get_link_speed_based_on_phy_type.exit.3_crit_edge
  %and1332.3 = and i16 %link_speeds_bitmap, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and1332.3)
  %tobool14.not.3 = icmp eq i16 %and1332.3, 0
  br i1 %tobool14.not.3, label %ice_get_link_speed_based_on_phy_type.exit.3.ice_get_link_speed_based_on_phy_type.exit.4_crit_edge, label %if.then15.3

ice_get_link_speed_based_on_phy_type.exit.3.ice_get_link_speed_based_on_phy_type.exit.4_crit_edge: ; preds = %ice_get_link_speed_based_on_phy_type.exit.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_link_speed_based_on_phy_type.exit.4

if.then15.3:                                      ; preds = %ice_get_link_speed_based_on_phy_type.exit.3
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %phy_type_high, align 8
  %or18.3 = or i64 %9, 8
  store i64 %or18.3, ptr %phy_type_high, align 8
  br label %ice_get_link_speed_based_on_phy_type.exit.4

ice_get_link_speed_based_on_phy_type.exit.4:      ; preds = %if.then15.3, %ice_get_link_speed_based_on_phy_type.exit.3.ice_get_link_speed_based_on_phy_type.exit.4_crit_edge
  %and1332.4 = and i16 %link_speeds_bitmap, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and1332.4)
  %tobool14.not.4 = icmp eq i16 %and1332.4, 0
  br i1 %tobool14.not.4, label %ice_get_link_speed_based_on_phy_type.exit.4.ice_get_link_speed_based_on_phy_type.exit.5_crit_edge, label %if.then15.4

ice_get_link_speed_based_on_phy_type.exit.4.ice_get_link_speed_based_on_phy_type.exit.5_crit_edge: ; preds = %ice_get_link_speed_based_on_phy_type.exit.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_link_speed_based_on_phy_type.exit.5

if.then15.4:                                      ; preds = %ice_get_link_speed_based_on_phy_type.exit.4
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %phy_type_high, align 8
  %or18.4 = or i64 %11, 16
  store i64 %or18.4, ptr %phy_type_high, align 8
  br label %ice_get_link_speed_based_on_phy_type.exit.5

ice_get_link_speed_based_on_phy_type.exit.5:      ; preds = %if.then15.4, %ice_get_link_speed_based_on_phy_type.exit.4.ice_get_link_speed_based_on_phy_type.exit.5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %link_speeds_bitmap)
  %tobool14.not.5 = icmp sgt i16 %link_speeds_bitmap, -1
  br i1 %tobool14.not.5, label %ice_get_link_speed_based_on_phy_type.exit.5.for.inc20.5_crit_edge, label %if.then15.5

ice_get_link_speed_based_on_phy_type.exit.5.for.inc20.5_crit_edge: ; preds = %ice_get_link_speed_based_on_phy_type.exit.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc20.5

if.then15.5:                                      ; preds = %ice_get_link_speed_based_on_phy_type.exit.5
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %phy_type_high, align 8
  %or18.5 = or i64 %13, 32
  store i64 %or18.5, ptr %phy_type_high, align 8
  br label %for.inc20.5

for.inc20.5:                                      ; preds = %if.then15.5, %ice_get_link_speed_based_on_phy_type.exit.5.for.inc20.5_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i16 @ice_get_link_speed_based_on_phy_type(i64 noundef %phy_type_low, i64 noundef %phy_type_high) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_switch(i64 %phy_type_low, ptr @__sancov_gen_cov_switch_values.172)
  switch i64 %phy_type_low, label %sw.default [
    i64 1, label %entry.sw.epilog_crit_edge
    i64 2, label %entry.sw.epilog_crit_edge44
    i64 4, label %entry.sw.bb1_crit_edge
    i64 8, label %entry.sw.bb1_crit_edge45
    i64 16, label %entry.sw.bb1_crit_edge46
    i64 32, label %entry.sw.bb1_crit_edge47
    i64 64, label %entry.sw.bb1_crit_edge48
    i64 128, label %entry.sw.bb2_crit_edge
    i64 256, label %entry.sw.bb2_crit_edge49
    i64 512, label %entry.sw.bb2_crit_edge50
    i64 1024, label %entry.sw.bb3_crit_edge
    i64 2048, label %entry.sw.bb3_crit_edge51
    i64 4096, label %entry.sw.bb4_crit_edge
    i64 8192, label %entry.sw.bb4_crit_edge52
    i64 16384, label %entry.sw.bb4_crit_edge53
    i64 32768, label %entry.sw.bb4_crit_edge54
    i64 65536, label %entry.sw.bb4_crit_edge55
    i64 131072, label %entry.sw.bb4_crit_edge56
    i64 262144, label %entry.sw.bb4_crit_edge57
    i64 524288, label %entry.sw.bb5_crit_edge
    i64 1048576, label %entry.sw.bb5_crit_edge58
    i64 2097152, label %entry.sw.bb5_crit_edge59
    i64 4194304, label %entry.sw.bb5_crit_edge60
    i64 8388608, label %entry.sw.bb5_crit_edge61
    i64 16777216, label %entry.sw.bb5_crit_edge62
    i64 33554432, label %entry.sw.bb5_crit_edge63
    i64 67108864, label %entry.sw.bb5_crit_edge64
    i64 134217728, label %entry.sw.bb5_crit_edge65
    i64 268435456, label %entry.sw.bb5_crit_edge66
    i64 536870912, label %entry.sw.bb5_crit_edge67
    i64 1073741824, label %entry.sw.bb6_crit_edge
    i64 2147483648, label %entry.sw.bb6_crit_edge68
    i64 4294967296, label %entry.sw.bb6_crit_edge69
    i64 8589934592, label %entry.sw.bb6_crit_edge70
    i64 17179869184, label %entry.sw.bb6_crit_edge71
    i64 34359738368, label %entry.sw.bb6_crit_edge72
    i64 68719476736, label %entry.sw.bb7_crit_edge
    i64 137438953472, label %entry.sw.bb7_crit_edge73
    i64 274877906944, label %entry.sw.bb7_crit_edge74
    i64 549755813888, label %entry.sw.bb7_crit_edge75
    i64 1099511627776, label %entry.sw.bb7_crit_edge76
    i64 2199023255552, label %entry.sw.bb7_crit_edge77
    i64 4398046511104, label %entry.sw.bb7_crit_edge78
    i64 8796093022208, label %entry.sw.bb7_crit_edge79
    i64 17592186044416, label %entry.sw.bb7_crit_edge80
    i64 35184372088832, label %entry.sw.bb7_crit_edge81
    i64 70368744177664, label %entry.sw.bb7_crit_edge82
    i64 140737488355328, label %entry.sw.bb7_crit_edge83
    i64 281474976710656, label %entry.sw.bb7_crit_edge84
    i64 562949953421312, label %entry.sw.bb7_crit_edge85
    i64 1125899906842624, label %entry.sw.bb7_crit_edge86
    i64 2251799813685248, label %entry.sw.bb8_crit_edge
    i64 4503599627370496, label %entry.sw.bb8_crit_edge87
    i64 9007199254740992, label %entry.sw.bb8_crit_edge88
    i64 18014398509481984, label %entry.sw.bb8_crit_edge89
    i64 36028797018963968, label %entry.sw.bb8_crit_edge90
    i64 72057594037927936, label %entry.sw.bb8_crit_edge91
    i64 144115188075855872, label %entry.sw.bb8_crit_edge92
    i64 288230376151711744, label %entry.sw.bb8_crit_edge93
    i64 576460752303423488, label %entry.sw.bb8_crit_edge94
    i64 1152921504606846976, label %entry.sw.bb8_crit_edge95
    i64 2305843009213693952, label %entry.sw.bb8_crit_edge96
    i64 4611686018427387904, label %entry.sw.bb8_crit_edge97
    i64 -9223372036854775808, label %entry.sw.bb8_crit_edge98
  ]

entry.sw.bb8_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

entry.sw.bb8_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

entry.sw.bb8_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

entry.sw.bb8_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

entry.sw.bb8_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

entry.sw.bb8_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

entry.sw.bb8_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

entry.sw.bb8_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

entry.sw.bb8_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

entry.sw.bb8_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

entry.sw.bb8_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

entry.sw.bb8_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

entry.sw.bb7_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb6_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb5_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb5_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb5_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb5_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb5_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb5_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb5_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb5_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb5_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb5_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb4_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb3_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb2_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.sw.bb2_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.sw.bb1_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.epilog_crit_edge44:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge45, %entry.sw.bb1_crit_edge46, %entry.sw.bb1_crit_edge47, %entry.sw.bb1_crit_edge48
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge49, %entry.sw.bb2_crit_edge50
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge51
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge52, %entry.sw.bb4_crit_edge53, %entry.sw.bb4_crit_edge54, %entry.sw.bb4_crit_edge55, %entry.sw.bb4_crit_edge56, %entry.sw.bb4_crit_edge57
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge58, %entry.sw.bb5_crit_edge59, %entry.sw.bb5_crit_edge60, %entry.sw.bb5_crit_edge61, %entry.sw.bb5_crit_edge62, %entry.sw.bb5_crit_edge63, %entry.sw.bb5_crit_edge64, %entry.sw.bb5_crit_edge65, %entry.sw.bb5_crit_edge66, %entry.sw.bb5_crit_edge67
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge68, %entry.sw.bb6_crit_edge69, %entry.sw.bb6_crit_edge70, %entry.sw.bb6_crit_edge71, %entry.sw.bb6_crit_edge72
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge73, %entry.sw.bb7_crit_edge74, %entry.sw.bb7_crit_edge75, %entry.sw.bb7_crit_edge76, %entry.sw.bb7_crit_edge77, %entry.sw.bb7_crit_edge78, %entry.sw.bb7_crit_edge79, %entry.sw.bb7_crit_edge80, %entry.sw.bb7_crit_edge81, %entry.sw.bb7_crit_edge82, %entry.sw.bb7_crit_edge83, %entry.sw.bb7_crit_edge84, %entry.sw.bb7_crit_edge85, %entry.sw.bb7_crit_edge86
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge87, %entry.sw.bb8_crit_edge88, %entry.sw.bb8_crit_edge89, %entry.sw.bb8_crit_edge90, %entry.sw.bb8_crit_edge91, %entry.sw.bb8_crit_edge92, %entry.sw.bb8_crit_edge93, %entry.sw.bb8_crit_edge94, %entry.sw.bb8_crit_edge95, %entry.sw.bb8_crit_edge96, %entry.sw.bb8_crit_edge97, %entry.sw.bb8_crit_edge98
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge44
  %cmp = phi i1 [ true, %sw.default ], [ false, %sw.bb8 ], [ false, %sw.bb7 ], [ false, %sw.bb6 ], [ false, %sw.bb5 ], [ false, %sw.bb4 ], [ false, %sw.bb3 ], [ false, %sw.bb2 ], [ false, %sw.bb1 ], [ false, %entry.sw.epilog_crit_edge ], [ false, %entry.sw.epilog_crit_edge44 ]
  %speed_phy_type_low.0 = phi i16 [ -32768, %sw.default ], [ 1024, %sw.bb8 ], [ 512, %sw.bb7 ], [ 256, %sw.bb6 ], [ 128, %sw.bb5 ], [ 32, %sw.bb4 ], [ 16, %sw.bb3 ], [ 8, %sw.bb2 ], [ 4, %sw.bb1 ], [ 2, %entry.sw.epilog_crit_edge ], [ 2, %entry.sw.epilog_crit_edge44 ]
  call void @__sanitizer_cov_trace_switch(i64 %phy_type_high, ptr @__sancov_gen_cov_switch_values.173)
  switch i64 %phy_type_high, label %sw.default10 [
    i64 1, label %sw.epilog.sw.epilog11_crit_edge
    i64 2, label %sw.epilog.sw.epilog11_crit_edge99
    i64 4, label %sw.epilog.sw.epilog11_crit_edge100
    i64 8, label %sw.epilog.sw.epilog11_crit_edge101
    i64 16, label %sw.epilog.sw.epilog11_crit_edge102
  ]

sw.epilog.sw.epilog11_crit_edge102:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog11

sw.epilog.sw.epilog11_crit_edge101:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog11

sw.epilog.sw.epilog11_crit_edge100:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog11

sw.epilog.sw.epilog11_crit_edge99:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog11

sw.epilog.sw.epilog11_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog11

sw.default10:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog11

sw.epilog11:                                      ; preds = %sw.default10, %sw.epilog.sw.epilog11_crit_edge, %sw.epilog.sw.epilog11_crit_edge99, %sw.epilog.sw.epilog11_crit_edge100, %sw.epilog.sw.epilog11_crit_edge101, %sw.epilog.sw.epilog11_crit_edge102
  %cmp30 = phi i1 [ true, %sw.default10 ], [ false, %sw.epilog.sw.epilog11_crit_edge ], [ false, %sw.epilog.sw.epilog11_crit_edge99 ], [ false, %sw.epilog.sw.epilog11_crit_edge100 ], [ false, %sw.epilog.sw.epilog11_crit_edge101 ], [ false, %sw.epilog.sw.epilog11_crit_edge102 ]
  %speed_phy_type_high.0 = phi i16 [ -32768, %sw.default10 ], [ 1024, %sw.epilog.sw.epilog11_crit_edge ], [ 1024, %sw.epilog.sw.epilog11_crit_edge99 ], [ 1024, %sw.epilog.sw.epilog11_crit_edge100 ], [ 1024, %sw.epilog.sw.epilog11_crit_edge101 ], [ 1024, %sw.epilog.sw.epilog11_crit_edge102 ]
  %cmp.not = xor i1 %cmp, true
  %cmp30.not = xor i1 %cmp30, true
  %brmerge = or i1 %cmp.not, %cmp30.not
  %brmerge41 = or i1 %cmp, %cmp30
  %or.cond = and i1 %brmerge, %brmerge41
  %brmerge43 = or i1 %cmp, %cmp30.not
  %spec.select = select i1 %brmerge43, i16 %speed_phy_type_high.0, i16 %speed_phy_type_low.0
  %retval.0 = select i1 %or.cond, i16 %spec.select, i16 -32768
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_set_phy_cfg(ptr noundef %hw, ptr nocapture noundef %pi, ptr noundef %cfg, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %tobool.not = icmp eq ptr %cfg, null
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %caps = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 2
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %caps, align 8
  %4 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end.if.end15_crit_edge, label %do.body

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug711, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_set_phy_cfg, %if.then6)) #12
          to label %do.end [label %if.then6], !srcloc !428

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %caps, align 8
  %conv9 = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug711, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %conv9) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %9 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %caps, align 8
  %11 = and i8 %10, -17
  store i8 %11, ptr %caps, align 8
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1537) #12
  %lport = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 6
  %12 = ptrtoint ptr %lport to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %lport, align 1
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %0, align 4
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %desc, align 4
  %17 = or i16 %16, 4
  store i16 %17, ptr %desc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug712, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_set_phy_cfg, %if.then30)) #12
          to label %do.body39 [label %if.then30], !srcloc !428

if.then30:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr33 = getelementptr i8, ptr %hw, i32 -2960
  %18 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr33, align 8
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug712, ptr noundef %dev35, ptr noundef nonnull @.str.59) #12
  br label %do.body39

do.body39:                                        ; preds = %if.then30, %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug713, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_set_phy_cfg, %if.then51)) #12
          to label %do.body60 [label %if.then51], !srcloc !428

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr54 = getelementptr i8, ptr %hw, i32 -2960
  %20 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr54, align 8
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %cfg, align 8
  %24 = call i64 @llvm.bswap.i64(i64 %23)
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug713, ptr noundef %dev56, ptr noundef nonnull @.str.4, i64 noundef %24) #12
  br label %do.body60

do.body60:                                        ; preds = %if.then51, %do.body39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug714, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_set_phy_cfg, %if.then72)) #12
          to label %do.body81 [label %if.then72], !srcloc !428

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr75 = getelementptr i8, ptr %hw, i32 -2960
  %25 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr75, align 8
  %dev77 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %phy_type_high = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 1
  %27 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %phy_type_high, align 8
  %29 = call i64 @llvm.bswap.i64(i64 %28)
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug714, ptr noundef %dev77, ptr noundef nonnull @.str.5, i64 noundef %29) #12
  br label %do.body81

do.body81:                                        ; preds = %if.then72, %do.body60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug715, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_set_phy_cfg, %if.then93)) #12
          to label %do.body104 [label %if.then93], !srcloc !428

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr96 = getelementptr i8, ptr %hw, i32 -2960
  %30 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr96, align 8
  %dev98 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %caps, align 8
  %conv100 = zext i8 %33 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug715, ptr noundef %dev98, ptr noundef nonnull @.str.6, i32 noundef %conv100) #12
  br label %do.body104

do.body104:                                       ; preds = %if.then93, %do.body81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug716, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_set_phy_cfg, %if.then116)) #12
          to label %do.body126 [label %if.then116], !srcloc !428

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr119 = getelementptr i8, ptr %hw, i32 -2960
  %34 = ptrtoint ptr %add.ptr119 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr119, align 8
  %dev121 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %low_power_ctrl_an = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 3
  %36 = ptrtoint ptr %low_power_ctrl_an to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %low_power_ctrl_an, align 1
  %conv122 = zext i8 %37 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug716, ptr noundef %dev121, ptr noundef nonnull @.str.7, i32 noundef %conv122) #12
  br label %do.body126

do.body126:                                       ; preds = %if.then116, %do.body104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug717, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_set_phy_cfg, %if.then138)) #12
          to label %do.body148 [label %if.then138], !srcloc !428

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr141 = getelementptr i8, ptr %hw, i32 -2960
  %38 = ptrtoint ptr %add.ptr141 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr141, align 8
  %dev143 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %eee_cap = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 4
  %40 = ptrtoint ptr %eee_cap to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %eee_cap, align 2
  %conv144 = zext i16 %41 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug717, ptr noundef %dev143, ptr noundef nonnull @.str.8, i32 noundef %conv144) #12
  br label %do.body148

do.body148:                                       ; preds = %if.then138, %do.body126
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug718, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_set_phy_cfg, %if.then160)) #12
          to label %do.body170 [label %if.then160], !srcloc !428

if.then160:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr163 = getelementptr i8, ptr %hw, i32 -2960
  %42 = ptrtoint ptr %add.ptr163 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr163, align 8
  %dev165 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %eeer_value = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 5
  %44 = ptrtoint ptr %eeer_value to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %eeer_value, align 4
  %conv166 = zext i16 %45 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug718, ptr noundef %dev165, ptr noundef nonnull @.str.9, i32 noundef %conv166) #12
  br label %do.body170

do.body170:                                       ; preds = %if.then160, %do.body148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug719, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_set_phy_cfg, %if.then182)) #12
          to label %do.end191 [label %if.then182], !srcloc !428

if.then182:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr185 = getelementptr i8, ptr %hw, i32 -2960
  %46 = ptrtoint ptr %add.ptr185 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr185, align 8
  %dev187 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %link_fec_opt = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 6
  %48 = ptrtoint ptr %link_fec_opt to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %link_fec_opt, align 2
  %conv188 = zext i8 %49 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug719, ptr noundef %dev187, ptr noundef nonnull @.str.60, i32 noundef %conv188) #12
  br label %do.end191

do.end191:                                        ; preds = %if.then182, %do.body170
  %call192 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef nonnull %cfg, i16 noundef zeroext 24, ptr noundef %cd)
  %sq_last_status = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 8
  %50 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sq_last_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %51)
  %cmp = icmp eq i32 %51, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool196.not257 = icmp eq i32 %call192, 0
  %tobool196.not = select i1 %cmp, i1 true, i1 %tobool196.not257
  br i1 %tobool196.not, label %if.then197, label %do.end191.cleanup_crit_edge

do.end191.cleanup_crit_edge:                      ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then197:                                       ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #14
  %curr_user_phy_cfg = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 9
  %52 = call ptr @memcpy(ptr %curr_user_phy_cfg, ptr %cfg, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.then197, %do.end191.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then197 ], [ %call192, %do.end191.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_update_link_info(ptr noundef %pi) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pi, null
  br i1 %tobool.not, label %entry.cleanup20_crit_edge, label %if.end

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup20

if.end:                                           ; preds = %entry
  %call = tail call i32 @ice_aq_get_link_info(ptr noundef nonnull %pi, i1 noundef zeroext true, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup20_crit_edge

if.end.cleanup20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup20

if.end3:                                          ; preds = %if.end
  %link_info4 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 0, i32 8
  %0 = ptrtoint ptr %link_info4 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %link_info4, align 2
  %2 = and i8 %1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool5.not = icmp eq i8 %2, 0
  br i1 %tobool5.not, label %if.end3.cleanup20_crit_edge, label %if.then6

if.end3.cleanup20_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup20

if.then6:                                         ; preds = %if.end3
  %hw7 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %hw7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw7, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 -2960
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 560, i32 noundef 3520) #12
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.then6.cleanup20_crit_edge, label %cleanup

if.then6.cleanup20_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup20

cleanup:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 @ice_aq_get_phy_caps(ptr noundef nonnull %pi, i1 noundef zeroext false, i8 noundef zeroext 2, ptr noundef nonnull %call.i, ptr noundef null)
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev17, ptr noundef nonnull %call.i) #12
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup, %if.then6.cleanup20_crit_edge, %if.end3.cleanup20_crit_edge, %if.end.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup20_crit_edge ], [ %call, %if.end.cleanup20_crit_edge ], [ %call12, %cleanup ], [ 0, %if.end3.cleanup20_crit_edge ], [ -12, %if.then6.cleanup20_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ice_caps_to_fc_mode(i8 noundef zeroext %caps) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %caps to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.not = icmp eq i32 %and, 0
  %0 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %.not = icmp eq i32 %0, 3
  %.mux = select i1 %.not, i32 3, i32 2
  %and2 = lshr i32 %conv, 1
  %and2.lobit = and i32 %and2, 1
  %retval.0 = select i1 %tobool.not.not, i32 %and2.lobit, i32 %.mux
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ice_caps_to_fec_mode(i8 noundef zeroext %caps, i8 noundef zeroext %fec_options) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %caps)
  %tobool.not = icmp sgt i8 %caps, -1
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %conv1 = zext i8 %fec_options to i32
  %and2 = and i32 %conv1, 139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %and7 = and i32 %conv1, 84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp ne i32 %and7, 0
  %. = zext i1 %tobool8.not to i32
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 3, %entry.return_crit_edge ], [ 2, %if.end.return_crit_edge ], [ %., %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ice_cfg_phy_fc(ptr noundef writeonly %pi, ptr noundef %cfg, i32 noundef %req_mode) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pi, null
  %tobool1.not = icmp eq ptr %cfg, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.tableidx = add i32 %req_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 196866, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %pause_mask.0 = select i1 %0, i8 %switch.masked, i8 0
  %caps = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 2
  %1 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %caps, align 8
  %3 = and i8 %2, -4
  %or19 = or i8 %3, %pause_mask.0
  store i8 %or19, ptr %caps, align 8
  %curr_user_fc_req.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 8
  %4 = ptrtoint ptr %curr_user_fc_req.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %req_mode, ptr %curr_user_fc_req.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_set_fc(ptr noundef %pi, ptr noundef writeonly %aq_failures, i1 noundef zeroext %ena_auto_link_update) local_unnamed_addr #1 align 64 {
entry:
  %cfg = alloca %struct.ice_aqc_set_phy_cfg_data, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cfg) #12
  %0 = call ptr @memset(ptr %cfg, i32 0, i32 24)
  %tobool.not = icmp eq ptr %pi, null
  %tobool1.not = icmp eq ptr %aq_failures, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup45_crit_edge, label %if.end

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup45

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %aq_failures to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %aq_failures, align 1
  %hw2 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw2, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -2960
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 560, i32 noundef 3520) #12
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup45_crit_edge, label %if.end5

if.end.cleanup45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup45

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @ice_aq_get_phy_caps(ptr noundef nonnull %pi, i1 noundef zeroext false, i8 noundef zeroext 4, ptr noundef nonnull %call.i, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.i73, label %if.end5.out.sink.split_crit_edge

if.end5.out.sink.split_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.end.i73:                                       ; preds = %if.end5
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %call.i, align 8
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %cfg, align 8
  %phy_type_high.i = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %phy_type_high.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %phy_type_high.i, align 8
  %phy_type_high5.i = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 1
  %11 = ptrtoint ptr %phy_type_high5.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %phy_type_high5.i, align 8
  %caps6.i = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %caps6.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %caps6.i, align 8
  %caps7.i = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 2
  %14 = ptrtoint ptr %caps7.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %caps7.i, align 8
  %low_power_ctrl_an.i = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %low_power_ctrl_an.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %low_power_ctrl_an.i, align 1
  %low_power_ctrl_an8.i = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 3
  %17 = ptrtoint ptr %low_power_ctrl_an8.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %low_power_ctrl_an8.i, align 1
  %eee_cap.i = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %eee_cap.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %eee_cap.i, align 2
  %eee_cap9.i = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 4
  %20 = ptrtoint ptr %eee_cap9.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %eee_cap9.i, align 2
  %eeer_value.i = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %eeer_value.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %eeer_value.i, align 4
  %eeer_value10.i = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 5
  %23 = ptrtoint ptr %eeer_value10.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %eeer_value10.i, align 4
  %link_fec_options.i = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %link_fec_options.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %link_fec_options.i, align 2
  %link_fec_opt.i = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 6
  %26 = ptrtoint ptr %link_fec_opt.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %link_fec_opt.i, align 2
  %module_compliance_enforcement.i = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %call.i, i32 0, i32 9
  %27 = ptrtoint ptr %module_compliance_enforcement.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %module_compliance_enforcement.i, align 1
  %module_compliance_enforcement11.i = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 7
  %29 = ptrtoint ptr %module_compliance_enforcement11.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %module_compliance_enforcement11.i, align 1
  %req_mode = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 11, i32 1
  %30 = ptrtoint ptr %req_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %req_mode, align 4
  %switch.tableidx = add i32 %31, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %32 = icmp ult i32 %switch.tableidx, 3
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 196866, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %pause_mask.0.i = select i1 %32, i8 %switch.masked, i8 0
  %33 = ptrtoint ptr %caps7.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %caps7.i, align 8
  %35 = and i8 %34, -4
  %or19.i = or i8 %35, %pause_mask.0.i
  store i8 %or19.i, ptr %caps7.i, align 8
  %curr_user_fc_req.i.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 8
  %36 = ptrtoint ptr %curr_user_fc_req.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %31, ptr %curr_user_fc_req.i.i, align 4
  %37 = ptrtoint ptr %caps6.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %caps6.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %or19.i, i8 %38)
  %cmp.not = icmp eq i8 %or19.i, %38
  br i1 %cmp.not, label %if.end.i73.out_crit_edge, label %if.then17

if.end.i73.out_crit_edge:                         ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then17:                                        ; preds = %if.end.i73
  br i1 %ena_auto_link_update, label %if.then19, label %if.then17.if.end23_crit_edge

if.then17.if.end23_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %39 = or i8 %or19.i, 32
  %40 = ptrtoint ptr %caps7.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %caps7.i, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.then17.if.end23_crit_edge
  %call24 = call i32 @ice_aq_set_phy_cfg(ptr noundef %3, ptr noundef nonnull %pi, ptr noundef nonnull %cfg, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %for.cond.preheader, label %if.end23.out.sink.split_crit_edge

if.end23.out.sink.split_crit_edge:                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

for.cond.preheader:                               ; preds = %if.end23
  %link_info4.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 0, i32 8
  br label %if.end.i77

if.end.i77:                                       ; preds = %while.end.if.end.i77_crit_edge, %for.cond.preheader
  %retry_count.084 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %while.end.if.end.i77_crit_edge ]
  %call.i75 = call i32 @ice_aq_get_link_info(ptr noundef nonnull %pi, i1 noundef zeroext true, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool1.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool1.not.i76, label %if.end3.i, label %if.end.i77.while.body.preheader_crit_edge

if.end.i77.while.body.preheader_crit_edge:        ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

if.end3.i:                                        ; preds = %if.end.i77
  %41 = ptrtoint ptr %link_info4.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %link_info4.i, align 2
  %43 = and i8 %42, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool5.not.i = icmp eq i8 %43, 0
  br i1 %tobool5.not.i, label %if.end3.i.out_crit_edge, label %if.then6.i

if.end3.i.out_crit_edge:                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then6.i:                                       ; preds = %if.end3.i
  %44 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw2, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 -2960
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 560, i32 noundef 3520) #12
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.then6.i.while.body.preheader_crit_edge, label %ice_update_link_info.exit

if.then6.i.while.body.preheader_crit_edge:        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

ice_update_link_info.exit:                        ; preds = %if.then6.i
  %call12.i = call i32 @ice_aq_get_phy_caps(ptr noundef nonnull %pi, i1 noundef zeroext false, i8 noundef zeroext 2, ptr noundef nonnull %call.i.i, ptr noundef null) #12
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 8
  %dev17.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev17.i, ptr noundef nonnull %call.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool31.not = icmp eq i32 %call12.i, 0
  br i1 %tobool31.not, label %ice_update_link_info.exit.out_crit_edge, label %ice_update_link_info.exit.while.body.preheader_crit_edge

ice_update_link_info.exit.while.body.preheader_crit_edge: ; preds = %ice_update_link_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

ice_update_link_info.exit.out_crit_edge:          ; preds = %ice_update_link_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

while.body.preheader:                             ; preds = %ice_update_link_info.exit.while.body.preheader_crit_edge, %if.then6.i.while.body.preheader_crit_edge, %if.end.i77.while.body.preheader_crit_edge
  %retval.1.i87 = phi i32 [ %call12.i, %ice_update_link_info.exit.while.body.preheader_crit_edge ], [ -12, %if.then6.i.while.body.preheader_crit_edge ], [ %call.i75, %if.end.i77.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.083 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %while.body.preheader ]
  %dec = add nsw i32 %__ms.083, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #12
  %tobool34.not = icmp eq i32 %dec, 0
  br i1 %tobool34.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body
  %inc = add nuw nsw i32 %retry_count.084, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %while.end.out.sink.split_crit_edge, label %while.end.if.end.i77_crit_edge

while.end.if.end.i77_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i77

while.end.out.sink.split_crit_edge:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

out.sink.split:                                   ; preds = %while.end.out.sink.split_crit_edge, %if.end23.out.sink.split_crit_edge, %if.end5.out.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.end5.out.sink.split_crit_edge ], [ 2, %if.end23.out.sink.split_crit_edge ], [ 3, %while.end.out.sink.split_crit_edge ]
  %status.3.ph = phi i32 [ %call6, %if.end5.out.sink.split_crit_edge ], [ %call24, %if.end23.out.sink.split_crit_edge ], [ %retval.1.i87, %while.end.out.sink.split_crit_edge ]
  %51 = ptrtoint ptr %aq_failures to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %.sink, ptr %aq_failures, align 1
  br label %out

out:                                              ; preds = %out.sink.split, %ice_update_link_info.exit.out_crit_edge, %if.end3.i.out_crit_edge, %if.end.i73.out_crit_edge
  %status.3 = phi i32 [ 0, %if.end.i73.out_crit_edge ], [ %status.3.ph, %out.sink.split ], [ 0, %ice_update_link_info.exit.out_crit_edge ], [ 0, %if.end3.i.out_crit_edge ]
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr, align 8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev44, ptr noundef nonnull %call.i) #12
  br label %cleanup45

cleanup45:                                        ; preds = %out, %if.end.cleanup45_crit_edge, %entry.cleanup45_crit_edge
  %retval.0 = phi i32 [ %status.3, %out ], [ -22, %entry.cleanup45_crit_edge ], [ -12, %if.end.cleanup45_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ice_copy_phy_caps_to_cfg(ptr noundef readnone %pi, ptr noundef readonly %caps, ptr noundef writeonly %cfg) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pi, null
  %tobool1.not = icmp eq ptr %caps, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %cfg, null
  %or.cond29 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond29, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = call ptr @memset(ptr %cfg, i32 0, i32 24)
  %1 = ptrtoint ptr %caps to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %caps, align 8
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %cfg, align 8
  %phy_type_high = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %caps, i32 0, i32 1
  %4 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %phy_type_high, align 8
  %phy_type_high5 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 1
  %6 = ptrtoint ptr %phy_type_high5 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %phy_type_high5, align 8
  %caps6 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %caps, i32 0, i32 2
  %7 = ptrtoint ptr %caps6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %caps6, align 8
  %caps7 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %caps7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %caps7, align 8
  %low_power_ctrl_an = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %caps, i32 0, i32 3
  %10 = ptrtoint ptr %low_power_ctrl_an to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %low_power_ctrl_an, align 1
  %low_power_ctrl_an8 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 3
  %12 = ptrtoint ptr %low_power_ctrl_an8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %low_power_ctrl_an8, align 1
  %eee_cap = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %caps, i32 0, i32 4
  %13 = ptrtoint ptr %eee_cap to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %eee_cap, align 2
  %eee_cap9 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 4
  %15 = ptrtoint ptr %eee_cap9 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %eee_cap9, align 2
  %eeer_value = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %caps, i32 0, i32 5
  %16 = ptrtoint ptr %eeer_value to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %eeer_value, align 4
  %eeer_value10 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 5
  %18 = ptrtoint ptr %eeer_value10 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %eeer_value10, align 4
  %link_fec_options = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %caps, i32 0, i32 8
  %19 = ptrtoint ptr %link_fec_options to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %link_fec_options, align 2
  %link_fec_opt = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 6
  %21 = ptrtoint ptr %link_fec_opt to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %link_fec_opt, align 2
  %module_compliance_enforcement = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %caps, i32 0, i32 9
  %22 = ptrtoint ptr %module_compliance_enforcement to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %module_compliance_enforcement, align 1
  %module_compliance_enforcement11 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 7
  %24 = ptrtoint ptr %module_compliance_enforcement11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %module_compliance_enforcement11, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ice_phy_caps_equals_cfg(ptr noundef readonly %phy_caps, ptr noundef readonly %phy_cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phy_caps, null
  %tobool1.not = icmp eq ptr %phy_cfg, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %phy_caps to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %phy_caps, align 8
  %2 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %phy_cfg, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp.not = icmp eq i64 %1, %3
  br i1 %cmp.not, label %lor.lhs.false3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false3:                                   ; preds = %if.end
  %phy_type_high = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %phy_caps, i32 0, i32 1
  %4 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %phy_type_high, align 8
  %phy_type_high4 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %phy_cfg, i32 0, i32 1
  %6 = ptrtoint ptr %phy_type_high4 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %phy_type_high4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp5.not = icmp eq i64 %5, %7
  br i1 %cmp5.not, label %lor.lhs.false6, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %caps = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %phy_caps, i32 0, i32 2
  %8 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %caps, align 8
  %caps8 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %phy_cfg, i32 0, i32 2
  %10 = ptrtoint ptr %caps8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %caps8, align 8
  %12 = xor i8 %11, %9
  %13 = and i8 %12, -49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp12.not = icmp eq i8 %13, 0
  br i1 %cmp12.not, label %lor.lhs.false14, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false6
  %low_power_ctrl_an = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %phy_caps, i32 0, i32 3
  %14 = ptrtoint ptr %low_power_ctrl_an to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %low_power_ctrl_an, align 1
  %low_power_ctrl_an16 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %phy_cfg, i32 0, i32 3
  %16 = ptrtoint ptr %low_power_ctrl_an16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %low_power_ctrl_an16, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp18.not = icmp eq i8 %15, %17
  br i1 %cmp18.not, label %lor.lhs.false20, label %lor.lhs.false14.cleanup_crit_edge

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false20:                                  ; preds = %lor.lhs.false14
  %eee_cap = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %phy_caps, i32 0, i32 4
  %18 = ptrtoint ptr %eee_cap to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %eee_cap, align 2
  %eee_cap22 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %phy_cfg, i32 0, i32 4
  %20 = ptrtoint ptr %eee_cap22 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %eee_cap22, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp24.not = icmp eq i16 %19, %21
  br i1 %cmp24.not, label %lor.lhs.false26, label %lor.lhs.false20.cleanup_crit_edge

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false26:                                  ; preds = %lor.lhs.false20
  %eeer_value = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %phy_caps, i32 0, i32 5
  %22 = ptrtoint ptr %eeer_value to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %eeer_value, align 4
  %eeer_value28 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %phy_cfg, i32 0, i32 5
  %24 = ptrtoint ptr %eeer_value28 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %eeer_value28, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp30.not = icmp eq i16 %23, %25
  br i1 %cmp30.not, label %lor.lhs.false32, label %lor.lhs.false26.cleanup_crit_edge

lor.lhs.false26.cleanup_crit_edge:                ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false32:                                  ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #14
  %link_fec_options = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %phy_caps, i32 0, i32 8
  %26 = ptrtoint ptr %link_fec_options to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %link_fec_options, align 2
  %link_fec_opt = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %phy_cfg, i32 0, i32 6
  %28 = ptrtoint ptr %link_fec_opt to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %link_fec_opt, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp35.not = icmp eq i8 %27, %29
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false32, %lor.lhs.false26.cleanup_crit_edge, %lor.lhs.false20.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false26.cleanup_crit_edge ], [ false, %lor.lhs.false20.cleanup_crit_edge ], [ false, %lor.lhs.false14.cleanup_crit_edge ], [ false, %lor.lhs.false6.cleanup_crit_edge ], [ false, %lor.lhs.false3.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ %cmp35.not, %lor.lhs.false32 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_cfg_phy_fec(ptr noundef %pi, ptr noundef %cfg, i32 noundef %fec) local_unnamed_addr #1 align 64 {
entry:
  %tlv = alloca %struct.ice_link_default_override_tlv, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pi, null
  %tobool1.not = icmp eq ptr %cfg, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup70_crit_edge, label %if.end

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup70

if.end:                                           ; preds = %entry
  %hw2 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 560) #17
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup70_crit_edge, label %if.end5

if.end.cleanup70_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup70

if.end5:                                          ; preds = %if.end
  %api_maj_ver.i = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 34
  %3 = ptrtoint ptr %api_maj_ver.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %api_maj_ver.i, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.174)
  switch i8 %4, label %if.end5._crit_edge [
    i8 1, label %if.then.i
    i8 0, label %if.end5.ice_fw_supports_report_dflt_cfg.exit_crit_edge
  ]

if.end5.ice_fw_supports_report_dflt_cfg.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_fw_supports_report_dflt_cfg.exit

if.end5._crit_edge:                               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %10

if.then.i:                                        ; preds = %if.end5
  %api_min_ver.i = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %api_min_ver.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %api_min_ver.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %7)
  %cmp3.i = icmp ugt i8 %7, 7
  br i1 %cmp3.i, label %if.then.i._crit_edge, label %if.end.i

if.then.i._crit_edge:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %10

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %7)
  %cmp8.i = icmp eq i8 %7, 7
  br i1 %cmp8.i, label %land.lhs.true.i, label %if.end.i.ice_fw_supports_report_dflt_cfg.exit_crit_edge

if.end.i.ice_fw_supports_report_dflt_cfg.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_fw_supports_report_dflt_cfg.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %api_patch.i = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 36
  %8 = ptrtoint ptr %api_patch.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %api_patch.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp11.i = icmp ugt i8 %9, 2
  br i1 %cmp11.i, label %land.lhs.true.i._crit_edge, label %land.lhs.true.i.ice_fw_supports_report_dflt_cfg.exit_crit_edge

land.lhs.true.i.ice_fw_supports_report_dflt_cfg.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_fw_supports_report_dflt_cfg.exit

land.lhs.true.i._crit_edge:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %10

10:                                               ; preds = %land.lhs.true.i._crit_edge, %if.then.i._crit_edge, %if.end5._crit_edge
  br label %ice_fw_supports_report_dflt_cfg.exit

ice_fw_supports_report_dflt_cfg.exit:             ; preds = %10, %land.lhs.true.i.ice_fw_supports_report_dflt_cfg.exit_crit_edge, %if.end.i.ice_fw_supports_report_dflt_cfg.exit_crit_edge, %if.end5.ice_fw_supports_report_dflt_cfg.exit_crit_edge
  %11 = phi i8 [ 8, %10 ], [ 2, %if.end5.ice_fw_supports_report_dflt_cfg.exit_crit_edge ], [ 2, %if.end.i.ice_fw_supports_report_dflt_cfg.exit_crit_edge ], [ 2, %land.lhs.true.i.ice_fw_supports_report_dflt_cfg.exit_crit_edge ]
  %call7 = tail call i32 @ice_aq_get_phy_caps(ptr noundef nonnull %pi, i1 noundef zeroext false, i8 noundef zeroext %11, ptr noundef nonnull %call7.i.i, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %ice_fw_supports_report_dflt_cfg.exit.out_crit_edge

ice_fw_supports_report_dflt_cfg.exit.out_crit_edge: ; preds = %ice_fw_supports_report_dflt_cfg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end10:                                         ; preds = %ice_fw_supports_report_dflt_cfg.exit
  %caps = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %caps, align 8
  %14 = and i8 %13, -128
  %caps12 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 2
  %15 = ptrtoint ptr %caps12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %caps12, align 8
  %or96 = or i8 %16, %14
  store i8 %or96, ptr %caps12, align 8
  %link_fec_options = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %call7.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %link_fec_options to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %link_fec_options, align 2
  %link_fec_opt = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, ptr %cfg, i32 0, i32 6
  %19 = ptrtoint ptr %link_fec_opt to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %link_fec_opt, align 2
  %20 = zext i32 %fec to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %fec, label %if.end10.out_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb23
    i32 0, label %sw.bb32
    i32 3, label %land.lhs.true
  ]

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %21 = and i8 %18, -127
  %22 = or i8 %21, 10
  %23 = ptrtoint ptr %link_fec_opt to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %link_fec_opt, align 2
  br label %out

sw.bb23:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %24 = and i8 %18, 64
  %25 = or i8 %24, 20
  %26 = ptrtoint ptr %link_fec_opt to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %link_fec_opt, align 2
  br label %out

sw.bb32:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %27 = and i8 %18, 32
  %28 = ptrtoint ptr %link_fec_opt to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %link_fec_opt, align 2
  br label %out

land.lhs.true:                                    ; preds = %if.end10
  %29 = ptrtoint ptr %api_maj_ver.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %api_maj_ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cond = icmp eq i8 %30, 1
  br i1 %cond, label %if.then.i102, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.i102:                                     ; preds = %land.lhs.true
  %api_min_ver.i100 = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 35
  %31 = ptrtoint ptr %api_min_ver.i100 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %api_min_ver.i100, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %32)
  %cmp3.i101 = icmp ugt i8 %32, 5
  br i1 %cmp3.i101, label %if.then.i102.if.then.i113_crit_edge, label %if.end.i104

if.then.i102.if.then.i113_crit_edge:              ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i113

if.end.i104:                                      ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %32)
  %cmp8.i103 = icmp eq i8 %32, 5
  br i1 %cmp8.i103, label %land.lhs.true.i107, label %if.end.i104.out_crit_edge

if.end.i104.out_crit_edge:                        ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true.i107:                               ; preds = %if.end.i104
  %api_patch.i105 = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 36
  %33 = ptrtoint ptr %api_patch.i105 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %api_patch.i105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp11.i106 = icmp ugt i8 %34, 1
  br i1 %cmp11.i106, label %if.then.i113thread-pre-split, label %land.lhs.true.i107.out_crit_edge

land.lhs.true.i107.out_crit_edge:                 ; preds = %land.lhs.true.i107
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.i113thread-pre-split:                     ; preds = %land.lhs.true.i107
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %api_min_ver.i100 to i32
  call void @__asan_load1_noabort(i32 %35)
  %.pr = load i8, ptr %api_min_ver.i100, align 2
  br label %if.then.i113

if.then.i113:                                     ; preds = %if.then.i113thread-pre-split, %if.then.i102.if.then.i113_crit_edge
  %36 = phi i8 [ %.pr, %if.then.i113thread-pre-split ], [ %32, %if.then.i102.if.then.i113_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %36)
  %cmp3.i112 = icmp ugt i8 %36, 7
  br i1 %cmp3.i112, label %if.then.i113.out_crit_edge, label %if.end.i115

if.then.i113.out_crit_edge:                       ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i115:                                      ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %36)
  %cmp8.i114 = icmp eq i8 %36, 7
  br i1 %cmp8.i114, label %land.lhs.true.i118, label %if.end.i115.if.then53_crit_edge

if.end.i115.if.then53_crit_edge:                  ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53

land.lhs.true.i118:                               ; preds = %if.end.i115
  %api_patch.i116 = getelementptr inbounds %struct.ice_hw, ptr %1, i32 0, i32 36
  %37 = ptrtoint ptr %api_patch.i116 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %api_patch.i116, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %cmp11.i117 = icmp ugt i8 %38, 2
  br i1 %cmp11.i117, label %land.lhs.true.i118.out_crit_edge, label %land.lhs.true.i118.if.then53_crit_edge

land.lhs.true.i118.if.then53_crit_edge:           ; preds = %land.lhs.true.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53

land.lhs.true.i118.out_crit_edge:                 ; preds = %land.lhs.true.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then53:                                        ; preds = %land.lhs.true.i118.if.then53_crit_edge, %if.end.i115.if.then53_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tlv) #12
  %39 = call ptr @memset(ptr %tlv, i32 0, i32 24)
  %call54 = call i32 @ice_get_link_default_override(ptr noundef nonnull %tlv, ptr noundef nonnull %pi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.then53.cleanup_crit_edge

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end57:                                         ; preds = %if.then53
  %40 = ptrtoint ptr %tlv to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tlv, align 8
  %42 = and i8 %41, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %42)
  %.not = icmp eq i8 %42, 8
  br i1 %.not, label %if.then66, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then66:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %fec_options = getelementptr inbounds %struct.ice_link_default_override_tlv, ptr %tlv, i32 0, i32 2
  %43 = ptrtoint ptr %fec_options to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %fec_options, align 2
  %45 = ptrtoint ptr %link_fec_opt to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %link_fec_opt, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %if.end57.cleanup_crit_edge, %if.then53.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tlv) #12
  br label %out

out:                                              ; preds = %cleanup, %land.lhs.true.i118.out_crit_edge, %if.then.i113.out_crit_edge, %land.lhs.true.i107.out_crit_edge, %if.end.i104.out_crit_edge, %land.lhs.true.out_crit_edge, %sw.bb32, %sw.bb23, %sw.bb, %if.end10.out_crit_edge, %ice_fw_supports_report_dflt_cfg.exit.out_crit_edge
  %status.1 = phi i32 [ %call7, %ice_fw_supports_report_dflt_cfg.exit.out_crit_edge ], [ %call54, %cleanup ], [ 0, %if.end.i104.out_crit_edge ], [ 0, %land.lhs.true.i107.out_crit_edge ], [ -22, %if.end10.out_crit_edge ], [ 0, %sw.bb ], [ 0, %sw.bb23 ], [ 0, %sw.bb32 ], [ 0, %if.then.i113.out_crit_edge ], [ 0, %land.lhs.true.i118.out_crit_edge ], [ 0, %land.lhs.true.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup70

cleanup70:                                        ; preds = %out, %if.end.cleanup70_crit_edge, %entry.cleanup70_crit_edge
  %retval.0 = phi i32 [ %status.1, %out ], [ -22, %entry.cleanup70_crit_edge ], [ -12, %if.end.cleanup70_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ice_fw_supports_link_override(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %api_maj_ver = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 34
  %0 = ptrtoint ptr %api_maj_ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %api_maj_ver, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.176)
  switch i8 %1, label %entry.return_crit_edge [
    i8 1, label %if.then
    i8 0, label %entry.if.end21_crit_edge
  ]

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %entry
  %api_min_ver = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 35
  %3 = ptrtoint ptr %api_min_ver to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %api_min_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %4)
  %cmp3 = icmp ugt i8 %4, 5
  br i1 %cmp3, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %4)
  %cmp8 = icmp eq i8 %4, 5
  br i1 %cmp8, label %land.lhs.true, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end
  %api_patch = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 36
  %5 = ptrtoint ptr %api_patch to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %api_patch, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp11 = icmp ugt i8 %6, 1
  br i1 %cmp11, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %if.end.if.end21_crit_edge, %entry.if.end21_crit_edge
  br label %return

return:                                           ; preds = %if.end21, %land.lhs.true.return_crit_edge, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end21 ], [ true, %if.then.return_crit_edge ], [ true, %land.lhs.true.return_crit_edge ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_get_link_default_override(ptr nocapture noundef %ldo, ptr nocapture noundef readonly %pi) local_unnamed_addr #1 align 64 {
entry:
  %tlv = alloca i16, align 2
  %tlv_len = alloca i16, align 2
  %buf = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tlv) #12
  %0 = ptrtoint ptr %tlv to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %tlv, align 2, !annotation !448
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tlv_len) #12
  %1 = ptrtoint ptr %tlv_len to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %tlv_len, align 2, !annotation !448
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #12
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %buf, align 2, !annotation !448
  %hw1 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw1, align 4
  %call = call i32 @ice_get_pfa_module_tlv(ptr noundef %4, ptr noundef nonnull %tlv, ptr noundef nonnull %tlv_len, i16 noundef zeroext 308) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_link_default_override.__UNIQUE_ID_ddebug730, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_link_default_override, %if.then6)) #12
          to label %cleanup [label %if.then6], !srcloc !428

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %4, i32 -2960
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_link_default_override.__UNIQUE_ID_ddebug730, ptr noundef %dev, ptr noundef nonnull @.str.76) #12
  br label %cleanup

if.end8:                                          ; preds = %entry
  %7 = ptrtoint ptr %tlv to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tlv, align 2
  %lport = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 6
  %9 = ptrtoint ptr %lport to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lport, align 1
  %conv9 = zext i8 %10 to i16
  %mul = mul nuw nsw i16 %conv9, 10
  %add = add i16 %mul, %8
  %add10 = add i16 %add, 2
  %call12 = call i32 @ice_read_sr_word(ptr noundef %4, i16 noundef zeroext %add10, ptr noundef nonnull %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end36, label %do.body15

do.body15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_link_default_override.__UNIQUE_ID_ddebug731, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_link_default_override, %if.then27)) #12
          to label %cleanup [label %if.then27], !srcloc !428

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr30 = getelementptr i8, ptr %4, i32 -2960
  %11 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr30, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_link_default_override.__UNIQUE_ID_ddebug731, ptr noundef %dev32, ptr noundef nonnull @.str.77) #12
  br label %cleanup

if.end36:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %buf, align 2
  %15 = trunc i16 %14 to i8
  %conv38 = and i8 %15, 63
  %16 = ptrtoint ptr %ldo to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv38, ptr %ldo, align 8
  %17 = lshr i16 %14, 8
  %18 = trunc i16 %17 to i8
  %conv41 = and i8 %18, -61
  %phy_config = getelementptr inbounds %struct.ice_link_default_override_tlv, ptr %ldo, i32 0, i32 1
  %19 = ptrtoint ptr %phy_config to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv41, ptr %phy_config, align 1
  %add43 = add i16 %add, 3
  %call45 = call i32 @ice_read_sr_word(ptr noundef %4, i16 noundef zeroext %add43, ptr noundef nonnull %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end69, label %do.body48

do.body48:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_link_default_override.__UNIQUE_ID_ddebug732, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_link_default_override, %if.then60)) #12
          to label %cleanup [label %if.then60], !srcloc !428

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr63 = getelementptr i8, ptr %4, i32 -2960
  %20 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr63, align 8
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_link_default_override.__UNIQUE_ID_ddebug732, ptr noundef %dev65, ptr noundef nonnull @.str.78) #12
  br label %cleanup

if.end69:                                         ; preds = %if.end36
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %buf, align 2
  %conv72 = trunc i16 %23 to i8
  %fec_options = getelementptr inbounds %struct.ice_link_default_override_tlv, ptr %ldo, i32 0, i32 2
  %24 = ptrtoint ptr %fec_options to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv72, ptr %fec_options, align 2
  %25 = add i16 %add, 4
  %phy_type_low = getelementptr inbounds %struct.ice_link_default_override_tlv, ptr %ldo, i32 0, i32 4
  %call82 = call i32 @ice_read_sr_word(ptr noundef %4, i16 noundef zeroext %25, ptr noundef nonnull %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end106, label %if.end69.do.body85_crit_edge

if.end69.do.body85_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body85

do.body85:                                        ; preds = %if.end106.2.do.body85_crit_edge, %if.end106.1.do.body85_crit_edge, %if.end106.do.body85_crit_edge, %if.end69.do.body85_crit_edge
  %call82.lcssa = phi i32 [ %call82, %if.end69.do.body85_crit_edge ], [ %call82.1, %if.end106.do.body85_crit_edge ], [ %call82.2, %if.end106.1.do.body85_crit_edge ], [ %call82.3, %if.end106.2.do.body85_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_link_default_override.__UNIQUE_ID_ddebug733, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_link_default_override, %if.then97)) #12
          to label %cleanup [label %if.then97], !srcloc !428

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr100 = getelementptr i8, ptr %4, i32 -2960
  %26 = ptrtoint ptr %add.ptr100 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr100, align 8
  %dev102 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_link_default_override.__UNIQUE_ID_ddebug733, ptr noundef %dev102, ptr noundef nonnull @.str.77) #12
  br label %cleanup

if.end106:                                        ; preds = %if.end69
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %buf, align 2
  %conv107 = zext i16 %29 to i64
  %30 = ptrtoint ptr %phy_type_low to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %phy_type_low, align 8
  %or = or i64 %31, %conv107
  store i64 %or, ptr %phy_type_low, align 8
  %add80.1 = add i16 %add, 5
  %call82.1 = call i32 @ice_read_sr_word(ptr noundef %4, i16 noundef zeroext %add80.1, ptr noundef nonnull %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.1)
  %tobool83.not.1 = icmp eq i32 %call82.1, 0
  br i1 %tobool83.not.1, label %if.end106.1, label %if.end106.do.body85_crit_edge

if.end106.do.body85_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body85

if.end106.1:                                      ; preds = %if.end106
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %buf, align 2
  %conv107.1 = zext i16 %33 to i64
  %shl.1 = shl nuw nsw i64 %conv107.1, 16
  %34 = ptrtoint ptr %phy_type_low to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %phy_type_low, align 8
  %or.1 = or i64 %shl.1, %35
  store i64 %or.1, ptr %phy_type_low, align 8
  %add80.2 = add i16 %add, 6
  %call82.2 = call i32 @ice_read_sr_word(ptr noundef %4, i16 noundef zeroext %add80.2, ptr noundef nonnull %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.2)
  %tobool83.not.2 = icmp eq i32 %call82.2, 0
  br i1 %tobool83.not.2, label %if.end106.2, label %if.end106.1.do.body85_crit_edge

if.end106.1.do.body85_crit_edge:                  ; preds = %if.end106.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body85

if.end106.2:                                      ; preds = %if.end106.1
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %buf, align 2
  %conv107.2 = zext i16 %37 to i64
  %shl.2 = shl nuw nsw i64 %conv107.2, 32
  %38 = ptrtoint ptr %phy_type_low to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %phy_type_low, align 8
  %or.2 = or i64 %shl.2, %39
  store i64 %or.2, ptr %phy_type_low, align 8
  %add80.3 = add i16 %add, 7
  %call82.3 = call i32 @ice_read_sr_word(ptr noundef %4, i16 noundef zeroext %add80.3, ptr noundef nonnull %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.3)
  %tobool83.not.3 = icmp eq i32 %call82.3, 0
  br i1 %tobool83.not.3, label %if.end106.3, label %if.end106.2.do.body85_crit_edge

if.end106.2.do.body85_crit_edge:                  ; preds = %if.end106.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body85

if.end106.3:                                      ; preds = %if.end106.2
  %40 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %buf, align 2
  %conv107.3 = zext i16 %41 to i64
  %shl.3 = shl nuw i64 %conv107.3, 48
  %42 = ptrtoint ptr %phy_type_low to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %phy_type_low, align 8
  %or.3 = or i64 %shl.3, %43
  store i64 %or.3, ptr %phy_type_low, align 8
  %add112 = add i16 %add, 8
  %phy_type_high = getelementptr inbounds %struct.ice_link_default_override_tlv, ptr %ldo, i32 0, i32 5
  %call123 = call i32 @ice_read_sr_word(ptr noundef %4, i16 noundef zeroext %add112, ptr noundef nonnull %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end147, label %if.end106.3.do.body126_crit_edge

if.end106.3.do.body126_crit_edge:                 ; preds = %if.end106.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body126

do.body126:                                       ; preds = %if.end147.2.do.body126_crit_edge, %if.end147.1.do.body126_crit_edge, %if.end147.do.body126_crit_edge, %if.end106.3.do.body126_crit_edge
  %call123.lcssa = phi i32 [ %call123, %if.end106.3.do.body126_crit_edge ], [ %call123.1, %if.end147.do.body126_crit_edge ], [ %call123.2, %if.end147.1.do.body126_crit_edge ], [ %call123.3, %if.end147.2.do.body126_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_link_default_override.__UNIQUE_ID_ddebug734, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_link_default_override, %if.then138)) #12
          to label %cleanup [label %if.then138], !srcloc !428

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr141 = getelementptr i8, ptr %4, i32 -2960
  %44 = ptrtoint ptr %add.ptr141 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr141, align 8
  %dev143 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_link_default_override.__UNIQUE_ID_ddebug734, ptr noundef %dev143, ptr noundef nonnull @.str.77) #12
  br label %cleanup

if.end147:                                        ; preds = %if.end106.3
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %buf, align 2
  %conv148 = zext i16 %47 to i64
  %48 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %phy_type_high, align 8
  %or153 = or i64 %49, %conv148
  store i64 %or153, ptr %phy_type_high, align 8
  %add121.1 = add i16 %add, 9
  %call123.1 = call i32 @ice_read_sr_word(ptr noundef %4, i16 noundef zeroext %add121.1, ptr noundef nonnull %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.1)
  %tobool124.not.1 = icmp eq i32 %call123.1, 0
  br i1 %tobool124.not.1, label %if.end147.1, label %if.end147.do.body126_crit_edge

if.end147.do.body126_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body126

if.end147.1:                                      ; preds = %if.end147
  %50 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %buf, align 2
  %conv148.1 = zext i16 %51 to i64
  %shl152.1 = shl nuw nsw i64 %conv148.1, 16
  %52 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %phy_type_high, align 8
  %or153.1 = or i64 %shl152.1, %53
  store i64 %or153.1, ptr %phy_type_high, align 8
  %add121.2 = add i16 %add, 10
  %call123.2 = call i32 @ice_read_sr_word(ptr noundef %4, i16 noundef zeroext %add121.2, ptr noundef nonnull %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.2)
  %tobool124.not.2 = icmp eq i32 %call123.2, 0
  br i1 %tobool124.not.2, label %if.end147.2, label %if.end147.1.do.body126_crit_edge

if.end147.1.do.body126_crit_edge:                 ; preds = %if.end147.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body126

if.end147.2:                                      ; preds = %if.end147.1
  %54 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %buf, align 2
  %conv148.2 = zext i16 %55 to i64
  %shl152.2 = shl nuw nsw i64 %conv148.2, 32
  %56 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %phy_type_high, align 8
  %or153.2 = or i64 %shl152.2, %57
  store i64 %or153.2, ptr %phy_type_high, align 8
  %add121.3 = add i16 %add, 11
  %call123.3 = call i32 @ice_read_sr_word(ptr noundef %4, i16 noundef zeroext %add121.3, ptr noundef nonnull %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.3)
  %tobool124.not.3 = icmp eq i32 %call123.3, 0
  br i1 %tobool124.not.3, label %if.end147.3, label %if.end147.2.do.body126_crit_edge

if.end147.2.do.body126_crit_edge:                 ; preds = %if.end147.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body126

if.end147.3:                                      ; preds = %if.end147.2
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %buf, align 2
  %conv148.3 = zext i16 %59 to i64
  %shl152.3 = shl nuw i64 %conv148.3, 48
  %60 = ptrtoint ptr %phy_type_high to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %phy_type_high, align 8
  %or153.3 = or i64 %shl152.3, %61
  store i64 %or153.3, ptr %phy_type_high, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end147.3, %if.then138, %do.body126, %if.then97, %do.body85, %if.then60, %do.body48, %if.then27, %do.body15, %if.then6, %do.body
  %retval.0 = phi i32 [ %call, %if.then6 ], [ %call12, %if.then27 ], [ %call45, %if.then60 ], [ %call82.lcssa, %if.then97 ], [ %call123.lcssa, %if.then138 ], [ %call, %do.body ], [ %call12, %do.body15 ], [ %call45, %do.body48 ], [ %call82.lcssa, %do.body85 ], [ %call123.lcssa, %do.body126 ], [ 0, %if.end147.3 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tlv_len) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tlv) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_get_link_status(ptr noundef %pi, ptr noundef writeonly %link_up) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pi, null
  %tobool1.not = icmp eq ptr %link_up, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %get_link_info = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %get_link_info to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %get_link_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end.if.end14_crit_edge, label %if.end.i

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @ice_aq_get_link_info(ptr noundef nonnull %pi, i1 noundef zeroext true, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.do.body_crit_edge

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end3.i:                                        ; preds = %if.end.i
  %link_info4.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 0, i32 8
  %2 = ptrtoint ptr %link_info4.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link_info4.i, align 2
  %4 = and i8 %3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not.i = icmp eq i8 %4, 0
  br i1 %tobool5.not.i, label %if.end3.i.if.end14_crit_edge, label %if.then6.i

if.end3.i.if.end14_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then6.i:                                       ; preds = %if.end3.i
  %hw7.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %5 = ptrtoint ptr %hw7.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw7.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 -2960
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 560, i32 noundef 3520) #12
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.then6.i.do.body_crit_edge, label %ice_update_link_info.exit

if.then6.i.do.body_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

ice_update_link_info.exit:                        ; preds = %if.then6.i
  %call12.i = tail call i32 @ice_aq_get_phy_caps(ptr noundef nonnull %pi, i1 noundef zeroext false, i8 noundef zeroext 2, ptr noundef nonnull %call.i.i, ptr noundef null) #12
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %dev17.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev17.i, ptr noundef nonnull %call.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool4.not = icmp eq i32 %call12.i, 0
  br i1 %tobool4.not, label %ice_update_link_info.exit.if.end14_crit_edge, label %ice_update_link_info.exit.do.body_crit_edge

ice_update_link_info.exit.do.body_crit_edge:      ; preds = %ice_update_link_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

ice_update_link_info.exit.if.end14_crit_edge:     ; preds = %ice_update_link_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

do.body:                                          ; preds = %ice_update_link_info.exit.do.body_crit_edge, %if.then6.i.do.body_crit_edge, %if.end.i.do.body_crit_edge
  %retval.1.i28 = phi i32 [ %call12.i, %ice_update_link_info.exit.do.body_crit_edge ], [ -12, %if.then6.i.do.body_crit_edge ], [ %call.i, %if.end.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_link_status.__UNIQUE_ID_ddebug720, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_link_status, %if.then10)) #12
          to label %if.end14 [label %if.then10], !srcloc !428

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %hw = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 -2960
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_link_status.__UNIQUE_ID_ddebug720, ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %retval.1.i28) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %do.body, %ice_update_link_info.exit.if.end14_crit_edge, %if.end3.i.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %status.0 = phi i32 [ %retval.1.i28, %if.then10 ], [ 0, %ice_update_link_info.exit.if.end14_crit_edge ], [ 0, %if.end.if.end14_crit_edge ], [ %retval.1.i28, %do.body ], [ 0, %if.end3.i.if.end14_crit_edge ]
  %link_info15 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 13, i32 0, i32 8
  %15 = ptrtoint ptr %link_info15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %link_info15, align 2
  %17 = and i8 %16, 1
  %18 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %link_up, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end14 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_set_link_restart_an(ptr nocapture noundef readonly %pi, i1 noundef zeroext %ena_link, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1541) #12
  %cmd_flags = getelementptr inbounds %struct.ice_aqc_restart_an, ptr %0, i32 0, i32 2
  %lport = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 6
  %2 = ptrtoint ptr %lport to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lport, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %0, align 4
  %spec.select = select i1 %ena_link, i8 6, i8 2
  %5 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select, ptr %cmd_flags, align 2
  %hw = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %call = call i32 @ice_aq_send_cmd(ptr noundef %7, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_set_event_mask(ptr noundef %hw, i8 noundef zeroext %port_num, i16 noundef zeroext %mask, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1555) #12
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %port_num, ptr %0, align 4
  %4 = call i16 @llvm.bswap.i16(i16 %mask)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %1, align 4
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_set_mac_loopback(ptr noundef %hw, i1 noundef zeroext %ena_lpbk, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1568) #12
  br i1 %ena_lpbk, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_set_port_id_led(ptr nocapture noundef readonly %pi, i1 noundef zeroext %is_orig_mode, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %2 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %3 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1769) #12
  %not.is_orig_mode = xor i1 %is_orig_mode, true
  %spec.select = zext i1 %not.is_orig_mode to i8
  %4 = getelementptr inbounds %struct.ice_aqc_set_port_id_led, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select, ptr %4, align 2
  %call = call i32 @ice_aq_send_cmd(ptr noundef %1, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_sff_eeprom(ptr noundef %hw, i16 noundef zeroext %lport, i8 noundef zeroext %bus_addr, i16 noundef zeroext %mem_addr, i8 noundef zeroext %page, i8 noundef zeroext %set_page, ptr noundef %data, i8 noundef zeroext %length, i1 noundef zeroext %write, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %tobool.not = icmp ne ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %mem_addr)
  %tobool1.not = icmp ult i16 %mem_addr, 256
  %or.cond = and i1 %tobool1.not, %tobool.not
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1774) #12
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 4, ptr %desc, align 4
  %conv4 = trunc i16 %lport to i8
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv4, ptr %2, align 4
  %5 = lshr i16 %lport, 8
  %6 = trunc i16 %5 to i8
  %conv7 = and i8 %6, 1
  %lport_num_valid = getelementptr inbounds %struct.ice_aqc_sff_eeprom, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %lport_num_valid to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv7, ptr %lport_num_valid, align 1
  %8 = lshr i8 %bus_addr, 1
  %9 = zext i8 %8 to i16
  %conv11 = zext i8 %set_page to i16
  %shl = shl i16 %conv11, 11
  %and12 = and i16 %shl, 6144
  %or = or i16 %and12, %9
  %10 = call i16 @llvm.bswap.i16(i16 %or)
  %i2c_bus_addr = getelementptr inbounds %struct.ice_aqc_sff_eeprom, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %i2c_bus_addr to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %i2c_bus_addr, align 2
  %and15 = shl nuw i16 %mem_addr, 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %and15, ptr %1, align 4
  %conv18 = zext i8 %page to i16
  %eeprom_page = getelementptr inbounds %struct.ice_aqc_sff_eeprom, ptr %2, i32 0, i32 4
  %13 = ptrtoint ptr %eeprom_page to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv18, ptr %eeprom_page, align 2
  br i1 %write, label %if.then22, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = or i16 %10, 128
  %15 = ptrtoint ptr %i2c_bus_addr to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %i2c_bus_addr, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end.if.end27_crit_edge
  %conv28 = zext i8 %length to i16
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef nonnull %data, i16 noundef zeroext %conv28, ptr noundef %cd)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end27 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_get_rss_lut(ptr noundef %hw, ptr noundef %get_params) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ice_aq_get_set_rss_lut(ptr noundef %hw, ptr noundef %get_params, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ice_aq_get_set_rss_lut(ptr noundef %hw, ptr noundef readonly %params, i1 noundef zeroext %set) unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %tobool.not = icmp eq ptr %params, null
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %params, align 4
  %lut2 = getelementptr inbounds %struct.ice_aq_get_set_rss_lut_params, ptr %params, i32 0, i32 3
  %4 = ptrtoint ptr %lut2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lut2, align 4
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %hw, i16 noundef zeroext %3) #12
  %call.not = xor i1 %call, true
  %tobool3.not = icmp eq ptr %5, null
  %or.cond = select i1 %call.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %lut_size6 = getelementptr inbounds %struct.ice_aq_get_set_rss_lut_params, ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %lut_size6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %lut_size6, align 2
  %lut_type7 = getelementptr inbounds %struct.ice_aq_get_set_rss_lut_params, ptr %params, i32 0, i32 2
  %8 = ptrtoint ptr %lut_type7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lut_type7, align 4
  %global_lut_id = getelementptr inbounds %struct.ice_aq_get_set_rss_lut_params, ptr %params, i32 0, i32 4
  %10 = ptrtoint ptr %global_lut_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %global_lut_id, align 4
  %call9 = tail call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw, i16 noundef zeroext %3) #12
  br i1 %set, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2819) #12
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %desc, align 4
  %14 = or i16 %13, 4
  store i16 %14, ptr %desc, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2821) #12
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12
  %15 = and i16 %call9, 1023
  %16 = or i16 %15, -32768
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %switch = icmp ult i8 %9, 3
  br i1 %switch, label %sw.bb, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end16
  %conv27 = zext i8 %9 to i16
  %19 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.177)
  switch i8 %9, label %sw.bb.ice_aq_get_set_rss_lut_send_crit_edge [
    i8 2, label %if.then30
    i8 1, label %if.then44
  ]

sw.bb.ice_aq_get_set_rss_lut_send_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_aq_get_set_rss_lut_send

if.then30:                                        ; preds = %sw.bb
  %conv31 = zext i8 %11 to i16
  %shl32 = shl nuw nsw i16 %conv31, 4
  %and33 = and i16 %shl32, 240
  %or35 = or i16 %and33, %conv27
  br i1 %set, label %if.then30.if.end50_crit_edge, label %if.then30.ice_aq_get_set_rss_lut_send_crit_edge

if.then30.ice_aq_get_set_rss_lut_send_crit_edge:  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_aq_get_set_rss_lut_send

if.then30.if.end50_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then44:                                        ; preds = %sw.bb
  br i1 %set, label %if.then44.if.end50_crit_edge, label %if.then44.ice_aq_get_set_rss_lut_send_crit_edge

if.then44.ice_aq_get_set_rss_lut_send_crit_edge:  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_aq_get_set_rss_lut_send

if.then44.if.end50_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.end50:                                         ; preds = %if.then44.if.end50_crit_edge, %if.then30.if.end50_crit_edge
  %flags.0 = phi i16 [ %or35, %if.then30.if.end50_crit_edge ], [ 1, %if.then44.if.end50_crit_edge ]
  %20 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.178)
  switch i16 %7, label %if.end50.cleanup_crit_edge [
    i16 128, label %if.end50.ice_aq_get_set_rss_lut_send_crit_edge
    i16 512, label %sw.bb52
    i16 2048, label %sw.bb56
  ]

if.end50.ice_aq_get_set_rss_lut_send_crit_edge:   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_aq_get_set_rss_lut_send

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb52:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %21 = or i16 %flags.0, 4
  br label %ice_aq_get_set_rss_lut_send

sw.bb56:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp58 = icmp eq i8 %9, 1
  br i1 %cmp58, label %if.then60, label %sw.bb56.cleanup_crit_edge

sw.bb56.cleanup_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then60:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #14
  %22 = or i16 %flags.0, 8
  br label %ice_aq_get_set_rss_lut_send

ice_aq_get_set_rss_lut_send:                      ; preds = %if.then60, %sw.bb52, %if.end50.ice_aq_get_set_rss_lut_send_crit_edge, %if.then44.ice_aq_get_set_rss_lut_send_crit_edge, %if.then30.ice_aq_get_set_rss_lut_send_crit_edge, %sw.bb.ice_aq_get_set_rss_lut_send_crit_edge
  %flags.1 = phi i16 [ %22, %if.then60 ], [ %21, %sw.bb52 ], [ %flags.0, %if.end50.ice_aq_get_set_rss_lut_send_crit_edge ], [ %or35, %if.then30.ice_aq_get_set_rss_lut_send_crit_edge ], [ 1, %if.then44.ice_aq_get_set_rss_lut_send_crit_edge ], [ %conv27, %sw.bb.ice_aq_get_set_rss_lut_send_crit_edge ]
  %23 = call i16 @llvm.bswap.i16(i16 %flags.1)
  %flags67 = getelementptr inbounds %struct.ice_aqc_get_set_rss_lut, ptr %0, i32 0, i32 1
  %24 = ptrtoint ptr %flags67 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %flags67, align 2
  %call68 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef nonnull %5, i16 noundef zeroext %7, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %ice_aq_get_set_rss_lut_send, %sw.bb56.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call68, %ice_aq_get_set_rss_lut_send ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %sw.bb56.cleanup_crit_edge ], [ -22, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_set_rss_lut(ptr noundef %hw, ptr noundef %set_params) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ice_aq_get_set_rss_lut(ptr noundef %hw, ptr noundef %set_params, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_get_rss_key(ptr noundef %hw, i16 noundef zeroext %vsi_handle, ptr noundef %key) local_unnamed_addr #1 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #12
  %tobool.not = icmp ne ptr %key, null
  %0 = and i1 %tobool.not, %call
  br i1 %0, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #12
  %1 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 2820) #12
  %2 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %3 = and i16 %call1, 1023
  %4 = or i16 %3, -32768
  %5 = call i16 @llvm.bswap.i16(i16 %4) #12
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %2, align 4
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %key, i16 noundef zeroext 52, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_vsi_valid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ice_get_hw_vsi_num(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_set_rss_key(ptr noundef %hw, i16 noundef zeroext %vsi_handle, ptr noundef %keys) local_unnamed_addr #1 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #12
  %tobool.not = icmp ne ptr %keys, null
  %0 = and i1 %tobool.not, %call
  br i1 %0, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #12
  %1 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 2818) #12
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc.i, align 4
  %4 = or i16 %3, 4
  store i16 %4, ptr %desc.i, align 4
  %5 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %6 = and i16 %call1, 1023
  %7 = or i16 %6, -32768
  %8 = call i16 @llvm.bswap.i16(i16 %7) #12
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %5, align 4
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %keys, i16 noundef zeroext 52, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ice_get_lan_q_ctx(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i16 noundef zeroext %q_handle) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ice_get_vsi_ctx(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %idxprom = zext i8 %tc to i32
  %arrayidx = getelementptr %struct.ice_vsi_ctx, ptr %call, i32 0, i32 8, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %q_handle)
  %cmp.not = icmp ugt i16 %1, %q_handle
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %q_handle to i32
  %arrayidx6 = getelementptr %struct.ice_vsi_ctx, ptr %call, i32 0, i32 9, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %3, null
  %arrayidx14 = getelementptr %struct.ice_q_ctx, ptr %3, i32 %conv
  %spec.select = select i1 %tobool7.not, ptr null, ptr %arrayidx14
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end4 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_get_vsi_ctx(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_ena_vsi_txq(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i16 noundef zeroext %q_handle, i8 noundef zeroext %num_qgrps, ptr noundef %buf, i16 noundef zeroext %buf_size, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %node = alloca %struct.ice_aqc_txsched_elem_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %node) #12
  %0 = call ptr @memset(ptr %node, i32 0, i32 24)
  %tobool.not = icmp eq ptr %pi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %port_state = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 5
  %1 = ptrtoint ptr %port_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp.not = icmp eq i8 %2, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %num_qgrps)
  %cmp3 = icmp ugt i8 %num_qgrps, 1
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %lor.lhs.false5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false5:                                   ; preds = %if.end
  %num_txqs = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %num_txqs to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_txqs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp7 = icmp ugt i8 %4, 1
  br i1 %cmp7, label %lor.lhs.false5.cleanup_crit_edge, label %if.end10

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false5
  %hw11 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %5 = ptrtoint ptr %hw11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw11, align 4
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %6, i16 noundef zeroext %vsi_handle) #12
  br i1 %call, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #12
  %call.i = tail call ptr @ice_get_vsi_ctx(ptr noundef %6, i16 noundef zeroext %vsi_handle) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end13.do.body_crit_edge, label %if.end.i

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.i:                                         ; preds = %if.end13
  %idxprom.i = zext i8 %tc to i32
  %arrayidx.i = getelementptr %struct.ice_vsi_ctx, ptr %call.i, i32 0, i32 8, i32 %idxprom.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %q_handle)
  %cmp.not.i = icmp ugt i16 %8, %q_handle
  br i1 %cmp.not.i, label %if.end4.i, label %if.end.i.do.body_crit_edge

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end4.i:                                        ; preds = %if.end.i
  %conv.i = zext i16 %q_handle to i32
  %arrayidx6.i = getelementptr %struct.ice_vsi_ctx, ptr %call.i, i32 0, i32 9, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %10, null
  %arrayidx14.i = getelementptr %struct.ice_q_ctx, ptr %10, i32 %conv.i
  %tobool15.not = icmp eq ptr %arrayidx14.i, null
  %or.cond = or i1 %tobool7.not.i, %tobool15.not
  br i1 %or.cond, label %if.end4.i.do.body_crit_edge, label %if.end25

if.end4.i.do.body_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %if.end4.i.do.body_crit_edge, %if.end.i.do.body_crit_edge, %if.end13.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ena_vsi_txq.__UNIQUE_ID_ddebug724, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ena_vsi_txq, %if.then21)) #12
          to label %ena_txq_exit [label %if.then21], !srcloc !428

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %6, i32 -2960
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %conv23 = zext i16 %q_handle to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ena_vsi_txq.__UNIQUE_ID_ddebug724, ptr noundef %dev, ptr noundef nonnull @.str.66, i32 noundef %conv23) #12
  br label %ena_txq_exit

if.end25:                                         ; preds = %if.end4.i
  %call26 = tail call ptr @ice_sched_get_free_qparent(ptr noundef nonnull %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i8 noundef zeroext 0) #12
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end25.ena_txq_exit_crit_edge, label %if.end29

if.end25.ena_txq_exit_crit_edge:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %ena_txq_exit

if.end29:                                         ; preds = %if.end25
  %node_teid = getelementptr inbounds %struct.ice_sched_node, ptr %call26, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %node_teid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node_teid, align 4
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %buf, align 4
  %16 = load i32, ptr %node_teid, align 4
  %17 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %node, align 4
  %txqs = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, ptr %buf, i32 0, i32 3
  %info33 = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, ptr %buf, i32 5
  %valid_sections = getelementptr inbounds %struct.ice_aqc_txsched_elem, ptr %info33, i32 0, i32 1
  %18 = ptrtoint ptr %valid_sections to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 7, ptr %valid_sections, align 1
  %generic = getelementptr inbounds %struct.ice_aqc_txsched_elem, ptr %info33, i32 0, i32 2
  %19 = ptrtoint ptr %generic to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %generic, align 2
  %cir_bw = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, ptr %buf, i32 5, i32 1
  %20 = ptrtoint ptr %cir_bw to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %cir_bw, align 4
  %bw_alloc = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, ptr %buf, i32 5, i32 2, i32 1
  %21 = ptrtoint ptr %bw_alloc to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1024, ptr %bw_alloc, align 2
  %eir_bw = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, ptr %buf, i32 6
  %22 = ptrtoint ptr %eir_bw to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %eir_bw, align 4
  %bw_alloc52 = getelementptr inbounds %struct.ice_aqc_elem_info_bw, ptr %eir_bw, i32 0, i32 1
  %23 = ptrtoint ptr %bw_alloc52 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1024, ptr %bw_alloc52, align 2
  %call53 = tail call fastcc i32 @ice_aq_add_lan_txq(ptr noundef %6, i8 noundef zeroext %num_qgrps, ptr noundef %buf, i16 noundef zeroext %buf_size, ptr noundef %cd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end80, label %do.body56

do.body56:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ena_vsi_txq.__UNIQUE_ID_ddebug725, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ena_vsi_txq, %if.then68)) #12
          to label %ena_txq_exit [label %if.then68], !srcloc !428

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr71 = getelementptr i8, ptr %6, i32 -2960
  %24 = ptrtoint ptr %add.ptr71 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr71, align 8
  %dev73 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %txqs to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %txqs, align 4
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %conv76 = zext i16 %28 to i32
  %sq_last_status = getelementptr inbounds %struct.ice_hw, ptr %6, i32 0, i32 30, i32 8
  %29 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sq_last_status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ena_vsi_txq.__UNIQUE_ID_ddebug725, ptr noundef %dev73, ptr noundef nonnull @.str.67, i32 noundef %conv76, i32 noundef %30) #12
  br label %ena_txq_exit

if.end80:                                         ; preds = %if.end29
  %q_teid = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, ptr %buf, i32 1, i32 1
  %31 = ptrtoint ptr %q_teid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %q_teid, align 4
  %node_teid83 = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, ptr %node, i32 0, i32 1
  %33 = ptrtoint ptr %node_teid83 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %node_teid83, align 4
  %data = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, ptr %node, i32 0, i32 2
  %34 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 5, ptr %data, align 4
  %35 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %q_handle, ptr %arrayidx14.i, align 4
  %36 = load i32, ptr %node_teid83, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %q_teid86 = getelementptr %struct.ice_q_ctx, ptr %10, i32 %conv.i, i32 1
  %38 = ptrtoint ptr %q_teid86 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %q_teid86, align 4
  %num_tx_sched_layers = getelementptr inbounds %struct.ice_hw, ptr %6, i32 0, i32 15
  %39 = ptrtoint ptr %num_tx_sched_layers to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_tx_sched_layers, align 2
  %sub = add i8 %40, -1
  %call89 = call i32 @ice_sched_add_node(ptr noundef nonnull %pi, i8 noundef zeroext %sub, ptr noundef nonnull %node) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then91, label %if.end80.ena_txq_exit_crit_edge

if.end80.ena_txq_exit_crit_edge:                  ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %ena_txq_exit

if.then91:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %call92 = call i32 @ice_sched_replay_q_bw(ptr noundef nonnull %pi, ptr noundef nonnull %arrayidx14.i) #12
  br label %ena_txq_exit

ena_txq_exit:                                     ; preds = %if.then91, %if.end80.ena_txq_exit_crit_edge, %if.then68, %do.body56, %if.end25.ena_txq_exit_crit_edge, %if.then21, %do.body
  %status.0 = phi i32 [ %call53, %if.then68 ], [ %call89, %if.end80.ena_txq_exit_crit_edge ], [ %call92, %if.then91 ], [ -22, %if.then21 ], [ -22, %if.end25.ena_txq_exit_crit_edge ], [ -22, %do.body ], [ %call53, %do.body56 ]
  call void @mutex_unlock(ptr noundef %sched_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %ena_txq_exit, %if.end10.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %ena_txq_exit ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ -28, %lor.lhs.false5.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %node) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_sched_get_free_qparent(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_aq_add_lan_txq(ptr noundef %hw, i8 noundef zeroext %num_qgrps, ptr noundef %qg_list, i16 noundef zeroext %buf_size, ptr noundef %cd) unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 3120) #12
  %tobool.not = icmp eq ptr %qg_list, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_qgrps)
  %cmp = icmp slt i8 %num_qgrps, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = zext i8 %num_qgrps to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_qgrps)
  %cmp637.not = icmp eq i8 %num_qgrps, 0
  br i1 %cmp637.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %sum_size.040 = phi i32 [ %phi.cast, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.039 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %list.038 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %qg_list, %for.cond.preheader.for.body_crit_edge ]
  %num_txqs = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, ptr %list.038, i32 0, i32 1
  %3 = ptrtoint ptr %num_txqs to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_txqs, align 4
  %conv8 = zext i8 %4 to i32
  %5 = mul nuw nsw i32 %conv8, 48
  %spec.select.i36 = add nuw nsw i32 %sum_size.040, 8
  %add = add nuw nsw i32 %spec.select.i36, %5
  %txqs = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, ptr %list.038, i32 0, i32 3
  %add.ptr = getelementptr %struct.ice_aqc_add_txqs_perq, ptr %txqs, i32 %conv8
  %inc = add nuw nsw i16 %i.039, 1
  %phi.cast = and i32 %add, 65535
  %cmp6 = icmp ult i16 %inc, %2
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sum_size.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %phi.cast, %for.body.for.end_crit_edge ]
  %conv13 = zext i16 %buf_size to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sum_size.0.lcssa, i32 %conv13)
  %cmp15.not = icmp eq i32 %sum_size.0.lcssa, %conv13
  br i1 %cmp15.not, label %if.end18, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %desc, align 4
  %8 = or i16 %7, 4
  store i16 %8, ptr %desc, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %num_qgrps, ptr %0, align 4
  %call22 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef nonnull %qg_list, i16 noundef zeroext %buf_size, ptr noundef %cd)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end18 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_sched_add_node(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_sched_replay_q_bw(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_dis_vsi_txq(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i8 noundef zeroext %num_queues, ptr nocapture noundef readonly %q_handles, ptr nocapture noundef readonly %q_ids, ptr nocapture noundef readonly %q_teids, i32 noundef %rst_src, i16 noundef zeroext %vmvf_num, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pi, null
  br i1 %tobool.not, label %entry.cleanup84_crit_edge, label %lor.lhs.false

entry.cleanup84_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup84

lor.lhs.false:                                    ; preds = %entry
  %port_state = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 5
  %0 = ptrtoint ptr %port_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup84_crit_edge

lor.lhs.false.cleanup84_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup84

if.end:                                           ; preds = %lor.lhs.false
  %hw2 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_queues)
  %tobool3.not = icmp eq i8 %num_queues, 0
  br i1 %tobool3.not, label %if.then4, label %kzalloc.exit

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rst_src)
  %tobool5.not = icmp eq i32 %rst_src, 0
  br i1 %tobool5.not, label %if.then4.cleanup84_crit_edge, label %if.then6

if.then4.cleanup84_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup84

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @ice_aq_dis_lan_txq(ptr noundef %3, i8 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef %rst_src, i16 noundef zeroext %vmvf_num, ptr noundef null)
  br label %cleanup84

kzalloc.exit:                                     ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 8) #17
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %kzalloc.exit.cleanup84_crit_edge, label %if.end15

kzalloc.exit.cleanup84_crit_edge:                 ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup84

if.end15:                                         ; preds = %kzalloc.exit
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #12
  %idxprom.i = zext i8 %tc to i32
  %add.ptr62 = getelementptr i8, ptr %3, i32 -2960
  %num_qs = getelementptr inbounds %struct.ice_aqc_dis_txq_item, ptr %call7.i.i, i32 0, i32 1
  %q_id = getelementptr inbounds %struct.ice_aqc_dis_txq_item, ptr %call7.i.i, i32 0, i32 3
  %wide.trip.count = zext i8 %num_queues to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end15
  %indvars.iv = phi i32 [ 0, %if.end15 ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %status.0145 = phi i32 [ -2, %if.end15 ], [ %status.1138, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pi, align 8
  %arrayidx = getelementptr i32, ptr %q_teids, i32 %indvars.iv
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %call20 = tail call ptr @ice_sched_find_node_by_teid(ptr noundef %6, i32 noundef %8) #12
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %for.body.for.inc_crit_edge, label %if.end23

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end23:                                         ; preds = %for.body
  %arrayidx25 = getelementptr i16, ptr %q_handles, i32 %indvars.iv
  %9 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx25, align 2
  %call.i = tail call ptr @ice_get_vsi_ctx(ptr noundef %3, i16 noundef zeroext %vsi_handle) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end23.do.body_crit_edge, label %if.end.i

if.end23.do.body_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.i:                                         ; preds = %if.end23
  %arrayidx.i = getelementptr %struct.ice_vsi_ctx, ptr %call.i, i32 0, i32 8, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %10)
  %cmp.not.i = icmp ugt i16 %12, %10
  br i1 %cmp.not.i, label %if.end4.i, label %if.end.i.do.body_crit_edge

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end4.i:                                        ; preds = %if.end.i
  %conv.i = zext i16 %10 to i32
  %arrayidx6.i = getelementptr %struct.ice_vsi_ctx, ptr %call.i, i32 0, i32 9, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %14, null
  %arrayidx14.i = getelementptr %struct.ice_q_ctx, ptr %14, i32 %conv.i
  %tobool27.not = icmp eq ptr %arrayidx14.i, null
  %or.cond = select i1 %tobool7.not.i, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %if.end4.i.do.body_crit_edge, label %if.end39

if.end4.i.do.body_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %if.end4.i.do.body_crit_edge, %if.end.i.do.body_crit_edge, %if.end23.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dis_vsi_txq.__UNIQUE_ID_ddebug726, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dis_vsi_txq, %if.then33)) #12
          to label %for.inc [label %if.then33], !srcloc !428

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr62, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx25, align 2
  %conv37 = zext i16 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dis_vsi_txq.__UNIQUE_ID_ddebug726, ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %conv37) #12
  br label %for.inc

if.end39:                                         ; preds = %if.end4.i
  %19 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx14.i, align 4
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx25, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp44.not = icmp eq i16 %20, %22
  br i1 %cmp44.not, label %if.end73, label %do.body47

do.body47:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dis_vsi_txq.__UNIQUE_ID_ddebug727, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dis_vsi_txq, %if.then59)) #12
          to label %for.inc [label %if.then59], !srcloc !428

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr62, align 8
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx14.i, align 4
  %conv66 = zext i16 %26 to i32
  %27 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx25, align 2
  %conv69 = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dis_vsi_txq.__UNIQUE_ID_ddebug727, ptr noundef %dev64, ptr noundef nonnull @.str.70, i32 noundef %conv66, i32 noundef %conv69) #12
  br label %for.inc

if.end73:                                         ; preds = %if.end39
  %info = getelementptr inbounds %struct.ice_sched_node, ptr %call20, i32 0, i32 3
  %29 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %info, align 4
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %call7.i.i, align 8
  %32 = ptrtoint ptr %num_qs to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %num_qs, align 4
  %arrayidx76 = getelementptr i16, ptr %q_ids, i32 %indvars.iv
  %33 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx76, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %36 = ptrtoint ptr %q_id to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %q_id, align 2
  %call78 = tail call fastcc i32 @ice_aq_dis_lan_txq(ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 8, i32 noundef %rst_src, i16 noundef zeroext %vmvf_num, ptr noundef %cd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end73.for.end_crit_edge

if.end73.for.end_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end81:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ice_free_sched_node(ptr noundef nonnull %pi, ptr noundef nonnull %call20) #12
  %37 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %arrayidx14.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end81, %if.then59, %do.body47, %if.then33, %do.body, %for.body.for.inc_crit_edge
  %status.1138 = phi i32 [ %status.0145, %if.then59 ], [ %status.0145, %if.then33 ], [ %status.0145, %for.body.for.inc_crit_edge ], [ 0, %if.end81 ], [ %status.0145, %do.body47 ], [ %status.0145, %do.body ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end73.for.end_crit_edge
  %status.2 = phi i32 [ %status.1138, %for.inc.for.end_crit_edge ], [ %call78, %if.end73.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sched_lock) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup84

cleanup84:                                        ; preds = %for.end, %kzalloc.exit.cleanup84_crit_edge, %if.then6, %if.then4.cleanup84_crit_edge, %lor.lhs.false.cleanup84_crit_edge, %entry.cleanup84_crit_edge
  %retval.0 = phi i32 [ %status.2, %for.end ], [ %call, %if.then6 ], [ -5, %lor.lhs.false.cleanup84_crit_edge ], [ -5, %entry.cleanup84_crit_edge ], [ -5, %if.then4.cleanup84_crit_edge ], [ -12, %kzalloc.exit.cleanup84_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_aq_dis_lan_txq(ptr noundef %hw, i8 noundef zeroext %num_qgrps, ptr noundef %qg_list, i16 noundef zeroext %buf_size, i32 noundef %rst_src, i16 noundef zeroext %vmvf_num, ptr noundef %cd) unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 3121) #12
  %tobool.not = icmp eq ptr %qg_list, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rst_src)
  %tobool1.not = icmp eq i32 %rst_src, 0
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %entry
  %num_entries = getelementptr inbounds %struct.ice_aqc_dis_txqs, ptr %0, i32 0, i32 1
  %2 = ptrtoint ptr %num_entries to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %num_qgrps, ptr %num_entries, align 1
  %vmvf_and_timeout = getelementptr inbounds %struct.ice_aqc_dis_txqs, ptr %0, i32 0, i32 2
  %3 = ptrtoint ptr %vmvf_and_timeout to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 20, ptr %vmvf_and_timeout, align 2
  %4 = zext i32 %rst_src to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %rst_src, label %if.end4.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
  ]

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %0, align 4
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %0, align 4
  %vf_base_id = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 2
  %7 = ptrtoint ptr %vf_base_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vf_base_id, align 4
  %9 = trunc i32 %8 to i16
  %10 = add i16 %9, %vmvf_num
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb11, %sw.bb
  %.sink = phi i16 [ %10, %sw.bb11 ], [ %vmvf_num, %sw.bb ]
  %conv15 = and i16 %.sink, 1023
  %11 = or i16 %conv15, 5120
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %vmvf_and_timeout to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %vmvf_and_timeout, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end4.sw.epilog_crit_edge
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %0, align 4
  %16 = or i8 %15, 8
  store i8 %16, ptr %0, align 4
  br i1 %tobool.not, label %do_aq.thread, label %if.end28

if.end28:                                         ; preds = %sw.epilog
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %desc, align 4
  %19 = or i16 %18, 4
  store i16 %19, ptr %desc, align 4
  %20 = zext i8 %num_qgrps to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_qgrps)
  %cmp34147.not = icmp eq i8 %num_qgrps, 0
  br i1 %cmp34147.not, label %if.end28.for.end_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  br label %for.body

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end28.for.body_crit_edge
  %item.0150 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %qg_list, %if.end28.for.body_crit_edge ]
  %i.0149 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end28.for.body_crit_edge ]
  %sz.0148 = phi i32 [ %phi.cast, %for.body.for.body_crit_edge ], [ 0, %if.end28.for.body_crit_edge ]
  %num_qs = getelementptr inbounds %struct.ice_aqc_dis_txq_item, ptr %item.0150, i32 0, i32 1
  %21 = ptrtoint ptr %num_qs to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_qs, align 1
  %conv36 = zext i8 %22 to i32
  %23 = shl nuw nsw i32 %conv36, 1
  %24 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp40 = icmp eq i8 %24, 0
  %item_size.0.v = select i1 %cmp40, i32 8, i32 6
  %item_size.0 = add nuw nsw i32 %item_size.0.v, %23
  %add49 = add nuw nsw i32 %item_size.0, %sz.0148
  %add.ptr = getelementptr i8, ptr %item.0150, i32 %item_size.0
  %inc = add nuw nsw i16 %i.0149, 1
  %phi.cast = and i32 %add49, 65535
  %cmp34 = icmp ult i16 %inc, %20
  br i1 %cmp34, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end28.for.end_crit_edge
  %sz.0.lcssa = phi i32 [ 0, %if.end28.for.end_crit_edge ], [ %phi.cast, %for.body.for.end_crit_edge ]
  %conv52 = zext i16 %buf_size to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0.lcssa, i32 %conv52)
  %cmp54.not = icmp eq i32 %sz.0.lcssa, %conv52
  br i1 %cmp54.not, label %do_aq, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do_aq:                                            ; preds = %for.end
  %call58 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef nonnull %qg_list, i16 noundef zeroext %buf_size, ptr noundef %cd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %do_aq.cleanup_crit_edge, label %do.body72

do_aq.cleanup_crit_edge:                          ; preds = %do_aq
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do_aq.thread:                                     ; preds = %sw.epilog
  %call58139 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext %buf_size, ptr noundef %cd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58139)
  %tobool59.not140 = icmp eq i32 %call58139, 0
  br i1 %tobool59.not140, label %do_aq.thread.cleanup_crit_edge, label %do.body

do_aq.thread.cleanup_crit_edge:                   ; preds = %do_aq.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %do_aq.thread
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_dis_lan_txq.__UNIQUE_ID_ddebug721, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_dis_lan_txq, %if.then67)) #12
          to label %cleanup [label %if.then67], !srcloc !428

if.then67:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr69 = getelementptr i8, ptr %hw, i32 -2960
  %25 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr69, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %conv70 = zext i16 %vmvf_num to i32
  %sq_last_status = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 8
  %27 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sq_last_status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_dis_lan_txq.__UNIQUE_ID_ddebug721, ptr noundef %dev, ptr noundef nonnull @.str.157, i32 noundef %conv70, i32 noundef %28) #12
  br label %cleanup

do.body72:                                        ; preds = %do_aq
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_aq_dis_lan_txq.__UNIQUE_ID_ddebug722, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_aq_dis_lan_txq, %if.then84)) #12
          to label %cleanup [label %if.then84], !srcloc !428

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr87 = getelementptr i8, ptr %hw, i32 -2960
  %29 = ptrtoint ptr %add.ptr87 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr87, align 8
  %dev89 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %q_id = getelementptr inbounds %struct.ice_aqc_dis_txq_item, ptr %qg_list, i32 0, i32 3
  %31 = ptrtoint ptr %q_id to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %q_id, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %conv91 = zext i16 %33 to i32
  %sq_last_status93 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 8
  %34 = ptrtoint ptr %sq_last_status93 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sq_last_status93, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_aq_dis_lan_txq.__UNIQUE_ID_ddebug722, ptr noundef %dev89, ptr noundef nonnull @.str.158, i32 noundef %conv91, i32 noundef %35) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %do.body72, %if.then67, %do.body, %do_aq.thread.cleanup_crit_edge, %do_aq.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ %call58139, %if.then67 ], [ %call58, %if.then84 ], [ 0, %do_aq.cleanup_crit_edge ], [ 0, %do_aq.thread.cleanup_crit_edge ], [ %call58139, %do.body ], [ %call58, %do.body72 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_sched_find_node_by_teid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_free_sched_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_cfg_vsi_lan(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc_bitmap, ptr nocapture noundef readonly %max_lanqs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ice_cfg_vsi_qs(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc_bitmap, ptr noundef %max_lanqs, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_cfg_vsi_qs(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc_bitmap, ptr nocapture noundef readonly %maxqs, i8 noundef zeroext %owner) unnamed_addr #1 align 64 {
entry:
  %bitmap.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %port_state = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 5
  %0 = ptrtoint ptr %port_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hw = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %3, i16 noundef zeroext %vsi_handle) #12
  br i1 %call, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #12
  %conv11 = zext i8 %tc_bitmap to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3
  %indvars.iv = phi i32 [ 0, %if.end3 ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %4 = trunc i32 %indvars.iv to i8
  %call7 = tail call ptr @ice_sched_get_tc_node(ptr noundef nonnull %pi, i8 noundef zeroext %4) #12
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %arrayidx = getelementptr i16, ptr %maxqs, i32 %indvars.iv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap.addr.i)
  %7 = ptrtoint ptr %bitmap.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv11, ptr %bitmap.addr.i, align 4
  %bitmap.addr.i.0.bitmap.addr.i.0.bitmap.addr.0..i = load volatile i32, ptr %bitmap.addr.i, align 4
  %8 = shl nuw nsw i32 1, %indvars.iv
  %9 = and i32 %bitmap.addr.i.0.bitmap.addr.i.0.bitmap.addr.0..i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i = icmp ne i32 %9, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap.addr.i)
  %call13 = tail call i32 @ice_sched_cfg_vsi(ptr noundef nonnull %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %4, i16 noundef zeroext %6, i8 noundef zeroext %owner, i1 noundef zeroext %tobool.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end10.for.inc_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end10.for.end_crit_edge
  %status.2 = phi i32 [ %call13, %if.end10.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sched_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.2, %for.end ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_cfg_vsi_rdma(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i16 noundef zeroext %tc_bitmap, ptr nocapture noundef readonly %max_rdmaqs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i16 %tc_bitmap to i8
  %call = tail call fastcc i32 @ice_cfg_vsi_qs(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %conv, ptr noundef %max_rdmaqs, i8 noundef zeroext 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_ena_vsi_rdma_qset(ptr noundef %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, ptr nocapture noundef readonly %rdma_qset, i16 noundef zeroext %num_qsets, ptr nocapture noundef writeonly %qset_teid) local_unnamed_addr #1 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  %node = alloca %struct.ice_aqc_txsched_elem_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %node) #12
  %0 = call ptr @memset(ptr %node, i32 0, i32 24)
  %tobool.not = icmp eq ptr %pi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %port_state = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 5
  %1 = ptrtoint ptr %port_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp.not = icmp eq i8 %2, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hw2 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw2, align 4
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %4, i16 noundef zeroext %vsi_handle) #12
  br i1 %call, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv5 = zext i16 %num_qsets to i32
  %5 = mul nuw nsw i32 %conv5, 24
  %spec.select.i149 = add nuw nsw i32 %5, 8
  %conv7 = trunc i32 %spec.select.i149 to i16
  %conv8 = and i32 %spec.select.i149, 65528
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv8, i32 noundef 3520) #15
  %tobool10.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not, label %if.end4.cleanup_crit_edge, label %if.end12

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #12
  %call13 = tail call ptr @ice_sched_get_free_qparent(ptr noundef nonnull %pi, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %tc, i8 noundef zeroext 2) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.rdma_error_exit_crit_edge, label %if.end16

if.end12.rdma_error_exit_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %rdma_error_exit

if.end16:                                         ; preds = %if.end12
  %node_teid = getelementptr inbounds %struct.ice_sched_node, ptr %call13, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %node_teid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node_teid, align 4
  %8 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call9.i.i, align 128
  %9 = load i32, ptr %node_teid, align 4
  %10 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %node, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %num_qsets)
  %num_qsets20 = getelementptr inbounds %struct.ice_aqc_add_rdma_qset_data, ptr %call9.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %num_qsets20 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %num_qsets20, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %num_qsets)
  %cmp23150.not = icmp eq i16 %num_qsets, 0
  br i1 %cmp23150.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end16.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %rdma_qset, i32 %indvars.iv
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %arrayidx26 = getelementptr %struct.ice_aqc_add_rdma_qset_data, ptr %call9.i.i, i32 0, i32 3, i32 %indvars.iv
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %arrayidx26, align 8
  %valid_sections = getelementptr %struct.ice_aqc_add_rdma_qset_data, ptr %call9.i.i, i32 0, i32 3, i32 %indvars.iv, i32 3, i32 1
  %17 = ptrtoint ptr %valid_sections to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 7, ptr %valid_sections, align 1
  %generic = getelementptr %struct.ice_aqc_add_rdma_qset_data, ptr %call9.i.i, i32 0, i32 3, i32 %indvars.iv, i32 3, i32 2
  %18 = ptrtoint ptr %generic to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %generic, align 2
  %cir_bw = getelementptr %struct.ice_aqc_add_rdma_qset_data, ptr %call9.i.i, i32 0, i32 3, i32 %indvars.iv, i32 3, i32 4
  %19 = ptrtoint ptr %cir_bw to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %cir_bw, align 4
  %bw_alloc = getelementptr %struct.ice_aqc_add_rdma_qset_data, ptr %call9.i.i, i32 0, i32 3, i32 %indvars.iv, i32 3, i32 4, i32 1
  %20 = ptrtoint ptr %bw_alloc to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1024, ptr %bw_alloc, align 2
  %eir_bw = getelementptr %struct.ice_aqc_add_rdma_qset_data, ptr %call9.i.i, i32 0, i32 3, i32 %indvars.iv, i32 3, i32 5
  %21 = ptrtoint ptr %eir_bw to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %eir_bw, align 8
  %bw_alloc54 = getelementptr %struct.ice_aqc_add_rdma_qset_data, ptr %call9.i.i, i32 0, i32 3, i32 %indvars.iv, i32 3, i32 5, i32 1
  %22 = ptrtoint ptr %bw_alloc54 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1024, ptr %bw_alloc54, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end16.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #12
  %23 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 3123) #12
  %24 = ptrtoint ptr %num_qsets20 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_qsets20, align 4
  %26 = call i16 @llvm.bswap.i16(i16 %25) #12
  %conv7.i = zext i16 %26 to i32
  %27 = mul nuw nsw i32 %conv7.i, 24
  %add.i = add nuw nsw i32 %27, 8
  %28 = xor i32 %add.i, %spec.select.i149
  %29 = and i32 %28, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp13.not.i = icmp eq i32 %29, 0
  br i1 %cmp13.not.i, label %ice_aq_add_rdma_qsets.exit, label %ice_aq_add_rdma_qsets.exit.thread

ice_aq_add_rdma_qsets.exit.thread:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  br label %do.body

ice_aq_add_rdma_qsets.exit:                       ; preds = %for.end
  %30 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %31 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %desc.i, align 4
  %33 = or i16 %32, 4
  store i16 %33, ptr %desc.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %30, align 4
  %call20.i = call i32 @ice_aq_send_cmd(ptr noundef %4, ptr noundef nonnull %desc.i, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv7, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool56.not = icmp eq i32 %call20.i, 0
  br i1 %tobool56.not, label %if.end65, label %ice_aq_add_rdma_qsets.exit.do.body_crit_edge

ice_aq_add_rdma_qsets.exit.do.body_crit_edge:     ; preds = %ice_aq_add_rdma_qsets.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %ice_aq_add_rdma_qsets.exit.do.body_crit_edge, %ice_aq_add_rdma_qsets.exit.thread
  %retval.0.i140147 = phi i32 [ -22, %ice_aq_add_rdma_qsets.exit.thread ], [ %call20.i, %ice_aq_add_rdma_qsets.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ena_vsi_rdma_qset.__UNIQUE_ID_ddebug728, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ena_vsi_rdma_qset, %if.then62)) #12
          to label %rdma_error_exit [label %if.then62], !srcloc !428

if.then62:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %4, i32 -2960
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ena_vsi_rdma_qset.__UNIQUE_ID_ddebug728, ptr noundef %dev, ptr noundef nonnull @.str.72) #12
  br label %rdma_error_exit

if.end65:                                         ; preds = %ice_aq_add_rdma_qsets.exit
  %data = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, ptr %node, i32 0, i32 2
  %37 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 5, ptr %data, align 4
  br i1 %cmp23150.not, label %if.end65.rdma_error_exit_crit_edge, label %for.body71.lr.ph

if.end65.rdma_error_exit_crit_edge:               ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %rdma_error_exit

for.body71.lr.ph:                                 ; preds = %if.end65
  %node_teid76 = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, ptr %node, i32 0, i32 1
  %num_tx_sched_layers = getelementptr inbounds %struct.ice_hw, ptr %4, i32 0, i32 15
  br label %for.body71

for.body71:                                       ; preds = %if.end82.for.body71_crit_edge, %for.body71.lr.ph
  %indvars.iv156 = phi i32 [ 0, %for.body71.lr.ph ], [ %indvars.iv.next157, %if.end82.for.body71_crit_edge ]
  %qset_teid75 = getelementptr %struct.ice_aqc_add_rdma_qset_data, ptr %call9.i.i, i32 0, i32 3, i32 %indvars.iv156, i32 2
  %38 = ptrtoint ptr %qset_teid75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qset_teid75, align 4
  %40 = ptrtoint ptr %node_teid76 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %node_teid76, align 4
  %41 = ptrtoint ptr %num_tx_sched_layers to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_tx_sched_layers, align 2
  %sub = add i8 %42, -1
  %call79 = call i32 @ice_sched_add_node(ptr noundef nonnull %pi, i8 noundef zeroext %sub, ptr noundef nonnull %node) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %for.body71.rdma_error_exit_crit_edge

for.body71.rdma_error_exit_crit_edge:             ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  br label %rdma_error_exit

if.end82:                                         ; preds = %for.body71
  %43 = ptrtoint ptr %node_teid76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %node_teid76, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %arrayidx85 = getelementptr i32, ptr %qset_teid, i32 %indvars.iv156
  %46 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx85, align 4
  %indvars.iv.next157 = add nuw nsw i32 %indvars.iv156, 1
  %exitcond159.not = icmp eq i32 %indvars.iv.next157, %conv5
  br i1 %exitcond159.not, label %if.end82.rdma_error_exit_crit_edge, label %if.end82.for.body71_crit_edge

if.end82.for.body71_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body71

if.end82.rdma_error_exit_crit_edge:               ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %rdma_error_exit

rdma_error_exit:                                  ; preds = %if.end82.rdma_error_exit_crit_edge, %for.body71.rdma_error_exit_crit_edge, %if.end65.rdma_error_exit_crit_edge, %if.then62, %do.body, %if.end12.rdma_error_exit_crit_edge
  %ret.1 = phi i32 [ %retval.0.i140147, %if.then62 ], [ -22, %if.end12.rdma_error_exit_crit_edge ], [ %retval.0.i140147, %do.body ], [ 0, %if.end65.rdma_error_exit_crit_edge ], [ %call79, %for.body71.rdma_error_exit_crit_edge ], [ 0, %if.end82.rdma_error_exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %sched_lock) #12
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %rdma_error_exit, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %rdma_error_exit ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %node) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_dis_vsi_rdma_qset(ptr noundef %pi, i16 noundef zeroext %count, ptr nocapture noundef readonly %qset_teid, ptr nocapture noundef readonly %q_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pi, null
  br i1 %tobool.not, label %entry.cleanup27_crit_edge, label %lor.lhs.false

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

lor.lhs.false:                                    ; preds = %entry
  %port_state = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 5
  %0 = ptrtoint ptr %port_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %kzalloc.exit, label %lor.lhs.false.cleanup27_crit_edge

lor.lhs.false.cleanup27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

kzalloc.exit:                                     ; preds = %lor.lhs.false
  %hw2 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 8) #17
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %kzalloc.exit.cleanup27_crit_edge, label %if.end8

kzalloc.exit.cleanup27_crit_edge:                 ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.end8:                                          ; preds = %kzalloc.exit
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #12
  %conv9 = zext i16 %count to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count)
  %cmp1055.not = icmp eq i16 %count, 0
  br i1 %cmp1055.not, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %num_qs = getelementptr inbounds %struct.ice_aqc_dis_txq_item, ptr %call7.i.i, i32 0, i32 1
  %q_id20 = getelementptr inbounds %struct.ice_aqc_dis_txq_item, ptr %call7.i.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pi, align 8
  %arrayidx = getelementptr i32, ptr %qset_teid, i32 %i.056
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %call12 = tail call ptr @ice_sched_find_node_by_teid(ptr noundef %6, i32 noundef %8) #12
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %info = getelementptr inbounds %struct.ice_sched_node, ptr %call12, i32 0, i32 3
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %info, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %call7.i.i, align 8
  %12 = ptrtoint ptr %num_qs to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %num_qs, align 4
  %arrayidx17 = getelementptr i16, ptr %q_id, i32 %i.056
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx17, align 2
  %15 = or i16 %14, -32768
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %17 = ptrtoint ptr %q_id20 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %q_id20, align 2
  %call22 = tail call fastcc i32 @ice_aq_dis_lan_txq(ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 8, i32 noundef 0, i16 noundef zeroext 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ice_free_sched_node(ptr noundef nonnull %pi, ptr noundef nonnull %call12) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, %conv9
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end15.for.end_crit_edge, %if.end8.for.end_crit_edge
  %status.2 = phi i32 [ 0, %if.end8.for.end_crit_edge ], [ %call22, %if.end15.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sched_lock) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup27

cleanup27:                                        ; preds = %for.end, %kzalloc.exit.cleanup27_crit_edge, %lor.lhs.false.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.0 = phi i32 [ %status.2, %for.end ], [ -5, %lor.lhs.false.cleanup27_crit_edge ], [ -5, %entry.cleanup27_crit_edge ], [ -12, %kzalloc.exit.cleanup27_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_replay_vsi(ptr noundef %hw, i16 noundef zeroext %vsi_handle) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #12
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vsi_handle)
  %cmp = icmp eq i16 %vsi_handle, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %switch_info.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 29
  %0 = ptrtoint ptr %switch_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch_info.i, align 8
  tail call void @ice_rm_all_sw_replay_rule_info(ptr noundef %hw) #12
  %recp_list.i = getelementptr inbounds %struct.ice_switch_info, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then2
  %indvars.iv.i = phi i32 [ 0, %if.then2 ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %recp_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recp_list.i, align 4
  %filt_rules.i = getelementptr %struct.ice_sw_recipe, ptr %3, i32 %indvars.iv.i, i32 12
  %filt_replay_rules.i = getelementptr %struct.ice_sw_recipe, ptr %3, i32 %indvars.iv.i, i32 13
  %4 = ptrtoint ptr %filt_rules.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %filt_rules.i, align 4
  %6 = ptrtoint ptr %filt_replay_rules.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %filt_replay_rules.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %filt_replay_rules.i, ptr %prev.i.i.i, align 4
  %prev3.i.i.i = getelementptr %struct.ice_sw_recipe, ptr %3, i32 %indvars.iv.i, i32 12, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev3.i.i.i, align 4
  %prev4.i.i.i = getelementptr %struct.ice_sw_recipe, ptr %3, i32 %indvars.iv.i, i32 13, i32 1
  %10 = ptrtoint ptr %prev4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %prev4.i.i.i, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %filt_replay_rules.i, ptr %9, align 4
  store volatile ptr %filt_rules.i, ptr %filt_rules.i, align 4
  store ptr %filt_rules.i, ptr %prev3.i.i.i, align 4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %ice_replay_pre_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

ice_replay_pre_init.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ice_sched_replay_agg_vsi_preinit(ptr noundef %hw) #12
  br label %if.end6

if.end6:                                          ; preds = %ice_replay_pre_init.exit, %if.end.if.end6_crit_edge
  %call7 = tail call i32 @ice_replay_rss_cfg(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @ice_replay_vsi_all_fltr(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = tail call i32 @ice_replay_vsi_agg(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call14, %if.then13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_replay_rss_cfg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_replay_vsi_all_fltr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_replay_vsi_agg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_replay_post(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ice_rm_all_sw_replay_rule_info(ptr noundef %hw) #12
  tail call void @ice_sched_replay_agg(ptr noundef %hw) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_rm_all_sw_replay_rule_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_sched_replay_agg(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_stat_update40(ptr nocapture noundef readonly %hw, i32 noundef %reg, i1 noundef zeroext %prev_stat_loaded, ptr nocapture noundef %prev_stat, ptr nocapture noundef %cur_stat) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !449
  %add.ptr.i = getelementptr i32, ptr %add.ptr, i32 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !450
  %4 = zext i32 %2 to i64
  %5 = shl nuw i64 %4, 32
  %6 = and i32 %3, -16777216
  %.masked = zext i32 %6 to i64
  %7 = or i64 %5, %.masked
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  br i1 %prev_stat_loaded, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %prev_stat to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %prev_stat, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp.not = icmp ult i64 %8, %10
  %add2 = or i64 %8, 1099511627776
  %add2.sink = select i1 %cmp.not, i64 %add2, i64 %8
  %sub3 = sub i64 %add2.sink, %10
  %11 = ptrtoint ptr %cur_stat to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %cur_stat, align 8
  %add4 = add i64 %sub3, %12
  store i64 %add4, ptr %cur_stat, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %13 = ptrtoint ptr %prev_stat to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %8, ptr %prev_stat, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_stat_update32(ptr nocapture noundef readonly %hw, i32 noundef %reg, i1 noundef zeroext %prev_stat_loaded, ptr nocapture noundef %prev_stat, ptr nocapture noundef %cur_stat) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !429
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  %conv2 = zext i32 %3 to i64
  br i1 %prev_stat_loaded, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %prev_stat to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %prev_stat, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv2)
  %cmp.not = icmp ugt i64 %5, %conv2
  %add7 = or i64 %conv2, 4294967296
  %add7.sink = select i1 %cmp.not, i64 %add7, i64 %conv2
  %sub8 = sub i64 %add7.sink, %5
  %6 = ptrtoint ptr %cur_stat to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cur_stat, align 8
  %add9 = add i64 %sub8, %7
  store i64 %add9, ptr %cur_stat, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %8 = ptrtoint ptr %prev_stat to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv2, ptr %prev_stat, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_sched_query_elem(ptr noundef %hw, i32 noundef %node_teid, ptr noundef %buf) local_unnamed_addr #1 align 64 {
entry:
  %num_elem_ret = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num_elem_ret) #12
  %0 = ptrtoint ptr %num_elem_ret to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %num_elem_ret, align 2
  %1 = call ptr @memset(ptr %buf, i32 0, i32 24)
  %2 = tail call i32 @llvm.bswap.i32(i32 %node_teid)
  %node_teid1 = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %node_teid1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %node_teid1, align 4
  %call = call i32 @ice_aq_query_sched_elems(ptr noundef %hw, i16 noundef zeroext 1, ptr noundef %buf, i16 noundef zeroext 24, ptr noundef nonnull %num_elem_ret, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %num_elem_ret to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_elem_ret, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp.not = icmp eq i16 %5, 1
  br i1 %cmp.not, label %lor.lhs.false.if.end10_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sched_query_elem.__UNIQUE_ID_ddebug729, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sched_query_elem, %if.then8)) #12
          to label %if.end10 [label %if.then8], !srcloc !428

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sched_query_elem.__UNIQUE_ID_ddebug729, ptr noundef %dev, ptr noundef nonnull @.str.74) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body, %lor.lhs.false.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num_elem_ret) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_query_sched_elems(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_set_driver_param(ptr noundef %hw, i32 noundef %idx, i32 noundef %value, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %idx)
  %cmp = icmp ugt i32 %idx, 15
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 3216) #12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %2, align 4
  %conv = trunc i32 %idx to i8
  %param_indx = getelementptr inbounds %struct.ice_aqc_driver_shared_params, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %param_indx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %param_indx, align 1
  %5 = call i32 @llvm.bswap.i32(i32 %value)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %1, align 4
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_get_driver_param(ptr noundef %hw, i32 noundef %idx, ptr nocapture noundef writeonly %value, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %idx)
  %cmp = icmp ugt i32 %idx, 15
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 3216) #12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %2, align 4
  %conv = trunc i32 %idx to i8
  %param_indx = getelementptr inbounds %struct.ice_aqc_driver_shared_params, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %param_indx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %param_indx, align 1
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %0, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -5, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_set_gpio(ptr noundef %hw, i16 noundef zeroext %gpio_ctrl_handle, i8 noundef zeroext %pin_idx, i1 noundef zeroext %value, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1772) #12
  %2 = call i16 @llvm.bswap.i16(i16 %gpio_ctrl_handle)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 4
  %gpio_num = getelementptr inbounds %struct.ice_aqc_gpio, ptr %0, i32 0, i32 1
  %4 = ptrtoint ptr %gpio_num to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %pin_idx, ptr %gpio_num, align 2
  %conv = zext i1 %value to i8
  %gpio_val = getelementptr inbounds %struct.ice_aqc_gpio, ptr %0, i32 0, i32 2
  %5 = ptrtoint ptr %gpio_val to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %gpio_val, align 1
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_get_gpio(ptr noundef %hw, i16 noundef zeroext %gpio_ctrl_handle, i8 noundef zeroext %pin_idx, ptr nocapture noundef writeonly %value, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1773) #12
  %2 = call i16 @llvm.bswap.i16(i16 %gpio_ctrl_handle)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 4
  %gpio_num = getelementptr inbounds %struct.ice_aqc_gpio, ptr %0, i32 0, i32 1
  %4 = ptrtoint ptr %gpio_num to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %pin_idx, ptr %gpio_num, align 2
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %gpio_val = getelementptr inbounds %struct.ice_aqc_gpio, ptr %0, i32 0, i32 2
  %5 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %gpio_val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2 = icmp ne i8 %6, 0
  %frombool = zext i1 %tobool2 to i8
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %value, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_get_pfa_module_tlv(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_read_sr_word(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ice_is_phy_caps_an_enabled(ptr nocapture noundef readonly %caps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %caps1 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %caps, i32 0, i32 2
  %0 = ptrtoint ptr %caps1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %caps1, align 8
  %2 = and i8 %1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %low_power_ctrl_an = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, ptr %caps, i32 0, i32 3
  %3 = ptrtoint ptr %low_power_ctrl_an to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %low_power_ctrl_an, align 1
  %5 = and i8 %4, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp ne i8 %5, 0
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ %tobool4.not, %lor.lhs.false ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_set_lldp_mib(ptr noundef %hw, i8 noundef zeroext %mib_type, ptr noundef %buf, i16 noundef zeroext %buf_size, ptr noundef %cd) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %buf_size)
  %cmp = icmp eq i16 %buf_size, 0
  %tobool.not = icmp eq ptr %buf, null
  %or.cond = or i1 %tobool.not, %cmp
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %2 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 2
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2568) #12
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %desc, align 4
  %5 = or i16 %4, 4
  store i16 %5, ptr %desc, align 4
  %6 = call i16 @llvm.bswap.i16(i16 %buf_size)
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %2, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %mib_type, ptr %1, align 4
  %length = getelementptr inbounds %struct.ice_aqc_lldp_set_local_mib, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %6, ptr %length, align 2
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef nonnull %buf, i16 noundef zeroext %buf_size, ptr noundef %cd)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ice_fw_supports_lldp_fltr_ctrl(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_type = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %api_maj_ver = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 34
  %2 = ptrtoint ptr %api_maj_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %api_maj_ver, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.180)
  switch i8 %3, label %if.end.return_crit_edge [
    i8 1, label %if.then3
    i8 0, label %if.end.if.end24_crit_edge
  ]

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then3:                                         ; preds = %if.end
  %api_min_ver = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 35
  %5 = ptrtoint ptr %api_min_ver to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %api_min_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %6)
  %cmp5 = icmp ugt i8 %6, 7
  br i1 %cmp5, label %if.then3.return_crit_edge, label %if.end8

if.then3.return_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %6)
  %cmp11 = icmp eq i8 %6, 7
  br i1 %cmp11, label %land.lhs.true, label %if.end8.if.end24_crit_edge

if.end8.if.end24_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end8
  %api_patch = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 36
  %7 = ptrtoint ptr %api_patch to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %api_patch, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp14.not = icmp eq i8 %8, 0
  br i1 %cmp14.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end8.if.end24_crit_edge, %if.end.if.end24_crit_edge
  br label %return

return:                                           ; preds = %if.end24, %land.lhs.true.return_crit_edge, %if.then3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end24 ], [ false, %entry.return_crit_edge ], [ true, %if.then3.return_crit_edge ], [ true, %land.lhs.true.return_crit_edge ], [ true, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_lldp_fltr_add_remove(ptr noundef %hw, i16 noundef zeroext %vsi_num, i1 noundef zeroext %add) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #12
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2570) #12
  %not.add = xor i1 %add, true
  %. = zext i1 %not.add to i8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %., ptr %0, align 4
  %3 = call i16 @llvm.bswap.i16(i16 %vsi_num)
  %vsi_num2 = getelementptr inbounds %struct.ice_aqc_lldp_filter_ctrl, ptr %0, i32 0, i32 2
  %4 = ptrtoint ptr %vsi_num2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %vsi_num2, align 2
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_init_def_sw_recp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_sq_send_cmd(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_get_sbq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ice_parse_common_caps(ptr noundef readonly %hw, ptr noundef %caps, ptr nocapture noundef readonly %elem, ptr noundef %prefix) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %logical_id1 = getelementptr inbounds %struct.ice_aqc_list_caps_elem, ptr %elem, i32 0, i32 4
  %0 = ptrtoint ptr %logical_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %logical_id1, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %phys_id2 = getelementptr inbounds %struct.ice_aqc_list_caps_elem, ptr %elem, i32 0, i32 5
  %3 = ptrtoint ptr %phys_id2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phys_id2, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %number3 = getelementptr inbounds %struct.ice_aqc_list_caps_elem, ptr %elem, i32 0, i32 3
  %6 = ptrtoint ptr %number3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number3, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %elem to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %elem, align 8
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.181)
  switch i16 %11, label %entry.sw.epilog_crit_edge [
    i16 5, label %sw.bb
    i16 18, label %sw.bb9
    i16 24, label %sw.bb35
    i16 64, label %sw.bb106
    i16 65, label %sw.bb155
    i16 66, label %sw.bb204
    i16 67, label %sw.bb253
    i16 73, label %sw.bb302
    i16 75, label %sw.bb324
    i16 77, label %sw.bb346
    i16 128, label %sw.bb368
    i16 81, label %sw.bb396
    i16 71, label %sw.bb423
    i16 118, label %sw.bb448
    i16 119, label %sw.bb476
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %caps, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug659, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then)) #12
          to label %sw.epilog [label %if.then], !srcloc !428

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %16 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %caps, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug659, ptr noundef %dev, ptr noundef nonnull @.str.91, ptr noundef %prefix, i32 noundef %17) #12
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %7)
  %cmp = icmp eq i32 %7, 16777216
  %conv11 = zext i1 %cmp to i8
  %sr_iov_1_1 = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 10
  %18 = ptrtoint ptr %sr_iov_1_1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv11, ptr %sr_iov_1_1, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug660, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then24)) #12
          to label %sw.epilog [label %if.then24], !srcloc !428

if.then24:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr27 = getelementptr i8, ptr %hw, i32 -2960
  %19 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr27, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %sr_iov_1_1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sr_iov_1_1, align 2
  %conv31 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug660, ptr noundef %dev29, ptr noundef nonnull @.str.92, ptr noundef %prefix, i32 noundef %conv31) #12
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %7)
  %cmp36 = icmp eq i32 %7, 16777216
  %conv38 = zext i1 %cmp36 to i8
  %dcb = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 13
  %23 = ptrtoint ptr %dcb to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv38, ptr %dcb, align 1
  %active_tc_bitmap = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 1
  %24 = ptrtoint ptr %active_tc_bitmap to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %2, ptr %active_tc_bitmap, align 4
  %maxtc = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 2
  %25 = ptrtoint ptr %maxtc to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %5, ptr %maxtc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug661, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then51)) #12
          to label %do.body62 [label %if.then51], !srcloc !428

if.then51:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr54 = getelementptr i8, ptr %hw, i32 -2960
  %26 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr54, align 8
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %dcb to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dcb, align 1
  %conv58 = zext i8 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug661, ptr noundef %dev56, ptr noundef nonnull @.str.93, ptr noundef %prefix, i32 noundef %conv58) #12
  br label %do.body62

do.body62:                                        ; preds = %if.then51, %sw.bb35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug662, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then74)) #12
          to label %do.body84 [label %if.then74], !srcloc !428

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr77 = getelementptr i8, ptr %hw, i32 -2960
  %30 = ptrtoint ptr %add.ptr77 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr77, align 8
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %active_tc_bitmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %active_tc_bitmap, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug662, ptr noundef %dev79, ptr noundef nonnull @.str.94, ptr noundef %prefix, i32 noundef %33) #12
  br label %do.body84

do.body84:                                        ; preds = %if.then74, %do.body62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug663, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then96)) #12
          to label %sw.epilog [label %if.then96], !srcloc !428

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr99 = getelementptr i8, ptr %hw, i32 -2960
  %34 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr99, align 8
  %dev101 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %36 = ptrtoint ptr %maxtc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %maxtc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug663, ptr noundef %dev101, ptr noundef nonnull @.str.95, ptr noundef %prefix, i32 noundef %37) #12
  br label %sw.epilog

sw.bb106:                                         ; preds = %entry
  %conv107 = trunc i32 %8 to i16
  %rss_table_size = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 11
  %38 = ptrtoint ptr %rss_table_size to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv107, ptr %rss_table_size, align 4
  %conv108 = trunc i32 %2 to i8
  %rss_table_entry_width = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 12
  %39 = ptrtoint ptr %rss_table_entry_width to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv108, ptr %rss_table_entry_width, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug664, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then121)) #12
          to label %do.body132 [label %if.then121], !srcloc !428

if.then121:                                       ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr124 = getelementptr i8, ptr %hw, i32 -2960
  %40 = ptrtoint ptr %add.ptr124 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr124, align 8
  %dev126 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %42 = ptrtoint ptr %rss_table_size to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rss_table_size, align 4
  %conv128 = zext i16 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug664, ptr noundef %dev126, ptr noundef nonnull @.str.96, ptr noundef %prefix, i32 noundef %conv128) #12
  br label %do.body132

do.body132:                                       ; preds = %if.then121, %sw.bb106
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug665, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then144)) #12
          to label %sw.epilog [label %if.then144], !srcloc !428

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr147 = getelementptr i8, ptr %hw, i32 -2960
  %44 = ptrtoint ptr %add.ptr147 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr147, align 8
  %dev149 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %46 = ptrtoint ptr %rss_table_entry_width to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %rss_table_entry_width, align 2
  %conv151 = zext i8 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug665, ptr noundef %dev149, ptr noundef nonnull @.str.97, ptr noundef %prefix, i32 noundef %conv151) #12
  br label %sw.epilog

sw.bb155:                                         ; preds = %entry
  %conv156 = trunc i32 %8 to i16
  %num_rxq = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 3
  %48 = ptrtoint ptr %num_rxq to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv156, ptr %num_rxq, align 4
  %conv157 = trunc i32 %5 to i16
  %rxq_first_id = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 4
  %49 = ptrtoint ptr %rxq_first_id to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv157, ptr %rxq_first_id, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug666, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then170)) #12
          to label %do.body181 [label %if.then170], !srcloc !428

if.then170:                                       ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr173 = getelementptr i8, ptr %hw, i32 -2960
  %50 = ptrtoint ptr %add.ptr173 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr173, align 8
  %dev175 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %52 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %num_rxq, align 4
  %conv177 = zext i16 %53 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug666, ptr noundef %dev175, ptr noundef nonnull @.str.98, ptr noundef %prefix, i32 noundef %conv177) #12
  br label %do.body181

do.body181:                                       ; preds = %if.then170, %sw.bb155
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug667, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then193)) #12
          to label %sw.epilog [label %if.then193], !srcloc !428

if.then193:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr196 = getelementptr i8, ptr %hw, i32 -2960
  %54 = ptrtoint ptr %add.ptr196 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr196, align 8
  %dev198 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %56 = ptrtoint ptr %rxq_first_id to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %rxq_first_id, align 2
  %conv200 = zext i16 %57 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug667, ptr noundef %dev198, ptr noundef nonnull @.str.99, ptr noundef %prefix, i32 noundef %conv200) #12
  br label %sw.epilog

sw.bb204:                                         ; preds = %entry
  %conv205 = trunc i32 %8 to i16
  %num_txq = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 5
  %58 = ptrtoint ptr %num_txq to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv205, ptr %num_txq, align 4
  %conv206 = trunc i32 %5 to i16
  %txq_first_id = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 6
  %59 = ptrtoint ptr %txq_first_id to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv206, ptr %txq_first_id, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug668, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then219)) #12
          to label %do.body230 [label %if.then219], !srcloc !428

if.then219:                                       ; preds = %sw.bb204
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr222 = getelementptr i8, ptr %hw, i32 -2960
  %60 = ptrtoint ptr %add.ptr222 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr222, align 8
  %dev224 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %62 = ptrtoint ptr %num_txq to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %num_txq, align 4
  %conv226 = zext i16 %63 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug668, ptr noundef %dev224, ptr noundef nonnull @.str.100, ptr noundef %prefix, i32 noundef %conv226) #12
  br label %do.body230

do.body230:                                       ; preds = %if.then219, %sw.bb204
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug669, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then242)) #12
          to label %sw.epilog [label %if.then242], !srcloc !428

if.then242:                                       ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr245 = getelementptr i8, ptr %hw, i32 -2960
  %64 = ptrtoint ptr %add.ptr245 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr245, align 8
  %dev247 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %66 = ptrtoint ptr %txq_first_id to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %txq_first_id, align 2
  %conv249 = zext i16 %67 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug669, ptr noundef %dev247, ptr noundef nonnull @.str.101, ptr noundef %prefix, i32 noundef %conv249) #12
  br label %sw.epilog

sw.bb253:                                         ; preds = %entry
  %conv254 = trunc i32 %8 to i16
  %num_msix_vectors = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 7
  %68 = ptrtoint ptr %num_msix_vectors to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv254, ptr %num_msix_vectors, align 4
  %conv255 = trunc i32 %5 to i16
  %msix_vector_first_id = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 8
  %69 = ptrtoint ptr %msix_vector_first_id to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv255, ptr %msix_vector_first_id, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug670, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then268)) #12
          to label %do.body279 [label %if.then268], !srcloc !428

if.then268:                                       ; preds = %sw.bb253
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr271 = getelementptr i8, ptr %hw, i32 -2960
  %70 = ptrtoint ptr %add.ptr271 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr271, align 8
  %dev273 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %72 = ptrtoint ptr %num_msix_vectors to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %num_msix_vectors, align 4
  %conv275 = zext i16 %73 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug670, ptr noundef %dev273, ptr noundef nonnull @.str.102, ptr noundef %prefix, i32 noundef %conv275) #12
  br label %do.body279

do.body279:                                       ; preds = %if.then268, %sw.bb253
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug671, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then291)) #12
          to label %sw.epilog [label %if.then291], !srcloc !428

if.then291:                                       ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr294 = getelementptr i8, ptr %hw, i32 -2960
  %74 = ptrtoint ptr %add.ptr294 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr294, align 8
  %dev296 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %76 = ptrtoint ptr %msix_vector_first_id to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %msix_vector_first_id, align 2
  %conv298 = zext i16 %77 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug671, ptr noundef %dev296, ptr noundef nonnull @.str.103, ptr noundef %prefix, i32 noundef %conv298) #12
  br label %sw.epilog

sw.bb302:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nvm_update_pending_nvm = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 16
  %78 = ptrtoint ptr %nvm_update_pending_nvm to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %nvm_update_pending_nvm, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug672, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then315)) #12
          to label %sw.epilog [label %if.then315], !srcloc !428

if.then315:                                       ; preds = %sw.bb302
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr318 = getelementptr i8, ptr %hw, i32 -2960
  %79 = ptrtoint ptr %add.ptr318 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr318, align 8
  %dev320 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug672, ptr noundef %dev320, ptr noundef nonnull @.str.104, ptr noundef %prefix) #12
  br label %sw.epilog

sw.bb324:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nvm_update_pending_orom = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 17
  %81 = ptrtoint ptr %nvm_update_pending_orom to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %nvm_update_pending_orom, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug673, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then337)) #12
          to label %sw.epilog [label %if.then337], !srcloc !428

if.then337:                                       ; preds = %sw.bb324
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr340 = getelementptr i8, ptr %hw, i32 -2960
  %82 = ptrtoint ptr %add.ptr340 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr340, align 8
  %dev342 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug673, ptr noundef %dev342, ptr noundef nonnull @.str.105, ptr noundef %prefix) #12
  br label %sw.epilog

sw.bb346:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nvm_update_pending_netlist = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 18
  %84 = ptrtoint ptr %nvm_update_pending_netlist to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %nvm_update_pending_netlist, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug674, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then359)) #12
          to label %sw.epilog [label %if.then359], !srcloc !428

if.then359:                                       ; preds = %sw.bb346
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr362 = getelementptr i8, ptr %hw, i32 -2960
  %85 = ptrtoint ptr %add.ptr362 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %add.ptr362, align 8
  %dev364 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug674, ptr noundef %dev364, ptr noundef nonnull @.str.106, ptr noundef %prefix) #12
  br label %sw.epilog

sw.bb368:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nvm_unified_update = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 19
  %87 = trunc i32 %8 to i8
  %88 = lshr i8 %87, 3
  %89 = and i8 %88, 1
  %90 = ptrtoint ptr %nvm_unified_update to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %nvm_unified_update, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug675, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then384)) #12
          to label %sw.epilog [label %if.then384], !srcloc !428

if.then384:                                       ; preds = %sw.bb368
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr387 = getelementptr i8, ptr %hw, i32 -2960
  %91 = ptrtoint ptr %add.ptr387 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr387, align 8
  %dev389 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  %93 = ptrtoint ptr %nvm_unified_update to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %nvm_unified_update, align 1, !range !452
  %95 = zext i8 %94 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug675, ptr noundef %dev389, ptr noundef nonnull @.str.107, ptr noundef %prefix, i32 noundef %95) #12
  br label %sw.epilog

sw.bb396:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %7)
  %cmp397 = icmp eq i32 %7, 16777216
  %conv399 = zext i1 %cmp397 to i8
  %rdma = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 15
  %96 = ptrtoint ptr %rdma to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv399, ptr %rdma, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug676, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then412)) #12
          to label %sw.epilog [label %if.then412], !srcloc !428

if.then412:                                       ; preds = %sw.bb396
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr415 = getelementptr i8, ptr %hw, i32 -2960
  %97 = ptrtoint ptr %add.ptr415 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr415, align 8
  %dev417 = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  %99 = ptrtoint ptr %rdma to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %rdma, align 1
  %conv419 = zext i8 %100 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug676, ptr noundef %dev417, ptr noundef nonnull @.str.108, ptr noundef %prefix, i32 noundef %conv419) #12
  br label %sw.epilog

sw.bb423:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv424 = trunc i32 %8 to i16
  %max_mtu = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 9
  %101 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv424, ptr %max_mtu, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then437)) #12
          to label %sw.epilog [label %if.then437], !srcloc !428

if.then437:                                       ; preds = %sw.bb423
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr440 = getelementptr i8, ptr %hw, i32 -2960
  %102 = ptrtoint ptr %add.ptr440 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr440, align 8
  %dev442 = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  %104 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %max_mtu, align 4
  %conv444 = zext i16 %105 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug677, ptr noundef %dev442, ptr noundef nonnull @.str.109, ptr noundef %prefix, i32 noundef %conv444) #12
  br label %sw.epilog

sw.bb448:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp449 = icmp ne i32 %7, 0
  %pcie_reset_avoidance = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 20
  %frombool451 = zext i1 %cmp449 to i8
  %106 = ptrtoint ptr %pcie_reset_avoidance to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %frombool451, ptr %pcie_reset_avoidance, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then464)) #12
          to label %sw.epilog [label %if.then464], !srcloc !428

if.then464:                                       ; preds = %sw.bb448
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr467 = getelementptr i8, ptr %hw, i32 -2960
  %107 = ptrtoint ptr %add.ptr467 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr467, align 8
  %dev469 = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  %109 = ptrtoint ptr %pcie_reset_avoidance to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %pcie_reset_avoidance, align 2, !range !452
  %111 = zext i8 %110 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug678, ptr noundef %dev469, ptr noundef nonnull @.str.110, ptr noundef %prefix, i32 noundef %111) #12
  br label %sw.epilog

sw.bb476:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %7)
  %cmp477 = icmp eq i32 %7, 16777216
  %reset_restrict_support = getelementptr inbounds %struct.ice_hw_common_caps, ptr %caps, i32 0, i32 21
  %frombool479 = zext i1 %cmp477 to i8
  %112 = ptrtoint ptr %reset_restrict_support to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %frombool479, ptr %reset_restrict_support, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug679, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_common_caps, %if.then492)) #12
          to label %sw.epilog [label %if.then492], !srcloc !428

if.then492:                                       ; preds = %sw.bb476
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr495 = getelementptr i8, ptr %hw, i32 -2960
  %113 = ptrtoint ptr %add.ptr495 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr495, align 8
  %dev497 = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  %115 = ptrtoint ptr %reset_restrict_support to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %reset_restrict_support, align 1, !range !452
  %117 = zext i8 %116 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_common_caps.__UNIQUE_ID_ddebug679, ptr noundef %dev497, ptr noundef nonnull @.str.111, ptr noundef %prefix, i32 noundef %117) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then492, %sw.bb476, %if.then464, %sw.bb448, %if.then437, %sw.bb423, %if.then412, %sw.bb396, %if.then384, %sw.bb368, %if.then359, %sw.bb346, %if.then337, %sw.bb324, %if.then315, %sw.bb302, %if.then291, %do.body279, %if.then242, %do.body230, %if.then193, %do.body181, %if.then144, %do.body132, %if.then96, %do.body84, %if.then24, %sw.bb9, %if.then, %sw.bb, %entry.sw.epilog_crit_edge
  %found.0.off0 = phi i1 [ true, %if.then492 ], [ true, %if.then464 ], [ true, %if.then437 ], [ true, %if.then412 ], [ true, %if.then384 ], [ true, %if.then359 ], [ true, %if.then337 ], [ true, %if.then315 ], [ true, %if.then291 ], [ true, %if.then242 ], [ true, %if.then193 ], [ true, %if.then144 ], [ true, %if.then96 ], [ true, %if.then24 ], [ true, %if.then ], [ false, %entry.sw.epilog_crit_edge ], [ true, %sw.bb ], [ true, %sw.bb9 ], [ true, %do.body84 ], [ true, %do.body132 ], [ true, %do.body181 ], [ true, %do.body230 ], [ true, %do.body279 ], [ true, %sw.bb302 ], [ true, %sw.bb324 ], [ true, %sw.bb346 ], [ true, %sw.bb368 ], [ true, %sw.bb396 ], [ true, %sw.bb423 ], [ true, %sw.bb448 ], [ true, %sw.bb476 ]
  ret i1 %found.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_parse_1588_dev_caps(ptr nocapture noundef readonly %hw, ptr nocapture noundef %dev_p, ptr nocapture noundef readonly %cap) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ts_dev_info = getelementptr inbounds %struct.ice_hw_dev_caps, ptr %dev_p, i32 0, i32 4
  %logical_id1 = getelementptr inbounds %struct.ice_aqc_list_caps_elem, ptr %cap, i32 0, i32 4
  %0 = ptrtoint ptr %logical_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %logical_id1, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %phys_id2 = getelementptr inbounds %struct.ice_aqc_list_caps_elem, ptr %cap, i32 0, i32 5
  %3 = ptrtoint ptr %phys_id2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phys_id2, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %number3 = getelementptr inbounds %struct.ice_aqc_list_caps_elem, ptr %cap, i32 0, i32 3
  %6 = ptrtoint ptr %number3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number3, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %and = lshr i32 %8, 24
  %9 = trunc i32 %and to i8
  %10 = and i8 %9, 1
  %ena = getelementptr inbounds %struct.ice_hw_dev_caps, ptr %dev_p, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %ena to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %ena, align 2
  %ieee_1588 = getelementptr inbounds %struct.ice_hw_common_caps, ptr %dev_p, i32 0, i32 14
  %12 = ptrtoint ptr %ieee_1588 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %10, ptr %ieee_1588, align 4
  %and6 = and i32 %8, 7
  %tmr0_owner = getelementptr inbounds %struct.ice_hw_dev_caps, ptr %dev_p, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %tmr0_owner to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and6, ptr %tmr0_owner, align 4
  %14 = trunc i32 %8 to i8
  %15 = lshr i8 %14, 3
  %16 = and i8 %15, 1
  %tmr0_owned = getelementptr inbounds %struct.ice_hw_dev_caps, ptr %dev_p, i32 0, i32 4, i32 4
  %17 = ptrtoint ptr %tmr0_owned to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tmr0_owned, align 4
  %and11 = lshr i32 %8, 25
  %18 = trunc i32 %and11 to i8
  %19 = and i8 %18, 1
  %tmr0_ena = getelementptr inbounds %struct.ice_hw_dev_caps, ptr %dev_p, i32 0, i32 4, i32 7
  %20 = ptrtoint ptr %tmr0_ena to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %tmr0_ena, align 1
  %and15 = lshr i32 %8, 4
  %shr = and i32 %and15, 7
  %tmr1_owner = getelementptr inbounds %struct.ice_hw_dev_caps, ptr %dev_p, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %tmr1_owner to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr, ptr %tmr1_owner, align 4
  %22 = lshr i8 %14, 7
  %tmr1_owned = getelementptr inbounds %struct.ice_hw_dev_caps, ptr %dev_p, i32 0, i32 4, i32 5
  %23 = ptrtoint ptr %tmr1_owned to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %tmr1_owned, align 1
  %and20 = lshr i32 %8, 26
  %24 = trunc i32 %and20 to i8
  %25 = and i8 %24, 1
  %tmr1_ena = getelementptr inbounds %struct.ice_hw_dev_caps, ptr %dev_p, i32 0, i32 4, i32 8
  %26 = ptrtoint ptr %tmr1_ena to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %tmr1_ena, align 4
  %27 = ptrtoint ptr %ts_dev_info to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %2, ptr %ts_dev_info, align 4
  %tmr_own_map = getelementptr inbounds %struct.ice_hw_dev_caps, ptr %dev_p, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %tmr_own_map to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %5, ptr %tmr_own_map, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug700, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_1588_dev_caps, %if.then)) #12
          to label %do.body30 [label %if.then], !srcloc !428

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %ieee_1588 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ieee_1588, align 4
  %conv29 = zext i8 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug700, ptr noundef %dev, ptr noundef nonnull @.str.119, i32 noundef %conv29) #12
  br label %do.body30

do.body30:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug701, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_1588_dev_caps, %if.then42)) #12
          to label %do.body52 [label %if.then42], !srcloc !428

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr45 = getelementptr i8, ptr %hw, i32 -2960
  %33 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr45, align 8
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %tmr0_owner to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tmr0_owner, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug701, ptr noundef %dev47, ptr noundef nonnull @.str.120, i32 noundef %36) #12
  br label %do.body52

do.body52:                                        ; preds = %if.then42, %do.body30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug702, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_1588_dev_caps, %if.then64)) #12
          to label %do.body75 [label %if.then64], !srcloc !428

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr67 = getelementptr i8, ptr %hw, i32 -2960
  %37 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr67, align 8
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %tmr0_owned to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tmr0_owned, align 4
  %conv71 = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug702, ptr noundef %dev69, ptr noundef nonnull @.str.121, i32 noundef %conv71) #12
  br label %do.body75

do.body75:                                        ; preds = %if.then64, %do.body52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug703, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_1588_dev_caps, %if.then87)) #12
          to label %do.body98 [label %if.then87], !srcloc !428

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr90 = getelementptr i8, ptr %hw, i32 -2960
  %41 = ptrtoint ptr %add.ptr90 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr90, align 8
  %dev92 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %43 = ptrtoint ptr %tmr0_ena to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tmr0_ena, align 1
  %conv94 = zext i8 %44 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug703, ptr noundef %dev92, ptr noundef nonnull @.str.122, i32 noundef %conv94) #12
  br label %do.body98

do.body98:                                        ; preds = %if.then87, %do.body75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug704, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_1588_dev_caps, %if.then110)) #12
          to label %do.body120 [label %if.then110], !srcloc !428

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr113 = getelementptr i8, ptr %hw, i32 -2960
  %45 = ptrtoint ptr %add.ptr113 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr113, align 8
  %dev115 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %47 = ptrtoint ptr %tmr1_owner to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tmr1_owner, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug704, ptr noundef %dev115, ptr noundef nonnull @.str.123, i32 noundef %48) #12
  br label %do.body120

do.body120:                                       ; preds = %if.then110, %do.body98
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug705, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_1588_dev_caps, %if.then132)) #12
          to label %do.body143 [label %if.then132], !srcloc !428

if.then132:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr135 = getelementptr i8, ptr %hw, i32 -2960
  %49 = ptrtoint ptr %add.ptr135 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr135, align 8
  %dev137 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %51 = ptrtoint ptr %tmr1_owned to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tmr1_owned, align 1
  %conv139 = zext i8 %52 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug705, ptr noundef %dev137, ptr noundef nonnull @.str.124, i32 noundef %conv139) #12
  br label %do.body143

do.body143:                                       ; preds = %if.then132, %do.body120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug706, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_1588_dev_caps, %if.then155)) #12
          to label %do.body166 [label %if.then155], !srcloc !428

if.then155:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr158 = getelementptr i8, ptr %hw, i32 -2960
  %53 = ptrtoint ptr %add.ptr158 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr158, align 8
  %dev160 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %55 = ptrtoint ptr %tmr1_ena to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %tmr1_ena, align 4
  %conv162 = zext i8 %56 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug706, ptr noundef %dev160, ptr noundef nonnull @.str.125, i32 noundef %conv162) #12
  br label %do.body166

do.body166:                                       ; preds = %if.then155, %do.body143
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug707, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_1588_dev_caps, %if.then178)) #12
          to label %do.body188 [label %if.then178], !srcloc !428

if.then178:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr181 = getelementptr i8, ptr %hw, i32 -2960
  %57 = ptrtoint ptr %add.ptr181 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr181, align 8
  %dev183 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %59 = ptrtoint ptr %ts_dev_info to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ts_dev_info, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug707, ptr noundef %dev183, ptr noundef nonnull @.str.126, i32 noundef %60) #12
  br label %do.body188

do.body188:                                       ; preds = %if.then178, %do.body166
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug708, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_1588_dev_caps, %if.then200)) #12
          to label %do.end209 [label %if.then200], !srcloc !428

if.then200:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr203 = getelementptr i8, ptr %hw, i32 -2960
  %61 = ptrtoint ptr %add.ptr203 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr203, align 8
  %dev205 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %63 = ptrtoint ptr %tmr_own_map to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tmr_own_map, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug708, ptr noundef %dev205, ptr noundef nonnull @.str.127, i32 noundef %64) #12
  br label %do.end209

do.end209:                                        ; preds = %if.then200, %do.body188
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_parse_func_caps(ptr noundef %hw, ptr noundef %func_p, ptr nocapture noundef readonly %buf, i32 noundef %cap_count) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %func_p, i32 0, i32 72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cap_count)
  %cmp50.not = icmp eq i32 %cap_count, 0
  br i1 %cmp50.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev_caps.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27
  %guar_num_vsi.i = getelementptr inbounds %struct.ice_hw_func_caps, ptr %func_p, i32 0, i32 3
  %add.ptr.i43 = getelementptr i8, ptr %hw, i32 -2960
  %num_allocd_vfs.i = getelementptr inbounds %struct.ice_hw_func_caps, ptr %func_p, i32 0, i32 1
  %vf_base_id.i = getelementptr inbounds %struct.ice_hw_func_caps, ptr %func_p, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ice_aqc_list_caps_elem, ptr %buf, i32 %i.051
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 8
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %call = tail call fastcc zeroext i1 @ice_parse_common_caps(ptr noundef %hw, ptr noundef %func_p, ptr noundef %arrayidx, ptr noundef nonnull @.str.135)
  %conv = zext i16 %3 to i32
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.182)
  switch i16 %3, label %sw.default [
    i16 19, label %sw.bb
    i16 23, label %cond.false.i.i
    i16 70, label %sw.bb6
    i16 69, label %sw.bb8
  ]

sw.bb:                                            ; preds = %for.body
  %logical_id1.i = getelementptr %struct.ice_aqc_list_caps_elem, ptr %buf, i32 %i.051, i32 4
  %5 = ptrtoint ptr %logical_id1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %logical_id1.i, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %number2.i = getelementptr %struct.ice_aqc_list_caps_elem, ptr %buf, i32 %i.051, i32 3
  %8 = ptrtoint ptr %number2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number2.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %11 = ptrtoint ptr %num_allocd_vfs.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %num_allocd_vfs.i, align 4
  %12 = ptrtoint ptr %vf_base_id.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %vf_base_id.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_vf_func_caps.__UNIQUE_ID_ddebug682, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_func_caps, %if.then.i)) #12
          to label %do.body7.i [label %if.then.i], !srcloc !428

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %add.ptr.i43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i43, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %num_allocd_vfs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_allocd_vfs.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_vf_func_caps.__UNIQUE_ID_ddebug682, ptr noundef %dev.i, ptr noundef nonnull @.str.139, i32 noundef %16) #12
  br label %do.body7.i

do.body7.i:                                       ; preds = %if.then.i, %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_vf_func_caps.__UNIQUE_ID_ddebug683, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_func_caps, %if.then19.i)) #12
          to label %sw.epilog [label %if.then19.i], !srcloc !428

if.then19.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %add.ptr.i43 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i43, align 8
  %dev24.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %vf_base_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vf_base_id.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_vf_func_caps.__UNIQUE_ID_ddebug683, ptr noundef %dev24.i, ptr noundef nonnull @.str.140, i32 noundef %20) #12
  br label %sw.epilog

cond.false.i.i:                                   ; preds = %for.body
  %21 = ptrtoint ptr %dev_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dev_caps.i.i, align 8
  %and.i.i = and i32 %22, 255
  %call.i.i.i = tail call i32 @__sw_hweight8(i32 noundef %and.i.i) #12
  %conv94.i.i = trunc i32 %call.i.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv94.i.i)
  %tobool95.not.i.i = icmp eq i8 %conv94.i.i, 0
  br i1 %tobool95.not.i.i, label %cond.false.i.i.ice_get_num_per_func.exit.i_crit_edge, label %if.end.i.i

cond.false.i.i.ice_get_num_per_func.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_num_per_func.exit.i

if.end.i.i:                                       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = trunc i32 %call.i.i.i to i16
  %div.i.rhs.trunc.i = and i16 %23, 255
  %div.i35.i = udiv i16 768, %div.i.rhs.trunc.i
  %div.i.zext.i = zext i16 %div.i35.i to i32
  br label %ice_get_num_per_func.exit.i

ice_get_num_per_func.exit.i:                      ; preds = %if.end.i.i, %cond.false.i.i.ice_get_num_per_func.exit.i_crit_edge
  %retval.0.i32.i = phi i32 [ %div.i.zext.i, %if.end.i.i ], [ 0, %cond.false.i.i.ice_get_num_per_func.exit.i_crit_edge ]
  %24 = ptrtoint ptr %guar_num_vsi.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i32.i, ptr %guar_num_vsi.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_vsi_func_caps.__UNIQUE_ID_ddebug684, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_func_caps, %if.then.i45)) #12
          to label %do.body5.i [label %if.then.i45], !srcloc !428

if.then.i45:                                      ; preds = %ice_get_num_per_func.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %add.ptr.i43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i43, align 8
  %dev.i44 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %number.i = getelementptr %struct.ice_aqc_list_caps_elem, ptr %buf, i32 %i.051, i32 3
  %27 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %number.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_vsi_func_caps.__UNIQUE_ID_ddebug684, ptr noundef %dev.i44, ptr noundef nonnull @.str.142, i32 noundef %29) #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.then.i45, %ice_get_num_per_func.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_vsi_func_caps.__UNIQUE_ID_ddebug685, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_func_caps, %if.then17.i)) #12
          to label %sw.epilog [label %if.then17.i], !srcloc !428

if.then17.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %add.ptr.i43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i43, align 8
  %dev22.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %guar_num_vsi.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %guar_num_vsi.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_vsi_func_caps.__UNIQUE_ID_ddebug685, ptr noundef %dev22.i, ptr noundef nonnull @.str.143, i32 noundef %33) #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ice_parse_1588_func_caps(ptr noundef %hw, ptr noundef %func_p, ptr noundef %arrayidx)
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ice_parse_fdir_func_caps(ptr noundef %hw, ptr noundef %func_p)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br i1 %call, label %sw.default.sw.epilog_crit_edge, label %do.body

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_func_caps.__UNIQUE_ID_ddebug696, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_func_caps, %if.then14)) #12
          to label %sw.epilog [label %if.then14], !srcloc !428

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %add.ptr.i43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i43, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_func_caps.__UNIQUE_ID_ddebug696, ptr noundef %dev, ptr noundef nonnull @.str.137, i32 noundef %i.051, i32 noundef %conv) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then14, %do.body, %sw.default.sw.epilog_crit_edge, %sw.bb8, %sw.bb6, %if.then17.i, %do.body5.i, %if.then19.i, %do.body7.i
  %inc = add nuw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, %cap_count
  br i1 %exitcond.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  %dev_caps.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27
  %num_funcs.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27, i32 5
  %36 = ptrtoint ptr %num_funcs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_funcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %cmp.i = icmp ugt i32 %37, 4
  br i1 %cmp.i, label %if.then.i46, label %for.end.ice_recalc_port_limited_caps.exit_crit_edge

for.end.ice_recalc_port_limited_caps.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_recalc_port_limited_caps.exit

if.then.i46:                                      ; preds = %for.end
  %maxtc.i = getelementptr inbounds %struct.ice_hw_common_caps, ptr %func_p, i32 0, i32 2
  %38 = ptrtoint ptr %maxtc.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %maxtc.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_recalc_port_limited_caps.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_func_caps, %if.then3.i)) #12
          to label %do.end.i [label %if.then3.i], !srcloc !428

if.then3.i:                                       ; preds = %if.then.i46
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i47 = getelementptr i8, ptr %hw, i32 -2960
  %39 = ptrtoint ptr %add.ptr.i47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i47, align 8
  %dev.i48 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %41 = ptrtoint ptr %maxtc.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %maxtc.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_recalc_port_limited_caps.__UNIQUE_ID_ddebug680, ptr noundef %dev.i48, ptr noundef nonnull @.str.131, i32 noundef %42) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i, %if.then.i46
  %rdma.i = getelementptr inbounds %struct.ice_hw_common_caps, ptr %func_p, i32 0, i32 15
  %43 = ptrtoint ptr %rdma.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rdma.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool6.not.i = icmp eq i8 %44, 0
  br i1 %tobool6.not.i, label %do.end.i.if.end29.i_crit_edge, label %do.body8.i

do.end.i.if.end29.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

do.body8.i:                                       ; preds = %do.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_recalc_port_limited_caps.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_func_caps, %if.then20.i)) #12
          to label %do.end27.i [label %if.then20.i], !srcloc !428

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr23.i = getelementptr i8, ptr %hw, i32 -2960
  %45 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr23.i, align 8
  %dev25.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_recalc_port_limited_caps.__UNIQUE_ID_ddebug681, ptr noundef %dev25.i, ptr noundef nonnull @.str.132) #12
  br label %do.end27.i

do.end27.i:                                       ; preds = %if.then20.i, %do.body8.i
  %47 = ptrtoint ptr %rdma.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %rdma.i, align 1
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end27.i, %do.end.i.if.end29.i_crit_edge
  %cmp31.i = icmp eq ptr %dev_caps.i, %func_p
  br i1 %cmp31.i, label %do.end34.i, label %if.end29.i.ice_recalc_port_limited_caps.exit_crit_edge

if.end29.i.ice_recalc_port_limited_caps.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_recalc_port_limited_caps.exit

do.end34.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr37.i = getelementptr i8, ptr %hw, i32 -2960
  %48 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr37.i, align 8
  %dev39.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev39.i, ptr noundef nonnull @.str.133) #16
  br label %ice_recalc_port_limited_caps.exit

ice_recalc_port_limited_caps.exit:                ; preds = %do.end34.i, %if.end29.i.ice_recalc_port_limited_caps.exit_crit_edge, %for.end.ice_recalc_port_limited_caps.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_parse_1588_func_caps(ptr nocapture noundef readonly %hw, ptr nocapture noundef %func_p, ptr nocapture noundef readonly %cap) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ts_func_info = getelementptr inbounds %struct.ice_hw_func_caps, ptr %func_p, i32 0, i32 6
  %number1 = getelementptr inbounds %struct.ice_aqc_list_caps_elem, ptr %cap, i32 0, i32 3
  %0 = ptrtoint ptr %number1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number1, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = trunc i32 %2 to i8
  %4 = and i8 %3, 1
  %ena = getelementptr inbounds %struct.ice_hw_func_caps, ptr %func_p, i32 0, i32 6, i32 4
  %5 = ptrtoint ptr %ena to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %ena, align 1
  %ieee_1588 = getelementptr inbounds %struct.ice_hw_common_caps, ptr %func_p, i32 0, i32 14
  %6 = ptrtoint ptr %ieee_1588 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %4, ptr %ieee_1588, align 4
  %7 = lshr i8 %3, 1
  %8 = and i8 %7, 1
  %src_tmr_owned = getelementptr inbounds %struct.ice_hw_func_caps, ptr %func_p, i32 0, i32 6, i32 6
  %9 = ptrtoint ptr %src_tmr_owned to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %src_tmr_owned, align 1
  %10 = lshr i8 %3, 2
  %11 = and i8 %10, 1
  %tmr_ena = getelementptr inbounds %struct.ice_hw_func_caps, ptr %func_p, i32 0, i32 6, i32 7
  %12 = ptrtoint ptr %tmr_ena to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %tmr_ena, align 2
  %13 = lshr i8 %3, 4
  %14 = and i8 %13, 1
  %tmr_index_owned = getelementptr inbounds %struct.ice_hw_func_caps, ptr %func_p, i32 0, i32 6, i32 5
  %15 = ptrtoint ptr %tmr_index_owned to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %tmr_index_owned, align 4
  %and16 = lshr i32 %2, 24
  %16 = trunc i32 %and16 to i8
  %17 = and i8 %16, 1
  %tmr_index_assoc = getelementptr inbounds %struct.ice_hw_func_caps, ptr %func_p, i32 0, i32 6, i32 3
  %18 = ptrtoint ptr %tmr_index_assoc to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %tmr_index_assoc, align 2
  %and20 = lshr i32 %2, 16
  %19 = trunc i32 %and20 to i8
  %conv21 = and i8 %19, 7
  %clk_freq = getelementptr inbounds %struct.ice_hw_func_caps, ptr %func_p, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv21, ptr %clk_freq, align 4
  %and22 = lshr i32 %2, 20
  %21 = trunc i32 %and22 to i8
  %22 = and i8 %21, 1
  %clk_src = getelementptr inbounds %struct.ice_hw_func_caps, ptr %func_p, i32 0, i32 6, i32 2
  %23 = ptrtoint ptr %clk_src to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %clk_src, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %conv21)
  %cmp28 = icmp ult i8 %conv21, 6
  br i1 %cmp28, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv27 = zext i8 %conv21 to i32
  br label %do.body40

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug686, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_1588_func_caps, %if.then34)) #12
          to label %do.body40 [label %if.then34], !srcloc !428

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %clk_freq, align 4
  %conv37 = zext i8 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug686, ptr noundef %dev, ptr noundef nonnull @.str.145, i32 noundef %conv37) #12
  br label %do.body40

do.body40:                                        ; preds = %if.then34, %do.body, %if.then
  %storemerge = phi i32 [ %conv27, %if.then ], [ 0, %if.then34 ], [ 0, %do.body ]
  %28 = ptrtoint ptr %ts_func_info to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge, ptr %ts_func_info, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug687, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_1588_func_caps, %if.then52)) #12
          to label %do.body64 [label %if.then52], !srcloc !428

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr55 = getelementptr i8, ptr %hw, i32 -2960
  %29 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr55, align 8
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %ieee_1588 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ieee_1588, align 4
  %conv60 = zext i8 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug687, ptr noundef %dev57, ptr noundef nonnull @.str.146, i32 noundef %conv60) #12
  br label %do.body64

do.body64:                                        ; preds = %if.then52, %do.body40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_1588_func_caps, %if.then76)) #12
          to label %do.body87 [label %if.then76], !srcloc !428

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr79 = getelementptr i8, ptr %hw, i32 -2960
  %33 = ptrtoint ptr %add.ptr79 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr79, align 8
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %src_tmr_owned to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %src_tmr_owned, align 1
  %conv83 = zext i8 %36 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug688, ptr noundef %dev81, ptr noundef nonnull @.str.147, i32 noundef %conv83) #12
  br label %do.body87

do.body87:                                        ; preds = %if.then76, %do.body64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_1588_func_caps, %if.then99)) #12
          to label %do.body110 [label %if.then99], !srcloc !428

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr102 = getelementptr i8, ptr %hw, i32 -2960
  %37 = ptrtoint ptr %add.ptr102 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr102, align 8
  %dev104 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %tmr_ena to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tmr_ena, align 2
  %conv106 = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug689, ptr noundef %dev104, ptr noundef nonnull @.str.148, i32 noundef %conv106) #12
  br label %do.body110

do.body110:                                       ; preds = %if.then99, %do.body87
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_1588_func_caps, %if.then122)) #12
          to label %do.body133 [label %if.then122], !srcloc !428

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr125 = getelementptr i8, ptr %hw, i32 -2960
  %41 = ptrtoint ptr %add.ptr125 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr125, align 8
  %dev127 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %43 = ptrtoint ptr %tmr_index_owned to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tmr_index_owned, align 4
  %conv129 = zext i8 %44 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug690, ptr noundef %dev127, ptr noundef nonnull @.str.149, i32 noundef %conv129) #12
  br label %do.body133

do.body133:                                       ; preds = %if.then122, %do.body110
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug691, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_1588_func_caps, %if.then145)) #12
          to label %do.body156 [label %if.then145], !srcloc !428

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr148 = getelementptr i8, ptr %hw, i32 -2960
  %45 = ptrtoint ptr %add.ptr148 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr148, align 8
  %dev150 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %47 = ptrtoint ptr %tmr_index_assoc to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tmr_index_assoc, align 2
  %conv152 = zext i8 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug691, ptr noundef %dev150, ptr noundef nonnull @.str.150, i32 noundef %conv152) #12
  br label %do.body156

do.body156:                                       ; preds = %if.then145, %do.body133
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug692, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_1588_func_caps, %if.then168)) #12
          to label %do.body179 [label %if.then168], !srcloc !428

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr171 = getelementptr i8, ptr %hw, i32 -2960
  %49 = ptrtoint ptr %add.ptr171 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr171, align 8
  %dev173 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %51 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %clk_freq, align 4
  %conv175 = zext i8 %52 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug692, ptr noundef %dev173, ptr noundef nonnull @.str.151, i32 noundef %conv175) #12
  br label %do.body179

do.body179:                                       ; preds = %if.then168, %do.body156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug693, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_1588_func_caps, %if.then191)) #12
          to label %do.end201 [label %if.then191], !srcloc !428

if.then191:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr194 = getelementptr i8, ptr %hw, i32 -2960
  %53 = ptrtoint ptr %add.ptr194 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr194, align 8
  %dev196 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %55 = ptrtoint ptr %clk_src to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %clk_src, align 1
  %conv198 = zext i8 %56 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug693, ptr noundef %dev196, ptr noundef nonnull @.str.152, i32 noundef %conv198) #12
  br label %do.end201

do.end201:                                        ; preds = %if.then191, %do.body179
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_parse_fdir_func_caps(ptr nocapture noundef readonly %hw, ptr nocapture noundef %func_p) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4587536
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !429
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !453
  %dev_caps.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 27
  %4 = ptrtoint ptr %dev_caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_caps.i, align 8
  %and.i = and i32 %5, 255
  %call.i.i = tail call i32 @__sw_hweight8(i32 noundef %and.i) #12
  %conv94.i = trunc i32 %call.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv94.i)
  %tobool95.not.i = icmp eq i8 %conv94.i, 0
  br i1 %tobool95.not.i, label %entry.ice_get_num_per_func.exit_crit_edge, label %if.end.i

entry.ice_get_num_per_func.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ice_get_num_per_func.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = trunc i32 %3 to i16
  %div.i.lhs.trunc = and i16 %6, 32767
  %7 = trunc i32 %call.i.i to i16
  %div.i.rhs.trunc = and i16 %7, 255
  %div.i48 = udiv i16 %div.i.lhs.trunc, %div.i.rhs.trunc
  %div.i.zext = zext i16 %div.i48 to i32
  br label %ice_get_num_per_func.exit

ice_get_num_per_func.exit:                        ; preds = %if.end.i, %entry.ice_get_num_per_func.exit_crit_edge
  %retval.0.i45 = phi i32 [ %div.i.zext, %if.end.i ], [ 0, %entry.ice_get_num_per_func.exit_crit_edge ]
  %fd_fltr_guar = getelementptr inbounds %struct.ice_hw_func_caps, ptr %func_p, i32 0, i32 4
  %8 = ptrtoint ptr %fd_fltr_guar to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i45, ptr %fd_fltr_guar, align 4
  %and3 = lshr i32 %3, 16
  %shr4 = and i32 %and3, 32767
  %fd_fltr_best_effort = getelementptr inbounds %struct.ice_hw_func_caps, ptr %func_p, i32 0, i32 5
  %9 = ptrtoint ptr %fd_fltr_best_effort to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr4, ptr %fd_fltr_best_effort, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_fdir_func_caps.__UNIQUE_ID_ddebug694, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_fdir_func_caps, %if.then)) #12
          to label %do.body12 [label %if.then], !srcloc !428

if.then:                                          ; preds = %ice_get_num_per_func.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr10 = getelementptr i8, ptr %hw, i32 -2960
  %10 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr10, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %fd_fltr_guar to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fd_fltr_guar, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_fdir_func_caps.__UNIQUE_ID_ddebug694, ptr noundef %dev, ptr noundef nonnull @.str.154, i32 noundef %13) #12
  br label %do.body12

do.body12:                                        ; preds = %if.then, %ice_get_num_per_func.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_parse_fdir_func_caps.__UNIQUE_ID_ddebug695, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_parse_fdir_func_caps, %if.then24)) #12
          to label %do.end33 [label %if.then24], !srcloc !428

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr27 = getelementptr i8, ptr %hw, i32 -2960
  %14 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr27, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %16 = ptrtoint ptr %fd_fltr_best_effort to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fd_fltr_best_effort, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_parse_fdir_func_caps.__UNIQUE_ID_ddebug695, ptr noundef %dev29, ptr noundef nonnull @.str.155, i32 noundef %17) #12
  br label %do.end33

do.end33:                                         ; preds = %if.then24, %do.body12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_sched_get_tc_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_sched_cfg_vsi(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_sched_replay_agg_vsi_preinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !46, !48, !49, !51, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !97, !98, !100, !101, !102, !103, !104, !106, !107, !109, !110, !112, !113, !114, !116, !117, !119, !120, !122, !123, !124, !126, !127, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !159, !161, !163, !165, !167, !169, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !189, !190, !191, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !211, !212, !214, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !232, !233, !234, !236, !238, !239, !240, !242, !243, !244, !246, !247, !249, !250, !252, !253, !255, !256, !258, !259, !261, !262, !264, !265, !267, !268, !270, !271, !273, !274, !276, !277, !279, !280, !282, !283, !285, !286, !288, !289, !291, !292, !294, !295, !297, !298, !300, !301, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323, !325, !326, !328, !329, !331, !332, !334, !335, !337, !338, !340, !341, !343, !344, !346, !347, !348, !350, !351, !352, !354, !355, !357, !358, !359, !360, !362, !364, !365, !366, !368, !369, !370, !372, !373, !375, !376, !377, !379, !380, !382, !383, !384, !386, !387, !389, !390, !392, !393, !395, !396, !398, !399, !401, !402, !404, !405, !407, !408, !409, !411, !412, !414, !415, !416, !418}
!llvm.module.flags = !{!419, !420, !421, !422, !423, !424, !425, !426}
!llvm.ident = !{!427}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 207, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug615, !1, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 209, i32 2}
!8 = !{ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug616, !7, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 211, i32 2}
!11 = !{ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug617, !10, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 213, i32 2}
!14 = !{ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug618, !13, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 214, i32 2}
!17 = !{ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug619, !16, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 216, i32 2}
!20 = !{ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug620, !19, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 217, i32 2}
!23 = !{ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug621, !22, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 219, i32 2}
!26 = !{ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug622, !25, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 221, i32 2}
!29 = !{ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug623, !28, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 223, i32 2}
!32 = !{ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug624, !31, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 225, i32 2}
!35 = !{ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug625, !34, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 227, i32 2}
!38 = !{ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug626, !37, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 229, i32 2}
!41 = !{ptr @ice_aq_get_phy_caps.__UNIQUE_ID_ddebug627, !40, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 486, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug628, !43, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 487, i32 2}
!48 = !{ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug629, !47, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!49 = !{ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug630, !50, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 488, i32 2}
!51 = !{ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug631, !52, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 490, i32 2}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 492, i32 2}
!55 = !{ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug632, !54, !"__UNIQUE_ID_ddebug632", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 493, i32 2}
!58 = !{ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug633, !57, !"__UNIQUE_ID_ddebug633", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 494, i32 2}
!61 = !{ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug634, !60, !"__UNIQUE_ID_ddebug634", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 495, i32 2}
!64 = !{ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug635, !63, !"__UNIQUE_ID_ddebug635", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 496, i32 2}
!67 = !{ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug636, !66, !"__UNIQUE_ID_ddebug636", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 497, i32 2}
!70 = !{ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug637, !69, !"__UNIQUE_ID_ddebug637", i1 false, i1 false}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 498, i32 2}
!73 = !{ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug638, !72, !"__UNIQUE_ID_ddebug638", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 499, i32 2}
!76 = !{ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug639, !75, !"__UNIQUE_ID_ddebug639", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 501, i32 2}
!79 = !{ptr @ice_aq_get_link_info.__UNIQUE_ID_ddebug640, !78, !"__UNIQUE_ID_ddebug640", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 869, i32 2}
!82 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ice_output_fw_log.__UNIQUE_ID_ddebug641, !81, !"__UNIQUE_ID_ddebug641", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 870, i32 2}
!86 = !{ptr @ice_output_fw_log.__UNIQUE_ID_ddebug642, !85, !"__UNIQUE_ID_ddebug642", i1 false, i1 false}
!87 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 872, i32 2}
!90 = !{ptr @ice_output_fw_log.__UNIQUE_ID_ddebug643, !89, !"__UNIQUE_ID_ddebug643", i1 false, i1 false}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 935, i32 3}
!93 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ice_init_hw.__UNIQUE_ID_ddebug644, !92, !"__UNIQUE_ID_ddebug644", i1 false, i1 false}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 975, i32 3}
!97 = !{ptr @ice_init_hw.__UNIQUE_ID_ddebug645, !96, !"__UNIQUE_ID_ddebug645", i1 false, i1 false}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 997, i32 3}
!100 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ice_init_hw._entry, !99, !"_entry", i1 false, i1 false}
!103 = !{ptr @ice_init_hw._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1007, i32 3}
!106 = !{ptr @ice_init_hw.__UNIQUE_ID_ddebug646, !105, !"__UNIQUE_ID_ddebug646", i1 false, i1 false}
!107 = !{ptr @ice_init_hw.__key, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1048, i32 2}
!109 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1117, i32 3}
!112 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ice_check_reset.__UNIQUE_ID_ddebug647, !111, !"__UNIQUE_ID_ddebug647", i1 false, i1 false}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1136, i32 4}
!116 = !{ptr @ice_check_reset.__UNIQUE_ID_ddebug648, !115, !"__UNIQUE_ID_ddebug648", i1 false, i1 false}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1143, i32 3}
!119 = !{ptr @ice_check_reset.__UNIQUE_ID_ddebug649, !118, !"__UNIQUE_ID_ddebug649", i1 false, i1 false}
!120 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1222, i32 3}
!122 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @ice_reset.__UNIQUE_ID_ddebug651, !121, !"__UNIQUE_ID_ddebug651", i1 false, i1 false}
!124 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1226, i32 3}
!126 = !{ptr @ice_reset.__UNIQUE_ID_ddebug652, !125, !"__UNIQUE_ID_ddebug652", i1 false, i1 false}
!127 = !{ptr @ice_tlan_ctx_info, !128, !"ice_tlan_ctx_info", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1324, i32 26}
!129 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1420, i32 1}
!131 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @ice_global_cfg_lock_sw, !130, !"ice_global_cfg_lock_sw", i1 false, i1 false}
!133 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1784, i32 3}
!135 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @ice_acquire_res.__UNIQUE_ID_ddebug654, !134, !"__UNIQUE_ID_ddebug654", i1 false, i1 false}
!137 = !{ptr @.str.52, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1802, i32 3}
!139 = !{ptr @ice_acquire_res.__UNIQUE_ID_ddebug655, !138, !"__UNIQUE_ID_ddebug655", i1 false, i1 false}
!140 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1807, i32 4}
!142 = !{ptr @ice_acquire_res.__UNIQUE_ID_ddebug656, !141, !"__UNIQUE_ID_ddebug656", i1 false, i1 false}
!143 = !{ptr @.str.54, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1809, i32 4}
!145 = !{ptr @ice_acquire_res.__UNIQUE_ID_ddebug657, !144, !"__UNIQUE_ID_ddebug657", i1 false, i1 false}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1939, i32 3}
!148 = !{ptr @.str.56, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @ice_free_hw_res.__UNIQUE_ID_ddebug658, !147, !"__UNIQUE_ID_ddebug658", i1 false, i1 false}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2939, i32 3}
!152 = !{ptr @.str.58, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug711, !151, !"__UNIQUE_ID_ddebug711", i1 false, i1 false}
!154 = !{ptr @.str.59, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2949, i32 2}
!156 = !{ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug712, !155, !"__UNIQUE_ID_ddebug712", i1 false, i1 false}
!157 = !{ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug713, !158, !"__UNIQUE_ID_ddebug713", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2950, i32 2}
!159 = !{ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug714, !160, !"__UNIQUE_ID_ddebug714", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2952, i32 2}
!161 = !{ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug715, !162, !"__UNIQUE_ID_ddebug715", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2954, i32 2}
!163 = !{ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug716, !164, !"__UNIQUE_ID_ddebug716", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2955, i32 2}
!165 = !{ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug717, !166, !"__UNIQUE_ID_ddebug717", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2957, i32 2}
!167 = !{ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug718, !168, !"__UNIQUE_ID_ddebug718", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2958, i32 2}
!169 = !{ptr @.str.60, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2959, i32 2}
!171 = !{ptr @ice_aq_set_phy_cfg.__UNIQUE_ID_ddebug719, !170, !"__UNIQUE_ID_ddebug719", i1 false, i1 false}
!172 = !{ptr @.str.61, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 3383, i32 4}
!174 = !{ptr @.str.62, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @ice_get_link_status.__UNIQUE_ID_ddebug720, !173, !"__UNIQUE_ID_ddebug720", i1 false, i1 false}
!176 = !{ptr @.str.63, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 4146, i32 4}
!178 = !{ptr @.str.64, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @ice_set_ctx.__UNIQUE_ID_ddebug723, !177, !"__UNIQUE_ID_ddebug723", i1 false, i1 false}
!180 = !{ptr @.str.65, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 4234, i32 3}
!182 = !{ptr @.str.66, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @ice_ena_vsi_txq.__UNIQUE_ID_ddebug724, !181, !"__UNIQUE_ID_ddebug724", i1 false, i1 false}
!184 = !{ptr @.str.67, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 4277, i32 3}
!186 = !{ptr @ice_ena_vsi_txq.__UNIQUE_ID_ddebug725, !185, !"__UNIQUE_ID_ddebug725", i1 false, i1 false}
!187 = !{ptr @.str.68, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 4356, i32 4}
!189 = !{ptr @.str.69, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @ice_dis_vsi_txq.__UNIQUE_ID_ddebug726, !188, !"__UNIQUE_ID_ddebug726", i1 false, i1 false}
!191 = !{ptr @.str.70, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 4361, i32 4}
!193 = !{ptr @ice_dis_vsi_txq.__UNIQUE_ID_ddebug727, !192, !"__UNIQUE_ID_ddebug727", i1 false, i1 false}
!194 = !{ptr @.str.71, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 4517, i32 3}
!196 = !{ptr @.str.72, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @ice_ena_vsi_rdma_qset.__UNIQUE_ID_ddebug728, !195, !"__UNIQUE_ID_ddebug728", i1 false, i1 false}
!198 = !{ptr @.str.73, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 4757, i32 3}
!200 = !{ptr @.str.74, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @ice_sched_query_elem.__UNIQUE_ID_ddebug729, !199, !"__UNIQUE_ID_ddebug729", i1 false, i1 false}
!202 = !{ptr @.str.75, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 4933, i32 3}
!204 = !{ptr @.str.76, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @ice_get_link_default_override.__UNIQUE_ID_ddebug730, !203, !"__UNIQUE_ID_ddebug730", i1 false, i1 false}
!206 = !{ptr @.str.77, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 4944, i32 3}
!208 = !{ptr @ice_get_link_default_override.__UNIQUE_ID_ddebug731, !207, !"__UNIQUE_ID_ddebug731", i1 false, i1 false}
!209 = !{ptr @.str.78, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 4955, i32 3}
!211 = !{ptr @ice_get_link_default_override.__UNIQUE_ID_ddebug732, !210, !"__UNIQUE_ID_ddebug732", i1 false, i1 false}
!212 = !{ptr @ice_get_link_default_override.__UNIQUE_ID_ddebug733, !213, !"__UNIQUE_ID_ddebug733", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 4965, i32 4}
!214 = !{ptr @ice_get_link_default_override.__UNIQUE_ID_ddebug734, !215, !"__UNIQUE_ID_ddebug734", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 4978, i32 4}
!216 = !{ptr @.str.79, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 58, i32 2}
!218 = !{ptr @.str.80, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @ice_set_mac_type.__UNIQUE_ID_ddebug613, !217, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!220 = !{ptr @.str.81, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 151, i32 3}
!222 = !{ptr @.str.82, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @ice_aq_manage_mac_read.__UNIQUE_ID_ddebug614, !221, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!224 = !{ptr @.str.83, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1195, i32 3}
!226 = !{ptr @.str.84, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @ice_pf_reset.__UNIQUE_ID_ddebug650, !225, !"__UNIQUE_ID_ddebug650", i1 false, i1 false}
!228 = !{ptr @ice_rlan_ctx_info, !229, !"ice_rlan_ctx_info", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1273, i32 33}
!230 = !{ptr @.str.85, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1265, i32 3}
!232 = !{ptr @.str.86, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @ice_copy_rxq_ctx_to_hw.__UNIQUE_ID_ddebug653, !231, !"__UNIQUE_ID_ddebug653", i1 false, i1 false}
!234 = !{ptr @.str.87, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2461, i32 26}
!236 = !{ptr @.str.88, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2482, i32 5}
!238 = !{ptr @.str.89, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @ice_parse_dev_caps.__UNIQUE_ID_ddebug710, !237, !"__UNIQUE_ID_ddebug710", i1 false, i1 false}
!240 = !{ptr @.str.90, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1994, i32 3}
!242 = !{ptr @.str.91, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug659, !241, !"__UNIQUE_ID_ddebug659", i1 false, i1 false}
!244 = !{ptr @.str.92, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 1999, i32 3}
!246 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug660, !245, !"__UNIQUE_ID_ddebug660", i1 false, i1 false}
!247 = !{ptr @.str.93, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2006, i32 3}
!249 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug661, !248, !"__UNIQUE_ID_ddebug661", i1 false, i1 false}
!250 = !{ptr @.str.94, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2007, i32 3}
!252 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug662, !251, !"__UNIQUE_ID_ddebug662", i1 false, i1 false}
!253 = !{ptr @.str.95, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2009, i32 3}
!255 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug663, !254, !"__UNIQUE_ID_ddebug663", i1 false, i1 false}
!256 = !{ptr @.str.96, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2014, i32 3}
!258 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug664, !257, !"__UNIQUE_ID_ddebug664", i1 false, i1 false}
!259 = !{ptr @.str.97, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2016, i32 3}
!261 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug665, !260, !"__UNIQUE_ID_ddebug665", i1 false, i1 false}
!262 = !{ptr @.str.98, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2022, i32 3}
!264 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug666, !263, !"__UNIQUE_ID_ddebug666", i1 false, i1 false}
!265 = !{ptr @.str.99, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2024, i32 3}
!267 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug667, !266, !"__UNIQUE_ID_ddebug667", i1 false, i1 false}
!268 = !{ptr @.str.100, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2030, i32 3}
!270 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug668, !269, !"__UNIQUE_ID_ddebug668", i1 false, i1 false}
!271 = !{ptr @.str.101, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2032, i32 3}
!273 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug669, !272, !"__UNIQUE_ID_ddebug669", i1 false, i1 false}
!274 = !{ptr @.str.102, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2038, i32 3}
!276 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug670, !275, !"__UNIQUE_ID_ddebug670", i1 false, i1 false}
!277 = !{ptr @.str.103, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2040, i32 3}
!279 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug671, !278, !"__UNIQUE_ID_ddebug671", i1 false, i1 false}
!280 = !{ptr @.str.104, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2045, i32 3}
!282 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug672, !281, !"__UNIQUE_ID_ddebug672", i1 false, i1 false}
!283 = !{ptr @.str.105, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2049, i32 3}
!285 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug673, !284, !"__UNIQUE_ID_ddebug673", i1 false, i1 false}
!286 = !{ptr @.str.106, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2053, i32 3}
!288 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug674, !287, !"__UNIQUE_ID_ddebug674", i1 false, i1 false}
!289 = !{ptr @.str.107, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2059, i32 3}
!291 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug675, !290, !"__UNIQUE_ID_ddebug675", i1 false, i1 false}
!292 = !{ptr @.str.108, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2064, i32 3}
!294 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug676, !293, !"__UNIQUE_ID_ddebug676", i1 false, i1 false}
!295 = !{ptr @.str.109, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2068, i32 3}
!297 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug677, !296, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!298 = !{ptr @.str.110, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2073, i32 3}
!300 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug678, !299, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!301 = !{ptr @.str.111, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2079, i32 3}
!303 = !{ptr @ice_parse_common_caps.__UNIQUE_ID_ddebug679, !302, !"__UNIQUE_ID_ddebug679", i1 false, i1 false}
!304 = !{ptr @.str.112, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2319, i32 2}
!306 = !{ptr @.str.113, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @ice_parse_valid_functions_cap.__UNIQUE_ID_ddebug697, !305, !"__UNIQUE_ID_ddebug697", i1 false, i1 false}
!308 = !{ptr @.str.114, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2338, i32 2}
!310 = !{ptr @.str.115, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @ice_parse_vf_dev_caps.__UNIQUE_ID_ddebug698, !309, !"__UNIQUE_ID_ddebug698", i1 false, i1 false}
!312 = !{ptr @.str.116, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2357, i32 2}
!314 = !{ptr @.str.117, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @ice_parse_vsi_dev_caps.__UNIQUE_ID_ddebug699, !313, !"__UNIQUE_ID_ddebug699", i1 false, i1 false}
!316 = !{ptr @.str.118, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2392, i32 2}
!318 = !{ptr @.str.119, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug700, !317, !"__UNIQUE_ID_ddebug700", i1 false, i1 false}
!320 = !{ptr @.str.120, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2394, i32 2}
!322 = !{ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug701, !321, !"__UNIQUE_ID_ddebug701", i1 false, i1 false}
!323 = !{ptr @.str.121, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2396, i32 2}
!325 = !{ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug702, !324, !"__UNIQUE_ID_ddebug702", i1 false, i1 false}
!326 = !{ptr @.str.122, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2398, i32 2}
!328 = !{ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug703, !327, !"__UNIQUE_ID_ddebug703", i1 false, i1 false}
!329 = !{ptr @.str.123, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2400, i32 2}
!331 = !{ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug704, !330, !"__UNIQUE_ID_ddebug704", i1 false, i1 false}
!332 = !{ptr @.str.124, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2402, i32 2}
!334 = !{ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug705, !333, !"__UNIQUE_ID_ddebug705", i1 false, i1 false}
!335 = !{ptr @.str.125, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2404, i32 2}
!337 = !{ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug706, !336, !"__UNIQUE_ID_ddebug706", i1 false, i1 false}
!338 = !{ptr @.str.126, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2406, i32 2}
!340 = !{ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug707, !339, !"__UNIQUE_ID_ddebug707", i1 false, i1 false}
!341 = !{ptr @.str.127, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2408, i32 2}
!343 = !{ptr @ice_parse_1588_dev_caps.__UNIQUE_ID_ddebug708, !342, !"__UNIQUE_ID_ddebug708", i1 false, i1 false}
!344 = !{ptr @.str.128, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2427, i32 2}
!346 = !{ptr @.str.129, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @ice_parse_fdir_dev_caps.__UNIQUE_ID_ddebug709, !345, !"__UNIQUE_ID_ddebug709", i1 false, i1 false}
!348 = !{ptr @.str.130, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2109, i32 3}
!350 = !{ptr @.str.131, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @ice_recalc_port_limited_caps.__UNIQUE_ID_ddebug680, !349, !"__UNIQUE_ID_ddebug680", i1 false, i1 false}
!352 = !{ptr @.str.132, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2112, i32 4}
!354 = !{ptr @ice_recalc_port_limited_caps.__UNIQUE_ID_ddebug681, !353, !"__UNIQUE_ID_ddebug681", i1 false, i1 false}
!355 = !{ptr @.str.133, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2120, i32 4}
!357 = !{ptr @.str.134, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @ice_recalc_port_limited_caps._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @ice_recalc_port_limited_caps._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.135, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2277, i32 26}
!362 = !{ptr @.str.136, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2295, i32 5}
!364 = !{ptr @.str.137, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @ice_parse_func_caps.__UNIQUE_ID_ddebug696, !363, !"__UNIQUE_ID_ddebug696", i1 false, i1 false}
!366 = !{ptr @.str.138, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2141, i32 2}
!368 = !{ptr @.str.139, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @ice_parse_vf_func_caps.__UNIQUE_ID_ddebug682, !367, !"__UNIQUE_ID_ddebug682", i1 false, i1 false}
!370 = !{ptr @.str.140, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2143, i32 2}
!372 = !{ptr @ice_parse_vf_func_caps.__UNIQUE_ID_ddebug683, !371, !"__UNIQUE_ID_ddebug683", i1 false, i1 false}
!373 = !{ptr @.str.141, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2160, i32 2}
!375 = !{ptr @.str.142, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @ice_parse_vsi_func_caps.__UNIQUE_ID_ddebug684, !374, !"__UNIQUE_ID_ddebug684", i1 false, i1 false}
!377 = !{ptr @.str.143, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2162, i32 2}
!379 = !{ptr @ice_parse_vsi_func_caps.__UNIQUE_ID_ddebug685, !378, !"__UNIQUE_ID_ddebug685", i1 false, i1 false}
!380 = !{ptr @.str.144, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2199, i32 3}
!382 = !{ptr @.str.145, !381, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug686, !381, !"__UNIQUE_ID_ddebug686", i1 false, i1 false}
!384 = !{ptr @.str.146, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2204, i32 2}
!386 = !{ptr @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug687, !385, !"__UNIQUE_ID_ddebug687", i1 false, i1 false}
!387 = !{ptr @.str.147, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2206, i32 2}
!389 = !{ptr @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug688, !388, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!390 = !{ptr @.str.148, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2208, i32 2}
!392 = !{ptr @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug689, !391, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!393 = !{ptr @.str.149, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2210, i32 2}
!395 = !{ptr @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug690, !394, !"__UNIQUE_ID_ddebug690", i1 false, i1 false}
!396 = !{ptr @.str.150, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2212, i32 2}
!398 = !{ptr @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug691, !397, !"__UNIQUE_ID_ddebug691", i1 false, i1 false}
!399 = !{ptr @.str.151, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2214, i32 2}
!401 = !{ptr @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug692, !400, !"__UNIQUE_ID_ddebug692", i1 false, i1 false}
!402 = !{ptr @.str.152, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2216, i32 2}
!404 = !{ptr @ice_parse_1588_func_caps.__UNIQUE_ID_ddebug693, !403, !"__UNIQUE_ID_ddebug693", i1 false, i1 false}
!405 = !{ptr @.str.153, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2241, i32 2}
!407 = !{ptr @.str.154, !406, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @ice_parse_fdir_func_caps.__UNIQUE_ID_ddebug694, !406, !"__UNIQUE_ID_ddebug694", i1 false, i1 false}
!409 = !{ptr @.str.155, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 2243, i32 2}
!411 = !{ptr @ice_parse_fdir_func_caps.__UNIQUE_ID_ddebug695, !410, !"__UNIQUE_ID_ddebug695", i1 false, i1 false}
!412 = !{ptr @.str.156, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 3886, i32 4}
!414 = !{ptr @.str.157, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @ice_aq_dis_lan_txq.__UNIQUE_ID_ddebug721, !413, !"__UNIQUE_ID_ddebug721", i1 false, i1 false}
!416 = !{ptr @.str.158, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/ethernet/intel/ice/ice_common.c", i32 3889, i32 4}
!418 = !{ptr @ice_aq_dis_lan_txq.__UNIQUE_ID_ddebug722, !417, !"__UNIQUE_ID_ddebug722", i1 false, i1 false}
!419 = !{i32 1, !"wchar_size", i32 2}
!420 = !{i32 1, !"min_enum_size", i32 4}
!421 = !{i32 8, !"branch-target-enforcement", i32 0}
!422 = !{i32 8, !"sign-return-address", i32 0}
!423 = !{i32 8, !"sign-return-address-all", i32 0}
!424 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!425 = !{i32 7, !"uwtable", i32 1}
!426 = !{i32 7, !"frame-pointer", i32 2}
!427 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!428 = !{i64 2148873344, i64 2148873349, i64 2148873362, i64 2148873406, i64 2148873440, i64 2148873461}
!429 = !{i64 6892986}
!430 = !{i64 2160351329}
!431 = !{i64 2160352227}
!432 = !{i64 2160411239}
!433 = !{i64 2160410578}
!434 = !{i64 2160416709}
!435 = !{i64 6892568}
!436 = !{i64 2160482605}
!437 = !{i64 2160482909}
!438 = !{i64 2160483757}
!439 = !{i64 2160440674}
!440 = !{i64 2160442641}
!441 = !{i64 2160449272}
!442 = !{i64 2160461447}
!443 = !{i64 2160462079}
!444 = !{i64 2160464254}
!445 = !{i64 2160464706}
!446 = !{i64 2160465617}
!447 = !{i64 2160484275}
!448 = !{!"auto-init"}
!449 = !{i64 2159668882}
!450 = !{i64 2159669320}
!451 = !{i64 2160963519}
!452 = !{i8 0, i8 2}
!453 = !{i64 2160738432}
