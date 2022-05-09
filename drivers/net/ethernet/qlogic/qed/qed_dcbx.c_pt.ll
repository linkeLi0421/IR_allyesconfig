; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_dcbx.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_dcbx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qed_eth_dcbnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_dcbx_app_metadata = type { i32, ptr, i32 }
%struct.qed_dcbx_results = type { i8, i8, [5 x %struct.qed_dcbx_app_data] }
%struct.qed_dcbx_app_data = type { i8, i8, i8, i8, i8 }
%struct.qed_hwfn = type { ptr, i8, i8, i8, i8, i8, i32, i8, [16 x i8], i8, i8, i8, ptr, ptr, i64, i32, ptr, %struct.qed_hw_info, %struct.qed_rt_data, ptr, ptr, ptr, %struct.tasklet_struct, i8, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qed_pf_params, i8, i32, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.qed_ufp_info, %struct.qed_dmae_info, %struct.qed_qm_info, %struct.qed_storm_stats, ptr, %struct.dbg_tools_data, ptr, [19 x %struct.virt_mem_desc], i16, i32, i32, i32, i8, i8, ptr, %struct.qed_db_recovery_info, %struct.qed_nvm_image_info, ptr, ptr, [64 x %struct.qed_simd_fp_handler], ptr, %struct.delayed_work, i32, ptr, i8, ptr, %struct.delayed_work, i32, i32 }
%struct.qed_hw_info = type { i32, [15 x i32], [15 x i32], [7 x i32], i8, i8, i8, i8, i8, i32, i16, i16, [4 x i32], [6 x i8], i64, i64, i16, ptr, i32, i32, i16, i32 }
%struct.qed_rt_data = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.6, i32 }
%struct.atomic_t = type { i32 }
%union.anon.6 = type { ptr }
%struct.qed_pf_params = type { %struct.qed_eth_pf_params, %struct.qed_fcoe_pf_params, %struct.qed_iscsi_pf_params, %struct.qed_nvmetcp_pf_params, %struct.qed_rdma_pf_params }
%struct.qed_eth_pf_params = type { i16, i8, i32 }
%struct.qed_fcoe_pf_params = type { i64, [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], i16, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.qed_iscsi_pf_params = type { i64, [3 x i64], i16, i16, i32, i16, i16, i16, i16, [3 x i16], [3 x i16], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.qed_nvmetcp_pf_params = type { i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.qed_rdma_pf_params = type { i32, i32, i32, i8, i8, i8 }
%struct.qed_ufp_info = type { i32, i32, i8 }
%struct.qed_dmae_info = type { %struct.mutex, i8, i32, ptr, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.qed_qm_info = type { ptr, ptr, ptr, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i8 }
%struct.qed_storm_stats = type { %struct.storm_stats, %struct.storm_stats, %struct.storm_stats, %struct.storm_stats }
%struct.storm_stats = type { i32, i32 }
%struct.dbg_tools_data = type { %struct.dbg_grc_data, %struct.dbg_bus_data, %struct.idle_chk_data, [40 x i8], [132 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct.pretend_params, i32 }
%struct.dbg_grc_data = type { i8, i8, i16, [48 x i32] }
%struct.dbg_bus_data = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x %struct.dbg_bus_trigger_state_data], i8, i8, i8, i8, i32, %struct.dbg_bus_pci_buf_data, [132 x %struct.dbg_bus_block_data], [6 x %struct.dbg_bus_storm_data] }
%struct.dbg_bus_trigger_state_data = type { i8, i8, i8, i8 }
%struct.dbg_bus_pci_buf_data = type { %struct.dbg_bus_mem_addr, %struct.dbg_bus_mem_addr, i32 }
%struct.dbg_bus_mem_addr = type { i32, i32 }
%struct.dbg_bus_block_data = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dbg_bus_storm_data = type { i8, i8, i8, i8, i8, i8, %union.dbg_bus_storm_eid_params, i32 }
%union.dbg_bus_storm_eid_params = type { %struct.dbg_bus_storm_eid_range_params }
%struct.dbg_bus_storm_eid_range_params = type { i8, i8 }
%struct.idle_chk_data = type { i32, i8, i8, i16 }
%struct.pretend_params = type { i8, i8, i16 }
%struct.virt_mem_desc = type { ptr, i32 }
%struct.qed_db_recovery_info = type { %struct.list_head, %struct.spinlock, i8, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.qed_nvm_image_info = type { i32, ptr, i8 }
%struct.qed_simd_fp_handler = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.qed_dcbx_info = type { [3 x %struct.lldp_status_params_s], [3 x %struct.lldp_config_params_s], %struct.dcbx_local_params, %struct.qed_dcbx_results, %struct.dcbx_mib, %struct.dcbx_mib, %struct.qed_dcbx_set, %struct.qed_dcbx_get, i8 }
%struct.lldp_status_params_s = type { i32, i32, [4 x i32], [4 x i32], i32 }
%struct.lldp_config_params_s = type { i32, [4 x i32], [4 x i32] }
%struct.dcbx_local_params = type { i32, i32, %struct.dcbx_features }
%struct.dcbx_features = type { %struct.dcbx_ets_feature, i32, %struct.dcbx_app_priority_feature }
%struct.dcbx_ets_feature = type { i32, [1 x i32], [2 x i32], [2 x i32] }
%struct.dcbx_app_priority_feature = type { i32, [32 x %struct.dcbx_app_priority_entry] }
%struct.dcbx_app_priority_entry = type { i32 }
%struct.dcbx_mib = type { i32, i32, %struct.dcbx_features, i32 }
%struct.qed_dcbx_set = type { i32, i8, %struct.qed_dcbx_admin_params, i32 }
%struct.qed_dcbx_admin_params = type { %struct.qed_dcbx_params, i8 }
%struct.qed_dcbx_params = type { [32 x %struct.qed_app_entry], i16, i8, i8, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], %struct.qed_dbcx_pfc_params, i8 }
%struct.qed_app_entry = type { i8, i32, i8, i8, i16, i32 }
%struct.qed_dbcx_pfc_params = type { i8, i8, [8 x i8], i8 }
%struct.qed_dcbx_get = type { %struct.qed_dcbx_operational_params, %struct.qed_dcbx_lldp_remote, %struct.qed_dcbx_lldp_local, %struct.qed_dcbx_remote_params, %struct.qed_dcbx_admin_params }
%struct.qed_dcbx_operational_params = type { %struct.qed_dcbx_app_prio, %struct.qed_dcbx_params, i8, i8, i8, i8, i8, i32 }
%struct.qed_dcbx_app_prio = type { i8, i8, i8, i8, i8 }
%struct.qed_dcbx_lldp_remote = type { [4 x i32], [4 x i32], i8, i8, i32, i32 }
%struct.qed_dcbx_lldp_local = type { [4 x i32], [4 x i32] }
%struct.qed_dcbx_remote_params = type { %struct.qed_dcbx_params, i8 }
%struct.qed_dev = type { i32, i8, [16 x i8], i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, [6 x i8], i32, i32, i16, i16, ptr, ptr, i64, i32, i8, ptr, i8, [4 x %struct.qed_hwfn], i8, i8, i8, ptr, %struct.qed_tunnel_info, i8, i32, ptr, ptr, i32, i8, i8, i8, ptr, %struct.qed_dev_info, ptr, ptr, i32, i32, %struct.pci_params, %struct.qed_int_params, i8, %union.anon.106, ptr, ptr, [6 x i8], [8 x %struct.qed_dbg_feature], i8, i8, i8, [1024 x %struct.hlist_head], ptr, i8, i32, i32, i32, i16, i8 }
%struct.qed_tunnel_info = type { %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_udp_port, %struct.qed_tunn_update_udp_port, i8, i8 }
%struct.qed_tunn_update_type = type { i8, i8, i32 }
%struct.qed_tunn_update_udp_port = type { i8, i16 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.pci_params = type { i32, i32, i32, i32, i8 }
%struct.qed_int_params = type { %struct.qed_int_param, %struct.qed_int_param, ptr, i8, i8, i8, i8, i8 }
%struct.qed_int_param = type { i32, i8, i8 }
%union.anon.106 = type { ptr }
%struct.qed_dbg_feature = type { ptr, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.qed_common_cb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_dcbx_mib_meta_data = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.qed_mcp_info = type { %struct.list_head, %struct.spinlock, i8, %struct.spinlock, i32, i32, i32, i32, i16, i16, %struct.qed_mcp_link_params, %struct.qed_mcp_link_state, %struct.qed_mcp_link_capabilities, %struct.qed_mcp_function_info, ptr, ptr, i16, i32, i32, %struct.atomic_t }
%struct.qed_mcp_link_params = type { %struct.qed_mcp_link_speed_params, %struct.qed_mcp_link_pause_params, i32, %struct.qed_link_eee_params, i32, %struct.qed_mcp_link_speed_params, i32 }
%struct.qed_mcp_link_pause_params = type { i8, i8, i8 }
%struct.qed_link_eee_params = type { i32, i8, i8, i8, i8 }
%struct.qed_mcp_link_speed_params = type { i8, i32, i32 }
%struct.qed_mcp_link_state = type { i8, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.qed_mcp_link_capabilities = type { i32, i8, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.qed_mcp_function_info = type { i8, i32, i8, i8, [6 x i8], i64, i64, i16, i16 }
%struct.pf_update_ramrod_data = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.protocol_dcb_data, %struct.protocol_dcb_data, %struct.protocol_dcb_data, %struct.protocol_dcb_data, %struct.protocol_dcb_data, %struct.protocol_dcb_data, i16, i8, i8, %struct.pf_update_tunnel_config }
%struct.protocol_dcb_data = type { i8, i8, i8, i8, i8, i8 }
%struct.pf_update_tunnel_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, [3 x i16] }
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.dcb_app = type { i8, i8, i16 }
%struct.dcb_peer_app_info = type { i8, i8 }
%struct.cee_pfc = type { i8, i8, i8, i8 }
%struct.cee_pg = type { i8, i8, i8, i8, [8 x i8], [8 x i8] }

@qed_dcbx_get_priority_tc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013[%s:%d(%s)]Invalid priority %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_dcbx_get_priority_tc\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/qlogic/qed/qed_dcbx.c\00", [53 x i8] zeroinitializer }, align 32
@qed_dcbx_get_priority_tc._entry_ptr = internal global ptr @qed_dcbx_get_priority_tc._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_dcbx_get_priority_tc._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]Dcbx parameters not available\0A\00", [52 x i8] zeroinitializer }, align 32
@qed_dcbx_get_priority_tc._entry_ptr.6 = internal global ptr @qed_dcbx_get_priority_tc._entry.4, section ".printk_index", align 4
@qed_dcbx_config_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]Failed to send DCBX update request\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_dcbx_config_params\00", [41 x i8] zeroinitializer }, align 32
@qed_dcbx_config_params._entry_ptr = internal global ptr @qed_dcbx_config_params._entry, section ".printk_index", align 4
@qed_dcbnl_ops_pass = dso_local constant { %struct.qed_eth_dcbnl_ops, [48 x i8] } { %struct.qed_eth_dcbnl_ops { ptr @qed_dcbnl_ieee_getpfc, ptr @qed_dcbnl_ieee_setpfc, ptr @qed_dcbnl_ieee_getets, ptr @qed_dcbnl_ieee_setets, ptr @qed_dcbnl_ieee_peer_getets, ptr @qed_dcbnl_ieee_peer_getpfc, ptr @qed_dcbnl_ieee_getapp, ptr @qed_dcbnl_ieee_setapp, ptr @qed_dcbnl_getstate, ptr @qed_dcbnl_setstate, ptr @qed_dcbnl_getpgtccfgtx, ptr @qed_dcbnl_getpgbwgcfgtx, ptr @qed_dcbnl_getpgtccfgrx, ptr @qed_dcbnl_getpgbwgcfgrx, ptr @qed_dcbnl_getpfccfg, ptr @qed_dcbnl_setpfccfg, ptr @qed_dcbnl_getcap, ptr @qed_dcbnl_getnumtcs, ptr @qed_dcbnl_getpfcstate, ptr @qed_dcbnl_getapp, ptr @qed_dcbnl_getfeatcfg, ptr @qed_dcbnl_getdcbx, ptr @qed_dcbnl_setpgtccfgtx, ptr @qed_dcbnl_setpgtccfgrx, ptr @qed_dcbnl_setpgbwgcfgtx, ptr @qed_dcbnl_setpgbwgcfgrx, ptr @qed_dcbnl_setall, ptr @qed_dcbnl_setnumtcs, ptr @qed_dcbnl_setpfcstate, ptr @qed_dcbnl_setapp, ptr @qed_dcbnl_setdcbx, ptr @qed_dcbnl_setfeatcfg, ptr @qed_dcbnl_peer_getappinfo, ptr @qed_dcbnl_peer_getapptable, ptr @qed_dcbnl_cee_peer_getpfc, ptr @qed_dcbnl_cee_peer_getpg }, [48 x i8] zeroinitializer }, align 32
@qed_dcbx_read_mib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013[%s:%d(%s)]MIB read err, unknown mib type %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_dcbx_read_mib\00", [46 x i8] zeroinitializer }, align 32
@qed_dcbx_read_mib._entry_ptr = internal global ptr @qed_dcbx_read_mib._entry, section ".printk_index", align 4
@qed_dcbx_copy_mib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\015[%s:%d(%s)]mib type = %d, try count = %d prefix seq num  = %d suffix seq num = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_dcbx_copy_mib\00", [46 x i8] zeroinitializer }, align 32
@qed_dcbx_copy_mib._entry_ptr = internal global ptr @qed_dcbx_copy_mib._entry, section ".printk_index", align 4
@qed_dcbx_copy_mib._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\013[%s:%d(%s)]MIB read err, mib type = %d, try count = %d prefix seq num = %d suffix seq num = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@qed_dcbx_copy_mib._entry_ptr.15 = internal global ptr @qed_dcbx_copy_mib._entry.13, section ".printk_index", align 4
@qed_dcbx_process_tlv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]Num APP entries = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_dcbx_process_tlv\00", [43 x i8] zeroinitializer }, align 32
@qed_dcbx_process_tlv._entry_ptr = internal global ptr @qed_dcbx_process_tlv._entry, section ".printk_index", align 4
@qed_dcbx_process_tlv._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013[%s:%d(%s)]Invalid priority\0A\00", [33 x i8] zeroinitializer }, align 32
@qed_dcbx_process_tlv._entry_ptr.20 = internal global ptr @qed_dcbx_process_tlv._entry.18, section ".printk_index", align 4
@qed_dcbx_get_app_protocol_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015[%s:%d(%s)]No action required, App TLV entry = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qed_dcbx_get_app_protocol_type\00", [33 x i8] zeroinitializer }, align 32
@qed_dcbx_get_app_protocol_type._entry_ptr = internal global ptr @qed_dcbx_get_app_protocol_type._entry, section ".printk_index", align 4
@qed_dcbx_app_update = internal constant { [5 x %struct.qed_dcbx_app_metadata], [36 x i8] } { [5 x %struct.qed_dcbx_app_metadata] [%struct.qed_dcbx_app_metadata { i32 0, ptr @.str.23, i32 2 }, %struct.qed_dcbx_app_metadata { i32 1, ptr @.str.24, i32 1 }, %struct.qed_dcbx_app_metadata { i32 2, ptr @.str.25, i32 4 }, %struct.qed_dcbx_app_metadata { i32 3, ptr @.str.26, i32 4 }, %struct.qed_dcbx_app_metadata { i32 4, ptr @.str.27, i32 0 }], [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ISCSI\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FCOE\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ROCE\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ROCE_V2\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ETH\00", [28 x i8] zeroinitializer }, align 32
@qed_dcbx_dp_protocol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015[%s:%d(%s)]DCBX negotiated: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_dcbx_dp_protocol\00", [43 x i8] zeroinitializer }, align 32
@qed_dcbx_dp_protocol._entry_ptr = internal global ptr @qed_dcbx_dp_protocol._entry, section ".printk_index", align 4
@qed_dcbx_dp_protocol._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\015[%s:%d(%s)]%s info: update %d, enable %d, prio %d, tc %d, num_tc %d\0A\00", [57 x i8] zeroinitializer }, align 32
@qed_dcbx_dp_protocol._entry_ptr.32 = internal global ptr @qed_dcbx_dp_protocol._entry.30, section ".printk_index", align 4
@qed_dcbx_get_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.33, ptr @.str.2, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_dcbx_get_params\00", [44 x i8] zeroinitializer }, align 32
@qed_dcbx_get_params._entry_ptr = internal global ptr @qed_dcbx_get_params._entry, section ".printk_index", align 4
@qed_dcbx_get_app_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015[%s:%d(%s)]APP params: willing %d, valid %d error = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_dcbx_get_app_data\00", [42 x i8] zeroinitializer }, align 32
@qed_dcbx_get_app_data._entry_ptr = internal global ptr @qed_dcbx_get_app_data._entry, section ".printk_index", align 4
@qed_dcbx_get_ets_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\015[%s:%d(%s)]ETS params: willing %d, enabled = %d ets_cbs %d pri_tc_tbl_0 %x max_ets_tc %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_dcbx_get_ets_data\00", [42 x i8] zeroinitializer }, align 32
@qed_dcbx_get_ets_data._entry_ptr = internal global ptr @qed_dcbx_get_ets_data._entry, section ".printk_index", align 4
@qed_dcbx_get_ets_data._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]ETS params: max_ets_tc is forced to %d\0A\00", [43 x i8] zeroinitializer }, align 32
@qed_dcbx_get_ets_data._entry_ptr.40 = internal global ptr @qed_dcbx_get_ets_data._entry.38, section ".printk_index", align 4
@qed_dcbx_get_ets_data._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]elem %d  bw_tbl %x tsa_tbl %x\0A\00", [52 x i8] zeroinitializer }, align 32
@qed_dcbx_get_ets_data._entry_ptr.43 = internal global ptr @qed_dcbx_get_ets_data._entry.41, section ".printk_index", align 4
@qed_dcbx_get_pfc_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\015[%s:%d(%s)]PFC params: willing %d, pfc_bitmap %u max_tc = %u enabled = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_dcbx_get_pfc_data\00", [42 x i8] zeroinitializer }, align 32
@qed_dcbx_get_pfc_data._entry_ptr = internal global ptr @qed_dcbx_get_pfc_data._entry, section ".printk_index", align 4
@qed_dcbx_get_operational_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015[%s:%d(%s)]Dcbx is disabled\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qed_dcbx_get_operational_params\00", [32 x i8] zeroinitializer }, align 32
@qed_dcbx_get_operational_params._entry_ptr = internal global ptr @qed_dcbx_get_operational_params._entry, section ".printk_index", align 4
@qed_dcbx_get_operational_params._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015[%s:%d(%s)]Version support: ieee %d, cee %d, static %d\0A\00", [38 x i8] zeroinitializer }, align 32
@qed_dcbx_get_operational_params._entry_ptr.50 = internal global ptr @qed_dcbx_get_operational_params._entry.48, section ".printk_index", align 4
@qed_dcbx_get_priority_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\015[%s:%d(%s)]Priorities: iscsi %d, roce %d, roce v2 %d, fcoe %d, eth %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qed_dcbx_get_priority_info\00", [37 x i8] zeroinitializer }, align 32
@qed_dcbx_get_priority_info._entry_ptr = internal global ptr @qed_dcbx_get_priority_info._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qed_dcbx_set_local_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 1186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015[%s:%d(%s)]Dcbx version = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qed_dcbx_set_local_params\00", [38 x i8] zeroinitializer }, align 32
@qed_dcbx_set_local_params._entry_ptr = internal global ptr @qed_dcbx_set_local_params._entry, section ".printk_index", align 4
@qed_dcbx_set_pfc_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015[%s:%d(%s)]pfc = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_dcbx_set_pfc_data\00", [42 x i8] zeroinitializer }, align 32
@qed_dcbx_set_pfc_data._entry_ptr = internal global ptr @qed_dcbx_set_pfc_data._entry, section ".printk_index", align 4
@qed_dcbnl_get_ieee_pfc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 2045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015[%s:%d(%s)]DCBX is not enabled/operational in IEEE mode\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_dcbnl_get_ieee_pfc\00", [41 x i8] zeroinitializer }, align 32
@qed_dcbnl_get_ieee_pfc._entry_ptr = internal global ptr @qed_dcbnl_get_ieee_pfc._entry, section ".printk_index", align 4
@qed_dcbnl_get_dcbx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]DCBX is not enabled/operational\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_dcbnl_get_dcbx\00", [45 x i8] zeroinitializer }, align 32
@qed_dcbnl_get_dcbx._entry_ptr = internal global ptr @qed_dcbnl_get_dcbx._entry, section ".printk_index", align 4
@qed_dcbnl_ieee_setpfc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.61, ptr @.str.2, i32 2093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_dcbnl_ieee_setpfc\00", [42 x i8] zeroinitializer }, align 32
@qed_dcbnl_ieee_setpfc._entry_ptr = internal global ptr @qed_dcbnl_ieee_setpfc._entry, section ".printk_index", align 4
@qed_dcbnl_get_ieee_ets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.62, ptr @.str.2, i32 2135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_dcbnl_get_ieee_ets\00", [41 x i8] zeroinitializer }, align 32
@qed_dcbnl_get_ieee_ets._entry_ptr = internal global ptr @qed_dcbnl_get_ieee_ets._entry, section ".printk_index", align 4
@qed_dcbnl_ieee_setets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.63, ptr @.str.2, i32 2183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_dcbnl_ieee_setets\00", [42 x i8] zeroinitializer }, align 32
@qed_dcbnl_ieee_setets._entry_ptr = internal global ptr @qed_dcbnl_ieee_setets._entry, section ".printk_index", align 4
@qed_dcbnl_ieee_getapp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 2261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]selector = %d protocol = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_dcbnl_ieee_getapp\00", [42 x i8] zeroinitializer }, align 32
@qed_dcbnl_ieee_getapp._entry_ptr = internal global ptr @qed_dcbnl_ieee_getapp._entry, section ".printk_index", align 4
@qed_dcbnl_ieee_getapp._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 2265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]Invalid selector field value %d\0A\00", [50 x i8] zeroinitializer }, align 32
@qed_dcbnl_ieee_getapp._entry_ptr.68 = internal global ptr @qed_dcbnl_ieee_getapp._entry.66, section ".printk_index", align 4
@qed_dcbnl_ieee_getapp._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.65, ptr @.str.2, i32 2274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qed_dcbnl_ieee_getapp._entry_ptr.70 = internal global ptr @qed_dcbnl_ieee_getapp._entry.69, section ".printk_index", align 4
@qed_dcbnl_ieee_getapp._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.65, ptr @.str.2, i32 2290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013[%s:%d(%s)]App entry (%d, %d) not found\0A\00", [53 x i8] zeroinitializer }, align 32
@qed_dcbnl_ieee_getapp._entry_ptr.73 = internal global ptr @qed_dcbnl_ieee_getapp._entry.71, section ".printk_index", align 4
@qed_dcbnl_ieee_setapp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 2313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]selector = %d protocol = %d pri = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_dcbnl_ieee_setapp\00", [42 x i8] zeroinitializer }, align 32
@qed_dcbnl_ieee_setapp._entry_ptr = internal global ptr @qed_dcbnl_ieee_setapp._entry, section ".printk_index", align 4
@qed_dcbnl_ieee_setapp._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 2315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015[%s:%d(%s)]Invalid priority %d\0A\00", [62 x i8] zeroinitializer }, align 32
@qed_dcbnl_ieee_setapp._entry_ptr.78 = internal global ptr @qed_dcbnl_ieee_setapp._entry.76, section ".printk_index", align 4
@qed_dcbnl_ieee_setapp._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.75, ptr @.str.2, i32 2321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qed_dcbnl_ieee_setapp._entry_ptr.80 = internal global ptr @qed_dcbnl_ieee_setapp._entry.79, section ".printk_index", align 4
@qed_dcbnl_ieee_setapp._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.75, ptr @.str.2, i32 2330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qed_dcbnl_ieee_setapp._entry_ptr.82 = internal global ptr @qed_dcbnl_ieee_setapp._entry.81, section ".printk_index", align 4
@qed_dcbnl_ieee_setapp._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.75, ptr @.str.2, i32 2355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013[%s:%d(%s)]App table is full\0A\00", [32 x i8] zeroinitializer }, align 32
@qed_dcbnl_ieee_setapp._entry_ptr.85 = internal global ptr @qed_dcbnl_ieee_setapp._entry.83, section ".printk_index", align 4
@qed_dcbnl_getstate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015[%s:%d(%s)]DCB state = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_dcbnl_getstate\00", [45 x i8] zeroinitializer }, align 32
@qed_dcbnl_getstate._entry_ptr = internal global ptr @qed_dcbnl_getstate._entry, section ".printk_index", align 4
@qed_dcbnl_setstate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.88, ptr @.str.2, i32 1329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_dcbnl_setstate\00", [45 x i8] zeroinitializer }, align 32
@qed_dcbnl_setstate._entry_ptr = internal global ptr @qed_dcbnl_setstate._entry, section ".printk_index", align 4
@qed_dcbnl_getpgtccfgtx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 1355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015[%s:%d(%s)]tc = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_dcbnl_getpgtccfgtx\00", [41 x i8] zeroinitializer }, align 32
@qed_dcbnl_getpgtccfgtx._entry_ptr = internal global ptr @qed_dcbnl_getpgtccfgtx._entry, section ".printk_index", align 4
@qed_dcbnl_getpgtccfgtx._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.2, i32 1358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015[%s:%d(%s)]Invalid tc %d\0A\00", [36 x i8] zeroinitializer }, align 32
@qed_dcbnl_getpgtccfgtx._entry_ptr.93 = internal global ptr @qed_dcbnl_getpgtccfgtx._entry.91, section ".printk_index", align 4
@qed_dcbnl_getpgbwgcfgtx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 1376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\015[%s:%d(%s)]pgid = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_dcbnl_getpgbwgcfgtx\00", [40 x i8] zeroinitializer }, align 32
@qed_dcbnl_getpgbwgcfgtx._entry_ptr = internal global ptr @qed_dcbnl_getpgbwgcfgtx._entry, section ".printk_index", align 4
@qed_dcbnl_getpgbwgcfgtx._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 1378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015[%s:%d(%s)]Invalid pgid %d\0A\00", [34 x i8] zeroinitializer }, align 32
@qed_dcbnl_getpgbwgcfgtx._entry_ptr.98 = internal global ptr @qed_dcbnl_getpgbwgcfgtx._entry.96, section ".printk_index", align 4
@qed_dcbnl_getpgbwgcfgtx._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.2, i32 1387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015[%s:%d(%s)]bw_pct = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@qed_dcbnl_getpgbwgcfgtx._entry_ptr.101 = internal global ptr @qed_dcbnl_getpgbwgcfgtx._entry.99, section ".printk_index", align 4
@qed_dcbnl_getpgtccfgrx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 1394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]Rx ETS is not supported\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_dcbnl_getpgtccfgrx\00", [41 x i8] zeroinitializer }, align 32
@qed_dcbnl_getpgtccfgrx._entry_ptr = internal global ptr @qed_dcbnl_getpgtccfgrx._entry, section ".printk_index", align 4
@qed_dcbnl_getpgbwgcfgrx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.104, ptr @.str.2, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_dcbnl_getpgbwgcfgrx\00", [40 x i8] zeroinitializer }, align 32
@qed_dcbnl_getpgbwgcfgrx._entry_ptr = internal global ptr @qed_dcbnl_getpgbwgcfgrx._entry, section ".printk_index", align 4
@qed_dcbnl_getpfccfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 1411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015[%s:%d(%s)]priority = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_dcbnl_getpfccfg\00", [44 x i8] zeroinitializer }, align 32
@qed_dcbnl_getpfccfg._entry_ptr = internal global ptr @qed_dcbnl_getpfccfg._entry, section ".printk_index", align 4
@qed_dcbnl_getpfccfg._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.106, ptr @.str.2, i32 1413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qed_dcbnl_getpfccfg._entry_ptr.108 = internal global ptr @qed_dcbnl_getpfccfg._entry.107, section ".printk_index", align 4
@qed_dcbnl_getpfccfg._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.106, ptr @.str.2, i32 1422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015[%s:%d(%s)]setting = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@qed_dcbnl_getpfccfg._entry_ptr.111 = internal global ptr @qed_dcbnl_getpfccfg._entry.109, section ".printk_index", align 4
@qed_dcbnl_setpfccfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]priority = %d setting = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_dcbnl_setpfccfg\00", [44 x i8] zeroinitializer }, align 32
@qed_dcbnl_setpfccfg._entry_ptr = internal global ptr @qed_dcbnl_setpfccfg._entry, section ".printk_index", align 4
@qed_dcbnl_setpfccfg._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.113, ptr @.str.2, i32 1436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qed_dcbnl_setpfccfg._entry_ptr.115 = internal global ptr @qed_dcbnl_setpfccfg._entry.114, section ".printk_index", align 4
@qed_dcbnl_getcap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 1463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015[%s:%d(%s)]capid = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qed_dcbnl_getcap\00", [47 x i8] zeroinitializer }, align 32
@qed_dcbnl_getcap._entry_ptr = internal global ptr @qed_dcbnl_getcap._entry, section ".printk_index", align 4
@qed_dcbnl_getcap._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.2, i32 1488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015[%s:%d(%s)]id = %d caps = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@qed_dcbnl_getcap._entry_ptr.120 = internal global ptr @qed_dcbnl_getcap._entry.118, section ".printk_index", align 4
@qed_dcbnl_getnumtcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 1500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\015[%s:%d(%s)]tcid = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_dcbnl_getnumtcs\00", [44 x i8] zeroinitializer }, align 32
@qed_dcbnl_getnumtcs._entry_ptr = internal global ptr @qed_dcbnl_getnumtcs._entry, section ".printk_index", align 4
@qed_dcbnl_getnumtcs._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.2, i32 1517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015[%s:%d(%s)]numtcs = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@qed_dcbnl_getnumtcs._entry_ptr.125 = internal global ptr @qed_dcbnl_getnumtcs._entry.123, section ".printk_index", align 4
@qed_dcbnl_getpfcstate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 1533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015[%s:%d(%s)]pfc state = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_dcbnl_getpfcstate\00", [42 x i8] zeroinitializer }, align 32
@qed_dcbnl_getpfcstate._entry_ptr = internal global ptr @qed_dcbnl_getpfcstate._entry, section ".printk_index", align 4
@qed_dcbnl_getapp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.128, ptr @.str.2, i32 1748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qed_dcbnl_getapp\00", [47 x i8] zeroinitializer }, align 32
@qed_dcbnl_getapp._entry_ptr = internal global ptr @qed_dcbnl_getapp._entry, section ".printk_index", align 4
@qed_dcbnl_getfeatcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 1858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015[%s:%d(%s)]Feature id  = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_dcbnl_getfeatcfg\00", [43 x i8] zeroinitializer }, align 32
@qed_dcbnl_getfeatcfg._entry_ptr = internal global ptr @qed_dcbnl_getfeatcfg._entry, section ".printk_index", align 4
@qed_dcbnl_getfeatcfg._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.2, i32 1884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]Invalid feature-ID %d\0A\00", [60 x i8] zeroinitializer }, align 32
@qed_dcbnl_getfeatcfg._entry_ptr.133 = internal global ptr @qed_dcbnl_getfeatcfg._entry.131, section ".printk_index", align 4
@qed_dcbnl_getfeatcfg._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.130, ptr @.str.2, i32 1889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015[%s:%d(%s)]flags = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@qed_dcbnl_getfeatcfg._entry_ptr.136 = internal global ptr @qed_dcbnl_getfeatcfg._entry.134, section ".printk_index", align 4
@qed_dcbnl_getdcbx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.2, i32 1556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015[%s:%d(%s)]dcb mode = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_dcbnl_getdcbx\00", [46 x i8] zeroinitializer }, align 32
@qed_dcbnl_getdcbx._entry_ptr = internal global ptr @qed_dcbnl_getdcbx._entry, section ".printk_index", align 4
@qed_dcbnl_setpgtccfgtx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 1573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015[%s:%d(%s)]tc = %d pri_type = %d pgid = %d bw_pct = %d up_map = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_dcbnl_setpgtccfgtx\00", [41 x i8] zeroinitializer }, align 32
@qed_dcbnl_setpgtccfgtx._entry_ptr = internal global ptr @qed_dcbnl_setpgtccfgtx._entry, section ".printk_index", align 4
@qed_dcbnl_setpgtccfgtx._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.140, ptr @.str.2, i32 1576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qed_dcbnl_setpgtccfgtx._entry_ptr.142 = internal global ptr @qed_dcbnl_setpgtccfgtx._entry.141, section ".printk_index", align 4
@qed_dcbnl_setpgtccfgrx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.143, ptr @.str.2, i32 1600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_dcbnl_setpgtccfgrx\00", [41 x i8] zeroinitializer }, align 32
@qed_dcbnl_setpgtccfgrx._entry_ptr = internal global ptr @qed_dcbnl_setpgtccfgrx._entry, section ".printk_index", align 4
@qed_dcbnl_setpgbwgcfgtx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.2, i32 1610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]pgid = %d bw_pct = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_dcbnl_setpgbwgcfgtx\00", [40 x i8] zeroinitializer }, align 32
@qed_dcbnl_setpgbwgcfgtx._entry_ptr = internal global ptr @qed_dcbnl_setpgbwgcfgtx._entry, section ".printk_index", align 4
@qed_dcbnl_setpgbwgcfgtx._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.145, ptr @.str.2, i32 1612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qed_dcbnl_setpgbwgcfgtx._entry_ptr.147 = internal global ptr @qed_dcbnl_setpgbwgcfgtx._entry.146, section ".printk_index", align 4
@qed_dcbnl_setpgbwgcfgrx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.148, ptr @.str.2, i32 1635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_dcbnl_setpgbwgcfgrx\00", [40 x i8] zeroinitializer }, align 32
@qed_dcbnl_setpgbwgcfgrx._entry_ptr = internal global ptr @qed_dcbnl_setpgbwgcfgrx._entry, section ".printk_index", align 4
@qed_dcbnl_setnumtcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.2, i32 1668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015[%s:%d(%s)]tcid = %d num = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_dcbnl_setnumtcs\00", [44 x i8] zeroinitializer }, align 32
@qed_dcbnl_setnumtcs._entry_ptr = internal global ptr @qed_dcbnl_setnumtcs._entry, section ".printk_index", align 4
@qed_dcbnl_setnumtcs._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str.2, i32 1684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015[%s:%d(%s)]Invalid tcid %d\0A\00", [34 x i8] zeroinitializer }, align 32
@qed_dcbnl_setnumtcs._entry_ptr.153 = internal global ptr @qed_dcbnl_setnumtcs._entry.151, section ".printk_index", align 4
@qed_dcbnl_setpfcstate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.2, i32 1706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015[%s:%d(%s)]new state = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_dcbnl_setpfcstate\00", [42 x i8] zeroinitializer }, align 32
@qed_dcbnl_setpfcstate._entry_ptr = internal global ptr @qed_dcbnl_setpfcstate._entry, section ".printk_index", align 4
@qed_dcbnl_setapp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.156, ptr @.str.2, i32 1786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qed_dcbnl_setapp\00", [47 x i8] zeroinitializer }, align 32
@qed_dcbnl_setapp._entry_ptr = internal global ptr @qed_dcbnl_setapp._entry, section ".printk_index", align 4
@qed_dcbnl_setdcbx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.2, i32 1813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015[%s:%d(%s)]new mode = %x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_dcbnl_setdcbx\00", [46 x i8] zeroinitializer }, align 32
@qed_dcbnl_setdcbx._entry_ptr = internal global ptr @qed_dcbnl_setdcbx._entry, section ".printk_index", align 4
@qed_dcbnl_setdcbx._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.158, ptr @.str.2, i32 1817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015[%s:%d(%s)]Allowed modes are cee, ieee or static\0A\00", [44 x i8] zeroinitializer }, align 32
@qed_dcbnl_setdcbx._entry_ptr.161 = internal global ptr @qed_dcbnl_setdcbx._entry.159, section ".printk_index", align 4
@qed_dcbnl_setfeatcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.2, i32 1904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]featid = %d flags = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_dcbnl_setfeatcfg\00", [43 x i8] zeroinitializer }, align 32
@qed_dcbnl_setfeatcfg._entry_ptr = internal global ptr @qed_dcbnl_setfeatcfg._entry, section ".printk_index", align 4
@qed_dcbnl_setfeatcfg._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.163, ptr @.str.2, i32 1928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qed_dcbnl_setfeatcfg._entry_ptr.165 = internal global ptr @qed_dcbnl_setfeatcfg._entry.164, section ".printk_index", align 4
@qed_dcbnl_cee_peer_getpfc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.2, i32 2004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]pfc state = %d tcs_supported = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qed_dcbnl_cee_peer_getpfc\00", [38 x i8] zeroinitializer }, align 32
@qed_dcbnl_cee_peer_getpfc._entry_ptr = internal global ptr @qed_dcbnl_cee_peer_getpfc._entry, section ".printk_index", align 4
@qed_dcbnl_cee_peer_getpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.2, i32 2026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015[%s:%d(%s)]willing = %d\00", [38 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_dcbnl_cee_peer_getpg\00", [39 x i8] zeroinitializer }, align 32
@qed_dcbnl_cee_peer_getpg._entry_ptr = internal global ptr @qed_dcbnl_cee_peer_getpg._entry, section ".printk_index", align 4
@switch.table.qed_dcbx_config_params = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4096, i32 8448, i32 12544, i32 16640], [16 x i8] zeroinitializer }, align 32
@switch.table.qed_dcbnl_getcap = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\01\01\80\80\01\00\1C", [24 x i8] zeroinitializer }, align 32
@switch.table.qed_dcbnl_getcap.170 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\00\00\00\00\00\01\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.171 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.173 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.175 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.176 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 979, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 984, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1230, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [19 x i8] c"qed_dcbnl_ops_pass\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2375, i32 32 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 845, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 397, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 405, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 262, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 274, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 237, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [20 x i8] c"qed_dcbx_app_update\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 41, i32 43 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 42, i32 24 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 43, i32 23 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 44, i32 23 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 45, i32 26 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 46, i32 22 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 151, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 157, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 733, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 514, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 561, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 569, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 585, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 539, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 650, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 668, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 448, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1185, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1047, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2045, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1297, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2093, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2135, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2183, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2260, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2264, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2274, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2289, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2312, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2315, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2320, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2330, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2355, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1316, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1329, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1355, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1358, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1376, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1378, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1387, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1394, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1401, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1411, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1413, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1422, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1433, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1436, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1463, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1488, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1500, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1517, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1533, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1748, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1858, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1884, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1889, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1556, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1571, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1576, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1600, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1610, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1612, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1635, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1668, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1684, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1706, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1786, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1813, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1817, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1903, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1928, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2003, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.744 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.745 = private constant [46 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2026, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant [36 x i8] c"switch.table.qed_dcbx_config_params\00", align 1
@___asan_gen_.748 = private unnamed_addr constant [30 x i8] c"switch.table.qed_dcbnl_getcap\00", align 1
@___asan_gen_.749 = private unnamed_addr constant [34 x i8] c"switch.table.qed_dcbnl_getcap.170\00", align 1
@llvm.compiler.used = appending global [269 x ptr] [ptr @qed_dcbnl_cee_peer_getpfc._entry, ptr @qed_dcbnl_cee_peer_getpfc._entry_ptr, ptr @qed_dcbnl_cee_peer_getpg._entry, ptr @qed_dcbnl_cee_peer_getpg._entry_ptr, ptr @qed_dcbnl_get_dcbx._entry, ptr @qed_dcbnl_get_dcbx._entry_ptr, ptr @qed_dcbnl_get_ieee_ets._entry, ptr @qed_dcbnl_get_ieee_ets._entry_ptr, ptr @qed_dcbnl_get_ieee_pfc._entry, ptr @qed_dcbnl_get_ieee_pfc._entry_ptr, ptr @qed_dcbnl_getapp._entry, ptr @qed_dcbnl_getapp._entry_ptr, ptr @qed_dcbnl_getcap._entry, ptr @qed_dcbnl_getcap._entry.118, ptr @qed_dcbnl_getcap._entry_ptr, ptr @qed_dcbnl_getcap._entry_ptr.120, ptr @qed_dcbnl_getdcbx._entry, ptr @qed_dcbnl_getdcbx._entry_ptr, ptr @qed_dcbnl_getfeatcfg._entry, ptr @qed_dcbnl_getfeatcfg._entry.131, ptr @qed_dcbnl_getfeatcfg._entry.134, ptr @qed_dcbnl_getfeatcfg._entry_ptr, ptr @qed_dcbnl_getfeatcfg._entry_ptr.133, ptr @qed_dcbnl_getfeatcfg._entry_ptr.136, ptr @qed_dcbnl_getnumtcs._entry, ptr @qed_dcbnl_getnumtcs._entry.123, ptr @qed_dcbnl_getnumtcs._entry_ptr, ptr @qed_dcbnl_getnumtcs._entry_ptr.125, ptr @qed_dcbnl_getpfccfg._entry, ptr @qed_dcbnl_getpfccfg._entry.107, ptr @qed_dcbnl_getpfccfg._entry.109, ptr @qed_dcbnl_getpfccfg._entry_ptr, ptr @qed_dcbnl_getpfccfg._entry_ptr.108, ptr @qed_dcbnl_getpfccfg._entry_ptr.111, ptr @qed_dcbnl_getpfcstate._entry, ptr @qed_dcbnl_getpfcstate._entry_ptr, ptr @qed_dcbnl_getpgbwgcfgrx._entry, ptr @qed_dcbnl_getpgbwgcfgrx._entry_ptr, ptr @qed_dcbnl_getpgbwgcfgtx._entry, ptr @qed_dcbnl_getpgbwgcfgtx._entry.96, ptr @qed_dcbnl_getpgbwgcfgtx._entry.99, ptr @qed_dcbnl_getpgbwgcfgtx._entry_ptr, ptr @qed_dcbnl_getpgbwgcfgtx._entry_ptr.101, ptr @qed_dcbnl_getpgbwgcfgtx._entry_ptr.98, ptr @qed_dcbnl_getpgtccfgrx._entry, ptr @qed_dcbnl_getpgtccfgrx._entry_ptr, ptr @qed_dcbnl_getpgtccfgtx._entry, ptr @qed_dcbnl_getpgtccfgtx._entry.91, ptr @qed_dcbnl_getpgtccfgtx._entry_ptr, ptr @qed_dcbnl_getpgtccfgtx._entry_ptr.93, ptr @qed_dcbnl_getstate._entry, ptr @qed_dcbnl_getstate._entry_ptr, ptr @qed_dcbnl_ieee_getapp._entry, ptr @qed_dcbnl_ieee_getapp._entry.66, ptr @qed_dcbnl_ieee_getapp._entry.69, ptr @qed_dcbnl_ieee_getapp._entry.71, ptr @qed_dcbnl_ieee_getapp._entry_ptr, ptr @qed_dcbnl_ieee_getapp._entry_ptr.68, ptr @qed_dcbnl_ieee_getapp._entry_ptr.70, ptr @qed_dcbnl_ieee_getapp._entry_ptr.73, ptr @qed_dcbnl_ieee_setapp._entry, ptr @qed_dcbnl_ieee_setapp._entry.76, ptr @qed_dcbnl_ieee_setapp._entry.79, ptr @qed_dcbnl_ieee_setapp._entry.81, ptr @qed_dcbnl_ieee_setapp._entry.83, ptr @qed_dcbnl_ieee_setapp._entry_ptr, ptr @qed_dcbnl_ieee_setapp._entry_ptr.78, ptr @qed_dcbnl_ieee_setapp._entry_ptr.80, ptr @qed_dcbnl_ieee_setapp._entry_ptr.82, ptr @qed_dcbnl_ieee_setapp._entry_ptr.85, ptr @qed_dcbnl_ieee_setets._entry, ptr @qed_dcbnl_ieee_setets._entry_ptr, ptr @qed_dcbnl_ieee_setpfc._entry, ptr @qed_dcbnl_ieee_setpfc._entry_ptr, ptr @qed_dcbnl_setapp._entry, ptr @qed_dcbnl_setapp._entry_ptr, ptr @qed_dcbnl_setdcbx._entry, ptr @qed_dcbnl_setdcbx._entry.159, ptr @qed_dcbnl_setdcbx._entry_ptr, ptr @qed_dcbnl_setdcbx._entry_ptr.161, ptr @qed_dcbnl_setfeatcfg._entry, ptr @qed_dcbnl_setfeatcfg._entry.164, ptr @qed_dcbnl_setfeatcfg._entry_ptr, ptr @qed_dcbnl_setfeatcfg._entry_ptr.165, ptr @qed_dcbnl_setnumtcs._entry, ptr @qed_dcbnl_setnumtcs._entry.151, ptr @qed_dcbnl_setnumtcs._entry_ptr, ptr @qed_dcbnl_setnumtcs._entry_ptr.153, ptr @qed_dcbnl_setpfccfg._entry, ptr @qed_dcbnl_setpfccfg._entry.114, ptr @qed_dcbnl_setpfccfg._entry_ptr, ptr @qed_dcbnl_setpfccfg._entry_ptr.115, ptr @qed_dcbnl_setpfcstate._entry, ptr @qed_dcbnl_setpfcstate._entry_ptr, ptr @qed_dcbnl_setpgbwgcfgrx._entry, ptr @qed_dcbnl_setpgbwgcfgrx._entry_ptr, ptr @qed_dcbnl_setpgbwgcfgtx._entry, ptr @qed_dcbnl_setpgbwgcfgtx._entry.146, ptr @qed_dcbnl_setpgbwgcfgtx._entry_ptr, ptr @qed_dcbnl_setpgbwgcfgtx._entry_ptr.147, ptr @qed_dcbnl_setpgtccfgrx._entry, ptr @qed_dcbnl_setpgtccfgrx._entry_ptr, ptr @qed_dcbnl_setpgtccfgtx._entry, ptr @qed_dcbnl_setpgtccfgtx._entry.141, ptr @qed_dcbnl_setpgtccfgtx._entry_ptr, ptr @qed_dcbnl_setpgtccfgtx._entry_ptr.142, ptr @qed_dcbnl_setstate._entry, ptr @qed_dcbnl_setstate._entry_ptr, ptr @qed_dcbx_config_params._entry, ptr @qed_dcbx_config_params._entry_ptr, ptr @qed_dcbx_copy_mib._entry, ptr @qed_dcbx_copy_mib._entry.13, ptr @qed_dcbx_copy_mib._entry_ptr, ptr @qed_dcbx_copy_mib._entry_ptr.15, ptr @qed_dcbx_dp_protocol._entry, ptr @qed_dcbx_dp_protocol._entry.30, ptr @qed_dcbx_dp_protocol._entry_ptr, ptr @qed_dcbx_dp_protocol._entry_ptr.32, ptr @qed_dcbx_get_app_data._entry, ptr @qed_dcbx_get_app_data._entry_ptr, ptr @qed_dcbx_get_app_protocol_type._entry, ptr @qed_dcbx_get_app_protocol_type._entry_ptr, ptr @qed_dcbx_get_ets_data._entry, ptr @qed_dcbx_get_ets_data._entry.38, ptr @qed_dcbx_get_ets_data._entry.41, ptr @qed_dcbx_get_ets_data._entry_ptr, ptr @qed_dcbx_get_ets_data._entry_ptr.40, ptr @qed_dcbx_get_ets_data._entry_ptr.43, ptr @qed_dcbx_get_operational_params._entry, ptr @qed_dcbx_get_operational_params._entry.48, ptr @qed_dcbx_get_operational_params._entry_ptr, ptr @qed_dcbx_get_operational_params._entry_ptr.50, ptr @qed_dcbx_get_params._entry, ptr @qed_dcbx_get_params._entry_ptr, ptr @qed_dcbx_get_pfc_data._entry, ptr @qed_dcbx_get_pfc_data._entry_ptr, ptr @qed_dcbx_get_priority_info._entry, ptr @qed_dcbx_get_priority_info._entry_ptr, ptr @qed_dcbx_get_priority_tc._entry, ptr @qed_dcbx_get_priority_tc._entry.4, ptr @qed_dcbx_get_priority_tc._entry_ptr, ptr @qed_dcbx_get_priority_tc._entry_ptr.6, ptr @qed_dcbx_process_tlv._entry, ptr @qed_dcbx_process_tlv._entry.18, ptr @qed_dcbx_process_tlv._entry_ptr, ptr @qed_dcbx_process_tlv._entry_ptr.20, ptr @qed_dcbx_read_mib._entry, ptr @qed_dcbx_read_mib._entry_ptr, ptr @qed_dcbx_set_local_params._entry, ptr @qed_dcbx_set_local_params._entry_ptr, ptr @qed_dcbx_set_pfc_data._entry, ptr @qed_dcbx_set_pfc_data._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @qed_dcbnl_ops_pass, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @qed_dcbx_app_update, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.160, ptr @.str.162, ptr @.str.163, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @switch.table.qed_dcbx_config_params, ptr @switch.table.qed_dcbnl_getcap, ptr @switch.table.qed_dcbnl_getcap.170], section "llvm.metadata"
@0 = internal global [193 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_get_priority_tc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_get_priority_tc._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_config_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_ops_pass to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_read_mib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_copy_mib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_copy_mib._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_process_tlv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_process_tlv._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_get_app_protocol_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_app_update to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_dp_protocol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_dp_protocol._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_get_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_get_app_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_get_ets_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_get_ets_data._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_get_ets_data._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_get_pfc_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_get_operational_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_get_operational_params._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_get_priority_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_set_local_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbx_set_pfc_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_get_ieee_pfc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_get_dcbx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_ieee_setpfc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_get_ieee_ets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_ieee_setets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_ieee_getapp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_ieee_getapp._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_ieee_getapp._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_ieee_getapp._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_ieee_setapp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_ieee_setapp._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_ieee_setapp._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_ieee_setapp._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_ieee_setapp._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getstate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_setstate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getpgtccfgtx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getpgtccfgtx._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getpgbwgcfgtx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getpgbwgcfgtx._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getpgbwgcfgtx._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getpgtccfgrx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getpgbwgcfgrx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getpfccfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getpfccfg._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getpfccfg._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_setpfccfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_setpfccfg._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getcap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getcap._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getnumtcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getnumtcs._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getpfcstate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getapp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getfeatcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getfeatcfg._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getfeatcfg._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_getdcbx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_setpgtccfgtx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_setpgtccfgtx._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_setpgtccfgrx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_setpgbwgcfgtx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_setpgbwgcfgtx._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_setpgbwgcfgrx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_setnumtcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_setnumtcs._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_setpfcstate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_setapp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_setdcbx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_setdcbx._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_setfeatcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_setfeatcfg._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_cee_peer_getpfc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dcbnl_cee_peer_getpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_dcbx_config_params to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_dcbnl_getcap to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_dcbnl_getcap.170 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_dcbx_mib_update_event(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %type.i.i = alloca i32, align 4
  %data.i = alloca %struct.qed_dcbx_results, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qed_dcbx_read_mib(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then1, label %if.end11.thread

if.end11.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %p_dcbx_info59 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %0 = ptrtoint ptr %p_dcbx_info59 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_dcbx_info59, align 4
  %get60 = getelementptr inbounds %struct.qed_dcbx_info, ptr %1, i32 0, i32 7
  %call1261 = tail call fastcc i32 @qed_dcbx_get_params(ptr noundef %p_hwfn, ptr noundef %get60, i32 noundef %type)
  br label %if.end29

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %data.i) #7
  %2 = call ptr @memset(ptr %data.i, i32 0, i32 27)
  %p_dcbx_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %3 = ptrtoint ptr %p_dcbx_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p_dcbx_info.i, align 4
  %flags1.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %4, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags1.i, align 4
  %7 = trunc i32 %6 to i8
  %conv.i = and i8 %7, 7
  %app.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %4, i32 0, i32 4, i32 2, i32 2
  %app_pri_tbl.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %4, i32 0, i32 4, i32 2, i32 2, i32 1
  %pri_tc_tbl7.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %4, i32 0, i32 4, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %pri_tc_tbl7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pri_tc_tbl7.i, align 4
  %10 = ptrtoint ptr %app.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %app.i, align 4
  %and9.i = lshr i32 %11, 16
  %shr10.i = and i32 %and9.i, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i.i) #7
  %12 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %type.i.i, align 4, !annotation !358
  %dp_level.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %13 = ptrtoint ptr %dp_level.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dp_level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.i.i = icmp eq i8 %14, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.then1.do.end9.i.i_crit_edge

if.then1.do.end9.i.i_crit_edge:                   ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i.i

land.rhs.i.i:                                     ; preds = %if.then1
  %dp_module.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %15 = ptrtoint ptr %dp_module.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dp_module.i.i, align 4
  %and.i.i = and i32 %16, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.do.end9.i.i_crit_edge, label %do.end.i.i, !prof !359

land.rhs.i.i.do.end9.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 262, ptr noundef nonnull %name.i.i, i32 noundef %shr10.i) #10
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %do.end.i.i, %land.rhs.i.i.do.end9.i.i_crit_edge, %if.then1.do.end9.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv.i)
  %cmp11.i.i = icmp eq i8 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr10.i)
  %cmp13145.i.not.i = icmp eq i32 %shr10.i, 0
  br i1 %cmp13145.i.not.i, label %do.end9.i.i.for.end.i.i_crit_edge, label %for.body.i.preheader.i

do.end9.i.i.for.end.i.i_crit_edge:                ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.preheader.i:                           ; preds = %do.end9.i.i
  %hw_info.i.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %i.0147.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %eth_tlv.0.off0146.i.i = phi i1 [ %eth_tlv.2.off0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ false, %for.body.i.preheader.i ]
  %arrayidx.i.i = getelementptr %struct.dcbx_app_priority_entry, ptr %app_pri_tbl.i, i32 %i.0147.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %conv23.i.i = and i32 %18, 255
  %19 = tail call i32 @llvm.cttz.i32(i32 %conv23.i.i, i1 true) #7, !range !360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23.i.i)
  %iszero.i.i = icmp eq i32 %conv23.i.i, 0
  %sub.i.i = select i1 %iszero.i.i, i32 -1, i32 %19
  br i1 %iszero.i.i, label %qed_dcbx_process_mib_info.exit, label %if.end44.i.i

if.end44.i.i:                                     ; preds = %for.body.i.i
  %shr.i.i = lshr i32 %18, 16
  %conv17.i.i = trunc i32 %shr.i.i to i16
  %call52.i.i = call fastcc zeroext i1 @qed_dcbx_get_app_protocol_type(ptr noundef %p_hwfn, i32 noundef %18, i16 noundef zeroext %conv17.i.i, ptr noundef nonnull %type.i.i, i1 noundef zeroext %cmp11.i.i) #7
  br i1 %call52.i.i, label %if.then53.i.i, label %if.end44.i.i.for.inc.i.i_crit_edge

if.end44.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then53.i.i:                                    ; preds = %if.end44.i.i
  %.neg.i.i = mul nsw i32 %sub.i.i, -4
  %mul.i.i = add nsw i32 %.neg.i.i, 28
  %shr46.i.i = lshr i32 %9, %mul.i.i
  %20 = trunc i32 %shr46.i.i to i8
  %conv48.i.i = and i8 %20, 7
  %21 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp54.i.i = icmp eq i32 %22, 4
  %23 = xor i1 %cmp54.i.i, true
  %conv59.i.i = trunc i32 %sub.i.i to i8
  %frombool1.i.i.i = zext i1 %23 to i8
  %arrayidx.i.i57.i = getelementptr %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 %22
  %priority.i.i.i = getelementptr %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 %22, i32 2
  %tc8.i.i.i = getelementptr %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 %22, i32 3
  %24 = getelementptr %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 %22, i32 1
  %dont_add_vlan0.i.i.i = getelementptr %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 %22, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp30.i.i.i = icmp eq i32 %22, 2
  %conv.i.i.i = shl nsw i32 %sub.i.i, 1
  %shl.i.i.i = and i32 %conv.i.i.i, 510
  br label %for.body.i59.i

for.body.i59.i:                                   ; preds = %for.inc.i62.i.for.body.i59.i_crit_edge, %if.then53.i.i
  %i.011.i.i = phi i32 [ 0, %if.then53.i.i ], [ %inc.i60.i, %for.inc.i62.i.for.body.i59.i_crit_edge ]
  %arrayidx.i58.i = getelementptr [5 x %struct.qed_dcbx_app_metadata], ptr @qed_dcbx_app_update, i32 0, i32 %i.011.i.i
  %25 = ptrtoint ptr %arrayidx.i58.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i58.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %22)
  %cmp3.not.i.i = icmp eq i32 %26, %22
  br i1 %cmp3.not.i.i, label %if.end.i.i, label %for.body.i59.i.for.inc.i62.i_crit_edge

for.body.i59.i.for.inc.i62.i_crit_edge:           ; preds = %for.body.i59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i62.i

if.end.i.i:                                       ; preds = %for.body.i59.i
  %personality5.i.i = getelementptr [5 x %struct.qed_dcbx_app_metadata], ptr @qed_dcbx_app_update, i32 0, i32 %i.011.i.i, i32 2
  %27 = ptrtoint ptr %personality5.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %personality5.i.i, align 4
  %29 = ptrtoint ptr %arrayidx.i.i57.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool1.i.i.i, ptr %arrayidx.i.i57.i, align 1
  %30 = ptrtoint ptr %priority.i.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv59.i.i, ptr %priority.i.i.i, align 1
  %31 = ptrtoint ptr %tc8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv48.i.i, ptr %tc8.i.i.i, align 1
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool1.i.i.i, ptr %24, align 1
  %33 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p_hwfn, align 8
  %mf_bits.i.i.i = getelementptr inbounds %struct.qed_dev, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %mf_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %mf_bits.i.i.i, align 4
  %37 = and i32 %36, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool15.not.i.i.i = icmp eq i32 %37, 0
  br i1 %tobool15.not.i.i.i, label %if.end.i.i.if.end19.i.i.i_crit_edge, label %if.then16.i.i.i

if.end.i.i.if.end19.i.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i.i.i

if.then16.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dont_add_vlan0.i.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %dont_add_vlan0.i.i.i, align 1
  br label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %if.then16.i.i.i, %if.end.i.i.if.end19.i.i.i_crit_edge
  %39 = ptrtoint ptr %hw_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hw_info.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %28)
  %cmp.i.i.i = icmp eq i32 %40, %28
  br i1 %cmp.i.i.i, label %if.then22.i.i.i, label %if.end19.i.i.i.if.end24.i.i.i_crit_edge

if.end19.i.i.i.if.end24.i.i.i_crit_edge:          ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i.i

if.then22.i.i.i:                                  ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @qed_hw_info_set_offload_tc(ptr noundef %hw_info.i.i.i, i8 noundef zeroext %conv48.i.i) #7
  br label %if.end24.i.i.i

if.end24.i.i.i:                                   ; preds = %if.then22.i.i.i, %if.end19.i.i.i.if.end24.i.i.i_crit_edge
  %41 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p_hwfn, align 8
  %mf_bits26.i.i.i = getelementptr inbounds %struct.qed_dev, ptr %42, i32 0, i32 15
  %43 = ptrtoint ptr %mf_bits26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %mf_bits26.i.i.i, align 4
  %45 = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool28.not.i.i.i = icmp ne i32 %45, 0
  %or.cond.i.i.i = and i1 %cmp30.i.i.i, %tobool28.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.then31.i.i.i, label %if.end24.i.i.i.for.inc.i62.i_crit_edge

if.end24.i.i.i.for.inc.i62.i_crit_edge:           ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i62.i

if.then31.i.i.i:                                  ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1050804, i32 noundef 1) #7
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1050820, i32 noundef %shl.i.i.i) #7
  br label %for.inc.i62.i

for.inc.i62.i:                                    ; preds = %if.then31.i.i.i, %if.end24.i.i.i.for.inc.i62.i_crit_edge, %for.body.i59.i.for.inc.i62.i_crit_edge
  %inc.i60.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i61.i = icmp eq i32 %inc.i60.i, 5
  br i1 %exitcond.not.i61.i, label %for.inc.i.loopexit.i, label %for.inc.i62.i.for.body.i59.i_crit_edge

for.inc.i62.i.for.body.i59.i_crit_edge:           ; preds = %for.inc.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i59.i

for.inc.i.loopexit.i:                             ; preds = %for.inc.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  %.eth_tlv.0.off0.i.i = select i1 %cmp54.i.i, i1 true, i1 %eth_tlv.0.off0146.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.inc.i.loopexit.i, %if.end44.i.i.for.inc.i.i_crit_edge
  %eth_tlv.2.off0.i.i = phi i1 [ %eth_tlv.0.off0146.i.i, %if.end44.i.i.for.inc.i.i_crit_edge ], [ %.eth_tlv.0.off0.i.i, %for.inc.i.loopexit.i ]
  %inc.i.i = add nuw nsw i32 %i.0147.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %shr10.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %do.end9.i.i.for.end.i.i_crit_edge
  %eth_tlv.0.off0.lcssa.i.i = phi i1 [ false, %do.end9.i.i.for.end.i.i_crit_edge ], [ %eth_tlv.2.off0.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %46 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %p_hwfn, align 8
  %mf_bits.i.i = getelementptr inbounds %struct.qed_dev, ptr %47, i32 0, i32 15
  %48 = ptrtoint ptr %mf_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %mf_bits.i.i, align 4
  %50 = and i32 %49, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool62.not.i.i = icmp eq i32 %50, 0
  %brmerge.i.i = select i1 %tobool62.not.i.i, i1 true, i1 %eth_tlv.0.off0.lcssa.i.i
  br i1 %brmerge.i.i, label %for.end.i.i.if.end68.i.i_crit_edge, label %if.then64.i.i

for.end.i.i.if.end68.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68.i.i

if.then64.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %tc65.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 47, i32 2
  %51 = ptrtoint ptr %tc65.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tc65.i.i, align 8
  %tc67.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 4, i32 3
  %53 = ptrtoint ptr %tc67.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %tc67.i.i, align 1
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.then64.i.i, %for.end.i.i.if.end68.i.i_crit_edge
  %tc71.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 4, i32 3
  %54 = ptrtoint ptr %tc71.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tc71.i.i, align 1
  %priority74.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 4, i32 2
  %56 = ptrtoint ptr %priority74.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %priority74.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool89.i.i = icmp ne i8 %conv.i, 0
  %conv.i.i.i.i = zext i8 %57 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 1
  br label %for.body79.i.i

for.body79.i.i:                                   ; preds = %for.inc100.i.i.for.body79.i.i_crit_edge, %if.end68.i.i
  %storemerge148.i.i = phi i32 [ 0, %if.end68.i.i ], [ %inc101.i.i, %for.inc100.i.i.for.body79.i.i_crit_edge ]
  %update.i.i = getelementptr %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 %storemerge148.i.i, i32 1
  %58 = ptrtoint ptr %update.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %update.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool82.not.i.i = icmp eq i8 %59, 0
  br i1 %tobool82.not.i.i, label %if.end84.i.i, label %for.body79.i.i.for.inc100.i.i_crit_edge

for.body79.i.i.for.inc100.i.i_crit_edge:          ; preds = %for.body79.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc100.i.i

if.end84.i.i:                                     ; preds = %for.body79.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %storemerge148.i.i)
  %cmp85.i.i = icmp ne i32 %storemerge148.i.i, 4
  %narrow.i.i = and i1 %tobool89.i.i, %cmp85.i.i
  %frombool1.i.i.i.i = zext i1 %narrow.i.i to i8
  %arrayidx.i.i.i.i = getelementptr %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 %storemerge148.i.i
  %priority.i.i.i.i = getelementptr %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 %storemerge148.i.i, i32 2
  %tc8.i.i.i.i = getelementptr %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 %storemerge148.i.i, i32 3
  %dont_add_vlan0.i.i.i.i = getelementptr %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 %storemerge148.i.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %storemerge148.i.i)
  %cmp30.i.i.i.i = icmp eq i32 %storemerge148.i.i, 2
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end84.i.i
  %i.011.i.i.i = phi i32 [ 0, %if.end84.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [5 x %struct.qed_dcbx_app_metadata], ptr @qed_dcbx_app_update, i32 0, i32 %i.011.i.i.i
  %60 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %storemerge148.i.i)
  %cmp3.not.i.i.i = icmp eq i32 %61, %storemerge148.i.i
  br i1 %cmp3.not.i.i.i, label %if.end.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %62 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %frombool1.i.i.i.i, ptr %arrayidx.i.i.i.i, align 1
  %63 = ptrtoint ptr %priority.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %57, ptr %priority.i.i.i.i, align 1
  %64 = ptrtoint ptr %tc8.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %55, ptr %tc8.i.i.i.i, align 1
  %65 = ptrtoint ptr %update.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %frombool1.i.i.i.i, ptr %update.i.i, align 1
  %66 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %p_hwfn, align 8
  %mf_bits.i.i.i.i = getelementptr inbounds %struct.qed_dev, ptr %67, i32 0, i32 15
  %68 = ptrtoint ptr %mf_bits.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %mf_bits.i.i.i.i, align 4
  %70 = and i32 %69, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool15.not.i.i.i.i = icmp eq i32 %70, 0
  br i1 %tobool15.not.i.i.i.i, label %if.end.i.i.i.if.end19.i.i.i.i_crit_edge, label %if.then16.i.i.i.i

if.end.i.i.i.if.end19.i.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i.i.i.i

if.then16.i.i.i.i:                                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %dont_add_vlan0.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %dont_add_vlan0.i.i.i.i, align 1
  br label %if.end19.i.i.i.i

if.end19.i.i.i.i:                                 ; preds = %if.then16.i.i.i.i, %if.end.i.i.i.if.end19.i.i.i.i_crit_edge
  %72 = ptrtoint ptr %mf_bits.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %mf_bits.i.i.i.i, align 4
  %74 = and i32 %73, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool28.not.i.i.i.i = icmp ne i32 %74, 0
  %or.cond.i.i.i.i = and i1 %cmp30.i.i.i.i, %tobool28.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %if.then31.i.i.i.i, label %if.end19.i.i.i.i.for.inc.i.i.i_crit_edge

if.end19.i.i.i.i.for.inc.i.i.i_crit_edge:         ; preds = %if.end19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

if.then31.i.i.i.i:                                ; preds = %if.end19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1050804, i32 noundef 1) #7
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1050820, i32 noundef %shl.i.i.i.i) #7
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then31.i.i.i.i, %if.end19.i.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.011.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 5
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.inc100.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.for.inc100.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc100.i.i

for.inc100.i.i:                                   ; preds = %for.inc.i.i.i.for.inc100.i.i_crit_edge, %for.body79.i.i.for.inc100.i.i_crit_edge
  %inc101.i.i = add nuw nsw i32 %storemerge148.i.i, 1
  %exitcond149.not.i.i = icmp eq i32 %inc101.i.i, 5
  br i1 %exitcond149.not.i.i, label %if.end.i, label %for.inc100.i.i.for.body79.i.i_crit_edge

for.inc100.i.i.for.body79.i.i_crit_edge:          ; preds = %for.inc100.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body79.i.i

if.end.i:                                         ; preds = %for.inc100.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i.i) #7
  %features.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %4, i32 0, i32 4, i32 2
  %75 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %features.i, align 4
  %77 = trunc i32 %76 to i8
  %78 = lshr i8 %77, 4
  %num_active_tc.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 5
  %79 = ptrtoint ptr %num_active_tc.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %num_active_tc.i, align 1
  %80 = load i32, ptr %features.i, align 4
  %and16.i = lshr i32 %80, 8
  %81 = trunc i32 %and16.i to i8
  %conv18.i = and i8 %81, 15
  %ooo_tc.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 49, i32 17
  %82 = ptrtoint ptr %ooo_tc.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv18.i, ptr %ooo_tc.i, align 2
  %rel_pf_id.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %83 = ptrtoint ptr %rel_pf_id.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %rel_pf_id.i, align 1
  %pf_id.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 1
  %85 = ptrtoint ptr %pf_id.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %pf_id.i, align 1
  %frombool.i = zext i1 %tobool89.i.i to i8
  %86 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %frombool.i, ptr %data.i, align 1
  %87 = ptrtoint ptr %dp_level.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %dp_level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp.i45.i = icmp eq i8 %88, 0
  %dp_module.i46.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  br i1 %cmp.i45.i, label %land.rhs.i49.i, label %if.end.i.if.then4_crit_edge

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

land.rhs.i49.i:                                   ; preds = %if.end.i
  %89 = ptrtoint ptr %dp_module.i46.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dp_module.i46.i, align 4
  %and.i47.i = and i32 %90, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47.i)
  %tobool.not.i48.i = icmp eq i32 %and.i47.i, 0
  br i1 %tobool.not.i48.i, label %land.rhs.i49.i.do.end11.i.i_crit_edge, label %do.end.i52.i, !prof !359

land.rhs.i49.i.do.end11.i.i_crit_edge:            ; preds = %land.rhs.i49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i.i

do.end.i52.i:                                     ; preds = %land.rhs.i49.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i50.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %91 = zext i1 %tobool89.i.i to i32
  %call.i51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 152, ptr noundef nonnull %name.i50.i, i32 noundef %91) #10
  br label %do.end11.i.i

do.end11.i.i:                                     ; preds = %do.end.i52.i, %land.rhs.i49.i.do.end11.i.i_crit_edge
  %92 = ptrtoint ptr %dp_level.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %.pr.i.i = load i8, ptr %dp_level.i.i, align 8
  %name36.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i)
  %cmp18.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %cmp18.i.i, label %land.rhs20.i.i, label %do.end11.i.i.if.then4_crit_edge

do.end11.i.i.if.then4_crit_edge:                  ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

land.rhs20.i.i:                                   ; preds = %do.end11.i.i
  %93 = ptrtoint ptr %dp_module.i46.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dp_module.i46.i, align 4
  %and22.i.i = and i32 %94, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool23.not.i.i, label %land.rhs20.i.i.for.inc.i56.i_crit_edge, label %do.end34.i.i, !prof !359

land.rhs20.i.i.for.inc.i56.i_crit_edge:           ; preds = %land.rhs20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i56.i

do.end34.i.i:                                     ; preds = %land.rhs20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx47.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 0
  %update.i53.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 0, i32 1
  %95 = ptrtoint ptr %update.i53.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %update.i53.i, align 1
  %conv48.i54.i = zext i8 %96 to i32
  %97 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx47.i.i, align 1, !range !361
  %99 = zext i8 %98 to i32
  %priority.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 0, i32 2
  %100 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %priority.i.i, align 1
  %conv55.i.i = zext i8 %101 to i32
  %tc.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 0, i32 3
  %102 = ptrtoint ptr %tc.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %tc.i.i, align 1
  %conv58.i.i = zext i8 %103 to i32
  %104 = ptrtoint ptr %num_active_tc.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %num_active_tc.i, align 1
  %conv59.i55.i = zext i8 %105 to i32
  %call60.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef 161, ptr noundef nonnull %name36.i.i, ptr noundef nonnull @.str.23, i32 noundef %conv48.i54.i, i32 noundef %99, i32 noundef %conv55.i.i, i32 noundef %conv58.i.i, i32 noundef %conv59.i55.i) #10
  br label %for.inc.i56.i

for.inc.i56.i:                                    ; preds = %do.end34.i.i, %land.rhs20.i.i.for.inc.i56.i_crit_edge
  %106 = ptrtoint ptr %dp_level.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %.pr.i = load i8, ptr %dp_level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %cmp18.1.i.i = icmp eq i8 %.pr.i, 0
  br i1 %cmp18.1.i.i, label %land.rhs20.1.i.i, label %for.inc.i56.i.if.then4_crit_edge

for.inc.i56.i.if.then4_crit_edge:                 ; preds = %for.inc.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

land.rhs20.1.i.i:                                 ; preds = %for.inc.i56.i
  %107 = ptrtoint ptr %dp_module.i46.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dp_module.i46.i, align 4
  %and22.1.i.i = and i32 %108, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.1.i.i)
  %tobool23.not.1.i.i = icmp eq i32 %and22.1.i.i, 0
  br i1 %tobool23.not.1.i.i, label %land.rhs20.1.i.i.for.inc.1.i.i_crit_edge, label %do.end34.1.i.i, !prof !359

land.rhs20.1.i.i.for.inc.1.i.i_crit_edge:         ; preds = %land.rhs20.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i

do.end34.1.i.i:                                   ; preds = %land.rhs20.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx47.1.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 1
  %update.1.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 1, i32 1
  %109 = ptrtoint ptr %update.1.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %update.1.i.i, align 1
  %conv48.1.i.i = zext i8 %110 to i32
  %111 = ptrtoint ptr %arrayidx47.1.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx47.1.i.i, align 1, !range !361
  %113 = zext i8 %112 to i32
  %priority.1.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 1, i32 2
  %114 = ptrtoint ptr %priority.1.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %priority.1.i.i, align 1
  %conv55.1.i.i = zext i8 %115 to i32
  %tc.1.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 1, i32 3
  %116 = ptrtoint ptr %tc.1.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %tc.1.i.i, align 1
  %conv58.1.i.i = zext i8 %117 to i32
  %118 = ptrtoint ptr %num_active_tc.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %num_active_tc.i, align 1
  %conv59.1.i.i = zext i8 %119 to i32
  %call60.1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef 161, ptr noundef nonnull %name36.i.i, ptr noundef nonnull @.str.24, i32 noundef %conv48.1.i.i, i32 noundef %113, i32 noundef %conv55.1.i.i, i32 noundef %conv58.1.i.i, i32 noundef %conv59.1.i.i) #10
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %do.end34.1.i.i, %land.rhs20.1.i.i.for.inc.1.i.i_crit_edge
  %120 = ptrtoint ptr %dp_level.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %.pr103.i.i = load i8, ptr %dp_level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr103.i.i)
  %cmp18.2.i.i = icmp eq i8 %.pr103.i.i, 0
  br i1 %cmp18.2.i.i, label %land.rhs20.2.i.i, label %for.inc.1.i.i.if.then4_crit_edge

for.inc.1.i.i.if.then4_crit_edge:                 ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

land.rhs20.2.i.i:                                 ; preds = %for.inc.1.i.i
  %121 = ptrtoint ptr %dp_module.i46.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %dp_module.i46.i, align 4
  %and22.2.i.i = and i32 %122, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.2.i.i)
  %tobool23.not.2.i.i = icmp eq i32 %and22.2.i.i, 0
  br i1 %tobool23.not.2.i.i, label %land.rhs20.2.i.i.for.inc.2.i.i_crit_edge, label %do.end34.2.i.i, !prof !359

land.rhs20.2.i.i.for.inc.2.i.i_crit_edge:         ; preds = %land.rhs20.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i

do.end34.2.i.i:                                   ; preds = %land.rhs20.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx47.2.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 2
  %update.2.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 2, i32 1
  %123 = ptrtoint ptr %update.2.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %update.2.i.i, align 1
  %conv48.2.i.i = zext i8 %124 to i32
  %125 = ptrtoint ptr %arrayidx47.2.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx47.2.i.i, align 1, !range !361
  %127 = zext i8 %126 to i32
  %priority.2.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 2, i32 2
  %128 = ptrtoint ptr %priority.2.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %priority.2.i.i, align 1
  %conv55.2.i.i = zext i8 %129 to i32
  %tc.2.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 2, i32 3
  %130 = ptrtoint ptr %tc.2.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %tc.2.i.i, align 1
  %conv58.2.i.i = zext i8 %131 to i32
  %132 = ptrtoint ptr %num_active_tc.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %num_active_tc.i, align 1
  %conv59.2.i.i = zext i8 %133 to i32
  %call60.2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef 161, ptr noundef nonnull %name36.i.i, ptr noundef nonnull @.str.25, i32 noundef %conv48.2.i.i, i32 noundef %127, i32 noundef %conv55.2.i.i, i32 noundef %conv58.2.i.i, i32 noundef %conv59.2.i.i) #10
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %do.end34.2.i.i, %land.rhs20.2.i.i.for.inc.2.i.i_crit_edge
  %134 = ptrtoint ptr %dp_level.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %.pr108.i.i = load i8, ptr %dp_level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr108.i.i)
  %cmp18.3.i.i = icmp eq i8 %.pr108.i.i, 0
  br i1 %cmp18.3.i.i, label %land.rhs20.3.i.i, label %for.inc.2.i.i.if.then4_crit_edge

for.inc.2.i.i.if.then4_crit_edge:                 ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

land.rhs20.3.i.i:                                 ; preds = %for.inc.2.i.i
  %135 = ptrtoint ptr %dp_module.i46.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dp_module.i46.i, align 4
  %and22.3.i.i = and i32 %136, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.3.i.i)
  %tobool23.not.3.i.i = icmp eq i32 %and22.3.i.i, 0
  br i1 %tobool23.not.3.i.i, label %land.rhs20.3.i.i.for.inc.3.i.i_crit_edge, label %do.end34.3.i.i, !prof !359

land.rhs20.3.i.i.for.inc.3.i.i_crit_edge:         ; preds = %land.rhs20.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i.i

do.end34.3.i.i:                                   ; preds = %land.rhs20.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx47.3.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 3
  %update.3.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 3, i32 1
  %137 = ptrtoint ptr %update.3.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %update.3.i.i, align 1
  %conv48.3.i.i = zext i8 %138 to i32
  %139 = ptrtoint ptr %arrayidx47.3.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx47.3.i.i, align 1, !range !361
  %141 = zext i8 %140 to i32
  %priority.3.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 3, i32 2
  %142 = ptrtoint ptr %priority.3.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %priority.3.i.i, align 1
  %conv55.3.i.i = zext i8 %143 to i32
  %tc.3.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 3, i32 3
  %144 = ptrtoint ptr %tc.3.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %tc.3.i.i, align 1
  %conv58.3.i.i = zext i8 %145 to i32
  %146 = ptrtoint ptr %num_active_tc.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %num_active_tc.i, align 1
  %conv59.3.i.i = zext i8 %147 to i32
  %call60.3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef 161, ptr noundef nonnull %name36.i.i, ptr noundef nonnull @.str.26, i32 noundef %conv48.3.i.i, i32 noundef %141, i32 noundef %conv55.3.i.i, i32 noundef %conv58.3.i.i, i32 noundef %conv59.3.i.i) #10
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %do.end34.3.i.i, %land.rhs20.3.i.i.for.inc.3.i.i_crit_edge
  %148 = ptrtoint ptr %dp_level.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %.pr113.pr.i.i = load i8, ptr %dp_level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr113.pr.i.i)
  %cmp18.4.i.i = icmp eq i8 %.pr113.pr.i.i, 0
  br i1 %cmp18.4.i.i, label %land.rhs20.4.i.i, label %for.inc.3.i.i.if.then4_crit_edge

for.inc.3.i.i.if.then4_crit_edge:                 ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

land.rhs20.4.i.i:                                 ; preds = %for.inc.3.i.i
  %149 = ptrtoint ptr %dp_module.i46.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %dp_module.i46.i, align 4
  %and22.4.i.i = and i32 %150, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.4.i.i)
  %tobool23.not.4.i.i = icmp eq i32 %and22.4.i.i, 0
  br i1 %tobool23.not.4.i.i, label %land.rhs20.4.i.i.if.then4_crit_edge, label %do.end34.4.i.i, !prof !359

land.rhs20.4.i.i.if.then4_crit_edge:              ; preds = %land.rhs20.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

do.end34.4.i.i:                                   ; preds = %land.rhs20.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx47.4.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 4
  %update.4.i.i = getelementptr inbounds %struct.qed_dcbx_results, ptr %data.i, i32 0, i32 2, i32 4, i32 1
  %151 = ptrtoint ptr %update.4.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %update.4.i.i, align 1
  %conv48.4.i.i = zext i8 %152 to i32
  %153 = ptrtoint ptr %arrayidx47.4.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx47.4.i.i, align 1, !range !361
  %155 = zext i8 %154 to i32
  %156 = ptrtoint ptr %priority74.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %priority74.i.i, align 1
  %conv55.4.i.i = zext i8 %157 to i32
  %158 = ptrtoint ptr %tc71.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %tc71.i.i, align 1
  %conv58.4.i.i = zext i8 %159 to i32
  %160 = ptrtoint ptr %num_active_tc.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %num_active_tc.i, align 1
  %conv59.4.i.i = zext i8 %161 to i32
  %call60.4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef 161, ptr noundef nonnull %name36.i.i, ptr noundef nonnull @.str.27, i32 noundef %conv48.4.i.i, i32 noundef %155, i32 noundef %conv55.4.i.i, i32 noundef %conv58.4.i.i, i32 noundef %conv59.4.i.i) #10
  br label %if.then4

qed_dcbx_process_mib_info.exit:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name32.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call41.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef 274, ptr noundef nonnull %name32.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i.i) #7
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %data.i) #7
  br label %if.then14

if.then4:                                         ; preds = %do.end34.4.i.i, %land.rhs20.4.i.i.if.then4_crit_edge, %for.inc.3.i.i.if.then4_crit_edge, %for.inc.2.i.i.if.then4_crit_edge, %for.inc.1.i.i.if.then4_crit_edge, %for.inc.i56.i.if.then4_crit_edge, %do.end11.i.i.if.then4_crit_edge, %if.end.i.if.then4_crit_edge
  %162 = ptrtoint ptr %p_dcbx_info.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %p_dcbx_info.i, align 4
  %results.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %163, i32 0, i32 3
  %164 = call ptr @memcpy(ptr %results.i, ptr %data.i, i32 27)
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %data.i) #7
  %call5 = tail call i32 @qed_qm_reconf(ptr noundef %p_hwfn, ptr noundef %p_ptt) #7
  %call6 = tail call i32 @qed_sp_pf_update(ptr noundef %p_hwfn) #7
  br label %if.then14

if.then14:                                        ; preds = %if.then4, %qed_dcbx_process_mib_info.exit
  %rc.0 = phi i32 [ -22, %qed_dcbx_process_mib_info.exit ], [ 0, %if.then4 ]
  %165 = ptrtoint ptr %p_dcbx_info.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %p_dcbx_info.i, align 4
  %get = getelementptr inbounds %struct.qed_dcbx_info, ptr %166, i32 0, i32 7
  %call12 = tail call fastcc i32 @qed_dcbx_get_params(ptr noundef %p_hwfn, ptr noundef %get, i32 noundef 0)
  %167 = ptrtoint ptr %p_dcbx_info.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %p_dcbx_info.i, align 4
  %tc = getelementptr %struct.qed_dcbx_info, ptr %168, i32 0, i32 3, i32 2, i32 2, i32 3
  %169 = ptrtoint ptr %tc to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %tc, align 1
  %conv = zext i8 %170 to i32
  %shl = shl nuw i32 1, %conv
  %tc18 = getelementptr %struct.qed_dcbx_info, ptr %168, i32 0, i32 3, i32 2, i32 3, i32 3
  %171 = ptrtoint ptr %tc18 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %tc18, align 1
  %conv19 = zext i8 %172 to i32
  %shl20 = shl nuw i32 1, %conv19
  %or = or i32 %shl20, %shl
  %173 = shl i32 %or, 1
  %conv27 = and i32 %173, 65534
  %conv28 = or i32 %conv27, 1
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 5250828, i32 noundef %conv28) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then14, %if.end11.thread
  %p_dcbx_info63 = phi ptr [ %p_dcbx_info59, %if.end11.thread ], [ %p_dcbx_info.i, %if.then14 ]
  %rc.062 = phi i32 [ 0, %if.end11.thread ], [ %rc.0, %if.then14 ]
  %174 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %p_hwfn, align 8
  %ops_cookie.i = getelementptr inbounds %struct.qed_dev, ptr %175, i32 0, i32 57
  %176 = ptrtoint ptr %ops_cookie.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ops_cookie.i, align 4
  %tobool.not.i = icmp eq ptr %177, null
  br i1 %tobool.not.i, label %if.end29.cleanup_crit_edge, label %land.lhs.true.i

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end29
  %protocol_ops.i = getelementptr inbounds %struct.qed_dev, ptr %175, i32 0, i32 56
  %178 = ptrtoint ptr %protocol_ops.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %protocol_ops.i, align 8
  %dcbx_aen.i = getelementptr inbounds %struct.qed_common_cb_ops, ptr %179, i32 0, i32 4
  %180 = ptrtoint ptr %dcbx_aen.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dcbx_aen.i, align 4
  %tobool2.not.i = icmp eq ptr %181, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %182 = ptrtoint ptr %p_dcbx_info63 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %p_dcbx_info63, align 4
  %get.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %183, i32 0, i32 7
  tail call void %181(ptr noundef nonnull %177, ptr noundef %get.i, i32 noundef %type) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %rc.062, %if.end29.cleanup_crit_edge ], [ %rc.062, %land.lhs.true.i.cleanup_crit_edge ], [ %rc.062, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_dcbx_read_mib(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %data.i39 = alloca %struct.qed_dcbx_mib_meta_data, align 4
  %data.i29 = alloca %struct.qed_dcbx_mib_meta_data, align 4
  %data.i = alloca %struct.qed_dcbx_mib_meta_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data.i) #7
  %1 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i, i32 0, i32 3
  %2 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i, i32 0, i32 4
  %3 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i, i32 0, i32 5
  %4 = call ptr @memset(ptr %data.i, i32 0, i32 12)
  %mcp_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %5 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mcp_info.i, align 8
  %port_addr.i = getelementptr inbounds %struct.qed_mcp_info, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %port_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_addr.i, align 8
  %add.i = add i32 %8, 1252
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i, ptr %3, align 4
  %p_dcbx_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %10 = ptrtoint ptr %p_dcbx_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_dcbx_info.i, align 4
  %operational.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %operational.i, ptr %1, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 172, ptr %2, align 4
  %call.i = call fastcc i32 @qed_dcbx_copy_mib(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %data.i, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data.i) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data.i29) #7
  %14 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i29, i32 0, i32 3
  %15 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i29, i32 0, i32 4
  %16 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i29, i32 0, i32 5
  %17 = call ptr @memset(ptr %data.i29, i32 0, i32 12)
  %mcp_info.i30 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %18 = ptrtoint ptr %mcp_info.i30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mcp_info.i30, align 8
  %port_addr.i31 = getelementptr inbounds %struct.qed_mcp_info, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %port_addr.i31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port_addr.i31, align 8
  %add.i32 = add i32 %21, 1080
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i32, ptr %16, align 4
  %p_dcbx_info.i33 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %23 = ptrtoint ptr %p_dcbx_info.i33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p_dcbx_info.i33, align 4
  %remote.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %remote.i, ptr %14, align 4
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 172, ptr %15, align 4
  %call.i34 = call fastcc i32 @qed_dcbx_copy_mib(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %data.i29, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data.i29) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mcp_info.i35 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %27 = ptrtoint ptr %mcp_info.i35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mcp_info.i35, align 8
  %port_addr.i36 = getelementptr inbounds %struct.qed_mcp_info, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %port_addr.i36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_addr.i36, align 8
  %add.i37 = add i32 %30, 912
  %p_dcbx_info.i38 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %31 = ptrtoint ptr %p_dcbx_info.i38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %p_dcbx_info.i38, align 4
  %local_admin.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %32, i32 0, i32 2
  tail call void @qed_memcpy_from(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %local_admin.i, i32 noundef %add.i37, i32 noundef 168) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data.i39) #7
  %33 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i39, i32 0, i32 1
  %34 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i39, i32 0, i32 4
  %35 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i39, i32 0, i32 5
  %36 = call ptr @memset(ptr %data.i39, i32 0, i32 16)
  %mcp_info.i40 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %37 = ptrtoint ptr %mcp_info.i40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mcp_info.i40, align 8
  %port_addr.i41 = getelementptr inbounds %struct.qed_mcp_info, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %port_addr.i41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port_addr.i41, align 8
  %add.i42 = add i32 %40, 648
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i42, ptr %35, align 4
  %p_dcbx_info.i43 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %42 = ptrtoint ptr %p_dcbx_info.i43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %p_dcbx_info.i43, align 4
  %44 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %33, align 4
  %45 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 44, ptr %34, align 4
  %call.i44 = call fastcc i32 @qed_dcbx_copy_mib(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %data.i39, i32 noundef 3) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data.i39) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mcp_info.i45 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %46 = ptrtoint ptr %mcp_info.i45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mcp_info.i45, align 8
  %port_addr.i46 = getelementptr inbounds %struct.qed_mcp_info, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %port_addr.i46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port_addr.i46, align 8
  %add.i47 = add i32 %49, 540
  %p_dcbx_info.i48 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %50 = ptrtoint ptr %p_dcbx_info.i48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %p_dcbx_info.i48, align 4
  %lldp_local.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %51, i32 0, i32 1
  tail call void @qed_memcpy_from(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %lldp_local.i, i32 noundef %add.i47, i32 noundef 36) #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool.not, ptr @.str.3, ptr %name
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 845, ptr noundef nonnull %spec.select, i32 noundef %type) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %rc.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb7 ], [ %call.i44, %sw.bb5 ], [ 0, %sw.bb3 ], [ %call.i34, %sw.bb1 ], [ %call.i, %sw.bb ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_qm_reconf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_sp_pf_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_dcbx_get_params(ptr noundef %p_hwfn, ptr noundef %p_params, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %type, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 0, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %p_dcbx_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %1 = ptrtoint ptr %p_dcbx_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p_dcbx_info.i, align 4
  %features.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %2, i32 0, i32 5, i32 2
  %app.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %2, i32 0, i32 5, i32 2, i32 2
  %app_pri_tbl.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %2, i32 0, i32 5, i32 2, i32 2, i32 1
  %pfc.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %2, i32 0, i32 5, i32 2, i32 1
  %3 = ptrtoint ptr %pfc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pfc.i, align 4
  %remote2.i = getelementptr inbounds %struct.qed_dcbx_get, ptr %p_params, i32 0, i32 3
  tail call fastcc void @qed_dcbx_get_common_params(ptr noundef %p_hwfn, ptr noundef %app.i, ptr noundef %app_pri_tbl.i, ptr noundef %features.i, i32 noundef %4, ptr noundef %remote2.i, i1 noundef zeroext false) #7
  %valid.i = getelementptr inbounds %struct.qed_dcbx_get, ptr %p_params, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %valid.i, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %p_dcbx_info.i20 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %6 = ptrtoint ptr %p_dcbx_info.i20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_dcbx_info.i20, align 4
  %features.i21 = getelementptr inbounds %struct.qed_dcbx_info, ptr %7, i32 0, i32 2, i32 2
  %app.i22 = getelementptr inbounds %struct.qed_dcbx_info, ptr %7, i32 0, i32 2, i32 2, i32 2
  %app_pri_tbl.i23 = getelementptr inbounds %struct.qed_dcbx_info, ptr %7, i32 0, i32 2, i32 2, i32 2, i32 1
  %pfc.i24 = getelementptr inbounds %struct.qed_dcbx_info, ptr %7, i32 0, i32 2, i32 2, i32 1
  %8 = ptrtoint ptr %pfc.i24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pfc.i24, align 4
  %local.i = getelementptr inbounds %struct.qed_dcbx_get, ptr %p_params, i32 0, i32 4
  tail call fastcc void @qed_dcbx_get_common_params(ptr noundef %p_hwfn, ptr noundef %app.i22, ptr noundef %app_pri_tbl.i23, ptr noundef %features.i21, i32 noundef %9, ptr noundef %local.i, i1 noundef zeroext false) #7
  %valid.i25 = getelementptr inbounds %struct.qed_dcbx_get, ptr %p_params, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %valid.i25 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %valid.i25, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %p_dcbx_info.i26 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %11 = ptrtoint ptr %p_dcbx_info.i26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_dcbx_info.i26, align 4
  %flags1.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %12, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %14, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  %frombool.i = zext i1 %cmp.i to i8
  br i1 %cmp.i, label %if.end21.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb2
  %enabled5.i = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %p_params, i32 0, i32 3
  %15 = ptrtoint ptr %enabled5.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool.i, ptr %enabled5.i, align 1
  %valid.i27 = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %p_params, i32 0, i32 2
  %16 = ptrtoint ptr %valid.i27 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %valid.i27, align 4
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %17 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp7.i = icmp eq i8 %18, 0
  br i1 %cmp7.i, label %land.rhs.i, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.rhs.i:                                       ; preds = %if.then.i
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %19 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dp_module.i, align 4
  %and9.i = and i32 %20, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %land.rhs.i.return_crit_edge, label %do.end.i, !prof !359

land.rhs.i.return_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 650, ptr noundef nonnull %name.i) #10
  br label %return

if.end21.i:                                       ; preds = %sw.bb2
  %features.i28 = getelementptr inbounds %struct.qed_dcbx_info, ptr %12, i32 0, i32 4, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp27.i = icmp eq i32 %and.i, 1
  %frombool33.i = zext i1 %cmp27.i to i8
  %ieee.i = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %p_params, i32 0, i32 4
  %21 = ptrtoint ptr %ieee.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool33.i, ptr %ieee.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp38.i = icmp eq i32 %and.i, 2
  %frombool44.i = zext i1 %cmp38.i to i8
  %cee.i = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %p_params, i32 0, i32 5
  %22 = ptrtoint ptr %cee.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool44.i, ptr %cee.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %cmp49.i = icmp eq i32 %and.i, 4
  %frombool55.i = zext i1 %cmp49.i to i8
  %local.i29 = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %p_params, i32 0, i32 6
  %23 = ptrtoint ptr %local.i29 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool55.i, ptr %local.i29, align 4
  %dp_level59.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %24 = ptrtoint ptr %dp_level59.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dp_level59.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp61.i = icmp eq i8 %25, 0
  br i1 %cmp61.i, label %land.rhs63.i, label %if.end21.i.do.end100.i_crit_edge

if.end21.i.do.end100.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end100.i

land.rhs63.i:                                     ; preds = %if.end21.i
  %dp_module64.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %26 = ptrtoint ptr %dp_module64.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dp_module64.i, align 4
  %and65.i = and i32 %27, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %land.rhs63.i.do.end100.i_crit_edge, label %do.end77.i, !prof !359

land.rhs63.i.do.end100.i_crit_edge:               ; preds = %land.rhs63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end100.i

do.end77.i:                                       ; preds = %land.rhs63.i
  call void @__sanitizer_cov_trace_pc() #9
  %name79.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %28 = zext i1 %cmp27.i to i32
  %29 = zext i1 %cmp38.i to i32
  %30 = zext i1 %cmp49.i to i32
  %call97.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef 671, ptr noundef nonnull %name79.i, i32 noundef %28, i32 noundef %29, i32 noundef %30) #10
  br label %do.end100.i

do.end100.i:                                      ; preds = %do.end77.i, %land.rhs63.i.do.end100.i_crit_edge, %if.end21.i.do.end100.i_crit_edge
  %app.i30 = getelementptr inbounds %struct.qed_dcbx_info, ptr %12, i32 0, i32 4, i32 2, i32 2
  %app_pri_tbl.i31 = getelementptr inbounds %struct.qed_dcbx_info, ptr %12, i32 0, i32 4, i32 2, i32 2, i32 1
  %pfc.i32 = getelementptr inbounds %struct.qed_dcbx_info, ptr %12, i32 0, i32 4, i32 2, i32 1
  %31 = ptrtoint ptr %pfc.i32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pfc.i32, align 4
  %params104.i = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %p_params, i32 0, i32 1
  %33 = ptrtoint ptr %ieee.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ieee.i, align 2, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool106.i = icmp ne i8 %34, 0
  tail call fastcc void @qed_dcbx_get_common_params(ptr noundef %p_hwfn, ptr noundef %app.i30, ptr noundef %app_pri_tbl.i31, ptr noundef %features.i28, i32 noundef %32, ptr noundef %params104.i, i1 noundef zeroext %tobool106.i) #7
  %roce_v2.i.i = getelementptr inbounds %struct.qed_dcbx_app_prio, ptr %p_params, i32 0, i32 1
  %iscsi.i.i = getelementptr inbounds %struct.qed_dcbx_app_prio, ptr %p_params, i32 0, i32 3
  %fcoe.i.i = getelementptr inbounds %struct.qed_dcbx_app_prio, ptr %p_params, i32 0, i32 2
  %arr.i.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %12, i32 0, i32 3, i32 2
  %update.i.i = getelementptr %struct.qed_dcbx_info, ptr %12, i32 0, i32 3, i32 2, i32 2, i32 1
  %35 = ptrtoint ptr %p_params to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 -1, ptr %p_params, align 1
  %36 = ptrtoint ptr %update.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %update.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i, label %do.end100.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

do.end100.i.if.end.i.i_crit_edge:                 ; preds = %do.end100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %do.end100.i
  %arrayidx.i.i = getelementptr %struct.qed_dcbx_info, ptr %12, i32 0, i32 3, i32 2, i32 2
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.i, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool3.not.i.i = icmp eq i8 %39, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %priority.i.i = getelementptr %struct.qed_dcbx_info, ptr %12, i32 0, i32 3, i32 2, i32 2, i32 2
  %40 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %priority.i.i, align 1
  %42 = ptrtoint ptr %p_params to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %p_params, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %do.end100.i.if.end.i.i_crit_edge
  %update10.i.i = getelementptr %struct.qed_dcbx_info, ptr %12, i32 0, i32 3, i32 2, i32 3, i32 1
  %43 = ptrtoint ptr %update10.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %update10.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool12.not.i.i = icmp eq i8 %44, 0
  br i1 %tobool12.not.i.i, label %if.end.i.i.if.end24.i.i_crit_edge, label %land.lhs.true13.i.i

if.end.i.i.if.end24.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i

land.lhs.true13.i.i:                              ; preds = %if.end.i.i
  %arrayidx9.i.i = getelementptr %struct.qed_dcbx_info, ptr %12, i32 0, i32 3, i32 2, i32 3
  %45 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx9.i.i, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool17.not.i.i = icmp eq i8 %46, 0
  br i1 %tobool17.not.i.i, label %land.lhs.true13.i.i.if.end24.i.i_crit_edge, label %if.then19.i.i

land.lhs.true13.i.i.if.end24.i.i_crit_edge:       ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i

if.then19.i.i:                                    ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %priority22.i.i = getelementptr %struct.qed_dcbx_info, ptr %12, i32 0, i32 3, i32 2, i32 3, i32 2
  %47 = ptrtoint ptr %priority22.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %priority22.i.i, align 1
  %49 = ptrtoint ptr %roce_v2.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %roce_v2.i.i, align 1
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then19.i.i, %land.lhs.true13.i.i.if.end24.i.i_crit_edge, %if.end.i.i.if.end24.i.i_crit_edge
  %update27.i.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %12, i32 0, i32 3, i32 2, i32 0, i32 1
  %50 = ptrtoint ptr %update27.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %update27.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool29.not.i.i = icmp eq i8 %51, 0
  br i1 %tobool29.not.i.i, label %if.end24.i.i.if.end41.i.i_crit_edge, label %land.lhs.true30.i.i

if.end24.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i.i

land.lhs.true30.i.i:                              ; preds = %if.end24.i.i
  %52 = ptrtoint ptr %arr.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arr.i.i, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool34.not.i.i = icmp eq i8 %53, 0
  br i1 %tobool34.not.i.i, label %land.lhs.true30.i.i.if.end41.i.i_crit_edge, label %if.then36.i.i

land.lhs.true30.i.i.if.end41.i.i_crit_edge:       ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i.i

if.then36.i.i:                                    ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %priority39.i.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %12, i32 0, i32 3, i32 2, i32 0, i32 2
  %54 = ptrtoint ptr %priority39.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %priority39.i.i, align 1
  %56 = ptrtoint ptr %iscsi.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %iscsi.i.i, align 1
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then36.i.i, %land.lhs.true30.i.i.if.end41.i.i_crit_edge, %if.end24.i.i.if.end41.i.i_crit_edge
  %update44.i.i = getelementptr %struct.qed_dcbx_info, ptr %12, i32 0, i32 3, i32 2, i32 1, i32 1
  %57 = ptrtoint ptr %update44.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %update44.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool46.not.i.i = icmp eq i8 %58, 0
  br i1 %tobool46.not.i.i, label %if.end41.i.i.if.end58.i.i_crit_edge, label %land.lhs.true47.i.i

if.end41.i.i.if.end58.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i.i

land.lhs.true47.i.i:                              ; preds = %if.end41.i.i
  %arrayidx43.i.i = getelementptr %struct.qed_dcbx_info, ptr %12, i32 0, i32 3, i32 2, i32 1
  %59 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx43.i.i, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool51.not.i.i = icmp eq i8 %60, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true47.i.i.if.end58.i.i_crit_edge, label %if.then53.i.i

land.lhs.true47.i.i.if.end58.i.i_crit_edge:       ; preds = %land.lhs.true47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i.i

if.then53.i.i:                                    ; preds = %land.lhs.true47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %priority56.i.i = getelementptr %struct.qed_dcbx_info, ptr %12, i32 0, i32 3, i32 2, i32 1, i32 2
  %61 = ptrtoint ptr %priority56.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %priority56.i.i, align 1
  %63 = ptrtoint ptr %fcoe.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %fcoe.i.i, align 1
  br label %if.end58.i.i

if.end58.i.i:                                     ; preds = %if.then53.i.i, %land.lhs.true47.i.i.if.end58.i.i_crit_edge, %if.end41.i.i.if.end58.i.i_crit_edge
  %update61.i.i = getelementptr %struct.qed_dcbx_info, ptr %12, i32 0, i32 3, i32 2, i32 4, i32 1
  %64 = ptrtoint ptr %update61.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %update61.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool63.not.i.i = icmp eq i8 %65, 0
  br i1 %tobool63.not.i.i, label %if.end58.i.i.do.body.i.i_crit_edge, label %land.lhs.true64.i.i

if.end58.i.i.do.body.i.i_crit_edge:               ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

land.lhs.true64.i.i:                              ; preds = %if.end58.i.i
  %arrayidx60.i.i = getelementptr %struct.qed_dcbx_info, ptr %12, i32 0, i32 3, i32 2, i32 4
  %66 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx60.i.i, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool68.not.i.i = icmp eq i8 %67, 0
  br i1 %tobool68.not.i.i, label %land.lhs.true64.i.i.do.body.i.i_crit_edge, label %if.then70.i.i

land.lhs.true64.i.i.do.body.i.i_crit_edge:        ; preds = %land.lhs.true64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

if.then70.i.i:                                    ; preds = %land.lhs.true64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %priority73.i.i = getelementptr %struct.qed_dcbx_info, ptr %12, i32 0, i32 3, i32 2, i32 4, i32 2
  %68 = ptrtoint ptr %priority73.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %priority73.i.i, align 1
  %eth.i.i = getelementptr inbounds %struct.qed_dcbx_app_prio, ptr %p_params, i32 0, i32 4
  %70 = ptrtoint ptr %eth.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %eth.i.i, align 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then70.i.i, %land.lhs.true64.i.i.do.body.i.i_crit_edge, %if.end58.i.i.do.body.i.i_crit_edge
  %71 = ptrtoint ptr %dp_level59.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %dp_level59.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp.i.i = icmp eq i8 %72, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %do.body.i.i.qed_dcbx_get_priority_info.exit.i_crit_edge

do.body.i.i.qed_dcbx_get_priority_info.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qed_dcbx_get_priority_info.exit.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %dp_module.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %73 = ptrtoint ptr %dp_module.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dp_module.i.i, align 4
  %and.i.i = and i32 %74, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool77.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool77.not.i.i, label %land.rhs.i.i.qed_dcbx_get_priority_info.exit.i_crit_edge, label %do.end.i.i, !prof !359

land.rhs.i.i.qed_dcbx_get_priority_info.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qed_dcbx_get_priority_info.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %75 = ptrtoint ptr %iscsi.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %iscsi.i.i, align 1
  %conv86.i.i = zext i8 %76 to i32
  %77 = ptrtoint ptr %p_params to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %p_params, align 1
  %conv88.i.i = zext i8 %78 to i32
  %79 = ptrtoint ptr %roce_v2.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %roce_v2.i.i, align 1
  %conv90.i.i = zext i8 %80 to i32
  %81 = ptrtoint ptr %fcoe.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %fcoe.i.i, align 1
  %conv92.i.i = zext i8 %82 to i32
  %eth93.i.i = getelementptr inbounds %struct.qed_dcbx_app_prio, ptr %p_params, i32 0, i32 4
  %83 = ptrtoint ptr %eth93.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %eth93.i.i, align 1
  %conv94.i.i = zext i8 %84 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 451, ptr noundef nonnull %name.i.i, i32 noundef %conv86.i.i, i32 noundef %conv88.i.i, i32 noundef %conv90.i.i, i32 noundef %conv92.i.i, i32 noundef %conv94.i.i) #10
  br label %qed_dcbx_get_priority_info.exit.i

qed_dcbx_get_priority_info.exit.i:                ; preds = %do.end.i.i, %land.rhs.i.i.qed_dcbx_get_priority_info.exit.i_crit_edge, %do.body.i.i.qed_dcbx_get_priority_info.exit.i_crit_edge
  %85 = ptrtoint ptr %app.i30 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %app.i30, align 4
  %87 = lshr i32 %86, 2
  %.lobit.i = and i32 %87, 1
  %err115.i = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %p_params, i32 0, i32 7
  %88 = ptrtoint ptr %err115.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %.lobit.i, ptr %err115.i, align 4
  %enabled117.i = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %p_params, i32 0, i32 3
  %89 = ptrtoint ptr %enabled117.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %frombool.i, ptr %enabled117.i, align 1
  %valid119.i = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %p_params, i32 0, i32 2
  %90 = ptrtoint ptr %valid119.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %valid119.i, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %p_dcbx_info.i33 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %91 = ptrtoint ptr %p_dcbx_info.i33 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %p_dcbx_info.i33, align 4
  %lldp_remote1.i = getelementptr inbounds %struct.qed_dcbx_get, ptr %p_params, i32 0, i32 1
  %peer_chassis_id2.i = getelementptr inbounds %struct.lldp_status_params_s, ptr %92, i32 0, i32 2
  %93 = call ptr @memcpy(ptr %lldp_remote1.i, ptr %peer_chassis_id2.i, i32 16)
  %peer_port_id.i = getelementptr inbounds %struct.qed_dcbx_get, ptr %p_params, i32 0, i32 1, i32 1
  %peer_port_id6.i = getelementptr inbounds %struct.lldp_status_params_s, ptr %92, i32 0, i32 3
  %94 = call ptr @memcpy(ptr %peer_port_id.i, ptr %peer_port_id6.i, i32 16)
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %p_dcbx_info.i34 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %95 = ptrtoint ptr %p_dcbx_info.i34 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %p_dcbx_info.i34, align 4
  %lldp_local1.i = getelementptr inbounds %struct.qed_dcbx_get, ptr %p_params, i32 0, i32 2
  %local_chassis_id2.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %96, i32 0, i32 1, i32 0, i32 1
  %97 = call ptr @memcpy(ptr %lldp_local1.i, ptr %local_chassis_id2.i, i32 16)
  %local_port_id.i = getelementptr inbounds %struct.qed_dcbx_get, ptr %p_params, i32 0, i32 2, i32 1
  %local_port_id6.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %96, i32 0, i32 1, i32 0, i32 2
  %98 = call ptr @memcpy(ptr %local_port_id.i, ptr %local_port_id6.i, i32 16)
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.33, i32 noundef 733, ptr noundef nonnull %spec.select, i32 noundef %type) #10
  br label %return

return:                                           ; preds = %do.end, %sw.bb4, %sw.bb3, %qed_dcbx_get_priority_info.exit.i, %do.end.i, %land.rhs.i.return_crit_edge, %if.then.i.return_crit_edge, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ 0, %if.then.i.return_crit_edge ], [ 0, %land.rhs.i.return_crit_edge ], [ 0, %do.end.i ], [ 0, %qed_dcbx_get_priority_info.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_wr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_dcbx_info_alloc(ptr nocapture noundef writeonly %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3144) #11
  %p_dcbx_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %1 = ptrtoint ptr %p_dcbx_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %p_dcbx_info, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_dcbx_info_free(ptr nocapture noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %p_dcbx_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %0 = ptrtoint ptr %p_dcbx_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_dcbx_info, align 4
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %p_dcbx_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %p_dcbx_info, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_dcbx_set_pf_update_params(ptr noundef readonly %p_src, ptr nocapture noundef writeonly %p_dest) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %update = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 1, i32 1
  %0 = ptrtoint ptr %update to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %update, align 1
  %update_fcoe_dcb_data_mode = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 1
  %2 = ptrtoint ptr %update_fcoe_dcb_data_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %update_fcoe_dcb_data_mode, align 1
  %update3 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 2, i32 1
  %3 = ptrtoint ptr %update3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %update3, align 1
  %update_roce_dcb_data_mode = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 3
  %5 = ptrtoint ptr %update_roce_dcb_data_mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %update_roce_dcb_data_mode, align 1
  %update6 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 3, i32 1
  %6 = ptrtoint ptr %update6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %update6, align 1
  %update_rroce_dcb_data_mode = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 4
  %8 = ptrtoint ptr %update_rroce_dcb_data_mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %update_rroce_dcb_data_mode, align 2
  %update9 = getelementptr inbounds %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %update9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %update9, align 1
  %update_iscsi_dcb_data_mode = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 2
  %11 = ptrtoint ptr %update_iscsi_dcb_data_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %update_iscsi_dcb_data_mode, align 2
  %update12 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 4, i32 1
  %12 = ptrtoint ptr %update12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %update12, align 1
  %14 = ptrtoint ptr %p_dest to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %p_dest, align 2
  %fcoe_dcb_data = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 9
  %arrayidx.i = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1, !range !361
  %17 = ptrtoint ptr %fcoe_dcb_data to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %fcoe_dcb_data, align 1
  %priority.i = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 1, i32 2
  %18 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %priority.i, align 1
  %dcb_priority.i = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 9, i32 2
  %20 = ptrtoint ptr %dcb_priority.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %dcb_priority.i, align 1
  %tc.i = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 1, i32 3
  %21 = ptrtoint ptr %tc.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tc.i, align 1
  %dcb_tc.i = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 9, i32 3
  %23 = ptrtoint ptr %dcb_tc.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %dcb_tc.i, align 1
  %dont_add_vlan0.i = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 1, i32 4
  %24 = ptrtoint ptr %dont_add_vlan0.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dont_add_vlan0.i, align 1, !range !361
  %dcb_dont_add_vlan0.i = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 9, i32 5
  %26 = ptrtoint ptr %dcb_dont_add_vlan0.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %dcb_dont_add_vlan0.i, align 1
  %roce_dcb_data = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 11
  %arrayidx.i39 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i39, align 1, !range !361
  %29 = ptrtoint ptr %roce_dcb_data to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %roce_dcb_data, align 1
  %priority.i40 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 2, i32 2
  %30 = ptrtoint ptr %priority.i40 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %priority.i40, align 1
  %dcb_priority.i41 = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 11, i32 2
  %32 = ptrtoint ptr %dcb_priority.i41 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %dcb_priority.i41, align 1
  %tc.i42 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 2, i32 3
  %33 = ptrtoint ptr %tc.i42 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tc.i42, align 1
  %dcb_tc.i43 = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 11, i32 3
  %35 = ptrtoint ptr %dcb_tc.i43 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %dcb_tc.i43, align 1
  %dont_add_vlan0.i44 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 2, i32 4
  %36 = ptrtoint ptr %dont_add_vlan0.i44 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dont_add_vlan0.i44, align 1, !range !361
  %dcb_dont_add_vlan0.i45 = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 11, i32 5
  %38 = ptrtoint ptr %dcb_dont_add_vlan0.i45 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %dcb_dont_add_vlan0.i45, align 1
  %rroce_dcb_data = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 12
  %arrayidx.i46 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i46, align 1, !range !361
  %41 = ptrtoint ptr %rroce_dcb_data to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %rroce_dcb_data, align 1
  %priority.i47 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 3, i32 2
  %42 = ptrtoint ptr %priority.i47 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %priority.i47, align 1
  %dcb_priority.i48 = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 12, i32 2
  %44 = ptrtoint ptr %dcb_priority.i48 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %dcb_priority.i48, align 1
  %tc.i49 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 3, i32 3
  %45 = ptrtoint ptr %tc.i49 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tc.i49, align 1
  %dcb_tc.i50 = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 12, i32 3
  %47 = ptrtoint ptr %dcb_tc.i50 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %dcb_tc.i50, align 1
  %dont_add_vlan0.i51 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 3, i32 4
  %48 = ptrtoint ptr %dont_add_vlan0.i51 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dont_add_vlan0.i51, align 1, !range !361
  %dcb_dont_add_vlan0.i52 = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 12, i32 5
  %50 = ptrtoint ptr %dcb_dont_add_vlan0.i52 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %dcb_dont_add_vlan0.i52, align 1
  %iscsi_dcb_data = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 10
  %arrayidx.i53 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 0
  %51 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i53, align 1, !range !361
  %53 = ptrtoint ptr %iscsi_dcb_data to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %iscsi_dcb_data, align 1
  %priority.i54 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 0, i32 2
  %54 = ptrtoint ptr %priority.i54 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %priority.i54, align 1
  %dcb_priority.i55 = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 10, i32 2
  %56 = ptrtoint ptr %dcb_priority.i55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %dcb_priority.i55, align 1
  %tc.i56 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 0, i32 3
  %57 = ptrtoint ptr %tc.i56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %tc.i56, align 1
  %dcb_tc.i57 = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 10, i32 3
  %59 = ptrtoint ptr %dcb_tc.i57 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %dcb_tc.i57, align 1
  %dont_add_vlan0.i58 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 0, i32 4
  %60 = ptrtoint ptr %dont_add_vlan0.i58 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dont_add_vlan0.i58, align 1, !range !361
  %dcb_dont_add_vlan0.i59 = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 10, i32 5
  %62 = ptrtoint ptr %dcb_dont_add_vlan0.i59 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %dcb_dont_add_vlan0.i59, align 1
  %eth_dcb_data = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 8
  %arrayidx.i60 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 4
  %63 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i60, align 1, !range !361
  %65 = ptrtoint ptr %eth_dcb_data to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %eth_dcb_data, align 1
  %priority.i61 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 4, i32 2
  %66 = ptrtoint ptr %priority.i61 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %priority.i61, align 1
  %dcb_priority.i62 = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 8, i32 2
  %68 = ptrtoint ptr %dcb_priority.i62 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %dcb_priority.i62, align 1
  %tc.i63 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 4, i32 3
  %69 = ptrtoint ptr %tc.i63 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %tc.i63, align 1
  %dcb_tc.i64 = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 8, i32 3
  %71 = ptrtoint ptr %dcb_tc.i64 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %dcb_tc.i64, align 1
  %dont_add_vlan0.i65 = getelementptr %struct.qed_dcbx_results, ptr %p_src, i32 0, i32 2, i32 4, i32 4
  %72 = ptrtoint ptr %dont_add_vlan0.i65 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %dont_add_vlan0.i65, align 1, !range !361
  %dcb_dont_add_vlan0.i66 = getelementptr inbounds %struct.pf_update_ramrod_data, ptr %p_dest, i32 0, i32 8, i32 5
  %74 = ptrtoint ptr %dcb_dont_add_vlan0.i66 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %dcb_dont_add_vlan0.i66, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @qed_dcbx_get_priority_tc(ptr noundef %p_hwfn, i8 noundef zeroext %pri) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %p_dcbx_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %0 = ptrtoint ptr %p_dcbx_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_dcbx_info, align 4
  %conv = zext i8 %pri to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %pri)
  %cmp = icmp ugt i8 %pri, 7
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 979, ptr noundef nonnull %spec.select, i32 noundef %conv) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %valid = getelementptr inbounds %struct.qed_dcbx_info, ptr %1, i32 0, i32 7, i32 0, i32 2
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %valid, align 4, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %do.body10, label %if.end35

do.body10:                                        ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp12 = icmp eq i8 %5, 0
  br i1 %cmp12, label %land.rhs, label %do.body10.cleanup_crit_edge

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs:                                         ; preds = %do.body10
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %6 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dp_module, align 4
  %and = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %land.rhs.cleanup_crit_edge, label %do.end20, !prof !359

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end20:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name22 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool24.not = icmp eq ptr %name22, null
  %spec.select46 = select i1 %tobool24.not, ptr @.str.3, ptr %name22
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 985, ptr noundef nonnull %spec.select46) #10
  br label %cleanup

if.end35:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.qed_dcbx_info, ptr %1, i32 0, i32 7, i32 0, i32 1, i32 9, i32 %conv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end20, %land.rhs.cleanup_crit_edge, %do.body10.cleanup_crit_edge, %do.end
  %retval.0 = phi i8 [ 0, %do.end ], [ %9, %if.end35 ], [ 0, %do.body10.cleanup_crit_edge ], [ 0, %do.end20 ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_dcbx_config_params(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef readonly %params, i1 noundef zeroext %hw_commit) local_unnamed_addr #0 align 64 {
entry:
  %local_admin = alloca %struct.dcbx_local_params, align 8
  %resp = alloca i32, align 4
  %param = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %local_admin) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #7
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %resp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #7
  %1 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %param, align 4
  %p_dcbx_info1 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %2 = ptrtoint ptr %p_dcbx_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_dcbx_info1, align 4
  %set2 = getelementptr inbounds %struct.qed_dcbx_info, ptr %3, i32 0, i32 6
  br i1 %hw_commit, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = call ptr @memcpy(ptr %set2, ptr %params, i32 576)
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = call ptr @memset(ptr %set2, i32 0, i32 576)
  %features.i = getelementptr inbounds %struct.dcbx_local_params, ptr %local_admin, i32 0, i32 2
  %6 = ptrtoint ptr %local_admin to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %local_admin, align 8
  %7 = ptrtoint ptr %p_dcbx_info1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p_dcbx_info1, align 4
  %features1.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %8, i32 0, i32 4, i32 2
  %9 = call ptr @memcpy(ptr %features.i, ptr %features1.i, i32 160)
  %enabled.i = getelementptr inbounds %struct.qed_dcbx_set, ptr %params, i32 0, i32 1
  %10 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled.i, align 4, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.do.body.i_crit_edge, label %if.then.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ver_num.i = getelementptr inbounds %struct.qed_dcbx_set, ptr %params, i32 0, i32 3
  %12 = ptrtoint ptr %ver_num.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ver_num.i, align 4
  %14 = ptrtoint ptr %local_admin to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %local_admin, align 8
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.i = icmp ne i32 %and.i, 0
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end.do.body.i_crit_edge
  %ieee.0.off0.i = phi i1 [ %tobool3.i, %if.then.i ], [ false, %if.end.do.body.i_crit_edge ]
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %15 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.i = icmp eq i8 %16, 0
  br i1 %cmp.i, label %land.rhs.i, label %do.body.i.do.end20.i_crit_edge

do.body.i.do.end20.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20.i

land.rhs.i:                                       ; preds = %do.body.i
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %17 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dp_module.i, align 4
  %and7.i = and i32 %18, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %land.rhs.i.do.end20.i_crit_edge, label %do.end.i, !prof !359

land.rhs.i.do.end20.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %19 = ptrtoint ptr %local_admin to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %local_admin, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1186, ptr noundef nonnull %name.i, i32 noundef %20) #10
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end.i, %land.rhs.i.do.end20.i_crit_edge, %do.body.i.do.end20.i_crit_edge
  %21 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %params, align 4
  %and21.i = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %do.end20.i.if.end27.i_crit_edge, label %if.then23.i

do.end20.i.if.end27.i_crit_edge:                  ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then23.i:                                      ; preds = %do.end20.i
  %pfc.i = getelementptr inbounds %struct.dcbx_local_params, ptr %local_admin, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %pfc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pfc.i, align 8
  %and.i.i = and i32 %24, -163841
  %pfc1.i.i = getelementptr inbounds %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 12
  %25 = ptrtoint ptr %pfc1.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pfc1.i.i, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i = icmp eq i8 %26, 0
  %and2.i.i = and i32 %24, -163841
  %or.i.i = or i32 %and.i.i, 32768
  %storemerge.i.i = select i1 %tobool.not.i.i, i32 %and2.i.i, i32 %or.i.i
  %enabled.i.i = getelementptr inbounds %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 12, i32 1
  %27 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %enabled.i.i, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool4.not.i.i = icmp eq i8 %28, 0
  %and8.i.i = and i32 %storemerge.i.i, -200704
  %or6.i.i = or i32 %storemerge.i.i, 65536
  %storemerge60.i.i = select i1 %tobool4.not.i.i, i32 %and8.i.i, i32 %or6.i.i
  %and10.i.i = and i32 %storemerge60.i.i, -135168
  %max_tc.i.i = getelementptr inbounds %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 12, i32 3
  %29 = ptrtoint ptr %max_tc.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %max_tc.i.i, align 1
  %conv.i.i = zext i8 %30 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %or12.i.i = or i32 %shl.i.i, %and10.i.i
  %arrayidx.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 12, i32 2
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool15.not.i.i = icmp ne i8 %32, 0
  %conv20.i.i = zext i1 %tobool15.not.i.i to i32
  %arrayidx.1.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 12, i32 2, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool15.not.1.i.i = icmp eq i8 %34, 0
  %conv20.1.i.i = select i1 %tobool15.not.1.i.i, i32 0, i32 2
  %arrayidx.2.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 12, i32 2, i32 2
  %35 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool15.not.2.i.i = icmp eq i8 %36, 0
  %conv20.2.i.i = select i1 %tobool15.not.2.i.i, i32 0, i32 4
  %arrayidx.3.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 12, i32 2, i32 3
  %37 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool15.not.3.i.i = icmp eq i8 %38, 0
  %conv20.3.i.i = select i1 %tobool15.not.3.i.i, i32 0, i32 8
  %arrayidx.4.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 12, i32 2, i32 4
  %39 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool15.not.4.i.i = icmp eq i8 %40, 0
  %conv20.4.i.i = select i1 %tobool15.not.4.i.i, i32 0, i32 16
  %arrayidx.5.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 12, i32 2, i32 5
  %41 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool15.not.5.i.i = icmp eq i8 %42, 0
  %conv20.5.i.i = select i1 %tobool15.not.5.i.i, i32 0, i32 32
  %arrayidx.6.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 12, i32 2, i32 6
  %43 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool15.not.6.i.i = icmp eq i8 %44, 0
  %conv20.6.i.i = select i1 %tobool15.not.6.i.i, i32 0, i32 64
  %arrayidx.7.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 12, i32 2, i32 7
  %45 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool15.not.7.i.i = icmp eq i8 %46, 0
  %conv20.7.i.i = select i1 %tobool15.not.7.i.i, i32 0, i32 128
  %pfc_map.1.1.i.i = or i32 %or12.i.i, %conv20.i.i
  %pfc_map.1.2.i.i = or i32 %pfc_map.1.1.i.i, %conv20.1.i.i
  %pfc_map.1.3.i.i = or i32 %pfc_map.1.2.i.i, %conv20.2.i.i
  %pfc_map.1.4.i.i = or i32 %pfc_map.1.3.i.i, %conv20.3.i.i
  %pfc_map.1.5.masked.i.i = or i32 %pfc_map.1.4.i.i, %conv20.4.i.i
  %pfc_map.1.6.masked.i.i = or i32 %pfc_map.1.5.masked.i.i, %conv20.5.i.i
  %conv23.i.i = or i32 %pfc_map.1.6.masked.i.i, %conv20.6.i.i
  %or25.i.i = or i32 %conv23.i.i, %conv20.7.i.i
  %47 = ptrtoint ptr %pfc.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or25.i.i, ptr %pfc.i, align 8
  %48 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp27.i.i = icmp eq i8 %49, 0
  br i1 %cmp27.i.i, label %land.rhs.i.i, label %if.then23.i.if.end27.i_crit_edge

if.then23.i.if.end27.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

land.rhs.i.i:                                     ; preds = %if.then23.i
  %dp_module.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %50 = ptrtoint ptr %dp_module.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dp_module.i.i, align 4
  %and29.i.i = and i32 %51, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %land.rhs.i.i.if.end27.i_crit_edge, label %do.end.i.i, !prof !359

land.rhs.i.i.if.end27.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 1047, ptr noundef nonnull %name.i.i, i32 noundef %or25.i.i) #10
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end27.i_crit_edge, %if.then23.i.if.end27.i_crit_edge, %do.end20.i.if.end27.i_crit_edge
  %52 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %params, align 4
  %and29.i = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end27.i.if.end35.i_crit_edge, label %if.then31.i

if.end27.i.if.end35.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %ets_willing.i.i = getelementptr inbounds %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 5
  %54 = ptrtoint ptr %ets_willing.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ets_willing.i.i, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i67.i = icmp eq i8 %55, 0
  %56 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %features.i, align 8
  %and.i68.i = and i32 %57, -252
  %masksel7.i.i = select i1 %tobool.not.i67.i, i32 0, i32 2
  %storemerge.i69.i = or i32 %and.i68.i, %masksel7.i.i
  %ets_cbs.i.i = getelementptr inbounds %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 7
  %58 = ptrtoint ptr %ets_cbs.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ets_cbs.i.i, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool2.not.i.i = icmp eq i8 %59, 0
  %masksel.i.i = select i1 %tobool2.not.i.i, i32 0, i32 8
  %storemerge1.i.i = or i32 %masksel.i.i, %storemerge.i69.i
  %ets_enabled.i.i = getelementptr inbounds %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 6
  %60 = ptrtoint ptr %ets_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ets_enabled.i.i, align 2, !range !361
  %62 = zext i8 %61 to i32
  %storemerge2.i.i = or i32 %storemerge1.i.i, %62
  %max_ets_tc.i.i = getelementptr inbounds %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 13
  %63 = ptrtoint ptr %max_ets_tc.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %max_ets_tc.i.i, align 4
  %conv.i71.i = zext i8 %64 to i32
  %shl.i72.i = shl nuw nsw i32 %conv.i71.i, 4
  %or21.i.i = or i32 %shl.i72.i, %storemerge2.i.i
  %65 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or21.i.i, ptr %features.i, align 8
  %pri_tc_tbl.i.i = getelementptr inbounds %struct.dcbx_local_params, ptr %local_admin, i32 0, i32 2, i32 0, i32 1
  %arrayidx23.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 10
  %66 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx23.i.i, align 1
  %arrayidx25.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 11
  %68 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx25.i.i, align 1
  %arrayidx28.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 9
  %70 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx28.i.i, align 1
  %conv29.i.i = zext i8 %71 to i32
  %shl30.i.i = shl i32 %conv29.i.i, 28
  %arrayidx23.1.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 10, i32 1
  %72 = ptrtoint ptr %arrayidx23.1.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx23.1.i.i, align 1
  %arrayidx25.1.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 11, i32 1
  %74 = ptrtoint ptr %arrayidx25.1.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx25.1.i.i, align 1
  %arrayidx28.1.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 9, i32 1
  %76 = ptrtoint ptr %arrayidx28.1.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx28.1.i.i, align 1
  %conv29.1.i.i = zext i8 %77 to i32
  %shl30.1.i.i = shl nuw i32 %conv29.1.i.i, 24
  %or33.1.i.i = or i32 %shl30.1.i.i, %shl30.i.i
  %arrayidx23.2.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 10, i32 2
  %78 = ptrtoint ptr %arrayidx23.2.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx23.2.i.i, align 1
  %arrayidx25.2.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 11, i32 2
  %80 = ptrtoint ptr %arrayidx25.2.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx25.2.i.i, align 1
  %arrayidx28.2.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 9, i32 2
  %82 = ptrtoint ptr %arrayidx28.2.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx28.2.i.i, align 1
  %conv29.2.i.i = zext i8 %83 to i32
  %shl30.2.i.i = shl nuw nsw i32 %conv29.2.i.i, 20
  %or33.2.i.i = or i32 %shl30.2.i.i, %or33.1.i.i
  %arrayidx23.3.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 10, i32 3
  %84 = ptrtoint ptr %arrayidx23.3.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx23.3.i.i, align 1
  %arrayidx25.3.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 11, i32 3
  %86 = ptrtoint ptr %arrayidx25.3.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx25.3.i.i, align 1
  %arrayidx28.3.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 9, i32 3
  %88 = ptrtoint ptr %arrayidx28.3.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx28.3.i.i, align 1
  %conv29.3.i.i = zext i8 %89 to i32
  %shl30.3.i.i = shl nuw nsw i32 %conv29.3.i.i, 16
  %or33.3.i.i = or i32 %shl30.3.i.i, %or33.2.i.i
  %arrayidx23.4.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 10, i32 4
  %90 = ptrtoint ptr %arrayidx23.4.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx23.4.i.i, align 1
  %bw_map.sroa.8.4.insert.ext.i.i = zext i8 %91 to i32
  %bw_map.sroa.8.4.insert.shift.i.i = shl nuw i32 %bw_map.sroa.8.4.insert.ext.i.i, 24
  %arrayidx25.4.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 11, i32 4
  %92 = ptrtoint ptr %arrayidx25.4.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx25.4.i.i, align 1
  %tsa_map.sroa.8.4.insert.ext.i.i = zext i8 %93 to i32
  %tsa_map.sroa.8.4.insert.shift.i.i = shl nuw i32 %tsa_map.sroa.8.4.insert.ext.i.i, 24
  %arrayidx28.4.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 9, i32 4
  %94 = ptrtoint ptr %arrayidx28.4.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx28.4.i.i, align 1
  %conv29.4.i.i = zext i8 %95 to i32
  %shl30.4.i.i = shl nuw nsw i32 %conv29.4.i.i, 12
  %or33.4.i.i = or i32 %shl30.4.i.i, %or33.3.i.i
  %arrayidx23.5.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 10, i32 5
  %96 = ptrtoint ptr %arrayidx23.5.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx23.5.i.i, align 1
  %bw_map.sroa.8.5.insert.ext.i.i = zext i8 %97 to i32
  %bw_map.sroa.8.5.insert.shift.i.i = shl nuw nsw i32 %bw_map.sroa.8.5.insert.ext.i.i, 16
  %bw_map.sroa.8.4.insert.insert.i.i = or i32 %bw_map.sroa.8.5.insert.shift.i.i, %bw_map.sroa.8.4.insert.shift.i.i
  %arrayidx25.5.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 11, i32 5
  %98 = ptrtoint ptr %arrayidx25.5.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx25.5.i.i, align 1
  %tsa_map.sroa.8.5.insert.ext.i.i = zext i8 %99 to i32
  %tsa_map.sroa.8.5.insert.shift.i.i = shl nuw nsw i32 %tsa_map.sroa.8.5.insert.ext.i.i, 16
  %tsa_map.sroa.8.4.insert.insert.i.i = or i32 %tsa_map.sroa.8.5.insert.shift.i.i, %tsa_map.sroa.8.4.insert.shift.i.i
  %arrayidx28.5.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 9, i32 5
  %100 = ptrtoint ptr %arrayidx28.5.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx28.5.i.i, align 1
  %conv29.5.i.i = zext i8 %101 to i32
  %shl30.5.i.i = shl nuw nsw i32 %conv29.5.i.i, 8
  %or33.5.i.i = or i32 %shl30.5.i.i, %or33.4.i.i
  %arrayidx23.6.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 10, i32 6
  %102 = ptrtoint ptr %arrayidx23.6.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx23.6.i.i, align 1
  %bw_map.sroa.8.6.insert.ext.i.i = zext i8 %103 to i32
  %bw_map.sroa.8.6.insert.shift.i.i = shl nuw nsw i32 %bw_map.sroa.8.6.insert.ext.i.i, 8
  %bw_map.sroa.8.5.insert.insert.i.i = or i32 %bw_map.sroa.8.4.insert.insert.i.i, %bw_map.sroa.8.6.insert.shift.i.i
  %arrayidx25.6.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 11, i32 6
  %104 = ptrtoint ptr %arrayidx25.6.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx25.6.i.i, align 1
  %tsa_map.sroa.8.6.insert.ext.i.i = zext i8 %105 to i32
  %tsa_map.sroa.8.6.insert.shift.i.i = shl nuw nsw i32 %tsa_map.sroa.8.6.insert.ext.i.i, 8
  %tsa_map.sroa.8.5.insert.insert.i.i = or i32 %tsa_map.sroa.8.4.insert.insert.i.i, %tsa_map.sroa.8.6.insert.shift.i.i
  %arrayidx28.6.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 9, i32 6
  %106 = ptrtoint ptr %arrayidx28.6.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx28.6.i.i, align 1
  %conv29.6.i.i = zext i8 %107 to i32
  %shl30.6.i.i = shl nuw nsw i32 %conv29.6.i.i, 4
  %or33.6.i.i = or i32 %shl30.6.i.i, %or33.5.i.i
  %arrayidx23.7.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 10, i32 7
  %108 = ptrtoint ptr %arrayidx23.7.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx23.7.i.i, align 1
  %bw_map.sroa.8.7.insert.ext.i.i = zext i8 %109 to i32
  %bw_map.sroa.8.7.insert.insert.i.i = or i32 %bw_map.sroa.8.5.insert.insert.i.i, %bw_map.sroa.8.7.insert.ext.i.i
  %arrayidx25.7.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 11, i32 7
  %110 = ptrtoint ptr %arrayidx25.7.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx25.7.i.i, align 1
  %tsa_map.sroa.8.7.insert.ext.i.i = zext i8 %111 to i32
  %tsa_map.sroa.8.7.insert.insert.i.i = or i32 %tsa_map.sroa.8.5.insert.insert.i.i, %tsa_map.sroa.8.7.insert.ext.i.i
  %arrayidx28.7.i.i = getelementptr %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 9, i32 7
  %112 = ptrtoint ptr %arrayidx28.7.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx28.7.i.i, align 1
  %conv29.7.i.i = zext i8 %113 to i32
  %or33.7.i.i = or i32 %or33.6.i.i, %conv29.7.i.i
  %114 = ptrtoint ptr %pri_tc_tbl.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or33.7.i.i, ptr %pri_tc_tbl.i.i, align 4
  %tc_bw_tbl.i.i = getelementptr inbounds %struct.dcbx_local_params, ptr %local_admin, i32 0, i32 2, i32 0, i32 2
  %bw_map.sroa.0.sroa.7.0.insert.ext.i.i = zext i8 %85 to i32
  %bw_map.sroa.0.sroa.6.0.insert.ext.i.i = zext i8 %79 to i32
  %bw_map.sroa.0.sroa.6.0.insert.shift.i.i = shl nuw nsw i32 %bw_map.sroa.0.sroa.6.0.insert.ext.i.i, 8
  %bw_map.sroa.0.sroa.5.0.insert.ext.i.i = zext i8 %73 to i32
  %bw_map.sroa.0.sroa.5.0.insert.shift.i.i = shl nuw nsw i32 %bw_map.sroa.0.sroa.5.0.insert.ext.i.i, 16
  %bw_map.sroa.0.sroa.0.0.insert.ext.i.i = zext i8 %67 to i32
  %bw_map.sroa.0.sroa.0.0.insert.shift.i.i = shl nuw i32 %bw_map.sroa.0.sroa.0.0.insert.ext.i.i, 24
  %bw_map.sroa.0.sroa.6.0.insert.insert.i.i = or i32 %bw_map.sroa.0.sroa.5.0.insert.shift.i.i, %bw_map.sroa.0.sroa.0.0.insert.shift.i.i
  %bw_map.sroa.0.sroa.5.0.insert.insert.i.i = or i32 %bw_map.sroa.0.sroa.6.0.insert.insert.i.i, %bw_map.sroa.0.sroa.6.0.insert.shift.i.i
  %bw_map.sroa.0.sroa.0.0.insert.insert.i.i = or i32 %bw_map.sroa.0.sroa.5.0.insert.insert.i.i, %bw_map.sroa.0.sroa.7.0.insert.ext.i.i
  %115 = ptrtoint ptr %tc_bw_tbl.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %bw_map.sroa.0.sroa.0.0.insert.insert.i.i, ptr %tc_bw_tbl.i.i, align 8
  %arrayidx1.1.i.i.i = getelementptr inbounds %struct.dcbx_local_params, ptr %local_admin, i32 0, i32 2, i32 0, i32 2, i32 1
  %116 = ptrtoint ptr %arrayidx1.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %bw_map.sroa.8.7.insert.insert.i.i, ptr %arrayidx1.1.i.i.i, align 4
  %tc_tsa_tbl.i.i = getelementptr inbounds %struct.dcbx_local_params, ptr %local_admin, i32 0, i32 2, i32 0, i32 3
  %tsa_map.sroa.0.sroa.7.0.insert.ext.i.i = zext i8 %87 to i32
  %tsa_map.sroa.0.sroa.6.0.insert.ext.i.i = zext i8 %81 to i32
  %tsa_map.sroa.0.sroa.6.0.insert.shift.i.i = shl nuw nsw i32 %tsa_map.sroa.0.sroa.6.0.insert.ext.i.i, 8
  %tsa_map.sroa.0.sroa.5.0.insert.ext.i.i = zext i8 %75 to i32
  %tsa_map.sroa.0.sroa.5.0.insert.shift.i.i = shl nuw nsw i32 %tsa_map.sroa.0.sroa.5.0.insert.ext.i.i, 16
  %tsa_map.sroa.0.sroa.0.0.insert.ext.i.i = zext i8 %69 to i32
  %tsa_map.sroa.0.sroa.0.0.insert.shift.i.i = shl nuw i32 %tsa_map.sroa.0.sroa.0.0.insert.ext.i.i, 24
  %tsa_map.sroa.0.sroa.6.0.insert.insert.i.i = or i32 %tsa_map.sroa.0.sroa.5.0.insert.shift.i.i, %tsa_map.sroa.0.sroa.0.0.insert.shift.i.i
  %tsa_map.sroa.0.sroa.5.0.insert.insert.i.i = or i32 %tsa_map.sroa.0.sroa.6.0.insert.insert.i.i, %tsa_map.sroa.0.sroa.6.0.insert.shift.i.i
  %tsa_map.sroa.0.sroa.0.0.insert.insert.i.i = or i32 %tsa_map.sroa.0.sroa.5.0.insert.insert.i.i, %tsa_map.sroa.0.sroa.7.0.insert.ext.i.i
  %117 = ptrtoint ptr %tc_tsa_tbl.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %tsa_map.sroa.0.sroa.0.0.insert.insert.i.i, ptr %tc_tsa_tbl.i.i, align 8
  %arrayidx1.1.i4.i.i = getelementptr inbounds %struct.dcbx_local_params, ptr %local_admin, i32 0, i32 2, i32 0, i32 3, i32 1
  %118 = ptrtoint ptr %arrayidx1.1.i4.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %tsa_map.sroa.8.7.insert.insert.i.i, ptr %arrayidx1.1.i4.i.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then31.i, %if.end27.i.if.end35.i_crit_edge
  %and37.i = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end35.i.qed_dcbx_set_local_params.exit_crit_edge, label %if.then39.i

if.end35.i.qed_dcbx_set_local_params.exit_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qed_dcbx_set_local_params.exit

if.then39.i:                                      ; preds = %if.end35.i
  %app.i = getelementptr inbounds %struct.dcbx_local_params, ptr %local_admin, i32 0, i32 2, i32 2
  %config41.i = getelementptr inbounds %struct.qed_dcbx_set, ptr %params, i32 0, i32 2
  %app_willing.i.i = getelementptr inbounds %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 2
  %119 = ptrtoint ptr %app_willing.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %app_willing.i.i, align 2, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not.i73.i = icmp eq i8 %120, 0
  %121 = ptrtoint ptr %app.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %app.i, align 4
  %and.i74.i = and i32 %122, -16711684
  %masksel.i75.i = select i1 %tobool.not.i73.i, i32 0, i32 2
  %storemerge.i76.i = or i32 %and.i74.i, %masksel.i75.i
  %app_valid.i.i = getelementptr inbounds %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 3
  %123 = ptrtoint ptr %app_valid.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %app_valid.i.i, align 1, !range !361
  %125 = zext i8 %124 to i32
  %storemerge1.i77.i = or i32 %storemerge.i76.i, %125
  %num_app_entries.i.i = getelementptr inbounds %struct.qed_dcbx_set, ptr %params, i32 0, i32 2, i32 0, i32 1
  %126 = ptrtoint ptr %num_app_entries.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %num_app_entries.i.i, align 4
  %conv.i78.i = zext i16 %127 to i32
  %shl.i79.i = shl nuw i32 %conv.i78.i, 16
  %or14.i.i = or i32 %shl.i79.i, %storemerge1.i77.i
  store i32 %or14.i.i, ptr %app.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end42.i.i.for.body.i.i_crit_edge, %if.then39.i
  %i.02.i.i = phi i32 [ 0, %if.then39.i ], [ %inc.i.i, %if.end42.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i80.i = getelementptr %struct.dcbx_local_params, ptr %local_admin, i32 0, i32 2, i32 2, i32 1, i32 %i.02.i.i
  %128 = ptrtoint ptr %arrayidx.i80.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %arrayidx.i80.i, align 4
  br i1 %ieee.0.off0.i, label %if.then18.i.i, label %if.else32.i.i

if.then18.i.i:                                    ; preds = %for.body.i.i
  %sf_ieee.i.i = getelementptr [32 x %struct.qed_app_entry], ptr %config41.i, i32 0, i32 %i.02.i.i, i32 1
  %129 = ptrtoint ptr %sf_ieee.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sf_ieee.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %130)
  %131 = icmp ult i32 %130, 4
  br i1 %131, label %switch.lookup, label %if.then18.i.i.if.end42.i.i_crit_edge

if.then18.i.i.if.end42.i.i_crit_edge:             ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i.i

if.else32.i.i:                                    ; preds = %for.body.i.i
  %arrayidx35.i.i = getelementptr [32 x %struct.qed_app_entry], ptr %config41.i, i32 0, i32 %i.02.i.i
  %132 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx35.i.i, align 4, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool36.not.i.i = icmp eq i8 %133, 0
  br i1 %tobool36.not.i.i, label %if.else32.i.i.if.end42.sink.split.i.i_crit_edge, label %if.else32.i.i.if.end42.i.i_crit_edge

if.else32.i.i.if.end42.i.i_crit_edge:             ; preds = %if.else32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i.i

if.else32.i.i.if.end42.sink.split.i.i_crit_edge:  ; preds = %if.else32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.sink.split.i.i

switch.lookup:                                    ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.qed_dcbx_config_params, i32 0, i32 %130
  %134 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %134)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end42.sink.split.i.i

if.end42.sink.split.i.i:                          ; preds = %switch.lookup, %if.else32.i.i.if.end42.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 256, %if.else32.i.i.if.end42.sink.split.i.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %135 = ptrtoint ptr %arrayidx.i80.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %.sink.i.i, ptr %arrayidx.i80.i, align 4
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.end42.sink.split.i.i, %if.else32.i.i.if.end42.i.i_crit_edge, %if.then18.i.i.if.end42.i.i_crit_edge
  %136 = ptrtoint ptr %arrayidx.i80.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx.i80.i, align 4
  %proto_id.i.i = getelementptr [32 x %struct.qed_app_entry], ptr %config41.i, i32 0, i32 %i.02.i.i, i32 4
  %138 = ptrtoint ptr %proto_id.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %proto_id.i.i, align 2
  %conv46.i.i = zext i16 %139 to i32
  %shl47.i.i = shl nuw i32 %conv46.i.i, 16
  %and43.masked.i.i = and i32 %137, 65280
  %and49.i.i = or i32 %shl47.i.i, %and43.masked.i.i
  %prio.i.i = getelementptr [32 x %struct.qed_app_entry], ptr %config41.i, i32 0, i32 %i.02.i.i, i32 3
  %140 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %prio.i.i, align 1
  %conv52.i.i = zext i8 %141 to i32
  %or54.i.i = or i32 %and49.i.i, %conv52.i.i
  store i32 %or54.i.i, ptr %arrayidx.i80.i, align 4
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %if.end42.i.i.qed_dcbx_set_local_params.exit_crit_edge, label %if.end42.i.i.for.body.i.i_crit_edge

if.end42.i.i.for.body.i.i_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end42.i.i.qed_dcbx_set_local_params.exit_crit_edge: ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qed_dcbx_set_local_params.exit

qed_dcbx_set_local_params.exit:                   ; preds = %if.end42.i.i.qed_dcbx_set_local_params.exit_crit_edge, %if.end35.i.qed_dcbx_set_local_params.exit_crit_edge
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %142 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mcp_info, align 8
  %port_addr = getelementptr inbounds %struct.qed_mcp_info, ptr %143, i32 0, i32 7
  %144 = ptrtoint ptr %port_addr to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %port_addr, align 8
  %add = add i32 %145, 912
  call void @qed_memcpy_to(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add, ptr noundef nonnull %local_admin, i32 noundef 168) #7
  %call = call i32 @qed_mcp_cmd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 620756992, i32 noundef 1, ptr noundef nonnull %resp, ptr noundef nonnull %param) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %qed_dcbx_set_local_params.exit.cleanup_crit_edge, label %do.body

qed_dcbx_set_local_params.exit.cleanup_crit_edge: ; preds = %qed_dcbx_set_local_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %qed_dcbx_set_local_params.exit
  %146 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %147)
  %cmp = icmp ult i8 %147, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !362

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool14.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool14.not, ptr @.str.3, ptr %name
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 1230, ptr noundef nonnull %spec.select) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %qed_dcbx_set_local_params.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %do.body.cleanup_crit_edge ], [ %call, %do.end ], [ 0, %qed_dcbx_set_local_params.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #7
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %local_admin) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_memcpy_to(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_cmd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_dcbx_get_config_params(ptr noundef %p_hwfn, ptr nocapture noundef writeonly %params) local_unnamed_addr #0 align 64 {
entry:
  %data.i.i = alloca %struct.qed_dcbx_mib_meta_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %p_dcbx_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 46
  %0 = ptrtoint ptr %p_dcbx_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_dcbx_info, align 4
  %valid = getelementptr inbounds %struct.qed_dcbx_info, ptr %1, i32 0, i32 6, i32 2, i32 1
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %valid, align 4, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %set = getelementptr inbounds %struct.qed_dcbx_info, ptr %1, i32 0, i32 6
  %4 = call ptr @memcpy(ptr %params, ptr %set, i32 576)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1784) #11
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %7, i32 0, i32 39
  %8 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %b_is_vf.i, align 4, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.if.then8_crit_edge

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.end.i:                                         ; preds = %if.end5
  %call.i = tail call ptr @qed_ptt_acquire(ptr noundef %p_hwfn) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.if.then8_crit_edge, label %if.end3.i

if.end.i.if.then8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.end3.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data.i.i) #7
  %10 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i.i, i32 0, i32 4
  %12 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i.i, i32 0, i32 5
  %13 = call ptr @memset(ptr %data.i.i, i32 0, i32 12)
  %mcp_info.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %14 = ptrtoint ptr %mcp_info.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mcp_info.i.i, align 8
  %port_addr.i.i = getelementptr inbounds %struct.qed_mcp_info, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %port_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_addr.i.i, align 8
  %add.i.i = add i32 %17, 1252
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i.i, ptr %12, align 4
  %19 = ptrtoint ptr %p_dcbx_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p_dcbx_info, align 4
  %operational.i.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %operational.i.i, ptr %10, align 4
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 172, ptr %11, align 4
  %call.i.i = call fastcc i32 @qed_dcbx_copy_mib(ptr noundef %p_hwfn, ptr noundef nonnull %call.i, ptr noundef nonnull %data.i.i, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %qed_dcbx_query_params.exit, label %qed_dcbx_query_params.exit.thread79

qed_dcbx_query_params.exit.thread79:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @qed_ptt_release(ptr noundef %p_hwfn, ptr noundef nonnull %call.i) #7
  br label %if.then8

qed_dcbx_query_params.exit:                       ; preds = %if.end3.i
  %call8.i = tail call fastcc i32 @qed_dcbx_get_params(ptr noundef %p_hwfn, ptr noundef nonnull %call7.i.i, i32 noundef 0) #7
  tail call void @qed_ptt_release(ptr noundef %p_hwfn, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool7.not = icmp eq i32 %call8.i, 0
  br i1 %tobool7.not, label %if.end9, label %qed_dcbx_query_params.exit.if.then8_crit_edge

qed_dcbx_query_params.exit.if.then8_crit_edge:    ; preds = %qed_dcbx_query_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then8:                                         ; preds = %qed_dcbx_query_params.exit.if.then8_crit_edge, %qed_dcbx_query_params.exit.thread79, %if.end.i.if.then8_crit_edge, %if.end5.if.then8_crit_edge
  %retval.0.i78 = phi i32 [ %call8.i, %qed_dcbx_query_params.exit.if.then8_crit_edge ], [ %call.i.i, %qed_dcbx_query_params.exit.thread79 ], [ -16, %if.end.i.if.then8_crit_edge ], [ -22, %if.end5.if.then8_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end9:                                          ; preds = %qed_dcbx_query_params.exit
  %23 = ptrtoint ptr %p_dcbx_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p_dcbx_info, align 4
  %set11 = getelementptr inbounds %struct.qed_dcbx_info, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %set11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %set11, align 4
  %26 = load ptr, ptr %p_dcbx_info, align 4
  %ver_num = getelementptr inbounds %struct.qed_dcbx_info, ptr %26, i32 0, i32 6, i32 3
  %27 = ptrtoint ptr %ver_num to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ver_num, align 4
  %cee = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %cee to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cee, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool14.not = icmp eq i8 %29, 0
  br i1 %tobool14.not, label %if.end9.if.end19_crit_edge, label %if.then15

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %p_dcbx_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p_dcbx_info, align 4
  %ver_num18 = getelementptr inbounds %struct.qed_dcbx_info, ptr %31, i32 0, i32 6, i32 3
  %32 = ptrtoint ptr %ver_num18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ver_num18, align 4
  %or = or i32 %33, 2
  store i32 %or, ptr %ver_num18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end9.if.end19_crit_edge
  %ieee = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call7.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %ieee to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ieee, align 2, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool21.not = icmp eq i8 %35, 0
  br i1 %tobool21.not, label %if.end19.if.end27_crit_edge, label %if.then22

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %p_dcbx_info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %p_dcbx_info, align 4
  %ver_num25 = getelementptr inbounds %struct.qed_dcbx_info, ptr %37, i32 0, i32 6, i32 3
  %38 = ptrtoint ptr %ver_num25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ver_num25, align 4
  %or26 = or i32 %39, 1
  store i32 %or26, ptr %ver_num25, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end19.if.end27_crit_edge
  %local = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call7.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %local to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %local, align 4, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool29.not = icmp eq i8 %41, 0
  br i1 %tobool29.not, label %if.end27.if.end35_crit_edge, label %if.then30

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %p_dcbx_info to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %p_dcbx_info, align 4
  %ver_num33 = getelementptr inbounds %struct.qed_dcbx_info, ptr %43, i32 0, i32 6, i32 3
  %44 = ptrtoint ptr %ver_num33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ver_num33, align 4
  %or34 = or i32 %45, 4
  store i32 %or34, ptr %ver_num33, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end27.if.end35_crit_edge
  %enabled = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call7.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %enabled, align 1, !range !361
  %48 = ptrtoint ptr %p_dcbx_info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %p_dcbx_info, align 4
  %enabled40 = getelementptr inbounds %struct.qed_dcbx_info, ptr %49, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %enabled40 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %47, ptr %enabled40, align 4
  %51 = load ptr, ptr %p_dcbx_info, align 4
  %config43 = getelementptr inbounds %struct.qed_dcbx_info, ptr %51, i32 0, i32 6, i32 2
  %params46 = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call7.i.i, i32 0, i32 1
  %52 = call ptr @memcpy(ptr %config43, ptr %params46, i32 560)
  %53 = load ptr, ptr %p_dcbx_info, align 4
  %valid50 = getelementptr inbounds %struct.qed_dcbx_info, ptr %53, i32 0, i32 6, i32 2, i32 1
  %54 = ptrtoint ptr %valid50 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %valid50, align 4
  %55 = load ptr, ptr %p_dcbx_info, align 4
  %set52 = getelementptr inbounds %struct.qed_dcbx_info, ptr %55, i32 0, i32 6
  %56 = call ptr @memcpy(ptr %params, ptr %set52, i32 576)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then8, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %retval.0.i78, %if.then8 ], [ 0, %if.end35 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_dcbnl_ieee_getpfc(ptr noundef %cdev, ptr nocapture noundef %pfc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qed_dcbnl_get_ieee_pfc(ptr noundef %cdev, ptr noundef %pfc, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_dcbnl_ieee_setpfc(ptr noundef %cdev, ptr nocapture noundef readonly %pfc) #0 align 64 {
entry:
  %dcbx_set = alloca %struct.qed_dcbx_set, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %dcbx_set) #7
  %call = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ieee = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %ieee to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ieee, align 2, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %do.body, label %if.end15

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ult i8 %3, 2
  br i1 %cmp, label %do.end, label %do.body.do.end14_crit_edge, !prof !362

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.3, ptr %name
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.61, i32 noundef 2093, ptr noundef nonnull %spec.select) #10
  br label %do.end14

do.end14:                                         ; preds = %do.end, %do.body.do.end14_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end
  tail call void @kfree(ptr noundef nonnull %call) #7
  %4 = call ptr @memset(ptr %dcbx_set, i32 0, i32 576)
  %call16 = call i32 @qed_dcbx_get_config_params(ptr noundef %hwfns, ptr noundef nonnull %dcbx_set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %5 = ptrtoint ptr %dcbx_set to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dcbx_set, align 4
  %or = or i32 %6, 2
  store i32 %or, ptr %dcbx_set, align 4
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %7 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pfc_en, align 1
  %and = and i8 %8, 1
  %arrayidx30 = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 12, i32 2, i32 0
  %9 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and, ptr %arrayidx30, align 1
  %and.1 = lshr i8 %8, 1
  %and.1.lobit = and i8 %and.1, 1
  %arrayidx30.1 = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 12, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %and.1.lobit, ptr %arrayidx30.1, align 4
  %and.2 = lshr i8 %8, 2
  %and.2.lobit = and i8 %and.2, 1
  %arrayidx30.2 = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 12, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %and.2.lobit, ptr %arrayidx30.2, align 1
  %and.3 = lshr i8 %8, 3
  %and.3.lobit = and i8 %and.3, 1
  %arrayidx30.3 = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 12, i32 2, i32 3
  %12 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %and.3.lobit, ptr %arrayidx30.3, align 2
  %and.4 = lshr i8 %8, 4
  %and.4.lobit = and i8 %and.4, 1
  %arrayidx30.4 = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 12, i32 2, i32 4
  %13 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %and.4.lobit, ptr %arrayidx30.4, align 1
  %and.5 = lshr i8 %8, 5
  %and.5.lobit = and i8 %and.5, 1
  %arrayidx30.5 = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 12, i32 2, i32 5
  %14 = ptrtoint ptr %arrayidx30.5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %and.5.lobit, ptr %arrayidx30.5, align 4
  %and.6 = lshr i8 %8, 6
  %and.6.lobit = and i8 %and.6, 1
  %arrayidx30.6 = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 12, i32 2, i32 6
  %15 = ptrtoint ptr %arrayidx30.6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %and.6.lobit, ptr %arrayidx30.6, align 1
  %.lobit = lshr i8 %8, 7
  %arrayidx30.7 = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 12, i32 2, i32 7
  %16 = ptrtoint ptr %arrayidx30.7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.lobit, ptr %arrayidx30.7, align 2
  %17 = ptrtoint ptr %pfc to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pfc, align 8
  %max_tc = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 12, i32 3
  %19 = ptrtoint ptr %max_tc to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %max_tc, align 1
  %call34 = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #7
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end19.cleanup_crit_edge, label %if.end37

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %p_dcbx_info1.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 46
  %20 = ptrtoint ptr %p_dcbx_info1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p_dcbx_info1.i, align 4
  %set2.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %21, i32 0, i32 6
  %22 = call ptr @memcpy(ptr %set2.i, ptr %dcbx_set, i32 576)
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call34) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -22, %do.end14 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %dcbx_set) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_dcbnl_ieee_getets(ptr noundef %cdev, ptr nocapture noundef writeonly %ets) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call.i = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns.i, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.qed_dcbnl_get_ieee_ets.exit_crit_edge, label %if.end.i

entry.qed_dcbnl_get_ieee_ets.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qed_dcbnl_get_ieee_ets.exit

if.end.i:                                         ; preds = %entry
  %ieee.i = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %ieee.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ieee.i, align 2, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not.i = icmp eq i8 %1, 0
  br i1 %tobool1.not.i, label %do.body.i, label %if.end15.i

do.body.i:                                        ; preds = %if.end.i
  %dp_level.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.i = icmp ult i8 %3, 2
  br i1 %cmp.i, label %do.end.i, label %do.body.i.cleanup.sink.split.i_crit_edge, !prof !362

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.62, i32 noundef 2135, ptr noundef nonnull %name.i) #10
  br label %cleanup.sink.split.i

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_ets_tc.i = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call.i, i32 0, i32 1, i32 13
  %4 = ptrtoint ptr %max_ets_tc.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_ets_tc.i, align 4
  %ets_cap.i = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 1
  %6 = ptrtoint ptr %ets_cap.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %ets_cap.i, align 1
  %ets_willing.i = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call.i, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %ets_willing.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ets_willing.i, align 1, !range !361
  %9 = ptrtoint ptr %ets to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %ets, align 1
  %ets_cbs.i = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call.i, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %ets_cbs.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ets_cbs.i, align 1, !range !361
  %cbs.i = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 2
  %12 = ptrtoint ptr %cbs.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %cbs.i, align 1
  %tc_tx_bw.i = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 3
  %ets_tc_bw_tbl.i = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call.i, i32 0, i32 1, i32 10
  %13 = ptrtoint ptr %ets_tc_bw_tbl.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %ets_tc_bw_tbl.i, align 1
  %15 = ptrtoint ptr %tc_tx_bw.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %tc_tx_bw.i, align 1
  %tc_tsa.i = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 5
  %ets_tc_tsa_tbl.i = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call.i, i32 0, i32 1, i32 11
  %16 = ptrtoint ptr %ets_tc_tsa_tbl.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %ets_tc_tsa_tbl.i, align 1
  %18 = ptrtoint ptr %tc_tsa.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %tc_tsa.i, align 1
  %prio_tc.i = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 6
  %ets_pri_tc_tbl.i = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call.i, i32 0, i32 1, i32 9
  %19 = ptrtoint ptr %ets_pri_tc_tbl.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %ets_pri_tc_tbl.i, align 1
  %21 = ptrtoint ptr %prio_tc.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %prio_tc.i, align 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end15.i, %do.end.i, %do.body.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ 0, %if.end15.i ], [ -22, %do.end.i ], [ -22, %do.body.i.cleanup.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i) #7
  br label %qed_dcbnl_get_ieee_ets.exit

qed_dcbnl_get_ieee_ets.exit:                      ; preds = %cleanup.sink.split.i, %entry.qed_dcbnl_get_ieee_ets.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.qed_dcbnl_get_ieee_ets.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_dcbnl_ieee_setets(ptr noundef %cdev, ptr nocapture noundef readonly %ets) #0 align 64 {
entry:
  %dcbx_set = alloca %struct.qed_dcbx_set, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %dcbx_set) #7
  %call = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ieee = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %ieee to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ieee, align 2, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %do.body, label %if.end15

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ult i8 %3, 2
  br i1 %cmp, label %do.end, label %do.body.do.end14_crit_edge, !prof !362

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.3, ptr %name
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.63, i32 noundef 2183, ptr noundef nonnull %spec.select) #10
  br label %do.end14

do.end14:                                         ; preds = %do.end, %do.body.do.end14_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end
  tail call void @kfree(ptr noundef nonnull %call) #7
  %4 = call ptr @memset(ptr %dcbx_set, i32 0, i32 576)
  %call16 = call i32 @qed_dcbx_get_config_params(ptr noundef %hwfns, ptr noundef nonnull %dcbx_set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %5 = ptrtoint ptr %dcbx_set to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dcbx_set, align 4
  %or = or i32 %6, 4
  store i32 %or, ptr %dcbx_set, align 4
  %ets_cap = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 1
  %7 = ptrtoint ptr %ets_cap to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ets_cap, align 1
  %max_ets_tc = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 13
  %9 = ptrtoint ptr %max_ets_tc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %max_ets_tc, align 4
  %10 = ptrtoint ptr %ets to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ets, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool20 = icmp ne i8 %11, 0
  %ets_willing = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 5
  %frombool = zext i1 %tobool20 to i8
  %12 = ptrtoint ptr %ets_willing to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %ets_willing, align 1
  %cbs = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 2
  %13 = ptrtoint ptr %cbs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cbs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool23 = icmp ne i8 %14, 0
  %ets_cbs = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 7
  %frombool26 = zext i1 %tobool23 to i8
  %15 = ptrtoint ptr %ets_cbs to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool26, ptr %ets_cbs, align 1
  %ets_tc_bw_tbl = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 10
  %tc_tx_bw = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 3
  %16 = ptrtoint ptr %tc_tx_bw to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %tc_tx_bw, align 1
  %18 = ptrtoint ptr %ets_tc_bw_tbl to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %ets_tc_bw_tbl, align 1
  %ets_tc_tsa_tbl = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 11
  %tc_tsa = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 5
  %19 = ptrtoint ptr %tc_tsa to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %tc_tsa, align 1
  %21 = ptrtoint ptr %ets_tc_tsa_tbl to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %ets_tc_tsa_tbl, align 1
  %ets_pri_tc_tbl = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 9
  %prio_tc = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 6
  %22 = ptrtoint ptr %prio_tc to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %prio_tc, align 1
  %24 = ptrtoint ptr %ets_pri_tc_tbl to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %ets_pri_tc_tbl, align 1
  %call39 = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #7
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end19.cleanup_crit_edge, label %if.end42

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %p_dcbx_info1.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 46
  %25 = ptrtoint ptr %p_dcbx_info1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p_dcbx_info1.i, align 4
  %set2.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %26, i32 0, i32 6
  %27 = call ptr @memcpy(ptr %set2.i, ptr %dcbx_set, i32 576)
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call39) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end42 ], [ -22, %do.end14 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %dcbx_set) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_dcbnl_ieee_peer_getets(ptr noundef %cdev, ptr nocapture noundef writeonly %ets) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qed_dcbnl_get_ieee_ets(ptr noundef %cdev, ptr noundef %ets, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_dcbnl_ieee_peer_getpfc(ptr noundef %cdev, ptr nocapture noundef %pfc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qed_dcbnl_get_ieee_pfc(ptr noundef %cdev, ptr noundef %pfc, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_dcbnl_ieee_getapp(ptr noundef %cdev, ptr nocapture noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end12_crit_edge, label %do.end, !prof !359

land.rhs.do.end12_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %4 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %app, align 2
  %conv9 = zext i8 %5 to i32
  %protocol = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol, align 2
  %conv10 = zext i16 %7 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef 2261, ptr noundef nonnull %spec.select, i32 noundef %conv9, i32 noundef %conv10) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end, %land.rhs.do.end12_crit_edge, %entry.do.end12_crit_edge
  %8 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %app, align 2
  %switch.tableidx = add i8 %9, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %10 = icmp ult i8 %switch.tableidx, 4
  br i1 %10, label %switch.lookup, label %do.body17

do.body17:                                        ; preds = %do.end12
  %dp_level18 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %11 = ptrtoint ptr %dp_level18 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dp_level18, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp20 = icmp ult i8 %12, 2
  br i1 %cmp20, label %do.end31, label %do.body17.cleanup_crit_edge, !prof !362

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end31:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %name33 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool35.not = icmp eq ptr %name33, null
  %spec.select162 = select i1 %tobool35.not, ptr @.str.3, ptr %name33
  %conv43 = zext i8 %9 to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.65, i32 noundef 2265, ptr noundef nonnull %spec.select162, i32 noundef %conv43) #10
  br label %cleanup

switch.lookup:                                    ; preds = %do.end12
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %call49 = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 0)
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %switch.lookup.cleanup_crit_edge, label %if.end52

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %switch.lookup
  %ieee = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call49, i32 0, i32 4
  %13 = ptrtoint ptr %ieee to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ieee, align 2, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool53.not = icmp eq i8 %14, 0
  br i1 %tobool53.not, label %do.body55, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end52
  %params = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call49, i32 0, i32 1
  %protocol94 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  br label %for.body

do.body55:                                        ; preds = %if.end52
  %15 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp58 = icmp ult i8 %16, 2
  br i1 %cmp58, label %do.end69, label %do.body55.do.end83_crit_edge, !prof !362

do.body55.do.end83_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end83

do.end69:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  %name71 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool73.not = icmp eq ptr %name71, null
  %spec.select163 = select i1 %tobool73.not, ptr @.str.3, ptr %name71
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.65, i32 noundef 2274, ptr noundef nonnull %spec.select163) #10
  br label %do.end83

do.end83:                                         ; preds = %do.end69, %do.body55.do.end83_crit_edge
  tail call void @kfree(ptr noundef nonnull %call49) #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0173 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %sf_ieee89 = getelementptr [32 x %struct.qed_app_entry], ptr %params, i32 0, i32 %i.0173, i32 1
  %17 = ptrtoint ptr %sf_ieee89 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sf_ieee89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %switch.idx.cast)
  %cmp91 = icmp eq i32 %18, %switch.idx.cast
  br i1 %cmp91, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %proto_id = getelementptr [32 x %struct.qed_app_entry], ptr %params, i32 0, i32 %i.0173, i32 4
  %19 = ptrtoint ptr %proto_id to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %proto_id, align 2
  %21 = ptrtoint ptr %protocol94 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %protocol94, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp96 = icmp eq i16 %20, %22
  br i1 %cmp96, label %if.end125, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0173, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %do.end107, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end107:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %name109 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool111.not = icmp eq ptr %name109, null
  %spec.select164 = select i1 %tobool111.not, ptr @.str.3, ptr %name109
  %23 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %app, align 2
  %conv119 = zext i8 %24 to i32
  %25 = ptrtoint ptr %protocol94 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %protocol94, align 2
  %conv121 = zext i16 %26 to i32
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.65, i32 noundef 2290, ptr noundef nonnull %spec.select164, i32 noundef %conv119, i32 noundef %conv121) #10
  tail call void @kfree(ptr noundef nonnull %call49) #7
  br label %cleanup

if.end125:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %prio99 = getelementptr [32 x %struct.qed_app_entry], ptr %params, i32 0, i32 %i.0173, i32 3
  %27 = ptrtoint ptr %prio99 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %prio99, align 1
  %29 = call i8 @llvm.cttz.i8(i8 %28, i1 true), !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %iszero = icmp eq i8 %28, 0
  %conv127 = select i1 %iszero, i8 -1, i8 %29
  %priority = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %30 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv127, ptr %priority, align 1
  tail call void @kfree(ptr noundef nonnull %call49) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end125, %do.end107, %do.end83, %switch.lookup.cleanup_crit_edge, %do.end31, %do.body17.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end107 ], [ 0, %if.end125 ], [ -22, %do.end83 ], [ -22, %do.end31 ], [ -22, %do.body17.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_dcbnl_ieee_setapp(ptr noundef %cdev, ptr nocapture noundef readonly %app) #0 align 64 {
entry:
  %dcbx_set = alloca %struct.qed_dcbx_set, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %dcbx_set) #7
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end13_crit_edge

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end13_crit_edge, label %do.end, !prof !359

land.rhs.do.end13_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %4 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %app, align 2
  %conv9 = zext i8 %5 to i32
  %protocol = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol, align 2
  %conv10 = zext i16 %7 to i32
  %priority = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %8 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %priority, align 1
  %conv11 = zext i8 %9 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 2313, ptr noundef nonnull %spec.select, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %conv11) #10
  br label %do.end13

do.end13:                                         ; preds = %do.end, %land.rhs.do.end13_crit_edge, %entry.do.end13_crit_edge
  %priority14 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %10 = ptrtoint ptr %priority14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %priority14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %11)
  %cmp16 = icmp ugt i8 %11, 7
  br i1 %cmp16, label %do.body19, label %if.end50

do.body19:                                        ; preds = %do.end13
  %12 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp22 = icmp ult i8 %13, 2
  br i1 %cmp22, label %do.end33, label %do.body19.cleanup_crit_edge, !prof !362

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end33:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %name35 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool37.not = icmp eq ptr %name35, null
  %spec.select242 = select i1 %tobool37.not, ptr @.str.3, ptr %name35
  %conv45 = zext i8 %11 to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef 2315, ptr noundef nonnull %spec.select242, i32 noundef %conv45) #10
  br label %cleanup

if.end50:                                         ; preds = %do.end13
  %14 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %app, align 2
  %switch.tableidx = add i8 %15, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %16 = icmp ult i8 %switch.tableidx, 4
  br i1 %16, label %switch.lookup, label %do.body55

do.body55:                                        ; preds = %if.end50
  %dp_level56 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %17 = ptrtoint ptr %dp_level56 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dp_level56, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp58 = icmp ult i8 %18, 2
  br i1 %cmp58, label %do.end69, label %do.body55.cleanup_crit_edge, !prof !362

do.body55.cleanup_crit_edge:                      ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end69:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  %name71 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool73.not = icmp eq ptr %name71, null
  %spec.select243 = select i1 %tobool73.not, ptr @.str.3, ptr %name71
  %conv81 = zext i8 %15 to i32
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.75, i32 noundef 2321, ptr noundef nonnull %spec.select243, i32 noundef %conv81) #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end50
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %call87 = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 0)
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %switch.lookup.cleanup_crit_edge, label %if.end90

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end90:                                         ; preds = %switch.lookup
  %ieee = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call87, i32 0, i32 4
  %19 = ptrtoint ptr %ieee to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ieee, align 2, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool91.not = icmp eq i8 %20, 0
  br i1 %tobool91.not, label %do.body93, label %if.end122

do.body93:                                        ; preds = %if.end90
  %21 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp96 = icmp ult i8 %22, 2
  br i1 %cmp96, label %do.end107, label %do.body93.do.end121_crit_edge, !prof !362

do.body93.do.end121_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end121

do.end107:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  %name109 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool111.not = icmp eq ptr %name109, null
  %spec.select244 = select i1 %tobool111.not, ptr @.str.3, ptr %name109
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.75, i32 noundef 2330, ptr noundef nonnull %spec.select244) #10
  br label %do.end121

do.end121:                                        ; preds = %do.end107, %do.body93.do.end121_crit_edge
  tail call void @kfree(ptr noundef nonnull %call87) #7
  br label %cleanup

if.end122:                                        ; preds = %if.end90
  tail call void @kfree(ptr noundef nonnull %call87) #7
  %23 = call ptr @memset(ptr %dcbx_set, i32 0, i32 576)
  %call123 = call i32 @qed_dcbx_get_config_params(ptr noundef %hwfns, ptr noundef nonnull %dcbx_set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %for.cond.preheader, label %if.end122.cleanup_crit_edge

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end122
  %config = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2
  %protocol135 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0259 = phi i32 [ 0, %for.cond.preheader ], [ %inc147, %for.inc.for.body_crit_edge ]
  %sf_ieee130 = getelementptr [32 x %struct.qed_app_entry], ptr %config, i32 0, i32 %i.0259, i32 1
  %24 = ptrtoint ptr %sf_ieee130 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sf_ieee130, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %switch.idx.cast)
  %cmp132 = icmp eq i32 %25, %switch.idx.cast
  br i1 %cmp132, label %land.lhs.true, label %for.body.if.end140_crit_edge

for.body.if.end140_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

land.lhs.true:                                    ; preds = %for.body
  %proto_id = getelementptr [32 x %struct.qed_app_entry], ptr %config, i32 0, i32 %i.0259, i32 4
  %26 = ptrtoint ptr %proto_id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %proto_id, align 2
  %28 = ptrtoint ptr %protocol135 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %protocol135, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp137 = icmp eq i16 %27, %29
  br i1 %cmp137, label %land.lhs.true.if.end168_crit_edge, label %land.lhs.true.if.end140_crit_edge

land.lhs.true.if.end140_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

land.lhs.true.if.end168_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168

if.end140:                                        ; preds = %land.lhs.true.if.end140_crit_edge, %for.body.if.end140_crit_edge
  %proto_id141 = getelementptr [32 x %struct.qed_app_entry], ptr %config, i32 0, i32 %i.0259, i32 4
  %30 = ptrtoint ptr %proto_id141 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %proto_id141, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool142.not = icmp eq i16 %31, 0
  br i1 %tobool142.not, label %if.then143, label %for.inc

if.then143:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  %num_app_entries = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 1
  %32 = ptrtoint ptr %num_app_entries to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_app_entries, align 4
  %inc = add i16 %33, 1
  store i16 %inc, ptr %num_app_entries, align 4
  br label %if.end168

for.inc:                                          ; preds = %if.end140
  %inc147 = add nuw nsw i32 %i.0259, 1
  %exitcond.not = icmp eq i32 %inc147, 32
  br i1 %exitcond.not, label %do.end154, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end154:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %name156 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool158.not = icmp eq ptr %name156, null
  %spec.select245 = select i1 %tobool158.not, ptr @.str.3, ptr %name156
  %call165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.75, i32 noundef 2355, ptr noundef nonnull %spec.select245) #10
  br label %cleanup

if.end168:                                        ; preds = %if.then143, %land.lhs.true.if.end168_crit_edge
  %34 = ptrtoint ptr %dcbx_set to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dcbx_set, align 4
  %or = or i32 %35, 8
  store i32 %or, ptr %dcbx_set, align 4
  %36 = ptrtoint ptr %sf_ieee130 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %switch.idx.cast, ptr %sf_ieee130, align 4
  %37 = ptrtoint ptr %protocol135 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %protocol135, align 2
  %proto_id180 = getelementptr [32 x %struct.qed_app_entry], ptr %config, i32 0, i32 %i.0259, i32 4
  %39 = ptrtoint ptr %proto_id180 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %proto_id180, align 2
  %40 = ptrtoint ptr %priority14 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %priority14, align 1
  %conv182 = zext i8 %41 to i32
  %shl = shl nuw i32 1, %conv182
  %conv183 = trunc i32 %shl to i8
  %prio = getelementptr [32 x %struct.qed_app_entry], ptr %config, i32 0, i32 %i.0259, i32 3
  %42 = ptrtoint ptr %prio to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv183, ptr %prio, align 1
  %call188 = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #7
  %tobool189.not = icmp eq ptr %call188, null
  br i1 %tobool189.not, label %if.end168.cleanup_crit_edge, label %if.end191

if.end168.cleanup_crit_edge:                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end191:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  %p_dcbx_info1.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 46
  %43 = ptrtoint ptr %p_dcbx_info1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %p_dcbx_info1.i, align 4
  %set2.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %44, i32 0, i32 6
  %45 = call ptr @memcpy(ptr %set2.i, ptr %dcbx_set, i32 576)
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call188) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end191, %if.end168.cleanup_crit_edge, %do.end154, %if.end122.cleanup_crit_edge, %do.end121, %switch.lookup.cleanup_crit_edge, %do.end69, %do.body55.cleanup_crit_edge, %do.end33, %do.body19.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end154 ], [ 0, %if.end191 ], [ -22, %do.end121 ], [ -22, %do.end33 ], [ -22, %do.body19.cleanup_crit_edge ], [ -22, %do.end69 ], [ -22, %do.body55.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %if.end122.cleanup_crit_edge ], [ -16, %if.end168.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %dcbx_set) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qed_dcbnl_getstate(ptr noundef %cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled1 = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %enabled1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled1, align 1, !range !361
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.rhs, label %if.end.do.end17_crit_edge

if.end.do.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

land.rhs:                                         ; preds = %if.end
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %4 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module, align 4
  %and = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.rhs.do.end17_crit_edge, label %do.end, !prof !359

land.rhs.do.end17_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool9.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool9.not, ptr @.str.3, ptr %name
  %6 = zext i8 %1 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, i32 noundef 1316, ptr noundef nonnull %spec.select, i32 noundef %6) #10
  br label %do.end17

do.end17:                                         ; preds = %do.end, %land.rhs.do.end17_crit_edge, %if.end.do.end17_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %1, %do.end17 ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qed_dcbnl_setstate(ptr noundef %cdev, i8 noundef zeroext %state) #0 align 64 {
entry:
  %dcbx_set = alloca %struct.qed_dcbx_set, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %dcbx_set) #7
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end10_crit_edge, label %do.end, !prof !359

land.rhs.do.end10_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %conv8 = zext i8 %state to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.88, i32 noundef 1329, ptr noundef nonnull %spec.select, i32 noundef %conv8) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end, %land.rhs.do.end10_crit_edge, %entry.do.end10_crit_edge
  %4 = call ptr @memset(ptr %dcbx_set, i32 0, i32 576)
  %call11 = call i32 @qed_dcbx_get_config_params(ptr noundef %hwfns, ptr noundef nonnull %dcbx_set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end10.cleanup_crit_edge

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool15 = icmp ne i8 %state, 0
  %enabled = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 1
  %frombool = zext i1 %tobool15 to i8
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %enabled, align 4
  %call20 = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #7
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end14.cleanup_crit_edge, label %if.end23

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %p_dcbx_info1.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 46
  %6 = ptrtoint ptr %p_dcbx_info1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_dcbx_info1.i, align 4
  %set2.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %7, i32 0, i32 6
  %8 = call ptr @memcpy(ptr %set2.i, ptr %dcbx_set, i32 576)
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call20) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end14.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.end23 ], [ 1, %do.end10.cleanup_crit_edge ], [ 1, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %dcbx_set) #7
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_dcbnl_getpgtccfgtx(ptr noundef %cdev, i32 noundef %tc, ptr nocapture noundef writeonly %prio_type, ptr nocapture noundef writeonly %pgid, ptr nocapture noundef writeonly %bw_pct, ptr nocapture noundef writeonly %up_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end9_crit_edge, label %do.end, !prof !359

land.rhs.do.end9_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i32 noundef 1355, ptr noundef nonnull %spec.select, i32 noundef %tc) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %land.rhs.do.end9_crit_edge, %entry.do.end9_crit_edge
  %4 = ptrtoint ptr %up_map to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %up_map, align 1
  %5 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %bw_pct, align 1
  %6 = ptrtoint ptr %pgid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %pgid, align 1
  %7 = ptrtoint ptr %prio_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %prio_type, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %tc)
  %8 = icmp ugt i32 %tc, 7
  br i1 %8, label %do.body15, label %if.end44

do.body15:                                        ; preds = %do.end9
  %9 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp18 = icmp ult i8 %10, 2
  br i1 %cmp18, label %do.end29, label %do.body15.cleanup_crit_edge, !prof !362

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end29:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %name31 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool33.not = icmp eq ptr %name31, null
  %spec.select65 = select i1 %tobool33.not, ptr @.str.3, ptr %name31
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.90, i32 noundef 1358, ptr noundef nonnull %spec.select65, i32 noundef %tc) #10
  br label %cleanup

if.end44:                                         ; preds = %do.end9
  %call45 = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 0)
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx49 = getelementptr %struct.qed_dcbx_operational_params, ptr %call45, i32 0, i32 1, i32 9, i32 %tc
  %11 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx49, align 1
  %13 = ptrtoint ptr %pgid to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %pgid, align 1
  tail call void @kfree(ptr noundef nonnull %call45) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end44.cleanup_crit_edge, %do.end29, %do.body15.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_dcbnl_getpgbwgcfgtx(ptr noundef %cdev, i32 noundef %pgid, ptr nocapture noundef %bw_pct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %0 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bw_pct, align 1
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %3 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dp_module, align 4
  %and = and i32 %4, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end9_crit_edge, label %do.end, !prof !359

land.rhs.do.end9_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, i32 noundef 1376, ptr noundef nonnull %spec.select, i32 noundef %pgid) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %land.rhs.do.end9_crit_edge, %entry.do.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %pgid)
  %5 = icmp ugt i32 %pgid, 7
  br i1 %5, label %do.body15, label %if.end44

do.body15:                                        ; preds = %do.end9
  %6 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp18 = icmp ult i8 %7, 2
  br i1 %cmp18, label %do.end29, label %do.body15.cleanup_crit_edge, !prof !362

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end29:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %name31 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool33.not = icmp eq ptr %name31, null
  %spec.select105 = select i1 %tobool33.not, ptr @.str.3, ptr %name31
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.95, i32 noundef 1378, ptr noundef nonnull %spec.select105, i32 noundef %pgid) #10
  br label %cleanup

if.end44:                                         ; preds = %do.end9
  %call45 = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 0)
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %arrayidx49 = getelementptr %struct.qed_dcbx_operational_params, ptr %call45, i32 0, i32 1, i32 10, i32 %pgid
  %8 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx49, align 1
  %10 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %bw_pct, align 1
  %11 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp53 = icmp eq i8 %12, 0
  br i1 %cmp53, label %land.rhs55, label %if.end48.do.end84_crit_edge

if.end48.do.end84_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end84

land.rhs55:                                       ; preds = %if.end48
  %dp_module56 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %13 = ptrtoint ptr %dp_module56 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dp_module56, align 4
  %and57 = and i32 %14, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %land.rhs55.do.end84_crit_edge, label %do.end69, !prof !359

land.rhs55.do.end84_crit_edge:                    ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end84

do.end69:                                         ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #9
  %name71 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool73.not = icmp eq ptr %name71, null
  %spec.select106 = select i1 %tobool73.not, ptr @.str.3, ptr %name71
  %conv80 = zext i8 %9 to i32
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.95, i32 noundef 1387, ptr noundef nonnull %spec.select106, i32 noundef %conv80) #10
  br label %do.end84

do.end84:                                         ; preds = %do.end69, %land.rhs55.do.end84_crit_edge, %if.end48.do.end84_crit_edge
  tail call void @kfree(ptr noundef nonnull %call45) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %if.end44.cleanup_crit_edge, %do.end29, %do.body15.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_dcbnl_getpgtccfgrx(ptr noundef %cdev, i32 noundef %tc, ptr nocapture noundef writeonly %prio, ptr nocapture noundef writeonly %bwg_id, ptr nocapture noundef writeonly %bw_pct, ptr nocapture noundef writeonly %up_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ult i8 %1, 2
  br i1 %cmp, label %do.end, label %entry.do.end11_crit_edge, !prof !362

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, i32 noundef 1394, ptr noundef nonnull %spec.select) #10
  br label %do.end11

do.end11:                                         ; preds = %do.end, %entry.do.end11_crit_edge
  %2 = ptrtoint ptr %up_map to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %up_map, align 1
  %3 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bw_pct, align 1
  %4 = ptrtoint ptr %bwg_id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bwg_id, align 1
  %5 = ptrtoint ptr %prio to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %prio, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_dcbnl_getpgbwgcfgrx(ptr noundef %cdev, i32 noundef %bwg_id, ptr nocapture noundef writeonly %bw_pct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ult i8 %1, 2
  br i1 %cmp, label %do.end, label %entry.do.end11_crit_edge, !prof !362

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.104, i32 noundef 1401, ptr noundef nonnull %spec.select) #10
  br label %do.end11

do.end11:                                         ; preds = %do.end, %entry.do.end11_crit_edge
  %2 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bw_pct, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_dcbnl_getpfccfg(ptr noundef %cdev, i32 noundef %priority, ptr nocapture noundef %setting) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end9_crit_edge, label %do.end, !prof !359

land.rhs.do.end9_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 1411, ptr noundef nonnull %spec.select, i32 noundef %priority) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %land.rhs.do.end9_crit_edge, %entry.do.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %priority)
  %4 = icmp ugt i32 %priority, 7
  br i1 %4, label %do.body15, label %if.end44

do.body15:                                        ; preds = %do.end9
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp18 = icmp ult i8 %6, 2
  br i1 %cmp18, label %do.end29, label %do.body15.cleanup_crit_edge, !prof !362

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end29:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %name31 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool33.not = icmp eq ptr %name31, null
  %spec.select104 = select i1 %tobool33.not, ptr @.str.3, ptr %name31
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.106, i32 noundef 1413, ptr noundef nonnull %spec.select104, i32 noundef %priority) #10
  br label %cleanup

if.end44:                                         ; preds = %do.end9
  %call45 = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 0)
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %arrayidx49 = getelementptr %struct.qed_dcbx_operational_params, ptr %call45, i32 0, i32 1, i32 12, i32 2, i32 %priority
  %7 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx49, align 1
  %9 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %setting, align 1
  %10 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp53 = icmp eq i8 %11, 0
  br i1 %cmp53, label %land.rhs55, label %if.end48.do.end84_crit_edge

if.end48.do.end84_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end84

land.rhs55:                                       ; preds = %if.end48
  %dp_module56 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %12 = ptrtoint ptr %dp_module56 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dp_module56, align 4
  %and57 = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %land.rhs55.do.end84_crit_edge, label %do.end69, !prof !359

land.rhs55.do.end84_crit_edge:                    ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end84

do.end69:                                         ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #9
  %name71 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool73.not = icmp eq ptr %name71, null
  %spec.select105 = select i1 %tobool73.not, ptr @.str.3, ptr %name71
  %conv80 = zext i8 %8 to i32
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.106, i32 noundef 1422, ptr noundef nonnull %spec.select105, i32 noundef %conv80) #10
  br label %do.end84

do.end84:                                         ; preds = %do.end69, %land.rhs55.do.end84_crit_edge, %if.end48.do.end84_crit_edge
  tail call void @kfree(ptr noundef nonnull %call45) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %if.end44.cleanup_crit_edge, %do.end29, %do.body15.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_dcbnl_setpfccfg(ptr noundef %cdev, i32 noundef %priority, i8 noundef zeroext %setting) #0 align 64 {
entry:
  %dcbx_set = alloca %struct.qed_dcbx_set, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %dcbx_set) #7
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end10_crit_edge, label %do.end, !prof !359

land.rhs.do.end10_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %conv8 = zext i8 %setting to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, i32 noundef 1434, ptr noundef nonnull %spec.select, i32 noundef %priority, i32 noundef %conv8) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end, %land.rhs.do.end10_crit_edge, %entry.do.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %priority)
  %4 = icmp ugt i32 %priority, 7
  br i1 %4, label %do.body16, label %if.end45

do.body16:                                        ; preds = %do.end10
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp19 = icmp ult i8 %6, 2
  br i1 %cmp19, label %do.end30, label %do.body16.cleanup_crit_edge, !prof !362

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end30:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %name32 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool34.not = icmp eq ptr %name32, null
  %spec.select82 = select i1 %tobool34.not, ptr @.str.3, ptr %name32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.113, i32 noundef 1436, ptr noundef nonnull %spec.select82, i32 noundef %priority) #10
  br label %cleanup

if.end45:                                         ; preds = %do.end10
  %7 = call ptr @memset(ptr %dcbx_set, i32 0, i32 576)
  %call46 = call i32 @qed_dcbx_get_config_params(ptr noundef %hwfns, ptr noundef nonnull %dcbx_set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %8 = ptrtoint ptr %dcbx_set to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dcbx_set, align 4
  %or = or i32 %9, 2
  store i32 %or, ptr %dcbx_set, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %setting)
  %tobool50 = icmp ne i8 %setting, 0
  %conv55 = zext i1 %tobool50 to i8
  %arrayidx56 = getelementptr %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 12, i32 2, i32 %priority
  %10 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv55, ptr %arrayidx56, align 1
  %call57 = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #7
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.end49.cleanup_crit_edge, label %if.end60

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %p_dcbx_info1.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 46
  %11 = ptrtoint ptr %p_dcbx_info1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_dcbx_info1.i, align 4
  %set2.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %12, i32 0, i32 6
  %13 = call ptr @memcpy(ptr %set2.i, ptr %dcbx_set, i32 576)
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call57) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end49.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %do.end30, %do.body16.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %dcbx_set) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qed_dcbnl_getcap(ptr noundef %cdev, i32 noundef %capid, ptr nocapture noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end9_crit_edge, label %do.end, !prof !359

land.rhs.do.end9_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, i32 noundef 1463, ptr noundef nonnull %spec.select, i32 noundef %capid) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %land.rhs.do.end9_crit_edge, %entry.do.end9_crit_edge
  %call10 = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 0)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end9.cleanup_crit_edge, label %if.end13

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  %switch.tableidx = add i32 %capid, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 8
  br i1 %4, label %switch.lookup, label %if.end13.do.body16_crit_edge

if.end13.do.body16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

switch.lookup:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.qed_dcbnl_getcap, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %5)
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.gep70 = getelementptr inbounds [8 x i8], ptr @switch.table.qed_dcbnl_getcap.170, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep70 to i32
  call void @__asan_load1_noabort(i32 %6)
  %switch.load71 = load i8, ptr %switch.gep70, align 1
  br label %do.body16

do.body16:                                        ; preds = %switch.lookup, %if.end13.do.body16_crit_edge
  %.sink = phi i8 [ %switch.load, %switch.lookup ], [ 0, %if.end13.do.body16_crit_edge ]
  %rc.0 = phi i8 [ %switch.load71, %switch.lookup ], [ 1, %if.end13.do.body16_crit_edge ]
  %7 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %cap, align 1
  %8 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp19 = icmp eq i8 %9, 0
  br i1 %cmp19, label %land.rhs21, label %do.body16.do.end50_crit_edge

do.body16.do.end50_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

land.rhs21:                                       ; preds = %do.body16
  %dp_module22 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %10 = ptrtoint ptr %dp_module22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dp_module22, align 4
  %and23 = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %land.rhs21.do.end50_crit_edge, label %do.end35, !prof !359

land.rhs21.do.end50_crit_edge:                    ; preds = %land.rhs21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

do.end35:                                         ; preds = %land.rhs21
  call void @__sanitizer_cov_trace_pc() #9
  %name37 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool39.not = icmp eq ptr %name37, null
  %spec.select69 = select i1 %tobool39.not, ptr @.str.3, ptr %name37
  %12 = ptrtoint ptr %cap to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cap, align 1
  %conv46 = zext i8 %13 to i32
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.117, i32 noundef 1488, ptr noundef nonnull %spec.select69, i32 noundef %capid, i32 noundef %conv46) #10
  br label %do.end50

do.end50:                                         ; preds = %do.end35, %land.rhs21.do.end50_crit_edge, %do.body16.do.end50_crit_edge
  tail call void @kfree(ptr noundef nonnull %call10) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %do.end9.cleanup_crit_edge
  %retval.0 = phi i8 [ %rc.0, %do.end50 ], [ 1, %do.end9.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_dcbnl_getnumtcs(ptr noundef %cdev, i32 noundef %tcid, ptr nocapture noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end9_crit_edge, label %do.end, !prof !359

land.rhs.do.end9_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, i32 noundef 1500, ptr noundef nonnull %spec.select, i32 noundef %tcid) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %land.rhs.do.end9_crit_edge, %entry.do.end9_crit_edge
  %call10 = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 0)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end9.cleanup_crit_edge, label %if.end13

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  %4 = zext i32 %tcid to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %tcid, label %if.end13.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb14
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %max_ets_tc = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call10, i32 0, i32 1, i32 13
  br label %sw.epilog.sink.split

sw.bb14:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %max_tc = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call10, i32 0, i32 1, i32 12, i32 3
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb14, %sw.bb
  %.sink.in = phi ptr [ %max_tc, %sw.bb14 ], [ %max_ets_tc, %sw.bb ]
  %5 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %5)
  %.sink = load i8, ptr %.sink.in, align 1
  %6 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %num, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end13.sw.epilog_crit_edge
  %rc.0 = phi i32 [ -22, %if.end13.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call10) #7
  %7 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp20 = icmp eq i8 %8, 0
  br i1 %cmp20, label %land.rhs22, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs22:                                       ; preds = %sw.epilog
  %dp_module23 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %9 = ptrtoint ptr %dp_module23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dp_module23, align 4
  %and24 = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %land.rhs22.cleanup_crit_edge, label %do.end36, !prof !359

land.rhs22.cleanup_crit_edge:                     ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end36:                                         ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #9
  %name38 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool40.not = icmp eq ptr %name38, null
  %spec.select68 = select i1 %tobool40.not, ptr @.str.3, ptr %name38
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num, align 1
  %conv47 = zext i8 %12 to i32
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.122, i32 noundef 1517, ptr noundef nonnull %spec.select68, i32 noundef %conv47) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %land.rhs22.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end9.cleanup_crit_edge ], [ %rc.0, %sw.epilog.cleanup_crit_edge ], [ %rc.0, %do.end36 ], [ %rc.0, %land.rhs22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qed_dcbnl_getpfcstate(ptr noundef %cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled1 = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call, i32 0, i32 1, i32 12, i32 1
  %0 = ptrtoint ptr %enabled1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled1, align 1, !range !361
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.rhs, label %if.end.do.end17_crit_edge

if.end.do.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

land.rhs:                                         ; preds = %if.end
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %4 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module, align 4
  %and = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.rhs.do.end17_crit_edge, label %do.end, !prof !359

land.rhs.do.end17_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool9.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool9.not, ptr @.str.3, ptr %name
  %6 = zext i8 %1 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127, i32 noundef 1533, ptr noundef nonnull %spec.select, i32 noundef %6) #10
  br label %do.end17

do.end17:                                         ; preds = %do.end, %land.rhs.do.end17_crit_edge, %if.end.do.end17_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %1, %do.end17 ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_dcbnl_getapp(ptr noundef %cdev, i8 noundef zeroext %idtype, i16 noundef zeroext %idval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %idtype to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %idtype)
  %cmp = icmp eq i8 %idtype, 0
  %params = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call, i32 0, i32 1
  %0 = zext i1 %cmp to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.056 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx6 = getelementptr [32 x %struct.qed_app_entry], ptr %params, i32 0, i32 %i.056
  %1 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx6, align 4, !range !361
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %0)
  %cmp12 = icmp eq i8 %2, %0
  br i1 %cmp12, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %proto_id = getelementptr [32 x %struct.qed_app_entry], ptr %params, i32 0, i32 %i.056, i32 4
  %3 = ptrtoint ptr %proto_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %proto_id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %idval)
  %cmp16 = icmp eq i16 %4, %idval
  br i1 %cmp16, label %if.end33, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool25.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool25.not, ptr @.str.3, ptr %name
  %conv29 = zext i16 %idval to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.128, i32 noundef 1748, ptr noundef nonnull %spec.select, i32 noundef %conv, i32 noundef %conv29) #10
  br label %cleanup.sink.split

if.end33:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %prio19 = getelementptr [32 x %struct.qed_app_entry], ptr %params, i32 0, i32 %i.056, i32 3
  %5 = ptrtoint ptr %prio19 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %prio19, align 1
  %phi.cast = zext i8 %6 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end33, %do.end
  %retval.0.ph = phi i32 [ %phi.cast, %if.end33 ], [ -22, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qed_dcbnl_getfeatcfg(ptr noundef %cdev, i32 noundef %featid, ptr nocapture noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end9_crit_edge, label %do.end, !prof !359

land.rhs.do.end9_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130, i32 noundef 1858, ptr noundef nonnull %spec.select, i32 noundef %featid) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %land.rhs.do.end9_crit_edge, %entry.do.end9_crit_edge
  %call10 = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 0)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end9.cleanup_crit_edge, label %if.end13

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %flags, align 1
  %5 = zext i32 %featid to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %featid, label %do.body31 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb17
    i32 4, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %ets_enabled = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call10, i32 0, i32 1, i32 6
  br label %do.body60

sw.bb17:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %enabled = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call10, i32 0, i32 1, i32 12, i32 1
  br label %do.body60

sw.bb24:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %app_valid = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call10, i32 0, i32 1, i32 3
  br label %do.body60

do.body31:                                        ; preds = %if.end13
  %6 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp34 = icmp ult i8 %7, 2
  br i1 %cmp34, label %do.end45, label %do.body31.cleanup.sink.split_crit_edge, !prof !362

do.body31.cleanup.sink.split_crit_edge:           ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end45:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %name47 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool49.not = icmp eq ptr %name47, null
  %spec.select121 = select i1 %tobool49.not, ptr @.str.3, ptr %name47
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.130, i32 noundef 1884, ptr noundef nonnull %spec.select121, i32 noundef %featid) #10
  br label %cleanup.sink.split

do.body60:                                        ; preds = %sw.bb24, %sw.bb17, %sw.bb
  %.sink.in = phi ptr [ %app_valid, %sw.bb24 ], [ %enabled, %sw.bb17 ], [ %ets_enabled, %sw.bb ]
  %8 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %8)
  %.sink = load i8, ptr %.sink.in, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.sink)
  %tobool27.not = icmp eq i8 %.sink, 0
  %.124 = select i1 %tobool27.not, i8 1, i8 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.124, ptr %flags, align 1
  %10 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp63 = icmp eq i8 %11, 0
  br i1 %cmp63, label %land.rhs65, label %do.body60.cleanup.sink.split_crit_edge

do.body60.cleanup.sink.split_crit_edge:           ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.rhs65:                                       ; preds = %do.body60
  %dp_module66 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %12 = ptrtoint ptr %dp_module66 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dp_module66, align 4
  %and67 = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %land.rhs65.cleanup.sink.split_crit_edge, label %do.end79, !prof !359

land.rhs65.cleanup.sink.split_crit_edge:          ; preds = %land.rhs65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end79:                                         ; preds = %land.rhs65
  call void @__sanitizer_cov_trace_pc() #9
  %name81 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool83.not = icmp eq ptr %name81, null
  %spec.select122 = select i1 %tobool83.not, ptr @.str.3, ptr %name81
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags, align 1
  %conv90 = zext i8 %15 to i32
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.130, i32 noundef 1889, ptr noundef nonnull %spec.select122, i32 noundef %conv90) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end79, %land.rhs65.cleanup.sink.split_crit_edge, %do.body60.cleanup.sink.split_crit_edge, %do.end45, %do.body31.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i8 [ 1, %do.end45 ], [ 1, %do.body31.cleanup.sink.split_crit_edge ], [ 0, %do.body60.cleanup.sink.split_crit_edge ], [ 0, %do.end79 ], [ 0, %land.rhs65.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call10) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end9.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %do.end9.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qed_dcbnl_getdcbx(ptr noundef %cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ieee = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %ieee to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ieee, align 2, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool1.not, i8 0, i8 8
  %cee = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %cee to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cee, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp eq i8 %3, 0
  %4 = or i8 %spec.select, 4
  %mode.1 = select i1 %tobool6.not, i8 %spec.select, i8 %4
  %local = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call, i32 0, i32 6
  %5 = ptrtoint ptr %local to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %local, align 4, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool13.not = icmp eq i8 %6, 0
  %7 = or i8 %mode.1, 16
  %mode.2 = select i1 %tobool13.not, i8 %mode.1, i8 %7
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %8 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %land.rhs, label %if.end.do.end33_crit_edge

if.end.do.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

land.rhs:                                         ; preds = %if.end
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %10 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dp_module, align 4
  %and = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %land.rhs.do.end33_crit_edge, label %do.end, !prof !359

land.rhs.do.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool26.not = icmp eq ptr %name, null
  %spec.select48 = select i1 %tobool26.not, ptr @.str.3, ptr %name
  %conv29 = zext i8 %mode.2 to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138, i32 noundef 1556, ptr noundef nonnull %spec.select48, i32 noundef %conv29) #10
  br label %do.end33

do.end33:                                         ; preds = %do.end, %land.rhs.do.end33_crit_edge, %if.end.do.end33_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %mode.2, %do.end33 ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_dcbnl_setpgtccfgtx(ptr noundef %cdev, i32 noundef %tc, i8 noundef zeroext %pri_type, i8 noundef zeroext %pgid, i8 noundef zeroext %bw_pct, i8 noundef zeroext %up_map) #0 align 64 {
entry:
  %dcbx_set = alloca %struct.qed_dcbx_set, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %dcbx_set) #7
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end13_crit_edge

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end13_crit_edge, label %do.end, !prof !359

land.rhs.do.end13_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %conv8 = zext i8 %pri_type to i32
  %conv9 = zext i8 %pgid to i32
  %conv10 = zext i8 %bw_pct to i32
  %conv11 = zext i8 %up_map to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.140, i32 noundef 1573, ptr noundef nonnull %spec.select, i32 noundef %tc, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %conv11) #10
  br label %do.end13

do.end13:                                         ; preds = %do.end, %land.rhs.do.end13_crit_edge, %entry.do.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %tc)
  %4 = icmp ugt i32 %tc, 7
  br i1 %4, label %do.body19, label %if.end48

do.body19:                                        ; preds = %do.end13
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp22 = icmp ult i8 %6, 2
  br i1 %cmp22, label %do.end33, label %do.body19.cleanup_crit_edge, !prof !362

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end33:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %name35 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool37.not = icmp eq ptr %name35, null
  %spec.select79 = select i1 %tobool37.not, ptr @.str.3, ptr %name35
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.140, i32 noundef 1576, ptr noundef nonnull %spec.select79, i32 noundef %tc) #10
  br label %cleanup

if.end48:                                         ; preds = %do.end13
  %7 = call ptr @memset(ptr %dcbx_set, i32 0, i32 576)
  %call49 = call i32 @qed_dcbx_get_config_params(ptr noundef %hwfns, ptr noundef nonnull %dcbx_set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %8 = ptrtoint ptr %dcbx_set to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dcbx_set, align 4
  %or = or i32 %9, 4
  store i32 %or, ptr %dcbx_set, align 4
  %arrayidx53 = getelementptr %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 9, i32 %tc
  %10 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %pgid, ptr %arrayidx53, align 1
  %call54 = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #7
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %if.end52.cleanup_crit_edge, label %if.end57

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %p_dcbx_info1.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 46
  %11 = ptrtoint ptr %p_dcbx_info1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_dcbx_info1.i, align 4
  %set2.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %12, i32 0, i32 6
  %13 = call ptr @memcpy(ptr %set2.i, ptr %dcbx_set, i32 576)
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call54) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end52.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %do.end33, %do.body19.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %dcbx_set) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_dcbnl_setpgtccfgrx(ptr noundef %cdev, i32 noundef %prio, i8 noundef zeroext %pri_type, i8 noundef zeroext %pgid, i8 noundef zeroext %bw_pct, i8 noundef zeroext %up_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ult i8 %1, 2
  br i1 %cmp, label %do.end, label %entry.do.end11_crit_edge, !prof !362

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.143, i32 noundef 1600, ptr noundef nonnull %spec.select) #10
  br label %do.end11

do.end11:                                         ; preds = %do.end, %entry.do.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_dcbnl_setpgbwgcfgtx(ptr noundef %cdev, i32 noundef %pgid, i8 noundef zeroext %bw_pct) #0 align 64 {
entry:
  %dcbx_set = alloca %struct.qed_dcbx_set, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %dcbx_set) #7
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end10_crit_edge, label %do.end, !prof !359

land.rhs.do.end10_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %conv8 = zext i8 %bw_pct to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i32 noundef 1610, ptr noundef nonnull %spec.select, i32 noundef %pgid, i32 noundef %conv8) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end, %land.rhs.do.end10_crit_edge, %entry.do.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %pgid)
  %4 = icmp ugt i32 %pgid, 7
  br i1 %4, label %do.body16, label %if.end45

do.body16:                                        ; preds = %do.end10
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp19 = icmp ult i8 %6, 2
  br i1 %cmp19, label %do.end30, label %do.body16.cleanup_crit_edge, !prof !362

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end30:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %name32 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool34.not = icmp eq ptr %name32, null
  %spec.select76 = select i1 %tobool34.not, ptr @.str.3, ptr %name32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.145, i32 noundef 1612, ptr noundef nonnull %spec.select76, i32 noundef %pgid) #10
  br label %cleanup

if.end45:                                         ; preds = %do.end10
  %7 = call ptr @memset(ptr %dcbx_set, i32 0, i32 576)
  %call46 = call i32 @qed_dcbx_get_config_params(ptr noundef %hwfns, ptr noundef nonnull %dcbx_set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %8 = ptrtoint ptr %dcbx_set to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dcbx_set, align 4
  %or = or i32 %9, 4
  store i32 %or, ptr %dcbx_set, align 4
  %arrayidx50 = getelementptr %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 10, i32 %pgid
  %10 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bw_pct, ptr %arrayidx50, align 1
  %call51 = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #7
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.end49.cleanup_crit_edge, label %if.end54

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %p_dcbx_info1.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 46
  %11 = ptrtoint ptr %p_dcbx_info1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_dcbx_info1.i, align 4
  %set2.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %12, i32 0, i32 6
  %13 = call ptr @memcpy(ptr %set2.i, ptr %dcbx_set, i32 576)
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call51) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end49.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %do.end30, %do.body16.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %dcbx_set) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_dcbnl_setpgbwgcfgrx(ptr noundef %cdev, i32 noundef %pgid, i8 noundef zeroext %bw_pct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ult i8 %1, 2
  br i1 %cmp, label %do.end, label %entry.do.end11_crit_edge, !prof !362

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.148, i32 noundef 1635, ptr noundef nonnull %spec.select) #10
  br label %do.end11

do.end11:                                         ; preds = %do.end, %entry.do.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qed_dcbnl_setall(ptr noundef %cdev) #0 align 64 {
entry:
  %dcbx_set = alloca %struct.qed_dcbx_set, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %dcbx_set) #7
  %0 = call ptr @memset(ptr %dcbx_set, i32 0, i32 576)
  %call = call i32 @qed_dcbx_get_config_params(ptr noundef %hwfns, ptr noundef nonnull %dcbx_set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call i32 @qed_dcbx_config_params(ptr noundef %hwfns, ptr noundef nonnull %call1, ptr noundef nonnull %dcbx_set, i1 noundef zeroext true)
  call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call1) #7
  %conv = trunc i32 %call5 to i8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv, %if.end4 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %dcbx_set) #7
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_dcbnl_setnumtcs(ptr noundef %cdev, i32 noundef %tcid, i8 noundef zeroext %num) #0 align 64 {
entry:
  %dcbx_set = alloca %struct.qed_dcbx_set, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %dcbx_set) #7
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end10_crit_edge, label %do.end, !prof !359

land.rhs.do.end10_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %conv8 = zext i8 %num to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150, i32 noundef 1668, ptr noundef nonnull %spec.select, i32 noundef %tcid, i32 noundef %conv8) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end, %land.rhs.do.end10_crit_edge, %entry.do.end10_crit_edge
  %4 = call ptr @memset(ptr %dcbx_set, i32 0, i32 576)
  %call11 = call i32 @qed_dcbx_get_config_params(ptr noundef %hwfns, ptr noundef nonnull %dcbx_set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end10.cleanup_crit_edge

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  %5 = zext i32 %tcid to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %tcid, label %do.body20 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dcbx_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dcbx_set, align 4
  %or = or i32 %7, 4
  store i32 %or, ptr %dcbx_set, align 4
  %max_ets_tc = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 13
  %8 = ptrtoint ptr %max_ets_tc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %num, ptr %max_ets_tc, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dcbx_set to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dcbx_set, align 4
  %or17 = or i32 %10, 2
  store i32 %or17, ptr %dcbx_set, align 4
  %max_tc = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 12, i32 3
  %11 = ptrtoint ptr %max_tc to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %num, ptr %max_tc, align 1
  br label %sw.epilog

do.body20:                                        ; preds = %if.end14
  %12 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp23 = icmp ult i8 %13, 2
  br i1 %cmp23, label %do.end34, label %do.body20.cleanup_crit_edge, !prof !362

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end34:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %name36 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool38.not = icmp eq ptr %name36, null
  %spec.select73 = select i1 %tobool38.not, ptr @.str.3, ptr %name36
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.150, i32 noundef 1684, ptr noundef nonnull %spec.select73, i32 noundef %tcid) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb
  %call49 = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #7
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %sw.epilog.cleanup_crit_edge, label %if.end52

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %p_dcbx_info1.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 46
  %14 = ptrtoint ptr %p_dcbx_info1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p_dcbx_info1.i, align 4
  %set2.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %15, i32 0, i32 6
  %16 = call ptr @memcpy(ptr %set2.i, ptr %dcbx_set, i32 576)
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call49) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %sw.epilog.cleanup_crit_edge, %do.end34, %do.body20.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end52 ], [ 1, %do.end10.cleanup_crit_edge ], [ -22, %do.end34 ], [ -22, %do.body20.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %dcbx_set) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_dcbnl_setpfcstate(ptr noundef %cdev, i8 noundef zeroext %state) #0 align 64 {
entry:
  %dcbx_set = alloca %struct.qed_dcbx_set, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %dcbx_set) #7
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end10_crit_edge, label %do.end, !prof !359

land.rhs.do.end10_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %conv8 = zext i8 %state to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.155, i32 noundef 1706, ptr noundef nonnull %spec.select, i32 noundef %conv8) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end, %land.rhs.do.end10_crit_edge, %entry.do.end10_crit_edge
  %4 = call ptr @memset(ptr %dcbx_set, i32 0, i32 576)
  %call11 = call i32 @qed_dcbx_get_config_params(ptr noundef %hwfns, ptr noundef nonnull %dcbx_set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end10.cleanup_crit_edge

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  %5 = ptrtoint ptr %dcbx_set to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dcbx_set, align 4
  %or = or i32 %6, 2
  store i32 %or, ptr %dcbx_set, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool15 = icmp ne i8 %state, 0
  %enabled = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 12, i32 1
  %frombool = zext i1 %tobool15 to i8
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %enabled, align 2
  %call20 = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #7
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end14.cleanup_crit_edge, label %if.end23

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %p_dcbx_info1.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 46
  %8 = ptrtoint ptr %p_dcbx_info1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_dcbx_info1.i, align 4
  %set2.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %9, i32 0, i32 6
  %10 = call ptr @memcpy(ptr %set2.i, ptr %dcbx_set, i32 576)
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call20) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end14.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %dcbx_set) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_dcbnl_setapp(ptr noundef %cdev, i8 noundef zeroext %idtype, i16 noundef zeroext %idval, i8 noundef zeroext %pri_map) #0 align 64 {
entry:
  %dcbx_set = alloca %struct.qed_dcbx_set, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %dcbx_set) #7
  %0 = call ptr @memset(ptr %dcbx_set, i32 0, i32 576)
  %call = call i32 @qed_dcbx_get_config_params(ptr noundef %hwfns, ptr noundef nonnull %dcbx_set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %idtype)
  %cmp = icmp eq i8 %idtype, 0
  %frombool = zext i1 %cmp to i8
  %config = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.087 = phi i32 [ 0, %if.end ], [ %inc26, %for.inc.for.body_crit_edge ]
  %arrayidx6 = getelementptr [32 x %struct.qed_app_entry], ptr %config, i32 0, i32 %i.087
  %1 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx6, align 4, !range !361
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %frombool)
  %cmp12 = icmp eq i8 %2, %frombool
  br i1 %cmp12, label %land.lhs.true, label %for.body.if.end19_crit_edge

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true:                                    ; preds = %for.body
  %proto_id = getelementptr [32 x %struct.qed_app_entry], ptr %config, i32 0, i32 %i.087, i32 4
  %3 = ptrtoint ptr %proto_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %proto_id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %idval)
  %cmp16 = icmp eq i16 %4, %idval
  br i1 %cmp16, label %land.lhs.true.if.end37_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %for.body.if.end19_crit_edge
  %proto_id20 = getelementptr [32 x %struct.qed_app_entry], ptr %config, i32 0, i32 %i.087, i32 4
  %5 = ptrtoint ptr %proto_id20 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %proto_id20, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool21.not = icmp eq i16 %6, 0
  br i1 %tobool21.not, label %if.then22, label %for.inc

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %num_app_entries = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %num_app_entries to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_app_entries, align 4
  %inc = add i16 %8, 1
  store i16 %inc, ptr %num_app_entries, align 4
  br label %if.end37

for.inc:                                          ; preds = %if.end19
  %inc26 = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc26, 32
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool31.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool31.not, ptr @.str.3, ptr %name
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.156, i32 noundef 1786, ptr noundef nonnull %spec.select) #10
  br label %cleanup

if.end37:                                         ; preds = %if.then22, %land.lhs.true.if.end37_crit_edge
  %9 = ptrtoint ptr %dcbx_set to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dcbx_set, align 4
  %or = or i32 %10, 8
  store i32 %or, ptr %dcbx_set, align 4
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %arrayidx6, align 4
  %proto_id49 = getelementptr [32 x %struct.qed_app_entry], ptr %config, i32 0, i32 %i.087, i32 4
  %12 = ptrtoint ptr %proto_id49 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %idval, ptr %proto_id49, align 2
  %prio = getelementptr [32 x %struct.qed_app_entry], ptr %config, i32 0, i32 %i.087, i32 3
  %13 = ptrtoint ptr %prio to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %pri_map, ptr %prio, align 1
  %call54 = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #7
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %if.end37.cleanup_crit_edge, label %if.end57

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %p_dcbx_info1.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 46
  %14 = ptrtoint ptr %p_dcbx_info1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p_dcbx_info1.i, align 4
  %set2.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %15, i32 0, i32 6
  %16 = call ptr @memcpy(ptr %set2.i, ptr %dcbx_set, i32 576)
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call54) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end37.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end57 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %dcbx_set) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qed_dcbnl_setdcbx(ptr noundef %cdev, i8 noundef zeroext %mode) #0 align 64 {
entry:
  %dcbx_set = alloca %struct.qed_dcbx_set, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %dcbx_set) #7
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end10_crit_edge, label %do.end, !prof !359

land.rhs.do.end10_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %conv8 = zext i8 %mode to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.158, i32 noundef 1813, ptr noundef nonnull %spec.select, i32 noundef %conv8) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end, %land.rhs.do.end10_crit_edge, %entry.do.end10_crit_edge
  %conv11 = zext i8 %mode to i32
  %and12 = and i32 %conv11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %and15 = and i32 %conv11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %and19 = and i32 %conv11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %4 = and i32 %conv11, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %do.body22, label %if.end51

do.body22:                                        ; preds = %do.end10
  %6 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp25 = icmp ult i8 %7, 2
  br i1 %cmp25, label %do.end36, label %do.body22.cleanup_crit_edge, !prof !362

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end36:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %name38 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool40.not = icmp eq ptr %name38, null
  %spec.select107 = select i1 %tobool40.not, ptr @.str.3, ptr %name38
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.158, i32 noundef 1817, ptr noundef nonnull %spec.select107) #10
  br label %cleanup

if.end51:                                         ; preds = %do.end10
  %8 = call ptr @memset(ptr %dcbx_set, i32 0, i32 572)
  %call52 = call i32 @qed_dcbx_get_config_params(ptr noundef %hwfns, ptr noundef nonnull %dcbx_set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  %ver_num = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 3
  %9 = ptrtoint ptr %ver_num to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ver_num, align 4
  br i1 %tobool16.not, label %if.end55.if.end61_crit_edge, label %if.then59

if.end55.if.end61_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %ver_num to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %ver_num, align 4
  %enabled = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 1
  %11 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %enabled, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end55.if.end61_crit_edge
  br i1 %tobool13.not, label %if.end61.if.end69_crit_edge, label %if.then65

if.end61.if.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %ver_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ver_num, align 4
  %or67 = or i32 %13, 1
  store i32 %or67, ptr %ver_num, align 4
  %enabled68 = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 1
  %14 = ptrtoint ptr %enabled68 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %enabled68, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.end61.if.end69_crit_edge
  br i1 %tobool20.not, label %if.end69.if.end77_crit_edge, label %if.then73

if.end69.if.end77_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %ver_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ver_num, align 4
  %or75 = or i32 %16, 4
  store i32 %or75, ptr %ver_num, align 4
  %enabled76 = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 1
  %17 = ptrtoint ptr %enabled76 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %enabled76, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %if.end69.if.end77_crit_edge
  %call78 = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #7
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %if.end77.cleanup_crit_edge, label %if.end81

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end81:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %p_dcbx_info1.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 46
  %18 = ptrtoint ptr %p_dcbx_info1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_dcbx_info1.i, align 4
  %set2.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %19, i32 0, i32 6
  %20 = call ptr @memcpy(ptr %set2.i, ptr %dcbx_set, i32 576)
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call78) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %if.end77.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %do.end36, %do.body22.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.end81 ], [ 1, %do.end36 ], [ 1, %do.body22.cleanup_crit_edge ], [ 1, %if.end51.cleanup_crit_edge ], [ 1, %if.end77.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %dcbx_set) #7
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @qed_dcbnl_setfeatcfg(ptr noundef %cdev, i32 noundef %featid, i8 noundef zeroext %flags) #0 align 64 {
entry:
  %dcbx_set = alloca %struct.qed_dcbx_set, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %dcbx_set) #7
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end10_crit_edge, label %do.end, !prof !359

land.rhs.do.end10_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %conv8 = zext i8 %flags to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163, i32 noundef 1904, ptr noundef nonnull %spec.select, i32 noundef %featid, i32 noundef %conv8) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end, %land.rhs.do.end10_crit_edge, %entry.do.end10_crit_edge
  %4 = call ptr @memset(ptr %dcbx_set, i32 0, i32 576)
  %call11 = call i32 @qed_dcbx_get_config_params(ptr noundef %hwfns, ptr noundef nonnull %dcbx_set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end10.cleanup_crit_edge

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  %and16 = lshr i8 %flags, 1
  %and16.lobit = and i8 %and16, 1
  %5 = lshr i8 %flags, 2
  %.lobit = and i8 %5, 1
  %6 = zext i32 %featid to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %featid, label %do.body57 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb36
    i32 4, label %sw.bb50
  ]

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dcbx_set to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dcbx_set, align 4
  %or = or i32 %8, 4
  store i32 %or, ptr %dcbx_set, align 4
  %ets_enabled = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 6
  %9 = ptrtoint ptr %ets_enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and16.lobit, ptr %ets_enabled, align 2
  %ets_willing = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 5
  %10 = ptrtoint ptr %ets_willing to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.lobit, ptr %ets_willing, align 1
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dcbx_set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dcbx_set, align 4
  %or38 = or i32 %12, 2
  store i32 %or38, ptr %dcbx_set, align 4
  %pfc = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 12
  %enabled42 = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %enabled42 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %and16.lobit, ptr %enabled42, align 2
  %14 = ptrtoint ptr %pfc to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.lobit, ptr %pfc, align 1
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dcbx_set to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dcbx_set, align 4
  %or52 = or i32 %16, 8
  store i32 %or52, ptr %dcbx_set, align 4
  %app_willing = getelementptr inbounds %struct.qed_dcbx_set, ptr %dcbx_set, i32 0, i32 2, i32 0, i32 2
  %17 = ptrtoint ptr %app_willing to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.lobit, ptr %app_willing, align 2
  br label %sw.epilog

do.body57:                                        ; preds = %if.end14
  %18 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp60 = icmp ult i8 %19, 2
  br i1 %cmp60, label %do.end71, label %do.body57.cleanup_crit_edge, !prof !362

do.body57.cleanup_crit_edge:                      ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end71:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %name73 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool75.not = icmp eq ptr %name73, null
  %spec.select115 = select i1 %tobool75.not, ptr @.str.3, ptr %name73
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.163, i32 noundef 1928, ptr noundef nonnull %spec.select115, i32 noundef %featid) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb50, %sw.bb36, %sw.bb
  %call86 = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #7
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %sw.epilog.cleanup_crit_edge, label %if.end89

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end89:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %p_dcbx_info1.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 46
  %20 = ptrtoint ptr %p_dcbx_info1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p_dcbx_info1.i, align 4
  %set2.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %21, i32 0, i32 6
  %22 = call ptr @memcpy(ptr %set2.i, ptr %dcbx_set, i32 576)
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call86) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %sw.epilog.cleanup_crit_edge, %do.end71, %do.body57.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.end89 ], [ 1, %do.end10.cleanup_crit_edge ], [ 1, %do.end71 ], [ 1, %do.body57.cleanup_crit_edge ], [ 1, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %dcbx_set) #7
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_dcbnl_peer_getappinfo(ptr noundef %cdev, ptr nocapture noundef writeonly %info, ptr nocapture noundef writeonly %app_count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %app_willing = getelementptr inbounds %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 2
  %0 = ptrtoint ptr %app_willing to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %app_willing, align 2, !range !361
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %info, align 1
  %app_error = getelementptr inbounds %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 4
  %3 = ptrtoint ptr %app_error to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %app_error, align 4, !range !361
  %error = getelementptr inbounds %struct.dcb_peer_app_info, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %error, align 1
  %num_app_entries = getelementptr inbounds %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %num_app_entries to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_app_entries, align 4
  %8 = ptrtoint ptr %app_count to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %app_count, align 2
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_dcbnl_peer_getapptable(ptr noundef %cdev, ptr nocapture noundef writeonly %table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_app_entries = getelementptr inbounds %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %num_app_entries to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_app_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp40.not = icmp eq i16 %1, 0
  br i1 %cmp40.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %remote = getelementptr inbounds %struct.qed_dcbx_get, ptr %call, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx4 = getelementptr [32 x %struct.qed_app_entry], ptr %remote, i32 0, i32 %i.041
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 4, !range !361
  %4 = xor i8 %3, 1
  %5 = getelementptr %struct.dcb_app, ptr %table, i32 %i.041
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %4, ptr %5, align 2
  %prio = getelementptr [32 x %struct.qed_app_entry], ptr %remote, i32 0, i32 %i.041, i32 3
  %7 = ptrtoint ptr %prio to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %prio, align 1
  %priority = getelementptr %struct.dcb_app, ptr %table, i32 %i.041, i32 1
  %9 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %priority, align 1
  %proto_id = getelementptr [32 x %struct.qed_app_entry], ptr %remote, i32 0, i32 %i.041, i32 4
  %10 = ptrtoint ptr %proto_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %proto_id, align 2
  %protocol = getelementptr %struct.dcb_app, ptr %table, i32 %i.041, i32 2
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %protocol, align 2
  %inc = add nuw nsw i32 %i.041, 1
  %13 = ptrtoint ptr %num_app_entries to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_app_entries, align 4
  %conv = zext i16 %14 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_dcbnl_cee_peer_getpfc(ptr noundef %cdev, ptr nocapture noundef %pfc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %pfc_en = getelementptr inbounds %struct.cee_pfc, ptr %pfc, i32 0, i32 2
  %arrayidx2 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 12, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %for.cond.preheader.for.inc_crit_edge, label %if.then4

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then4:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pfc_en, align 1
  %conv5 = or i8 %3, 1
  store i8 %conv5, ptr %pfc_en, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.cond.preheader.for.inc_crit_edge
  %arrayidx2.1 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 12, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not.1 = icmp eq i8 %5, 0
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then4.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then4.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pfc_en, align 1
  %conv5.1 = or i8 %7, 2
  store i8 %conv5.1, ptr %pfc_en, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then4.1, %for.inc.for.inc.1_crit_edge
  %arrayidx2.2 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 12, i32 2, i32 2
  %8 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not.2 = icmp eq i8 %9, 0
  br i1 %tobool3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then4.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then4.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pfc_en, align 1
  %conv5.2 = or i8 %11, 4
  store i8 %conv5.2, ptr %pfc_en, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then4.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx2.3 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 12, i32 2, i32 3
  %12 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx2.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not.3 = icmp eq i8 %13, 0
  br i1 %tobool3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then4.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then4.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pfc_en, align 1
  %conv5.3 = or i8 %15, 8
  store i8 %conv5.3, ptr %pfc_en, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then4.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx2.4 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 12, i32 2, i32 4
  %16 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx2.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not.4 = icmp eq i8 %17, 0
  br i1 %tobool3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then4.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then4.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pfc_en, align 1
  %conv5.4 = or i8 %19, 16
  store i8 %conv5.4, ptr %pfc_en, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then4.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx2.5 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 12, i32 2, i32 5
  %20 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx2.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool3.not.5 = icmp eq i8 %21, 0
  br i1 %tobool3.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then4.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then4.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pfc_en, align 1
  %conv5.5 = or i8 %23, 32
  store i8 %conv5.5, ptr %pfc_en, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then4.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx2.6 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 12, i32 2, i32 6
  %24 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx2.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool3.not.6 = icmp eq i8 %25, 0
  br i1 %tobool3.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then4.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then4.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pfc_en, align 1
  %conv5.6 = or i8 %27, 64
  store i8 %conv5.6, ptr %pfc_en, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then4.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx2.7 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 12, i32 2, i32 7
  %28 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx2.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool3.not.7 = icmp eq i8 %29, 0
  br i1 %tobool3.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then4.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.then4.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pfc_en, align 1
  %conv5.7 = or i8 %31, -128
  store i8 %conv5.7, ptr %pfc_en, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then4.7, %for.inc.6.for.inc.7_crit_edge
  %max_tc = getelementptr inbounds %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 12, i32 3
  %32 = ptrtoint ptr %max_tc to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %max_tc, align 1
  %tcs_supported = getelementptr inbounds %struct.cee_pfc, ptr %pfc, i32 0, i32 3
  %34 = ptrtoint ptr %tcs_supported to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %tcs_supported, align 1
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %35 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp11 = icmp eq i8 %36, 0
  br i1 %cmp11, label %land.rhs, label %for.inc.7.do.end28_crit_edge

for.inc.7.do.end28_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

land.rhs:                                         ; preds = %for.inc.7
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %37 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dp_module, align 4
  %and = and i32 %38, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %land.rhs.do.end28_crit_edge, label %do.end, !prof !359

land.rhs.do.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool18.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool18.not, ptr @.str.3, ptr %name
  %39 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pfc_en, align 1
  %conv22 = zext i8 %40 to i32
  %conv24 = zext i8 %33 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.167, i32 noundef 2004, ptr noundef nonnull %spec.select, i32 noundef %conv22, i32 noundef %conv24) #10
  br label %do.end28

do.end28:                                         ; preds = %do.end, %land.rhs.do.end28_crit_edge, %for.inc.7.do.end28_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end28 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_dcbnl_cee_peer_getpg(ptr noundef %cdev, ptr nocapture noundef %pg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ets_willing = getelementptr inbounds %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 5
  %0 = ptrtoint ptr %ets_willing to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ets_willing, align 1, !range !361
  %2 = ptrtoint ptr %pg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %pg, align 1
  %arrayidx5 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 10, i32 0
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 4, i32 0
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx6, align 1
  %arrayidx9 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 9, i32 0
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 0
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx10, align 1
  %arrayidx5.1 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5.1, align 1
  %arrayidx6.1 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx6.1, align 1
  %arrayidx9.1 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9.1, align 1
  %arrayidx10.1 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx10.1, align 1
  %arrayidx5.2 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 10, i32 2
  %15 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx5.2, align 1
  %arrayidx6.2 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx6.2, align 1
  %arrayidx9.2 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx9.2, align 1
  %arrayidx10.2 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx10.2, align 1
  %arrayidx5.3 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 10, i32 3
  %21 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx5.3, align 1
  %arrayidx6.3 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx6.3, align 1
  %arrayidx9.3 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 9, i32 3
  %24 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx9.3, align 1
  %arrayidx10.3 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 3
  %26 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx10.3, align 1
  %arrayidx5.4 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 10, i32 4
  %27 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx5.4, align 1
  %arrayidx6.4 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 4, i32 4
  %29 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx6.4, align 1
  %arrayidx9.4 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 9, i32 4
  %30 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx9.4, align 1
  %arrayidx10.4 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 4
  %32 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx10.4, align 1
  %arrayidx5.5 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 10, i32 5
  %33 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx5.5, align 1
  %arrayidx6.5 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 4, i32 5
  %35 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx6.5, align 1
  %arrayidx9.5 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 9, i32 5
  %36 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx9.5, align 1
  %arrayidx10.5 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 5
  %38 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx10.5, align 1
  %arrayidx5.6 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 10, i32 6
  %39 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx5.6, align 1
  %arrayidx6.6 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 4, i32 6
  %41 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx6.6, align 1
  %arrayidx9.6 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 9, i32 6
  %42 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx9.6, align 1
  %arrayidx10.6 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 6
  %44 = ptrtoint ptr %arrayidx10.6 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx10.6, align 1
  %arrayidx5.7 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 10, i32 7
  %45 = ptrtoint ptr %arrayidx5.7 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx5.7, align 1
  %arrayidx6.7 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 4, i32 7
  %47 = ptrtoint ptr %arrayidx6.7 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx6.7, align 1
  %arrayidx9.7 = getelementptr %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 0, i32 9, i32 7
  %48 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx9.7, align 1
  %arrayidx10.7 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 7
  %50 = ptrtoint ptr %arrayidx10.7 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx10.7, align 1
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %51 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp12 = icmp eq i8 %52, 0
  br i1 %cmp12, label %land.rhs, label %if.end.do.end27_crit_edge

if.end.do.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

land.rhs:                                         ; preds = %if.end
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %53 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dp_module, align 4
  %and = and i32 %54, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %land.rhs.do.end27_crit_edge, label %do.end, !prof !359

land.rhs.do.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool19.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool19.not, ptr @.str.3, ptr %name
  %55 = ptrtoint ptr %pg to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %pg, align 1
  %conv23 = zext i8 %56 to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.169, i32 noundef 2026, ptr noundef nonnull %spec.select, i32 noundef %conv23) #10
  br label %do.end27

do.end27:                                         ; preds = %do.end, %land.rhs.do.end27_crit_edge, %if.end.do.end27_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end27 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_dcbx_copy_mib(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef readonly %p_data, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp = icmp eq i32 %type, 3
  %mib = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %p_data, i32 0, i32 3
  %addr5 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %p_data, i32 0, i32 5
  %size6 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %p_data, i32 0, i32 4
  %lldp_remote = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %p_data, i32 0, i32 1
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool18.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool18.not, ptr @.str.3, ptr %name
  br label %do.body

do.body:                                          ; preds = %do.cond24.do.body_crit_edge, %entry
  %read_count.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond24.do.body_crit_edge ]
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %lldp_remote to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldp_remote, align 4
  %2 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr5, align 4
  %4 = ptrtoint ptr %size6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size6, align 4
  tail call void @qed_memcpy_from(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %1, i32 noundef %3, i32 noundef %5) #7
  %6 = ptrtoint ptr %lldp_remote to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldp_remote, align 4
  %suffix_seq_num4 = getelementptr inbounds %struct.lldp_status_params_s, ptr %7, i32 0, i32 4
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mib, align 4
  %10 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr5, align 4
  %12 = ptrtoint ptr %size6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size6, align 4
  tail call void @qed_memcpy_from(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %9, i32 noundef %11, i32 noundef %13) #7
  %14 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mib, align 4
  %suffix_seq_num10 = getelementptr inbounds %struct.dcbx_mib, ptr %15, i32 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %suffix_seq_num.0.in = phi ptr [ %suffix_seq_num4, %if.then ], [ %suffix_seq_num10, %if.else ]
  %prefix_seq_num.0.in = phi ptr [ %7, %if.then ], [ %15, %if.else ]
  %16 = ptrtoint ptr %prefix_seq_num.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %prefix_seq_num.0 = load i32, ptr %prefix_seq_num.0.in, align 4
  %17 = ptrtoint ptr %suffix_seq_num.0.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %suffix_seq_num.0 = load i32, ptr %suffix_seq_num.0.in, align 4
  %inc = add nuw nsw i32 %read_count.0, 1
  %18 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp12 = icmp eq i8 %19, 0
  br i1 %cmp12, label %land.rhs, label %if.end.do.cond24_crit_edge

if.end.do.cond24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond24

land.rhs:                                         ; preds = %if.end
  %20 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dp_module, align 4
  %and = and i32 %21, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.cond24_crit_edge, label %do.end, !prof !359

land.rhs.do.cond24_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond24

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 400, ptr noundef nonnull %spec.select, i32 noundef %type, i32 noundef %inc, i32 noundef %prefix_seq_num.0, i32 noundef %suffix_seq_num.0) #10
  br label %do.cond24

do.cond24:                                        ; preds = %do.end, %land.rhs.do.cond24_crit_edge, %if.end.do.cond24_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %prefix_seq_num.0, i32 %suffix_seq_num.0)
  %cmp25.not = icmp ne i32 %prefix_seq_num.0, %suffix_seq_num.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %read_count.0)
  %cmp28 = icmp ult i32 %read_count.0, 99
  %or.cond = select i1 %cmp25.not, i1 %cmp28, i1 false
  br i1 %or.cond, label %do.cond24.do.body_crit_edge, label %do.end31

do.cond24.do.body_crit_edge:                      ; preds = %do.cond24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end31:                                         ; preds = %do.cond24
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %read_count.0)
  %cmp32 = icmp ugt i32 %read_count.0, 98
  br i1 %cmp32, label %do.end38, label %do.end31.if.end52_crit_edge

do.end31.if.end52_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

do.end38:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef 407, ptr noundef nonnull %spec.select, i32 noundef %type, i32 noundef %inc, i32 noundef %prefix_seq_num.0, i32 noundef %suffix_seq_num.0) #10
  br label %if.end52

if.end52:                                         ; preds = %do.end38, %do.end31.if.end52_crit_edge
  %rc.0 = phi i32 [ -5, %do.end38 ], [ 0, %do.end31.if.end52_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_memcpy_from(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @qed_dcbx_get_app_protocol_type(ptr noundef %p_hwfn, i32 noundef %app_prio_bitmap, i16 noundef zeroext %id, ptr nocapture noundef writeonly %type, i1 noundef zeroext %ieee) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %ieee, label %qed_dcbx_fcoe_tlv.exit, label %qed_dcbx_fcoe_tlv.exit.thread

qed_dcbx_fcoe_tlv.exit:                           ; preds = %entry
  %and.i.i = lshr i32 %app_prio_bitmap, 12
  %conv.i.i = and i32 %and.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %cmp.i.i = icmp eq i32 %conv.i.i, 0
  %0 = and i32 %app_prio_bitmap, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i.i.i = icmp eq i32 %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv.i.i)
  %cmp4.i.i = icmp eq i32 %conv.i.i, 1
  %retval.0.i.i = select i1 %cmp.i.i, i1 %cmp.i.i.i, i1 %cmp4.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30458, i16 %id)
  %cmp.i = icmp eq i16 %id, -30458
  %spec.select.i = and i1 %cmp.i, %retval.0.i.i
  br i1 %spec.select.i, label %qed_dcbx_fcoe_tlv.exit.if.then_crit_edge, label %qed_dcbx_roce_tlv.exit.critedge

qed_dcbx_fcoe_tlv.exit.if.then_crit_edge:         ; preds = %qed_dcbx_fcoe_tlv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

qed_dcbx_fcoe_tlv.exit.thread:                    ; preds = %entry
  %1 = and i32 %app_prio_bitmap, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i8.i = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30458, i16 %id)
  %cmp.i100 = icmp eq i16 %id, -30458
  %spec.select.i101 = and i1 %cmp.i100, %cmp.i8.i
  br i1 %spec.select.i101, label %qed_dcbx_fcoe_tlv.exit.thread.if.then_crit_edge, label %qed_dcbx_roce_tlv.exit.thread

qed_dcbx_fcoe_tlv.exit.thread.if.then_crit_edge:  ; preds = %qed_dcbx_fcoe_tlv.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %qed_dcbx_fcoe_tlv.exit.thread.if.then_crit_edge, %qed_dcbx_fcoe_tlv.exit.if.then_crit_edge
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %type, align 4
  br label %return

qed_dcbx_roce_tlv.exit.critedge:                  ; preds = %qed_dcbx_fcoe_tlv.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30443, i16 %id)
  %cmp.i64 = icmp eq i16 %id, -30443
  %spec.select.i65 = and i1 %cmp.i64, %retval.0.i.i
  br i1 %spec.select.i65, label %qed_dcbx_roce_tlv.exit.critedge.if.then3_crit_edge, label %if.then.i69.critedge

qed_dcbx_roce_tlv.exit.critedge.if.then3_crit_edge: ; preds = %qed_dcbx_roce_tlv.exit.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

qed_dcbx_roce_tlv.exit.thread:                    ; preds = %qed_dcbx_fcoe_tlv.exit.thread
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30443, i16 %id)
  %cmp.i64103 = icmp eq i16 %id, -30443
  %spec.select.i65104 = and i1 %cmp.i64103, %cmp.i8.i
  br i1 %spec.select.i65104, label %qed_dcbx_roce_tlv.exit.thread.if.then3_crit_edge, label %qed_dcbx_iscsi_tlv.exit.thread

qed_dcbx_roce_tlv.exit.thread.if.then3_crit_edge: ; preds = %qed_dcbx_roce_tlv.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %qed_dcbx_roce_tlv.exit.thread.if.then3_crit_edge, %qed_dcbx_roce_tlv.exit.critedge.if.then3_crit_edge
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %type, align 4
  br label %return

if.then.i69.critedge:                             ; preds = %qed_dcbx_roce_tlv.exit.critedge
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i69.critedge
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %0)
  %cmp.i.i.i70 = icmp eq i32 %0, 256
  br label %qed_dcbx_iscsi_tlv.exit

if.end.i.i:                                       ; preds = %if.then.i69.critedge
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv.i.i)
  %cmp5.i.i = icmp eq i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv.i.i)
  %cmp8.i.i = icmp eq i32 %conv.i.i, 4
  %spec.select.i.i = or i1 %cmp5.i.i, %cmp8.i.i
  br label %qed_dcbx_iscsi_tlv.exit

qed_dcbx_iscsi_tlv.exit:                          ; preds = %if.end.i.i, %if.then.i.i
  %port.0.in.i = phi i1 [ %cmp.i.i.i70, %if.then.i.i ], [ %spec.select.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 3260, i16 %id)
  %cmp.i73 = icmp eq i16 %id, 3260
  %spec.select.i74 = and i1 %cmp.i73, %port.0.in.i
  br i1 %spec.select.i74, label %qed_dcbx_iscsi_tlv.exit.if.then7_crit_edge, label %qed_dcbx_default_tlv.exit.critedge

qed_dcbx_iscsi_tlv.exit.if.then7_crit_edge:       ; preds = %qed_dcbx_iscsi_tlv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

qed_dcbx_iscsi_tlv.exit.thread:                   ; preds = %qed_dcbx_roce_tlv.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %cmp.i8.i71 = icmp eq i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 3260, i16 %id)
  %cmp.i73106 = icmp eq i16 %id, 3260
  %spec.select.i74107 = and i1 %cmp.i73106, %cmp.i8.i71
  br i1 %spec.select.i74107, label %qed_dcbx_iscsi_tlv.exit.thread.if.then7_crit_edge, label %qed_dcbx_default_tlv.exit.thread

qed_dcbx_iscsi_tlv.exit.thread.if.then7_crit_edge: ; preds = %qed_dcbx_iscsi_tlv.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %qed_dcbx_iscsi_tlv.exit.thread.if.then7_crit_edge, %qed_dcbx_iscsi_tlv.exit.if.then7_crit_edge
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %type, align 4
  br label %return

qed_dcbx_default_tlv.exit.critedge:               ; preds = %qed_dcbx_iscsi_tlv.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %id)
  %cmp.i85 = icmp eq i16 %id, 0
  %spec.select.i86 = and i1 %cmp.i85, %retval.0.i.i
  br i1 %spec.select.i86, label %qed_dcbx_default_tlv.exit.critedge.if.then11_crit_edge, label %if.then.i90

qed_dcbx_default_tlv.exit.critedge.if.then11_crit_edge: ; preds = %qed_dcbx_default_tlv.exit.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

qed_dcbx_default_tlv.exit.thread:                 ; preds = %qed_dcbx_iscsi_tlv.exit.thread
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %id)
  %cmp.i85109 = icmp eq i16 %id, 0
  %spec.select.i86110 = and i1 %cmp.i85109, %cmp.i8.i
  br i1 %spec.select.i86110, label %qed_dcbx_default_tlv.exit.thread.if.then11_crit_edge, label %if.else.i95

qed_dcbx_default_tlv.exit.thread.if.then11_crit_edge: ; preds = %qed_dcbx_default_tlv.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.then11:                                        ; preds = %qed_dcbx_default_tlv.exit.thread.if.then11_crit_edge, %qed_dcbx_default_tlv.exit.critedge.if.then11_crit_edge
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %type, align 4
  br label %return

if.then.i90:                                      ; preds = %qed_dcbx_default_tlv.exit.critedge
  br i1 %cmp.i.i, label %if.then.i.i92, label %if.end.i.i93

if.then.i.i92:                                    ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %0)
  %cmp.i.i.i91 = icmp eq i32 %0, 256
  br label %qed_dcbx_roce_v2_tlv.exit

if.end.i.i93:                                     ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #9
  %6 = add nsw i32 %conv.i.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp ult i32 %6, 2
  br label %qed_dcbx_roce_v2_tlv.exit

if.else.i95:                                      ; preds = %qed_dcbx_default_tlv.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %cmp.i8.i94 = icmp eq i32 %1, 256
  br label %qed_dcbx_roce_v2_tlv.exit

qed_dcbx_roce_v2_tlv.exit:                        ; preds = %if.else.i95, %if.end.i.i93, %if.then.i.i92
  %port.0.in.i96 = phi i1 [ %cmp.i8.i94, %if.else.i95 ], [ %cmp.i.i.i91, %if.then.i.i92 ], [ %7, %if.end.i.i93 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4791, i16 %id)
  %cmp.i97 = icmp eq i16 %id, 4791
  %spec.select.i98 = and i1 %cmp.i97, %port.0.in.i96
  br i1 %spec.select.i98, label %if.then15, label %if.else16

if.then15:                                        ; preds = %qed_dcbx_roce_v2_tlv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %type, align 4
  br label %return

if.else16:                                        ; preds = %qed_dcbx_roce_v2_tlv.exit
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %type, align 4
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %10 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  br i1 %cmp, label %land.rhs, label %if.else16.return_crit_edge

if.else16.return_crit_edge:                       ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.rhs:                                         ; preds = %if.else16
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %12 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dp_module, align 4
  %and = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %land.rhs.return_crit_edge, label %do.end, !prof !359

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool23.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool23.not, ptr @.str.3, ptr %name
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 239, ptr noundef nonnull %spec.select, i32 noundef %app_prio_bitmap) #10
  br label %return

return:                                           ; preds = %do.end, %land.rhs.return_crit_edge, %if.else16.return_crit_edge, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %retval.0 = phi i1 [ false, %if.else16.return_crit_edge ], [ false, %land.rhs.return_crit_edge ], [ false, %do.end ], [ true, %if.then3 ], [ true, %if.then11 ], [ true, %if.then15 ], [ true, %if.then7 ], [ true, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_hw_info_set_offload_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_dcbx_get_common_params(ptr noundef %p_hwfn, ptr nocapture noundef readonly %p_app, ptr nocapture noundef readonly %p_tbl, ptr nocapture noundef readonly %p_ets, i32 noundef %pfc, ptr noundef %p_params, i1 noundef zeroext %ieee) unnamed_addr #0 align 64 {
entry:
  %bw_map.i = alloca [2 x i32], align 4
  %tsa_map.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p_app, align 4
  %app_willing.i = getelementptr inbounds %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 2
  %2 = trunc i32 %1 to i8
  %3 = lshr i8 %2, 1
  %4 = and i8 %3, 1
  %5 = ptrtoint ptr %app_willing.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %app_willing.i, align 2
  %6 = load i32, ptr %p_app, align 4
  %app_valid.i = getelementptr inbounds %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 3
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = ptrtoint ptr %app_valid.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %app_valid.i, align 1
  %10 = load i32, ptr %p_app, align 4
  %app_error.i = getelementptr inbounds %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 4
  %11 = trunc i32 %10 to i8
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 1
  %14 = ptrtoint ptr %app_error.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %app_error.i, align 4
  %15 = load i32, ptr %p_app, align 4
  %and14.i = lshr i32 %15, 16
  %16 = trunc i32 %and14.i to i16
  %conv.i = and i16 %16, 255
  %num_app_entries.i = getelementptr inbounds %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 1
  %17 = ptrtoint ptr %num_app_entries.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %num_app_entries.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.0124.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  br i1 %ieee, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  %arrayidx18.i = getelementptr %struct.dcbx_app_priority_entry, ptr %p_tbl, i32 %i.0124.i
  %18 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx18.i, align 4
  %and20.i = lshr i32 %19, 12
  %conv22.i = and i32 %and20.i, 15
  %20 = zext i32 %conv22.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %conv22.i, label %if.then.i.if.end.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb30.i
    i32 2, label %sw.bb32.i
    i32 3, label %sw.bb34.i
    i32 4, label %sw.bb36.i
  ]

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = and i32 %19, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool28.not.i = icmp eq i32 %21, 0
  %cond.i = select i1 %tobool28.not.i, i32 0, i32 3
  %sf_ieee29.i = getelementptr [32 x %struct.qed_app_entry], ptr %p_params, i32 0, i32 %i.0124.i, i32 1
  %22 = ptrtoint ptr %sf_ieee29.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond.i, ptr %sf_ieee29.i, align 4
  br label %if.end.i

sw.bb30.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sf_ieee31.i = getelementptr [32 x %struct.qed_app_entry], ptr %p_params, i32 0, i32 %i.0124.i, i32 1
  %23 = ptrtoint ptr %sf_ieee31.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %sf_ieee31.i, align 4
  br label %if.end.i

sw.bb32.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sf_ieee33.i = getelementptr [32 x %struct.qed_app_entry], ptr %p_params, i32 0, i32 %i.0124.i, i32 1
  %24 = ptrtoint ptr %sf_ieee33.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %sf_ieee33.i, align 4
  br label %if.end.i

sw.bb34.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sf_ieee35.i = getelementptr [32 x %struct.qed_app_entry], ptr %p_params, i32 0, i32 %i.0124.i, i32 1
  %25 = ptrtoint ptr %sf_ieee35.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %sf_ieee35.i, align 4
  br label %if.end.i

sw.bb36.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sf_ieee37.i = getelementptr [32 x %struct.qed_app_entry], ptr %p_params, i32 0, i32 %i.0124.i, i32 1
  %26 = ptrtoint ptr %sf_ieee37.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %sf_ieee37.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [32 x %struct.qed_app_entry], ptr %p_params, i32 0, i32 %i.0124.i
  %arrayidx38.i = getelementptr %struct.dcbx_app_priority_entry, ptr %p_tbl, i32 %i.0124.i
  %27 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx38.i, align 4
  %29 = and i32 %28, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool42.not.i = icmp eq i32 %29, 0
  %frombool43.i = zext i1 %tobool42.not.i to i8
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool43.i, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %sw.bb36.i, %sw.bb34.i, %sw.bb32.i, %sw.bb30.i, %sw.bb.i, %if.then.i.if.end.i_crit_edge
  %arrayidx44.i = getelementptr %struct.dcbx_app_priority_entry, ptr %p_tbl, i32 %i.0124.i
  %31 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx44.i, align 4
  %conv49.i = and i32 %32, 255
  %33 = tail call i32 @llvm.cttz.i32(i32 %conv49.i, i1 true) #7, !range !360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv49.i)
  %iszero.i = icmp eq i32 %conv49.i, 0
  %34 = trunc i32 %33 to i8
  %conv50.i = select i1 %iszero.i, i8 -1, i8 %34
  %prio.i = getelementptr [32 x %struct.qed_app_entry], ptr %p_params, i32 0, i32 %i.0124.i, i32 3
  %35 = ptrtoint ptr %prio.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv50.i, ptr %prio.i, align 1
  %36 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx44.i, align 4
  %shr54.i = lshr i32 %37, 16
  %conv55.i = trunc i32 %shr54.i to i16
  %proto_id.i = getelementptr [32 x %struct.qed_app_entry], ptr %p_params, i32 0, i32 %i.0124.i, i32 4
  %38 = ptrtoint ptr %proto_id.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv55.i, ptr %proto_id.i, align 2
  %39 = load i32, ptr %arrayidx44.i, align 4
  %proto_type.i = getelementptr [32 x %struct.qed_app_entry], ptr %p_params, i32 0, i32 %i.0124.i, i32 5
  %call.i = tail call fastcc zeroext i1 @qed_dcbx_get_app_protocol_type(ptr noundef %p_hwfn, i32 noundef %39, i16 noundef zeroext %conv55.i, ptr noundef %proto_type.i, i1 noundef zeroext %ieee) #7
  %inc.i = add nuw nsw i32 %i.0124.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %do.body.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.body.i:                                        ; preds = %if.end.i
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %40 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp61.i = icmp eq i8 %41, 0
  br i1 %cmp61.i, label %land.rhs.i, label %do.body.i.qed_dcbx_get_app_data.exit_crit_edge

do.body.i.qed_dcbx_get_app_data.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qed_dcbx_get_app_data.exit

land.rhs.i:                                       ; preds = %do.body.i
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %42 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dp_module.i, align 4
  %and63.i = and i32 %43, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %land.rhs.i.qed_dcbx_get_app_data.exit_crit_edge, label %do.end.i, !prof !359

land.rhs.i.qed_dcbx_get_app_data.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qed_dcbx_get_app_data.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %44 = ptrtoint ptr %app_willing.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %app_willing.i, align 2, !range !361
  %46 = zext i8 %45 to i32
  %47 = ptrtoint ptr %app_valid.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %app_valid.i, align 1, !range !361
  %49 = zext i8 %48 to i32
  %50 = ptrtoint ptr %app_error.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %app_error.i, align 4, !range !361
  %52 = zext i8 %51 to i32
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 517, ptr noundef nonnull %name.i, i32 noundef %46, i32 noundef %49, i32 noundef %52) #10
  br label %qed_dcbx_get_app_data.exit

qed_dcbx_get_app_data.exit:                       ; preds = %do.end.i, %land.rhs.i.qed_dcbx_get_app_data.exit_crit_edge, %do.body.i.qed_dcbx_get_app_data.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bw_map.i) #7
  %53 = getelementptr inbounds [2 x i32], ptr %bw_map.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tsa_map.i) #7
  %54 = getelementptr inbounds [2 x i32], ptr %tsa_map.i, i32 0, i32 1
  %55 = ptrtoint ptr %p_ets to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %p_ets, align 4
  %ets_willing.i = getelementptr inbounds %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 5
  %57 = trunc i32 %56 to i8
  %58 = lshr i8 %57, 1
  %59 = and i8 %58, 1
  %60 = ptrtoint ptr %ets_willing.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %ets_willing.i, align 1
  %61 = load i32, ptr %p_ets, align 4
  %ets_enabled.i = getelementptr inbounds %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 6
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  %64 = ptrtoint ptr %ets_enabled.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %ets_enabled.i, align 2
  %65 = load i32, ptr %p_ets, align 4
  %ets_cbs.i = getelementptr inbounds %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 7
  %66 = trunc i32 %65 to i8
  %67 = lshr i8 %66, 3
  %68 = and i8 %67, 1
  %69 = ptrtoint ptr %ets_cbs.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %ets_cbs.i, align 1
  %70 = load i32, ptr %p_ets, align 4
  %71 = trunc i32 %70 to i8
  %72 = lshr i8 %71, 4
  %max_ets_tc.i = getelementptr inbounds %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 13
  %73 = ptrtoint ptr %max_ets_tc.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %max_ets_tc.i, align 4
  %74 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp.i = icmp eq i8 %75, 0
  br i1 %cmp.i, label %land.rhs.i7, label %qed_dcbx_get_app_data.exit.do.end36.i_crit_edge

qed_dcbx_get_app_data.exit.do.end36.i_crit_edge:  ; preds = %qed_dcbx_get_app_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36.i

land.rhs.i7:                                      ; preds = %qed_dcbx_get_app_data.exit
  %dp_module.i6 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %76 = ptrtoint ptr %dp_module.i6 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dp_module.i6, align 4
  %and16.i = and i32 %77, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %land.rhs.i7.do.end36.i_crit_edge, label %do.end.i10, !prof !359

land.rhs.i7.do.end36.i_crit_edge:                 ; preds = %land.rhs.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36.i

do.end.i10:                                       ; preds = %land.rhs.i7
  call void @__sanitizer_cov_trace_pc() #9
  %name.i8 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %78 = zext i8 %59 to i32
  %79 = zext i8 %63 to i32
  %80 = zext i8 %68 to i32
  %pri_tc_tbl.i = getelementptr inbounds %struct.dcbx_ets_feature, ptr %p_ets, i32 0, i32 1
  %81 = ptrtoint ptr %pri_tc_tbl.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pri_tc_tbl.i, align 4
  %conv34.i = zext i8 %72 to i32
  %call.i9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 565, ptr noundef nonnull %name.i8, i32 noundef %78, i32 noundef %79, i32 noundef %80, i32 noundef %82, i32 noundef %conv34.i) #10
  br label %do.end36.i

do.end36.i:                                       ; preds = %do.end.i10, %land.rhs.i7.do.end36.i_crit_edge, %qed_dcbx_get_app_data.exit.do.end36.i_crit_edge
  %83 = ptrtoint ptr %ets_enabled.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ets_enabled.i, align 2, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool38.not.i = icmp eq i8 %84, 0
  br i1 %tobool38.not.i, label %do.end36.i.if.end80.i_crit_edge, label %land.lhs.true.i

do.end36.i.if.end80.i_crit_edge:                  ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

land.lhs.true.i:                                  ; preds = %do.end36.i
  %85 = ptrtoint ptr %max_ets_tc.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %max_ets_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool41.not.i = icmp eq i8 %86, 0
  br i1 %tobool41.not.i, label %if.then42.i, label %land.lhs.true.i.if.end80.i_crit_edge

land.lhs.true.i.if.end80.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

if.then42.i:                                      ; preds = %land.lhs.true.i
  %87 = ptrtoint ptr %max_ets_tc.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 8, ptr %max_ets_tc.i, align 4
  %88 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp47.i = icmp eq i8 %89, 0
  br i1 %cmp47.i, label %land.rhs49.i, label %if.then42.i.if.end80.i_crit_edge

if.then42.i.if.end80.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

land.rhs49.i:                                     ; preds = %if.then42.i
  %dp_module50.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %90 = ptrtoint ptr %dp_module50.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dp_module50.i, align 4
  %and51.i = and i32 %91, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %land.rhs49.i.if.end80.i_crit_edge, label %do.end63.i, !prof !359

land.rhs49.i.if.end80.i_crit_edge:                ; preds = %land.rhs49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

do.end63.i:                                       ; preds = %land.rhs49.i
  call void @__sanitizer_cov_trace_pc() #9
  %name65.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call76.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef 571, ptr noundef nonnull %name65.i, i32 noundef 8) #10
  br label %if.end80.i

if.end80.i:                                       ; preds = %do.end63.i, %land.rhs49.i.if.end80.i_crit_edge, %if.then42.i.if.end80.i_crit_edge, %land.lhs.true.i.if.end80.i_crit_edge, %do.end36.i.if.end80.i_crit_edge
  %tc_bw_tbl.i = getelementptr inbounds %struct.dcbx_ets_feature, ptr %p_ets, i32 0, i32 2
  %92 = ptrtoint ptr %tc_bw_tbl.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tc_bw_tbl.i, align 4
  %94 = ptrtoint ptr %bw_map.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %bw_map.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.dcbx_ets_feature, ptr %p_ets, i32 0, i32 2, i32 1
  %95 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.1.i.i, align 4
  %97 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %53, align 4
  %tc_tsa_tbl.i = getelementptr inbounds %struct.dcbx_ets_feature, ptr %p_ets, i32 0, i32 3
  %98 = ptrtoint ptr %tc_tsa_tbl.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tc_tsa_tbl.i, align 4
  %100 = ptrtoint ptr %tsa_map.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %tsa_map.i, align 4
  %arrayidx.1.i185.i = getelementptr %struct.dcbx_ets_feature, ptr %p_ets, i32 0, i32 3, i32 1
  %101 = ptrtoint ptr %arrayidx.1.i185.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.1.i185.i, align 4
  %103 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %54, align 4
  %pri_tc_tbl85.i = getelementptr inbounds %struct.dcbx_ets_feature, ptr %p_ets, i32 0, i32 1
  %104 = ptrtoint ptr %pri_tc_tbl85.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pri_tc_tbl85.i, align 4
  %dp_module105.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name120.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  br label %for.body.i11

for.body.i11:                                     ; preds = %for.inc.i.for.body.i11_crit_edge, %if.end80.i
  %i.0187.i = phi i32 [ 0, %if.end80.i ], [ %inc.i12, %for.inc.i.for.body.i11_crit_edge ]
  %arrayidx90.i = getelementptr i8, ptr %bw_map.i, i32 %i.0187.i
  %106 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx90.i, align 1
  %arrayidx91.i = getelementptr %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 10, i32 %i.0187.i
  %108 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %arrayidx91.i, align 1
  %arrayidx93.i = getelementptr i8, ptr %tsa_map.i, i32 %i.0187.i
  %109 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx93.i, align 1
  %arrayidx94.i = getelementptr %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 11, i32 %i.0187.i
  %111 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %arrayidx94.i, align 1
  %.neg.i = mul nsw i32 %i.0187.i, -4
  %mul.i = add nsw i32 %.neg.i, 28
  %shr95.i = lshr i32 %105, %mul.i
  %112 = trunc i32 %shr95.i to i8
  %conv97.i = and i8 %112, 7
  %arrayidx98.i = getelementptr %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 9, i32 %i.0187.i
  %113 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv97.i, ptr %arrayidx98.i, align 1
  %114 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp102.i = icmp eq i8 %115, 0
  br i1 %cmp102.i, label %land.rhs104.i, label %for.body.i11.for.inc.i_crit_edge

for.body.i11.for.inc.i_crit_edge:                 ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.rhs104.i:                                    ; preds = %for.body.i11
  %116 = ptrtoint ptr %dp_module105.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dp_module105.i, align 4
  %and106.i = and i32 %117, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %land.rhs104.i.for.inc.i_crit_edge, label %do.end118.i, !prof !359

land.rhs104.i.for.inc.i_crit_edge:                ; preds = %land.rhs104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end118.i:                                      ; preds = %land.rhs104.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv131.i = zext i8 %107 to i32
  %conv134.i = zext i8 %110 to i32
  %call135.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.37, i32 noundef 588, ptr noundef nonnull %name120.i, i32 noundef %i.0187.i, i32 noundef %conv131.i, i32 noundef %conv134.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end118.i, %land.rhs104.i.for.inc.i_crit_edge, %for.body.i11.for.inc.i_crit_edge
  %inc.i12 = add nuw nsw i32 %i.0187.i, 1
  %exitcond.not.i13 = icmp eq i32 %inc.i12, 8
  br i1 %exitcond.not.i13, label %qed_dcbx_get_ets_data.exit, label %for.inc.i.for.body.i11_crit_edge

for.inc.i.for.body.i11_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i11

qed_dcbx_get_ets_data.exit:                       ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tsa_map.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bw_map.i) #7
  %pfc1.i = getelementptr inbounds %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 12
  %118 = lshr i32 %pfc, 15
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = ptrtoint ptr %pfc1.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %pfc1.i, align 1
  %and2.i = lshr i32 %pfc, 8
  %122 = trunc i32 %and2.i to i8
  %conv.i14 = and i8 %122, 15
  %max_tc.i = getelementptr inbounds %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 12, i32 3
  %123 = ptrtoint ptr %max_tc.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv.i14, ptr %max_tc.i, align 1
  %enabled.i = getelementptr inbounds %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 12, i32 1
  %124 = lshr i32 %pfc, 16
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %enabled.i, align 1
  %conv13.i = and i32 %pfc, 255
  %128 = trunc i32 %pfc to i8
  %129 = and i8 %128, 1
  %prio.i15 = getelementptr inbounds %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 12, i32 2
  %130 = ptrtoint ptr %prio.i15 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %prio.i15, align 1
  %131 = lshr i8 %128, 1
  %132 = and i8 %131, 1
  %arrayidx29.i = getelementptr %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 12, i32 2, i32 1
  %133 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %arrayidx29.i, align 1
  %134 = lshr i8 %128, 2
  %135 = and i8 %134, 1
  %arrayidx40.i = getelementptr %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 12, i32 2, i32 2
  %136 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %arrayidx40.i, align 1
  %137 = lshr i8 %128, 3
  %138 = and i8 %137, 1
  %arrayidx51.i = getelementptr %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 12, i32 2, i32 3
  %139 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %arrayidx51.i, align 1
  %140 = lshr i8 %128, 4
  %141 = and i8 %140, 1
  %arrayidx62.i = getelementptr %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 12, i32 2, i32 4
  %142 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %arrayidx62.i, align 1
  %143 = lshr i8 %128, 5
  %144 = and i8 %143, 1
  %arrayidx73.i = getelementptr %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 12, i32 2, i32 5
  %145 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %arrayidx73.i, align 1
  %146 = lshr i8 %128, 6
  %147 = and i8 %146, 1
  %arrayidx84.i = getelementptr %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 12, i32 2, i32 6
  %148 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %arrayidx84.i, align 1
  %149 = lshr i8 %128, 7
  %arrayidx95.i = getelementptr %struct.qed_dcbx_params, ptr %p_params, i32 0, i32 12, i32 2, i32 7
  %150 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %arrayidx95.i, align 1
  %151 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %cmp.i17 = icmp eq i8 %152, 0
  br i1 %cmp.i17, label %land.rhs.i19, label %qed_dcbx_get_ets_data.exit.qed_dcbx_get_pfc_data.exit_crit_edge

qed_dcbx_get_ets_data.exit.qed_dcbx_get_pfc_data.exit_crit_edge: ; preds = %qed_dcbx_get_ets_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %qed_dcbx_get_pfc_data.exit

land.rhs.i19:                                     ; preds = %qed_dcbx_get_ets_data.exit
  %153 = ptrtoint ptr %dp_module105.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %dp_module105.i, align 4
  %and98.i = and i32 %154, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  br i1 %tobool99.not.i, label %land.rhs.i19.qed_dcbx_get_pfc_data.exit_crit_edge, label %do.end.i22, !prof !359

land.rhs.i19.qed_dcbx_get_pfc_data.exit_crit_edge: ; preds = %land.rhs.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %qed_dcbx_get_pfc_data.exit

do.end.i22:                                       ; preds = %land.rhs.i19
  call void @__sanitizer_cov_trace_pc() #9
  %155 = zext i8 %120 to i32
  %conv116.i = zext i8 %conv.i14 to i32
  %156 = zext i8 %126 to i32
  %call.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 542, ptr noundef nonnull %name120.i, i32 noundef %155, i32 noundef %conv13.i, i32 noundef %conv116.i, i32 noundef %156) #10
  br label %qed_dcbx_get_pfc_data.exit

qed_dcbx_get_pfc_data.exit:                       ; preds = %do.end.i22, %land.rhs.i19.qed_dcbx_get_pfc_data.exit_crit_edge, %qed_dcbx_get_ets_data.exit.qed_dcbx_get_pfc_data.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_ptt_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ptt_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_dcbnl_get_ieee_pfc(ptr noundef %cdev, ptr nocapture noundef %pfc, i1 noundef zeroext %remote) unnamed_addr #0 align 64 {
entry:
  %data.i29.i = alloca %struct.qed_dcbx_mib_meta_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ieee = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %ieee to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ieee, align 2, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %do.body, label %if.end15

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ult i8 %3, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup.sink.split_crit_edge, !prof !362

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.3, ptr %name
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 2045, ptr noundef nonnull %spec.select) #10
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end
  br i1 %remote, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %4 = call ptr @memset(ptr %call, i32 0, i32 1784)
  %5 = ptrtoint ptr %hwfns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwfns, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 39
  %7 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %b_is_vf.i, align 4, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then17.cleanup.sink.split_crit_edge

if.then17.cleanup.sink.split_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then17
  %call.i = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end3.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end3.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data.i29.i) #7
  %9 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i29.i, i32 0, i32 3
  %10 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i29.i, i32 0, i32 4
  %11 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i29.i, i32 0, i32 5
  %12 = call ptr @memset(ptr %data.i29.i, i32 0, i32 12)
  %mcp_info.i30.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 45
  %13 = ptrtoint ptr %mcp_info.i30.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mcp_info.i30.i, align 8
  %port_addr.i31.i = getelementptr inbounds %struct.qed_mcp_info, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %port_addr.i31.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_addr.i31.i, align 8
  %add.i32.i = add i32 %16, 1080
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i32.i, ptr %11, align 4
  %p_dcbx_info.i33.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 46
  %18 = ptrtoint ptr %p_dcbx_info.i33.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_dcbx_info.i33.i, align 4
  %remote.i.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %remote.i.i, ptr %9, align 4
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 172, ptr %10, align 4
  %call.i34.i = call fastcc i32 @qed_dcbx_copy_mib(ptr noundef %hwfns, ptr noundef nonnull %call.i, ptr noundef nonnull %data.i29.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data.i29.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %tobool5.not.i = icmp eq i32 %call.i34.i, 0
  br i1 %tobool5.not.i, label %if.end21, label %qed_dcbx_query_params.exit

qed_dcbx_query_params.exit:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call.i) #7
  br label %cleanup.sink.split

if.end21:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %p_dcbx_info.i33.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p_dcbx_info.i33.i, align 4
  %features.i.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %23, i32 0, i32 5, i32 2
  %app.i.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %23, i32 0, i32 5, i32 2, i32 2
  %app_pri_tbl.i.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %23, i32 0, i32 5, i32 2, i32 2, i32 1
  %pfc.i.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %23, i32 0, i32 5, i32 2, i32 1
  %24 = ptrtoint ptr %pfc.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pfc.i.i, align 4
  %remote2.i.i = getelementptr inbounds %struct.qed_dcbx_get, ptr %call, i32 0, i32 3
  tail call fastcc void @qed_dcbx_get_common_params(ptr noundef %hwfns, ptr noundef %app.i.i, ptr noundef %app_pri_tbl.i.i, ptr noundef %features.i.i, i32 noundef %25, ptr noundef %remote2.i.i, i1 noundef zeroext false) #7
  %valid.i.i = getelementptr inbounds %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %valid.i.i, align 4
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call.i) #7
  br label %if.end26

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %params25 = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call, i32 0, i32 1
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end21
  %params.0 = phi ptr [ %remote2.i.i, %if.end21 ], [ %params25, %if.else ]
  %max_tc = getelementptr inbounds %struct.qed_dcbx_params, ptr %params.0, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %max_tc to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %max_tc, align 1
  %29 = ptrtoint ptr %pfc to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %pfc, align 8
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %30 = ptrtoint ptr %pfc_en to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %pfc_en, align 1
  %arrayidx31 = getelementptr %struct.qed_dcbx_params, ptr %params.0, i32 0, i32 12, i32 2, i32 0
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool32.not = icmp eq i8 %32, 0
  br i1 %tobool32.not, label %if.end26.for.inc_crit_edge, label %if.then33

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pfc_en, align 1
  %conv36 = or i8 %34, 1
  store i8 %conv36, ptr %pfc_en, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %if.end26.for.inc_crit_edge
  %arrayidx31.1 = getelementptr %struct.qed_dcbx_params, ptr %params.0, i32 0, i32 12, i32 2, i32 1
  %35 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx31.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool32.not.1 = icmp eq i8 %36, 0
  br i1 %tobool32.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then33.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then33.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pfc_en, align 1
  %conv36.1 = or i8 %38, 2
  store i8 %conv36.1, ptr %pfc_en, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then33.1, %for.inc.for.inc.1_crit_edge
  %arrayidx31.2 = getelementptr %struct.qed_dcbx_params, ptr %params.0, i32 0, i32 12, i32 2, i32 2
  %39 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx31.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool32.not.2 = icmp eq i8 %40, 0
  br i1 %tobool32.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then33.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then33.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pfc_en, align 1
  %conv36.2 = or i8 %42, 4
  store i8 %conv36.2, ptr %pfc_en, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then33.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx31.3 = getelementptr %struct.qed_dcbx_params, ptr %params.0, i32 0, i32 12, i32 2, i32 3
  %43 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx31.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool32.not.3 = icmp eq i8 %44, 0
  br i1 %tobool32.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then33.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then33.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pfc_en, align 1
  %conv36.3 = or i8 %46, 8
  store i8 %conv36.3, ptr %pfc_en, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then33.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx31.4 = getelementptr %struct.qed_dcbx_params, ptr %params.0, i32 0, i32 12, i32 2, i32 4
  %47 = ptrtoint ptr %arrayidx31.4 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx31.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool32.not.4 = icmp eq i8 %48, 0
  br i1 %tobool32.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then33.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then33.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pfc_en, align 1
  %conv36.4 = or i8 %50, 16
  store i8 %conv36.4, ptr %pfc_en, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then33.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx31.5 = getelementptr %struct.qed_dcbx_params, ptr %params.0, i32 0, i32 12, i32 2, i32 5
  %51 = ptrtoint ptr %arrayidx31.5 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx31.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool32.not.5 = icmp eq i8 %52, 0
  br i1 %tobool32.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then33.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then33.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pfc_en, align 1
  %conv36.5 = or i8 %54, 32
  store i8 %conv36.5, ptr %pfc_en, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then33.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx31.6 = getelementptr %struct.qed_dcbx_params, ptr %params.0, i32 0, i32 12, i32 2, i32 6
  %55 = ptrtoint ptr %arrayidx31.6 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx31.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool32.not.6 = icmp eq i8 %56, 0
  br i1 %tobool32.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then33.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then33.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %pfc_en, align 1
  %conv36.6 = or i8 %58, 64
  store i8 %conv36.6, ptr %pfc_en, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then33.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx31.7 = getelementptr %struct.qed_dcbx_params, ptr %params.0, i32 0, i32 12, i32 2, i32 7
  %59 = ptrtoint ptr %arrayidx31.7 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx31.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool32.not.7 = icmp eq i8 %60, 0
  br i1 %tobool32.not.7, label %for.inc.6.cleanup.sink.split_crit_edge, label %if.then33.7

for.inc.6.cleanup.sink.split_crit_edge:           ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then33.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %pfc_en, align 1
  %conv36.7 = or i8 %62, -128
  store i8 %conv36.7, ptr %pfc_en, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then33.7, %for.inc.6.cleanup.sink.split_crit_edge, %qed_dcbx_query_params.exit, %if.end.i.cleanup.sink.split_crit_edge, %if.then17.cleanup.sink.split_crit_edge, %do.end, %do.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup.sink.split_crit_edge ], [ -22, %if.end.i.cleanup.sink.split_crit_edge ], [ -22, %if.then17.cleanup.sink.split_crit_edge ], [ -22, %qed_dcbx_query_params.exit ], [ 0, %if.then33.7 ], [ 0, %for.inc.6.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfn, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 1784) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %hwfn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwfn, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %2, i32 0, i32 39
  %3 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %b_is_vf.i, align 4, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end
  %call.i = tail call ptr @qed_ptt_acquire(ptr noundef %hwfn) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end3.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call fastcc i32 @qed_dcbx_read_mib(ptr noundef %hwfn, ptr noundef nonnull %call.i, i32 noundef %type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %qed_dcbx_query_params.exit, label %qed_dcbx_query_params.exit.thread32

qed_dcbx_query_params.exit.thread32:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @qed_ptt_release(ptr noundef %hwfn, ptr noundef nonnull %call.i) #7
  br label %cleanup.sink.split

qed_dcbx_query_params.exit:                       ; preds = %if.end3.i
  %call8.i = tail call fastcc i32 @qed_dcbx_get_params(ptr noundef %hwfn, ptr noundef nonnull %call7.i.i, i32 noundef %type) #7
  tail call void @qed_ptt_release(ptr noundef %hwfn, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool2.not = icmp eq i32 %call8.i, 0
  br i1 %tobool2.not, label %if.end4, label %qed_dcbx_query_params.exit.cleanup.sink.split_crit_edge

qed_dcbx_query_params.exit.cleanup.sink.split_crit_edge: ; preds = %qed_dcbx_query_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end4:                                          ; preds = %qed_dcbx_query_params.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %land.lhs.true, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  %enabled = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %do.body, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %hwfn, i32 0, i32 7
  %7 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp7 = icmp ult i8 %8, 2
  br i1 %cmp7, label %do.end, label %do.body.cleanup.sink.split_crit_edge, !prof !362

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %hwfn, i32 0, i32 8
  %tobool13.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool13.not, ptr @.str.3, ptr %name
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef 1297, ptr noundef nonnull %spec.select) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %do.body.cleanup.sink.split_crit_edge, %qed_dcbx_query_params.exit.cleanup.sink.split_crit_edge, %qed_dcbx_query_params.exit.thread32, %if.end.i.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %land.lhs.true.cleanup_crit_edge ], [ %call7.i.i, %if.end4.cleanup_crit_edge ], [ null, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_dcbnl_get_ieee_ets(ptr noundef %cdev, ptr nocapture noundef writeonly %ets, i1 noundef zeroext %remote) unnamed_addr #0 align 64 {
entry:
  %data.i29.i = alloca %struct.qed_dcbx_mib_meta_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call fastcc ptr @qed_dcbnl_get_dcbx(ptr noundef %hwfns, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ieee = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %ieee to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ieee, align 2, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %do.body, label %if.end15

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ult i8 %3, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup.sink.split_crit_edge, !prof !362

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.3, ptr %name
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.62, i32 noundef 2135, ptr noundef nonnull %spec.select) #10
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end
  br i1 %remote, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %4 = call ptr @memset(ptr %call, i32 0, i32 1784)
  %5 = ptrtoint ptr %hwfns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwfns, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 39
  %7 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %b_is_vf.i, align 4, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then17.cleanup.sink.split_crit_edge

if.then17.cleanup.sink.split_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then17
  %call.i = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end3.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end3.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data.i29.i) #7
  %9 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i29.i, i32 0, i32 3
  %10 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i29.i, i32 0, i32 4
  %11 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, ptr %data.i29.i, i32 0, i32 5
  %12 = call ptr @memset(ptr %data.i29.i, i32 0, i32 12)
  %mcp_info.i30.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 45
  %13 = ptrtoint ptr %mcp_info.i30.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mcp_info.i30.i, align 8
  %port_addr.i31.i = getelementptr inbounds %struct.qed_mcp_info, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %port_addr.i31.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_addr.i31.i, align 8
  %add.i32.i = add i32 %16, 1080
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i32.i, ptr %11, align 4
  %p_dcbx_info.i33.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 46
  %18 = ptrtoint ptr %p_dcbx_info.i33.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_dcbx_info.i33.i, align 4
  %remote.i.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %remote.i.i, ptr %9, align 4
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 172, ptr %10, align 4
  %call.i34.i = call fastcc i32 @qed_dcbx_copy_mib(ptr noundef %hwfns, ptr noundef nonnull %call.i, ptr noundef nonnull %data.i29.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data.i29.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %tobool5.not.i = icmp eq i32 %call.i34.i, 0
  br i1 %tobool5.not.i, label %if.end21, label %qed_dcbx_query_params.exit

qed_dcbx_query_params.exit:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call.i) #7
  br label %cleanup.sink.split

if.end21:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %p_dcbx_info.i33.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p_dcbx_info.i33.i, align 4
  %features.i.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %23, i32 0, i32 5, i32 2
  %app.i.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %23, i32 0, i32 5, i32 2, i32 2
  %app_pri_tbl.i.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %23, i32 0, i32 5, i32 2, i32 2, i32 1
  %pfc.i.i = getelementptr inbounds %struct.qed_dcbx_info, ptr %23, i32 0, i32 5, i32 2, i32 1
  %24 = ptrtoint ptr %pfc.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pfc.i.i, align 4
  %remote2.i.i = getelementptr inbounds %struct.qed_dcbx_get, ptr %call, i32 0, i32 3
  tail call fastcc void @qed_dcbx_get_common_params(ptr noundef %hwfns, ptr noundef %app.i.i, ptr noundef %app_pri_tbl.i.i, ptr noundef %features.i.i, i32 noundef %25, ptr noundef %remote2.i.i, i1 noundef zeroext false) #7
  %valid.i.i = getelementptr inbounds %struct.qed_dcbx_get, ptr %call, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %valid.i.i, align 4
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call.i) #7
  br label %if.end26

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %params25 = getelementptr inbounds %struct.qed_dcbx_operational_params, ptr %call, i32 0, i32 1
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end21
  %params.0 = phi ptr [ %remote2.i.i, %if.end21 ], [ %params25, %if.else ]
  %max_ets_tc = getelementptr inbounds %struct.qed_dcbx_params, ptr %params.0, i32 0, i32 13
  %27 = ptrtoint ptr %max_ets_tc to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %max_ets_tc, align 4
  %ets_cap = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 1
  %29 = ptrtoint ptr %ets_cap to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %ets_cap, align 1
  %ets_willing = getelementptr inbounds %struct.qed_dcbx_params, ptr %params.0, i32 0, i32 5
  %30 = ptrtoint ptr %ets_willing to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ets_willing, align 1, !range !361
  %32 = ptrtoint ptr %ets to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %ets, align 1
  %ets_cbs = getelementptr inbounds %struct.qed_dcbx_params, ptr %params.0, i32 0, i32 7
  %33 = ptrtoint ptr %ets_cbs to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ets_cbs, align 1, !range !361
  %cbs = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 2
  %35 = ptrtoint ptr %cbs to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %cbs, align 1
  %tc_tx_bw = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 3
  %ets_tc_bw_tbl = getelementptr inbounds %struct.qed_dcbx_params, ptr %params.0, i32 0, i32 10
  %36 = ptrtoint ptr %ets_tc_bw_tbl to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %ets_tc_bw_tbl, align 1
  %38 = ptrtoint ptr %tc_tx_bw to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %37, ptr %tc_tx_bw, align 1
  %tc_tsa = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 5
  %ets_tc_tsa_tbl = getelementptr inbounds %struct.qed_dcbx_params, ptr %params.0, i32 0, i32 11
  %39 = ptrtoint ptr %ets_tc_tsa_tbl to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %ets_tc_tsa_tbl, align 1
  %41 = ptrtoint ptr %tc_tsa to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %tc_tsa, align 1
  %prio_tc = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 6
  %ets_pri_tc_tbl = getelementptr inbounds %struct.qed_dcbx_params, ptr %params.0, i32 0, i32 9
  %42 = ptrtoint ptr %ets_pri_tc_tbl to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %ets_pri_tc_tbl, align 1
  %44 = ptrtoint ptr %prio_tc to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %43, ptr %prio_tc, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end26, %qed_dcbx_query_params.exit, %if.end.i.cleanup.sink.split_crit_edge, %if.then17.cleanup.sink.split_crit_edge, %do.end, %do.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end26 ], [ -22, %do.end ], [ -22, %do.body.cleanup.sink.split_crit_edge ], [ -22, %if.end.i.cleanup.sink.split_crit_edge ], [ -22, %if.then17.cleanup.sink.split_crit_edge ], [ -22, %qed_dcbx_query_params.exit ]
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 193)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 193)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !16, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !170, !171, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !220, !222, !223, !225, !226, !227, !229, !230, !231, !232, !234, !235, !237, !238, !239, !240, !242, !243, !244, !246, !247, !248, !249, !251, !252, !253, !255, !256, !257, !258, !260, !261, !262, !264, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !280, !282, !283, !284, !285, !287, !288, !290, !291, !292, !294, !295, !296, !297, !299, !300, !302, !303, !304, !306, !307, !308, !309, !311, !312, !313, !315, !316, !317, !318, !320, !321, !322, !324, !325, !326, !327, !329, !330, !331, !333, !334, !335, !336, !338, !339, !341, !342, !343, !344, !346, !347, !348}
!llvm.module.flags = !{!349, !350, !351, !352, !353, !354, !355, !356}
!llvm.ident = !{!357}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 979, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qed_dcbx_get_priority_tc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qed_dcbx_get_priority_tc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 984, i32 3}
!9 = !{ptr @qed_dcbx_get_priority_tc._entry.4, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @qed_dcbx_get_priority_tc._entry_ptr.6, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1230, i32 3}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @qed_dcbx_config_params._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @qed_dcbx_config_params._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @qed_dcbnl_ops_pass, !17, !"qed_dcbnl_ops_pass", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 2375, i32 32}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 845, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @qed_dcbx_read_mib._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @qed_dcbx_read_mib._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 397, i32 3}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @qed_dcbx_copy_mib._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @qed_dcbx_copy_mib._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 405, i32 3}
!30 = !{ptr @qed_dcbx_copy_mib._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @qed_dcbx_copy_mib._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 262, i32 2}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @qed_dcbx_process_tlv._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @qed_dcbx_process_tlv._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 274, i32 4}
!39 = !{ptr @qed_dcbx_process_tlv._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @qed_dcbx_process_tlv._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 237, i32 3}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @qed_dcbx_get_app_protocol_type._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @qed_dcbx_get_app_protocol_type._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 42, i32 24}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 43, i32 23}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 44, i32 23}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 45, i32 26}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 46, i32 22}
!56 = !{ptr @qed_dcbx_app_update, !57, !"qed_dcbx_app_update", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 41, i32 43}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 151, i32 2}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @qed_dcbx_dp_protocol._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @qed_dcbx_dp_protocol._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 157, i32 3}
!65 = !{ptr @qed_dcbx_dp_protocol._entry.30, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @qed_dcbx_dp_protocol._entry_ptr.32, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 733, i32 3}
!69 = !{ptr @qed_dcbx_get_params._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @qed_dcbx_get_params._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 514, i32 2}
!73 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @qed_dcbx_get_app_data._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @qed_dcbx_get_app_data._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 561, i32 2}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @qed_dcbx_get_ets_data._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @qed_dcbx_get_ets_data._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 569, i32 3}
!83 = !{ptr @qed_dcbx_get_ets_data._entry.38, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @qed_dcbx_get_ets_data._entry_ptr.40, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 585, i32 3}
!87 = !{ptr @qed_dcbx_get_ets_data._entry.41, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @qed_dcbx_get_ets_data._entry_ptr.43, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 539, i32 2}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @qed_dcbx_get_pfc_data._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @qed_dcbx_get_pfc_data._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 650, i32 3}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @qed_dcbx_get_operational_params._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @qed_dcbx_get_operational_params._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 668, i32 2}
!101 = !{ptr @qed_dcbx_get_operational_params._entry.48, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @qed_dcbx_get_operational_params._entry_ptr.50, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 448, i32 2}
!105 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @qed_dcbx_get_priority_info._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @qed_dcbx_get_priority_info._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1185, i32 2}
!110 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @qed_dcbx_set_local_params._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @qed_dcbx_set_local_params._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1047, i32 2}
!115 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @qed_dcbx_set_pfc_data._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @qed_dcbx_set_pfc_data._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 2045, i32 3}
!120 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @qed_dcbnl_get_ieee_pfc._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @qed_dcbnl_get_ieee_pfc._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1297, i32 3}
!125 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @qed_dcbnl_get_dcbx._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @qed_dcbnl_get_dcbx._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 2093, i32 3}
!130 = !{ptr @qed_dcbnl_ieee_setpfc._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @qed_dcbnl_ieee_setpfc._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 2135, i32 3}
!134 = !{ptr @qed_dcbnl_get_ieee_ets._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @qed_dcbnl_get_ieee_ets._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 2183, i32 3}
!138 = !{ptr @qed_dcbnl_ieee_setets._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @qed_dcbnl_ieee_setets._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 2260, i32 2}
!142 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @qed_dcbnl_ieee_getapp._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @qed_dcbnl_ieee_getapp._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 2264, i32 3}
!147 = !{ptr @qed_dcbnl_ieee_getapp._entry.66, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @qed_dcbnl_ieee_getapp._entry_ptr.68, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @qed_dcbnl_ieee_getapp._entry.69, !150, !"_entry", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 2274, i32 3}
!151 = !{ptr @qed_dcbnl_ieee_getapp._entry_ptr.70, !150, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 2289, i32 3}
!154 = !{ptr @qed_dcbnl_ieee_getapp._entry.71, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @qed_dcbnl_ieee_getapp._entry_ptr.73, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 2312, i32 2}
!158 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @qed_dcbnl_ieee_setapp._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @qed_dcbnl_ieee_setapp._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 2315, i32 3}
!163 = !{ptr @qed_dcbnl_ieee_setapp._entry.76, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @qed_dcbnl_ieee_setapp._entry_ptr.78, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @qed_dcbnl_ieee_setapp._entry.79, !166, !"_entry", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 2320, i32 3}
!167 = !{ptr @qed_dcbnl_ieee_setapp._entry_ptr.80, !166, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @qed_dcbnl_ieee_setapp._entry.81, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 2330, i32 3}
!170 = !{ptr @qed_dcbnl_ieee_setapp._entry_ptr.82, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.84, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 2355, i32 3}
!173 = !{ptr @qed_dcbnl_ieee_setapp._entry.83, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @qed_dcbnl_ieee_setapp._entry_ptr.85, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1316, i32 2}
!177 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @qed_dcbnl_getstate._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @qed_dcbnl_getstate._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.88, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1329, i32 2}
!182 = !{ptr @qed_dcbnl_setstate._entry, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @qed_dcbnl_setstate._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1355, i32 2}
!186 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @qed_dcbnl_getpgtccfgtx._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @qed_dcbnl_getpgtccfgtx._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.92, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1358, i32 3}
!191 = !{ptr @qed_dcbnl_getpgtccfgtx._entry.91, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @qed_dcbnl_getpgtccfgtx._entry_ptr.93, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1376, i32 2}
!195 = !{ptr @.str.95, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @qed_dcbnl_getpgbwgcfgtx._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @qed_dcbnl_getpgbwgcfgtx._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.97, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1378, i32 3}
!200 = !{ptr @qed_dcbnl_getpgbwgcfgtx._entry.96, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @qed_dcbnl_getpgbwgcfgtx._entry_ptr.98, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1387, i32 2}
!204 = !{ptr @qed_dcbnl_getpgbwgcfgtx._entry.99, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @qed_dcbnl_getpgbwgcfgtx._entry_ptr.101, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1394, i32 2}
!208 = !{ptr @.str.103, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @qed_dcbnl_getpgtccfgrx._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @qed_dcbnl_getpgtccfgrx._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.104, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1401, i32 2}
!213 = !{ptr @qed_dcbnl_getpgbwgcfgrx._entry, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @qed_dcbnl_getpgbwgcfgrx._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.105, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1411, i32 2}
!217 = !{ptr @.str.106, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @qed_dcbnl_getpfccfg._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @qed_dcbnl_getpfccfg._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @qed_dcbnl_getpfccfg._entry.107, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1413, i32 3}
!222 = !{ptr @qed_dcbnl_getpfccfg._entry_ptr.108, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.110, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1422, i32 2}
!225 = !{ptr @qed_dcbnl_getpfccfg._entry.109, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @qed_dcbnl_getpfccfg._entry_ptr.111, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.112, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1433, i32 2}
!229 = !{ptr @.str.113, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @qed_dcbnl_setpfccfg._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @qed_dcbnl_setpfccfg._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @qed_dcbnl_setpfccfg._entry.114, !233, !"_entry", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1436, i32 3}
!234 = !{ptr @qed_dcbnl_setpfccfg._entry_ptr.115, !233, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.116, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1463, i32 2}
!237 = !{ptr @.str.117, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @qed_dcbnl_getcap._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @qed_dcbnl_getcap._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.119, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1488, i32 2}
!242 = !{ptr @qed_dcbnl_getcap._entry.118, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @qed_dcbnl_getcap._entry_ptr.120, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.121, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1500, i32 2}
!246 = !{ptr @.str.122, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @qed_dcbnl_getnumtcs._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @qed_dcbnl_getnumtcs._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.124, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1517, i32 2}
!251 = !{ptr @qed_dcbnl_getnumtcs._entry.123, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @qed_dcbnl_getnumtcs._entry_ptr.125, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.126, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1533, i32 2}
!255 = !{ptr @.str.127, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @qed_dcbnl_getpfcstate._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @qed_dcbnl_getpfcstate._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.128, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1748, i32 3}
!260 = !{ptr @qed_dcbnl_getapp._entry, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @qed_dcbnl_getapp._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.129, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1858, i32 2}
!264 = !{ptr @.str.130, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @qed_dcbnl_getfeatcfg._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @qed_dcbnl_getfeatcfg._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.132, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1884, i32 3}
!269 = !{ptr @qed_dcbnl_getfeatcfg._entry.131, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @qed_dcbnl_getfeatcfg._entry_ptr.133, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.135, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1889, i32 2}
!273 = !{ptr @qed_dcbnl_getfeatcfg._entry.134, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @qed_dcbnl_getfeatcfg._entry_ptr.136, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.137, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1556, i32 2}
!277 = !{ptr @.str.138, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @qed_dcbnl_getdcbx._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @qed_dcbnl_getdcbx._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.139, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1571, i32 2}
!282 = !{ptr @.str.140, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @qed_dcbnl_setpgtccfgtx._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @qed_dcbnl_setpgtccfgtx._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @qed_dcbnl_setpgtccfgtx._entry.141, !286, !"_entry", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1576, i32 3}
!287 = !{ptr @qed_dcbnl_setpgtccfgtx._entry_ptr.142, !286, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.143, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1600, i32 2}
!290 = !{ptr @qed_dcbnl_setpgtccfgrx._entry, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @qed_dcbnl_setpgtccfgrx._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.144, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1610, i32 2}
!294 = !{ptr @.str.145, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @qed_dcbnl_setpgbwgcfgtx._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @qed_dcbnl_setpgbwgcfgtx._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @qed_dcbnl_setpgbwgcfgtx._entry.146, !298, !"_entry", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1612, i32 3}
!299 = !{ptr @qed_dcbnl_setpgbwgcfgtx._entry_ptr.147, !298, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.148, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1635, i32 2}
!302 = !{ptr @qed_dcbnl_setpgbwgcfgrx._entry, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @qed_dcbnl_setpgbwgcfgrx._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.149, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1668, i32 2}
!306 = !{ptr @.str.150, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @qed_dcbnl_setnumtcs._entry, !305, !"_entry", i1 false, i1 false}
!308 = !{ptr @qed_dcbnl_setnumtcs._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.152, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1684, i32 3}
!311 = !{ptr @qed_dcbnl_setnumtcs._entry.151, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @qed_dcbnl_setnumtcs._entry_ptr.153, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.154, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1706, i32 2}
!315 = !{ptr @.str.155, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @qed_dcbnl_setpfcstate._entry, !314, !"_entry", i1 false, i1 false}
!317 = !{ptr @qed_dcbnl_setpfcstate._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.156, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1786, i32 3}
!320 = !{ptr @qed_dcbnl_setapp._entry, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @qed_dcbnl_setapp._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.157, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1813, i32 2}
!324 = !{ptr @.str.158, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @qed_dcbnl_setdcbx._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @qed_dcbnl_setdcbx._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.160, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1817, i32 3}
!329 = !{ptr @qed_dcbnl_setdcbx._entry.159, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @qed_dcbnl_setdcbx._entry_ptr.161, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.162, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1903, i32 2}
!333 = !{ptr @.str.163, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @qed_dcbnl_setfeatcfg._entry, !332, !"_entry", i1 false, i1 false}
!335 = !{ptr @qed_dcbnl_setfeatcfg._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @qed_dcbnl_setfeatcfg._entry.164, !337, !"_entry", i1 false, i1 false}
!337 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 1928, i32 3}
!338 = !{ptr @qed_dcbnl_setfeatcfg._entry_ptr.165, !337, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.166, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 2003, i32 2}
!341 = !{ptr @.str.167, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @qed_dcbnl_cee_peer_getpfc._entry, !340, !"_entry", i1 false, i1 false}
!343 = !{ptr @qed_dcbnl_cee_peer_getpfc._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.168, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/ethernet/qlogic/qed/qed_dcbx.c", i32 2026, i32 2}
!346 = !{ptr @.str.169, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @qed_dcbnl_cee_peer_getpg._entry, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @qed_dcbnl_cee_peer_getpg._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!349 = !{i32 1, !"wchar_size", i32 2}
!350 = !{i32 1, !"min_enum_size", i32 4}
!351 = !{i32 8, !"branch-target-enforcement", i32 0}
!352 = !{i32 8, !"sign-return-address", i32 0}
!353 = !{i32 8, !"sign-return-address-all", i32 0}
!354 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!355 = !{i32 7, !"uwtable", i32 1}
!356 = !{i32 7, !"frame-pointer", i32 2}
!357 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!358 = !{!"auto-init"}
!359 = !{!"branch_weights", i32 2000, i32 1}
!360 = !{i32 0, i32 33}
!361 = !{i8 0, i8 2}
!362 = !{!"branch_weights", i32 1, i32 2000}
!363 = !{i8 0, i8 9}
