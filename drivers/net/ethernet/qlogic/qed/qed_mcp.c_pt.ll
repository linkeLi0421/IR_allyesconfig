; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_mcp.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_mcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.qed_mcp_info = type { %struct.list_head, %struct.spinlock, i8, %struct.spinlock, i32, i32, i32, i32, i16, i16, %struct.qed_mcp_link_params, %struct.qed_mcp_link_state, %struct.qed_mcp_link_capabilities, %struct.qed_mcp_function_info, ptr, ptr, i16, i32, i32, %struct.atomic_t }
%struct.qed_mcp_link_params = type { %struct.qed_mcp_link_speed_params, %struct.qed_mcp_link_pause_params, i32, %struct.qed_link_eee_params, i32, %struct.qed_mcp_link_speed_params, i32 }
%struct.qed_mcp_link_pause_params = type { i8, i8, i8 }
%struct.qed_link_eee_params = type { i32, i8, i8, i8, i8 }
%struct.qed_mcp_link_speed_params = type { i8, i32, i32 }
%struct.qed_mcp_link_state = type { i8, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.qed_mcp_link_capabilities = type { i32, i8, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.qed_mcp_function_info = type { i8, i32, i8, i8, [6 x i8], i64, i64, i16, i16 }
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
%struct.qed_mcp_mb_params = type { i32, i32, ptr, ptr, i8, i8, i32, i32, i32 }
%union.drv_union_data = type { %struct.iscsi_stats_stc }
%struct.iscsi_stats_stc = type { i64, i64, i64, i64 }
%struct.qed_mcp_cmd_elem = type { %struct.list_head, ptr, i16, i8 }
%struct.qed_load_req_out_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.qed_load_req_in_params = type { i8, i32, i32, i32, i8, i8, i8, i8 }
%struct.qed_load_req_params = type { i32, i8, i8, i32, i32 }
%struct.load_req_stc = type { i32, i32, i32, i32 }
%struct.load_rsp_stc = type { i32, i32, i32, i32 }
%struct.mcp_mac = type { i32, i32 }
%struct.eth_phy_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.public_func = type { i32, i32, i32, i32, i32, i32, %struct.generic_idc_msg_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, %struct.drv_version_stc }
%struct.generic_idc_msg_s = type { i32, %struct.mcp_val64 }
%struct.mcp_val64 = type { i32, i32 }
%struct.drv_version_stc = type { i32, [12 x i8] }
%struct.qed_mdump_cmd_params = type { i32, ptr, i8, ptr, i8, i32 }
%struct.mdump_retain_data_stc = type { i32, i32, i32, i32 }
%union.qed_mcp_protocol_stats = type { %struct.qed_mcp_iscsi_stats }
%struct.qed_mcp_iscsi_stats = type { i64, i64, i64, i64 }
%struct.qed_vf_iov = type { ptr, i32, ptr, i32, %struct.mutex, ptr, %struct.qed_bulletin, %struct.qed_bulletin_content, %struct.pfvf_acquire_resp_tlv, i8, [16 x ptr], i8 }
%struct.qed_bulletin = type { i32, ptr, i32 }
%struct.qed_bulletin_content = type { i32, i32, i64, [6 x i8], i8, i8, i8, i8, i8, i8, [4 x i8], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, [2 x i8], i32, i32, i32, i16, i16 }
%struct.pfvf_acquire_resp_tlv = type { %struct.pfvf_tlv, %struct.pf_vf_pfdev_info, %struct.pf_vf_resc, i32, i32 }
%struct.pfvf_tlv = type { %struct.channel_tlv, i8, [3 x i8] }
%struct.channel_tlv = type { i16, i16 }
%struct.pf_vf_pfdev_info = type { i32, i32, i16, i16, i16, i16, i64, i16, i8, i8, i16, i8, i8, %struct.pfvf_stats_info, [6 x i8], i8, i8 }
%struct.pfvf_stats_info = type { %struct.pfvf_storm_stats, %struct.pfvf_storm_stats, %struct.pfvf_storm_stats, %struct.pfvf_storm_stats }
%struct.pfvf_storm_stats = type { i32, i32 }
%struct.pf_vf_resc = type { [16 x %struct.hw_sb_info], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hw_sb_info = type { i16, i8, [5 x i8] }
%struct.bist_nvm_image_att = type { i32, i32, i32, i32 }
%struct.qed_nvm_image_att = type { i32, i32 }
%struct.qed_resc_alloc_out_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_resc_alloc_in_params = type { i32, i32, i32 }
%struct.resource_info = type { i32, i32, i32, i32, i32, i32 }
%struct.qed_resc_lock_params = type { i8, i8, i8, i16, i8, i8, i8 }
%struct.qed_resc_unlock_params = type { i8, i8, i8 }

@qed_mcp_cmd_port_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]port_addr = 0x%x, port_id 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_mcp_cmd_port_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/qlogic/qed/qed_mcp.c\00", [54 x i8] zeroinitializer }, align 32
@qed_mcp_cmd_port_init._entry_ptr = internal global ptr @qed_mcp_cmd_port_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_mcp_cmd_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&p_info->cmd_lock\00", [46 x i8] zeroinitializer }, align 32
@qed_mcp_cmd_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&p_info->link_lock\00", [45 x i8] zeroinitializer }, align 32
@qed_mcp_cmd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]MCP is not initialized\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qed_mcp_cmd_init\00", [47 x i8] zeroinitializer }, align 32
@qed_mcp_cmd_init._entry_ptr = internal global ptr @qed_mcp_cmd_init._entry, section ".printk_index", align 4
@qed_mcp_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\015[%s:%d(%s)]The MFW is not responsive. Avoid sending MCP_RESET mailbox command.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qed_mcp_reset\00", [18 x i8] zeroinitializer }, align 32
@qed_mcp_reset._entry_ptr = internal global ptr @qed_mcp_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@qed_mcp_reset._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]MCP was reset after %d usec\0A\00", [54 x i8] zeroinitializer }, align 32
@qed_mcp_reset._entry_ptr.13 = internal global ptr @qed_mcp_reset._entry.11, section ".printk_index", align 4
@qed_mcp_reset._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013[%s:%d(%s)]Failed to reset MCP\0A\00", [62 x i8] zeroinitializer }, align 32
@qed_mcp_reset._entry_ptr.16 = internal global ptr @qed_mcp_reset._entry.14, section ".printk_index", align 4
@qed_mcp_load_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\015[%s:%d(%s)]MFW refused a load request due to HSI > 1. Resending with HSI = 1\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qed_mcp_load_req\00", [47 x i8] zeroinitializer }, align 32
@qed_mcp_load_req._entry_ptr = internal global ptr @qed_mcp_load_req._entry, section ".printk_index", align 4
@qed_mcp_load_req._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [139 x i8], [53 x i8] } { [139 x i8] c"\015[%s:%d(%s)]A force load is required [{role, fw_ver, drv_ver}: loading={%d, 0x%08x, x%08x_0x%08x}, existing={%d, 0x%08x, 0x%08x_0x%08x}]\0A\00", [53 x i8] zeroinitializer }, align 32
@qed_mcp_load_req._entry_ptr.21 = internal global ptr @qed_mcp_load_req._entry.19, section ".printk_index", align 4
@qed_mcp_load_req._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [147 x i8], [45 x i8] } { [147 x i8] c"\015[%s:%d(%s)]A force load is required [{role, fw_ver, drv_ver}: loading={%d, 0x%08x, x%08x_0x%08x}, existing={%d, 0x%08x, 0x%08x_0x%08x}] - Avoid\0A\00", [45 x i8] zeroinitializer }, align 32
@qed_mcp_load_req._entry_ptr.24 = internal global ptr @qed_mcp_load_req._entry.22, section ".printk_index", align 4
@qed_mcp_load_req._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\015[%s:%d(%s)]Avoid sending a force load request to prevent disruption of active PFs\0A\00", [43 x i8] zeroinitializer }, align 32
@qed_mcp_load_req._entry_ptr.27 = internal global ptr @qed_mcp_load_req._entry.25, section ".printk_index", align 4
@qed_mcp_load_req._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.2, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]PF is already loaded\0A\00", [61 x i8] zeroinitializer }, align 32
@qed_mcp_load_req._entry_ptr.30 = internal global ptr @qed_mcp_load_req._entry.28, section ".printk_index", align 4
@qed_mcp_load_req._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.2, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\015[%s:%d(%s)]Unexpected refusal to load request [resp 0x%08x]. Aborting.\0A\00", [54 x i8] zeroinitializer }, align 32
@qed_mcp_load_req._entry_ptr.33 = internal global ptr @qed_mcp_load_req._entry.31, section ".printk_index", align 4
@qed_mcp_load_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 1062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015[%s:%d(%s)]Failed to send a LOAD_DONE command, rc = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_mcp_load_done\00", [46 x i8] zeroinitializer }, align 32
@qed_mcp_load_done._entry_ptr = internal global ptr @qed_mcp_load_done._entry, section ".printk_index", align 4
@qed_mcp_load_done._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 1069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"\015[%s:%d(%s)]warning: device configuration is not supported on this board type. The device may not function as expected.\0A\00", [38 x i8] zeroinitializer }, align 32
@qed_mcp_load_done._entry_ptr.38 = internal global ptr @qed_mcp_load_done._entry.36, section ".printk_index", align 4
@qed_mcp_unload_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]Unknown WoL configuration %02x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_mcp_unload_req\00", [45 x i8] zeroinitializer }, align 32
@qed_mcp_unload_req._entry_ptr = internal global ptr @qed_mcp_unload_req._entry, section ".printk_index", align 4
@qed_mcp_unload_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]Setting WoL MAC: %pM --> [%08x,%08x]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_mcp_unload_done\00", [44 x i8] zeroinitializer }, align 32
@qed_mcp_unload_done._entry_ptr = internal global ptr @qed_mcp_unload_done._entry, section ".printk_index", align 4
@qed_mcp_ack_vf_flr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]Acking VFs [%08x,...,%08x] - %08x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_mcp_ack_vf_flr\00", [45 x i8] zeroinitializer }, align 32
@qed_mcp_ack_vf_flr._entry_ptr = internal global ptr @qed_mcp_ack_vf_flr._entry, section ".printk_index", align 4
@qed_mcp_ack_vf_flr._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 1186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]Failed to pass ACK for VF flr to MFW\0A\00", [45 x i8] zeroinitializer }, align 32
@qed_mcp_ack_vf_flr._entry_ptr.47 = internal global ptr @qed_mcp_ack_vf_flr._entry.45, section ".printk_index", align 4
@qed_mcp_set_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"\015[%s:%d(%s)]Configuring Link: Speed 0x%08x, Pause 0x%08x, Adv. Speed 0x%08x, Loopback 0x%08x, FEC 0x%08x, Ext. Speed 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qed_mcp_set_link\00", [47 x i8] zeroinitializer }, align 32
@qed_mcp_set_link._entry_ptr = internal global ptr @qed_mcp_set_link._entry, section ".printk_index", align 4
@qed_mcp_set_link._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 1594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015[%s:%d(%s)]Resetting link\0A\00", [35 x i8] zeroinitializer }, align 32
@qed_mcp_set_link._entry_ptr.52 = internal global ptr @qed_mcp_set_link._entry.50, section ".printk_index", align 4
@qed_mcp_set_link._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.2, i32 1605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013[%s:%d(%s)]MCP response failure, aborting\0A\00", [51 x i8] zeroinitializer }, align 32
@qed_mcp_set_link._entry_ptr.55 = internal global ptr @qed_mcp_set_link._entry.53, section ".printk_index", align 4
@qed_mcp_mdump_get_retain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 1858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\015[%s:%d(%s)]Failed to get the mdump retained data [mcp_resp 0x%x]\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_mcp_mdump_get_retain\00", [39 x i8] zeroinitializer }, align 32
@qed_mcp_mdump_get_retain._entry_ptr = internal global ptr @qed_mcp_mdump_get_retain._entry, section ".printk_index", align 4
@qed_mcp_read_ufp_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 1910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015[%s:%d(%s)]Incorrect UFP Channel type  %d port_id 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_mcp_read_ufp_config\00", [40 x i8] zeroinitializer }, align 32
@qed_mcp_read_ufp_config._entry_ptr = internal global ptr @qed_mcp_read_ufp_config._entry, section ".printk_index", align 4
@qed_mcp_read_ufp_config._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 1921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015[%s:%d(%s)]Unknown UFP scheduling mode %d port_id 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@qed_mcp_read_ufp_config._entry_ptr.62 = internal global ptr @qed_mcp_read_ufp_config._entry.60, section ".printk_index", align 4
@qed_mcp_read_ufp_config._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.2, i32 1938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\015[%s:%d(%s)]Unknown Host priority control %d port_id 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@qed_mcp_read_ufp_config._entry_ptr.65 = internal global ptr @qed_mcp_read_ufp_config._entry.63, section ".printk_index", align 4
@qed_mcp_read_ufp_config._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.2, i32 1944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\015[%s:%d(%s)]UFP shmem config: mode = %d tc = %d pri_type = %d port_id 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@qed_mcp_read_ufp_config._entry_ptr.68 = internal global ptr @qed_mcp_read_ufp_config._entry.66, section ".printk_index", align 4
@qed_mcp_handle_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 1984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]Received message from MFW\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_mcp_handle_events\00", [42 x i8] zeroinitializer }, align 32
@qed_mcp_handle_events._entry_ptr = internal global ptr @qed_mcp_handle_events._entry, section ".printk_index", align 4
@qed_mcp_handle_events._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 1998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015[%s:%d(%s)]Msg [%d] - old CMD 0x%02x, new CMD 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@qed_mcp_handle_events._entry_ptr.73 = internal global ptr @qed_mcp_handle_events._entry.71, section ".printk_index", align 4
@qed_mcp_handle_events._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.2, i32 2050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]Unimplemented MFW message %d\0A\00", [53 x i8] zeroinitializer }, align 32
@qed_mcp_handle_events._entry_ptr.76 = internal global ptr @qed_mcp_handle_events._entry.74, section ".printk_index", align 4
@qed_mcp_handle_events._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.70, ptr @.str.2, i32 2069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\015[%s:%d(%s)]Received an MFW message indication but no new message!\0A\00", [59 x i8] zeroinitializer }, align 32
@qed_mcp_handle_events._entry_ptr.79 = internal global ptr @qed_mcp_handle_events._entry.77, section ".printk_index", align 4
@qed_mcp_get_mfw_ver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 2095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015[%s:%d(%s)]VF requested MFW version prior to ACQUIRE\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_mcp_get_mfw_ver\00", [44 x i8] zeroinitializer }, align 32
@qed_mcp_get_mfw_ver._entry_ptr = internal global ptr @qed_mcp_get_mfw_ver._entry, section ".printk_index", align 4
@qed_mcp_get_mbi_ver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 2130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]Shared memory not initialized\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_mcp_get_mbi_ver\00", [44 x i8] zeroinitializer }, align 32
@qed_mcp_get_mbi_ver._entry_ptr = internal global ptr @qed_mcp_get_mbi_ver._entry, section ".printk_index", align 4
@qed_mcp_get_media_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 2158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]MFW is not initialized!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_mcp_get_media_type\00", [41 x i8] zeroinitializer }, align 32
@qed_mcp_get_media_type._entry_ptr = internal global ptr @qed_mcp_get_media_type._entry, section ".printk_index", align 4
@qed_mcp_get_transceiver_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.86, ptr @.str.2, i32 2189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qed_mcp_get_transceiver_data\00", [35 x i8] zeroinitializer }, align 32
@qed_mcp_get_transceiver_data._entry_ptr = internal global ptr @qed_mcp_get_transceiver_data._entry, section ".printk_index", align 4
@qed_mcp_trans_speed_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 2329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]Unknown transceiver type 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_mcp_trans_speed_mask\00", [39 x i8] zeroinitializer }, align 32
@qed_mcp_trans_speed_mask._entry_ptr = internal global ptr @qed_mcp_trans_speed_mask._entry, section ".printk_index", align 4
@qed_mcp_get_board_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.89, ptr @.str.2, i32 2346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_mcp_get_board_config\00", [39 x i8] zeroinitializer }, align 32
@qed_mcp_get_board_config._entry_ptr = internal global ptr @qed_mcp_get_board_config._entry, section ".printk_index", align 4
@qed_mcp_fill_shmem_func_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 2476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013[%s:%d(%s)]Unknown personality %08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qed_mcp_fill_shmem_func_info\00", [35 x i8] zeroinitializer }, align 32
@qed_mcp_fill_shmem_func_info._entry_ptr = internal global ptr @qed_mcp_fill_shmem_func_info._entry, section ".printk_index", align 4
@qed_mcp_fill_shmem_func_info._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 2493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015[%s:%d(%s)]MAC is 0 in shmem\0A\00", [32 x i8] zeroinitializer }, align 32
@qed_mcp_fill_shmem_func_info._entry_ptr.94 = internal global ptr @qed_mcp_fill_shmem_func_info._entry.92, section ".printk_index", align 4
@qed_mcp_fill_shmem_func_info._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.91, ptr @.str.2, i32 2525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [147 x i8], [45 x i8] } { [147 x i8] c"\015[%s:%d(%s)]Read configuration from shmem: pause_on_host %02x protocol %02x BW [%02x - %02x] MAC %pM wwn port %llx node %llx ovlan %04x wol %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@qed_mcp_fill_shmem_func_info._entry_ptr.97 = internal global ptr @qed_mcp_fill_shmem_func_info._entry.95, section ".printk_index", align 4
@qed_start_recovery_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 2592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\015[%s:%d(%s)]Avoid triggering a recovery since such a process is already in progress\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qed_start_recovery_process\00", [37 x i8] zeroinitializer }, align 32
@qed_start_recovery_process._entry_ptr = internal global ptr @qed_start_recovery_process._entry, section ".printk_index", align 4
@qed_start_recovery_process._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.2, i32 2596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]Triggering a recovery process\0A\00", [52 x i8] zeroinitializer }, align 32
@qed_start_recovery_process._entry_ptr.102 = internal global ptr @qed_start_recovery_process._entry.100, section ".printk_index", align 4
@qed_recovery_prolog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 2618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015[%s:%d(%s)]qed_pglueb_set_pfid_enable() failed. rc = %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_recovery_prolog\00", [44 x i8] zeroinitializer }, align 32
@qed_recovery_prolog._entry_ptr = internal global ptr @qed_recovery_prolog._entry, section ".printk_index", align 4
@qed_mcp_send_drv_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.105, ptr @.str.2, i32 2709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_mcp_send_drv_version\00", [39 x i8] zeroinitializer }, align 32
@qed_mcp_send_drv_version._entry_ptr = internal global ptr @qed_mcp_send_drv_version._entry, section ".printk_index", align 4
@qed_mcp_halt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.106, ptr @.str.2, i32 2726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qed_mcp_halt\00", [19 x i8] zeroinitializer }, align 32
@qed_mcp_halt._entry_ptr = internal global ptr @qed_mcp_halt._entry, section ".printk_index", align 4
@qed_mcp_halt._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.2, i32 2740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\015[%s:%d(%s)]Failed to halt the MCP [CPU_MODE = 0x%08x, CPU_STATE = 0x%08x]\0A\00", [51 x i8] zeroinitializer }, align 32
@qed_mcp_halt._entry_ptr.109 = internal global ptr @qed_mcp_halt._entry.107, section ".printk_index", align 4
@qed_mcp_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 2766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\015[%s:%d(%s)]Failed to resume the MCP [CPU_MODE = 0x%08x, CPU_STATE = 0x%08x]\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qed_mcp_resume\00", [17 x i8] zeroinitializer }, align 32
@qed_mcp_resume._entry_ptr = internal global ptr @qed_mcp_resume._entry, section ".printk_index", align 4
@qed_mcp_ov_update_current_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 2794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]Invalid client type %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qed_mcp_ov_update_current_config\00", [63 x i8] zeroinitializer }, align 32
@qed_mcp_ov_update_current_config._entry_ptr = internal global ptr @qed_mcp_ov_update_current_config._entry, section ".printk_index", align 4
@qed_mcp_ov_update_current_config._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.113, ptr @.str.2, i32 2801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qed_mcp_ov_update_current_config._entry_ptr.115 = internal global ptr @qed_mcp_ov_update_current_config._entry.114, section ".printk_index", align 4
@qed_mcp_ov_update_driver_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 2825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]Invalid driver state %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qed_mcp_ov_update_driver_state\00", [33 x i8] zeroinitializer }, align 32
@qed_mcp_ov_update_driver_state._entry_ptr = internal global ptr @qed_mcp_ov_update_driver_state._entry, section ".printk_index", align 4
@qed_mcp_ov_update_driver_state._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.2, i32 2832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013[%s:%d(%s)]Failed to send driver state\0A\00", [54 x i8] zeroinitializer }, align 32
@qed_mcp_ov_update_driver_state._entry_ptr.120 = internal global ptr @qed_mcp_ov_update_driver_state._entry.118, section ".printk_index", align 4
@qed_mcp_ov_update_mtu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 2848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013[%s:%d(%s)]Failed to send mtu value, rc = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_mcp_ov_update_mtu\00", [42 x i8] zeroinitializer }, align 32
@qed_mcp_ov_update_mtu._entry_ptr = internal global ptr @qed_mcp_ov_update_mtu._entry, section ".printk_index", align 4
@qed_mcp_ov_update_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 2878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013[%s:%d(%s)]Failed to send mac address, rc = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_mcp_ov_update_mac\00", [42 x i8] zeroinitializer }, align 32
@qed_mcp_ov_update_mac._entry_ptr = internal global ptr @qed_mcp_ov_update_mac._entry, section ".printk_index", align 4
@qed_mcp_ov_update_wol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 2895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015[%s:%d(%s)]Can't change WoL configuration when WoL isn't supported\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_mcp_ov_update_wol\00", [42 x i8] zeroinitializer }, align 32
@qed_mcp_ov_update_wol._entry_ptr = internal global ptr @qed_mcp_ov_update_wol._entry, section ".printk_index", align 4
@qed_mcp_ov_update_wol._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.2, i32 2910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013[%s:%d(%s)]Invalid wol state %d\0A\00", [61 x i8] zeroinitializer }, align 32
@qed_mcp_ov_update_wol._entry_ptr.129 = internal global ptr @qed_mcp_ov_update_wol._entry.127, section ".printk_index", align 4
@qed_mcp_ov_update_wol._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.126, ptr @.str.2, i32 2917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013[%s:%d(%s)]Failed to send wol mode, rc = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@qed_mcp_ov_update_wol._entry_ptr.132 = internal global ptr @qed_mcp_ov_update_wol._entry.130, section ".printk_index", align 4
@qed_mcp_ov_update_eswitch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 2944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[%s:%d(%s)]Invalid eswitch mode %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qed_mcp_ov_update_eswitch\00", [38 x i8] zeroinitializer }, align 32
@qed_mcp_ov_update_eswitch._entry_ptr = internal global ptr @qed_mcp_ov_update_eswitch._entry, section ".printk_index", align 4
@qed_mcp_ov_update_eswitch._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.2, i32 2951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013[%s:%d(%s)]Failed to send eswitch mode, rc = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@qed_mcp_ov_update_eswitch._entry_ptr.137 = internal global ptr @qed_mcp_ov_update_eswitch._entry.135, section ".printk_index", align 4
@qed_mcp_set_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 2973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015[%s:%d(%s)]Invalid LED mode %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_mcp_set_led\00", [16 x i8] zeroinitializer }, align 32
@qed_mcp_set_led._entry_ptr = internal global ptr @qed_mcp_set_led._entry, section ".printk_index", align 4
@qed_mcp_mask_parities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.2, i32 2994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013[%s:%d(%s)]MCP response failure for mask parities, aborting\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_mcp_mask_parities\00", [42 x i8] zeroinitializer }, align 32
@qed_mcp_mask_parities._entry_ptr = internal global ptr @qed_mcp_mask_parities._entry, section ".printk_index", align 4
@qed_mcp_mask_parities._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.141, ptr @.str.2, i32 2997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013[%s:%d(%s)]MCP did not acknowledge mask parity request. Old MFW?\0A\00", [60 x i8] zeroinitializer }, align 32
@qed_mcp_mask_parities._entry_ptr.144 = internal global ptr @qed_mcp_mask_parities._entry.142, section ".printk_index", align 4
@qed_mcp_nvm_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.2, i32 3029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015[%s:%d(%s)]MCP command rc = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qed_mcp_nvm_read\00", [47 x i8] zeroinitializer }, align 32
@qed_mcp_nvm_read._entry_ptr = internal global ptr @qed_mcp_nvm_read._entry, section ".printk_index", align 4
@qed_mcp_nvm_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 3088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]Invalid nvm write command 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_mcp_nvm_write\00", [46 x i8] zeroinitializer }, align 32
@qed_mcp_nvm_write._entry_ptr = internal global ptr @qed_mcp_nvm_write._entry, section ".printk_index", align 4
@qed_mcp_nvm_write._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.2, i32 3105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]nvm write failed, rc = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@qed_mcp_nvm_write._entry_ptr.151 = internal global ptr @qed_mcp_nvm_write._entry.149, section ".printk_index", align 4
@qed_mcp_nvm_write._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.148, ptr @.str.2, i32 3114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]nvm write failed, resp = 0x%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@qed_mcp_nvm_write._entry_ptr.154 = internal global ptr @qed_mcp_nvm_write._entry.152, section ".printk_index", align 4
@qed_mcp_phy_sfp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.2, i32 3182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\015[%s:%d(%s)]Failed to send a transceiver read command to the MFW. rc = %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_mcp_phy_sfp_read\00", [43 x i8] zeroinitializer }, align 32
@qed_mcp_phy_sfp_read._entry_ptr = internal global ptr @qed_mcp_phy_sfp_read._entry, section ".printk_index", align 4
@qed_mcp_nvm_info_populate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.2, i32 3300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013[%s:%d(%s)]failed to acquire ptt\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qed_mcp_nvm_info_populate\00", [38 x i8] zeroinitializer }, align 32
@qed_mcp_nvm_info_populate._entry_ptr = internal global ptr @qed_mcp_nvm_info_populate._entry, section ".printk_index", align 4
@qed_mcp_nvm_info_populate._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.158, ptr @.str.2, i32 3309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015[%s:%d(%s)]DRV_MSG_CODE_BIST_TEST is not supported\0A\00", [42 x i8] zeroinitializer }, align 32
@qed_mcp_nvm_info_populate._entry_ptr.161 = internal global ptr @qed_mcp_nvm_info_populate._entry.159, section ".printk_index", align 4
@qed_mcp_nvm_info_populate._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.158, ptr @.str.2, i32 3312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013[%s:%d(%s)]Failed getting number of images\0A\00", [50 x i8] zeroinitializer }, align 32
@qed_mcp_nvm_info_populate._entry_ptr.164 = internal global ptr @qed_mcp_nvm_info_populate._entry.162, section ".printk_index", align 4
@qed_mcp_nvm_info_populate._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.158, ptr @.str.2, i32 3330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013[%s:%d(%s)]Failed getting image index %d attributes\0A\00", [41 x i8] zeroinitializer }, align 32
@qed_mcp_nvm_info_populate._entry_ptr.167 = internal global ptr @qed_mcp_nvm_info_populate._entry.165, section ".printk_index", align 4
@qed_mcp_nvm_info_populate._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.158, ptr @.str.2, i32 3335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]image index %d, size %x\0A\00", [58 x i8] zeroinitializer }, align 32
@qed_mcp_nvm_info_populate._entry_ptr.170 = internal global ptr @qed_mcp_nvm_info_populate._entry.168, section ".printk_index", align 4
@qed_mcp_get_nvm_image_att._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.2, i32 3394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]Unknown request of image_id %08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qed_mcp_get_nvm_image_att\00", [38 x i8] zeroinitializer }, align 32
@qed_mcp_get_nvm_image_att._entry_ptr = internal global ptr @qed_mcp_get_nvm_image_att._entry, section ".printk_index", align 4
@qed_mcp_get_nvm_image_att._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.172, ptr @.str.2, i32 3408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015[%s:%d(%s)]Failed to find nvram image of type %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@qed_mcp_get_nvm_image_att._entry_ptr.175 = internal global ptr @qed_mcp_get_nvm_image_att._entry.173, section ".printk_index", align 4
@qed_mcp_get_nvm_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.2, i32 3435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015[%s:%d(%s)]Image [%d] is too small - only %d bytes\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_mcp_get_nvm_image\00", [42 x i8] zeroinitializer }, align 32
@qed_mcp_get_nvm_image._entry_ptr = internal global ptr @qed_mcp_get_nvm_image._entry, section ".printk_index", align 4
@qed_mcp_get_nvm_image._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.177, ptr @.str.2, i32 3443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\015[%s:%d(%s)]Image [%d] is too big - %08x bytes where only %08x are available\0A\00", [49 x i8] zeroinitializer }, align 32
@qed_mcp_get_nvm_image._entry_ptr.180 = internal global ptr @qed_mcp_get_nvm_image._entry.178, section ".printk_index", align 4
@qed_mcp_resc_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.2, i32 3812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\015[%s:%d(%s)]Resource unlock request: param 0x%08x [opcode %d, resource %d]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_mcp_resc_unlock\00", [44 x i8] zeroinitializer }, align 32
@qed_mcp_resc_unlock._entry_ptr = internal global ptr @qed_mcp_resc_unlock._entry, section ".printk_index", align 4
@qed_mcp_resc_unlock._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.182, ptr @.str.2, i32 3824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\015[%s:%d(%s)]Resource unlock response: mcp_param 0x%08x [opcode %d]\0A\00", [59 x i8] zeroinitializer }, align 32
@qed_mcp_resc_unlock._entry_ptr.185 = internal global ptr @qed_mcp_resc_unlock._entry.183, section ".printk_index", align 4
@qed_mcp_resc_unlock._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.182, ptr @.str.2, i32 3830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\015[%s:%d(%s)]Resource unlock request for an already released resource [%d]\0A\00", [52 x i8] zeroinitializer }, align 32
@qed_mcp_resc_unlock._entry_ptr.188 = internal global ptr @qed_mcp_resc_unlock._entry.186, section ".printk_index", align 4
@qed_mcp_resc_unlock._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.182, ptr @.str.2, i32 3841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\015[%s:%d(%s)]Unexpected opcode in resource unlock response [mcp_param 0x%08x, opcode %d]\0A\00", [38 x i8] zeroinitializer }, align 32
@qed_mcp_resc_unlock._entry_ptr.191 = internal global ptr @qed_mcp_resc_unlock._entry.189, section ".printk_index", align 4
@qed_mcp_get_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.2, i32 3894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]MFW supported features: %08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_mcp_get_capabilities\00", [39 x i8] zeroinitializer }, align 32
@qed_mcp_get_capabilities._entry_ptr = internal global ptr @qed_mcp_get_capabilities._entry, section ".printk_index", align 4
@qed_mcp_get_engine_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.2, i32 3925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015[%s:%d(%s)]The get_engine_config command is unsupported by the MFW\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qed_mcp_get_engine_config\00", [38 x i8] zeroinitializer }, align 32
@qed_mcp_get_engine_config._entry_ptr = internal global ptr @qed_mcp_get_engine_config._entry, section ".printk_index", align 4
@qed_mcp_get_engine_config._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.195, ptr @.str.2, i32 3945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\015[%s:%d(%s)]Engine affinity config: FIR={valid %hhd, value %hhd}, L2_hint={valid %hhd, value %hhd}\0A\00", [59 x i8] zeroinitializer }, align 32
@qed_mcp_get_engine_config._entry_ptr.198 = internal global ptr @qed_mcp_get_engine_config._entry.196, section ".printk_index", align 4
@qed_mcp_get_ppfid_bitmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.200, ptr @.str.2, i32 3963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\015[%s:%d(%s)]The get_ppfid_bitmap command is unsupported by the MFW\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_mcp_get_ppfid_bitmap\00", [39 x i8] zeroinitializer }, align 32
@qed_mcp_get_ppfid_bitmap._entry_ptr = internal global ptr @qed_mcp_get_ppfid_bitmap._entry, section ".printk_index", align 4
@qed_mcp_get_ppfid_bitmap._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.200, ptr @.str.2, i32 3971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015[%s:%d(%s)]PPFID bitmap 0x%hhx\0A\00", [62 x i8] zeroinitializer }, align 32
@qed_mcp_get_ppfid_bitmap._entry_ptr.203 = internal global ptr @qed_mcp_get_ppfid_bitmap._entry.201, section ".printk_index", align 4
@qed_mcp_get_esl_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.205, ptr @.str.2, i32 4175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015[%s:%d(%s)]Failed to send ESL command, rc = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_mcp_get_esl_status\00", [41 x i8] zeroinitializer }, align 32
@qed_mcp_get_esl_status._entry_ptr = internal global ptr @qed_mcp_get_esl_status._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qed_load_mcp_offsets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.207, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\015[%s:%d(%s)]The address of the MCP scratch-pad is not configured\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_load_mcp_offsets\00", [43 x i8] zeroinitializer }, align 32
@qed_load_mcp_offsets._entry_ptr = internal global ptr @qed_load_mcp_offsets._entry, section ".printk_index", align 4
@qed_load_mcp_offsets._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.207, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\015[%s:%d(%s)]Failed to get the SHMEM ready notification after %d msec\0A\00", [57 x i8] zeroinitializer }, align 32
@qed_load_mcp_offsets._entry_ptr.210 = internal global ptr @qed_load_mcp_offsets._entry.208, section ".printk_index", align 4
@qed_load_mcp_offsets._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.207, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\015[%s:%d(%s)]drv_mb_offsiz = 0x%x, drv_mb_addr = 0x%x mcp_pf_id = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@qed_load_mcp_offsets._entry_ptr.213 = internal global ptr @qed_load_mcp_offsets._entry.211, section ".printk_index", align 4
@qed_mcp_reread_offsets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\015[%s:%d(%s)]Rereading MCP offsets [mcp_hist 0x%08x, generic_por_0 0x%08x]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_mcp_reread_offsets\00", [41 x i8] zeroinitializer }, align 32
@qed_mcp_reread_offsets._entry_ptr = internal global ptr @qed_mcp_reread_offsets._entry, section ".printk_index", align 4
@qed_mcp_cmd_and_union._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.216, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_mcp_cmd_and_union\00", [42 x i8] zeroinitializer }, align 32
@qed_mcp_cmd_and_union._entry_ptr = internal global ptr @qed_mcp_cmd_and_union._entry, section ".printk_index", align 4
@qed_mcp_cmd_and_union._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.216, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\015[%s:%d(%s)]The MFW is not responsive. Avoid sending mailbox command 0x%08x [param 0x%08x].\0A\00", [34 x i8] zeroinitializer }, align 32
@qed_mcp_cmd_and_union._entry_ptr.219 = internal global ptr @qed_mcp_cmd_and_union._entry.217, section ".printk_index", align 4
@qed_mcp_cmd_and_union._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.216, ptr @.str.2, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\013[%s:%d(%s)]The provided size is larger than the union data size [src_size %u, dst_size %u, union_data_size %zu]\0A\00", [45 x i8] zeroinitializer }, align 32
@qed_mcp_cmd_and_union._entry_ptr.222 = internal global ptr @qed_mcp_cmd_and_union._entry.220, section ".printk_index", align 4
@_qed_mcp_cmd_and_union._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.224, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\015[%s:%d(%s)]The MFW mailbox is occupied by an uncompleted command. Failed to send command 0x%08x [param 0x%08x].\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_qed_mcp_cmd_and_union\00", [41 x i8] zeroinitializer }, align 32
@_qed_mcp_cmd_and_union._entry_ptr = internal global ptr @_qed_mcp_cmd_and_union._entry, section ".printk_index", align 4
@_qed_mcp_cmd_and_union._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.224, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\015[%s:%d(%s)]The MFW failed to respond to command 0x%08x [param 0x%08x].\0A\00", [54 x i8] zeroinitializer }, align 32
@_qed_mcp_cmd_and_union._entry_ptr.227 = internal global ptr @_qed_mcp_cmd_and_union._entry.225, section ".printk_index", align 4
@_qed_mcp_cmd_and_union._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.224, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\015[%s:%d(%s)]MFW mailbox: response 0x%08x param 0x%08x [after %d.%03d ms]\0A\00", [53 x i8] zeroinitializer }, align 32
@_qed_mcp_cmd_and_union._entry_ptr.230 = internal global ptr @_qed_mcp_cmd_and_union._entry.228, section ".printk_index", align 4
@qed_mcp_update_pending_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.232, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013[%s:%d(%s)]Failed to find a pending mailbox cmd that expects sequence number %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qed_mcp_update_pending_cmd\00", [37 x i8] zeroinitializer }, align 32
@qed_mcp_update_pending_cmd._entry_ptr = internal global ptr @qed_mcp_update_pending_cmd._entry, section ".printk_index", align 4
@__qed_mcp_cmd_and_union._entry = internal constant %struct.pi_entry { ptr @.str.233, ptr @.str.234, ptr @.str.2, i32 428, ptr null, ptr null }, align 1
@.str.233 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015[%s:%d(%s)]MFW mailbox: command 0x%08x param 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__qed_mcp_cmd_and_union\00", [40 x i8] zeroinitializer }, align 32
@__qed_mcp_cmd_and_union._entry_ptr = internal global ptr @__qed_mcp_cmd_and_union._entry, section ".printk_index", align 4
@qed_mcp_print_cpu_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.236, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\015[%s:%d(%s)]MCP CPU info: mode 0x%08x, state 0x%08x, pc {0x%08x, 0x%08x, 0x%08x}\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_mcp_print_cpu_info\00", [41 x i8] zeroinitializer }, align 32
@qed_mcp_print_cpu_info._entry_ptr = internal global ptr @qed_mcp_print_cpu_info._entry, section ".printk_index", align 4
@eocre_get_mfw_drv_role._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.238, ptr @.str.2, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013[%s:%d(%s)]Unexpected driver role %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"eocre_get_mfw_drv_role\00", [41 x i8] zeroinitializer }, align 32
@eocre_get_mfw_drv_role._entry_ptr = internal global ptr @eocre_get_mfw_drv_role._entry, section ".printk_index", align 4
@__qed_mcp_load_req._entry = internal constant %struct.pi_entry { ptr @.str.239, ptr @.str.240, ptr @.str.2, i32 843, ptr null, ptr null }, align 1
@.str.239 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\015[%s:%d(%s)]Load Request: param 0x%08x [init_hw %d, drv_type %d, hsi_ver %d, pda 0x%04x]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__qed_mcp_load_req\00", [45 x i8] zeroinitializer }, align 32
@__qed_mcp_load_req._entry_ptr = internal global ptr @__qed_mcp_load_req._entry, section ".printk_index", align 4
@__qed_mcp_load_req._entry.241 = internal constant %struct.pi_entry { ptr @.str.242, ptr @.str.240, ptr @.str.2, i32 856, ptr null, ptr null }, align 1
@.str.242 = internal constant { [124 x i8], [36 x i8] } { [124 x i8] c"\015[%s:%d(%s)]Load Request: drv_ver 0x%08x_0x%08x, fw_ver 0x%08x, misc0 0x%08x [role %d, timeout %d, force %d, flags0 0x%x]\0A\00", [36 x i8] zeroinitializer }, align 32
@__qed_mcp_load_req._entry_ptr.243 = internal global ptr @__qed_mcp_load_req._entry.241, section ".printk_index", align 4
@__qed_mcp_load_req._entry.244 = internal constant %struct.pi_entry { ptr @.str.245, ptr @.str.240, ptr @.str.2, i32 861, ptr null, ptr null }, align 1
@.str.245 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]Failed to send load request, rc = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__qed_mcp_load_req._entry_ptr.246 = internal global ptr @__qed_mcp_load_req._entry.244, section ".printk_index", align 4
@__qed_mcp_load_req._entry.247 = internal constant %struct.pi_entry { ptr @.str.248, ptr @.str.240, ptr @.str.2, i32 866, ptr null, ptr null }, align 1
@.str.248 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]Load Response: resp 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@__qed_mcp_load_req._entry_ptr.249 = internal global ptr @__qed_mcp_load_req._entry.247, section ".printk_index", align 4
@__qed_mcp_load_req._entry.250 = internal constant %struct.pi_entry { ptr @.str.251, ptr @.str.240, ptr @.str.2, i32 880, ptr null, ptr null }, align 1
@.str.251 = internal constant { [133 x i8], [59 x i8] } { [133 x i8] c"\015[%s:%d(%s)]Load Response: exist_drv_ver 0x%08x_0x%08x, exist_fw_ver 0x%08x, misc0 0x%08x [exist_role %d, mfw_hsi %d, flags0 0x%x]\0A\00", [59 x i8] zeroinitializer }, align 32
@__qed_mcp_load_req._entry_ptr.252 = internal global ptr @__qed_mcp_load_req._entry.250, section ".printk_index", align 4
@qed_mcp_cancel_load_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.254, ptr @.str.2, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015[%s:%d(%s)]Failed to send cancel load request, rc = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_mcp_cancel_load_req\00", [40 x i8] zeroinitializer }, align 32
@qed_mcp_cancel_load_req._entry_ptr = internal global ptr @qed_mcp_cancel_load_req._entry, section ".printk_index", align 4
@qed_mcp_handle_link_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.256, ptr @.str.2, i32 1317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\015[%s:%d(%s)]Received link update [0x%08x] from mfw [Addr 0x%x]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qed_mcp_handle_link_change\00", [37 x i8] zeroinitializer }, align 32
@qed_mcp_handle_link_change._entry_ptr = internal global ptr @qed_mcp_handle_link_change._entry, section ".printk_index", align 4
@qed_mcp_handle_link_change._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.256, ptr @.str.2, i32 1320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]Resetting link indications\0A\00", [55 x i8] zeroinitializer }, align 32
@qed_mcp_handle_link_change._entry_ptr.259 = internal global ptr @qed_mcp_handle_link_change._entry.257, section ".printk_index", align 4
@qed_mcp_handle_link_change._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.256, ptr @.str.2, i32 1338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]Virtual link_up = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@qed_mcp_handle_link_change._entry_ptr.262 = internal global ptr @qed_mcp_handle_link_change._entry.260, section ".printk_index", align 4
@qed_mcp_handle_link_change._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.256, ptr @.str.2, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]Physical link_up = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@qed_mcp_handle_link_change._entry_ptr.265 = internal global ptr @qed_mcp_handle_link_change._entry.263, section ".printk_index", align 4
@qed_mcp_mdump_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.267, ptr @.str.2, i32 1817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\015[%s:%d(%s)]The mdump sub command is unsupported by the MFW [mdump_cmd 0x%x]\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_mcp_mdump_cmd\00", [46 x i8] zeroinitializer }, align 32
@qed_mcp_mdump_cmd._entry_ptr = internal global ptr @qed_mcp_mdump_cmd._entry, section ".printk_index", align 4
@qed_mcp_mdump_cmd._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.267, ptr @.str.2, i32 1821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015[%s:%d(%s)]The mdump command is not supported by the MFW\0A\00", [36 x i8] zeroinitializer }, align 32
@qed_mcp_mdump_cmd._entry_ptr.270 = internal global ptr @qed_mcp_mdump_cmd._entry.268, section ".printk_index", align 4
@qed_mcp_handle_vf_flr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.272, ptr @.str.2, i32 1146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\015[%s:%d(%s)]Reading Disabled VF information from [offset %08x], path_addr %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_mcp_handle_vf_flr\00", [42 x i8] zeroinitializer }, align 32
@qed_mcp_handle_vf_flr._entry_ptr = internal global ptr @qed_mcp_handle_vf_flr._entry, section ".printk_index", align 4
@qed_mcp_handle_vf_flr._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.274, ptr @.str.272, ptr @.str.2, i32 1156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]FLR-ed VFs [%08x,...,%08x] - %08x\0A\00", [48 x i8] zeroinitializer }, align 32
@qed_mcp_handle_vf_flr._entry_ptr.275 = internal global ptr @qed_mcp_handle_vf_flr._entry.273, section ".printk_index", align 4
@qed_mcp_handle_ufp_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.277, ptr @.str.2, i32 1963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013[%s:%d(%s)]Invalid sched type, discard the UFP config\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_mcp_handle_ufp_event\00", [39 x i8] zeroinitializer }, align 32
@qed_mcp_handle_ufp_event._entry_ptr = internal global ptr @qed_mcp_handle_ufp_event._entry, section ".printk_index", align 4
@qed_mcp_handle_transceiver_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.279, ptr @.str.2, i32 1215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\015[%s:%d(%s)]Received transceiver state update [0x%08x] from mfw [Addr 0x%x]\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qed_mcp_handle_transceiver_change\00", [62 x i8] zeroinitializer }, align 32
@qed_mcp_handle_transceiver_change._entry_ptr = internal global ptr @qed_mcp_handle_transceiver_change._entry, section ".printk_index", align 4
@qed_mcp_handle_transceiver_change._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.279, ptr @.str.2, i32 1221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]Transceiver is present.\0A\00", [58 x i8] zeroinitializer }, align 32
@qed_mcp_handle_transceiver_change._entry_ptr.282 = internal global ptr @qed_mcp_handle_transceiver_change._entry.280, section ".printk_index", align 4
@qed_mcp_handle_transceiver_change._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.279, ptr @.str.2, i32 1223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]Transceiver is unplugged.\0A\00", [56 x i8] zeroinitializer }, align 32
@qed_mcp_handle_transceiver_change._entry_ptr.285 = internal global ptr @qed_mcp_handle_transceiver_change._entry.283, section ".printk_index", align 4
@qed_mcp_handle_process_kill._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.287, ptr @.str.2, i32 1652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]Received a process kill indication\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qed_mcp_handle_process_kill\00", [36 x i8] zeroinitializer }, align 32
@qed_mcp_handle_process_kill._entry_ptr = internal global ptr @qed_mcp_handle_process_kill._entry, section ".printk_index", align 4
@qed_mcp_handle_process_kill._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.287, ptr @.str.2, i32 1662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\015[%s:%d(%s)]Ignoring the indication since a recovery process is already in progress\0A\00", [42 x i8] zeroinitializer }, align 32
@qed_mcp_handle_process_kill._entry_ptr.290 = internal global ptr @qed_mcp_handle_process_kill._entry.288, section ".printk_index", align 4
@qed_mcp_handle_process_kill._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.287, ptr @.str.2, i32 1669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015[%s:%d(%s)]Process kill counter: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@qed_mcp_handle_process_kill._entry_ptr.293 = internal global ptr @qed_mcp_handle_process_kill._entry.291, section ".printk_index", align 4
@qed_mcp_send_protocol_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.295, ptr @.str.2, i32 1701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015[%s:%d(%s)]Invalid protocol type %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qed_mcp_send_protocol_stats\00", [36 x i8] zeroinitializer }, align 32
@qed_mcp_send_protocol_stats._entry_ptr = internal global ptr @qed_mcp_send_protocol_stats._entry, section ".printk_index", align 4
@qed_mcp_update_stag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.296, ptr @.str.297, ptr @.str.2, i32 1766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]ovlan = %d hw_mode = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_mcp_update_stag\00", [44 x i8] zeroinitializer }, align 32
@qed_mcp_update_stag._entry_ptr = internal global ptr @qed_mcp_update_stag._entry, section ".printk_index", align 4
@.str.298 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Fan failure was detected on the network interface card and it's going to be shut down.\0A\00", [40 x i8] zeroinitializer }, align 32
@qed_mcp_handle_critical_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.300, ptr @.str.2, i32 1882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\015[%s:%d(%s)]The MFW notified that a critical error occurred in the device [epoch 0x%08x, pf 0x%x, status 0x%08x]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qed_mcp_handle_critical_error\00", [34 x i8] zeroinitializer }, align 32
@qed_mcp_handle_critical_error._entry_ptr = internal global ptr @qed_mcp_handle_critical_error._entry, section ".printk_index", align 4
@qed_mcp_handle_critical_error._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.300, ptr @.str.2, i32 1885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\015[%s:%d(%s)]The MFW notified that a critical error occurred in the device\0A\00", [52 x i8] zeroinitializer }, align 32
@qed_mcp_handle_critical_error._entry_ptr.303 = internal global ptr @qed_mcp_handle_critical_error._entry.301, section ".printk_index", align 4
@qed_mcp_handle_critical_error._entry.304 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.305, ptr @.str.300, ptr @.str.2, i32 1888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"\015[%s:%d(%s)]Acknowledging the notification to not allow the MFW crash dump [driver debug data collection is preferable]\0A\00", [38 x i8] zeroinitializer }, align 32
@qed_mcp_handle_critical_error._entry_ptr.306 = internal global ptr @qed_mcp_handle_critical_error._entry.304, section ".printk_index", align 4
@qed_mcp_get_shmem_proto._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.307, ptr @.str.308, ptr @.str.2, i32 2452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]RoCE personality is not a valid value!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_mcp_get_shmem_proto\00", [40 x i8] zeroinitializer }, align 32
@qed_mcp_get_shmem_proto._entry_ptr = internal global ptr @qed_mcp_get_shmem_proto._entry, section ".printk_index", align 4
@qed_read_pf_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.310, ptr @.str.2, i32 1283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015[%s:%d(%s)]bandwidth minimum out of bounds [%02x]. Set to 1\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_read_pf_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@qed_read_pf_bandwidth._entry_ptr = internal global ptr @qed_read_pf_bandwidth._entry, section ".printk_index", align 4
@qed_read_pf_bandwidth._entry.311 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.310, ptr @.str.2, i32 1292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\015[%s:%d(%s)]bandwidth maximum out of bounds [%02x]. Set to 100\0A\00", [63 x i8] zeroinitializer }, align 32
@qed_read_pf_bandwidth._entry_ptr.313 = internal global ptr @qed_read_pf_bandwidth._entry.311, section ".printk_index", align 4
@qed_mcp_config_vf_msix_bb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.315, ptr @.str.2, i32 2644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]VF[%d]: MFW failed to set MSI-X\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qed_mcp_config_vf_msix_bb\00", [38 x i8] zeroinitializer }, align 32
@qed_mcp_config_vf_msix_bb._entry_ptr = internal global ptr @qed_mcp_config_vf_msix_bb._entry, section ".printk_index", align 4
@qed_mcp_config_vf_msix_bb._entry.316 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.317, ptr @.str.315, ptr @.str.2, i32 2649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015[%s:%d(%s)]Requested 0x%02x MSI-x interrupts from VF 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@qed_mcp_config_vf_msix_bb._entry_ptr.318 = internal global ptr @qed_mcp_config_vf_msix_bb._entry.316, section ".printk_index", align 4
@qed_mcp_config_vf_msix_ah._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.319, ptr @.str.320, ptr @.str.2, i32 2666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]MFW failed to set MSI-X for VFs\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qed_mcp_config_vf_msix_ah\00", [38 x i8] zeroinitializer }, align 32
@qed_mcp_config_vf_msix_ah._entry_ptr = internal global ptr @qed_mcp_config_vf_msix_ah._entry, section ".printk_index", align 4
@qed_mcp_config_vf_msix_ah._entry.321 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.322, ptr @.str.320, ptr @.str.2, i32 2670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015[%s:%d(%s)]Requested 0x%02x MSI-x interrupts for VFs\0A\00", [40 x i8] zeroinitializer }, align 32
@qed_mcp_config_vf_msix_ah._entry_ptr.323 = internal global ptr @qed_mcp_config_vf_msix_ah._entry.321, section ".printk_index", align 4
@qed_mcp_cmd_set_blocking._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.325, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015[%s:%d(%s)]%s sending of mailbox commands to the MFW\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_mcp_cmd_set_blocking\00", [39 x i8] zeroinitializer }, align 32
@qed_mcp_cmd_set_blocking._entry_ptr = internal global ptr @qed_mcp_cmd_set_blocking._entry, section ".printk_index", align 4
@.str.326 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Block\00", [26 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unblock\00", [24 x i8] zeroinitializer }, align 32
@qed_mcp_resc_allocation_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.329, ptr @.str.2, i32 3547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013[%s:%d(%s)]Failed to match resource %d [%s] with the MFW resources\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qed_mcp_resc_allocation_msg\00", [36 x i8] zeroinitializer }, align 32
@qed_mcp_resc_allocation_msg._entry_ptr = internal global ptr @qed_mcp_resc_allocation_msg._entry, section ".printk_index", align 4
@qed_mcp_resc_allocation_msg._entry.330 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.329, ptr @.str.2, i32 3559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013[%s:%d(%s)]Unexpected resource alloc command [0x%08x]\0A\00", [39 x i8] zeroinitializer }, align 32
@qed_mcp_resc_allocation_msg._entry_ptr.332 = internal global ptr @qed_mcp_resc_allocation_msg._entry.330, section ".printk_index", align 4
@qed_mcp_resc_allocation_msg._entry.333 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.329, ptr @.str.2, i32 3581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\015[%s:%d(%s)]Resource message request: cmd 0x%08x, res_id %d [%s], hsi_version %d.%d, val 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@qed_mcp_resc_allocation_msg._entry_ptr.335 = internal global ptr @qed_mcp_resc_allocation_msg._entry.333, section ".printk_index", align 4
@qed_mcp_resc_allocation_msg._entry.336 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.337, ptr @.str.329, ptr @.str.2, i32 3605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [127 x i8], [33 x i8] } { [127 x i8] c"\015[%s:%d(%s)]Resource message response: mfw_hsi_version %d.%d, num 0x%x, start 0x%x, vf_num 0x%x, vf_start 0x%x, flags 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@qed_mcp_resc_allocation_msg._entry_ptr.338 = internal global ptr @qed_mcp_resc_allocation_msg._entry.336, section ".printk_index", align 4
@__qed_mcp_resc_lock._entry = internal constant %struct.pi_entry { ptr @.str.339, ptr @.str.340, ptr @.str.2, i32 3731, ptr null, ptr null }, align 1
@.str.339 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\015[%s:%d(%s)]Resource lock request: param 0x%08x [age %d, opcode %d, resource %d]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__qed_mcp_resc_lock\00", [44 x i8] zeroinitializer }, align 32
@__qed_mcp_resc_lock._entry_ptr = internal global ptr @__qed_mcp_resc_lock._entry, section ".printk_index", align 4
@__qed_mcp_resc_lock._entry.341 = internal constant %struct.pi_entry { ptr @.str.342, ptr @.str.340, ptr @.str.2, i32 3745, ptr null, ptr null }, align 1
@.str.342 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\015[%s:%d(%s)]Resource lock response: mcp_param 0x%08x [opcode %d, owner %d]\0A\00", [51 x i8] zeroinitializer }, align 32
@__qed_mcp_resc_lock._entry_ptr.343 = internal global ptr @__qed_mcp_resc_lock._entry.341, section ".printk_index", align 4
@__qed_mcp_resc_lock._entry.344 = internal constant %struct.pi_entry { ptr @.str.345, ptr @.str.340, ptr @.str.2, i32 3757, ptr null, ptr null }, align 1
@.str.345 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\015[%s:%d(%s)]Unexpected opcode in resource lock response [mcp_param 0x%08x, opcode %d]\0A\00", [40 x i8] zeroinitializer }, align 32
@__qed_mcp_resc_lock._entry_ptr.346 = internal global ptr @__qed_mcp_resc_lock._entry.344, section ".printk_index", align 4
@qed_mcp_resource_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.347, ptr @.str.348, ptr @.str.2, i32 3685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\015[%s:%d(%s)]The resource command is unsupported by the MFW\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_mcp_resource_cmd\00", [43 x i8] zeroinitializer }, align 32
@qed_mcp_resource_cmd._entry_ptr = internal global ptr @qed_mcp_resource_cmd._entry, section ".printk_index", align 4
@qed_mcp_resource_cmd._entry.349 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.350, ptr @.str.348, ptr @.str.2, i32 3694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\015[%s:%d(%s)]The resource command is unknown to the MFW [param 0x%08x, opcode %d]\0A\00", [45 x i8] zeroinitializer }, align 32
@qed_mcp_resource_cmd._entry_ptr.351 = internal global ptr @qed_mcp_resource_cmd._entry.349, section ".printk_index", align 4
@__qed_mcp_send_debug_data._entry = internal constant %struct.pi_entry { ptr @.str.352, ptr @.str.353, ptr @.str.2, i32 4053, ptr null, ptr null }, align 1
@.str.352 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013[%s:%d(%s)]Debug data size is %d while it should not exceed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__qed_mcp_send_debug_data\00", [38 x i8] zeroinitializer }, align 32
@__qed_mcp_send_debug_data._entry_ptr = internal global ptr @__qed_mcp_send_debug_data._entry, section ".printk_index", align 4
@__qed_mcp_send_debug_data._entry.354 = internal constant %struct.pi_entry { ptr @.str.355, ptr @.str.353, ptr @.str.2, i32 4068, ptr null, ptr null }, align 1
@.str.355 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\015[%s:%d(%s)]The DEBUG_DATA_SEND command is unsupported by the MFW\0A\00", [60 x i8] zeroinitializer }, align 32
@__qed_mcp_send_debug_data._entry_ptr.356 = internal global ptr @__qed_mcp_send_debug_data._entry.354, section ".printk_index", align 4
@__qed_mcp_send_debug_data._entry.357 = internal constant %struct.pi_entry { ptr @.str.358, ptr @.str.353, ptr @.str.2, i32 4071, ptr null, ptr null }, align 1
@.str.358 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015[%s:%d(%s)]The DEBUG_DATA_SEND command is not enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@__qed_mcp_send_debug_data._entry_ptr.359 = internal global ptr @__qed_mcp_send_debug_data._entry.357, section ".printk_index", align 4
@__qed_mcp_send_debug_data._entry.360 = internal constant %struct.pi_entry { ptr @.str.361, ptr @.str.353, ptr @.str.2, i32 4076, ptr null, ptr null }, align 1
@.str.361 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\015[%s:%d(%s)]Failed to send debug data to the MFW [resp 0x%08x]\0A\00", [63 x i8] zeroinitializer }, align 32
@__qed_mcp_send_debug_data._entry_ptr.362 = internal global ptr @__qed_mcp_send_debug_data._entry.360, section ".printk_index", align 4
@switch.table.qed_mcp_ov_update_current_config = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 3, i32 2], [20 x i8] zeroinitializer }, align 32
@switch.table.qed_mcp_ov_update_driver_state = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 4, i32 5], [20 x i8] zeroinitializer }, align 32
@switch.table.qed_mcp_get_nvm_image_att = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 29, i32 31, i32 27, i32 10, i32 26, i32 28], [40 x i8] zeroinitializer }, align 32
@switch.table.qed_mcp_resc_allocation_msg = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 0, i32 1, i32 2, i32 14, i32 7, i32 6, i32 9, i32 9, i32 11, i32 10, i32 15, i32 21, i32 11, i32 16, i32 17], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.363 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.364 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.365 = internal global [4 x i64] [i64 2, i64 32, i64 270598144, i64 271581184]
@__sancov_gen_cov_switch_values.366 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.367 = internal global [5 x i64] [i64 3, i64 32, i64 269484032, i64 269549568, i64 269615104]
@__sancov_gen_cov_switch_values.368 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14, i64 16]
@__sancov_gen_cov_switch_values.369 = internal global [5 x i64] [i64 3, i64 32, i64 262144, i64 524288, i64 786432]
@__sancov_gen_cov_switch_values.370 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 134217728, i64 268435456]
@__sancov_gen_cov_switch_values.371 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 196608]
@__sancov_gen_cov_switch_values.372 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.373 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.374 = internal global [19 x i64] [i64 17, i64 16, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 17, i64 18]
@__sancov_gen_cov_switch_values.375 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.376 = internal global [46 x i64] [i64 44, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58]
@__sancov_gen_cov_switch_values.377 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.378 = internal global [5 x i64] [i64 3, i64 32, i64 65536, i64 131072, i64 393216]
@__sancov_gen_cov_switch_values.379 = internal global [5 x i64] [i64 3, i64 32, i64 65536, i64 1441792, i64 4194304]
@__sancov_gen_cov_switch_values.380 = internal global [4 x i64] [i64 2, i64 32, i64 131072, i64 1441792]
@__sancov_gen_cov_switch_values.381 = internal global [4 x i64] [i64 2, i64 32, i64 872415232, i64 889192448]
@__sancov_gen_cov_switch_values.382 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.383 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.384 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.385 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2953445376, i64 2953510912]
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 68, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 250, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 251, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 256, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 301, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 326, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 329, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 974, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 987, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1007, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1015, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1036, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1042, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1061, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1068, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1087, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1120, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1176, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1186, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1588, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1594, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1605, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1856, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1908, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1919, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1936, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1941, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1984, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1996, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2050, i32 4 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2068, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2093, i32 4 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2130, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2158, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2189, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2328, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2346, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2475, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2493, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2519, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2591, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2596, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2616, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2709, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2726, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2738, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2764, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2794, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2801, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2825, i32 3 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2832, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2848, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2878, i32 3 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2894, i32 3 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2910, i32 3 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2917, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2944, i32 3 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2951, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2973, i32 3 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2993, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2996, i32 3 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3029, i32 4 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3088, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3105, i32 4 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3113, i32 4 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3180, i32 4 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3300, i32 3 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3309, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3312, i32 3 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3329, i32 4 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3334, i32 3 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3393, i32 3 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3406, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3433, i32 3 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3440, i32 3 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3810, i32 2 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3822, i32 2 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3828, i32 3 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3839, i32 3 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3892, i32 3 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3924, i32 3 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3943, i32 2 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3962, i32 3 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3970, i32 2 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 4175, i32 3 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 177, i32 3 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 208, i32 3 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 219, i32 2 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 285, i32 3 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 588, i32 3 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 593, i32 3 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 601, i32 3 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 496, i32 3 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 541, i32 3 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 561, i32 2 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 373, i32 3 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 426, i32 2 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 453, i32 2 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 909, i32 3 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 837, i32 2 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 846, i32 3 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 861, i32 3 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 865, i32 2 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 871, i32 3 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 739, i32 3 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1313, i32 3 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1319, i32 3 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1337, i32 4 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1341, i32 4 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1815, i32 3 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1820, i32 3 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1143, i32 2 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1154, i32 3 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1963, i32 3 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1210, i32 2 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1221, i32 3 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1223, i32 3 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1652, i32 2 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1661, i32 3 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1669, i32 2 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1701, i32 3 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1765, i32 2 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1781, i32 6 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1879, i32 3 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1884, i32 3 }
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1887, i32 2 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2452, i32 3 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1281, i32 3 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 1290, i32 3 }
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2644, i32 3 }
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2647, i32 3 }
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2666, i32 3 }
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 2669, i32 3 }
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 435, i32 2 }
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3544, i32 3 }
@___asan_gen_.1378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3558, i32 3 }
@___asan_gen_.1384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3571, i32 2 }
@___asan_gen_.1390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3595, i32 2 }
@___asan_gen_.1396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3728, i32 2 }
@___asan_gen_.1399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3742, i32 2 }
@___asan_gen_.1402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3755, i32 3 }
@___asan_gen_.1411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3684, i32 3 }
@___asan_gen_.1412 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 3692, i32 3 }
@___asan_gen_.1423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 4051, i32 3 }
@___asan_gen_.1426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 4067, i32 3 }
@___asan_gen_.1429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 4071, i32 3 }
@___asan_gen_.1430 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1431 = private constant [45 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_mcp.c\00", align 1
@___asan_gen_.1432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1431, i32 4074, i32 3 }
@___asan_gen_.1433 = private unnamed_addr constant [46 x i8] c"switch.table.qed_mcp_ov_update_current_config\00", align 1
@___asan_gen_.1434 = private unnamed_addr constant [44 x i8] c"switch.table.qed_mcp_ov_update_driver_state\00", align 1
@___asan_gen_.1435 = private unnamed_addr constant [39 x i8] c"switch.table.qed_mcp_get_nvm_image_att\00", align 1
@___asan_gen_.1436 = private unnamed_addr constant [41 x i8] c"switch.table.qed_mcp_resc_allocation_msg\00", align 1
@llvm.compiler.used = appending global [510 x ptr] [ptr @__qed_mcp_cmd_and_union._entry, ptr @__qed_mcp_cmd_and_union._entry_ptr, ptr @__qed_mcp_load_req._entry, ptr @__qed_mcp_load_req._entry.241, ptr @__qed_mcp_load_req._entry.244, ptr @__qed_mcp_load_req._entry.247, ptr @__qed_mcp_load_req._entry.250, ptr @__qed_mcp_load_req._entry_ptr, ptr @__qed_mcp_load_req._entry_ptr.243, ptr @__qed_mcp_load_req._entry_ptr.246, ptr @__qed_mcp_load_req._entry_ptr.249, ptr @__qed_mcp_load_req._entry_ptr.252, ptr @__qed_mcp_resc_lock._entry, ptr @__qed_mcp_resc_lock._entry.341, ptr @__qed_mcp_resc_lock._entry.344, ptr @__qed_mcp_resc_lock._entry_ptr, ptr @__qed_mcp_resc_lock._entry_ptr.343, ptr @__qed_mcp_resc_lock._entry_ptr.346, ptr @__qed_mcp_send_debug_data._entry, ptr @__qed_mcp_send_debug_data._entry.354, ptr @__qed_mcp_send_debug_data._entry.357, ptr @__qed_mcp_send_debug_data._entry.360, ptr @__qed_mcp_send_debug_data._entry_ptr, ptr @__qed_mcp_send_debug_data._entry_ptr.356, ptr @__qed_mcp_send_debug_data._entry_ptr.359, ptr @__qed_mcp_send_debug_data._entry_ptr.362, ptr @_qed_mcp_cmd_and_union._entry, ptr @_qed_mcp_cmd_and_union._entry.225, ptr @_qed_mcp_cmd_and_union._entry.228, ptr @_qed_mcp_cmd_and_union._entry_ptr, ptr @_qed_mcp_cmd_and_union._entry_ptr.227, ptr @_qed_mcp_cmd_and_union._entry_ptr.230, ptr @eocre_get_mfw_drv_role._entry, ptr @eocre_get_mfw_drv_role._entry_ptr, ptr @qed_load_mcp_offsets._entry, ptr @qed_load_mcp_offsets._entry.208, ptr @qed_load_mcp_offsets._entry.211, ptr @qed_load_mcp_offsets._entry_ptr, ptr @qed_load_mcp_offsets._entry_ptr.210, ptr @qed_load_mcp_offsets._entry_ptr.213, ptr @qed_mcp_ack_vf_flr._entry, ptr @qed_mcp_ack_vf_flr._entry.45, ptr @qed_mcp_ack_vf_flr._entry_ptr, ptr @qed_mcp_ack_vf_flr._entry_ptr.47, ptr @qed_mcp_cancel_load_req._entry, ptr @qed_mcp_cancel_load_req._entry_ptr, ptr @qed_mcp_cmd_and_union._entry, ptr @qed_mcp_cmd_and_union._entry.217, ptr @qed_mcp_cmd_and_union._entry.220, ptr @qed_mcp_cmd_and_union._entry_ptr, ptr @qed_mcp_cmd_and_union._entry_ptr.219, ptr @qed_mcp_cmd_and_union._entry_ptr.222, ptr @qed_mcp_cmd_init._entry, ptr @qed_mcp_cmd_init._entry_ptr, ptr @qed_mcp_cmd_port_init._entry, ptr @qed_mcp_cmd_port_init._entry_ptr, ptr @qed_mcp_cmd_set_blocking._entry, ptr @qed_mcp_cmd_set_blocking._entry_ptr, ptr @qed_mcp_config_vf_msix_ah._entry, ptr @qed_mcp_config_vf_msix_ah._entry.321, ptr @qed_mcp_config_vf_msix_ah._entry_ptr, ptr @qed_mcp_config_vf_msix_ah._entry_ptr.323, ptr @qed_mcp_config_vf_msix_bb._entry, ptr @qed_mcp_config_vf_msix_bb._entry.316, ptr @qed_mcp_config_vf_msix_bb._entry_ptr, ptr @qed_mcp_config_vf_msix_bb._entry_ptr.318, ptr @qed_mcp_fill_shmem_func_info._entry, ptr @qed_mcp_fill_shmem_func_info._entry.92, ptr @qed_mcp_fill_shmem_func_info._entry.95, ptr @qed_mcp_fill_shmem_func_info._entry_ptr, ptr @qed_mcp_fill_shmem_func_info._entry_ptr.94, ptr @qed_mcp_fill_shmem_func_info._entry_ptr.97, ptr @qed_mcp_get_board_config._entry, ptr @qed_mcp_get_board_config._entry_ptr, ptr @qed_mcp_get_capabilities._entry, ptr @qed_mcp_get_capabilities._entry_ptr, ptr @qed_mcp_get_engine_config._entry, ptr @qed_mcp_get_engine_config._entry.196, ptr @qed_mcp_get_engine_config._entry_ptr, ptr @qed_mcp_get_engine_config._entry_ptr.198, ptr @qed_mcp_get_esl_status._entry, ptr @qed_mcp_get_esl_status._entry_ptr, ptr @qed_mcp_get_mbi_ver._entry, ptr @qed_mcp_get_mbi_ver._entry_ptr, ptr @qed_mcp_get_media_type._entry, ptr @qed_mcp_get_media_type._entry_ptr, ptr @qed_mcp_get_mfw_ver._entry, ptr @qed_mcp_get_mfw_ver._entry_ptr, ptr @qed_mcp_get_nvm_image._entry, ptr @qed_mcp_get_nvm_image._entry.178, ptr @qed_mcp_get_nvm_image._entry_ptr, ptr @qed_mcp_get_nvm_image._entry_ptr.180, ptr @qed_mcp_get_nvm_image_att._entry, ptr @qed_mcp_get_nvm_image_att._entry.173, ptr @qed_mcp_get_nvm_image_att._entry_ptr, ptr @qed_mcp_get_nvm_image_att._entry_ptr.175, ptr @qed_mcp_get_ppfid_bitmap._entry, ptr @qed_mcp_get_ppfid_bitmap._entry.201, ptr @qed_mcp_get_ppfid_bitmap._entry_ptr, ptr @qed_mcp_get_ppfid_bitmap._entry_ptr.203, ptr @qed_mcp_get_shmem_proto._entry, ptr @qed_mcp_get_shmem_proto._entry_ptr, ptr @qed_mcp_get_transceiver_data._entry, ptr @qed_mcp_get_transceiver_data._entry_ptr, ptr @qed_mcp_halt._entry, ptr @qed_mcp_halt._entry.107, ptr @qed_mcp_halt._entry_ptr, ptr @qed_mcp_halt._entry_ptr.109, ptr @qed_mcp_handle_critical_error._entry, ptr @qed_mcp_handle_critical_error._entry.301, ptr @qed_mcp_handle_critical_error._entry.304, ptr @qed_mcp_handle_critical_error._entry_ptr, ptr @qed_mcp_handle_critical_error._entry_ptr.303, ptr @qed_mcp_handle_critical_error._entry_ptr.306, ptr @qed_mcp_handle_events._entry, ptr @qed_mcp_handle_events._entry.71, ptr @qed_mcp_handle_events._entry.74, ptr @qed_mcp_handle_events._entry.77, ptr @qed_mcp_handle_events._entry_ptr, ptr @qed_mcp_handle_events._entry_ptr.73, ptr @qed_mcp_handle_events._entry_ptr.76, ptr @qed_mcp_handle_events._entry_ptr.79, ptr @qed_mcp_handle_link_change._entry, ptr @qed_mcp_handle_link_change._entry.257, ptr @qed_mcp_handle_link_change._entry.260, ptr @qed_mcp_handle_link_change._entry.263, ptr @qed_mcp_handle_link_change._entry_ptr, ptr @qed_mcp_handle_link_change._entry_ptr.259, ptr @qed_mcp_handle_link_change._entry_ptr.262, ptr @qed_mcp_handle_link_change._entry_ptr.265, ptr @qed_mcp_handle_process_kill._entry, ptr @qed_mcp_handle_process_kill._entry.288, ptr @qed_mcp_handle_process_kill._entry.291, ptr @qed_mcp_handle_process_kill._entry_ptr, ptr @qed_mcp_handle_process_kill._entry_ptr.290, ptr @qed_mcp_handle_process_kill._entry_ptr.293, ptr @qed_mcp_handle_transceiver_change._entry, ptr @qed_mcp_handle_transceiver_change._entry.280, ptr @qed_mcp_handle_transceiver_change._entry.283, ptr @qed_mcp_handle_transceiver_change._entry_ptr, ptr @qed_mcp_handle_transceiver_change._entry_ptr.282, ptr @qed_mcp_handle_transceiver_change._entry_ptr.285, ptr @qed_mcp_handle_ufp_event._entry, ptr @qed_mcp_handle_ufp_event._entry_ptr, ptr @qed_mcp_handle_vf_flr._entry, ptr @qed_mcp_handle_vf_flr._entry.273, ptr @qed_mcp_handle_vf_flr._entry_ptr, ptr @qed_mcp_handle_vf_flr._entry_ptr.275, ptr @qed_mcp_load_done._entry, ptr @qed_mcp_load_done._entry.36, ptr @qed_mcp_load_done._entry_ptr, ptr @qed_mcp_load_done._entry_ptr.38, ptr @qed_mcp_load_req._entry, ptr @qed_mcp_load_req._entry.19, ptr @qed_mcp_load_req._entry.22, ptr @qed_mcp_load_req._entry.25, ptr @qed_mcp_load_req._entry.28, ptr @qed_mcp_load_req._entry.31, ptr @qed_mcp_load_req._entry_ptr, ptr @qed_mcp_load_req._entry_ptr.21, ptr @qed_mcp_load_req._entry_ptr.24, ptr @qed_mcp_load_req._entry_ptr.27, ptr @qed_mcp_load_req._entry_ptr.30, ptr @qed_mcp_load_req._entry_ptr.33, ptr @qed_mcp_mask_parities._entry, ptr @qed_mcp_mask_parities._entry.142, ptr @qed_mcp_mask_parities._entry_ptr, ptr @qed_mcp_mask_parities._entry_ptr.144, ptr @qed_mcp_mdump_cmd._entry, ptr @qed_mcp_mdump_cmd._entry.268, ptr @qed_mcp_mdump_cmd._entry_ptr, ptr @qed_mcp_mdump_cmd._entry_ptr.270, ptr @qed_mcp_mdump_get_retain._entry, ptr @qed_mcp_mdump_get_retain._entry_ptr, ptr @qed_mcp_nvm_info_populate._entry, ptr @qed_mcp_nvm_info_populate._entry.159, ptr @qed_mcp_nvm_info_populate._entry.162, ptr @qed_mcp_nvm_info_populate._entry.165, ptr @qed_mcp_nvm_info_populate._entry.168, ptr @qed_mcp_nvm_info_populate._entry_ptr, ptr @qed_mcp_nvm_info_populate._entry_ptr.161, ptr @qed_mcp_nvm_info_populate._entry_ptr.164, ptr @qed_mcp_nvm_info_populate._entry_ptr.167, ptr @qed_mcp_nvm_info_populate._entry_ptr.170, ptr @qed_mcp_nvm_read._entry, ptr @qed_mcp_nvm_read._entry_ptr, ptr @qed_mcp_nvm_write._entry, ptr @qed_mcp_nvm_write._entry.149, ptr @qed_mcp_nvm_write._entry.152, ptr @qed_mcp_nvm_write._entry_ptr, ptr @qed_mcp_nvm_write._entry_ptr.151, ptr @qed_mcp_nvm_write._entry_ptr.154, ptr @qed_mcp_ov_update_current_config._entry, ptr @qed_mcp_ov_update_current_config._entry.114, ptr @qed_mcp_ov_update_current_config._entry_ptr, ptr @qed_mcp_ov_update_current_config._entry_ptr.115, ptr @qed_mcp_ov_update_driver_state._entry, ptr @qed_mcp_ov_update_driver_state._entry.118, ptr @qed_mcp_ov_update_driver_state._entry_ptr, ptr @qed_mcp_ov_update_driver_state._entry_ptr.120, ptr @qed_mcp_ov_update_eswitch._entry, ptr @qed_mcp_ov_update_eswitch._entry.135, ptr @qed_mcp_ov_update_eswitch._entry_ptr, ptr @qed_mcp_ov_update_eswitch._entry_ptr.137, ptr @qed_mcp_ov_update_mac._entry, ptr @qed_mcp_ov_update_mac._entry_ptr, ptr @qed_mcp_ov_update_mtu._entry, ptr @qed_mcp_ov_update_mtu._entry_ptr, ptr @qed_mcp_ov_update_wol._entry, ptr @qed_mcp_ov_update_wol._entry.127, ptr @qed_mcp_ov_update_wol._entry.130, ptr @qed_mcp_ov_update_wol._entry_ptr, ptr @qed_mcp_ov_update_wol._entry_ptr.129, ptr @qed_mcp_ov_update_wol._entry_ptr.132, ptr @qed_mcp_phy_sfp_read._entry, ptr @qed_mcp_phy_sfp_read._entry_ptr, ptr @qed_mcp_print_cpu_info._entry, ptr @qed_mcp_print_cpu_info._entry_ptr, ptr @qed_mcp_read_ufp_config._entry, ptr @qed_mcp_read_ufp_config._entry.60, ptr @qed_mcp_read_ufp_config._entry.63, ptr @qed_mcp_read_ufp_config._entry.66, ptr @qed_mcp_read_ufp_config._entry_ptr, ptr @qed_mcp_read_ufp_config._entry_ptr.62, ptr @qed_mcp_read_ufp_config._entry_ptr.65, ptr @qed_mcp_read_ufp_config._entry_ptr.68, ptr @qed_mcp_reread_offsets._entry, ptr @qed_mcp_reread_offsets._entry_ptr, ptr @qed_mcp_resc_allocation_msg._entry, ptr @qed_mcp_resc_allocation_msg._entry.330, ptr @qed_mcp_resc_allocation_msg._entry.333, ptr @qed_mcp_resc_allocation_msg._entry.336, ptr @qed_mcp_resc_allocation_msg._entry_ptr, ptr @qed_mcp_resc_allocation_msg._entry_ptr.332, ptr @qed_mcp_resc_allocation_msg._entry_ptr.335, ptr @qed_mcp_resc_allocation_msg._entry_ptr.338, ptr @qed_mcp_resc_unlock._entry, ptr @qed_mcp_resc_unlock._entry.183, ptr @qed_mcp_resc_unlock._entry.186, ptr @qed_mcp_resc_unlock._entry.189, ptr @qed_mcp_resc_unlock._entry_ptr, ptr @qed_mcp_resc_unlock._entry_ptr.185, ptr @qed_mcp_resc_unlock._entry_ptr.188, ptr @qed_mcp_resc_unlock._entry_ptr.191, ptr @qed_mcp_reset._entry, ptr @qed_mcp_reset._entry.11, ptr @qed_mcp_reset._entry.14, ptr @qed_mcp_reset._entry_ptr, ptr @qed_mcp_reset._entry_ptr.13, ptr @qed_mcp_reset._entry_ptr.16, ptr @qed_mcp_resource_cmd._entry, ptr @qed_mcp_resource_cmd._entry.349, ptr @qed_mcp_resource_cmd._entry_ptr, ptr @qed_mcp_resource_cmd._entry_ptr.351, ptr @qed_mcp_resume._entry, ptr @qed_mcp_resume._entry_ptr, ptr @qed_mcp_send_drv_version._entry, ptr @qed_mcp_send_drv_version._entry_ptr, ptr @qed_mcp_send_protocol_stats._entry, ptr @qed_mcp_send_protocol_stats._entry_ptr, ptr @qed_mcp_set_led._entry, ptr @qed_mcp_set_led._entry_ptr, ptr @qed_mcp_set_link._entry, ptr @qed_mcp_set_link._entry.50, ptr @qed_mcp_set_link._entry.53, ptr @qed_mcp_set_link._entry_ptr, ptr @qed_mcp_set_link._entry_ptr.52, ptr @qed_mcp_set_link._entry_ptr.55, ptr @qed_mcp_trans_speed_mask._entry, ptr @qed_mcp_trans_speed_mask._entry_ptr, ptr @qed_mcp_unload_done._entry, ptr @qed_mcp_unload_done._entry_ptr, ptr @qed_mcp_unload_req._entry, ptr @qed_mcp_unload_req._entry_ptr, ptr @qed_mcp_update_pending_cmd._entry, ptr @qed_mcp_update_pending_cmd._entry_ptr, ptr @qed_mcp_update_stag._entry, ptr @qed_mcp_update_stag._entry_ptr, ptr @qed_read_pf_bandwidth._entry, ptr @qed_read_pf_bandwidth._entry.311, ptr @qed_read_pf_bandwidth._entry_ptr, ptr @qed_read_pf_bandwidth._entry_ptr.313, ptr @qed_recovery_prolog._entry, ptr @qed_recovery_prolog._entry_ptr, ptr @qed_start_recovery_process._entry, ptr @qed_start_recovery_process._entry.100, ptr @qed_start_recovery_process._entry_ptr, ptr @qed_start_recovery_process._entry_ptr.102, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @qed_mcp_cmd_init.__key, ptr @.str.4, ptr @qed_mcp_cmd_init.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.143, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.153, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.171, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.177, ptr @.str.179, ptr @.str.181, ptr @.str.182, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.197, ptr @.str.199, ptr @.str.200, ptr @.str.202, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.209, ptr @.str.212, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.218, ptr @.str.221, ptr @.str.223, ptr @.str.224, ptr @.str.226, ptr @.str.229, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.242, ptr @.str.245, ptr @.str.248, ptr @.str.251, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.258, ptr @.str.261, ptr @.str.264, ptr @.str.266, ptr @.str.267, ptr @.str.269, ptr @.str.271, ptr @.str.272, ptr @.str.274, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.281, ptr @.str.284, ptr @.str.286, ptr @.str.287, ptr @.str.289, ptr @.str.292, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.302, ptr @.str.305, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.312, ptr @.str.314, ptr @.str.315, ptr @.str.317, ptr @.str.319, ptr @.str.320, ptr @.str.322, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.331, ptr @.str.334, ptr @.str.337, ptr @.str.339, ptr @.str.340, ptr @.str.342, ptr @.str.345, ptr @.str.347, ptr @.str.348, ptr @.str.350, ptr @.str.352, ptr @.str.353, ptr @.str.355, ptr @.str.358, ptr @.str.361, ptr @switch.table.qed_mcp_ov_update_current_config, ptr @switch.table.qed_mcp_ov_update_driver_state, ptr @switch.table.qed_mcp_get_nvm_image_att, ptr @switch.table.qed_mcp_resc_allocation_msg], section "llvm.metadata"
@0 = internal global [353 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_cmd_port_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_cmd_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_cmd_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_cmd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_reset._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_reset._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_load_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_load_req._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 139, i32 192, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_load_req._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 147, i32 192, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_load_req._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_load_req._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_load_req._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_load_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_load_done._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_unload_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_unload_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_ack_vf_flr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_ack_vf_flr._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_set_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_set_link._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_set_link._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_mdump_get_retain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_read_ufp_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_read_ufp_config._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_read_ufp_config._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_read_ufp_config._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_events._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_events._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_events._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_get_mfw_ver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_get_mbi_ver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_get_media_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_get_transceiver_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_trans_speed_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_get_board_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_fill_shmem_func_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_fill_shmem_func_info._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_fill_shmem_func_info._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 147, i32 192, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_start_recovery_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_start_recovery_process._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_recovery_prolog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_send_drv_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_halt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_halt._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_ov_update_current_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_ov_update_current_config._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_ov_update_driver_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_ov_update_driver_state._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_ov_update_mtu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_ov_update_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_ov_update_wol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_ov_update_wol._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_ov_update_wol._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_ov_update_eswitch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_ov_update_eswitch._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_set_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_mask_parities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_mask_parities._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_nvm_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_nvm_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_nvm_write._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_nvm_write._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_phy_sfp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_nvm_info_populate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_nvm_info_populate._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_nvm_info_populate._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_nvm_info_populate._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_nvm_info_populate._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_get_nvm_image_att._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_get_nvm_image_att._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_get_nvm_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_get_nvm_image._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_resc_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_resc_unlock._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_resc_unlock._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_resc_unlock._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_get_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_get_engine_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_get_engine_config._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_get_ppfid_bitmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_get_ppfid_bitmap._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_get_esl_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_load_mcp_offsets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_load_mcp_offsets._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_load_mcp_offsets._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_reread_offsets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_cmd_and_union._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_cmd_and_union._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_cmd_and_union._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_qed_mcp_cmd_and_union._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_qed_mcp_cmd_and_union._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_qed_mcp_cmd_and_union._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_update_pending_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_print_cpu_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eocre_get_mfw_drv_role._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_cancel_load_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_link_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_link_change._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_link_change._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_link_change._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_mdump_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_mdump_cmd._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_vf_flr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_vf_flr._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_ufp_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_transceiver_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_transceiver_change._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_transceiver_change._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_process_kill._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_process_kill._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_process_kill._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_send_protocol_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_update_stag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_critical_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_critical_error._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_handle_critical_error._entry.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_get_shmem_proto._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_read_pf_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_read_pf_bandwidth._entry.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_config_vf_msix_bb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_config_vf_msix_bb._entry.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_config_vf_msix_ah._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_config_vf_msix_ah._entry.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_cmd_set_blocking._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_resc_allocation_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_resc_allocation_msg._entry.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_resc_allocation_msg._entry.333 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_resc_allocation_msg._entry.336 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 127, i32 160, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_resource_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_resource_cmd._entry.349 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_mcp_ov_update_current_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_mcp_ov_update_driver_state to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_mcp_get_nvm_image_att to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_mcp_resc_allocation_msg to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @qed_mcp_is_init(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %public_base = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %public_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %public_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp ne i32 %3, 0
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %tobool2.not, %lor.lhs.false ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_mcp_cmd_port_init(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  %public_base = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %public_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %public_base, align 4
  %add = add i32 %3, 20
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add) #11
  %and = shl i32 %call, 2
  %shl = and i32 %and, 262140
  %add1 = add nuw nsw i32 %shl, 14811136
  %4 = lshr i32 %call, 14
  %shl4 = and i32 %4, 262140
  %abs_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %5 = ptrtoint ptr %abs_pf_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %abs_pf_id, align 2
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p_hwfn, align 8
  %call5 = tail call i32 @qed_device_num_ports(ptr noundef %8) #11
  %rem = srem i32 %conv, %call5
  %mul = mul nuw nsw i32 %rem, %shl4
  %add6 = add nuw nsw i32 %add1, %mul
  %9 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mcp_info, align 8
  %port_addr = getelementptr inbounds %struct.qed_mcp_info, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %port_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add6, ptr %port_addr, align 8
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %12 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp = icmp eq i8 %13, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end26_crit_edge

entry.do.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %14 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dp_module, align 4
  %and10 = and i32 %15, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %land.rhs.do.end26_crit_edge, label %do.end, !prof !662

land.rhs.do.end26_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool14.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool14.not, ptr @.str.3, ptr %name
  %16 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mcp_info, align 8
  %port_addr18 = getelementptr inbounds %struct.qed_mcp_info, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %port_addr18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_addr18, align 8
  %20 = ptrtoint ptr %abs_pf_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %abs_pf_id, align 2
  %conv20 = zext i8 %21 to i32
  %22 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p_hwfn, align 8
  %call22 = tail call i32 @qed_device_num_ports(ptr noundef %23) #11
  %rem23 = srem i32 %conv20, %call22
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 70, ptr noundef nonnull %spec.select, i32 noundef %19, i32 noundef %rem23) #14
  br label %do.end26

do.end26:                                         ; preds = %do.end, %land.rhs.do.end26_crit_edge, %entry.do.end26_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_rd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_device_num_ports(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_mcp_read_mb(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  %mfw_mb_length = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %mfw_mb_length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mfw_mb_length, align 8
  %conv = zext i16 %3 to i32
  %sub = add nsw i32 %conv, -1
  %shr = ashr i32 %sub, 2
  %public_base = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %public_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %public_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp ne i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shr)
  %cmp16 = icmp ne i32 %shr, -1
  %or.cond = select i1 %tobool.not, i1 %cmp16, i1 false
  br i1 %or.cond, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcp_info, align 8
  %mfw_mb_addr = getelementptr inbounds %struct.qed_mcp_info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %mfw_mb_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mfw_mb_addr, align 4
  %shl = shl i32 %i.017, 2
  %add4 = add i32 %shl, 4
  %add5 = add i32 %add4, %9
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add5) #11
  %10 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mcp_info, align 8
  %mfw_mb_cur = getelementptr inbounds %struct.qed_mcp_info, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %mfw_mb_cur to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mfw_mb_cur, align 8
  %arrayidx = getelementptr i32, ptr %13, i32 %i.017
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %i.017, %shr
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_free(ptr nocapture noundef %p_hwfn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %mfw_mb_cur = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %mfw_mb_cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfw_mb_cur, align 8
  tail call void @kfree(ptr noundef %3) #11
  %4 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcp_info, align 8
  %mfw_mb_shadow = getelementptr inbounds %struct.qed_mcp_info, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %mfw_mb_shadow to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mfw_mb_shadow, align 4
  tail call void @kfree(ptr noundef %7) #11
  %8 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mcp_info, align 8
  %cmd_lock = getelementptr inbounds %struct.qed_mcp_info, ptr %9, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #11
  %10 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mcp_info, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %cmp.not33 = icmp eq ptr %13, %11
  br i1 %cmp.not33, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %qed_mcp_cmd_del_elem.exit.for.body_crit_edge, %if.then.for.body_crit_edge
  %p_cmd_elem.034 = phi ptr [ %p_tmp.0, %qed_mcp_cmd_del_elem.exit.for.body_crit_edge ], [ %13, %if.then.for.body_crit_edge ]
  %14 = ptrtoint ptr %p_cmd_elem.034 to i32
  call void @__asan_load4_noabort(i32 %14)
  %p_tmp.0 = load ptr, ptr %p_cmd_elem.034, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p_cmd_elem.034) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.qed_mcp_cmd_del_elem.exit_crit_edge

for.body.qed_mcp_cmd_del_elem.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_cmd_del_elem.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %p_cmd_elem.034, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %p_cmd_elem.034 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p_cmd_elem.034, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %qed_mcp_cmd_del_elem.exit

qed_mcp_cmd_del_elem.exit:                        ; preds = %if.end.i.i.i, %for.body.qed_mcp_cmd_del_elem.exit_crit_edge
  %21 = ptrtoint ptr %p_cmd_elem.034 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %p_cmd_elem.034, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p_cmd_elem.034, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %p_cmd_elem.034) #11
  %23 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mcp_info, align 8
  %cmp.not = icmp eq ptr %p_tmp.0, %24
  br i1 %cmp.not, label %qed_mcp_cmd_del_elem.exit.for.end_crit_edge, label %qed_mcp_cmd_del_elem.exit.for.body_crit_edge

qed_mcp_cmd_del_elem.exit.for.body_crit_edge:     ; preds = %qed_mcp_cmd_del_elem.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

qed_mcp_cmd_del_elem.exit.for.end_crit_edge:      ; preds = %qed_mcp_cmd_del_elem.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %qed_mcp_cmd_del_elem.exit.for.end_crit_edge, %if.then.for.end_crit_edge
  %.lcssa = phi ptr [ %11, %if.then.for.end_crit_edge ], [ %p_tmp.0, %qed_mcp_cmd_del_elem.exit.for.end_crit_edge ]
  %cmd_lock18 = getelementptr inbounds %struct.qed_mcp_info, ptr %.lcssa, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock18) #11
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %25 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mcp_info, align 8
  tail call void @kfree(ptr noundef %26) #11
  %27 = ptrtoint ptr %mcp_info to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %mcp_info, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_mcp_cmd_del_elem(ptr noundef %p_cmd_elem) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p_cmd_elem) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p_cmd_elem, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %p_cmd_elem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_cmd_elem, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %p_cmd_elem to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %p_cmd_elem, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p_cmd_elem, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %p_cmd_elem) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_cmd_init(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 312) #15
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %1 = ptrtoint ptr %mcp_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %mcp_info, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end:                                           ; preds = %entry
  %cmd_lock = getelementptr inbounds %struct.qed_mcp_info, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %cmd_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @qed_mcp_cmd_init.__key, i16 noundef signext 3) #11
  %link_lock = getelementptr inbounds %struct.qed_mcp_info, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %link_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @qed_mcp_cmd_init.__key.5, i16 noundef signext 3) #11
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %call8 = tail call fastcc i32 @qed_load_mcp_offsets(ptr noundef %p_hwfn, ptr noundef %p_ptt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  br i1 %cmp.not, label %if.end8.i.i80, label %do.body10

do.body10:                                        ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp11 = icmp ult i8 %5, 3
  br i1 %cmp11, label %do.end18, label %do.body10.cleanup_crit_edge, !prof !663

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end18:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool19.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool19.not, ptr @.str.3, ptr %name
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 256, ptr noundef nonnull %spec.select) #14
  br label %cleanup

if.end8.i.i80:                                    ; preds = %if.end
  %mfw_mb_length = getelementptr inbounds %struct.qed_mcp_info, ptr %call7.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %mfw_mb_length to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mfw_mb_length, align 8
  %conv27 = zext i16 %7 to i32
  %8 = add nuw nsw i32 %conv27, 3
  %mul = and i32 %8, 131068
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #16
  %mfw_mb_cur = getelementptr inbounds %struct.qed_mcp_info, ptr %call7.i.i, i32 0, i32 14
  %9 = ptrtoint ptr %mfw_mb_cur to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i.i, ptr %mfw_mb_cur, align 8
  %call9.i.i79 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #16
  %mfw_mb_shadow = getelementptr inbounds %struct.qed_mcp_info, ptr %call7.i.i, i32 0, i32 15
  %10 = ptrtoint ptr %mfw_mb_shadow to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i.i79, ptr %mfw_mb_shadow, align 4
  %11 = ptrtoint ptr %mfw_mb_cur to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mfw_mb_cur, align 8
  %tobool31.not = icmp eq ptr %12, null
  %tobool33.not = icmp eq ptr %call9.i.i79, null
  %or.cond = select i1 %tobool31.not, i1 true, i1 %tobool33.not
  br i1 %or.cond, label %if.end8.i.i80.err_crit_edge, label %if.end8.i.i80.cleanup_crit_edge

if.end8.i.i80.cleanup_crit_edge:                  ; preds = %if.end8.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i80.err_crit_edge:                      ; preds = %if.end8.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

err:                                              ; preds = %if.end8.i.i80.err_crit_edge, %entry.err_crit_edge
  %call36 = tail call i32 @qed_mcp_free(ptr noundef %p_hwfn)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end8.i.i80.cleanup_crit_edge, %do.end18, %do.body10.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err ], [ 0, %do.end18 ], [ 0, %do.body10.cleanup_crit_edge ], [ 0, %if.end8.i.i80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_load_mcp_offsets(ptr noundef %p_hwfn, ptr noundef %p_ptt) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  %2 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_hwfn, align 8
  %type = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %rel_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %6 = ptrtoint ptr %rel_pf_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rel_pf_id, align 1
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %abs_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %8 = ptrtoint ptr %abs_pf_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %abs_pf_id, align 2
  %10 = shl i8 %9, 3
  %11 = and i8 %10, 8
  %or199 = or i8 %11, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond.in = phi i8 [ %or199, %cond.true ], [ %7, %entry.cond.end_crit_edge ]
  %cond = zext i8 %cond.in to i32
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 35872) #11
  %public_base = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %public_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call, ptr %public_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.end22

do.body:                                          ; preds = %cond.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %13 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp6 = icmp ult i8 %14, 3
  br i1 %cmp6, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool12.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool12.not, ptr @.str.3, ptr %name
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.207, i32 noundef 178, ptr noundef nonnull %spec.select) #14
  br label %cleanup

if.end22:                                         ; preds = %cond.end
  %or24 = or i32 %call, 14680064
  %15 = ptrtoint ptr %public_base to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or24, ptr %public_base, align 4
  %add = add i32 %or24, 8
  %call26 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add) #11
  %and27 = shl i32 %call26, 2
  %shl28 = and i32 %and27, 262140
  %add29 = add nuw nsw i32 %shl28, 14811136
  %16 = lshr i32 %call26, 14
  %shl32 = and i32 %16, 262140
  %mul = mul nuw nsw i32 %shl32, %cond
  %add33 = add nuw nsw i32 %add29, %mul
  %mfw_mb_addr = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %mfw_mb_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add33, ptr %mfw_mb_addr, align 4
  %call36 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add33) #11
  %mfw_mb_length = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 16
  %storemerge204 = trunc i32 %call36 to i16
  %18 = ptrtoint ptr %mfw_mb_length to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %storemerge204, ptr %mfw_mb_length, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %storemerge204)
  %tobool39.not205 = icmp eq i16 %storemerge204, 0
  br i1 %tobool39.not205, label %if.end22.land.rhs_crit_edge, label %if.end22.if.end81_crit_edge

if.end22.if.end81_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.end22.land.rhs_crit_edge:                      ; preds = %if.end22
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.end22.land.rhs_crit_edge
  %cnt.0206 = phi i8 [ %dec, %while.body.land.rhs_crit_edge ], [ 20, %if.end22.land.rhs_crit_edge ]
  %dec = add nsw i8 %cnt.0206, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool41.not = icmp eq i8 %dec, 0
  br i1 %tobool41.not, label %do.body50, label %while.body

while.body:                                       ; preds = %land.rhs
  tail call void @msleep(i32 noundef 50) #11
  %19 = ptrtoint ptr %mfw_mb_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mfw_mb_addr, align 4
  %call45 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %20) #11
  %storemerge = trunc i32 %call45 to i16
  %21 = ptrtoint ptr %mfw_mb_length to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %storemerge, ptr %mfw_mb_length, align 8
  %tobool39.not = icmp eq i16 %storemerge, 0
  br i1 %tobool39.not, label %while.body.land.rhs_crit_edge, label %while.body.if.end81_crit_edge

while.body.if.end81_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

do.body50:                                        ; preds = %land.rhs
  %dp_level51 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %22 = ptrtoint ptr %dp_level51 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dp_level51, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp53 = icmp ult i8 %23, 3
  br i1 %cmp53, label %do.end64, label %do.body50.cleanup_crit_edge, !prof !663

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end64:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  %name66 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool68.not = icmp eq ptr %name66, null
  %spec.select200 = select i1 %tobool68.not, ptr @.str.3, ptr %name66
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.207, i32 noundef 210, ptr noundef nonnull %spec.select200, i32 noundef 1000) #14
  br label %cleanup

if.end81:                                         ; preds = %while.body.if.end81_crit_edge, %if.end22.if.end81_crit_edge
  %24 = ptrtoint ptr %public_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %public_base, align 4
  %add83 = add i32 %25, 4
  %call84 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add83) #11
  %and85 = shl i32 %call84, 2
  %shl87 = and i32 %and85, 262140
  %add88 = add nuw nsw i32 %shl87, 14811136
  %26 = lshr i32 %call84, 14
  %shl91 = and i32 %26, 262140
  %mul92 = mul nuw nsw i32 %shl91, %cond
  %add93 = add nuw nsw i32 %add88, %mul92
  %drv_mb_addr = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %drv_mb_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add93, ptr %drv_mb_addr, align 8
  %dp_level95 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %28 = ptrtoint ptr %dp_level95 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dp_level95, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp97 = icmp eq i8 %29, 0
  br i1 %cmp97, label %land.rhs99, label %if.end81.do.end127_crit_edge

if.end81.do.end127_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end127

land.rhs99:                                       ; preds = %if.end81
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %30 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dp_module, align 4
  %and100 = and i32 %31, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %land.rhs99.do.end127_crit_edge, label %do.end112, !prof !662

land.rhs99.do.end127_crit_edge:                   ; preds = %land.rhs99
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end127

do.end112:                                        ; preds = %land.rhs99
  call void @__sanitizer_cov_trace_pc() #13
  %name114 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool116.not = icmp eq ptr %name114, null
  %spec.select201 = select i1 %tobool116.not, ptr @.str.3, ptr %name114
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.207, i32 noundef 221, ptr noundef nonnull %spec.select201, i32 noundef %call84, i32 noundef %add93, i32 noundef %cond) #14
  br label %do.end127

do.end127:                                        ; preds = %do.end112, %land.rhs99.do.end127_crit_edge, %if.end81.do.end127_crit_edge
  %32 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mcp_info, align 8
  %drv_mb_addr129 = getelementptr inbounds %struct.qed_mcp_info, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %drv_mb_addr129 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %drv_mb_addr129, align 8
  %call131 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %35) #11
  %conv133 = trunc i32 %call131 to i16
  %drv_mb_seq = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 8
  %36 = ptrtoint ptr %drv_mb_seq to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv133, ptr %drv_mb_seq, align 4
  %37 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mcp_info, align 8
  %drv_mb_addr135 = getelementptr inbounds %struct.qed_mcp_info, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %drv_mb_addr135 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %drv_mb_addr135, align 8
  %add136 = add i32 %40, 16
  %call137 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add136) #11
  %41 = trunc i32 %call137 to i16
  %conv139 = and i16 %41, 32767
  %drv_pulse_seq = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 9
  %42 = ptrtoint ptr %drv_pulse_seq to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv139, ptr %drv_pulse_seq, align 2
  %call140 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 38612) #11
  %mcp_hist = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 17
  %43 = ptrtoint ptr %mcp_hist to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call140, ptr %mcp_hist, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end127, %do.end64, %do.body50.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end127 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -16, %do.end64 ], [ -16, %do.body50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_reset(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  %b_block_cmd = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %b_block_cmd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_block_cmd, align 4, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end11, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ult i8 %5, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 302, ptr noundef nonnull %spec.select) #14
  br label %cleanup

if.end11:                                         ; preds = %entry
  %cmd_lock = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #11
  %call13 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 38612) #11
  %call.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 38612) #11
  %6 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcp_info, align 8
  %mcp_hist.i = getelementptr inbounds %struct.qed_mcp_info, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %mcp_hist.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mcp_hist.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call.i)
  %cmp.not.i = icmp eq i32 %9, %call.i
  br i1 %cmp.not.i, label %if.end11.qed_mcp_reread_offsets.exit_crit_edge, label %do.body.i

if.end11.qed_mcp_reread_offsets.exit_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_reread_offsets.exit

do.body.i:                                        ; preds = %if.end11
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %10 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp1.i = icmp eq i8 %11, 0
  br i1 %cmp1.i, label %land.rhs.i, label %do.body.i.do.end14.i_crit_edge

do.body.i.do.end14.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14.i

land.rhs.i:                                       ; preds = %do.body.i
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %12 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %13, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.do.end14.i_crit_edge, label %do.end.i, !prof !662

land.rhs.i.do.end14.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.215, i32 noundef 288, ptr noundef nonnull %name.i, i32 noundef %9, i32 noundef %call.i) #14
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end.i, %land.rhs.i.do.end14.i_crit_edge, %do.body.i.do.end14.i_crit_edge
  %call15.i = tail call fastcc i32 @qed_load_mcp_offsets(ptr noundef %p_hwfn, ptr noundef %p_ptt) #11
  tail call void @qed_mcp_cmd_port_init(ptr noundef %p_hwfn, ptr noundef %p_ptt) #11
  br label %qed_mcp_reread_offsets.exit

qed_mcp_reread_offsets.exit:                      ; preds = %do.end14.i, %if.end11.qed_mcp_reread_offsets.exit_crit_edge
  %14 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mcp_info, align 8
  %drv_mb_seq = getelementptr inbounds %struct.qed_mcp_info, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %drv_mb_seq to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %drv_mb_seq, align 4
  %inc = add i16 %17, 1
  store i16 %inc, ptr %drv_mb_seq, align 4
  %conv15 = zext i16 %inc to i32
  %18 = load ptr, ptr %mcp_info, align 8
  %drv_mb_addr = getelementptr inbounds %struct.qed_mcp_info, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %drv_mb_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %drv_mb_addr, align 8
  %or = or i32 %conv15, 589824
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %20, i32 noundef %or) #11
  br label %do.body17

do.body17:                                        ; preds = %land.rhs.do.body17_crit_edge, %qed_mcp_reread_offsets.exit
  %cnt.0 = phi i32 [ 0, %qed_mcp_reread_offsets.exit ], [ %inc30, %land.rhs.do.body17_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #11
  %call27 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 38612) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %call27)
  %cmp28 = icmp eq i32 %call13, %call27
  br i1 %cmp28, label %land.rhs, label %do.body17.do.end33_crit_edge

do.body17.do.end33_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

land.rhs:                                         ; preds = %do.body17
  %inc30 = add nuw nsw i32 %cnt.0, 1
  %exitcond.not = icmp eq i32 %inc30, 50001
  br i1 %exitcond.not, label %land.rhs.do.end33_crit_edge, label %land.rhs.do.body17_crit_edge

land.rhs.do.body17_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body17

land.rhs.do.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

do.end33:                                         ; preds = %land.rhs.do.end33_crit_edge, %do.body17.do.end33_crit_edge
  %cnt.1 = phi i32 [ 50001, %land.rhs.do.end33_crit_edge ], [ %cnt.0, %do.body17.do.end33_crit_edge ]
  %call34 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 38612) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %call34)
  %cmp35.not = icmp eq i32 %call13, %call34
  br i1 %cmp35.not, label %do.end74, label %do.body38

do.body38:                                        ; preds = %do.end33
  %dp_level39 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %22 = ptrtoint ptr %dp_level39 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dp_level39, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp41 = icmp eq i8 %23, 0
  br i1 %cmp41, label %land.rhs43, label %do.body38.if.end88_crit_edge

do.body38.if.end88_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

land.rhs43:                                       ; preds = %do.body38
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %24 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dp_module, align 4
  %and = and i32 %25, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %land.rhs43.if.end88_crit_edge, label %do.end55, !prof !662

land.rhs43.if.end88_crit_edge:                    ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

do.end55:                                         ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #13
  %name57 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool59.not = icmp eq ptr %name57, null
  %spec.select123 = select i1 %tobool59.not, ptr @.str.3, ptr %name57
  %mul66 = mul i32 %cnt.1, 10
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef 327, ptr noundef nonnull %spec.select123, i32 noundef %mul66) #14
  br label %if.end88

do.end74:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  %name76 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool78.not = icmp eq ptr %name76, null
  %spec.select124 = select i1 %tobool78.not, ptr @.str.3, ptr %name76
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.10, i32 noundef 329, ptr noundef nonnull %spec.select124) #14
  br label %if.end88

if.end88:                                         ; preds = %do.end74, %do.end55, %land.rhs43.if.end88_crit_edge, %do.body38.if.end88_crit_edge
  %rc.0 = phi i32 [ 0, %do.end55 ], [ 0, %land.rhs43.if.end88_crit_edge ], [ -11, %do.end74 ], [ 0, %do.body38.if.end88_crit_edge ]
  %26 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mcp_info, align 8
  %cmd_lock90 = getelementptr inbounds %struct.qed_mcp_info, ptr %27, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock90) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end88 ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_wr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_cmd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %cmd, i32 noundef %param, ptr nocapture noundef writeonly %o_mcp_resp, ptr nocapture noundef writeonly %o_mcp_param) local_unnamed_addr #1 align 64 {
entry:
  %mb_params = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params) #11
  %0 = getelementptr inbounds i8, ptr %mb_params, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = ptrtoint ptr %mb_params to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cmd, ptr %mb_params, align 4
  %param2 = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 1
  %3 = ptrtoint ptr %param2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %param, ptr %param2, align 4
  %call = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mcp_resp = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 6
  %4 = ptrtoint ptr %mcp_resp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mcp_resp, align 4
  %6 = ptrtoint ptr %o_mcp_resp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %o_mcp_resp, align 4
  %mcp_param = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 7
  %7 = ptrtoint ptr %mcp_param to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mcp_param, align 4
  %9 = ptrtoint ptr %o_mcp_param to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %o_mcp_param, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %p_mb_params) unnamed_addr #1 align 64 {
entry:
  %union_data.i.i = alloca %union.drv_union_data, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcp_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %qed_mcp_is_init.exit

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

qed_mcp_is_init.exit:                             ; preds = %entry
  %public_base.i = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %public_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %public_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.i.not = icmp eq i32 %3, 0
  br i1 %tobool2.not.i.not, label %qed_mcp_is_init.exit.do.body_crit_edge, label %if.end11

qed_mcp_is_init.exit.do.body_crit_edge:           ; preds = %qed_mcp_is_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %qed_mcp_is_init.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ult i8 %5, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.216, i32 noundef 588, ptr noundef nonnull %spec.select) #14
  br label %cleanup

if.end11:                                         ; preds = %qed_mcp_is_init.exit
  %b_block_cmd = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %b_block_cmd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %b_block_cmd, align 4, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not = icmp eq i8 %7, 0
  br i1 %tobool12.not, label %if.end43, label %do.body14

do.body14:                                        ; preds = %if.end11
  %dp_level15 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %8 = ptrtoint ptr %dp_level15 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level15, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp17 = icmp ult i8 %9, 3
  br i1 %cmp17, label %do.end28, label %do.body14.cleanup_crit_edge, !prof !663

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end28:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  %name30 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool32.not = icmp eq ptr %name30, null
  %spec.select104 = select i1 %tobool32.not, ptr @.str.3, ptr %name30
  %10 = ptrtoint ptr %p_mb_params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p_mb_params, align 4
  %param = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %p_mb_params, i32 0, i32 1
  %12 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %param, align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.216, i32 noundef 595, ptr noundef nonnull %spec.select104, i32 noundef %11, i32 noundef %13) #14
  br label %cleanup

if.end43:                                         ; preds = %if.end11
  %data_src_size = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %p_mb_params, i32 0, i32 4
  %14 = ptrtoint ptr %data_src_size to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data_src_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %15)
  %cmp45 = icmp ugt i8 %15, 32
  br i1 %cmp45, label %if.end43.do.end54_crit_edge, label %lor.lhs.false

if.end43.do.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end54

lor.lhs.false:                                    ; preds = %if.end43
  %data_dst_size = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %p_mb_params, i32 0, i32 5
  %16 = ptrtoint ptr %data_dst_size to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data_dst_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %17)
  %cmp48 = icmp ugt i8 %17, 32
  br i1 %cmp48, label %lor.lhs.false.do.end54_crit_edge, label %if.end72

lor.lhs.false.do.end54_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end54

do.end54:                                         ; preds = %lor.lhs.false.do.end54_crit_edge, %if.end43.do.end54_crit_edge
  %name56 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool58.not = icmp eq ptr %name56, null
  %spec.select105 = select i1 %tobool58.not, ptr @.str.3, ptr %name56
  %conv66 = zext i8 %15 to i32
  %data_dst_size67 = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %p_mb_params, i32 0, i32 5
  %18 = ptrtoint ptr %data_dst_size67 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data_dst_size67, align 1
  %conv68 = zext i8 %19 to i32
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.216, i32 noundef 604, ptr noundef nonnull %spec.select105, i32 noundef %conv66, i32 noundef %conv68, i32 noundef 32) #14
  br label %cleanup

if.end72:                                         ; preds = %lor.lhs.false
  %tobool74.not = icmp eq ptr %p_mb_params, null
  br i1 %tobool74.not, label %if.end72..thread_crit_edge, label %land.end

if.end72..thread_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %.thread

land.end:                                         ; preds = %if.end72
  %flags = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %p_mb_params, i32 0, i32 8
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool75.not = icmp eq i32 %and, 0
  br i1 %tobool75.not, label %land.end..thread_crit_edge, label %land.end._crit_edge

land.end._crit_edge:                              ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %22

land.end..thread_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %.thread

.thread:                                          ; preds = %land.end..thread_crit_edge, %if.end72..thread_crit_edge
  br label %22

22:                                               ; preds = %.thread, %land.end._crit_edge
  %23 = phi i32 [ 10, %.thread ], [ 10000, %land.end._crit_edge ]
  %24 = phi i32 [ 500000, %.thread ], [ 500, %land.end._crit_edge ]
  %25 = trunc i32 %23 to i16
  %div.i.lhs.trunc = add nuw nsw i16 %25, 999
  %div.i111 = udiv i16 %div.i.lhs.trunc, 1000
  %div.i.zext = zext i16 %div.i111 to i32
  %flags.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %p_mb_params, i32 0, i32 8
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %22
  %cnt.0.i = phi i32 [ 0, %22 ], [ %inc.i, %do.cond.i.do.body.i_crit_edge ]
  %26 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mcp_info.i, align 8
  %cmd_lock.i = getelementptr inbounds %struct.qed_mcp_info, ptr %27, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock.i) #11
  %28 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mcp_info.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %29, align 4
  %cmp.i.not.i.i = icmp eq ptr %31, %29
  br i1 %cmp.i.not.i.i, label %do.body.i.do.end.i_crit_edge, label %qed_mcp_has_pending_cmd.exit.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

qed_mcp_has_pending_cmd.exit.i:                   ; preds = %do.body.i
  %b_is_completed.i.i = getelementptr inbounds %struct.qed_mcp_cmd_elem, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %b_is_completed.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %b_is_completed.i.i, align 2, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool3.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool3.not.i.i, label %if.end.i, label %qed_mcp_has_pending_cmd.exit.i.do.end.i_crit_edge

qed_mcp_has_pending_cmd.exit.i.do.end.i_crit_edge: ; preds = %qed_mcp_has_pending_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end.i:                                         ; preds = %qed_mcp_has_pending_cmd.exit.i
  %call1.i = tail call fastcc i32 @qed_mcp_update_pending_cmd(ptr noundef %p_hwfn, ptr noundef %p_ptt) #11
  %34 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i, label %if.end.i.err.i_crit_edge [
    i32 0, label %if.end.i.do.end.i_crit_edge
    i32 -11, label %if.end5.i
  ]

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end.i.err.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err.i

if.end5.i:                                        ; preds = %if.end.i
  %35 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mcp_info.i, align 8
  %cmd_lock7.i = getelementptr inbounds %struct.qed_mcp_info, ptr %36, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock7.i) #11
  br i1 %tobool74.not, label %if.end5.i.cond.false15.i_crit_edge, label %land.rhs.i

if.end5.i.cond.false15.i_crit_edge:               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false15.i

land.rhs.i:                                       ; preds = %if.end5.i
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %land.rhs.i.cond.false15.i_crit_edge, label %if.then11.i

land.rhs.i.cond.false15.i_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false15.i

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef %div.i.zext) #11
  br label %do.cond.i

cond.false15.i:                                   ; preds = %land.rhs.i.cond.false15.i_crit_edge, %if.end5.i.cond.false15.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %23) #11
  br label %do.cond.i

do.cond.i:                                        ; preds = %cond.false15.i, %if.then11.i
  %inc.i = add nuw nsw i32 %cnt.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %do.cond.i.do.body21.i_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.cond.i.do.body21.i_crit_edge:                  ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %qed_mcp_has_pending_cmd.exit.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0.i, i32 %24)
  %cmp19.not.i = icmp ult i32 %cnt.0.i, %24
  br i1 %cmp19.not.i, label %if.end41.i, label %do.end.i.do.body21.i_crit_edge

do.end.i.do.body21.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21.i

do.body21.i:                                      ; preds = %do.end.i.do.body21.i_crit_edge, %do.cond.i.do.body21.i_crit_edge
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %40 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %cmp22.i = icmp ult i8 %41, 3
  br i1 %cmp22.i, label %do.end29.i, label %do.body21.i.cleanup_crit_edge, !prof !663

do.body21.i.cleanup_crit_edge:                    ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end29.i:                                       ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %42 = ptrtoint ptr %p_mb_params to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %p_mb_params, align 4
  %param.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %p_mb_params, i32 0, i32 1
  %44 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %param.i, align 4
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.224, i32 noundef 498, ptr noundef nonnull %name.i, i32 noundef %43, i32 noundef %45) #14
  br label %cleanup

if.end41.i:                                       ; preds = %do.end.i
  %call.i.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 38612) #11
  %46 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mcp_info.i, align 8
  %mcp_hist.i.i = getelementptr inbounds %struct.qed_mcp_info, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %mcp_hist.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mcp_hist.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %49, %call.i.i
  br i1 %cmp.not.i.i, label %if.end41.i.qed_mcp_reread_offsets.exit.i_crit_edge, label %do.body.i.i

if.end41.i.qed_mcp_reread_offsets.exit.i_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_reread_offsets.exit.i

do.body.i.i:                                      ; preds = %if.end41.i
  %dp_level.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %50 = ptrtoint ptr %dp_level.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dp_level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp1.i.i = icmp eq i8 %51, 0
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %do.body.i.i.do.end14.i.i_crit_edge

do.body.i.i.do.end14.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14.i.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %dp_module.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %52 = ptrtoint ptr %dp_module.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dp_module.i.i, align 4
  %and.i.i = and i32 %53, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.do.end14.i.i_crit_edge, label %do.end.i.i, !prof !662

land.rhs.i.i.do.end14.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.215, i32 noundef 288, ptr noundef nonnull %name.i.i, i32 noundef %49, i32 noundef %call.i.i) #14
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end.i.i, %land.rhs.i.i.do.end14.i.i_crit_edge, %do.body.i.i.do.end14.i.i_crit_edge
  %call15.i.i = tail call fastcc i32 @qed_load_mcp_offsets(ptr noundef %p_hwfn, ptr noundef %p_ptt) #11
  tail call void @qed_mcp_cmd_port_init(ptr noundef %p_hwfn, ptr noundef %p_ptt) #11
  br label %qed_mcp_reread_offsets.exit.i

qed_mcp_reread_offsets.exit.i:                    ; preds = %do.end14.i.i, %if.end41.i.qed_mcp_reread_offsets.exit.i_crit_edge
  %54 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mcp_info.i, align 8
  %drv_mb_seq.i = getelementptr inbounds %struct.qed_mcp_info, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %drv_mb_seq.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %drv_mb_seq.i, align 4
  %inc43.i = add i16 %57, 1
  store i16 %inc43.i, ptr %drv_mb_seq.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 2848, i32 noundef 16) #15
  %tobool.not.i271.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i271.i, label %qed_mcp_reread_offsets.exit.i.err.i_crit_edge, label %if.end.i.i

qed_mcp_reread_offsets.exit.i.err.i_crit_edge:    ; preds = %qed_mcp_reread_offsets.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err.i

if.end.i.i:                                       ; preds = %qed_mcp_reread_offsets.exit.i
  %p_mb_params1.i.i = getelementptr inbounds %struct.qed_mcp_cmd_elem, ptr %call7.i.i.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %p_mb_params1.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %p_mb_params, ptr %p_mb_params1.i.i, align 8
  %expected_seq_num2.i.i = getelementptr inbounds %struct.qed_mcp_cmd_elem, ptr %call7.i.i.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %expected_seq_num2.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %inc43.i, ptr %expected_seq_num2.i.i, align 4
  %61 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mcp_info.i, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %62, ptr noundef %64) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.if.end47.i_crit_edge

if.end.i.i.if.end47.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i.i.i, ptr %prev1.i.i.i.i, align 4
  %66 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %64, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %62, ptr %prev3.i.i.i.i, align 4
  %68 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call7.i.i.i.i, ptr %62, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end.i.i.i.i, %if.end.i.i.if.end47.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %union_data.i.i) #11
  %69 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mcp_info.i, align 8
  %drv_mb_addr.i.i = getelementptr inbounds %struct.qed_mcp_info, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %drv_mb_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %drv_mb_addr.i.i, align 8
  %add.i.i = add i32 %72, 24
  %73 = call ptr @memset(ptr %union_data.i.i, i32 0, i32 32)
  %p_data_src.i.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %p_mb_params, i32 0, i32 2
  %74 = ptrtoint ptr %p_data_src.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %p_data_src.i.i, align 4
  %tobool.not.i274.i = icmp eq ptr %75, null
  br i1 %tobool.not.i274.i, label %if.end47.i.if.end.i277.i_crit_edge, label %land.lhs.true.i.i

if.end47.i.if.end.i277.i_crit_edge:               ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i277.i

land.lhs.true.i.i:                                ; preds = %if.end47.i
  %76 = ptrtoint ptr %data_src_size to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %data_src_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool1.not.i.i = icmp eq i8 %77, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end.i277.i_crit_edge, label %if.then.i275.i

land.lhs.true.i.i.if.end.i277.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i277.i

if.then.i275.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i8 %77 to i32
  %78 = call ptr @memcpy(ptr %union_data.i.i, ptr %75, i32 %conv.i.i)
  br label %if.end.i277.i

if.end.i277.i:                                    ; preds = %if.then.i275.i, %land.lhs.true.i.i.if.end.i277.i_crit_edge, %if.end47.i.if.end.i277.i_crit_edge
  call void @qed_memcpy_to(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.i.i, ptr noundef nonnull %union_data.i.i, i32 noundef 32) #11
  %79 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mcp_info.i, align 8
  %drv_mb_addr6.i.i = getelementptr inbounds %struct.qed_mcp_info, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %drv_mb_addr6.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %drv_mb_addr6.i.i, align 8
  %add7.i.i = add i32 %82, 4
  %param.i.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %p_mb_params, i32 0, i32 1
  %83 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %param.i.i, align 4
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add7.i.i, i32 noundef %84) #11
  %85 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mcp_info.i, align 8
  %drv_mb_addr9.i.i = getelementptr inbounds %struct.qed_mcp_info, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %drv_mb_addr9.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %drv_mb_addr9.i.i, align 8
  %89 = ptrtoint ptr %p_mb_params to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %p_mb_params, align 4
  %conv11.i.i = zext i16 %inc43.i to i32
  %or.i.i = or i32 %90, %conv11.i.i
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %88, i32 noundef %or.i.i) #11
  %dp_level.i276.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %91 = ptrtoint ptr %dp_level.i276.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %dp_level.i276.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp.i.i = icmp eq i8 %92, 0
  br i1 %cmp.i.i, label %land.rhs.i280.i, label %if.end.i277.i.__qed_mcp_cmd_and_union.exit.i_crit_edge

if.end.i277.i.__qed_mcp_cmd_and_union.exit.i_crit_edge: ; preds = %if.end.i277.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__qed_mcp_cmd_and_union.exit.i

land.rhs.i280.i:                                  ; preds = %if.end.i277.i
  %dp_module.i278.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %93 = ptrtoint ptr %dp_module.i278.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dp_module.i278.i, align 4
  %and.i279.i = and i32 %94, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i279.i)
  %tobool14.not.i.i = icmp eq i32 %and.i279.i, 0
  br i1 %tobool14.not.i.i, label %land.rhs.i280.i.__qed_mcp_cmd_and_union.exit.i_crit_edge, label %do.end.i283.i, !prof !662

land.rhs.i280.i.__qed_mcp_cmd_and_union.exit.i_crit_edge: ; preds = %land.rhs.i280.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__qed_mcp_cmd_and_union.exit.i

do.end.i283.i:                                    ; preds = %land.rhs.i280.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i281.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %95 = ptrtoint ptr %p_mb_params to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %p_mb_params, align 4
  %or24.i.i = or i32 %96, %conv11.i.i
  %97 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %param.i.i, align 4
  %call.i282.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.234, i32 noundef 428, ptr noundef nonnull %name.i281.i, i32 noundef %or24.i.i, i32 noundef %98) #14
  br label %__qed_mcp_cmd_and_union.exit.i

__qed_mcp_cmd_and_union.exit.i:                   ; preds = %do.end.i283.i, %land.rhs.i280.i.__qed_mcp_cmd_and_union.exit.i_crit_edge, %if.end.i277.i.__qed_mcp_cmd_and_union.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %union_data.i.i) #11
  %99 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mcp_info.i, align 8
  %cmd_lock49.i = getelementptr inbounds %struct.qed_mcp_info, ptr %100, i32 0, i32 1
  call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock49.i) #11
  %b_is_completed.i = getelementptr inbounds %struct.qed_mcp_cmd_elem, ptr %call7.i.i.i.i, i32 0, i32 3
  br label %do.body50.i

do.body50.i:                                      ; preds = %if.end86.i.do.body50.i_crit_edge, %__qed_mcp_cmd_and_union.exit.i
  %cnt.2.i = phi i32 [ %cnt.0.i, %__qed_mcp_cmd_and_union.exit.i ], [ %inc90.i, %if.end86.i.do.body50.i_crit_edge ]
  br i1 %tobool74.not, label %do.body50.i.cond.false70.i_crit_edge, label %land.rhs54.i

do.body50.i.cond.false70.i_crit_edge:             ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false70.i

land.rhs54.i:                                     ; preds = %do.body50.i
  %101 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags.i, align 4
  %and56.i = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %land.rhs54.i.cond.false70.i_crit_edge, label %if.then61.i

land.rhs54.i.cond.false70.i_crit_edge:            ; preds = %land.rhs54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false70.i

if.then61.i:                                      ; preds = %land.rhs54.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @msleep(i32 noundef %div.i.zext) #11
  br label %if.end72.i

cond.false70.i:                                   ; preds = %land.rhs54.i.cond.false70.i_crit_edge, %do.body50.i.cond.false70.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %103(i32 noundef %23) #11
  br label %if.end72.i

if.end72.i:                                       ; preds = %cond.false70.i, %if.then61.i
  %104 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mcp_info.i, align 8
  %cmd_lock74.i = getelementptr inbounds %struct.qed_mcp_info, ptr %105, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %cmd_lock74.i) #11
  %106 = ptrtoint ptr %b_is_completed.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %b_is_completed.i, align 2, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool75.not.i = icmp eq i8 %107, 0
  br i1 %tobool75.not.i, label %if.end77.i, label %if.end72.i.do.end93.i_crit_edge

if.end72.i.do.end93.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end93.i

if.end77.i:                                       ; preds = %if.end72.i
  %call78.i = call fastcc i32 @qed_mcp_update_pending_cmd(ptr noundef %p_hwfn, ptr noundef %p_ptt) #11
  %108 = zext i32 %call78.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.363)
  switch i32 %call78.i, label %if.end77.i.err.i_crit_edge [
    i32 0, label %if.end77.i.do.end93.i_crit_edge
    i32 -11, label %if.end86.i
  ]

if.end77.i.do.end93.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end93.i

if.end77.i.err.i_crit_edge:                       ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err.i

if.end86.i:                                       ; preds = %if.end77.i
  %109 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mcp_info.i, align 8
  %cmd_lock88.i = getelementptr inbounds %struct.qed_mcp_info, ptr %110, i32 0, i32 1
  call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock88.i) #11
  %inc90.i = add nuw nsw i32 %cnt.2.i, 1
  %cmp91.i = icmp ult i32 %inc90.i, %24
  br i1 %cmp91.i, label %if.end86.i.do.body50.i_crit_edge, label %if.end86.i.do.body97.i_crit_edge

if.end86.i.do.body97.i_crit_edge:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body97.i

if.end86.i.do.body50.i_crit_edge:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50.i

do.end93.i:                                       ; preds = %if.end77.i.do.end93.i_crit_edge, %if.end72.i.do.end93.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.2.i, i32 %24)
  %cmp94.not.i = icmp ult i32 %cnt.2.i, %24
  br i1 %cmp94.not.i, label %if.end144.i, label %do.end93.i.do.body97.i_crit_edge

do.end93.i.do.body97.i_crit_edge:                 ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body97.i

do.body97.i:                                      ; preds = %do.end93.i.do.body97.i_crit_edge, %if.end86.i.do.body97.i_crit_edge
  %111 = ptrtoint ptr %dp_level.i276.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %dp_level.i276.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %112)
  %cmp100.i = icmp ult i8 %112, 3
  br i1 %cmp100.i, label %do.end111.i, label %do.body97.i.do.end127.i_crit_edge, !prof !663

do.body97.i.do.end127.i_crit_edge:                ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end127.i

do.end111.i:                                      ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #13
  %name113.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %113 = ptrtoint ptr %p_mb_params to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %p_mb_params, align 4
  %115 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %param.i.i, align 4
  %call124.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.224, i32 noundef 543, ptr noundef nonnull %name113.i, i32 noundef %114, i32 noundef %116) #14
  br label %do.end127.i

do.end127.i:                                      ; preds = %do.end111.i, %do.body97.i.do.end127.i_crit_edge
  call fastcc void @qed_mcp_print_cpu_info(ptr noundef %p_hwfn, ptr noundef %p_ptt) #11
  %117 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mcp_info.i, align 8
  %cmd_lock129.i = getelementptr inbounds %struct.qed_mcp_info, ptr %118, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %cmd_lock129.i) #11
  call fastcc void @qed_mcp_cmd_del_elem(ptr noundef nonnull %call7.i.i.i.i) #11
  %119 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mcp_info.i, align 8
  %cmd_lock131.i = getelementptr inbounds %struct.qed_mcp_info, ptr %120, i32 0, i32 1
  call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock131.i) #11
  br i1 %tobool74.not, label %do.end127.i.if.then142.i_crit_edge, label %land.rhs135.i

do.end127.i.if.then142.i_crit_edge:               ; preds = %do.end127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then142.i

land.rhs135.i:                                    ; preds = %do.end127.i
  %121 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %flags.i, align 4
  %and137.i = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137.i)
  %tobool138.not.i = icmp eq i32 %and137.i, 0
  br i1 %tobool138.not.i, label %land.rhs135.i.if.then142.i_crit_edge, label %land.rhs135.i.if.end143.i_crit_edge

land.rhs135.i.if.end143.i_crit_edge:              ; preds = %land.rhs135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143.i

land.rhs135.i.if.then142.i_crit_edge:             ; preds = %land.rhs135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then142.i

if.then142.i:                                     ; preds = %land.rhs135.i.if.then142.i_crit_edge, %do.end127.i.if.then142.i_crit_edge
  call fastcc void @qed_mcp_cmd_set_blocking(ptr noundef %p_hwfn, i1 noundef zeroext true) #11
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.then142.i, %land.rhs135.i.if.end143.i_crit_edge
  call void (ptr, ptr, i32, ptr, ...) @qed_hw_err_notify(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1, ptr noundef null) #14
  br label %cleanup

if.end144.i:                                      ; preds = %do.end93.i
  %call.i.i.i284.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i.i) #11
  br i1 %call.i.i.i284.i, label %if.end.i.i.i285.i, label %if.end144.i.qed_mcp_cmd_del_elem.exit.i_crit_edge

if.end144.i.qed_mcp_cmd_del_elem.exit.i_crit_edge: ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_cmd_del_elem.exit.i

if.end.i.i.i285.i:                                ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %prev.i.i.i.i, align 4
  %125 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %call7.i.i.i.i, align 8
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %124, ptr %prev1.i.i.i.i.i, align 4
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %126, ptr %124, align 4
  br label %qed_mcp_cmd_del_elem.exit.i

qed_mcp_cmd_del_elem.exit.i:                      ; preds = %if.end.i.i.i285.i, %if.end144.i.qed_mcp_cmd_del_elem.exit.i_crit_edge
  %129 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %130 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  %131 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mcp_info.i, align 8
  %cmd_lock146.i = getelementptr inbounds %struct.qed_mcp_info, ptr %132, i32 0, i32 1
  call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock146.i) #11
  %133 = ptrtoint ptr %dp_level.i276.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %dp_level.i276.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %cmp150.i = icmp eq i8 %134, 0
  br i1 %cmp150.i, label %land.rhs152.i, label %qed_mcp_cmd_del_elem.exit.i.do.end183.i_crit_edge

qed_mcp_cmd_del_elem.exit.i.do.end183.i_crit_edge: ; preds = %qed_mcp_cmd_del_elem.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end183.i

land.rhs152.i:                                    ; preds = %qed_mcp_cmd_del_elem.exit.i
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %135 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dp_module.i, align 4
  %and153.i = and i32 %136, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153.i)
  %tobool154.not.i = icmp eq i32 %and153.i, 0
  br i1 %tobool154.not.i, label %land.rhs152.i.do.end183.i_crit_edge, label %do.end166.i, !prof !662

land.rhs152.i.do.end183.i_crit_edge:              ; preds = %land.rhs152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end183.i

do.end166.i:                                      ; preds = %land.rhs152.i
  call void @__sanitizer_cov_trace_pc() #13
  %name168.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %mcp_resp.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %p_mb_params, i32 0, i32 6
  %137 = ptrtoint ptr %mcp_resp.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %mcp_resp.i, align 4
  %mcp_param.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %p_mb_params, i32 0, i32 7
  %139 = ptrtoint ptr %mcp_param.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %mcp_param.i, align 4
  %mul177.i = mul i32 %cnt.2.i, %23
  %mul177.i.frozen = freeze i32 %mul177.i
  %div178.i = udiv i32 %mul177.i.frozen, 1000
  %141 = mul i32 %div178.i, 1000
  %rem.i.decomposed = sub i32 %mul177.i.frozen, %141
  %call180.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.224, i32 noundef 566, ptr noundef nonnull %name168.i, i32 noundef %138, i32 noundef %140, i32 noundef %div178.i, i32 noundef %rem.i.decomposed) #14
  br label %do.end183.i

do.end183.i:                                      ; preds = %do.end166.i, %land.rhs152.i.do.end183.i_crit_edge, %qed_mcp_cmd_del_elem.exit.i.do.end183.i_crit_edge
  %mcp_resp184.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %p_mb_params, i32 0, i32 6
  %142 = ptrtoint ptr %mcp_resp184.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %mcp_resp184.i, align 4
  %and185.i = and i32 %143, -65536
  store i32 %and185.i, ptr %mcp_resp184.i, align 4
  br label %cleanup

err.i:                                            ; preds = %if.end77.i.err.i_crit_edge, %qed_mcp_reread_offsets.exit.i.err.i_crit_edge, %if.end.i.err.i_crit_edge
  %rc.0.i = phi i32 [ -12, %qed_mcp_reread_offsets.exit.i.err.i_crit_edge ], [ %call78.i, %if.end77.i.err.i_crit_edge ], [ %call1.i, %if.end.i.err.i_crit_edge ]
  %144 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mcp_info.i, align 8
  %cmd_lock187.i = getelementptr inbounds %struct.qed_mcp_info, ptr %145, i32 0, i32 1
  call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock187.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err.i, %do.end183.i, %if.end143.i, %do.end29.i, %do.body21.i.cleanup_crit_edge, %do.end54, %do.end28, %do.body14.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end54 ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ], [ -16, %do.end28 ], [ -16, %do.body14.cleanup_crit_edge ], [ %rc.0.i, %err.i ], [ -11, %if.end143.i ], [ 0, %do.end183.i ], [ -11, %do.end29.i ], [ -11, %do.body21.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_nvm_rd_cmd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %cmd, i32 noundef %param, ptr nocapture noundef writeonly %o_mcp_resp, ptr nocapture noundef writeonly %o_mcp_param, ptr nocapture noundef writeonly %o_txn_size, ptr nocapture noundef writeonly %o_buf, i1 noundef zeroext %b_can_sleep) local_unnamed_addr #1 align 64 {
entry:
  %mb_params = alloca %struct.qed_mcp_mb_params, align 4
  %raw_data = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_data) #11
  %0 = call ptr @memset(ptr %raw_data, i32 255, i32 32)
  %1 = getelementptr inbounds i8, ptr %mb_params, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 24)
  %3 = ptrtoint ptr %mb_params to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cmd, ptr %mb_params, align 4
  %param2 = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 1
  %4 = ptrtoint ptr %param2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %param, ptr %param2, align 4
  %p_data_dst = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 3
  %5 = ptrtoint ptr %p_data_dst to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %raw_data, ptr %p_data_dst, align 4
  %data_dst_size = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 5
  %6 = ptrtoint ptr %data_dst_size to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %data_dst_size, align 1
  br i1 %b_can_sleep, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 8
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mcp_resp = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 6
  %8 = ptrtoint ptr %mcp_resp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mcp_resp, align 4
  %10 = ptrtoint ptr %o_mcp_resp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %o_mcp_resp, align 4
  %mcp_param = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 7
  %11 = ptrtoint ptr %mcp_param to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mcp_param, align 4
  %13 = ptrtoint ptr %o_mcp_param to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %o_mcp_param, align 4
  %14 = ptrtoint ptr %o_txn_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %o_txn_size, align 4
  %15 = call ptr @memcpy(ptr %o_buf, ptr %raw_data, i32 %12)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_data) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_load_req(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef %p_params) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i.i = alloca %struct.qed_mcp_mb_params, align 4
  %out_params = alloca %struct.qed_load_req_out_params, align 4
  %in_params = alloca %struct.qed_load_req_in_params, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %out_params) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %in_params) #11
  %drv_ver_1 = getelementptr inbounds %struct.qed_load_req_in_params, ptr %in_params, i32 0, i32 2
  %0 = ptrtoint ptr %in_params to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %in_params, align 8
  %1 = ptrtoint ptr %drv_ver_1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 115, ptr %drv_ver_1, align 8
  %fw_ver = getelementptr inbounds %struct.qed_load_req_in_params, ptr %in_params, i32 0, i32 3
  %2 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 138084608, ptr %fw_ver, align 4
  %3 = ptrtoint ptr %p_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p_params, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.364)
  switch i32 %4, label %eocre_get_mfw_drv_role.exit [
    i32 0, label %entry.if.end_crit_edge
    i32 1, label %sw.bb1.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

eocre_get_mfw_drv_role.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.238, i32 noundef 909, ptr noundef nonnull %name.i, i32 noundef %4) #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb1.i, %entry.if.end_crit_edge
  %cmp.i = phi i1 [ false, %sw.bb1.i ], [ true, %entry.if.end_crit_edge ]
  %cmp7.i = phi i1 [ true, %sw.bb1.i ], [ false, %entry.if.end_crit_edge ]
  %mfw_drv_role.0.ph = phi i8 [ 3, %sw.bb1.i ], [ 2, %entry.if.end_crit_edge ]
  %drv_role2 = getelementptr inbounds %struct.qed_load_req_in_params, ptr %in_params, i32 0, i32 4
  %6 = ptrtoint ptr %drv_role2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %mfw_drv_role.0.ph, ptr %drv_role2, align 8
  %timeout_val = getelementptr inbounds %struct.qed_load_req_params, ptr %p_params, i32 0, i32 1
  %7 = ptrtoint ptr %timeout_val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %timeout_val, align 4
  %timeout_val3 = getelementptr inbounds %struct.qed_load_req_in_params, ptr %in_params, i32 0, i32 5
  %9 = ptrtoint ptr %timeout_val3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %timeout_val3, align 1
  %force_cmd = getelementptr inbounds %struct.qed_load_req_in_params, ptr %in_params, i32 0, i32 6
  %10 = ptrtoint ptr %force_cmd to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %force_cmd, align 2
  %avoid_eng_reset = getelementptr inbounds %struct.qed_load_req_params, ptr %p_params, i32 0, i32 2
  %11 = ptrtoint ptr %avoid_eng_reset to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %avoid_eng_reset, align 1, !range !664
  %avoid_eng_reset5 = getelementptr inbounds %struct.qed_load_req_in_params, ptr %in_params, i32 0, i32 7
  %13 = ptrtoint ptr %avoid_eng_reset5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %avoid_eng_reset5, align 1
  %14 = call ptr @memset(ptr %out_params, i32 0, i32 20)
  %call6 = call fastcc i32 @__qed_mcp_load_req(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %in_params, ptr noundef nonnull %out_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %15 = ptrtoint ptr %out_params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out_params, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.365)
  switch i32 %16, label %if.end9.if.end148_crit_edge [
    i32 270598144, label %do.body
    i32 271581184, label %if.then32
  ]

if.end9.if.end148_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

do.body:                                          ; preds = %if.end9
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %18 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp11 = icmp ult i8 %19, 2
  br i1 %cmp11, label %do.end, label %do.body.do.end23_crit_edge, !prof !663

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool17.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool17.not, ptr @.str.3, ptr %name
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 975, ptr noundef nonnull %spec.select) #14
  br label %do.end23

do.end23:                                         ; preds = %do.end, %do.body.do.end23_crit_edge
  %20 = ptrtoint ptr %in_params to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %in_params, align 8
  %21 = call ptr @memset(ptr %out_params, i32 0, i32 20)
  %call25 = call fastcc i32 @__qed_mcp_load_req(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %in_params, ptr noundef nonnull %out_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.end23.if.end148thread-pre-split_crit_edge, label %do.end23.cleanup_crit_edge

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end23.if.end148thread-pre-split_crit_edge:     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148thread-pre-split

if.then32:                                        ; preds = %if.end9
  %exist_drv_role = getelementptr inbounds %struct.qed_load_req_out_params, ptr %out_params, i32 0, i32 4
  %22 = ptrtoint ptr %exist_drv_role to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %exist_drv_role, align 4
  %override_force_load = getelementptr inbounds %struct.qed_load_req_params, ptr %p_params, i32 0, i32 3
  %24 = ptrtoint ptr %override_force_load to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %override_force_load, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.366)
  switch i32 %25, label %sw.default.i [
    i32 1, label %if.then32.do.body36_crit_edge
    i32 2, label %if.then32.do.body77_crit_edge
  ]

if.then32.do.body77_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body77

if.then32.do.body36_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

sw.default.i:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp4.i = icmp eq i8 %23, 1
  %or.cond.i = and i1 %cmp.i, %cmp4.i
  br i1 %or.cond.i, label %sw.default.i.do.body36_crit_edge, label %qed_mcp_can_force_load.exit

sw.default.i.do.body36_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

qed_mcp_can_force_load.exit:                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp10.i = icmp eq i8 %23, 2
  %spec.select.i = and i1 %cmp7.i, %cmp10.i
  br i1 %spec.select.i, label %qed_mcp_can_force_load.exit.do.body36_crit_edge, label %qed_mcp_can_force_load.exit.do.body77_crit_edge

qed_mcp_can_force_load.exit.do.body77_crit_edge:  ; preds = %qed_mcp_can_force_load.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body77

qed_mcp_can_force_load.exit.do.body36_crit_edge:  ; preds = %qed_mcp_can_force_load.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

do.body36:                                        ; preds = %qed_mcp_can_force_load.exit.do.body36_crit_edge, %sw.default.i.do.body36_crit_edge, %if.then32.do.body36_crit_edge
  %mfw_drv_role.0277280 = phi i8 [ 3, %qed_mcp_can_force_load.exit.do.body36_crit_edge ], [ %mfw_drv_role.0.ph, %if.then32.do.body36_crit_edge ], [ 2, %sw.default.i.do.body36_crit_edge ]
  %dp_level37 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %27 = ptrtoint ptr %dp_level37 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dp_level37, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp39 = icmp ult i8 %28, 2
  br i1 %cmp39, label %do.end50, label %do.body36.do.end70_crit_edge, !prof !663

do.body36.do.end70_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70

do.end50:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  %name52 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool54.not = icmp eq ptr %name52, null
  %spec.select260 = select i1 %tobool54.not, ptr @.str.3, ptr %name52
  %conv62 = zext i8 %mfw_drv_role.0277280 to i32
  %drv_ver_0 = getelementptr inbounds %struct.qed_load_req_in_params, ptr %in_params, i32 0, i32 1
  %29 = ptrtoint ptr %drv_ver_0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %drv_ver_0, align 4
  %conv66 = zext i8 %23 to i32
  %exist_fw_ver = getelementptr inbounds %struct.qed_load_req_out_params, ptr %out_params, i32 0, i32 3
  %31 = ptrtoint ptr %exist_fw_ver to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %exist_fw_ver, align 4
  %exist_drv_ver_0 = getelementptr inbounds %struct.qed_load_req_out_params, ptr %out_params, i32 0, i32 1
  %33 = ptrtoint ptr %exist_drv_ver_0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %exist_drv_ver_0, align 4
  %exist_drv_ver_1 = getelementptr inbounds %struct.qed_load_req_out_params, ptr %out_params, i32 0, i32 2
  %35 = ptrtoint ptr %exist_drv_ver_1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %exist_drv_ver_1, align 4
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef 994, ptr noundef nonnull %spec.select260, i32 noundef %conv62, i32 noundef 138084608, i32 noundef %30, i32 noundef 115, i32 noundef %conv66, i32 noundef %32, i32 noundef %34, i32 noundef %36) #14
  br label %do.end70

do.end70:                                         ; preds = %do.end50, %do.body36.do.end70_crit_edge
  %37 = ptrtoint ptr %force_cmd to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %force_cmd, align 2
  %38 = call ptr @memset(ptr %out_params, i32 0, i32 20)
  %call72 = call fastcc i32 @__qed_mcp_load_req(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %in_params, ptr noundef nonnull %out_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %do.end70.if.end148thread-pre-split_crit_edge, label %do.end70.cleanup_crit_edge

do.end70.cleanup_crit_edge:                       ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end70.if.end148thread-pre-split_crit_edge:     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148thread-pre-split

do.body77:                                        ; preds = %qed_mcp_can_force_load.exit.do.body77_crit_edge, %if.then32.do.body77_crit_edge
  %dp_level78 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %39 = ptrtoint ptr %dp_level78 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dp_level78, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %cmp80 = icmp ult i8 %40, 3
  br i1 %cmp80, label %do.body116, label %do.body77.do.end144_crit_edge, !prof !663

do.body77.do.end144_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end144

do.body116:                                       ; preds = %do.body77
  %name93 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool95.not = icmp eq ptr %name93, null
  %spec.select261 = select i1 %tobool95.not, ptr @.str.3, ptr %name93
  %conv103 = zext i8 %mfw_drv_role.0.ph to i32
  %drv_ver_0105 = getelementptr inbounds %struct.qed_load_req_in_params, ptr %in_params, i32 0, i32 1
  %41 = ptrtoint ptr %drv_ver_0105 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %drv_ver_0105, align 4
  %conv108 = zext i8 %23 to i32
  %exist_fw_ver109 = getelementptr inbounds %struct.qed_load_req_out_params, ptr %out_params, i32 0, i32 3
  %43 = ptrtoint ptr %exist_fw_ver109 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %exist_fw_ver109, align 4
  %exist_drv_ver_0110 = getelementptr inbounds %struct.qed_load_req_out_params, ptr %out_params, i32 0, i32 1
  %45 = ptrtoint ptr %exist_drv_ver_0110 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %exist_drv_ver_0110, align 4
  %exist_drv_ver_1111 = getelementptr inbounds %struct.qed_load_req_out_params, ptr %out_params, i32 0, i32 2
  %47 = ptrtoint ptr %exist_drv_ver_1111 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %exist_drv_ver_1111, align 4
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, i32 noundef 1014, ptr noundef nonnull %spec.select261, i32 noundef %conv103, i32 noundef 138084608, i32 noundef %42, i32 noundef 115, i32 noundef %conv108, i32 noundef %44, i32 noundef %46, i32 noundef %48) #14
  %49 = ptrtoint ptr %dp_level78 to i32
  call void @__asan_load1_noabort(i32 %49)
  %.pr = load i8, ptr %dp_level78, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr)
  %cmp119 = icmp ult i8 %.pr, 3
  br i1 %cmp119, label %do.end130, label %do.body116.do.end144_crit_edge, !prof !663

do.body116.do.end144_crit_edge:                   ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end144

do.end130:                                        ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #13
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.18, i32 noundef 1016, ptr noundef nonnull %spec.select261) #14
  br label %do.end144

do.end144:                                        ; preds = %do.end130, %do.body116.do.end144_crit_edge, %do.body77.do.end144_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i.i) #11
  %50 = getelementptr inbounds i8, ptr %mb_params.i.i, i32 8
  %51 = call ptr @memset(ptr %50, i32 0, i32 24)
  %52 = ptrtoint ptr %mb_params.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 318767104, ptr %mb_params.i.i, align 4
  %param2.i.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %param2.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %param2.i.i, align 4
  %call.i.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i.i) #11
  br i1 %tobool.not.i.i, label %do.end144.cleanup_crit_edge, label %do.body.i

do.end144.cleanup_crit_edge:                      ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.i:                                        ; preds = %do.end144
  %54 = ptrtoint ptr %dp_level78 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dp_level78, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %55)
  %cmp.i269 = icmp ult i8 %55, 3
  br i1 %cmp.i269, label %do.end.i271, label %do.body.i.cleanup_crit_edge, !prof !663

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i271:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i270 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.254, i32 noundef 740, ptr noundef nonnull %name.i270, i32 noundef %call.i.i) #14
  br label %cleanup

if.end148thread-pre-split:                        ; preds = %do.end70.if.end148thread-pre-split_crit_edge, %do.end23.if.end148thread-pre-split_crit_edge
  %56 = ptrtoint ptr %out_params to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr286 = load i32, ptr %out_params, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.end148thread-pre-split, %if.end9.if.end148_crit_edge
  %57 = phi i32 [ %.pr286, %if.end148thread-pre-split ], [ %16, %if.end9.if.end148_crit_edge ]
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.367)
  switch i32 %57, label %do.body186 [
    i32 269484032, label %if.end148.sw.bb_crit_edge
    i32 269549568, label %if.end148.sw.bb_crit_edge287
    i32 269615104, label %if.end148.sw.bb_crit_edge288
  ]

if.end148.sw.bb_crit_edge288:                     ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end148.sw.bb_crit_edge287:                     ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end148.sw.bb_crit_edge:                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end148.sw.bb_crit_edge, %if.end148.sw.bb_crit_edge287, %if.end148.sw.bb_crit_edge288
  %mfw_hsi_ver = getelementptr inbounds %struct.qed_load_req_out_params, ptr %out_params, i32 0, i32 5
  %59 = ptrtoint ptr %mfw_hsi_ver to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %mfw_hsi_ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %60)
  %cmp151.not = icmp eq i8 %60, 1
  br i1 %cmp151.not, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %drv_exists = getelementptr inbounds %struct.qed_load_req_out_params, ptr %out_params, i32 0, i32 6
  %61 = ptrtoint ptr %drv_exists to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %drv_exists, align 2, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool153.not = icmp eq i8 %62, 0
  br i1 %tobool153.not, label %land.lhs.true.sw.epilog_crit_edge, label %do.body156

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body156:                                       ; preds = %land.lhs.true
  %dp_level157 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %63 = ptrtoint ptr %dp_level157 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %dp_level157, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %64)
  %cmp159 = icmp ult i8 %64, 3
  br i1 %cmp159, label %do.end170, label %do.body156.cleanup_crit_edge, !prof !663

do.body156.cleanup_crit_edge:                     ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end170:                                        ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #13
  %name172 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool174.not = icmp eq ptr %name172, null
  %spec.select263 = select i1 %tobool174.not, ptr @.str.3, ptr %name172
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.18, i32 noundef 1037, ptr noundef nonnull %spec.select263) #14
  br label %cleanup

do.body186:                                       ; preds = %if.end148
  %dp_level187 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %65 = ptrtoint ptr %dp_level187 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %dp_level187, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %66)
  %cmp189 = icmp ult i8 %66, 3
  br i1 %cmp189, label %do.end200, label %do.body186.cleanup_crit_edge, !prof !663

do.body186.cleanup_crit_edge:                     ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end200:                                        ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #13
  %name202 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool204.not = icmp eq ptr %name202, null
  %spec.select264 = select i1 %tobool204.not, ptr @.str.3, ptr %name202
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.18, i32 noundef 1044, ptr noundef nonnull %spec.select264, i32 noundef %57) #14
  br label %cleanup

sw.epilog:                                        ; preds = %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %load_code217 = getelementptr inbounds %struct.qed_load_req_params, ptr %p_params, i32 0, i32 4
  %67 = ptrtoint ptr %load_code217 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %57, ptr %load_code217, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end200, %do.body186.cleanup_crit_edge, %do.end170, %do.body156.cleanup_crit_edge, %do.end.i271, %do.body.i.cleanup_crit_edge, %do.end144.cleanup_crit_edge, %do.end70.cleanup_crit_edge, %do.end23.cleanup_crit_edge, %if.end.cleanup_crit_edge, %eocre_get_mfw_drv_role.exit
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %eocre_get_mfw_drv_role.exit ], [ %call6, %if.end.cleanup_crit_edge ], [ %call25, %do.end23.cleanup_crit_edge ], [ %call72, %do.end70.cleanup_crit_edge ], [ -22, %do.end170 ], [ -22, %do.body156.cleanup_crit_edge ], [ -16, %do.end200 ], [ -16, %do.body186.cleanup_crit_edge ], [ -16, %do.end144.cleanup_crit_edge ], [ -16, %do.body.i.cleanup_crit_edge ], [ -16, %do.end.i271 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %in_params) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %out_params) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qed_mcp_load_req(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef readonly %p_in_params, ptr nocapture noundef writeonly %p_out_params) unnamed_addr #1 align 64 {
entry:
  %mb_params = alloca %struct.qed_mcp_mb_params, align 4
  %load_req = alloca %struct.load_req_stc, align 4
  %load_rsp = alloca %struct.load_rsp_stc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %load_req) #11
  %0 = getelementptr inbounds %struct.load_req_stc, ptr %load_req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.load_req_stc, ptr %load_req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.load_req_stc, ptr %load_req, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %load_rsp) #11
  %3 = getelementptr inbounds %struct.load_rsp_stc, ptr %load_rsp, i32 0, i32 1
  %4 = getelementptr inbounds %struct.load_rsp_stc, ptr %load_rsp, i32 0, i32 2
  %5 = getelementptr inbounds %struct.load_rsp_stc, ptr %load_rsp, i32 0, i32 3
  %6 = call ptr @memset(ptr %load_rsp, i32 255, i32 16)
  %drv_ver_0 = getelementptr inbounds %struct.qed_load_req_in_params, ptr %p_in_params, i32 0, i32 1
  %7 = ptrtoint ptr %drv_ver_0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %drv_ver_0, align 4
  %9 = ptrtoint ptr %load_req to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %load_req, align 4
  %drv_ver_1 = getelementptr inbounds %struct.qed_load_req_in_params, ptr %p_in_params, i32 0, i32 2
  %10 = ptrtoint ptr %drv_ver_1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %drv_ver_1, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %0, align 4
  %fw_ver = getelementptr inbounds %struct.qed_load_req_in_params, ptr %p_in_params, i32 0, i32 3
  %13 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_ver, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %1, align 4
  %drv_role = getelementptr inbounds %struct.qed_load_req_in_params, ptr %p_in_params, i32 0, i32 4
  %16 = ptrtoint ptr %drv_role to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %drv_role, align 4
  %conv = zext i8 %17 to i32
  %timeout_val = getelementptr inbounds %struct.qed_load_req_in_params, ptr %p_in_params, i32 0, i32 5
  %18 = ptrtoint ptr %timeout_val to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %timeout_val, align 1
  %conv9 = zext i8 %19 to i32
  %shl10 = shl nuw nsw i32 %conv9, 8
  %and18 = or i32 %shl10, %conv
  %force_cmd = getelementptr inbounds %struct.qed_load_req_in_params, ptr %p_in_params, i32 0, i32 6
  %20 = ptrtoint ptr %force_cmd to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %force_cmd, align 2
  %conv19 = zext i8 %21 to i32
  %shl20 = shl nuw nsw i32 %conv19, 16
  %shl20.masked = and i32 %shl20, 983040
  %and28 = or i32 %shl20.masked, %and18
  %avoid_eng_reset = getelementptr inbounds %struct.qed_load_req_in_params, ptr %p_in_params, i32 0, i32 7
  %22 = ptrtoint ptr %avoid_eng_reset to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %avoid_eng_reset, align 1, !range !664
  %24 = zext i8 %23 to i32
  %shl30 = shl nuw nsw i32 %24, 20
  %or33 = or i32 %and28, %shl30
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or33, ptr %2, align 4
  %26 = ptrtoint ptr %p_in_params to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %p_in_params, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp = icmp eq i8 %27, 0
  %conv37 = zext i8 %27 to i32
  %shl41 = shl nuw nsw i32 %conv37, 16
  %cond = select i1 %cmp, i32 131072, i32 %shl41
  %28 = getelementptr inbounds i8, ptr %mb_params, i32 16
  %29 = call ptr @memset(ptr %28, i32 0, i32 12)
  %30 = ptrtoint ptr %mb_params to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 268435456, ptr %mb_params, align 4
  %31 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %p_hwfn, align 8
  %drv_type = getelementptr inbounds %struct.qed_dev, ptr %32, i32 0, i32 40
  %33 = ptrtoint ptr %drv_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %drv_type, align 8
  %or42 = or i32 %34, %cond
  %or43 = or i32 %or42, 15112
  %param = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 1
  %35 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or43, ptr %param, align 4
  %p_data_src = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 2
  %36 = ptrtoint ptr %p_data_src to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %load_req, ptr %p_data_src, align 4
  %data_src_size = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 4
  %37 = ptrtoint ptr %data_src_size to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 16, ptr %data_src_size, align 4
  %p_data_dst = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 3
  %38 = ptrtoint ptr %p_data_dst to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %load_rsp, ptr %p_data_dst, align 4
  %data_dst_size = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 5
  %39 = ptrtoint ptr %data_dst_size to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 16, ptr %data_dst_size, align 1
  %flags = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 8
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %flags, align 4
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %41 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp46 = icmp eq i8 %42, 0
  br i1 %cmp46, label %land.rhs, label %entry.do.end75_crit_edge

entry.do.end75_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end75

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %43 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dp_module, align 4
  %and48 = and i32 %44, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %land.rhs.do.end75_crit_edge, label %do.end54, !prof !662

land.rhs.do.end75_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end75

do.end54:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool55.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool55.not, ptr @.str.3, ptr %name
  %shr = lshr i32 %34, 31
  %and66 = lshr i32 %34, 24
  %shr67 = and i32 %and66, 127
  %and69 = lshr i32 %or42, 16
  %shr70 = and i32 %and69, 255
  %and72 = and i32 %or43, 65535
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.240, i32 noundef 843, ptr noundef nonnull %spec.select, i32 noundef %or43, i32 noundef %shr, i32 noundef %shr67, i32 noundef %shr70, i32 noundef %and72) #14
  br label %do.end75

do.end75:                                         ; preds = %do.end54, %land.rhs.do.end75_crit_edge, %entry.do.end75_crit_edge
  %45 = ptrtoint ptr %p_in_params to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %p_in_params, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp78.not = icmp eq i8 %46, 1
  br i1 %cmp78.not, label %do.end75.if.end131_crit_edge, label %do.body81

do.end75.if.end131_crit_edge:                     ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

do.body81:                                        ; preds = %do.end75
  %47 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp84 = icmp eq i8 %48, 0
  br i1 %cmp84, label %land.rhs86, label %do.body81.if.end131_crit_edge

do.body81.if.end131_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

land.rhs86:                                       ; preds = %do.body81
  %dp_module87 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %49 = ptrtoint ptr %dp_module87 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dp_module87, align 4
  %and88 = and i32 %50, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %land.rhs86.if.end131_crit_edge, label %do.end100, !prof !662

land.rhs86.if.end131_crit_edge:                   ; preds = %land.rhs86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

do.end100:                                        ; preds = %land.rhs86
  call void @__sanitizer_cov_trace_pc() #13
  %name102 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool104.not = icmp eq ptr %name102, null
  %spec.select315 = select i1 %tobool104.not, ptr @.str.3, ptr %name102
  %51 = ptrtoint ptr %load_req to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %load_req, align 4
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %0, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %1, align 4
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %2, align 4
  %and116 = and i32 %58, 255
  %and119 = lshr i32 %58, 8
  %shr120 = and i32 %and119, 255
  %and122 = lshr i32 %58, 16
  %shr123 = and i32 %and122, 15
  %and125 = lshr i32 %58, 20
  %shr126 = and i32 %and125, 15
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.240, i32 noundef 856, ptr noundef nonnull %spec.select315, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %and116, i32 noundef %shr120, i32 noundef %shr123, i32 noundef %shr126) #14
  br label %if.end131

if.end131:                                        ; preds = %do.end100, %land.rhs86.if.end131_crit_edge, %do.body81.if.end131_crit_edge, %do.end75.if.end131_crit_edge
  %call132 = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  %59 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %dp_level, align 8
  br i1 %tobool133.not, label %do.body165, label %do.body135

do.body135:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %60)
  %cmp138 = icmp ult i8 %60, 3
  br i1 %cmp138, label %do.end149, label %do.body135.cleanup_crit_edge, !prof !663

do.body135.cleanup_crit_edge:                     ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end149:                                        ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #13
  %name151 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool153.not = icmp eq ptr %name151, null
  %spec.select316 = select i1 %tobool153.not, ptr @.str.3, ptr %name151
  %call160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.240, i32 noundef 861, ptr noundef nonnull %spec.select316, i32 noundef %call132) #14
  br label %cleanup

do.body165:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp168 = icmp eq i8 %60, 0
  br i1 %cmp168, label %land.rhs170, label %do.body165.do.end198_crit_edge

do.body165.do.end198_crit_edge:                   ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end198

land.rhs170:                                      ; preds = %do.body165
  %dp_module171 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %61 = ptrtoint ptr %dp_module171 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dp_module171, align 4
  %and172 = and i32 %62, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %land.rhs170.do.end198_crit_edge, label %do.end184, !prof !662

land.rhs170.do.end198_crit_edge:                  ; preds = %land.rhs170
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end198

do.end184:                                        ; preds = %land.rhs170
  call void @__sanitizer_cov_trace_pc() #13
  %name186 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool188.not = icmp eq ptr %name186, null
  %spec.select317 = select i1 %tobool188.not, ptr @.str.3, ptr %name186
  %mcp_resp = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 6
  %63 = ptrtoint ptr %mcp_resp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mcp_resp, align 4
  %call195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.240, i32 noundef 866, ptr noundef nonnull %spec.select317, i32 noundef %64) #14
  br label %do.end198

do.end198:                                        ; preds = %do.end184, %land.rhs170.do.end198_crit_edge, %do.body165.do.end198_crit_edge
  %mcp_resp199 = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 6
  %65 = ptrtoint ptr %mcp_resp199 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mcp_resp199, align 4
  %67 = ptrtoint ptr %p_out_params to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %p_out_params, align 4
  %68 = ptrtoint ptr %p_in_params to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %p_in_params, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp202.not = icmp eq i8 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 270598144, i32 %66)
  %cmp205.not = icmp eq i32 %66, 270598144
  %or.cond = select i1 %cmp202.not, i1 true, i1 %cmp205.not
  br i1 %or.cond, label %do.end198.cleanup_crit_edge, label %do.body208

do.end198.cleanup_crit_edge:                      ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body208:                                       ; preds = %do.end198
  %70 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp211 = icmp eq i8 %71, 0
  br i1 %cmp211, label %land.rhs213, label %do.body208.do.end254_crit_edge

do.body208.do.end254_crit_edge:                   ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end254

land.rhs213:                                      ; preds = %do.body208
  %dp_module214 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %72 = ptrtoint ptr %dp_module214 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dp_module214, align 4
  %and215 = and i32 %73, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  br i1 %tobool216.not, label %land.rhs213.do.end254_crit_edge, label %do.end227, !prof !662

land.rhs213.do.end254_crit_edge:                  ; preds = %land.rhs213
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end254

do.end227:                                        ; preds = %land.rhs213
  call void @__sanitizer_cov_trace_pc() #13
  %name229 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool231.not = icmp eq ptr %name229, null
  %spec.select318 = select i1 %tobool231.not, ptr @.str.3, ptr %name229
  %74 = ptrtoint ptr %load_rsp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %load_rsp, align 4
  %76 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %3, align 4
  %78 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %4, align 4
  %80 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %5, align 4
  %and243 = and i32 %81, 255
  %and246 = lshr i32 %81, 8
  %shr247 = and i32 %and246, 255
  %and249 = lshr i32 %81, 16
  %shr250 = and i32 %and249, 15
  %call251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.240, i32 noundef 880, ptr noundef nonnull %spec.select318, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %and243, i32 noundef %shr247, i32 noundef %shr250) #14
  br label %do.end254

do.end254:                                        ; preds = %do.end227, %land.rhs213.do.end254_crit_edge, %do.body208.do.end254_crit_edge
  %82 = ptrtoint ptr %load_rsp to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %load_rsp, align 4
  %exist_drv_ver_0 = getelementptr inbounds %struct.qed_load_req_out_params, ptr %p_out_params, i32 0, i32 1
  %84 = ptrtoint ptr %exist_drv_ver_0 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %exist_drv_ver_0, align 4
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %3, align 4
  %exist_drv_ver_1 = getelementptr inbounds %struct.qed_load_req_out_params, ptr %p_out_params, i32 0, i32 2
  %87 = ptrtoint ptr %exist_drv_ver_1 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %exist_drv_ver_1, align 4
  %88 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %4, align 4
  %exist_fw_ver = getelementptr inbounds %struct.qed_load_req_out_params, ptr %p_out_params, i32 0, i32 3
  %90 = ptrtoint ptr %exist_fw_ver to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %exist_fw_ver, align 4
  %91 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %5, align 4
  %conv261 = trunc i32 %92 to i8
  %exist_drv_role = getelementptr inbounds %struct.qed_load_req_out_params, ptr %p_out_params, i32 0, i32 4
  %93 = ptrtoint ptr %exist_drv_role to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv261, ptr %exist_drv_role, align 4
  %and263 = lshr i32 %92, 8
  %conv265 = trunc i32 %and263 to i8
  %mfw_hsi_ver = getelementptr inbounds %struct.qed_load_req_out_params, ptr %p_out_params, i32 0, i32 5
  %94 = ptrtoint ptr %mfw_hsi_ver to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv265, ptr %mfw_hsi_ver, align 1
  %drv_exists = getelementptr inbounds %struct.qed_load_req_out_params, ptr %p_out_params, i32 0, i32 6
  %95 = lshr i32 %92, 16
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  %98 = ptrtoint ptr %drv_exists to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %drv_exists, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end254, %do.end198.cleanup_crit_edge, %do.end149, %do.body135.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %load_rsp) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %load_req) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params) #11
  ret i32 %call132
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_load_done(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %0 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 285212672, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %3 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %param2.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end12, label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ult i8 %5, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 1062, ptr noundef nonnull %spec.select, i32 noundef %call.i) #14
  br label %cleanup

if.end12:                                         ; preds = %entry
  %mcp_param.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 7
  %6 = ptrtoint ptr %mcp_param.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mcp_param.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %do.body15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body15:                                        ; preds = %if.end12
  %dp_level16 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %8 = ptrtoint ptr %dp_level16 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level16, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp18 = icmp ult i8 %9, 3
  br i1 %cmp18, label %do.end29, label %do.body15.cleanup_crit_edge, !prof !663

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end29:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  %name31 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool33.not = icmp eq ptr %name31, null
  %spec.select55 = select i1 %tobool33.not, ptr @.str.3, ptr %name31
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef 1069, ptr noundef nonnull %spec.select55) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.body15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_unload_req(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  %mb_params = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params) #11
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %wol_config = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %wol_config to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wol_config, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %4 = icmp ult i8 %3, 3
  br i1 %4, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp ult i8 %6, 3
  br i1 %cmp, label %do.end, label %do.body.sw.epilog_crit_edge, !prof !663

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %conv11 = zext i8 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 1089, ptr noundef nonnull %spec.select, i32 noundef %conv11) #14
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.idx.cast = zext i8 %3 to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end, %do.body.sw.epilog_crit_edge
  %wol_param.0 = phi i32 [ %switch.offset, %switch.lookup ], [ 1, %do.body.sw.epilog_crit_edge ], [ 1, %do.end ]
  %7 = getelementptr inbounds i8, ptr %mb_params, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 20)
  %9 = ptrtoint ptr %mb_params to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 536870912, ptr %mb_params, align 4
  %param = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 1
  %10 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %wol_param.0, ptr %param, align 4
  %flags = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 8
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %flags, align 4
  %call15 = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params) #11
  ret i32 %call15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_unload_done(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  %mb_params = alloca %struct.qed_mcp_mb_params, align 4
  %wol_mac = alloca %struct.mcp_mac, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wol_mac) #11
  %0 = ptrtoint ptr %wol_mac to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wol_mac, align 8, !annotation !665
  %1 = getelementptr inbounds %struct.mcp_mac, ptr %wol_mac, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !665
  %3 = getelementptr inbounds i8, ptr %mb_params, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 28)
  %5 = ptrtoint ptr %mb_params to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 553648128, ptr %mb_params, align 4
  %6 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_hwfn, align 8
  %wol_config = getelementptr inbounds %struct.qed_dev, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %wol_config to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wol_config, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp eq i8 %9, 2
  br i1 %cmp, label %if.then, label %entry.if.end36_crit_edge

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then:                                          ; preds = %entry
  %wol_mac3 = getelementptr inbounds %struct.qed_dev, ptr %7, i32 0, i32 21
  %10 = ptrtoint ptr %wol_mac3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wol_mac3, align 1
  %conv4 = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv4, 8
  %arrayidx5 = getelementptr %struct.qed_dev, ptr %7, i32 0, i32 21, i32 1
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %13 to i32
  %or = or i32 %shl, %conv6
  %14 = ptrtoint ptr %wol_mac to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %wol_mac, align 8
  %arrayidx7 = getelementptr %struct.qed_dev, ptr %7, i32 0, i32 21, i32 2
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %16 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %arrayidx10 = getelementptr %struct.qed_dev, ptr %7, i32 0, i32 21, i32 3
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %18 to i32
  %shl12 = shl nuw nsw i32 %conv11, 16
  %or13 = or i32 %shl12, %shl9
  %arrayidx14 = getelementptr %struct.qed_dev, ptr %7, i32 0, i32 21, i32 4
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %20 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %or17 = or i32 %or13, %shl16
  %arrayidx18 = getelementptr %struct.qed_dev, ptr %7, i32 0, i32 21, i32 5
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %22 to i32
  %or20 = or i32 %or17, %conv19
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or20, ptr %1, align 4
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %24 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp22 = icmp eq i8 %25, 0
  br i1 %cmp22, label %land.rhs, label %if.then.do.end35_crit_edge

if.then.do.end35_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end35

land.rhs:                                         ; preds = %if.then
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %26 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dp_module, align 4
  %and = and i32 %27, 1048592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end35_crit_edge, label %do.end, !prof !662

land.rhs.do.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end35

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool29.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool29.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 1123, ptr noundef nonnull %spec.select, ptr noundef %wol_mac3, i32 noundef %or, i32 noundef %or20) #14
  br label %do.end35

do.end35:                                         ; preds = %do.end, %land.rhs.do.end35_crit_edge, %if.then.do.end35_crit_edge
  %p_data_src = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 2
  %28 = ptrtoint ptr %p_data_src to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %wol_mac, ptr %p_data_src, align 4
  %data_src_size = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 4
  %29 = ptrtoint ptr %data_src_size to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 8, ptr %data_src_size, align 4
  br label %if.end36

if.end36:                                         ; preds = %do.end35, %entry.if.end36_crit_edge
  %call37 = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wol_mac) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params) #11
  ret i32 %call37
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_ack_vf_flr(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %vfs_to_ack) local_unnamed_addr #1 align 64 {
entry:
  %mb_params = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  %public_base = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %public_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %public_base, align 4
  %add = add i32 %3, 24
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add) #11
  %and = shl i32 %call, 2
  %shl = and i32 %and, 262140
  %4 = lshr i32 %call, 14
  %shl4 = and i32 %4, 262140
  %5 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p_hwfn, align 8
  %type = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %rel_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %9 = ptrtoint ptr %rel_pf_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rel_pf_id, align 1
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %abs_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %11 = ptrtoint ptr %abs_pf_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %abs_pf_id, align 2
  %13 = shl i8 %12, 3
  %14 = and i8 %13, 8
  %or107 = or i8 %14, %10
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond.in = phi i8 [ %or107, %cond.true ], [ %10, %entry.cond.end_crit_edge ]
  %cond = zext i8 %cond.in to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params) #11
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool20.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool20.not, ptr @.str.3, ptr %name
  %15 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp14 = icmp eq i8 %16, 0
  br i1 %cmp14, label %land.rhs, label %cond.end.for.inc.5_crit_edge

cond.end.for.inc.5_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

land.rhs:                                         ; preds = %cond.end
  %17 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dp_module, align 4
  %and16 = and i32 %18, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool.not = icmp eq i32 %and16, 0
  br i1 %tobool.not, label %land.rhs.for.inc_crit_edge, label %do.end, !prof !662

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %vfs_to_ack to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vfs_to_ack, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 1178, ptr noundef nonnull %spec.select, i32 noundef 0, i32 noundef 31, i32 noundef %20) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end, %land.rhs.for.inc_crit_edge
  %21 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp14.1 = icmp eq i8 %.pr, 0
  br i1 %cmp14.1, label %land.rhs.1, label %for.inc.for.inc.5_crit_edge

for.inc.for.inc.5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

land.rhs.1:                                       ; preds = %for.inc
  %22 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dp_module, align 4
  %and16.1 = and i32 %23, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.1)
  %tobool.not.1 = icmp eq i32 %and16.1, 0
  br i1 %tobool.not.1, label %land.rhs.1.for.inc.1_crit_edge, label %do.end.1, !prof !662

land.rhs.1.for.inc.1_crit_edge:                   ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

do.end.1:                                         ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.1 = getelementptr i32, ptr %vfs_to_ack, i32 1
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.1, align 4
  %call30.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 1178, ptr noundef nonnull %spec.select, i32 noundef 32, i32 noundef 63, i32 noundef %25) #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.1, %land.rhs.1.for.inc.1_crit_edge
  %26 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %26)
  %.pr113 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr113)
  %cmp14.2 = icmp eq i8 %.pr113, 0
  br i1 %cmp14.2, label %land.rhs.2, label %for.inc.1.for.inc.5_crit_edge

for.inc.1.for.inc.5_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

land.rhs.2:                                       ; preds = %for.inc.1
  %27 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dp_module, align 4
  %and16.2 = and i32 %28, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.2)
  %tobool.not.2 = icmp eq i32 %and16.2, 0
  br i1 %tobool.not.2, label %land.rhs.2.for.inc.2_crit_edge, label %do.end.2, !prof !662

land.rhs.2.for.inc.2_crit_edge:                   ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

do.end.2:                                         ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.2 = getelementptr i32, ptr %vfs_to_ack, i32 2
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.2, align 4
  %call30.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 1178, ptr noundef nonnull %spec.select, i32 noundef 64, i32 noundef 95, i32 noundef %30) #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end.2, %land.rhs.2.for.inc.2_crit_edge
  %31 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %31)
  %.pr115.pr = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr115.pr)
  %cmp14.3 = icmp eq i8 %.pr115.pr, 0
  br i1 %cmp14.3, label %land.rhs.3, label %for.inc.2.for.inc.5_crit_edge

for.inc.2.for.inc.5_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

land.rhs.3:                                       ; preds = %for.inc.2
  %32 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dp_module, align 4
  %and16.3 = and i32 %33, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.3)
  %tobool.not.3 = icmp eq i32 %and16.3, 0
  br i1 %tobool.not.3, label %land.rhs.3.for.inc.3_crit_edge, label %do.end.3, !prof !662

land.rhs.3.for.inc.3_crit_edge:                   ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

do.end.3:                                         ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.3 = getelementptr i32, ptr %vfs_to_ack, i32 3
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.3, align 4
  %call30.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 1178, ptr noundef nonnull %spec.select, i32 noundef 96, i32 noundef 127, i32 noundef %35) #14
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end.3, %land.rhs.3.for.inc.3_crit_edge
  %36 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %36)
  %.pr117 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr117)
  %cmp14.4 = icmp eq i8 %.pr117, 0
  br i1 %cmp14.4, label %land.rhs.4, label %for.inc.3.for.inc.5_crit_edge

for.inc.3.for.inc.5_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

land.rhs.4:                                       ; preds = %for.inc.3
  %37 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dp_module, align 4
  %and16.4 = and i32 %38, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.4)
  %tobool.not.4 = icmp eq i32 %and16.4, 0
  br i1 %tobool.not.4, label %land.rhs.4.for.inc.4_crit_edge, label %do.end.4, !prof !662

land.rhs.4.for.inc.4_crit_edge:                   ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

do.end.4:                                         ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.4 = getelementptr i32, ptr %vfs_to_ack, i32 4
  %39 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.4, align 4
  %call30.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 1178, ptr noundef nonnull %spec.select, i32 noundef 128, i32 noundef 159, i32 noundef %40) #14
  br label %for.inc.4

for.inc.4:                                        ; preds = %do.end.4, %land.rhs.4.for.inc.4_crit_edge
  %41 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %41)
  %.pr119.pr.pr = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr119.pr.pr)
  %cmp14.5 = icmp eq i8 %.pr119.pr.pr, 0
  br i1 %cmp14.5, label %land.rhs.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

land.rhs.5:                                       ; preds = %for.inc.4
  %42 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dp_module, align 4
  %and16.5 = and i32 %43, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.5)
  %tobool.not.5 = icmp eq i32 %and16.5, 0
  br i1 %tobool.not.5, label %land.rhs.5.for.inc.5_crit_edge, label %do.end.5, !prof !662

land.rhs.5.for.inc.5_crit_edge:                   ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

do.end.5:                                         ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.5 = getelementptr i32, ptr %vfs_to_ack, i32 5
  %44 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.5, align 4
  %call30.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 1178, ptr noundef nonnull %spec.select, i32 noundef 160, i32 noundef 191, i32 noundef %45) #14
  br label %for.inc.5

for.inc.5:                                        ; preds = %do.end.5, %land.rhs.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge, %for.inc.3.for.inc.5_crit_edge, %for.inc.2.for.inc.5_crit_edge, %for.inc.1.for.inc.5_crit_edge, %for.inc.for.inc.5_crit_edge, %cond.end.for.inc.5_crit_edge
  %46 = getelementptr inbounds i8, ptr %mb_params, i32 4
  %47 = call ptr @memset(ptr %46, i32 0, i32 28)
  %48 = ptrtoint ptr %mb_params to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1073741824, ptr %mb_params, align 4
  %p_data_src = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 2
  %49 = ptrtoint ptr %p_data_src to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %vfs_to_ack, ptr %p_data_src, align 4
  %data_src_size = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 4
  %50 = ptrtoint ptr %data_src_size to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 24, ptr %data_src_size, align 4
  %call33 = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %for.cond66.preheader, label %do.body36

for.cond66.preheader:                             ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul nuw nsw i32 %shl4, %cond
  %add10 = add nuw nsw i32 %shl, 14811224
  %add70 = add nuw nsw i32 %add10, %mul
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add70, i32 noundef 0) #11
  %add72.1 = add nuw nsw i32 %add70, 4
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add72.1, i32 noundef 0) #11
  %add72.2 = add nuw nsw i32 %add70, 8
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add72.2, i32 noundef 0) #11
  %add72.3 = add nuw nsw i32 %add70, 12
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add72.3, i32 noundef 0) #11
  %add72.4 = add nuw nsw i32 %add70, 16
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add72.4, i32 noundef 0) #11
  %add72.5 = add nuw nsw i32 %add70, 20
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add72.5, i32 noundef 0) #11
  br label %cleanup

do.body36:                                        ; preds = %for.inc.5
  %51 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %52)
  %cmp39 = icmp ult i8 %52, 3
  br i1 %cmp39, label %do.end50, label %do.body36.cleanup_crit_edge, !prof !663

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end50:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, i32 noundef 1186, ptr noundef nonnull %spec.select) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %do.body36.cleanup_crit_edge, %for.cond66.preheader
  %retval.0 = phi i32 [ -16, %do.end50 ], [ -16, %do.body36.cleanup_crit_edge ], [ 0, %for.cond66.preheader ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_set_link(ptr noundef %p_hwfn, ptr noundef %p_ptt, i1 noundef zeroext %b_up) local_unnamed_addr #1 align 64 {
entry:
  %mb_params = alloca %struct.qed_mcp_mb_params, align 4
  %phy_cfg = alloca %struct.eth_phy_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %b_up to i8
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  %link_input = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params) #11
  %2 = call ptr @memset(ptr %mb_params, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %phy_cfg) #11
  %3 = getelementptr inbounds %struct.eth_phy_cfg, ptr %phy_cfg, i32 0, i32 1
  %4 = getelementptr inbounds %struct.eth_phy_cfg, ptr %phy_cfg, i32 0, i32 2
  %5 = getelementptr inbounds %struct.eth_phy_cfg, ptr %phy_cfg, i32 0, i32 3
  %6 = getelementptr inbounds %struct.eth_phy_cfg, ptr %phy_cfg, i32 0, i32 4
  %7 = getelementptr inbounds %struct.eth_phy_cfg, ptr %phy_cfg, i32 0, i32 6
  %8 = getelementptr inbounds %struct.eth_phy_cfg, ptr %phy_cfg, i32 0, i32 7
  %9 = call ptr @memset(ptr %phy_cfg, i32 0, i32 32)
  %cond = select i1 %b_up, i32 570425344, i32 587202560
  %10 = ptrtoint ptr %link_input to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %link_input, align 4, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not = icmp eq i8 %11, 0
  br i1 %tobool1.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %forced_speed = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 10, i32 0, i32 2
  %12 = ptrtoint ptr %forced_speed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %forced_speed, align 4
  %14 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %phy_cfg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pause = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %pause to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pause, align 4, !range !664
  %17 = zext i8 %16 to i32
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  %or = or i32 %19, %17
  %forced_rx = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 10, i32 1, i32 1
  %20 = ptrtoint ptr %forced_rx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %forced_rx, align 1, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool9.not = icmp eq i8 %21, 0
  %cond10 = select i1 %tobool9.not, i32 0, i32 2
  %or12 = or i32 %cond10, %or
  %forced_tx = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 10, i32 1, i32 2
  %22 = ptrtoint ptr %forced_tx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %forced_tx, align 2, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool14.not = icmp eq i8 %23, 0
  %cond15 = select i1 %tobool14.not, i32 0, i32 4
  %or17 = or i32 %cond15, %or12
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or17, ptr %3, align 4
  %advertised_speeds = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 10, i32 0, i32 1
  %25 = ptrtoint ptr %advertised_speeds to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %advertised_speeds, align 4
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %4, align 4
  %loopback_mode = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 10, i32 2
  %28 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %loopback_mode, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %5, align 4
  %capabilities = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 18
  %31 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %capabilities, align 8
  %and = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end.if.end51_crit_edge, label %land.lhs.true

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end
  %eee = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 10, i32 3
  %enable = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 10, i32 3, i32 3
  %33 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %enable, align 2, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool22.not = icmp eq i8 %34, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end51_crit_edge, label %if.then23

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then23:                                        ; preds = %land.lhs.true
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %6, align 4
  %or24 = or i32 %36, 1
  store i32 %or24, ptr %6, align 4
  %tx_lpi_enable = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 10, i32 3, i32 4
  %37 = ptrtoint ptr %tx_lpi_enable to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tx_lpi_enable, align 1, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool26.not = icmp eq i8 %38, 0
  br i1 %tobool26.not, label %if.then23.if.end30_crit_edge, label %if.then27

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %or29 = or i32 %36, 3
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or29, ptr %6, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.then23.if.end30_crit_edge
  %adv_caps = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 10, i32 3, i32 1
  %40 = ptrtoint ptr %adv_caps to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %adv_caps, align 4
  %42 = and i8 %41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool33.not = icmp eq i8 %42, 0
  br i1 %tobool33.not, label %if.end30.if.end37_crit_edge, label %if.then34

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %6, align 4
  %or36 = or i32 %44, 4
  store i32 %or36, ptr %6, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end30.if.end37_crit_edge
  %45 = ptrtoint ptr %adv_caps to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %adv_caps, align 4
  %47 = and i8 %46, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool42.not = icmp eq i8 %47, 0
  br i1 %tobool42.not, label %if.end37.if.end46_crit_edge, label %if.then43

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %6, align 4
  %or45 = or i32 %49, 8
  store i32 %or45, ptr %6, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end37.if.end46_crit_edge
  %50 = ptrtoint ptr %eee to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %eee, align 4
  %shl = shl i32 %51, 4
  %52 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %6, align 4
  %or50 = or i32 %53, %shl
  store i32 %or50, ptr %6, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end46, %land.lhs.true.if.end51_crit_edge, %if.end.if.end51_crit_edge
  %54 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %capabilities, align 8
  %and54 = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end51.if.end87_crit_edge, label %if.then56

if.end51.if.end87_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then56:                                        ; preds = %if.end51
  %fec = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 10, i32 4
  %56 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fec, align 4
  %and57 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.else, label %if.then56.do.body_crit_edge

if.then56.do.body_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.else:                                          ; preds = %if.then56
  %and62 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.else66, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.else66:                                        ; preds = %if.else
  %and68 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.else72, label %if.else66.do.body_crit_edge

if.else66.do.body_crit_edge:                      ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.else72:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #13
  %and74 = and i32 %57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %spec.select = select i1 %tobool75.not, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %if.else72, %if.else66.do.body_crit_edge, %if.else.do.body_crit_edge, %if.then56.do.body_crit_edge
  %fec_bit.0 = phi i32 [ 0, %if.then56.do.body_crit_edge ], [ 1, %if.else.do.body_crit_edge ], [ 2, %if.else66.do.body_crit_edge ], [ %spec.select, %if.else72 ]
  %58 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %7, align 4
  %and82 = and i32 %59, -256
  %or86 = or i32 %and82, %fec_bit.0
  store i32 %or86, ptr %7, align 4
  br label %if.end87

if.end87:                                         ; preds = %do.body, %if.end51.if.end87_crit_edge
  %60 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %capabilities, align 8
  %and90 = and i32 %61, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end87.if.end212_crit_edge, label %if.then92

if.end87.if.end212_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end212

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %ext_speed93 = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 10, i32 5
  %62 = ptrtoint ptr %ext_speed93 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ext_speed93, align 4, !range !664
  %64 = zext i8 %63 to i32
  %forced_speed100 = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 10, i32 5, i32 2
  %65 = ptrtoint ptr %forced_speed100 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %forced_speed100, align 4
  %and101 = shl i32 %66, 1
  %67 = and i32 %and101, 2
  %68 = and i32 %and101, 4
  %and111 = and i32 %66, 8
  %and116 = and i32 %66, 16
  %and121 = and i32 %66, 32
  %and126 = and i32 %66, 64
  %and131 = and i32 %66, 128
  %and136 = and i32 %66, 256
  %and141 = and i32 %66, 512
  %69 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %8, align 4
  %and147 = and i32 %70, -65536
  %71 = or i32 %and111, %64
  %72 = or i32 %71, %and116
  %73 = or i32 %72, %and121
  %74 = or i32 %73, %and126
  %.masked397 = or i32 %74, %and131
  %.masked396 = or i32 %.masked397, %and136
  %.masked395 = or i32 %.masked396, %and141
  %.masked = or i32 %.masked395, %67
  %and149 = or i32 %.masked, %68
  %or151 = or i32 %and149, %and147
  %advertised_speeds155 = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 10, i32 5, i32 1
  %75 = ptrtoint ptr %advertised_speeds155 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %advertised_speeds155, align 4
  %and156 = shl i32 %76, 15
  %77 = and i32 %and156, 196608
  %and166 = shl i32 %76, 14
  %78 = and i32 %and166, 262144
  %79 = or i32 %77, %78
  %80 = and i32 %and166, 524288
  %81 = or i32 %79, %80
  %82 = and i32 %and166, 1048576
  %83 = or i32 %81, %82
  %84 = and i32 %and166, 2097152
  %85 = or i32 %83, %84
  %86 = and i32 %and166, 4194304
  %87 = or i32 %85, %86
  %88 = and i32 %and166, 8388608
  %89 = or i32 %87, %88
  %90 = and i32 %and166, 16777216
  %91 = or i32 %89, %90
  %or202 = or i32 %91, %or151
  store i32 %or202, ptr %8, align 4
  %92 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %7, align 4
  %and205 = and i32 %93, 255
  %ext_fec_mode = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 10, i32 6
  %94 = ptrtoint ptr %ext_fec_mode to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ext_fec_mode, align 4
  %shl206 = shl i32 %95, 8
  %or209 = or i32 %shl206, %and205
  store i32 %or209, ptr %7, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.then92, %if.end87.if.end212_crit_edge
  %b_drv_link_init = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 42
  %96 = ptrtoint ptr %b_drv_link_init to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %frombool, ptr %b_drv_link_init, align 2
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %97 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp = icmp eq i8 %98, 0
  br i1 %b_up, label %do.body217, label %do.body242

do.body217:                                       ; preds = %if.end212
  br i1 %cmp, label %land.rhs, label %do.body217.if.end276_crit_edge

do.body217.if.end276_crit_edge:                   ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end276

land.rhs:                                         ; preds = %do.body217
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %99 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dp_module, align 4
  %and220 = and i32 %100, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  br i1 %tobool221.not, label %land.rhs.if.end276_crit_edge, label %do.end227, !prof !662

land.rhs.if.end276_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end276

do.end227:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool228.not = icmp eq ptr %name, null
  %spec.select391 = select i1 %tobool228.not, ptr @.str.3, ptr %name
  %101 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %phy_cfg, align 4
  %103 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %7, align 4
  %105 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %8, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef 1592, ptr noundef nonnull %spec.select391, i32 noundef %102, i32 noundef %or17, i32 noundef %26, i32 noundef %29, i32 noundef %104, i32 noundef %106) #14
  br label %if.end276

do.body242:                                       ; preds = %if.end212
  br i1 %cmp, label %land.rhs247, label %do.body242.if.end276_crit_edge

do.body242.if.end276_crit_edge:                   ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end276

land.rhs247:                                      ; preds = %do.body242
  %dp_module248 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %107 = ptrtoint ptr %dp_module248 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dp_module248, align 4
  %and249 = and i32 %108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  br i1 %tobool250.not, label %land.rhs247.if.end276_crit_edge, label %do.end261, !prof !662

land.rhs247.if.end276_crit_edge:                  ; preds = %land.rhs247
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end276

do.end261:                                        ; preds = %land.rhs247
  call void @__sanitizer_cov_trace_pc() #13
  %name263 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool265.not = icmp eq ptr %name263, null
  %spec.select393 = select i1 %tobool265.not, ptr @.str.3, ptr %name263
  %call272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef 1594, ptr noundef nonnull %spec.select393) #14
  br label %if.end276

if.end276:                                        ; preds = %do.end261, %land.rhs247.if.end276_crit_edge, %do.body242.if.end276_crit_edge, %do.end227, %land.rhs.if.end276_crit_edge, %do.body217.if.end276_crit_edge
  %109 = getelementptr inbounds i8, ptr %mb_params, i32 4
  %110 = call ptr @memset(ptr %109, i32 0, i32 28)
  %111 = ptrtoint ptr %mb_params to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %cond, ptr %mb_params, align 4
  %p_data_src = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 2
  %112 = ptrtoint ptr %p_data_src to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %phy_cfg, ptr %p_data_src, align 4
  %data_src_size = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 4
  %113 = ptrtoint ptr %data_src_size to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 32, ptr %data_src_size, align 4
  %call278 = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call278)
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %if.end298, label %do.end284

do.end284:                                        ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #13
  %name286 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool288.not = icmp eq ptr %name286, null
  %spec.select394 = select i1 %tobool288.not, ptr @.str.3, ptr %name286
  %call295 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.49, i32 noundef 1605, ptr noundef nonnull %spec.select394) #14
  br label %cleanup

if.end298:                                        ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #13
  %lnot300 = xor i1 %b_up, true
  call fastcc void @qed_mcp_handle_link_change(ptr noundef %p_hwfn, ptr noundef %p_ptt, i1 noundef zeroext %lnot300)
  br label %cleanup

cleanup:                                          ; preds = %if.end298, %do.end284
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %phy_cfg) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params) #11
  ret i32 %call278
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_mcp_handle_link_change(ptr noundef %p_hwfn, ptr noundef %p_ptt, i1 noundef zeroext %b_reset) unnamed_addr #1 align 64 {
entry:
  %shmem_info = alloca %struct.public_func, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  %link_lock = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %link_lock) #11
  %2 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcp_info, align 8
  %link_output = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11
  %4 = call ptr @memset(ptr %link_output, i32 0, i32 40)
  br i1 %b_reset, label %do.body18, label %if.then

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mcp_info, align 8
  %port_addr = getelementptr inbounds %struct.qed_mcp_info, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %port_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_addr, align 8
  %add = add i32 %8, 4
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add) #11
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %9 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp eq i8 %10, 0
  br i1 %cmp, label %land.rhs, label %if.then.if.end52_crit_edge

if.then.if.end52_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.rhs:                                         ; preds = %if.then
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %11 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dp_module, align 4
  %and = and i32 %12, 1048580
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.rhs.if.end52_crit_edge, label %do.end, !prof !662

land.rhs.if.end52_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool9.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool9.not, ptr @.str.3, ptr %name
  %13 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mcp_info, align 8
  %port_addr13 = getelementptr inbounds %struct.qed_mcp_info, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %port_addr13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_addr13, align 8
  %add14 = add i32 %16, 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.256, i32 noundef 1317, ptr noundef nonnull %spec.select, i32 noundef %call, i32 noundef %add14) #14
  br label %if.end52

do.body18:                                        ; preds = %entry
  %dp_level19 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %17 = ptrtoint ptr %dp_level19 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dp_level19, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp21 = icmp eq i8 %18, 0
  br i1 %cmp21, label %land.rhs23, label %do.body18.out_crit_edge

do.body18.out_crit_edge:                          ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.rhs23:                                       ; preds = %do.body18
  %dp_module24 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %19 = ptrtoint ptr %dp_module24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dp_module24, align 4
  %and25 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %land.rhs23.out_crit_edge, label %do.end37, !prof !662

land.rhs23.out_crit_edge:                         ; preds = %land.rhs23
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end37:                                         ; preds = %land.rhs23
  call void @__sanitizer_cov_trace_pc() #13
  %name39 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool41.not = icmp eq ptr %name39, null
  %spec.select434 = select i1 %tobool41.not, ptr @.str.3, ptr %name39
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.256, i32 noundef 1320, ptr noundef nonnull %spec.select434) #14
  br label %out

if.end52:                                         ; preds = %do.end, %land.rhs.if.end52_crit_edge, %if.then.if.end52_crit_edge
  %b_drv_link_init = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 42
  %21 = ptrtoint ptr %b_drv_link_init to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b_drv_link_init, align 2, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool53.not = icmp eq i8 %22, 0
  br i1 %tobool53.not, label %if.else163, label %if.then54

if.then54:                                        ; preds = %if.end52
  %23 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mcp_info, align 8
  %capabilities = getelementptr inbounds %struct.qed_mcp_info, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %capabilities, align 8
  %and56 = and i32 %26, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.else116, label %if.then58

if.then58:                                        ; preds = %if.then54
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %shmem_info) #11
  %27 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %p_hwfn, align 8
  %type = getelementptr inbounds %struct.qed_dev, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp59 = icmp eq i32 %30, 0
  %rel_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %31 = ptrtoint ptr %rel_pf_id to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rel_pf_id, align 1
  br i1 %cmp59, label %cond.true61, label %if.then58.cond.end68_crit_edge

if.then58.cond.end68_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end68

cond.true61:                                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  %abs_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %33 = ptrtoint ptr %abs_pf_id to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %abs_pf_id, align 2
  %35 = shl i8 %34, 3
  %36 = and i8 %35, 8
  %or433 = or i8 %36, %32
  br label %cond.end68

cond.end68:                                       ; preds = %cond.true61, %if.then58.cond.end68_crit_edge
  %cond69.in = phi i8 [ %or433, %cond.true61 ], [ %32, %if.then58.cond.end68_crit_edge ]
  %cond69 = zext i8 %cond69.in to i32
  %public_base.i = getelementptr inbounds %struct.qed_mcp_info, ptr %24, i32 0, i32 4
  %37 = ptrtoint ptr %public_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %public_base.i, align 4
  %add.i = add i32 %38, 24
  %call.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.i) #11
  %and.i = shl i32 %call.i, 2
  %shl.i = and i32 %and.i, 262140
  %add1.i = add nuw nsw i32 %shl.i, 14811136
  %39 = lshr i32 %call.i, 14
  %shl4.i = and i32 %39, 262140
  %mul.i = mul nuw nsw i32 %shl4.i, %cond69
  %add5.i = add nuw nsw i32 %add1.i, %mul.i
  %40 = call ptr @memset(ptr %shmem_info, i32 0, i32 136)
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %shl4.i)
  %cmp.i = icmp ugt i32 %shl4.i, 136
  %phi.bo1.i = lshr i32 %call.i, 16
  %cond.i = select i1 %cmp.i, i32 34, i32 %phi.bo1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp92.not.i = icmp eq i32 %cond.i, 0
  br i1 %cmp92.not.i, label %cond.end68.qed_mcp_get_shmem_func.exit_crit_edge, label %cond.end68.for.body.i_crit_edge

cond.end68.for.body.i_crit_edge:                  ; preds = %cond.end68
  br label %for.body.i

cond.end68.qed_mcp_get_shmem_func.exit_crit_edge: ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_get_shmem_func.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cond.end68.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %cond.end68.for.body.i_crit_edge ]
  %shl10.i = shl i32 %i.03.i, 2
  %add11.i = add nuw nsw i32 %add5.i, %shl10.i
  %call12.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add11.i) #11
  %arrayidx.i = getelementptr i32, ptr %shmem_info, i32 %i.03.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call12.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond.i
  br i1 %exitcond.not.i, label %for.body.i.qed_mcp_get_shmem_func.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.qed_mcp_get_shmem_func.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_get_shmem_func.exit

qed_mcp_get_shmem_func.exit:                      ; preds = %for.body.i.qed_mcp_get_shmem_func.exit_crit_edge, %cond.end68.qed_mcp_get_shmem_func.exit_crit_edge
  %status71 = getelementptr inbounds %struct.public_func, ptr %shmem_info, i32 0, i32 9
  %42 = ptrtoint ptr %status71 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status71, align 4
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  %46 = ptrtoint ptr %link_output to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %link_output, align 4
  %47 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mcp_info, align 8
  %config.i = getelementptr inbounds %struct.public_func, ptr %shmem_info, i32 0, i32 8
  %49 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %config.i, align 4
  %and.i438 = lshr i32 %50, 8
  %conv.i = trunc i32 %and.i438 to i8
  %bandwidth_min.i = getelementptr inbounds %struct.qed_mcp_info, ptr %48, i32 0, i32 13, i32 2
  %51 = ptrtoint ptr %bandwidth_min.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.i, ptr %bandwidth_min.i, align 8
  %conv2.i = and i32 %and.i438, 255
  %52 = add nsw i32 %conv2.i, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %52)
  %53 = icmp ult i32 %52, -100
  br i1 %53, label %do.body.i, label %qed_mcp_get_shmem_func.exit.if.end22.i_crit_edge

qed_mcp_get_shmem_func.exit.if.end22.i_crit_edge: ; preds = %qed_mcp_get_shmem_func.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

do.body.i:                                        ; preds = %qed_mcp_get_shmem_func.exit
  %54 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %55)
  %cmp9.i = icmp ult i8 %55, 2
  br i1 %cmp9.i, label %do.end.i, label %do.body.i.do.end20.i_crit_edge, !prof !663

do.body.i.do.end20.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i439 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.310, i32 noundef 1283, ptr noundef nonnull %name.i, i32 noundef %conv2.i) #14
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end.i, %do.body.i.do.end20.i_crit_edge
  %56 = ptrtoint ptr %bandwidth_min.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %bandwidth_min.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end20.i, %qed_mcp_get_shmem_func.exit.if.end22.i_crit_edge
  %and24.i = lshr i32 %50, 16
  %conv26.i = trunc i32 %and24.i to i8
  %bandwidth_max.i = getelementptr inbounds %struct.qed_mcp_info, ptr %48, i32 0, i32 13, i32 3
  %57 = ptrtoint ptr %bandwidth_max.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv26.i, ptr %bandwidth_max.i, align 1
  %conv28.i = and i32 %and24.i, 255
  %58 = add nsw i32 %conv28.i, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %58)
  %59 = icmp ult i32 %58, -100
  br i1 %59, label %do.body37.i, label %if.end22.i.qed_read_pf_bandwidth.exit_crit_edge

if.end22.i.qed_read_pf_bandwidth.exit_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_read_pf_bandwidth.exit

do.body37.i:                                      ; preds = %if.end22.i
  %60 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp40.i = icmp ult i8 %61, 2
  br i1 %cmp40.i, label %do.end51.i, label %do.body37.i.do.end67.i_crit_edge, !prof !663

do.body37.i.do.end67.i_crit_edge:                 ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67.i

do.end51.i:                                       ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #13
  %name53.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.312, ptr noundef nonnull @.str.310, i32 noundef 1292, ptr noundef nonnull %name53.i, i32 noundef %conv28.i) #14
  br label %do.end67.i

do.end67.i:                                       ; preds = %do.end51.i, %do.body37.i.do.end67.i_crit_edge
  %62 = ptrtoint ptr %bandwidth_max.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 100, ptr %bandwidth_max.i, align 1
  br label %qed_read_pf_bandwidth.exit

qed_read_pf_bandwidth.exit:                       ; preds = %do.end67.i, %if.end22.i.qed_read_pf_bandwidth.exit_crit_edge
  %63 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp82 = icmp eq i8 %64, 0
  br i1 %cmp82, label %land.rhs84, label %qed_read_pf_bandwidth.exit.do.end115_crit_edge

qed_read_pf_bandwidth.exit.do.end115_crit_edge:   ; preds = %qed_read_pf_bandwidth.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end115

land.rhs84:                                       ; preds = %qed_read_pf_bandwidth.exit
  %dp_module85 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %65 = ptrtoint ptr %dp_module85 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dp_module85, align 4
  %and86 = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %land.rhs84.do.end115_crit_edge, label %do.end98, !prof !662

land.rhs84.do.end115_crit_edge:                   ; preds = %land.rhs84
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end115

do.end98:                                         ; preds = %land.rhs84
  call void @__sanitizer_cov_trace_pc() #13
  %name100 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool102.not = icmp eq ptr %name100, null
  %spec.select435 = select i1 %tobool102.not, ptr @.str.3, ptr %name100
  %67 = ptrtoint ptr %link_output to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %link_output, align 4, !range !664
  %69 = zext i8 %68 to i32
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.256, i32 noundef 1338, ptr noundef nonnull %spec.select435, i32 noundef %69) #14
  br label %do.end115

do.end115:                                        ; preds = %do.end98, %land.rhs84.do.end115_crit_edge, %qed_read_pf_bandwidth.exit.do.end115_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %shmem_info) #11
  br label %if.end165

if.else116:                                       ; preds = %if.then54
  %70 = trunc i32 %call to i8
  %71 = and i8 %70, 1
  %72 = ptrtoint ptr %link_output to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %link_output, align 4
  %73 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp128 = icmp eq i8 %74, 0
  br i1 %cmp128, label %land.rhs130, label %if.else116.if.end165_crit_edge

if.else116.if.end165_crit_edge:                   ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end165

land.rhs130:                                      ; preds = %if.else116
  %dp_module131 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %75 = ptrtoint ptr %dp_module131 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dp_module131, align 4
  %and132 = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %land.rhs130.if.end165_crit_edge, label %do.end144, !prof !662

land.rhs130.if.end165_crit_edge:                  ; preds = %land.rhs130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end165

do.end144:                                        ; preds = %land.rhs130
  call void @__sanitizer_cov_trace_pc() #13
  %name146 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool148.not = icmp eq ptr %name146, null
  %spec.select436 = select i1 %tobool148.not, ptr @.str.3, ptr %name146
  %77 = zext i8 %71 to i32
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.256, i32 noundef 1342, ptr noundef nonnull %spec.select436, i32 noundef %77) #14
  br label %if.end165

if.else163:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %link_output to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %link_output, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.else163, %do.end144, %land.rhs130.if.end165_crit_edge, %if.else116.if.end165_crit_edge, %do.end115
  %full_duplex = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 4
  %79 = ptrtoint ptr %full_duplex to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %full_duplex, align 4
  %and166 = and i32 %call, 30
  %80 = zext i32 %and166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.368)
  switch i32 %and166, label %sw.epilog.thread [
    i32 14, label %if.end165.sw.epilog_crit_edge
    i32 12, label %sw.bb167
    i32 10, label %sw.bb169
    i32 16, label %sw.bb171
    i32 8, label %sw.bb173
    i32 6, label %sw.bb175
    i32 2, label %sw.bb177
    i32 4, label %if.end165.sw.bb179_crit_edge
  ]

if.end165.sw.bb179_crit_edge:                     ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb179

if.end165.sw.epilog_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb167:                                         ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb169:                                         ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb171:                                         ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb173:                                         ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb175:                                         ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb177:                                         ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %full_duplex to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %full_duplex, align 4
  br label %sw.bb179

sw.bb179:                                         ; preds = %sw.bb177, %if.end165.sw.bb179_crit_edge
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  %speed181 = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 3
  %82 = ptrtoint ptr %speed181 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %speed181, align 4
  %83 = ptrtoint ptr %link_output to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %link_output, align 4
  br label %if.else190

sw.epilog:                                        ; preds = %sw.bb179, %sw.bb175, %sw.bb173, %sw.bb171, %sw.bb169, %sw.bb167, %if.end165.sw.epilog_crit_edge
  %.sink = phi i32 [ 1000, %sw.bb179 ], [ 10000, %sw.bb175 ], [ 20000, %sw.bb173 ], [ 25000, %sw.bb171 ], [ 40000, %sw.bb169 ], [ 50000, %sw.bb167 ], [ 100000, %if.end165.sw.epilog_crit_edge ]
  %speed180 = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 3
  %84 = ptrtoint ptr %speed180 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %.sink, ptr %speed180, align 4
  %85 = ptrtoint ptr %link_output to i32
  call void @__asan_load1_noabort(i32 %85)
  %.pr = load i8, ptr %link_output, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool184.not = icmp eq i8 %.pr, 0
  br i1 %tobool184.not, label %sw.epilog.if.else190_crit_edge, label %land.lhs.true

sw.epilog.if.else190_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else190

land.lhs.true:                                    ; preds = %sw.epilog
  %speed186 = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 3
  %86 = ptrtoint ptr %speed186 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %speed186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool187.not = icmp eq i32 %87, 0
  br i1 %tobool187.not, label %land.lhs.true.if.else190_crit_edge, label %land.lhs.true.if.end192_crit_edge

land.lhs.true.if.end192_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end192

land.lhs.true.if.else190_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else190

if.else190:                                       ; preds = %land.lhs.true.if.else190_crit_edge, %sw.epilog.if.else190_crit_edge, %sw.epilog.thread
  br label %if.end192

if.end192:                                        ; preds = %if.else190, %land.lhs.true.if.end192_crit_edge
  %.sink444 = phi i32 [ 0, %if.else190 ], [ %87, %land.lhs.true.if.end192_crit_edge ]
  %line_speed191 = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 2
  %88 = ptrtoint ptr %line_speed191 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %.sink444, ptr %line_speed191, align 4
  %89 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mcp_info, align 8
  %bandwidth_max = getelementptr inbounds %struct.qed_mcp_info, ptr %90, i32 0, i32 13, i32 3
  %91 = ptrtoint ptr %bandwidth_max to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bandwidth_max, align 1
  %bandwidth_min = getelementptr inbounds %struct.qed_mcp_info, ptr %90, i32 0, i32 13, i32 2
  %93 = ptrtoint ptr %bandwidth_min to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bandwidth_min, align 8
  %call196 = tail call i32 @__qed_configure_pf_max_bandwidth(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %link_output, i8 noundef zeroext %92) #11
  %call197 = tail call i32 @__qed_configure_pf_min_bandwidth(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %link_output, i8 noundef zeroext %94) #11
  %95 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %p_hwfn, align 8
  %min_pf_rate = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 1
  %97 = ptrtoint ptr %min_pf_rate to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %min_pf_rate, align 4
  tail call void @qed_configure_vp_wfq_on_link_change(ptr noundef %96, ptr noundef %p_ptt, i32 noundef %98) #11
  %an = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 5
  %99 = trunc i32 %call to i8
  %100 = lshr i8 %99, 5
  %101 = and i8 %100, 1
  %102 = ptrtoint ptr %an to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %an, align 1
  %an_complete = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 6
  %103 = lshr i8 %99, 6
  %104 = and i8 %103, 1
  %105 = ptrtoint ptr %an_complete to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %an_complete, align 2
  %parallel_detection = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 7
  %106 = lshr i8 %99, 7
  %107 = ptrtoint ptr %parallel_detection to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %parallel_detection, align 1
  %pfc_enabled = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 8
  %and220 = lshr i32 %call, 8
  %108 = trunc i32 %and220 to i8
  %109 = and i8 %108, 1
  %110 = ptrtoint ptr %pfc_enabled to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %pfc_enabled, align 4
  %111 = and i32 %and220, 2
  %partner_adv_speed = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 9
  %112 = ptrtoint ptr %partner_adv_speed to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %partner_adv_speed, align 4
  %and231 = lshr i32 %call, 10
  %and231.lobit = and i32 %and231, 1
  %and236 = lshr i32 %call, 9
  %114 = and i32 %and236, 4
  %115 = and i32 %and236, 8
  %and246 = lshr i32 %call, 12
  %116 = and i32 %and246, 16
  %117 = and i32 %and220, 32
  %118 = and i32 %and220, 64
  %119 = and i32 %and220, 128
  %or230 = or i32 %and231.lobit, %111
  %or235 = or i32 %or230, %114
  %or240 = or i32 %or235, %115
  %or245 = or i32 %or240, %116
  %or250 = or i32 %or245, %117
  %or255 = or i32 %or250, %118
  %or260 = or i32 %or255, %119
  %or265 = or i32 %or260, %113
  store i32 %or265, ptr %partner_adv_speed, align 4
  %partner_tx_flow_ctrl_en = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 10
  %and266 = lshr i32 %call, 21
  %120 = trunc i32 %and266 to i8
  %121 = and i8 %120, 1
  %122 = ptrtoint ptr %partner_tx_flow_ctrl_en to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %partner_tx_flow_ctrl_en, align 4
  %partner_rx_flow_ctrl_en = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 11
  %and273 = lshr i32 %call, 22
  %123 = trunc i32 %and273 to i8
  %124 = and i8 %123, 1
  %125 = ptrtoint ptr %partner_rx_flow_ctrl_en to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %partner_rx_flow_ctrl_en, align 1
  %and280 = and i32 %call, 786432
  %126 = zext i32 %and280 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.369)
  switch i32 %and280, label %sw.default286 [
    i32 262144, label %if.end192.sw.epilog288_crit_edge
    i32 524288, label %sw.bb282
    i32 786432, label %sw.bb284
  ]

if.end192.sw.epilog288_crit_edge:                 ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog288

sw.bb282:                                         ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog288

sw.bb284:                                         ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog288

sw.default286:                                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog288

sw.epilog288:                                     ; preds = %sw.default286, %sw.bb284, %sw.bb282, %if.end192.sw.epilog288_crit_edge
  %.sink445 = phi i8 [ 0, %sw.default286 ], [ 3, %sw.bb284 ], [ 2, %sw.bb282 ], [ 1, %if.end192.sw.epilog288_crit_edge ]
  %partner_adv_pause287 = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 12
  %127 = ptrtoint ptr %partner_adv_pause287 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %.sink445, ptr %partner_adv_pause287, align 2
  %sfp_tx_fault = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 13
  %and289 = lshr i32 %call, 20
  %128 = trunc i32 %and289 to i8
  %129 = and i8 %128, 1
  %130 = ptrtoint ptr %sfp_tx_fault to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %sfp_tx_fault, align 1
  %131 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mcp_info, align 8
  %capabilities297 = getelementptr inbounds %struct.qed_mcp_info, ptr %132, i32 0, i32 18
  %133 = ptrtoint ptr %capabilities297 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %capabilities297, align 8
  %and298 = and i32 %134, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and298)
  %tobool299.not = icmp eq i32 %and298, 0
  br i1 %tobool299.not, label %sw.epilog288.if.end301_crit_edge, label %if.then300

sw.epilog288.if.end301_crit_edge:                 ; preds = %sw.epilog288
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end301

if.then300:                                       ; preds = %sw.epilog288
  %eee_adv_caps.i = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 15
  %135 = ptrtoint ptr %eee_adv_caps.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %eee_adv_caps.i, align 1
  %eee_lp_adv_caps.i = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 16
  %136 = ptrtoint ptr %eee_lp_adv_caps.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %eee_lp_adv_caps.i, align 2
  %137 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mcp_info, align 8
  %port_addr.i = getelementptr inbounds %struct.qed_mcp_info, ptr %138, i32 0, i32 7
  %139 = ptrtoint ptr %port_addr.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %port_addr.i, align 8
  %add.i441 = add i32 %140, 1484
  %call.i442 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.i441) #11
  %eee_active.i = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 14
  %141 = trunc i32 %call.i442 to i8
  %142 = and i8 %141, 1
  %143 = ptrtoint ptr %eee_active.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %eee_active.i, align 4
  %144 = and i32 %call.i442, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool4.not.i = icmp eq i32 %144, 0
  br i1 %tobool4.not.i, label %if.then300.if.end.i_crit_edge, label %if.then.i

if.then300.if.end.i_crit_edge:                    ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #13
  %145 = ptrtoint ptr %eee_adv_caps.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %eee_adv_caps.i, align 1
  %147 = or i8 %146, 1
  store i8 %147, ptr %eee_adv_caps.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then300.if.end.i_crit_edge
  %148 = and i32 %call.i442, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool8.not.i = icmp eq i32 %148, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then9.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %149 = ptrtoint ptr %eee_adv_caps.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %eee_adv_caps.i, align 1
  %151 = or i8 %150, 2
  store i8 %151, ptr %eee_adv_caps.i, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i, %if.end.i.if.end14.i_crit_edge
  %152 = and i32 %call.i442, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool18.not.i = icmp eq i32 %152, 0
  br i1 %tobool18.not.i, label %if.end14.i.if.end24.i_crit_edge, label %if.then19.i

if.end14.i.if.end24.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then19.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %eee_lp_adv_caps.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %eee_lp_adv_caps.i, align 2
  %155 = or i8 %154, 1
  store i8 %155, ptr %eee_lp_adv_caps.i, align 2
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then19.i, %if.end14.i.if.end24.i_crit_edge
  %156 = and i32 %call.i442, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool26.not.i = icmp eq i32 %156, 0
  br i1 %tobool26.not.i, label %if.end24.i.if.end301_crit_edge, label %if.then27.i

if.end24.i.if.end301_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end301

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %157 = ptrtoint ptr %eee_lp_adv_caps.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %eee_lp_adv_caps.i, align 2
  %159 = or i8 %158, 2
  store i8 %159, ptr %eee_lp_adv_caps.i, align 2
  br label %if.end301

if.end301:                                        ; preds = %if.then27.i, %if.end24.i.if.end301_crit_edge, %sw.epilog288.if.end301_crit_edge
  %160 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mcp_info, align 8
  %capabilities303 = getelementptr inbounds %struct.qed_mcp_info, ptr %161, i32 0, i32 18
  %162 = ptrtoint ptr %capabilities303 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %capabilities303, align 8
  %and304 = and i32 %163, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and304)
  %tobool305.not = icmp eq i32 %and304, 0
  br i1 %tobool305.not, label %if.end301.if.end318_crit_edge, label %if.then306

if.end301.if.end318_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end318

if.then306:                                       ; preds = %if.end301
  %and307 = and i32 %call, 939524096
  %164 = zext i32 %and307 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.370)
  switch i32 %and307, label %sw.default313 [
    i32 0, label %if.then306.if.end318_crit_edge
    i32 134217728, label %sw.bb309
    i32 268435456, label %sw.bb311
  ]

if.then306.if.end318_crit_edge:                   ; preds = %if.then306
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end318

sw.bb309:                                         ; preds = %if.then306
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end318

sw.bb311:                                         ; preds = %if.then306
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end318

sw.default313:                                    ; preds = %if.then306
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end318

if.end318:                                        ; preds = %sw.default313, %sw.bb311, %sw.bb309, %if.then306.if.end318_crit_edge, %if.end301.if.end318_crit_edge
  %.sink446 = phi i32 [ 2, %sw.bb309 ], [ 4, %sw.bb311 ], [ 8, %sw.default313 ], [ 1, %if.then306.if.end318_crit_edge ], [ 16, %if.end301.if.end318_crit_edge ]
  %fec_active = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 11, i32 17
  %165 = ptrtoint ptr %fec_active to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %.sink446, ptr %fec_active, align 4
  tail call void @qed_link_update(ptr noundef %p_hwfn, ptr noundef %p_ptt) #11
  br label %out

out:                                              ; preds = %if.end318, %do.end37, %land.rhs23.out_crit_edge, %do.body18.out_crit_edge
  %166 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mcp_info, align 8
  %link_lock320 = getelementptr inbounds %struct.qed_mcp_info, ptr %167, i32 0, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %link_lock320) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_get_process_kill_counter(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf, align 4, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %4 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcp_info, align 8
  %public_base = getelementptr inbounds %struct.qed_mcp_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %public_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %public_base, align 4
  %add = add i32 %7, 16
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add) #11
  %and = shl i32 %call, 2
  %shl = and i32 %and, 262140
  %8 = lshr i32 %call, 14
  %shl4 = and i32 %8, 262140
  %9 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p_hwfn, align 8
  %type = getelementptr inbounds %struct.qed_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %abs_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %13 = ptrtoint ptr %abs_pf_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %abs_pf_id, align 2
  %15 = and i8 %14, 1
  %and6 = zext i8 %15 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %and6, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %mul = mul nuw nsw i32 %cond, %shl4
  %add7 = add nuw nsw i32 %shl, 14811172
  %add8 = add nuw nsw i32 %add7, %mul
  %call9 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add8) #11
  %and10 = and i32 %call9, 65535
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and10, %cond.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_mdump_get_retain(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %p_mdump_retain) local_unnamed_addr #1 align 64 {
entry:
  %mdump_cmd_params = alloca %struct.qed_mdump_cmd_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mdump_cmd_params) #11
  %0 = getelementptr inbounds i8, ptr %mdump_cmd_params, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %2 = ptrtoint ptr %mdump_cmd_params to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %mdump_cmd_params, align 4
  %p_data_dst = getelementptr inbounds %struct.qed_mdump_cmd_params, ptr %mdump_cmd_params, i32 0, i32 3
  %3 = ptrtoint ptr %p_data_dst to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %p_mdump_retain, ptr %p_data_dst, align 4
  %data_dst_size = getelementptr inbounds %struct.qed_mdump_cmd_params, ptr %mdump_cmd_params, i32 0, i32 4
  %4 = ptrtoint ptr %data_dst_size to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 16, ptr %data_dst_size, align 4
  %call = call fastcc i32 @qed_mcp_mdump_cmd(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mdump_cmd_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mcp_resp = getelementptr inbounds %struct.qed_mdump_cmd_params, ptr %mdump_cmd_params, i32 0, i32 5
  %5 = ptrtoint ptr %mcp_resp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mcp_resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1441792, i32 %6)
  %cmp.not = icmp eq i32 %6, 1441792
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %7 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp2 = icmp ult i8 %8, 2
  br i1 %cmp2, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.3, ptr %name
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 1858, ptr noundef nonnull %spec.select, i32 noundef %6) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mdump_cmd_params) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_mcp_mdump_cmd(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef %p_mdump_cmd_params) unnamed_addr #1 align 64 {
entry:
  %mb_params = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params) #11
  %0 = getelementptr inbounds i8, ptr %mb_params, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %2 = ptrtoint ptr %mb_params to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2424832, ptr %mb_params, align 4
  %3 = ptrtoint ptr %p_mdump_cmd_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p_mdump_cmd_params, align 4
  %param = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 1
  %5 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %param, align 4
  %p_data_src = getelementptr inbounds %struct.qed_mdump_cmd_params, ptr %p_mdump_cmd_params, i32 0, i32 1
  %6 = ptrtoint ptr %p_data_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_data_src, align 4
  %p_data_src2 = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 2
  %8 = ptrtoint ptr %p_data_src2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %p_data_src2, align 4
  %data_src_size = getelementptr inbounds %struct.qed_mdump_cmd_params, ptr %p_mdump_cmd_params, i32 0, i32 2
  %9 = ptrtoint ptr %data_src_size to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data_src_size, align 4
  %data_src_size3 = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 4
  %11 = ptrtoint ptr %data_src_size3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %data_src_size3, align 4
  %p_data_dst = getelementptr inbounds %struct.qed_mdump_cmd_params, ptr %p_mdump_cmd_params, i32 0, i32 3
  %12 = ptrtoint ptr %p_data_dst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p_data_dst, align 4
  %p_data_dst4 = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 3
  %14 = ptrtoint ptr %p_data_dst4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %p_data_dst4, align 4
  %data_dst_size = getelementptr inbounds %struct.qed_mdump_cmd_params, ptr %p_mdump_cmd_params, i32 0, i32 4
  %15 = ptrtoint ptr %data_dst_size to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data_dst_size, align 4
  %data_dst_size5 = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 5
  %17 = ptrtoint ptr %data_dst_size5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %data_dst_size5, align 1
  %call = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mcp_resp = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 6
  %18 = ptrtoint ptr %mcp_resp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mcp_resp, align 4
  %mcp_resp6 = getelementptr inbounds %struct.qed_mdump_cmd_params, ptr %p_mdump_cmd_params, i32 0, i32 5
  %20 = ptrtoint ptr %mcp_resp6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %mcp_resp6, align 4
  %21 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.371)
  switch i32 %19, label %if.end.cleanup_crit_edge [
    i32 196608, label %do.body
    i32 0, label %do.body27
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %22 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp9 = icmp ult i8 %23, 2
  br i1 %cmp9, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool15.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool15.not, ptr @.str.3, ptr %name
  %24 = ptrtoint ptr %p_mdump_cmd_params to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %p_mdump_cmd_params, align 4
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.267, i32 noundef 1817, ptr noundef nonnull %spec.select, i32 noundef %25) #14
  br label %cleanup

do.body27:                                        ; preds = %if.end
  %dp_level28 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %26 = ptrtoint ptr %dp_level28 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dp_level28, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp30 = icmp ult i8 %27, 2
  br i1 %cmp30, label %do.end41, label %do.body27.cleanup_crit_edge, !prof !663

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end41:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  %name43 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool45.not = icmp eq ptr %name43, null
  %spec.select75 = select i1 %tobool45.not, ptr @.str.3, ptr %name43
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.269, ptr noundef nonnull @.str.267, i32 noundef 1821, ptr noundef nonnull %spec.select75) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %do.body27.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -95, %do.end ], [ -95, %do.body.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -95, %do.end41 ], [ -95, %do.body27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_mcp_read_ufp_config(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  %shmem_info = alloca %struct.public_func, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %shmem_info) #11
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %mf_bits = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %mf_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %mf_bits, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ufp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 47
  %5 = call ptr @memset(ptr %ufp_info, i32 0, i32 12)
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %6 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcp_info, align 8
  %port_addr = getelementptr inbounds %struct.qed_mcp_info, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %port_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_addr, align 8
  %add = add i32 %9, 1496
  %call1 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add) #11
  %and = and i32 %call1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp.not = icmp eq i32 %and, 2
  br i1 %cmp.not, label %if.end.if.end19_crit_edge, label %do.body

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %10 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp3 = icmp ult i8 %11, 3
  br i1 %cmp3, label %do.end, label %do.body.if.end19_crit_edge, !prof !663

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool9.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool9.not, ptr @.str.3, ptr %name
  %abs_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %12 = ptrtoint ptr %abs_pf_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %abs_pf_id, align 2
  %conv12 = zext i8 %13 to i32
  %14 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p_hwfn, align 8
  %call14 = tail call i32 @qed_device_num_ports(ptr noundef %15) #11
  %rem = srem i32 %conv12, %call14
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 1910, ptr noundef nonnull %spec.select, i32 noundef %and, i32 noundef %rem) #14
  br label %if.end19

if.end19:                                         ; preds = %do.end, %do.body.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %and20 = lshr i32 %call1, 2
  %shr21 = and i32 %and20, 3
  %16 = zext i32 %shr21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.372)
  switch i32 %shr21, label %if.else31 [
    i32 1, label %if.then24
    i32 2, label %if.then28
  ]

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %mode = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 47, i32 1
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %mode, align 4
  br label %if.end69

if.then28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %mode30 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 47, i32 1
  %18 = ptrtoint ptr %mode30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %mode30, align 4
  br label %if.end69

if.else31:                                        ; preds = %if.end19
  %mode33 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 47, i32 1
  %19 = ptrtoint ptr %mode33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %mode33, align 4
  %dp_level35 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %20 = ptrtoint ptr %dp_level35 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dp_level35, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp37 = icmp ult i8 %21, 3
  br i1 %cmp37, label %do.end48, label %if.else31.if.end69_crit_edge, !prof !663

if.else31.if.end69_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

do.end48:                                         ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #13
  %name50 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool52.not = icmp eq ptr %name50, null
  %spec.select232 = select i1 %tobool52.not, ptr @.str.3, ptr %name50
  %abs_pf_id59 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %22 = ptrtoint ptr %abs_pf_id59 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %abs_pf_id59, align 2
  %conv60 = zext i8 %23 to i32
  %24 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p_hwfn, align 8
  %call62 = tail call i32 @qed_device_num_ports(ptr noundef %25) #11
  %rem63 = srem i32 %conv60, %call62
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef 1921, ptr noundef nonnull %spec.select232, i32 noundef %shr21, i32 noundef %rem63) #14
  br label %if.end69

if.end69:                                         ; preds = %do.end48, %if.else31.if.end69_crit_edge, %if.then28, %if.then24
  %26 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p_hwfn, align 8
  %type = getelementptr inbounds %struct.qed_dev, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp71 = icmp eq i32 %29, 0
  %rel_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %30 = ptrtoint ptr %rel_pf_id to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rel_pf_id, align 1
  br i1 %cmp71, label %cond.true73, label %if.end69.cond.end81_crit_edge

if.end69.cond.end81_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end81

cond.true73:                                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %abs_pf_id75 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %32 = ptrtoint ptr %abs_pf_id75 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %abs_pf_id75, align 2
  %34 = shl i8 %33, 3
  %35 = and i8 %34, 8
  %or231 = or i8 %35, %31
  br label %cond.end81

cond.end81:                                       ; preds = %cond.true73, %if.end69.cond.end81_crit_edge
  %cond82.in = phi i8 [ %or231, %cond.true73 ], [ %31, %if.end69.cond.end81_crit_edge ]
  %cond82 = zext i8 %cond82.in to i32
  %36 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mcp_info, align 8
  %public_base.i = getelementptr inbounds %struct.qed_mcp_info, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %public_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %public_base.i, align 4
  %add.i = add i32 %39, 24
  %call.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.i) #11
  %and.i = shl i32 %call.i, 2
  %shl.i = and i32 %and.i, 262140
  %add1.i = add nuw nsw i32 %shl.i, 14811136
  %40 = lshr i32 %call.i, 14
  %shl4.i = and i32 %40, 262140
  %mul.i = mul nuw nsw i32 %shl4.i, %cond82
  %add5.i = add nuw nsw i32 %add1.i, %mul.i
  %41 = call ptr @memset(ptr %shmem_info, i32 0, i32 136)
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %shl4.i)
  %cmp.i = icmp ugt i32 %shl4.i, 136
  %phi.bo1.i = lshr i32 %call.i, 16
  %cond.i = select i1 %cmp.i, i32 34, i32 %phi.bo1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp92.not.i = icmp eq i32 %cond.i, 0
  br i1 %cmp92.not.i, label %cond.end81.qed_mcp_get_shmem_func.exit_crit_edge, label %cond.end81.for.body.i_crit_edge

cond.end81.for.body.i_crit_edge:                  ; preds = %cond.end81
  br label %for.body.i

cond.end81.qed_mcp_get_shmem_func.exit_crit_edge: ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_get_shmem_func.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cond.end81.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %cond.end81.for.body.i_crit_edge ]
  %shl10.i = shl i32 %i.03.i, 2
  %add11.i = add nuw nsw i32 %add5.i, %shl10.i
  %call12.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add11.i) #11
  %arrayidx.i = getelementptr i32, ptr %shmem_info, i32 %i.03.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call12.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond.i
  br i1 %exitcond.not.i, label %for.body.i.qed_mcp_get_shmem_func.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.qed_mcp_get_shmem_func.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_get_shmem_func.exit

qed_mcp_get_shmem_func.exit:                      ; preds = %for.body.i.qed_mcp_get_shmem_func.exit_crit_edge, %cond.end81.qed_mcp_get_shmem_func.exit_crit_edge
  %oem_cfg_func = getelementptr inbounds %struct.public_func, ptr %shmem_info, i32 0, i32 22
  %43 = ptrtoint ptr %oem_cfg_func to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %oem_cfg_func, align 4
  %45 = trunc i32 %44 to i8
  %conv86 = and i8 %45, 15
  %tc = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 47, i32 2
  %46 = ptrtoint ptr %tc to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv86, ptr %tc, align 8
  %and89 = lshr i32 %44, 4
  %shr90 = and i32 %and89, 3
  %47 = zext i32 %shr90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.373)
  switch i32 %shr90, label %if.else101 [
    i32 1, label %if.then93
    i32 2, label %if.then98
  ]

if.then93:                                        ; preds = %qed_mcp_get_shmem_func.exit
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %ufp_info to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %ufp_info, align 8
  br label %do.body140

if.then98:                                        ; preds = %qed_mcp_get_shmem_func.exit
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %ufp_info to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %ufp_info, align 8
  br label %do.body140

if.else101:                                       ; preds = %qed_mcp_get_shmem_func.exit
  %50 = ptrtoint ptr %ufp_info to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %ufp_info, align 8
  %dp_level105 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %51 = ptrtoint ptr %dp_level105 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dp_level105, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %52)
  %cmp107 = icmp ult i8 %52, 3
  br i1 %cmp107, label %do.end118, label %if.else101.do.body140_crit_edge, !prof !663

if.else101.do.body140_crit_edge:                  ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body140

do.end118:                                        ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #13
  %name120 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool122.not = icmp eq ptr %name120, null
  %spec.select233 = select i1 %tobool122.not, ptr @.str.3, ptr %name120
  %abs_pf_id129 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %53 = ptrtoint ptr %abs_pf_id129 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %abs_pf_id129, align 2
  %conv130 = zext i8 %54 to i32
  %55 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %p_hwfn, align 8
  %call132 = tail call i32 @qed_device_num_ports(ptr noundef %56) #11
  %rem133 = srem i32 %conv130, %call132
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.59, i32 noundef 1938, ptr noundef nonnull %spec.select233, i32 noundef %shr90, i32 noundef %rem133) #14
  br label %do.body140

do.body140:                                       ; preds = %do.end118, %if.else101.do.body140_crit_edge, %if.then98, %if.then93
  %dp_level141 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %57 = ptrtoint ptr %dp_level141 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %dp_level141, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %58)
  %cmp143 = icmp ult i8 %58, 3
  br i1 %cmp143, label %do.end154, label %do.body140.cleanup_crit_edge, !prof !663

do.body140.cleanup_crit_edge:                     ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end154:                                        ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #13
  %name156 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool158.not = icmp eq ptr %name156, null
  %spec.select234 = select i1 %tobool158.not, ptr @.str.3, ptr %name156
  %mode166 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 47, i32 1
  %59 = ptrtoint ptr %mode166 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mode166, align 4
  %61 = ptrtoint ptr %tc to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %tc, align 8
  %conv169 = zext i8 %62 to i32
  %63 = ptrtoint ptr %ufp_info to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ufp_info, align 8
  %abs_pf_id172 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %65 = ptrtoint ptr %abs_pf_id172 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %abs_pf_id172, align 2
  %conv173 = zext i8 %66 to i32
  %67 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %p_hwfn, align 8
  %call175 = tail call i32 @qed_device_num_ports(ptr noundef %68) #11
  %rem176 = srem i32 %conv173, %call175
  %call177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.59, i32 noundef 1944, ptr noundef nonnull %spec.select234, i32 noundef %60, i32 noundef %conv169, i32 noundef %64, i32 noundef %rem176) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end154, %do.body140.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %shmem_info) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_handle_events(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  %mdump_cmd_params.i94.i = alloca %struct.qed_mdump_cmd_params, align 4
  %mdump_cmd_params.i.i = alloca %struct.qed_mdump_cmd_params, align 4
  %mdump_retain.i = alloca %struct.mdump_retain_data_stc, align 4
  %mb_params.i.i290 = alloca %struct.qed_mcp_mb_params, align 4
  %shmem_info.i291 = alloca %struct.public_func, align 4
  %mb_params.i.i = alloca %struct.qed_mcp_mb_params, align 4
  %shmem_info.i = alloca %struct.public_func, align 4
  %stats.i = alloca %union.qed_mcp_protocol_stats, align 8
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  %disabled_vfs.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %4 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module, align 4
  %and = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end9_crit_edge, label %do.end, !prof !662

land.rhs.do.end9_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef 1984, ptr noundef nonnull %spec.select) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end, %land.rhs.do.end9_crit_edge, %entry.do.end9_crit_edge
  %6 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcp_info, align 8
  %mfw_mb_length.i = getelementptr inbounds %struct.qed_mcp_info, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %mfw_mb_length.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mfw_mb_length.i, align 8
  %conv.i = zext i16 %9 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %shr.i = ashr i32 %sub.i, 2
  %public_base.i = getelementptr inbounds %struct.qed_mcp_info, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %public_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %public_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp ne i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shr.i)
  %cmp16.i = icmp ne i32 %shr.i, -1
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp16.i, i1 false
  br i1 %or.cond.i, label %do.end9.for.body.i_crit_edge, label %do.end9.qed_mcp_read_mb.exit_crit_edge

do.end9.qed_mcp_read_mb.exit_crit_edge:           ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_read_mb.exit

do.end9.for.body.i_crit_edge:                     ; preds = %do.end9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end9.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end9.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mcp_info, align 8
  %mfw_mb_addr.i = getelementptr inbounds %struct.qed_mcp_info, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %mfw_mb_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mfw_mb_addr.i, align 4
  %shl.i = shl i32 %i.017.i, 2
  %add4.i = add i32 %shl.i, 4
  %add5.i = add i32 %add4.i, %15
  %call.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add5.i) #11
  %16 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mcp_info, align 8
  %mfw_mb_cur.i = getelementptr inbounds %struct.qed_mcp_info, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %mfw_mb_cur.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mfw_mb_cur.i, align 8
  %arrayidx.i = getelementptr i32, ptr %19, i32 %i.017.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %i.017.i, %shr.i
  br i1 %exitcond.not.i, label %for.body.i.qed_mcp_read_mb.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.qed_mcp_read_mb.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_read_mb.exit

qed_mcp_read_mb.exit:                             ; preds = %for.body.i.qed_mcp_read_mb.exit_crit_edge, %do.end9.qed_mcp_read_mb.exit_crit_edge
  %mfw_mb_length = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %mfw_mb_length to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mfw_mb_length, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp12358.not = icmp eq i16 %22, 0
  br i1 %cmp12358.not, label %qed_mcp_read_mb.exit.do.body140_crit_edge, label %for.body.lr.ph

qed_mcp_read_mb.exit.do.body140_crit_edge:        ; preds = %qed_mcp_read_mb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body140

for.body.lr.ph:                                   ; preds = %qed_mcp_read_mb.exit
  %mfw_mb_cur = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 14
  %mfw_mb_shadow = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 15
  %dp_module28 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name43 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool45.not = icmp eq ptr %name43, null
  %spec.select243 = select i1 %tobool45.not, ptr @.str.3, ptr %name43
  %23 = getelementptr inbounds %struct.mdump_retain_data_stc, ptr %mdump_retain.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.mdump_retain_data_stc, ptr %mdump_retain.i, i32 0, i32 2
  %25 = getelementptr inbounds %struct.mdump_retain_data_stc, ptr %mdump_retain.i, i32 0, i32 3
  %26 = getelementptr inbounds i8, ptr %mdump_cmd_params.i.i, i32 4
  %p_data_dst.i.i = getelementptr inbounds %struct.qed_mdump_cmd_params, ptr %mdump_cmd_params.i.i, i32 0, i32 3
  %data_dst_size.i.i = getelementptr inbounds %struct.qed_mdump_cmd_params, ptr %mdump_cmd_params.i.i, i32 0, i32 4
  %mcp_resp.i.i = getelementptr inbounds %struct.qed_mdump_cmd_params, ptr %mdump_cmd_params.i.i, i32 0, i32 5
  %27 = getelementptr inbounds i8, ptr %mdump_cmd_params.i94.i, i32 4
  %rel_pf_id.i294 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %abs_pf_id.i295 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %ovlan_stag.i = getelementptr inbounds %struct.public_func, ptr %shmem_info.i291, i32 0, i32 16
  %ovlan11.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 11
  %hw_mode.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 18
  %28 = getelementptr inbounds i8, ptr %mb_params.i.i290, i32 8
  %param2.i.i331 = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i290, i32 0, i32 1
  %config.i.i = getelementptr inbounds %struct.public_func, ptr %shmem_info.i, i32 0, i32 8
  %29 = getelementptr inbounds i8, ptr %mb_params.i.i, i32 8
  %param2.i.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i, i32 0, i32 1
  %30 = getelementptr inbounds i8, ptr %mb_params.i, i32 12
  %param.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %p_data_src.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 2
  %data_src_size.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 4
  %mode.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 47, i32 1
  %tc.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 47, i32 2
  %ooo_tc.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 49, i32 17
  %hw_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %31 = getelementptr inbounds [6 x i32], ptr %disabled_vfs.i, i32 0, i32 1
  %32 = getelementptr inbounds [6 x i32], ptr %disabled_vfs.i, i32 0, i32 2
  %33 = getelementptr inbounds [6 x i32], ptr %disabled_vfs.i, i32 0, i32 3
  %34 = getelementptr inbounds [6 x i32], ptr %disabled_vfs.i, i32 0, i32 4
  %35 = getelementptr inbounds [6 x i32], ptr %disabled_vfs.i, i32 0, i32 5
  br label %for.body

for.cond115.preheader:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %277)
  %cmp119.not369 = icmp eq i16 %277, 0
  br i1 %cmp119.not369, label %for.cond115.preheader.for.end137_crit_edge, label %for.body121.lr.ph

for.cond115.preheader.for.end137_crit_edge:       ; preds = %for.cond115.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end137

for.body121.lr.ph:                                ; preds = %for.cond115.preheader
  %conv118366 = zext i16 %277 to i32
  %mfw_mb_cur122 = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 14
  %mfw_mb_addr = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 6
  br label %for.body121

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %rc.0362 = phi i32 [ 0, %for.body.lr.ph ], [ %rc.1, %for.inc.for.body_crit_edge ]
  %found.0.off0361 = phi i1 [ false, %for.body.lr.ph ], [ %found.1.off0, %for.inc.for.body_crit_edge ]
  %36 = ptrtoint ptr %mfw_mb_cur to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mfw_mb_cur, align 8
  %arrayidx = getelementptr i8, ptr %37, i32 %indvars.iv
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %40 = ptrtoint ptr %mfw_mb_shadow to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mfw_mb_shadow, align 4
  %arrayidx16 = getelementptr i8, ptr %41, i32 %indvars.iv
  %42 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %43)
  %cmp18 = icmp eq i8 %39, %43
  br i1 %cmp18, label %for.body.for.inc_crit_edge, label %if.end21

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %44 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp25 = icmp eq i8 %45, 0
  br i1 %cmp25, label %land.rhs27, label %if.end21.do.end64_crit_edge

if.end21.do.end64_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64

land.rhs27:                                       ; preds = %if.end21
  %46 = ptrtoint ptr %dp_module28 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dp_module28, align 4
  %and29 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %land.rhs27.do.end64_crit_edge, label %do.end41, !prof !662

land.rhs27.do.end64_crit_edge:                    ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64

do.end41:                                         ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #13
  %conv56 = zext i8 %43 to i32
  %conv60 = zext i8 %39 to i32
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70, i32 noundef 1998, ptr noundef nonnull %spec.select243, i32 noundef %indvars.iv, i32 noundef %conv56, i32 noundef %conv60) #14
  br label %do.end64

do.end64:                                         ; preds = %do.end41, %land.rhs27.do.end64_crit_edge, %if.end21.do.end64_crit_edge
  %48 = trunc i32 %indvars.iv to i16
  %49 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.374)
  switch i16 %48, label %do.body85 [
    i16 0, label %sw.bb
    i16 2, label %sw.bb66
    i16 3, label %sw.bb67
    i16 4, label %sw.bb69
    i16 5, label %sw.bb71
    i16 18, label %sw.bb73
    i16 14, label %sw.bb75
    i16 6, label %sw.bb76
    i16 9, label %do.end64.sw.bb77_crit_edge
    i16 10, label %do.end64.sw.bb77_crit_edge381
    i16 11, label %do.end64.sw.bb77_crit_edge382
    i16 12, label %do.end64.sw.bb77_crit_edge383
    i16 7, label %sw.bb79
    i16 8, label %sw.bb80
    i16 13, label %sw.bb81
    i16 15, label %sw.bb82
    i16 17, label %sw.bb83
  ]

do.end64.sw.bb77_crit_edge383:                    ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb77

do.end64.sw.bb77_crit_edge382:                    ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb77

do.end64.sw.bb77_crit_edge381:                    ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb77

do.end64.sw.bb77_crit_edge:                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb77

sw.bb:                                            ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @qed_mcp_handle_link_change(ptr noundef %p_hwfn, ptr noundef %p_ptt, i1 noundef zeroext false)
  br label %for.inc

sw.bb66:                                          ; preds = %do.end64
  %50 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mcp_info, align 8
  %public_base.i247 = getelementptr inbounds %struct.qed_mcp_info, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %public_base.i247 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %public_base.i247, align 4
  %add.i = add i32 %53, 16
  %call.i248 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.i) #11
  %and.i = shl i32 %call.i248, 2
  %shl.i249 = and i32 %and.i, 262140
  %add1.i = add nuw nsw i32 %shl.i249, 14811136
  %54 = lshr i32 %call.i248, 14
  %shl4.i = and i32 %54, 262140
  %55 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %p_hwfn, align 8
  %type.i = getelementptr inbounds %struct.qed_dev, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp.i = icmp eq i32 %58, 1
  br i1 %cmp.i, label %sw.bb66.cond.end.i_crit_edge, label %cond.false.i

sw.bb66.cond.end.i_crit_edge:                     ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.false.i:                                     ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %abs_pf_id.i295 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %abs_pf_id.i295, align 2
  %61 = and i8 %60, 1
  %and5.i = zext i8 %61 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %sw.bb66.cond.end.i_crit_edge
  %cond.i = phi i32 [ %and5.i, %cond.false.i ], [ 0, %sw.bb66.cond.end.i_crit_edge ]
  %mul.i = mul nuw nsw i32 %cond.i, %shl4.i
  %add6.i = add nuw nsw i32 %add1.i, %mul.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %disabled_vfs.i) #11
  %62 = call ptr @memset(ptr %33, i32 255, i32 12)
  %63 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp8.i = icmp eq i8 %64, 0
  br i1 %cmp8.i, label %land.rhs.i, label %cond.end.i.do.end23.i_crit_edge

cond.end.i.do.end23.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i

land.rhs.i:                                       ; preds = %cond.end.i
  %65 = ptrtoint ptr %dp_module28 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dp_module28, align 4
  %and10.i = and i32 %66, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i250 = icmp eq i32 %and10.i, 0
  br i1 %tobool.not.i250, label %land.rhs.i.do.end23.i_crit_edge, label %do.end.i, !prof !662

land.rhs.i.do.end23.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.272, i32 noundef 1146, ptr noundef nonnull %name43, i32 noundef %call.i248, i32 noundef %add6.i) #14
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end.i, %land.rhs.i.do.end23.i_crit_edge, %cond.end.i.do.end23.i_crit_edge
  %add26.i = add nuw nsw i32 %add6.i, 12
  %call29.i = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add26.i) #11
  %67 = ptrtoint ptr %disabled_vfs.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call29.i, ptr %disabled_vfs.i, align 4
  %68 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp33.i = icmp eq i8 %69, 0
  br i1 %cmp33.i, label %land.rhs35.i, label %do.end23.i.for.inc.i_crit_edge

do.end23.i.for.inc.i_crit_edge:                   ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.rhs35.i:                                     ; preds = %do.end23.i
  %70 = ptrtoint ptr %dp_module28 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dp_module28, align 4
  %and37.i = and i32 %71, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %land.rhs35.i.for.inc.i_crit_edge, label %do.end49.i, !prof !662

land.rhs35.i.for.inc.i_crit_edge:                 ; preds = %land.rhs35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

do.end49.i:                                       ; preds = %land.rhs35.i
  call void @__sanitizer_cov_trace_pc() #13
  %call64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.272, i32 noundef 1156, ptr noundef nonnull %name43, i32 noundef 0, i32 noundef 31, i32 noundef %call29.i) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end49.i, %land.rhs35.i.for.inc.i_crit_edge, %do.end23.i.for.inc.i_crit_edge
  %add28.1.i = add nuw nsw i32 %add6.i, 16
  %call29.1.i = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add28.1.i) #11
  %72 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call29.1.i, ptr %31, align 4
  %73 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp33.1.i = icmp eq i8 %74, 0
  br i1 %cmp33.1.i, label %land.rhs35.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

land.rhs35.1.i:                                   ; preds = %for.inc.i
  %75 = ptrtoint ptr %dp_module28 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dp_module28, align 4
  %and37.1.i = and i32 %76, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.1.i)
  %tobool38.not.1.i = icmp eq i32 %and37.1.i, 0
  br i1 %tobool38.not.1.i, label %land.rhs35.1.i.for.inc.1.i_crit_edge, label %do.end49.1.i, !prof !662

land.rhs35.1.i.for.inc.1.i_crit_edge:             ; preds = %land.rhs35.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

do.end49.1.i:                                     ; preds = %land.rhs35.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %call64.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.272, i32 noundef 1156, ptr noundef nonnull %name43, i32 noundef 32, i32 noundef 63, i32 noundef %call29.1.i) #14
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.end49.1.i, %land.rhs35.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %add28.2.i = add nuw nsw i32 %add6.i, 20
  %call29.2.i = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add28.2.i) #11
  %77 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call29.2.i, ptr %32, align 4
  %78 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp33.2.i = icmp eq i8 %79, 0
  br i1 %cmp33.2.i, label %land.rhs35.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

land.rhs35.2.i:                                   ; preds = %for.inc.1.i
  %80 = ptrtoint ptr %dp_module28 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dp_module28, align 4
  %and37.2.i = and i32 %81, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.2.i)
  %tobool38.not.2.i = icmp eq i32 %and37.2.i, 0
  br i1 %tobool38.not.2.i, label %land.rhs35.2.i.for.inc.2.i_crit_edge, label %do.end49.2.i, !prof !662

land.rhs35.2.i.for.inc.2.i_crit_edge:             ; preds = %land.rhs35.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

do.end49.2.i:                                     ; preds = %land.rhs35.2.i
  call void @__sanitizer_cov_trace_pc() #13
  %call64.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.272, i32 noundef 1156, ptr noundef nonnull %name43, i32 noundef 64, i32 noundef 95, i32 noundef %call29.2.i) #14
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %do.end49.2.i, %land.rhs35.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %add28.3.i = add nuw nsw i32 %add6.i, 24
  %call29.3.i = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add28.3.i) #11
  %82 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call29.3.i, ptr %33, align 4
  %83 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp33.3.i = icmp eq i8 %84, 0
  br i1 %cmp33.3.i, label %land.rhs35.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i

land.rhs35.3.i:                                   ; preds = %for.inc.2.i
  %85 = ptrtoint ptr %dp_module28 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dp_module28, align 4
  %and37.3.i = and i32 %86, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.3.i)
  %tobool38.not.3.i = icmp eq i32 %and37.3.i, 0
  br i1 %tobool38.not.3.i, label %land.rhs35.3.i.for.inc.3.i_crit_edge, label %do.end49.3.i, !prof !662

land.rhs35.3.i.for.inc.3.i_crit_edge:             ; preds = %land.rhs35.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i

do.end49.3.i:                                     ; preds = %land.rhs35.3.i
  call void @__sanitizer_cov_trace_pc() #13
  %call64.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.272, i32 noundef 1156, ptr noundef nonnull %name43, i32 noundef 96, i32 noundef 127, i32 noundef %call29.3.i) #14
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %do.end49.3.i, %land.rhs35.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %add28.4.i = add nuw nsw i32 %add6.i, 28
  %call29.4.i = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add28.4.i) #11
  %87 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call29.4.i, ptr %34, align 4
  %88 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp33.4.i = icmp eq i8 %89, 0
  br i1 %cmp33.4.i, label %land.rhs35.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4.i

land.rhs35.4.i:                                   ; preds = %for.inc.3.i
  %90 = ptrtoint ptr %dp_module28 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dp_module28, align 4
  %and37.4.i = and i32 %91, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.4.i)
  %tobool38.not.4.i = icmp eq i32 %and37.4.i, 0
  br i1 %tobool38.not.4.i, label %land.rhs35.4.i.for.inc.4.i_crit_edge, label %do.end49.4.i, !prof !662

land.rhs35.4.i.for.inc.4.i_crit_edge:             ; preds = %land.rhs35.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4.i

do.end49.4.i:                                     ; preds = %land.rhs35.4.i
  call void @__sanitizer_cov_trace_pc() #13
  %call64.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.272, i32 noundef 1156, ptr noundef nonnull %name43, i32 noundef 128, i32 noundef 159, i32 noundef %call29.4.i) #14
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %do.end49.4.i, %land.rhs35.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %add28.5.i = add nuw nsw i32 %add6.i, 32
  %call29.5.i = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add28.5.i) #11
  %92 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call29.5.i, ptr %35, align 4
  %93 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp33.5.i = icmp eq i8 %94, 0
  br i1 %cmp33.5.i, label %land.rhs35.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5.i

land.rhs35.5.i:                                   ; preds = %for.inc.4.i
  %95 = ptrtoint ptr %dp_module28 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dp_module28, align 4
  %and37.5.i = and i32 %96, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.5.i)
  %tobool38.not.5.i = icmp eq i32 %and37.5.i, 0
  br i1 %tobool38.not.5.i, label %land.rhs35.5.i.for.inc.5.i_crit_edge, label %do.end49.5.i, !prof !662

land.rhs35.5.i.for.inc.5.i_crit_edge:             ; preds = %land.rhs35.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5.i

do.end49.5.i:                                     ; preds = %land.rhs35.5.i
  call void @__sanitizer_cov_trace_pc() #13
  %call64.5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.272, i32 noundef 1156, ptr noundef nonnull %name43, i32 noundef 160, i32 noundef 191, i32 noundef %call29.5.i) #14
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %do.end49.5.i, %land.rhs35.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %call69.i = call zeroext i1 @qed_iov_mark_vf_flr(ptr noundef %p_hwfn, ptr noundef nonnull %disabled_vfs.i) #11
  br i1 %call69.i, label %if.then70.i, label %for.inc.5.i.qed_mcp_handle_vf_flr.exit_crit_edge

for.inc.5.i.qed_mcp_handle_vf_flr.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_handle_vf_flr.exit

if.then70.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @qed_schedule_iov(ptr noundef %p_hwfn, i32 noundef 4) #11
  br label %qed_mcp_handle_vf_flr.exit

qed_mcp_handle_vf_flr.exit:                       ; preds = %if.then70.i, %for.inc.5.i.qed_mcp_handle_vf_flr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %disabled_vfs.i) #11
  br label %for.inc

sw.bb67:                                          ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #13
  %call68 = call i32 @qed_dcbx_mib_update_event(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 3) #11
  br label %for.inc

sw.bb69:                                          ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #13
  %call70 = call i32 @qed_dcbx_mib_update_event(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1) #11
  br label %for.inc

sw.bb71:                                          ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #13
  %call72 = call i32 @qed_dcbx_mib_update_event(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 0) #11
  br label %for.inc

sw.bb73:                                          ; preds = %do.end64
  call void @qed_mcp_read_ufp_config(ptr noundef %p_hwfn, ptr noundef %p_ptt) #11
  %97 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mode.i, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.375)
  switch i32 %98, label %do.end.i253 [
    i32 1, label %if.then.i
    i32 0, label %if.then7.i
  ]

if.then.i:                                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %tc.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %tc.i, align 8
  %102 = ptrtoint ptr %ooo_tc.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %ooo_tc.i, align 2
  call void @qed_hw_info_set_offload_tc(ptr noundef %hw_info.i, i8 noundef zeroext %101) #11
  %call.i251 = call i32 @qed_qm_reconf(ptr noundef %p_hwfn, ptr noundef %p_ptt) #11
  br label %if.end15.i

if.then7.i:                                       ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = call i32 @qed_dcbx_mib_update_event(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 0) #11
  br label %if.end15.i

do.end.i253:                                      ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #13
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.277, i32 noundef 1963, ptr noundef nonnull %name43) #14
  br label %for.inc

if.end15.i:                                       ; preds = %if.then7.i, %if.then.i
  %call16.i = call i32 @qed_sp_pf_update_ufp(ptr noundef %p_hwfn) #11
  %call17.i = call i32 @qed_sp_pf_update_stag(ptr noundef %p_hwfn) #11
  br label %for.inc

sw.bb75:                                          ; preds = %do.end64
  %103 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mcp_info, align 8
  %port_addr.i = getelementptr inbounds %struct.qed_mcp_info, ptr %104, i32 0, i32 7
  %105 = ptrtoint ptr %port_addr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port_addr.i, align 8
  %add.i255 = add i32 %106, 1432
  %call.i256 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.i255) #11
  %107 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %cmp.i258 = icmp eq i8 %108, 0
  br i1 %cmp.i258, label %land.rhs.i262, label %sw.bb75.do.end13.i_crit_edge

sw.bb75.do.end13.i_crit_edge:                     ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13.i

land.rhs.i262:                                    ; preds = %sw.bb75
  %109 = ptrtoint ptr %dp_module28 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dp_module28, align 4
  %and.i260 = and i32 %110, 1056768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i260)
  %tobool.not.i261 = icmp eq i32 %and.i260, 0
  br i1 %tobool.not.i261, label %land.rhs.i262.do.end13.ithread-pre-split_crit_edge, label %do.end.i264, !prof !662

land.rhs.i262.do.end13.ithread-pre-split_crit_edge: ; preds = %land.rhs.i262
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13.ithread-pre-split

do.end.i264:                                      ; preds = %land.rhs.i262
  call void @__sanitizer_cov_trace_pc() #13
  %111 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mcp_info, align 8
  %port_addr9.i = getelementptr inbounds %struct.qed_mcp_info, ptr %112, i32 0, i32 7
  %113 = ptrtoint ptr %port_addr9.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %port_addr9.i, align 8
  %add10.i = add i32 %114, 1432
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.279, i32 noundef 1215, ptr noundef nonnull %name43, i32 noundef %call.i256, i32 noundef %add10.i) #14
  br label %do.end13.ithread-pre-split

do.end13.ithread-pre-split:                       ; preds = %do.end.i264, %land.rhs.i262.do.end13.ithread-pre-split_crit_edge
  %115 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %115)
  %.pr = load i8, ptr %dp_level, align 8
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end13.ithread-pre-split, %sw.bb75.do.end13.i_crit_edge
  %116 = phi i8 [ %.pr, %do.end13.ithread-pre-split ], [ %108, %sw.bb75.do.end13.i_crit_edge ]
  %and14.i = and i32 %call.i256, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and14.i)
  %cmp15.i = icmp eq i32 %and14.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %116)
  %cmp21.i = icmp ult i8 %116, 3
  br i1 %cmp15.i, label %do.body18.i, label %do.body47.i

do.body18.i:                                      ; preds = %do.end13.i
  br i1 %cmp21.i, label %do.end32.i, label %do.body18.i.for.inc_crit_edge, !prof !663

do.body18.i.for.inc_crit_edge:                    ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end32.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #13
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.279, i32 noundef 1221, ptr noundef nonnull %name43) #14
  br label %for.inc

do.body47.i:                                      ; preds = %do.end13.i
  br i1 %cmp21.i, label %do.end61.i, label %do.body47.i.for.inc_crit_edge, !prof !663

do.body47.i.for.inc_crit_edge:                    ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end61.i:                                       ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #13
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.284, ptr noundef nonnull @.str.279, i32 noundef 1223, ptr noundef nonnull %name43) #14
  br label %for.inc

sw.bb76:                                          ; preds = %do.end64
  %117 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %p_hwfn, align 8
  call void @qed_int_igu_disable_int(ptr noundef %p_hwfn, ptr noundef %p_ptt) #11
  %119 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %120)
  %cmp.i266 = icmp ult i8 %120, 3
  br i1 %cmp.i266, label %do.end.i269, label %sw.bb76.do.end9.i_crit_edge, !prof !663

sw.bb76.do.end9.i_crit_edge:                      ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

do.end.i269:                                      ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #13
  %call.i268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.287, i32 noundef 1652, ptr noundef nonnull %name43) #14
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i269, %sw.bb76.do.end9.i_crit_edge
  %hwfns.i = getelementptr inbounds %struct.qed_dev, ptr %118, i32 0, i32 33
  %cmp10.not.i = icmp eq ptr %hwfns.i, %p_hwfn
  br i1 %cmp10.not.i, label %if.end13.i, label %do.end9.i.for.inc_crit_edge

do.end9.i.for.inc_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end13.i:                                       ; preds = %do.end9.i
  %recov_in_prog.i = getelementptr inbounds %struct.qed_dev, ptr %118, i32 0, i32 44
  %121 = ptrtoint ptr %recov_in_prog.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %recov_in_prog.i, align 8, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool14.not.i = icmp eq i8 %122, 0
  br i1 %tobool14.not.i, label %if.end45.i, label %do.body16.i

do.body16.i:                                      ; preds = %if.end13.i
  %123 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %124)
  %cmp19.i = icmp ult i8 %124, 3
  br i1 %cmp19.i, label %do.end30.i, label %do.body16.i.for.inc_crit_edge, !prof !663

do.body16.i.for.inc_crit_edge:                    ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end30.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #13
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.289, ptr noundef nonnull @.str.287, i32 noundef 1662, ptr noundef nonnull %name43) #14
  br label %for.inc

if.end45.i:                                       ; preds = %if.end13.i
  %125 = ptrtoint ptr %recov_in_prog.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %recov_in_prog.i, align 8
  %126 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf.i.i = getelementptr inbounds %struct.qed_dev, ptr %127, i32 0, i32 39
  %128 = ptrtoint ptr %b_is_vf.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %b_is_vf.i.i, align 4, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i.i = icmp eq i8 %129, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end45.i.qed_get_process_kill_counter.exit.i_crit_edge

if.end45.i.qed_get_process_kill_counter.exit.i_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_get_process_kill_counter.exit.i

if.end.i.i:                                       ; preds = %if.end45.i
  %130 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mcp_info, align 8
  %public_base.i.i = getelementptr inbounds %struct.qed_mcp_info, ptr %131, i32 0, i32 4
  %132 = ptrtoint ptr %public_base.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %public_base.i.i, align 4
  %add.i.i = add i32 %133, 16
  %call.i.i = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.i.i) #11
  %and.i.i = shl i32 %call.i.i, 2
  %shl.i.i = and i32 %and.i.i, 262140
  %134 = lshr i32 %call.i.i, 14
  %shl4.i.i = and i32 %134, 262140
  %135 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %p_hwfn, align 8
  %type.i.i = getelementptr inbounds %struct.qed_dev, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %138)
  %cmp.i.i = icmp eq i32 %138, 1
  br i1 %cmp.i.i, label %if.end.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i

if.end.i.i.cond.end.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %139 = ptrtoint ptr %abs_pf_id.i295 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %abs_pf_id.i295, align 2
  %141 = and i8 %140, 1
  %and6.i.i = zext i8 %141 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %and6.i.i, %cond.false.i.i ], [ 0, %if.end.i.i.cond.end.i.i_crit_edge ]
  %mul.i.i = mul nuw nsw i32 %cond.i.i, %shl4.i.i
  %add7.i.i = add nuw nsw i32 %shl.i.i, 14811172
  %add8.i.i = add nuw nsw i32 %add7.i.i, %mul.i.i
  %call9.i.i = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add8.i.i) #11
  %and10.i.i = and i32 %call9.i.i, 65535
  br label %qed_get_process_kill_counter.exit.i

qed_get_process_kill_counter.exit.i:              ; preds = %cond.end.i.i, %if.end45.i.qed_get_process_kill_counter.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %and10.i.i, %cond.end.i.i ], [ -22, %if.end45.i.qed_get_process_kill_counter.exit.i_crit_edge ]
  %142 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %143)
  %cmp51.i = icmp ult i8 %143, 3
  br i1 %cmp51.i, label %do.end62.i, label %qed_get_process_kill_counter.exit.i.do.end76.i_crit_edge, !prof !663

qed_get_process_kill_counter.exit.i.do.end76.i_crit_edge: ; preds = %qed_get_process_kill_counter.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end76.i

do.end62.i:                                       ; preds = %qed_get_process_kill_counter.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.292, ptr noundef nonnull @.str.287, i32 noundef 1669, ptr noundef nonnull %name43, i32 noundef %retval.0.i.i) #14
  br label %do.end76.i

do.end76.i:                                       ; preds = %do.end62.i, %qed_get_process_kill_counter.exit.i.do.end76.i_crit_edge
  call void @qed_schedule_recovery_handler(ptr noundef %p_hwfn) #11
  br label %for.inc

sw.bb77:                                          ; preds = %do.end64.sw.bb77_crit_edge, %do.end64.sw.bb77_crit_edge381, %do.end64.sw.bb77_crit_edge382, %do.end64.sw.bb77_crit_edge383
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %stats.i) #11
  %144 = call ptr @memset(ptr %stats.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %switch.tableidx = add i16 %48, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %switch.tableidx)
  %145 = icmp ult i16 %switch.tableidx, 4
  br i1 %145, label %switch.lookup, label %do.body.i

do.body.i:                                        ; preds = %sw.bb77
  %146 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %147)
  %cmp.i271 = icmp ult i8 %147, 3
  br i1 %cmp.i271, label %do.end.i274, label %do.body.i.qed_mcp_send_protocol_stats.exit_crit_edge, !prof !663

do.body.i.qed_mcp_send_protocol_stats.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_send_protocol_stats.exit

do.end.i274:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, ptr noundef nonnull @.str.295, i32 noundef 1701, ptr noundef nonnull %name43, i32 noundef %indvars.iv) #14
  br label %qed_mcp_send_protocol_stats.exit

switch.lookup:                                    ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #13
  %switch.idx.cast = zext i16 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 1
  %switch.idx.cast380 = zext i16 %switch.tableidx to i32
  %148 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %p_hwfn, align 8
  call void @qed_get_protocol_stats(ptr noundef %149, i32 noundef %switch.idx.cast380, ptr noundef nonnull %stats.i) #11
  %150 = call ptr @memset(ptr %30, i32 0, i32 20)
  %151 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 1245184, ptr %mb_params.i, align 4
  %152 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %switch.offset, ptr %param.i, align 4
  %153 = ptrtoint ptr %p_data_src.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %stats.i, ptr %p_data_src.i, align 4
  %154 = ptrtoint ptr %data_src_size.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 32, ptr %data_src_size.i, align 4
  %call12.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  br label %qed_mcp_send_protocol_stats.exit

qed_mcp_send_protocol_stats.exit:                 ; preds = %switch.lookup, %do.end.i274, %do.body.i.qed_mcp_send_protocol_stats.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %stats.i) #11
  br label %for.inc

sw.bb79:                                          ; preds = %do.end64
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %shmem_info.i) #11
  %155 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %p_hwfn, align 8
  %type.i275 = getelementptr inbounds %struct.qed_dev, ptr %156, i32 0, i32 3
  %157 = ptrtoint ptr %type.i275 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %type.i275, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp.i276 = icmp eq i32 %158, 0
  %159 = ptrtoint ptr %rel_pf_id.i294 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %rel_pf_id.i294, align 1
  br i1 %cmp.i276, label %cond.true.i, label %sw.bb79.cond.end.i289_crit_edge

sw.bb79.cond.end.i289_crit_edge:                  ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i289

cond.true.i:                                      ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #13
  %161 = ptrtoint ptr %abs_pf_id.i295 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %abs_pf_id.i295, align 2
  %163 = shl i8 %162, 3
  %164 = and i8 %163, 8
  %or20.i = or i8 %164, %160
  br label %cond.end.i289

cond.end.i289:                                    ; preds = %cond.true.i, %sw.bb79.cond.end.i289_crit_edge
  %cond.in.i = phi i8 [ %or20.i, %cond.true.i ], [ %160, %sw.bb79.cond.end.i289_crit_edge ]
  %cond.i278 = zext i8 %cond.in.i to i32
  %165 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mcp_info, align 8
  %public_base.i.i280 = getelementptr inbounds %struct.qed_mcp_info, ptr %166, i32 0, i32 4
  %167 = ptrtoint ptr %public_base.i.i280 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %public_base.i.i280, align 4
  %add.i.i281 = add i32 %168, 24
  %call.i.i282 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.i.i281) #11
  %and.i.i283 = shl i32 %call.i.i282, 2
  %shl.i.i284 = and i32 %and.i.i283, 262140
  %add1.i.i = add nuw nsw i32 %shl.i.i284, 14811136
  %169 = lshr i32 %call.i.i282, 14
  %shl4.i.i285 = and i32 %169, 262140
  %mul.i.i286 = mul nuw nsw i32 %shl4.i.i285, %cond.i278
  %add5.i.i = add nuw nsw i32 %add1.i.i, %mul.i.i286
  %170 = call ptr @memset(ptr %shmem_info.i, i32 0, i32 136)
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %shl4.i.i285)
  %cmp.i.i287 = icmp ugt i32 %shl4.i.i285, 136
  %phi.bo1.i.i = lshr i32 %call.i.i282, 16
  %cond.i.i288 = select i1 %cmp.i.i287, i32 34, i32 %phi.bo1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i288)
  %cmp92.not.i.i = icmp eq i32 %cond.i.i288, 0
  br i1 %cmp92.not.i.i, label %cond.end.i289.qed_mcp_get_shmem_func.exit.i_crit_edge, label %cond.end.i289.for.body.i.i_crit_edge

cond.end.i289.for.body.i.i_crit_edge:             ; preds = %cond.end.i289
  br label %for.body.i.i

cond.end.i289.qed_mcp_get_shmem_func.exit.i_crit_edge: ; preds = %cond.end.i289
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_get_shmem_func.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %cond.end.i289.for.body.i.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %cond.end.i289.for.body.i.i_crit_edge ]
  %shl10.i.i = shl i32 %i.03.i.i, 2
  %add11.i.i = add nuw nsw i32 %add5.i.i, %shl10.i.i
  %call12.i.i = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add11.i.i) #11
  %arrayidx.i.i = getelementptr i32, ptr %shmem_info.i, i32 %i.03.i.i
  %171 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %call12.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %cond.i.i288
  br i1 %exitcond.not.i.i, label %for.body.i.i.qed_mcp_get_shmem_func.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.qed_mcp_get_shmem_func.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_get_shmem_func.exit.i

qed_mcp_get_shmem_func.exit.i:                    ; preds = %for.body.i.i.qed_mcp_get_shmem_func.exit.i_crit_edge, %cond.end.i289.qed_mcp_get_shmem_func.exit.i_crit_edge
  %172 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mcp_info, align 8
  %174 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %config.i.i, align 4
  %and.i22.i = lshr i32 %175, 8
  %conv.i.i = trunc i32 %and.i22.i to i8
  %bandwidth_min.i.i = getelementptr inbounds %struct.qed_mcp_info, ptr %173, i32 0, i32 13, i32 2
  %176 = ptrtoint ptr %bandwidth_min.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv.i.i, ptr %bandwidth_min.i.i, align 8
  %conv2.i.i = and i32 %and.i22.i, 255
  %177 = add nsw i32 %conv2.i.i, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %177)
  %178 = icmp ult i32 %177, -100
  br i1 %178, label %do.body.i.i, label %qed_mcp_get_shmem_func.exit.i.if.end22.i.i_crit_edge

qed_mcp_get_shmem_func.exit.i.if.end22.i.i_crit_edge: ; preds = %qed_mcp_get_shmem_func.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i.i

do.body.i.i:                                      ; preds = %qed_mcp_get_shmem_func.exit.i
  %179 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %180)
  %cmp9.i.i = icmp ult i8 %180, 2
  br i1 %cmp9.i.i, label %do.end.i.i, label %do.body.i.i.do.end20.i.i_crit_edge, !prof !663

do.body.i.i.do.end20.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.310, i32 noundef 1283, ptr noundef nonnull %name43, i32 noundef %conv2.i.i) #14
  br label %do.end20.i.i

do.end20.i.i:                                     ; preds = %do.end.i.i, %do.body.i.i.do.end20.i.i_crit_edge
  %181 = ptrtoint ptr %bandwidth_min.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 1, ptr %bandwidth_min.i.i, align 8
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %do.end20.i.i, %qed_mcp_get_shmem_func.exit.i.if.end22.i.i_crit_edge
  %and24.i.i = lshr i32 %175, 16
  %conv26.i.i = trunc i32 %and24.i.i to i8
  %bandwidth_max.i.i = getelementptr inbounds %struct.qed_mcp_info, ptr %173, i32 0, i32 13, i32 3
  %182 = ptrtoint ptr %bandwidth_max.i.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %conv26.i.i, ptr %bandwidth_max.i.i, align 1
  %conv28.i.i = and i32 %and24.i.i, 255
  %183 = add nsw i32 %conv28.i.i, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %183)
  %184 = icmp ult i32 %183, -100
  br i1 %184, label %do.body37.i.i, label %if.end22.i.i.qed_mcp_update_bw.exit_crit_edge

if.end22.i.i.qed_mcp_update_bw.exit_crit_edge:    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_update_bw.exit

do.body37.i.i:                                    ; preds = %if.end22.i.i
  %185 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %186)
  %cmp40.i.i = icmp ult i8 %186, 2
  br i1 %cmp40.i.i, label %do.end51.i.i, label %do.body37.i.i.do.end67.i.i_crit_edge, !prof !663

do.body37.i.i.do.end67.i.i_crit_edge:             ; preds = %do.body37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67.i.i

do.end51.i.i:                                     ; preds = %do.body37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call64.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.312, ptr noundef nonnull @.str.310, i32 noundef 1292, ptr noundef nonnull %name43, i32 noundef %conv28.i.i) #14
  br label %do.end67.i.i

do.end67.i.i:                                     ; preds = %do.end51.i.i, %do.body37.i.i.do.end67.i.i_crit_edge
  %187 = ptrtoint ptr %bandwidth_max.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 100, ptr %bandwidth_max.i.i, align 1
  br label %qed_mcp_update_bw.exit

qed_mcp_update_bw.exit:                           ; preds = %do.end67.i.i, %if.end22.i.i.qed_mcp_update_bw.exit_crit_edge
  %188 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %mcp_info, align 8
  %190 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %p_hwfn, align 8
  %bandwidth_min.i = getelementptr inbounds %struct.qed_mcp_info, ptr %189, i32 0, i32 13, i32 2
  %192 = ptrtoint ptr %bandwidth_min.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %bandwidth_min.i, align 8
  %call5.i = call i32 @qed_configure_pf_min_bandwidth(ptr noundef %191, i8 noundef zeroext %193) #11
  %194 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %p_hwfn, align 8
  %bandwidth_max.i = getelementptr inbounds %struct.qed_mcp_info, ptr %189, i32 0, i32 13, i32 3
  %196 = ptrtoint ptr %bandwidth_max.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %bandwidth_max.i, align 1
  %call7.i = call i32 @qed_configure_pf_max_bandwidth(ptr noundef %195, i8 noundef zeroext %197) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i.i) #11
  %198 = call ptr @memset(ptr %29, i32 0, i32 24)
  %199 = ptrtoint ptr %mb_params.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 838860800, ptr %mb_params.i.i, align 4
  %200 = ptrtoint ptr %param2.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %param2.i.i, align 4
  %call.i24.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i.i) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %shmem_info.i) #11
  br label %for.inc

sw.bb80:                                          ; preds = %do.end64
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %shmem_info.i291) #11
  %201 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %p_hwfn, align 8
  %type.i292 = getelementptr inbounds %struct.qed_dev, ptr %202, i32 0, i32 3
  %203 = ptrtoint ptr %type.i292 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %type.i292, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp.i293 = icmp eq i32 %204, 0
  %205 = ptrtoint ptr %rel_pf_id.i294 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %rel_pf_id.i294, align 1
  br i1 %cmp.i293, label %cond.true.i296, label %sw.bb80.cond.end.i313_crit_edge

sw.bb80.cond.end.i313_crit_edge:                  ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i313

cond.true.i296:                                   ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #13
  %207 = ptrtoint ptr %abs_pf_id.i295 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %abs_pf_id.i295, align 2
  %209 = shl i8 %208, 3
  %210 = and i8 %209, 8
  %or90.i = or i8 %210, %206
  br label %cond.end.i313

cond.end.i313:                                    ; preds = %cond.true.i296, %sw.bb80.cond.end.i313_crit_edge
  %cond.in.i297 = phi i8 [ %or90.i, %cond.true.i296 ], [ %206, %sw.bb80.cond.end.i313_crit_edge ]
  %cond.i298 = zext i8 %cond.in.i297 to i32
  %211 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %mcp_info, align 8
  %public_base.i.i300 = getelementptr inbounds %struct.qed_mcp_info, ptr %212, i32 0, i32 4
  %213 = ptrtoint ptr %public_base.i.i300 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %public_base.i.i300, align 4
  %add.i.i301 = add i32 %214, 24
  %call.i.i302 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.i.i301) #11
  %and.i.i303 = shl i32 %call.i.i302, 2
  %shl.i.i304 = and i32 %and.i.i303, 262140
  %add1.i.i305 = add nuw nsw i32 %shl.i.i304, 14811136
  %215 = lshr i32 %call.i.i302, 14
  %shl4.i.i306 = and i32 %215, 262140
  %mul.i.i307 = mul nuw nsw i32 %shl4.i.i306, %cond.i298
  %add5.i.i308 = add nuw nsw i32 %add1.i.i305, %mul.i.i307
  %216 = call ptr @memset(ptr %shmem_info.i291, i32 0, i32 136)
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %shl4.i.i306)
  %cmp.i.i309 = icmp ugt i32 %shl4.i.i306, 136
  %phi.bo1.i.i310 = lshr i32 %call.i.i302, 16
  %cond.i.i311 = select i1 %cmp.i.i309, i32 34, i32 %phi.bo1.i.i310
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i311)
  %cmp92.not.i.i312 = icmp eq i32 %cond.i.i311, 0
  br i1 %cmp92.not.i.i312, label %cond.end.i313.qed_mcp_get_shmem_func.exit.i323_crit_edge, label %cond.end.i313.for.body.i.i321_crit_edge

cond.end.i313.for.body.i.i321_crit_edge:          ; preds = %cond.end.i313
  br label %for.body.i.i321

cond.end.i313.qed_mcp_get_shmem_func.exit.i323_crit_edge: ; preds = %cond.end.i313
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_get_shmem_func.exit.i323

for.body.i.i321:                                  ; preds = %for.body.i.i321.for.body.i.i321_crit_edge, %cond.end.i313.for.body.i.i321_crit_edge
  %i.03.i.i314 = phi i32 [ %inc.i.i319, %for.body.i.i321.for.body.i.i321_crit_edge ], [ 0, %cond.end.i313.for.body.i.i321_crit_edge ]
  %shl10.i.i315 = shl i32 %i.03.i.i314, 2
  %add11.i.i316 = add nuw nsw i32 %add5.i.i308, %shl10.i.i315
  %call12.i.i317 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add11.i.i316) #11
  %arrayidx.i.i318 = getelementptr i32, ptr %shmem_info.i291, i32 %i.03.i.i314
  %217 = ptrtoint ptr %arrayidx.i.i318 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %call12.i.i317, ptr %arrayidx.i.i318, align 4
  %inc.i.i319 = add nuw nsw i32 %i.03.i.i314, 1
  %exitcond.not.i.i320 = icmp eq i32 %inc.i.i319, %cond.i.i311
  br i1 %exitcond.not.i.i320, label %for.body.i.i321.qed_mcp_get_shmem_func.exit.i323_crit_edge, label %for.body.i.i321.for.body.i.i321_crit_edge

for.body.i.i321.for.body.i.i321_crit_edge:        ; preds = %for.body.i.i321
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i321

for.body.i.i321.qed_mcp_get_shmem_func.exit.i323_crit_edge: ; preds = %for.body.i.i321
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_get_shmem_func.exit.i323

qed_mcp_get_shmem_func.exit.i323:                 ; preds = %for.body.i.i321.qed_mcp_get_shmem_func.exit.i323_crit_edge, %cond.end.i313.qed_mcp_get_shmem_func.exit.i323_crit_edge
  %218 = ptrtoint ptr %ovlan_stag.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %ovlan_stag.i, align 4
  %conv7.i = trunc i32 %219 to i16
  %220 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mcp_info, align 8
  %ovlan.i = getelementptr inbounds %struct.qed_mcp_info, ptr %221, i32 0, i32 13, i32 7
  %222 = ptrtoint ptr %ovlan.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %conv7.i, ptr %ovlan.i, align 8
  %223 = load ptr, ptr %mcp_info, align 8
  %ovlan10.i = getelementptr inbounds %struct.qed_mcp_info, ptr %223, i32 0, i32 13, i32 7
  %224 = ptrtoint ptr %ovlan10.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %ovlan10.i, align 8
  %226 = ptrtoint ptr %ovlan11.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %225, ptr %ovlan11.i, align 2
  %227 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %p_hwfn, align 8
  %mf_bits.i = getelementptr inbounds %struct.qed_dev, ptr %228, i32 0, i32 15
  %229 = ptrtoint ptr %mf_bits.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load volatile i32, ptr %mf_bits.i, align 4
  %and1.i.i = and i32 %230, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i322 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i322, label %qed_mcp_get_shmem_func.exit.i323.do.body.i326_crit_edge, label %if.then.i324

qed_mcp_get_shmem_func.exit.i323.do.body.i326_crit_edge: ; preds = %qed_mcp_get_shmem_func.exit.i323
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i326

if.then.i324:                                     ; preds = %qed_mcp_get_shmem_func.exit.i323
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %225)
  %cmp17.not.i = icmp eq i16 %225, -1
  br i1 %cmp17.not.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.then.i324
  call void @__sanitizer_cov_trace_pc() #13
  %conv16.i = zext i16 %225 to i32
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 5249488, i32 noundef %conv16.i) #11
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 5249456, i32 noundef 1) #11
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1050804, i32 noundef 1) #11
  %231 = ptrtoint ptr %ovlan11.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %ovlan11.i, align 2
  %conv25.i = zext i16 %232 to i32
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i324
  call void @__sanitizer_cov_trace_pc() #13
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 5249456, i32 noundef 0) #11
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 5249488, i32 noundef 0) #11
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1050804, i32 noundef 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then19.i
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %conv25.i, %if.then19.i ]
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1050824, i32 noundef %.sink.i) #11
  %call26.i = call i32 @qed_sp_pf_update_stag(ptr noundef %p_hwfn) #11
  br label %do.body.i326

do.body.i326:                                     ; preds = %if.end.i, %qed_mcp_get_shmem_func.exit.i323.do.body.i326_crit_edge
  %233 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %cmp29.i = icmp eq i8 %234, 0
  br i1 %cmp29.i, label %land.rhs.i328, label %do.body.i326.qed_mcp_update_stag.exit_crit_edge

do.body.i326.qed_mcp_update_stag.exit_crit_edge:  ; preds = %do.body.i326
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_update_stag.exit

land.rhs.i328:                                    ; preds = %do.body.i326
  %235 = ptrtoint ptr %dp_module28 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %dp_module28, align 4
  %and31.i = and i32 %236, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %land.rhs.i328.qed_mcp_update_stag.exit_crit_edge, label %do.end.i330, !prof !662

land.rhs.i328.qed_mcp_update_stag.exit_crit_edge: ; preds = %land.rhs.i328
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_update_stag.exit

do.end.i330:                                      ; preds = %land.rhs.i328
  call void @__sanitizer_cov_trace_pc() #13
  %237 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mcp_info, align 8
  %ovlan46.i = getelementptr inbounds %struct.qed_mcp_info, ptr %238, i32 0, i32 13, i32 7
  %239 = ptrtoint ptr %ovlan46.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %ovlan46.i, align 8
  %conv47.i = zext i16 %240 to i32
  %241 = ptrtoint ptr %hw_mode.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %hw_mode.i, align 8
  %call49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.296, ptr noundef nonnull @.str.297, i32 noundef 1766, ptr noundef nonnull %name43, i32 noundef %conv47.i, i32 noundef %242) #14
  br label %qed_mcp_update_stag.exit

qed_mcp_update_stag.exit:                         ; preds = %do.end.i330, %land.rhs.i328.qed_mcp_update_stag.exit_crit_edge, %do.body.i326.qed_mcp_update_stag.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i.i290) #11
  %243 = call ptr @memset(ptr %28, i32 0, i32 24)
  %244 = ptrtoint ptr %mb_params.i.i290 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 989855744, ptr %mb_params.i.i290, align 4
  %245 = ptrtoint ptr %param2.i.i331 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 0, ptr %param2.i.i331, align 4
  %call.i91.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i.i290) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i.i290) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %shmem_info.i291) #11
  br label %for.inc

sw.bb81:                                          ; preds = %do.end64
  %246 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %p_hwfn, align 8
  %hwfns.i332 = getelementptr inbounds %struct.qed_dev, ptr %247, i32 0, i32 33
  %cmp.not.i = icmp eq ptr %hwfns.i332, %p_hwfn
  br i1 %cmp.not.i, label %if.end.i333, label %sw.bb81.for.inc_crit_edge

sw.bb81.for.inc_crit_edge:                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i333:                                      ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @qed_hw_err_notify(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 0, ptr noundef nonnull @.str.298) #14
  br label %for.inc

sw.bb82:                                          ; preds = %do.end64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mdump_retain.i) #11
  %248 = call ptr @memset(ptr %mdump_retain.i, i32 255, i32 16)
  %249 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %p_hwfn, align 8
  %hwfns.i334 = getelementptr inbounds %struct.qed_dev, ptr %250, i32 0, i32 33
  %cmp.not.i335 = icmp eq ptr %hwfns.i334, %p_hwfn
  br i1 %cmp.not.i335, label %if.end.i338, label %sw.bb82.qed_mcp_handle_critical_error.exit_crit_edge

sw.bb82.qed_mcp_handle_critical_error.exit_crit_edge: ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_handle_critical_error.exit

if.end.i338:                                      ; preds = %sw.bb82
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mdump_cmd_params.i.i) #11
  %251 = call ptr @memset(ptr %26, i32 0, i32 20)
  %252 = ptrtoint ptr %mdump_cmd_params.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 7, ptr %mdump_cmd_params.i.i, align 4
  %253 = ptrtoint ptr %p_data_dst.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %mdump_retain.i, ptr %p_data_dst.i.i, align 4
  %254 = ptrtoint ptr %data_dst_size.i.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 16, ptr %data_dst_size.i.i, align 4
  %call.i.i336 = call fastcc i32 @qed_mcp_mdump_cmd(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mdump_cmd_params.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i336)
  %tobool.not.i.i337 = icmp eq i32 %call.i.i336, 0
  br i1 %tobool.not.i.i337, label %if.end.i.i339, label %if.end.i338.qed_mcp_mdump_get_retain.exit.thread.i_crit_edge

if.end.i338.qed_mcp_mdump_get_retain.exit.thread.i_crit_edge: ; preds = %if.end.i338
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_mdump_get_retain.exit.thread.i

if.end.i.i339:                                    ; preds = %if.end.i338
  %255 = ptrtoint ptr %mcp_resp.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %mcp_resp.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1441792, i32 %256)
  %cmp.not.i.i = icmp eq i32 %256, 1441792
  br i1 %cmp.not.i.i, label %land.lhs.true.i, label %do.body.i.i341

do.body.i.i341:                                   ; preds = %if.end.i.i339
  %257 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %258)
  %cmp2.i.i = icmp ult i8 %258, 2
  br i1 %cmp2.i.i, label %do.end.i.i344, label %do.body.i.i341.qed_mcp_mdump_get_retain.exit.thread.i_crit_edge, !prof !663

do.body.i.i341.qed_mcp_mdump_get_retain.exit.thread.i_crit_edge: ; preds = %do.body.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_mdump_get_retain.exit.thread.i

do.end.i.i344:                                    ; preds = %do.body.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  %call12.i.i343 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 1858, ptr noundef nonnull %name43, i32 noundef %256) #14
  br label %qed_mcp_mdump_get_retain.exit.thread.i

qed_mcp_mdump_get_retain.exit.thread.i:           ; preds = %do.end.i.i344, %do.body.i.i341.qed_mcp_mdump_get_retain.exit.thread.i_crit_edge, %if.end.i338.qed_mcp_mdump_get_retain.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mdump_cmd_params.i.i) #11
  br label %do.body16.i352

land.lhs.true.i:                                  ; preds = %if.end.i.i339
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mdump_cmd_params.i.i) #11
  %259 = ptrtoint ptr %mdump_retain.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %mdump_retain.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool.not.i345 = icmp eq i32 %260, 0
  br i1 %tobool.not.i345, label %land.lhs.true.i.do.body16.i352_crit_edge, label %do.body.i347

land.lhs.true.i.do.body16.i352_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16.i352

do.body.i347:                                     ; preds = %land.lhs.true.i
  %261 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %262)
  %cmp3.i = icmp ult i8 %262, 3
  br i1 %cmp3.i, label %do.end.i350, label %do.body.i347.do.end74.i_crit_edge, !prof !663

do.body.i347.do.end74.i_crit_edge:                ; preds = %do.body.i347
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end74.i

do.end.i350:                                      ; preds = %do.body.i347
  call void @__sanitizer_cov_trace_pc() #13
  %263 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %23, align 4
  %265 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %24, align 4
  %267 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %25, align 4
  %call12.i349 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.299, ptr noundef nonnull @.str.300, i32 noundef 1882, ptr noundef nonnull %name43, i32 noundef %264, i32 noundef %266, i32 noundef %268) #14
  br label %do.body46.i

do.body16.i352:                                   ; preds = %land.lhs.true.i.do.body16.i352_crit_edge, %qed_mcp_mdump_get_retain.exit.thread.i
  %269 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %270)
  %cmp19.i351 = icmp ult i8 %270, 3
  br i1 %cmp19.i351, label %do.end30.i355, label %do.body16.i352.do.end74.i_crit_edge, !prof !663

do.body16.i352.do.end74.i_crit_edge:              ; preds = %do.body16.i352
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end74.i

do.end30.i355:                                    ; preds = %do.body16.i352
  call void @__sanitizer_cov_trace_pc() #13
  %call41.i354 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.302, ptr noundef nonnull @.str.300, i32 noundef 1885, ptr noundef nonnull %name43) #14
  br label %do.body46.i

do.body46.i:                                      ; preds = %do.end30.i355, %do.end.i350
  %271 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %271)
  %.pr356 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr356)
  %cmp49.i = icmp ult i8 %.pr356, 3
  br i1 %cmp49.i, label %do.end60.i, label %do.body46.i.do.end74.i_crit_edge, !prof !663

do.body46.i.do.end74.i_crit_edge:                 ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end74.i

do.end60.i:                                       ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #13
  %call71.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.305, ptr noundef nonnull @.str.300, i32 noundef 1888, ptr noundef nonnull %name43) #14
  br label %do.end74.i

do.end74.i:                                       ; preds = %do.end60.i, %do.body46.i.do.end74.i_crit_edge, %do.body16.i352.do.end74.i_crit_edge, %do.body.i347.do.end74.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mdump_cmd_params.i94.i) #11
  %272 = call ptr @memset(ptr %27, i32 0, i32 20)
  %273 = ptrtoint ptr %mdump_cmd_params.i94.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 1, ptr %mdump_cmd_params.i94.i, align 4
  %call.i95.i = call fastcc i32 @qed_mcp_mdump_cmd(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mdump_cmd_params.i94.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mdump_cmd_params.i94.i) #11
  call void (ptr, ptr, i32, ptr, ...) @qed_hw_err_notify(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2, ptr noundef null) #14
  br label %qed_mcp_handle_critical_error.exit

qed_mcp_handle_critical_error.exit:               ; preds = %do.end74.i, %sw.bb82.qed_mcp_handle_critical_error.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mdump_retain.i) #11
  br label %for.inc

sw.bb83:                                          ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #13
  %call84 = call i32 @qed_mfw_tlv_req(ptr noundef %p_hwfn) #11
  br label %for.inc

do.body85:                                        ; preds = %do.end64
  %274 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %275)
  %cmp88 = icmp ult i8 %275, 2
  br i1 %cmp88, label %do.end99, label %do.body85.for.inc_crit_edge, !prof !663

do.body85.for.inc_crit_edge:                      ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end99:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #13
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.70, i32 noundef 2050, ptr noundef nonnull %spec.select243, i32 noundef %indvars.iv) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end99, %do.body85.for.inc_crit_edge, %sw.bb83, %qed_mcp_handle_critical_error.exit, %if.end.i333, %sw.bb81.for.inc_crit_edge, %qed_mcp_update_stag.exit, %qed_mcp_update_bw.exit, %qed_mcp_send_protocol_stats.exit, %do.end76.i, %do.end30.i, %do.body16.i.for.inc_crit_edge, %do.end9.i.for.inc_crit_edge, %do.end61.i, %do.body47.i.for.inc_crit_edge, %do.end32.i, %do.body18.i.for.inc_crit_edge, %if.end15.i, %do.end.i253, %sw.bb71, %sw.bb69, %sw.bb67, %qed_mcp_handle_vf_flr.exit, %sw.bb, %for.body.for.inc_crit_edge
  %found.1.off0 = phi i1 [ %found.0.off0361, %for.body.for.inc_crit_edge ], [ true, %sw.bb83 ], [ true, %qed_mcp_handle_critical_error.exit ], [ true, %qed_mcp_update_stag.exit ], [ true, %qed_mcp_update_bw.exit ], [ true, %qed_mcp_send_protocol_stats.exit ], [ true, %sw.bb71 ], [ true, %sw.bb69 ], [ true, %sw.bb67 ], [ true, %qed_mcp_handle_vf_flr.exit ], [ true, %sw.bb ], [ true, %do.end99 ], [ true, %do.body85.for.inc_crit_edge ], [ true, %do.end.i253 ], [ true, %if.end15.i ], [ true, %do.body18.i.for.inc_crit_edge ], [ true, %do.end32.i ], [ true, %do.body47.i.for.inc_crit_edge ], [ true, %do.end61.i ], [ true, %do.end9.i.for.inc_crit_edge ], [ true, %do.body16.i.for.inc_crit_edge ], [ true, %do.end30.i ], [ true, %do.end76.i ], [ true, %sw.bb81.for.inc_crit_edge ], [ true, %if.end.i333 ]
  %rc.1 = phi i32 [ %rc.0362, %for.body.for.inc_crit_edge ], [ %rc.0362, %sw.bb83 ], [ %rc.0362, %qed_mcp_handle_critical_error.exit ], [ %rc.0362, %qed_mcp_update_stag.exit ], [ %rc.0362, %qed_mcp_update_bw.exit ], [ %rc.0362, %qed_mcp_send_protocol_stats.exit ], [ %rc.0362, %sw.bb71 ], [ %rc.0362, %sw.bb69 ], [ %rc.0362, %sw.bb67 ], [ %rc.0362, %qed_mcp_handle_vf_flr.exit ], [ %rc.0362, %sw.bb ], [ -22, %do.end99 ], [ -22, %do.body85.for.inc_crit_edge ], [ %rc.0362, %do.end.i253 ], [ %rc.0362, %if.end15.i ], [ %rc.0362, %do.body18.i.for.inc_crit_edge ], [ %rc.0362, %do.end32.i ], [ %rc.0362, %do.body47.i.for.inc_crit_edge ], [ %rc.0362, %do.end61.i ], [ %rc.0362, %do.end9.i.for.inc_crit_edge ], [ %rc.0362, %do.body16.i.for.inc_crit_edge ], [ %rc.0362, %do.end30.i ], [ %rc.0362, %do.end76.i ], [ %rc.0362, %sw.bb81.for.inc_crit_edge ], [ %rc.0362, %if.end.i333 ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %276 = ptrtoint ptr %mfw_mb_length to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %mfw_mb_length, align 8
  %278 = zext i16 %277 to i32
  %cmp12 = icmp ult i32 %indvars.iv.next, %278
  br i1 %cmp12, label %for.inc.for.body_crit_edge, label %for.cond115.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body121:                                      ; preds = %for.body121.for.body121_crit_edge, %for.body121.lr.ph
  %conv118372 = phi i32 [ %conv118366, %for.body121.lr.ph ], [ %conv118, %for.body121.for.body121_crit_edge ]
  %conv116371 = phi i32 [ 0, %for.body121.lr.ph ], [ %conv116, %for.body121.for.body121_crit_edge ]
  %i.1370 = phi i16 [ 0, %for.body121.lr.ph ], [ %inc136, %for.body121.for.body121_crit_edge ]
  %279 = ptrtoint ptr %mfw_mb_cur122 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %mfw_mb_cur122, align 8
  %arrayidx124 = getelementptr i32, ptr %280, i32 %conv116371
  %281 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %arrayidx124, align 4
  %283 = ptrtoint ptr %mfw_mb_addr to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %mfw_mb_addr, align 4
  %285 = add nuw nsw i32 %conv118372, 3
  %mul = and i32 %285, 131068
  %mul133 = shl nuw nsw i32 %conv116371, 2
  %add125 = add nuw nsw i32 %mul133, 4
  %add131 = add nuw nsw i32 %add125, %mul
  %add134 = add i32 %add131, %284
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add134, i32 noundef %282) #11
  %inc136 = add i16 %i.1370, 1
  %conv116 = zext i16 %inc136 to i32
  %286 = ptrtoint ptr %mfw_mb_length to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %mfw_mb_length, align 8
  %conv118 = zext i16 %287 to i32
  %sub = add nsw i32 %conv118, -1
  %shr = ashr i32 %sub, 2
  %cmp119.not = icmp slt i32 %shr, %conv116
  br i1 %cmp119.not, label %for.body121.for.end137_crit_edge, label %for.body121.for.body121_crit_edge

for.body121.for.body121_crit_edge:                ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body121

for.body121.for.end137_crit_edge:                 ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end137

for.end137:                                       ; preds = %for.body121.for.end137_crit_edge, %for.cond115.preheader.for.end137_crit_edge
  br i1 %found.1.off0, label %for.end137.if.end169_crit_edge, label %for.end137.do.body140_crit_edge

for.end137.do.body140_crit_edge:                  ; preds = %for.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body140

for.end137.if.end169_crit_edge:                   ; preds = %for.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169

do.body140:                                       ; preds = %for.end137.do.body140_crit_edge, %qed_mcp_read_mb.exit.do.body140_crit_edge
  %288 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %289)
  %cmp143 = icmp ult i8 %289, 3
  br i1 %cmp143, label %do.end154, label %do.body140.if.end169_crit_edge, !prof !663

do.body140.if.end169_crit_edge:                   ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169

do.end154:                                        ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #13
  %name156 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool158.not = icmp eq ptr %name156, null
  %spec.select245 = select i1 %tobool158.not, ptr @.str.3, ptr %name156
  %call165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.70, i32 noundef 2069, ptr noundef nonnull %spec.select245) #14
  br label %if.end169

if.end169:                                        ; preds = %do.end154, %do.body140.if.end169_crit_edge, %for.end137.if.end169_crit_edge
  %rc.2 = phi i32 [ %rc.1, %for.end137.if.end169_crit_edge ], [ -22, %do.end154 ], [ -22, %do.body140.if.end169_crit_edge ]
  %mfw_mb_shadow170 = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 15
  %290 = ptrtoint ptr %mfw_mb_shadow170 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %mfw_mb_shadow170, align 4
  %mfw_mb_cur171 = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 14
  %292 = ptrtoint ptr %mfw_mb_cur171 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %mfw_mb_cur171, align 8
  %294 = ptrtoint ptr %mfw_mb_length to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %mfw_mb_length, align 8
  %conv173 = zext i16 %295 to i32
  %296 = call ptr @memcpy(ptr %291, ptr %293, i32 %conv173)
  ret i32 %rc.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_dcbx_mib_update_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mfw_tlv_req(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_get_mfw_ver(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef writeonly %p_mfw_ver, ptr noundef writeonly %p_running_bundle_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf, align 4, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %4 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf_iov_info, align 8
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %do.body, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %mfw_ver = getelementptr inbounds %struct.qed_vf_iov, ptr %5, i32 0, i32 8, i32 1, i32 1
  %6 = ptrtoint ptr %mfw_ver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mfw_ver, align 4
  %8 = ptrtoint ptr %p_mfw_ver to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %p_mfw_ver, align 4
  br label %cleanup

do.body:                                          ; preds = %if.then
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %9 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp eq i8 %10, 0
  br i1 %cmp, label %land.rhs, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %11 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dp_module, align 4
  %and = and i32 %12, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.rhs.cleanup_crit_edge, label %do.end, !prof !662

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool10.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool10.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, i32 noundef 2095, ptr noundef nonnull %spec.select) #14
  br label %cleanup

if.end15:                                         ; preds = %entry
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %13 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mcp_info, align 8
  %public_base16 = getelementptr inbounds %struct.qed_mcp_info, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %public_base16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %public_base16, align 4
  %add = add i32 %16, 12
  %call17 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add) #11
  %and18 = shl i32 %call17, 2
  %shl = and i32 %and18, 262140
  %add24 = add nuw nsw i32 %shl, 14811160
  %call25 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add24) #11
  %17 = ptrtoint ptr %p_mfw_ver to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call25, ptr %p_mfw_ver, align 4
  %tobool26.not = icmp eq ptr %p_running_bundle_id, null
  br i1 %tobool26.not, label %if.end15.cleanup_crit_edge, label %if.then27

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %add37 = add nuw nsw i32 %shl, 14811164
  %call38 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add37) #11
  %18 = ptrtoint ptr %p_running_bundle_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call38, ptr %p_running_bundle_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end15.cleanup_crit_edge, %do.end, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %land.rhs.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_get_mbi_ver(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef writeonly %p_mbi_ver) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf, align 4, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 35968) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.body, label %if.end15

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ult i8 %5, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.3, ptr %name
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef 2130, ptr noundef nonnull %spec.select) #14
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %call, 4
  %call16 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add) #11
  %add19 = add i32 %call16, 14811260
  %call20 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add19) #11
  %and = and i32 %call20, 16777215
  %6 = ptrtoint ptr %p_mbi_ver to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %p_mbi_ver, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_get_media_type(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef writeonly %p_media_type) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_media_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %p_media_type, align 4
  %1 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %2, i32 0, i32 39
  %3 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %b_is_vf, align 4, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %mcp_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %5 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mcp_info.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.do.body_crit_edge, label %qed_mcp_is_init.exit

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

qed_mcp_is_init.exit:                             ; preds = %if.end
  %public_base.i = getelementptr inbounds %struct.qed_mcp_info, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %public_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %public_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not.i.not = icmp eq i32 %8, 0
  br i1 %tobool2.not.i.not, label %qed_mcp_is_init.exit.do.body_crit_edge, label %if.end13

qed_mcp_is_init.exit.do.body_crit_edge:           ; preds = %qed_mcp_is_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %qed_mcp_is_init.exit.do.body_crit_edge, %if.end.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %9 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp = icmp ult i8 %10, 3
  br i1 %cmp, label %do.end, label %do.body.return_crit_edge, !prof !663

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.3, ptr %name
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef 2158, ptr noundef nonnull %spec.select) #14
  br label %return

if.end13:                                         ; preds = %qed_mcp_is_init.exit
  %tobool14.not = icmp eq ptr %p_ptt, null
  br i1 %tobool14.not, label %if.end13.return_crit_edge, label %if.end16

if.end13.return_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %port_addr = getelementptr inbounds %struct.qed_mcp_info, ptr %6, i32 0, i32 7
  %11 = ptrtoint ptr %port_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_addr, align 8
  %add = add i32 %12, 528
  %call17 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef nonnull %p_ptt, i32 noundef %add) #11
  %13 = ptrtoint ptr %p_media_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call17, ptr %p_media_type, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.end13.return_crit_edge, %do.end, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %entry.return_crit_edge ], [ -16, %do.body.return_crit_edge ], [ -16, %do.end ], [ -22, %if.end13.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_get_transceiver_data(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef writeonly %p_transceiver_state, ptr nocapture noundef writeonly %p_transceiver_type) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_transceiver_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %p_transceiver_type, align 4
  %1 = ptrtoint ptr %p_transceiver_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %p_transceiver_state, align 4
  %2 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 39
  %4 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %b_is_vf, align 4, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mcp_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %6 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcp_info.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.do.body_crit_edge, label %qed_mcp_is_init.exit

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

qed_mcp_is_init.exit:                             ; preds = %if.end
  %public_base.i = getelementptr inbounds %struct.qed_mcp_info, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %public_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %public_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i.not = icmp eq i32 %9, 0
  br i1 %tobool2.not.i.not, label %qed_mcp_is_init.exit.do.body_crit_edge, label %if.end14

qed_mcp_is_init.exit.do.body_crit_edge:           ; preds = %qed_mcp_is_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %qed_mcp_is_init.exit.do.body_crit_edge, %if.end.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %10 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp = icmp ult i8 %11, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.3, ptr %name
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.86, i32 noundef 2189, ptr noundef nonnull %spec.select) #14
  br label %cleanup

if.end14:                                         ; preds = %qed_mcp_is_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %port_addr = getelementptr inbounds %struct.qed_mcp_info, ptr %7, i32 0, i32 7
  %12 = ptrtoint ptr %port_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_addr, align 8
  %add = add i32 %13, 1432
  %call15 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add) #11
  %and = and i32 %call15, 255
  %14 = ptrtoint ptr %p_transceiver_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %p_transceiver_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp16 = icmp eq i32 %and, 1
  %and19 = lshr i32 %call15, 8
  %shr20 = and i32 %and19, 255
  %storemerge = select i1 %cmp16, i32 %shr20, i32 255
  %15 = ptrtoint ptr %p_transceiver_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %p_transceiver_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_trans_speed_mask(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef writeonly %p_speed_mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf.i, align 4, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %mcp_info.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %4 = ptrtoint ptr %mcp_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcp_info.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.do.body.i_crit_edge, label %qed_mcp_is_init.exit.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

qed_mcp_is_init.exit.i:                           ; preds = %if.end.i
  %public_base.i.i = getelementptr inbounds %struct.qed_mcp_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %public_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %public_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i.not.i, label %qed_mcp_is_init.exit.i.do.body.i_crit_edge, label %if.end

qed_mcp_is_init.exit.i.do.body.i_crit_edge:       ; preds = %qed_mcp_is_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.body.i:                                        ; preds = %qed_mcp_is_init.exit.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %8 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i = icmp ult i8 %9, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.cleanup_crit_edge, !prof !663

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.86, i32 noundef 2189, ptr noundef nonnull %name.i) #14
  br label %cleanup

if.end:                                           ; preds = %qed_mcp_is_init.exit.i
  %port_addr.i = getelementptr inbounds %struct.qed_mcp_info, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %port_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_addr.i, align 8
  %add.i = add i32 %11, 1432
  %call15.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.i) #11
  %and.i = and i32 %call15.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp16.i = icmp eq i32 %and.i, 1
  %and19.i = lshr i32 %call15.i, 8
  %shr20.i = and i32 %and19.i, 255
  %storemerge.i = select i1 %cmp16.i, i32 %shr20.i, i32 255
  %12 = and i32 %call15.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %13 = icmp eq i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.i)
  %cmp3.not.i = icmp ne i32 %storemerge.i, 0
  %not.or.cond5.i = and i1 %13, %cmp3.not.i
  br i1 %not.or.cond5.i, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %trunc = trunc i32 %storemerge.i to i8
  %14 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.376)
  switch i8 %trunc, label %do.body [
    i8 3, label %if.end4.sw.bb_crit_edge
    i8 4, label %if.end4.sw.bb_crit_edge54
    i8 1, label %if.end4.sw.bb_crit_edge55
    i8 2, label %if.end4.sw.bb_crit_edge56
    i8 33, label %if.end4.sw.bb_crit_edge57
    i8 5, label %if.end4.sw.bb5_crit_edge
    i8 6, label %if.end4.sw.bb5_crit_edge58
    i8 7, label %if.end4.sw.bb5_crit_edge59
    i8 8, label %if.end4.sw.bb5_crit_edge60
    i8 9, label %if.end4.sw.bb5_crit_edge61
    i8 10, label %if.end4.sw.bb5_crit_edge62
    i8 31, label %if.end4.sw.bb5_crit_edge63
    i8 12, label %if.end4.sw.bb6_crit_edge
    i8 13, label %if.end4.sw.bb6_crit_edge64
    i8 48, label %if.end4.sw.bb6_crit_edge65
    i8 50, label %if.end4.sw.bb6_crit_edge66
    i8 15, label %if.end4.sw.bb7_crit_edge
    i8 16, label %if.end4.sw.bb7_crit_edge67
    i8 17, label %if.end4.sw.bb7_crit_edge68
    i8 18, label %if.end4.sw.bb7_crit_edge69
    i8 19, label %if.end4.sw.bb7_crit_edge70
    i8 28, label %if.end4.sw.bb8_crit_edge
    i8 29, label %if.end4.sw.bb8_crit_edge71
    i8 30, label %if.end4.sw.bb8_crit_edge72
    i8 23, label %if.end4.sw.bb8_crit_edge73
    i8 25, label %if.end4.sw.bb8_crit_edge74
    i8 27, label %if.end4.sw.bb8_crit_edge75
    i8 22, label %if.end4.sw.bb9_crit_edge
    i8 24, label %if.end4.sw.bb9_crit_edge76
    i8 26, label %if.end4.sw.bb9_crit_edge77
    i8 32, label %if.end4.sw.bb9_crit_edge78
    i8 55, label %if.end4.sw.bb10_crit_edge
    i8 56, label %if.end4.sw.bb10_crit_edge79
    i8 14, label %if.end4.sw.bb11_crit_edge
    i8 49, label %if.end4.sw.bb11_crit_edge80
    i8 20, label %if.end4.sw.bb12_crit_edge
    i8 52, label %if.end4.sw.bb12_crit_edge81
    i8 51, label %if.end4.sw.bb13_crit_edge
    i8 53, label %if.end4.sw.bb13_crit_edge82
    i8 54, label %if.end4.sw.bb13_crit_edge83
    i8 11, label %sw.bb14
    i8 34, label %if.end4.sw.bb15_crit_edge
    i8 57, label %if.end4.sw.bb15_crit_edge84
    i8 58, label %if.end4.sw.bb15_crit_edge85
  ]

if.end4.sw.bb15_crit_edge85:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15

if.end4.sw.bb15_crit_edge84:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15

if.end4.sw.bb15_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15

if.end4.sw.bb13_crit_edge83:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

if.end4.sw.bb13_crit_edge82:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

if.end4.sw.bb13_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

if.end4.sw.bb12_crit_edge81:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12

if.end4.sw.bb12_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12

if.end4.sw.bb11_crit_edge80:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11

if.end4.sw.bb11_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11

if.end4.sw.bb10_crit_edge79:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

if.end4.sw.bb10_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

if.end4.sw.bb9_crit_edge78:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

if.end4.sw.bb9_crit_edge77:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

if.end4.sw.bb9_crit_edge76:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

if.end4.sw.bb9_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

if.end4.sw.bb8_crit_edge75:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8

if.end4.sw.bb8_crit_edge74:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8

if.end4.sw.bb8_crit_edge73:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8

if.end4.sw.bb8_crit_edge72:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8

if.end4.sw.bb8_crit_edge71:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8

if.end4.sw.bb8_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8

if.end4.sw.bb7_crit_edge70:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end4.sw.bb7_crit_edge69:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end4.sw.bb7_crit_edge68:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end4.sw.bb7_crit_edge67:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end4.sw.bb7_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end4.sw.bb6_crit_edge66:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

if.end4.sw.bb6_crit_edge65:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

if.end4.sw.bb6_crit_edge64:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

if.end4.sw.bb6_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

if.end4.sw.bb5_crit_edge63:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

if.end4.sw.bb5_crit_edge62:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

if.end4.sw.bb5_crit_edge61:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

if.end4.sw.bb5_crit_edge60:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

if.end4.sw.bb5_crit_edge59:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

if.end4.sw.bb5_crit_edge58:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

if.end4.sw.bb5_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

if.end4.sw.bb_crit_edge57:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end4.sw.bb_crit_edge56:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end4.sw.bb_crit_edge55:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end4.sw.bb_crit_edge54:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end4.sw.bb_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end4.sw.bb_crit_edge, %if.end4.sw.bb_crit_edge54, %if.end4.sw.bb_crit_edge55, %if.end4.sw.bb_crit_edge56, %if.end4.sw.bb_crit_edge57
  %15 = ptrtoint ptr %p_speed_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %p_speed_mask, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end4.sw.bb5_crit_edge, %if.end4.sw.bb5_crit_edge58, %if.end4.sw.bb5_crit_edge59, %if.end4.sw.bb5_crit_edge60, %if.end4.sw.bb5_crit_edge61, %if.end4.sw.bb5_crit_edge62, %if.end4.sw.bb5_crit_edge63
  %16 = ptrtoint ptr %p_speed_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %p_speed_mask, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end4.sw.bb6_crit_edge, %if.end4.sw.bb6_crit_edge64, %if.end4.sw.bb6_crit_edge65, %if.end4.sw.bb6_crit_edge66
  %17 = ptrtoint ptr %p_speed_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 18, ptr %p_speed_mask, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end4.sw.bb7_crit_edge, %if.end4.sw.bb7_crit_edge67, %if.end4.sw.bb7_crit_edge68, %if.end4.sw.bb7_crit_edge69, %if.end4.sw.bb7_crit_edge70
  %18 = ptrtoint ptr %p_speed_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 72, ptr %p_speed_mask, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %if.end4.sw.bb8_crit_edge, %if.end4.sw.bb8_crit_edge71, %if.end4.sw.bb8_crit_edge72, %if.end4.sw.bb8_crit_edge73, %if.end4.sw.bb8_crit_edge74, %if.end4.sw.bb8_crit_edge75
  %19 = ptrtoint ptr %p_speed_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %p_speed_mask, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end4.sw.bb9_crit_edge, %if.end4.sw.bb9_crit_edge76, %if.end4.sw.bb9_crit_edge77, %if.end4.sw.bb9_crit_edge78
  %20 = ptrtoint ptr %p_speed_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 11, ptr %p_speed_mask, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end4.sw.bb10_crit_edge, %if.end4.sw.bb10_crit_edge79
  %21 = ptrtoint ptr %p_speed_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 10, ptr %p_speed_mask, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %if.end4.sw.bb11_crit_edge, %if.end4.sw.bb11_crit_edge80
  %22 = ptrtoint ptr %p_speed_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 19, ptr %p_speed_mask, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %if.end4.sw.bb12_crit_edge, %if.end4.sw.bb12_crit_edge81
  %23 = ptrtoint ptr %p_speed_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 127, ptr %p_speed_mask, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end4.sw.bb13_crit_edge, %if.end4.sw.bb13_crit_edge82, %if.end4.sw.bb13_crit_edge83
  %24 = ptrtoint ptr %p_speed_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 90, ptr %p_speed_mask, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %p_speed_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %p_speed_mask, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %if.end4.sw.bb15_crit_edge, %if.end4.sw.bb15_crit_edge84, %if.end4.sw.bb15_crit_edge85
  %26 = ptrtoint ptr %p_speed_mask to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %p_speed_mask, align 4
  br label %cleanup

do.body:                                          ; preds = %if.end4
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %27 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp17 = icmp ult i8 %28, 2
  br i1 %cmp17, label %do.end, label %do.body.do.end29_crit_edge, !prof !663

do.body.do.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool23.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool23.not, ptr @.str.3, ptr %name
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, i32 noundef 2329, ptr noundef nonnull %spec.select, i32 noundef %storemerge.i) #14
  br label %do.end29

do.end29:                                         ; preds = %do.end, %do.body.do.end29_crit_edge
  %29 = ptrtoint ptr %p_speed_mask to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 255, ptr %p_speed_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb, %if.end.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end29 ], [ 0, %sw.bb15 ], [ 0, %sw.bb14 ], [ 0, %sw.bb13 ], [ 0, %sw.bb12 ], [ 0, %sw.bb11 ], [ 0, %sw.bb10 ], [ 0, %sw.bb9 ], [ 0, %sw.bb8 ], [ 0, %sw.bb7 ], [ 0, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ -16, %do.body.i.cleanup_crit_edge ], [ -16, %do.end.i ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_get_board_config(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef writeonly %p_board_config) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf, align 4, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mcp_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %4 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcp_info.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.do.body_crit_edge, label %qed_mcp_is_init.exit

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

qed_mcp_is_init.exit:                             ; preds = %if.end
  %public_base.i = getelementptr inbounds %struct.qed_mcp_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %public_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %public_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i.not = icmp eq i32 %7, 0
  br i1 %tobool2.not.i.not, label %qed_mcp_is_init.exit.do.body_crit_edge, label %if.end14

qed_mcp_is_init.exit.do.body_crit_edge:           ; preds = %qed_mcp_is_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %qed_mcp_is_init.exit.do.body_crit_edge, %if.end.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %8 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp = icmp ult i8 %9, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.3, ptr %name
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.89, i32 noundef 2346, ptr noundef nonnull %spec.select) #14
  br label %cleanup

if.end14:                                         ; preds = %qed_mcp_is_init.exit
  %tobool15.not = icmp eq ptr %p_ptt, null
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %p_board_config to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %p_board_config, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef nonnull %p_ptt, i32 noundef 35968) #11
  %add = add i32 %call18, 4
  %call19 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef nonnull %p_ptt, i32 noundef %add) #11
  %abs_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %11 = ptrtoint ptr %abs_pf_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %abs_pf_id, align 2
  %conv21 = zext i8 %12 to i32
  %13 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_hwfn, align 8
  %call23 = tail call i32 @qed_device_num_ports(ptr noundef %14) #11
  %rem = srem i32 %conv21, %call23
  %15 = mul nuw nsw i32 %rem, 600
  %16 = add i32 %call19, 14811768
  %add25 = add i32 %16, %15
  %call26 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef nonnull %p_ptt, i32 noundef %add25) #11
  %17 = ptrtoint ptr %p_board_config to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call26, ptr %p_board_config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then16, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -22, %if.then16 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_fill_shmem_func_info(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  %shmem_info = alloca %struct.public_func, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %shmem_info) #11
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %type = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %rel_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %4 = ptrtoint ptr %rel_pf_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rel_pf_id, align 1
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %abs_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %6 = ptrtoint ptr %abs_pf_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %abs_pf_id, align 2
  %8 = shl i8 %7, 3
  %9 = and i8 %8, 8
  %or200 = or i8 %9, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond.in = phi i8 [ %or200, %cond.true ], [ %5, %entry.cond.end_crit_edge ]
  %cond = zext i8 %cond.in to i32
  %mcp_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %10 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mcp_info.i, align 8
  %public_base.i = getelementptr inbounds %struct.qed_mcp_info, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %public_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %public_base.i, align 4
  %add.i = add i32 %13, 24
  %call.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.i) #11
  %and.i = shl i32 %call.i, 2
  %shl.i = and i32 %and.i, 262140
  %add1.i = add nuw nsw i32 %shl.i, 14811136
  %14 = lshr i32 %call.i, 14
  %shl4.i = and i32 %14, 262140
  %mul.i = mul nuw nsw i32 %shl4.i, %cond
  %add5.i = add nuw nsw i32 %add1.i, %mul.i
  %15 = call ptr @memset(ptr %shmem_info, i32 0, i32 136)
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %shl4.i)
  %cmp.i = icmp ugt i32 %shl4.i, 136
  %phi.bo1.i = lshr i32 %call.i, 16
  %cond.i = select i1 %cmp.i, i32 34, i32 %phi.bo1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp92.not.i = icmp eq i32 %cond.i, 0
  br i1 %cmp92.not.i, label %cond.end.qed_mcp_get_shmem_func.exit_crit_edge, label %cond.end.for.body.i_crit_edge

cond.end.for.body.i_crit_edge:                    ; preds = %cond.end
  br label %for.body.i

cond.end.qed_mcp_get_shmem_func.exit_crit_edge:   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_get_shmem_func.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cond.end.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %cond.end.for.body.i_crit_edge ]
  %shl10.i = shl i32 %i.03.i, 2
  %add11.i = add nuw nsw i32 %add5.i, %shl10.i
  %call12.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add11.i) #11
  %arrayidx.i = getelementptr i32, ptr %shmem_info, i32 %i.03.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call12.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond.i
  br i1 %exitcond.not.i, label %for.body.i.qed_mcp_get_shmem_func.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.qed_mcp_get_shmem_func.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_get_shmem_func.exit

qed_mcp_get_shmem_func.exit:                      ; preds = %for.body.i.qed_mcp_get_shmem_func.exit_crit_edge, %cond.end.qed_mcp_get_shmem_func.exit_crit_edge
  %17 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mcp_info.i, align 8
  %func_info = getelementptr inbounds %struct.qed_mcp_info, ptr %18, i32 0, i32 13
  %config = getelementptr inbounds %struct.public_func, ptr %shmem_info, i32 0, i32 8
  %19 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %config, align 4
  %21 = trunc i32 %20 to i8
  %22 = lshr i8 %21, 1
  %23 = and i8 %22, 1
  %24 = ptrtoint ptr %func_info to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %func_info, align 8
  %protocol = getelementptr inbounds %struct.qed_mcp_info, ptr %18, i32 0, i32 13, i32 1
  %and.i204 = lshr i32 %20, 4
  %25 = and i32 %and.i204, 15
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.377)
  switch i32 %25, label %qed_mcp_get_shmem_func.exit.do.end_crit_edge [
    i32 0, label %qed_mcp_get_shmem_func.exit.if.end_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %do.body.i
  ]

qed_mcp_get_shmem_func.exit.if.end_crit_edge:     ; preds = %qed_mcp_get_shmem_func.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

qed_mcp_get_shmem_func.exit.do.end_crit_edge:     ; preds = %qed_mcp_get_shmem_func.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

sw.bb1.i:                                         ; preds = %qed_mcp_get_shmem_func.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb2.i:                                         ; preds = %qed_mcp_get_shmem_func.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body.i:                                        ; preds = %qed_mcp_get_shmem_func.exit
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %27 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp.i205 = icmp ult i8 %28, 3
  br i1 %cmp.i205, label %do.end.i, label %do.body.i.do.end_crit_edge, !prof !663

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.307, ptr noundef nonnull @.str.308, i32 noundef 2452, ptr noundef nonnull %name.i) #14
  br label %do.end

do.end:                                           ; preds = %do.end.i, %do.body.i.do.end_crit_edge, %qed_mcp_get_shmem_func.exit.do.end_crit_edge
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool10.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool10.not, ptr @.str.3, ptr %name
  %and18 = and i32 %20, 240
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef 2476, ptr noundef nonnull %spec.select, i32 noundef %and18) #14
  br label %cleanup151

if.end:                                           ; preds = %sw.bb2.i, %sw.bb1.i, %qed_mcp_get_shmem_func.exit.if.end_crit_edge
  %.sink = phi i32 [ 1, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ %25, %qed_mcp_get_shmem_func.exit.if.end_crit_edge ]
  %29 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %protocol, align 4
  %30 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mcp_info.i, align 8
  %and.i209 = lshr i32 %20, 8
  %conv.i = trunc i32 %and.i209 to i8
  %bandwidth_min.i = getelementptr inbounds %struct.qed_mcp_info, ptr %31, i32 0, i32 13, i32 2
  %32 = ptrtoint ptr %bandwidth_min.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i, ptr %bandwidth_min.i, align 8
  %conv2.i = and i32 %and.i209, 255
  %33 = add nsw i32 %conv2.i, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %33)
  %34 = icmp ult i32 %33, -100
  br i1 %34, label %do.body.i211, label %if.end.if.end22.i_crit_edge

if.end.if.end22.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

do.body.i211:                                     ; preds = %if.end
  %dp_level.i210 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %35 = ptrtoint ptr %dp_level.i210 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dp_level.i210, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp9.i = icmp ult i8 %36, 2
  br i1 %cmp9.i, label %do.end.i214, label %do.body.i211.do.end20.i_crit_edge, !prof !663

do.body.i211.do.end20.i_crit_edge:                ; preds = %do.body.i211
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20.i

do.end.i214:                                      ; preds = %do.body.i211
  call void @__sanitizer_cov_trace_pc() #13
  %name.i212 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.310, i32 noundef 1283, ptr noundef nonnull %name.i212, i32 noundef %conv2.i) #14
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end.i214, %do.body.i211.do.end20.i_crit_edge
  %37 = ptrtoint ptr %bandwidth_min.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %bandwidth_min.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end20.i, %if.end.if.end22.i_crit_edge
  %and24.i = lshr i32 %20, 16
  %conv26.i = trunc i32 %and24.i to i8
  %bandwidth_max.i = getelementptr inbounds %struct.qed_mcp_info, ptr %31, i32 0, i32 13, i32 3
  %38 = ptrtoint ptr %bandwidth_max.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv26.i, ptr %bandwidth_max.i, align 1
  %conv28.i = and i32 %and24.i, 255
  %39 = add nsw i32 %conv28.i, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %39)
  %40 = icmp ult i32 %39, -100
  br i1 %40, label %do.body37.i, label %if.end22.i.qed_read_pf_bandwidth.exit_crit_edge

if.end22.i.qed_read_pf_bandwidth.exit_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_read_pf_bandwidth.exit

do.body37.i:                                      ; preds = %if.end22.i
  %dp_level38.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %41 = ptrtoint ptr %dp_level38.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dp_level38.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp40.i = icmp ult i8 %42, 2
  br i1 %cmp40.i, label %do.end51.i, label %do.body37.i.do.end67.i_crit_edge, !prof !663

do.body37.i.do.end67.i_crit_edge:                 ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67.i

do.end51.i:                                       ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #13
  %name53.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.312, ptr noundef nonnull @.str.310, i32 noundef 1292, ptr noundef nonnull %name53.i, i32 noundef %conv28.i) #14
  br label %do.end67.i

do.end67.i:                                       ; preds = %do.end51.i, %do.body37.i.do.end67.i_crit_edge
  %43 = ptrtoint ptr %bandwidth_max.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 100, ptr %bandwidth_max.i, align 1
  br label %qed_read_pf_bandwidth.exit

qed_read_pf_bandwidth.exit:                       ; preds = %do.end67.i, %if.end22.i.qed_read_pf_bandwidth.exit_crit_edge
  %mac_upper = getelementptr inbounds %struct.public_func, ptr %shmem_info, i32 0, i32 10
  %44 = ptrtoint ptr %mac_upper to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mac_upper, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool22.not = icmp eq i32 %45, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %qed_read_pf_bandwidth.exit.if.then24_crit_edge

qed_read_pf_bandwidth.exit.if.then24_crit_edge:   ; preds = %qed_read_pf_bandwidth.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

lor.lhs.false:                                    ; preds = %qed_read_pf_bandwidth.exit
  %mac_lower = getelementptr inbounds %struct.public_func, ptr %shmem_info, i32 0, i32 11
  %46 = ptrtoint ptr %mac_lower to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mac_lower, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool23.not = icmp eq i32 %47, 0
  br i1 %tobool23.not, label %do.body53, label %lor.lhs.false.if.then24_crit_edge

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %qed_read_pf_bandwidth.exit.if.then24_crit_edge
  %shr = lshr i32 %45, 8
  %conv26 = trunc i32 %shr to i8
  %mac = getelementptr inbounds %struct.qed_mcp_info, ptr %18, i32 0, i32 13, i32 4
  %48 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv26, ptr %mac, align 2
  %conv28 = trunc i32 %45 to i8
  %arrayidx30 = getelementptr %struct.qed_mcp_info, ptr %18, i32 0, i32 13, i32 4, i32 1
  %49 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv28, ptr %arrayidx30, align 1
  %mac_lower31 = getelementptr inbounds %struct.public_func, ptr %shmem_info, i32 0, i32 11
  %50 = ptrtoint ptr %mac_lower31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mac_lower31, align 4
  %shr32 = lshr i32 %51, 24
  %conv33 = trunc i32 %shr32 to i8
  %arrayidx35 = getelementptr %struct.qed_mcp_info, ptr %18, i32 0, i32 13, i32 4, i32 2
  %52 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv33, ptr %arrayidx35, align 2
  %shr37 = lshr i32 %51, 16
  %conv38 = trunc i32 %shr37 to i8
  %arrayidx40 = getelementptr %struct.qed_mcp_info, ptr %18, i32 0, i32 13, i32 4, i32 3
  %53 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv38, ptr %arrayidx40, align 1
  %shr42 = lshr i32 %51, 8
  %conv43 = trunc i32 %shr42 to i8
  %arrayidx45 = getelementptr %struct.qed_mcp_info, ptr %18, i32 0, i32 13, i32 4, i32 4
  %54 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv43, ptr %arrayidx45, align 2
  %conv47 = trunc i32 %51 to i8
  %arrayidx49 = getelementptr %struct.qed_mcp_info, ptr %18, i32 0, i32 13, i32 4, i32 5
  %55 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv47, ptr %arrayidx49, align 1
  %56 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %p_hwfn, align 8
  %wol_mac = getelementptr inbounds %struct.qed_dev, ptr %57, i32 0, i32 21
  %58 = call ptr @memcpy(ptr %wol_mac, ptr %mac, i32 6)
  br label %if.end77

do.body53:                                        ; preds = %lor.lhs.false
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %59 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %60)
  %cmp55 = icmp ult i8 %60, 3
  br i1 %cmp55, label %do.end62, label %do.body53.if.end77_crit_edge, !prof !663

do.body53.if.end77_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

do.end62:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  %name64 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool66.not = icmp eq ptr %name64, null
  %spec.select201 = select i1 %tobool66.not, ptr @.str.3, ptr %name64
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.91, i32 noundef 2493, ptr noundef nonnull %spec.select201) #14
  br label %if.end77

if.end77:                                         ; preds = %do.end62, %do.body53.if.end77_crit_edge, %if.then24
  %fcoe_wwn_port_name_lower = getelementptr inbounds %struct.public_func, ptr %shmem_info, i32 0, i32 13
  %61 = ptrtoint ptr %fcoe_wwn_port_name_lower to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fcoe_wwn_port_name_lower, align 4
  %conv78 = zext i32 %62 to i64
  %fcoe_wwn_port_name_upper = getelementptr inbounds %struct.public_func, ptr %shmem_info, i32 0, i32 12
  %63 = ptrtoint ptr %fcoe_wwn_port_name_upper to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fcoe_wwn_port_name_upper, align 4
  %conv79 = zext i32 %64 to i64
  %shl80 = shl nuw i64 %conv79, 32
  %or81 = or i64 %shl80, %conv78
  %wwn_port = getelementptr inbounds %struct.qed_mcp_info, ptr %18, i32 0, i32 13, i32 5
  %65 = ptrtoint ptr %wwn_port to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %or81, ptr %wwn_port, align 8
  %fcoe_wwn_node_name_lower = getelementptr inbounds %struct.public_func, ptr %shmem_info, i32 0, i32 15
  %66 = ptrtoint ptr %fcoe_wwn_node_name_lower to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fcoe_wwn_node_name_lower, align 4
  %conv82 = zext i32 %67 to i64
  %fcoe_wwn_node_name_upper = getelementptr inbounds %struct.public_func, ptr %shmem_info, i32 0, i32 14
  %68 = ptrtoint ptr %fcoe_wwn_node_name_upper to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fcoe_wwn_node_name_upper, align 4
  %conv83 = zext i32 %69 to i64
  %shl84 = shl nuw i64 %conv83, 32
  %or85 = or i64 %shl84, %conv82
  %wwn_node = getelementptr inbounds %struct.qed_mcp_info, ptr %18, i32 0, i32 13, i32 6
  %70 = ptrtoint ptr %wwn_node to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %or85, ptr %wwn_node, align 8
  %ovlan_stag = getelementptr inbounds %struct.public_func, ptr %shmem_info, i32 0, i32 16
  %71 = ptrtoint ptr %ovlan_stag to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ovlan_stag, align 4
  %conv87 = trunc i32 %72 to i16
  %ovlan = getelementptr inbounds %struct.qed_mcp_info, ptr %18, i32 0, i32 13, i32 7
  %73 = ptrtoint ptr %ovlan to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv87, ptr %ovlan, align 8
  %mtu_size = getelementptr inbounds %struct.public_func, ptr %shmem_info, i32 0, i32 2
  %74 = ptrtoint ptr %mtu_size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mtu_size, align 4
  %conv88 = trunc i32 %75 to i16
  %mtu = getelementptr inbounds %struct.qed_mcp_info, ptr %18, i32 0, i32 13, i32 8
  %76 = ptrtoint ptr %mtu to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv88, ptr %mtu, align 2
  %b_wol_support = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 21
  %77 = ptrtoint ptr %b_wol_support to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %b_wol_support, align 4
  %78 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %p_hwfn, align 8
  %wol_config = getelementptr inbounds %struct.qed_dev, ptr %79, i32 0, i32 20
  %80 = ptrtoint ptr %wol_config to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %wol_config, align 2
  %81 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mcp_info.i, align 8
  %tobool.not.i = icmp eq ptr %82, null
  br i1 %tobool.not.i, label %if.end77.do.body105_crit_edge, label %qed_mcp_is_init.exit

if.end77.do.body105_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body105

qed_mcp_is_init.exit:                             ; preds = %if.end77
  %public_base.i216 = getelementptr inbounds %struct.qed_mcp_info, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %public_base.i216 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %public_base.i216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool2.not.i.not = icmp eq i32 %84, 0
  br i1 %tobool2.not.i.not, label %qed_mcp_is_init.exit.do.body105_crit_edge, label %if.then91

qed_mcp_is_init.exit.do.body105_crit_edge:        ; preds = %qed_mcp_is_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body105

if.then91:                                        ; preds = %qed_mcp_is_init.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %85 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %86 = call ptr @memset(ptr %85, i32 0, i32 24)
  %87 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 3014656, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %88 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %param2.i, align 4
  %call.i217 = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool.not.i218 = icmp eq i32 %call.i217, 0
  br i1 %tobool.not.i218, label %if.end95, label %cleanup151.critedge

if.end95:                                         ; preds = %if.then91
  %mcp_resp.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 6
  %89 = ptrtoint ptr %mcp_resp.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %mcp_resp.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %90)
  %cmp96 = icmp eq i32 %90, 8388608
  br i1 %cmp96, label %if.then98, label %if.end95.do.body105_crit_edge

if.end95.do.body105_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body105

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %b_wol_support to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %b_wol_support, align 4
  br label %do.body105

do.body105:                                       ; preds = %if.then98, %if.end95.do.body105_crit_edge, %qed_mcp_is_init.exit.do.body105_crit_edge, %if.end77.do.body105_crit_edge
  %dp_level106 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %92 = ptrtoint ptr %dp_level106 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %dp_level106, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp108 = icmp eq i8 %93, 0
  br i1 %cmp108, label %land.rhs, label %do.body105.cleanup151_crit_edge

do.body105.cleanup151_crit_edge:                  ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup151

land.rhs:                                         ; preds = %do.body105
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %94 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dp_module, align 4
  %and110 = and i32 %95, 1048608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %land.rhs.cleanup151_crit_edge, label %do.end121, !prof !662

land.rhs.cleanup151_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup151

do.end121:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %name123 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool125.not = icmp eq ptr %name123, null
  %spec.select203 = select i1 %tobool125.not, ptr @.str.3, ptr %name123
  %96 = ptrtoint ptr %func_info to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %func_info, align 8
  %conv133 = zext i8 %97 to i32
  %98 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %protocol, align 4
  %bandwidth_min = getelementptr inbounds %struct.qed_mcp_info, ptr %18, i32 0, i32 13, i32 2
  %100 = ptrtoint ptr %bandwidth_min to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %bandwidth_min, align 8
  %conv135 = zext i8 %101 to i32
  %bandwidth_max = getelementptr inbounds %struct.qed_mcp_info, ptr %18, i32 0, i32 13, i32 3
  %102 = ptrtoint ptr %bandwidth_max to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %bandwidth_max, align 1
  %conv136 = zext i8 %103 to i32
  %mac137 = getelementptr inbounds %struct.qed_mcp_info, ptr %18, i32 0, i32 13, i32 4
  %104 = ptrtoint ptr %wwn_port to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %wwn_port, align 8
  %106 = ptrtoint ptr %wwn_node to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %wwn_node, align 8
  %108 = ptrtoint ptr %ovlan to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %ovlan, align 8
  %conv142 = zext i16 %109 to i32
  %110 = ptrtoint ptr %b_wol_support to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %b_wol_support, align 4
  %conv146 = and i32 %111, 255
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.91, i32 noundef 2525, ptr noundef nonnull %spec.select203, i32 noundef %conv133, i32 noundef %99, i32 noundef %conv135, i32 noundef %conv136, ptr noundef %mac137, i64 noundef %105, i64 noundef %107, i32 noundef %conv142, i32 noundef %conv146) #14
  br label %cleanup151

cleanup151.critedge:                              ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  br label %cleanup151

cleanup151:                                       ; preds = %cleanup151.critedge, %do.end121, %land.rhs.cleanup151_crit_edge, %do.body105.cleanup151_crit_edge, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ %call.i217, %cleanup151.critedge ], [ 0, %do.body105.cleanup151_crit_edge ], [ 0, %do.end121 ], [ 0, %land.rhs.cleanup151_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %shmem_info) #11
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @qed_mcp_get_link_params(ptr noundef readonly %p_hwfn) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p_hwfn, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  %tobool1.not = icmp eq ptr %1, null
  %link_input = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 10
  %spec.select = select i1 %tobool1.not, ptr null, ptr %link_input
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @qed_mcp_get_link_state(ptr noundef readonly %p_hwfn) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p_hwfn, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  %tobool1.not = icmp eq ptr %1, null
  %link_output = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 11
  %spec.select = select i1 %tobool1.not, ptr null, ptr %link_output
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @qed_mcp_get_link_capabilities(ptr noundef readonly %p_hwfn) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p_hwfn, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  %tobool1.not = icmp eq ptr %1, null
  %link_capabilities = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 12
  %spec.select = select i1 %tobool1.not, ptr null, ptr %link_capabilities
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_drain(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %0 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 805306368, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %3 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1000, ptr %param2.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  call void @msleep(i32 noundef 1020) #11
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_get_flash_size(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef writeonly %p_flash_size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf, align 4, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14705708) #11
  %and = and i32 %call, 7
  %shl = shl nuw nsw i32 131072, %and
  %4 = ptrtoint ptr %p_flash_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl, ptr %p_flash_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_start_recovery_process(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %recov_in_prog = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %recov_in_prog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %recov_in_prog, align 8, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %dp_level14 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level14 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level14, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp16 = icmp ult i8 %5, 3
  br i1 %tobool.not, label %do.body13, label %do.body

do.body:                                          ; preds = %entry
  br i1 %cmp16, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 2592, ptr noundef nonnull %spec.select) #14
  br label %cleanup

do.body13:                                        ; preds = %entry
  br i1 %cmp16, label %do.end27, label %do.body13.do.end41_crit_edge, !prof !663

do.body13.do.end41_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end41

do.end27:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %name29 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool31.not = icmp eq ptr %name29, null
  %spec.select49 = select i1 %tobool31.not, ptr @.str.3, ptr %name29
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.99, i32 noundef 2596, ptr noundef nonnull %spec.select49) #14
  br label %do.end41

do.end41:                                         ; preds = %do.end27, %do.body13.do.end41_crit_edge
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 33932, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end41 ], [ -11, %do.end ], [ -11, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_recovery_prolog(ptr noundef %cdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %p_main_ptt = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 24
  %0 = ptrtoint ptr %p_main_ptt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_main_ptt, align 8
  tail call void @msleep(i32 noundef 100) #11
  %call = tail call i32 @qed_pglueb_set_pfid_enable(ptr noundef %hwfns, ptr noundef %1, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %do.body

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %do.end, label %do.body.if.end12_crit_edge, !prof !663

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, i32 noundef 2618, ptr noundef nonnull %spec.select, i32 noundef %call) #14
  br label %if.end12

if.end12:                                         ; preds = %do.end, %do.body.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_pglueb_set_pfid_enable(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_config_vf_msix(ptr noundef %p_hwfn, ptr noundef %p_ptt, i8 noundef zeroext %vf_id, i8 noundef zeroext %num) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i.i6 = alloca %struct.qed_mcp_mb_params, align 4
  %mb_params.i.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %type = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %my_id.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 1
  %4 = ptrtoint ptr %my_id.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %my_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %if.then
  %num_hwfns.i = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_hwfns.i, align 4
  %mul.i = mul i8 %7, %num
  %conv3.i = zext i8 %vf_id to i32
  %conv4.i = zext i8 %mul.i to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 8
  %or7.i = or i32 %shl5.i, %conv3.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i.i) #11
  %8 = getelementptr inbounds i8, ptr %mb_params.i.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 24)
  %10 = ptrtoint ptr %mb_params.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1073676288, ptr %mb_params.i.i, align 4
  %param2.i.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %param2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or7.i, ptr %param2.i.i, align 4
  %call.i.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %qed_mcp_cmd.exit.i, label %qed_mcp_cmd.exit.thread.i

qed_mcp_cmd.exit.thread.i:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i.i) #11
  br label %do.body.i

qed_mcp_cmd.exit.i:                               ; preds = %if.end.i
  %mcp_resp.i.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %mcp_resp.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mcp_resp.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1342111744, i32 %13)
  %cmp.not.i = icmp eq i32 %13, -1342111744
  br i1 %cmp.not.i, label %do.body25.i, label %qed_mcp_cmd.exit.i.do.body.i_crit_edge

qed_mcp_cmd.exit.i.do.body.i_crit_edge:           ; preds = %qed_mcp_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.body.i:                                        ; preds = %qed_mcp_cmd.exit.i.do.body.i_crit_edge, %qed_mcp_cmd.exit.thread.i
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %14 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp11.i = icmp ult i8 %15, 3
  br i1 %cmp11.i, label %do.end.i, label %do.body.i.return_crit_edge, !prof !663

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.314, ptr noundef nonnull @.str.315, i32 noundef 2644, ptr noundef nonnull %name.i, i32 noundef %conv3.i) #14
  br label %return

do.body25.i:                                      ; preds = %qed_mcp_cmd.exit.i
  %dp_level26.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %16 = ptrtoint ptr %dp_level26.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dp_level26.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp28.i = icmp eq i8 %17, 0
  br i1 %cmp28.i, label %land.rhs.i, label %do.body25.i.return_crit_edge

do.body25.i.return_crit_edge:                     ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.rhs.i:                                       ; preds = %do.body25.i
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %18 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dp_module.i, align 4
  %and30.i = and i32 %19, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %land.rhs.i.return_crit_edge, label %do.end41.i, !prof !662

land.rhs.i.return_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end41.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %name43.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.315, i32 noundef 2649, ptr noundef nonnull %name43.i, i32 noundef %conv4.i, i32 noundef %conv3.i) #14
  br label %return

if.else:                                          ; preds = %entry
  %conv.i = zext i8 %num to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i.i6) #11
  %20 = getelementptr inbounds i8, ptr %mb_params.i.i6, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 24)
  %22 = ptrtoint ptr %mb_params.i.i6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1073610752, ptr %mb_params.i.i6, align 4
  %param2.i.i7 = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i6, i32 0, i32 1
  %23 = ptrtoint ptr %param2.i.i7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv.i, ptr %param2.i.i7, align 4
  %call.i.i8 = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i.i6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8)
  %tobool.not.i.i9 = icmp eq i32 %call.i.i8, 0
  br i1 %tobool.not.i.i9, label %qed_mcp_cmd.exit.i13, label %qed_mcp_cmd.exit.thread.i10

qed_mcp_cmd.exit.thread.i10:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i.i6) #11
  br label %do.body.i15

qed_mcp_cmd.exit.i13:                             ; preds = %if.else
  %mcp_resp.i.i11 = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i6, i32 0, i32 6
  %24 = ptrtoint ptr %mcp_resp.i.i11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mcp_resp.i.i11, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i.i6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8847360, i32 %25)
  %cmp.not.i12 = icmp eq i32 %25, 8847360
  br i1 %cmp.not.i12, label %do.body14.i, label %qed_mcp_cmd.exit.i13.do.body.i15_crit_edge

qed_mcp_cmd.exit.i13.do.body.i15_crit_edge:       ; preds = %qed_mcp_cmd.exit.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i15

do.body.i15:                                      ; preds = %qed_mcp_cmd.exit.i13.do.body.i15_crit_edge, %qed_mcp_cmd.exit.thread.i10
  %dp_level.i14 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %26 = ptrtoint ptr %dp_level.i14 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dp_level.i14, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp3.i = icmp ult i8 %27, 3
  br i1 %cmp3.i, label %do.end.i17, label %do.body.i15.return_crit_edge, !prof !663

do.body.i15.return_crit_edge:                     ; preds = %do.body.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end.i17:                                       ; preds = %do.body.i15
  call void @__sanitizer_cov_trace_pc() #13
  %name.i16 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.320, i32 noundef 2666, ptr noundef nonnull %name.i16) #14
  br label %return

do.body14.i:                                      ; preds = %qed_mcp_cmd.exit.i13
  %dp_level15.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %28 = ptrtoint ptr %dp_level15.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dp_level15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp17.i = icmp eq i8 %29, 0
  br i1 %cmp17.i, label %land.rhs.i19, label %do.body14.i.return_crit_edge

do.body14.i.return_crit_edge:                     ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.rhs.i19:                                     ; preds = %do.body14.i
  %dp_module.i18 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %30 = ptrtoint ptr %dp_module.i18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dp_module.i18, align 4
  %and.i = and i32 %31, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool19.not.i, label %land.rhs.i19.return_crit_edge, label %do.end29.i, !prof !662

land.rhs.i19.return_crit_edge:                    ; preds = %land.rhs.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end29.i:                                       ; preds = %land.rhs.i19
  call void @__sanitizer_cov_trace_pc() #13
  %name31.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.322, ptr noundef nonnull @.str.320, i32 noundef 2670, ptr noundef nonnull %name31.i, i32 noundef %conv.i) #14
  br label %return

return:                                           ; preds = %do.end29.i, %land.rhs.i19.return_crit_edge, %do.body14.i.return_crit_edge, %do.end.i17, %do.body.i15.return_crit_edge, %do.end41.i, %land.rhs.i.return_crit_edge, %do.body25.i.return_crit_edge, %do.end.i, %do.body.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.return_crit_edge ], [ 0, %do.end41.i ], [ 0, %land.rhs.i.return_crit_edge ], [ -22, %do.end.i ], [ -22, %do.body.i.return_crit_edge ], [ 0, %do.body25.i.return_crit_edge ], [ 0, %do.end29.i ], [ 0, %land.rhs.i19.return_crit_edge ], [ -22, %do.end.i17 ], [ -22, %do.body.i15.return_crit_edge ], [ 0, %do.body14.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_send_drv_version(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef readonly %p_ver) local_unnamed_addr #1 align 64 {
entry:
  %mb_params = alloca %struct.qed_mcp_mb_params, align 4
  %drv_version = alloca %struct.drv_version_stc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %drv_version) #11
  %0 = getelementptr inbounds %struct.drv_version_stc, ptr %drv_version, i32 0, i32 1
  %1 = ptrtoint ptr %p_ver to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %p_ver, align 4
  %3 = ptrtoint ptr %drv_version to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %drv_version, align 4
  %uglygep21 = getelementptr i8, ptr %p_ver, i32 4
  %4 = call ptr @memcpy(ptr %0, ptr %uglygep21, i32 12)
  %5 = getelementptr inbounds i8, ptr %mb_params, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 28)
  %7 = ptrtoint ptr %mb_params to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 983040, ptr %mb_params, align 4
  %p_data_src = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 2
  %8 = ptrtoint ptr %p_data_src to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %drv_version, ptr %p_data_src, align 4
  %data_src_size = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 4
  %9 = ptrtoint ptr %data_src_size to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %data_src_size, align 4
  %call = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name6 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool7.not = icmp eq ptr %name6, null
  %spec.select = select i1 %tobool7.not, ptr @.str.3, ptr %name6
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.105, i32 noundef 2709, ptr noundef nonnull %spec.select) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %drv_version) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_halt(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %0 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1048576, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %3 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %param2.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  br i1 %tobool.not.i, label %qed_mcp_cmd.exit, label %do.end

qed_mcp_cmd.exit:                                 ; preds = %entry
  call void @msleep(i32 noundef 10) #11
  %call9 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700548) #11
  %and = and i32 %call9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.cond13, label %qed_mcp_cmd.exit.if.end41_crit_edge

qed_mcp_cmd.exit.if.end41_crit_edge:              ; preds = %qed_mcp_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool2.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool2.not, ptr @.str.3, ptr %name
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.106, i32 noundef 2726, ptr noundef nonnull %spec.select) #14
  br label %cleanup

do.cond13:                                        ; preds = %qed_mcp_cmd.exit
  call void @msleep(i32 noundef 10) #11
  %call9.1 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700548) #11
  %and.1 = and i32 %call9.1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool10.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool10.not.1, label %do.cond13.1, label %do.cond13.if.end41_crit_edge

do.cond13.if.end41_crit_edge:                     ; preds = %do.cond13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.cond13.1:                                      ; preds = %do.cond13
  call void @msleep(i32 noundef 10) #11
  %call9.2 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700548) #11
  %and.2 = and i32 %call9.2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool10.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool10.not.2, label %do.cond13.2, label %do.cond13.1.if.end41_crit_edge

do.cond13.1.if.end41_crit_edge:                   ; preds = %do.cond13.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.cond13.2:                                      ; preds = %do.cond13.1
  call void @msleep(i32 noundef 10) #11
  %call9.3 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700548) #11
  %and.3 = and i32 %call9.3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool10.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool10.not.3, label %do.cond13.3, label %do.cond13.2.if.end41_crit_edge

do.cond13.2.if.end41_crit_edge:                   ; preds = %do.cond13.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.cond13.3:                                      ; preds = %do.cond13.2
  call void @msleep(i32 noundef 10) #11
  %call9.4 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700548) #11
  %and.4 = and i32 %call9.4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool10.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool10.not.4, label %do.cond13.4, label %do.cond13.3.if.end41_crit_edge

do.cond13.3.if.end41_crit_edge:                   ; preds = %do.cond13.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.cond13.4:                                      ; preds = %do.cond13.3
  call void @msleep(i32 noundef 10) #11
  %call9.5 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700548) #11
  %and.5 = and i32 %call9.5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool10.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool10.not.5, label %do.cond13.5, label %do.cond13.4.if.end41_crit_edge

do.cond13.4.if.end41_crit_edge:                   ; preds = %do.cond13.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.cond13.5:                                      ; preds = %do.cond13.4
  call void @msleep(i32 noundef 10) #11
  %call9.6 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700548) #11
  %and.6 = and i32 %call9.6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool10.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool10.not.6, label %do.cond13.6, label %do.cond13.5.if.end41_crit_edge

do.cond13.5.if.end41_crit_edge:                   ; preds = %do.cond13.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.cond13.6:                                      ; preds = %do.cond13.5
  call void @msleep(i32 noundef 10) #11
  %call9.7 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700548) #11
  %and.7 = and i32 %call9.7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool10.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool10.not.7, label %do.cond13.7, label %do.cond13.6.if.end41_crit_edge

do.cond13.6.if.end41_crit_edge:                   ; preds = %do.cond13.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.cond13.7:                                      ; preds = %do.cond13.6
  call void @msleep(i32 noundef 10) #11
  %call9.8 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700548) #11
  %and.8 = and i32 %call9.8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool10.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool10.not.8, label %do.cond13.8, label %do.cond13.7.if.end41_crit_edge

do.cond13.7.if.end41_crit_edge:                   ; preds = %do.cond13.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.cond13.8:                                      ; preds = %do.cond13.7
  call void @msleep(i32 noundef 10) #11
  %call9.9 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700548) #11
  %and.9 = and i32 %call9.9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool10.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool10.not.9, label %do.body17, label %do.cond13.8.if.end41_crit_edge

do.cond13.8.if.end41_crit_edge:                   ; preds = %do.cond13.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.body17:                                        ; preds = %do.cond13.8
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp18 = icmp ult i8 %5, 3
  br i1 %cmp18, label %do.end25, label %do.body17.cleanup_crit_edge, !prof !663

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end25:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  %name27 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool29.not = icmp eq ptr %name27, null
  %spec.select59 = select i1 %tobool29.not, ptr @.str.3, ptr %name27
  %call36 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700544) #11
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.106, i32 noundef 2740, ptr noundef nonnull %spec.select59, i32 noundef %call36, i32 noundef %call9.9) #14
  br label %cleanup

if.end41:                                         ; preds = %do.cond13.8.if.end41_crit_edge, %do.cond13.7.if.end41_crit_edge, %do.cond13.6.if.end41_crit_edge, %do.cond13.5.if.end41_crit_edge, %do.cond13.4.if.end41_crit_edge, %do.cond13.3.if.end41_crit_edge, %do.cond13.2.if.end41_crit_edge, %do.cond13.1.if.end41_crit_edge, %do.cond13.if.end41_crit_edge, %qed_mcp_cmd.exit.if.end41_crit_edge
  %mcp_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %6 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcp_info.i, align 8
  %b_block_cmd.i = getelementptr inbounds %struct.qed_mcp_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %b_block_cmd.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %b_block_cmd.i, align 4
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %9 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp.i = icmp ult i8 %10, 2
  br i1 %cmp.i, label %do.end.i, label %if.end41.cleanup_crit_edge, !prof !663

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.324, ptr noundef nonnull @.str.325, i32 noundef 436, ptr noundef nonnull %name.i, ptr noundef nonnull @.str.326) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end41.cleanup_crit_edge, %do.end25, %do.body17.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -16, %do.end25 ], [ -16, %do.body17.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_mcp_cmd_set_blocking(ptr noundef %p_hwfn, i1 noundef zeroext %block_cmd) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %block_cmd to i8
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  %b_block_cmd = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %b_block_cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %b_block_cmd, align 4
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %3 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp = icmp ult i8 %4, 2
  br i1 %cmp, label %do.end, label %entry.do.end12_crit_edge, !prof !663

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %cond11 = select i1 %block_cmd, ptr @.str.326, ptr @.str.327
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.324, ptr noundef nonnull @.str.325, i32 noundef 436, ptr noundef nonnull %spec.select, ptr noundef nonnull %cond11) #14
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry.do.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_resume(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700548, i32 noundef -1) #11
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700544) #11
  %and = and i32 %call, -1025
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700544, i32 noundef %and) #11
  tail call void @msleep(i32 noundef 10) #11
  %call1 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700548) #11
  %and2 = and i32 %call1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end14, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp ult i8 %1, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.3, ptr %name
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, i32 noundef 2766, ptr noundef nonnull %spec.select, i32 noundef %and, i32 noundef %call1) #14
  br label %cleanup

if.end14:                                         ; preds = %entry
  %mcp_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %2 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcp_info.i, align 8
  %b_block_cmd.i = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %b_block_cmd.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b_block_cmd.i, align 4
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %5 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp.i = icmp ult i8 %6, 2
  br i1 %cmp.i, label %do.end.i, label %if.end14.cleanup_crit_edge, !prof !663

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.324, ptr noundef nonnull @.str.325, i32 noundef 436, ptr noundef nonnull %name.i, ptr noundef nonnull @.str.327) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end14.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_ov_update_current_config(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %client) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %client)
  %0 = icmp ult i32 %client, 3
  br i1 %0, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp = icmp ult i8 %2, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, i32 noundef 2794, ptr noundef nonnull %spec.select, i32 noundef %client) #14
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.qed_mcp_ov_update_current_config, i32 0, i32 %client
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %4 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 24)
  %6 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 637534208, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %7 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.load, ptr %param2.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  br i1 %tobool.not.i, label %switch.lookup.cleanup_crit_edge, label %do.end17

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end17:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %name19 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool21.not = icmp eq ptr %name19, null
  %spec.select42 = select i1 %tobool21.not, ptr @.str.3, ptr %name19
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.113, i32 noundef 2801, ptr noundef nonnull %spec.select42) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %switch.lookup.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ %call.i, %do.end17 ], [ 0, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_ov_update_driver_state(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %drv_state) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %drv_state)
  %0 = icmp ult i32 %drv_state, 3
  br i1 %0, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp = icmp ult i8 %2, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, i32 noundef 2825, ptr noundef nonnull %spec.select, i32 noundef %drv_state) #14
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.qed_mcp_ov_update_driver_state, i32 0, i32 %drv_state
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %4 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 24)
  %6 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 822083584, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %7 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.load, ptr %param2.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  br i1 %tobool.not.i, label %switch.lookup.cleanup_crit_edge, label %do.end17

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end17:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %name19 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool21.not = icmp eq ptr %name19, null
  %spec.select42 = select i1 %tobool21.not, ptr @.str.3, ptr %name19
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.117, i32 noundef 2832, ptr noundef nonnull %spec.select42) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %switch.lookup.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ %call.i, %do.end17 ], [ 0, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_ov_update_mtu(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %mtu) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %mtu to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %0 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 855638016, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %3 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %param2.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool2.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool2.not, ptr @.str.3, ptr %name
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, i32 noundef 2848, ptr noundef nonnull %spec.select, i32 noundef %call.i) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_ov_update_mac(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef readonly %mac) local_unnamed_addr #1 align 64 {
entry:
  %mb_params = alloca %struct.qed_mcp_mb_params, align 4
  %mfw_mac = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mfw_mac) #11
  %0 = getelementptr inbounds [2 x i32], ptr %mfw_mac, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %mb_params, i32 12
  %2 = call ptr @memset(ptr %1, i32 0, i32 20)
  %3 = ptrtoint ptr %mb_params to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1114112, ptr %mb_params, align 4
  %param = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 1
  %4 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_hwfn, align 8
  %type = getelementptr inbounds %struct.qed_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %rel_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %8 = ptrtoint ptr %rel_pf_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rel_pf_id, align 1
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %abs_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %10 = ptrtoint ptr %abs_pf_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %abs_pf_id, align 2
  %12 = shl i8 %11, 3
  %13 = and i8 %12, 8
  %or57 = or i8 %13, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond.in = phi i8 [ %or57, %cond.true ], [ %9, %entry.cond.end_crit_edge ]
  %14 = or i8 %cond.in, 16
  %or5 = zext i8 %14 to i32
  %15 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or5, ptr %param, align 4
  %16 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mac, align 1
  %conv6 = zext i8 %17 to i32
  %shl7 = shl nuw i32 %conv6, 24
  %arrayidx8 = getelementptr i8, ptr %mac, i32 1
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %19 to i32
  %shl10 = shl nuw nsw i32 %conv9, 16
  %or11 = or i32 %shl10, %shl7
  %arrayidx12 = getelementptr i8, ptr %mac, i32 2
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %21 to i32
  %shl14 = shl nuw nsw i32 %conv13, 8
  %or15 = or i32 %or11, %shl14
  %arrayidx16 = getelementptr i8, ptr %mac, i32 3
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %23 to i32
  %or18 = or i32 %or15, %conv17
  %24 = ptrtoint ptr %mfw_mac to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or18, ptr %mfw_mac, align 4
  %arrayidx20 = getelementptr i8, ptr %mac, i32 4
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %26 to i32
  %shl22 = shl nuw i32 %conv21, 24
  %arrayidx23 = getelementptr i8, ptr %mac, i32 5
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %28 to i32
  %shl25 = shl nuw nsw i32 %conv24, 16
  %or26 = or i32 %shl25, %shl22
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or26, ptr %0, align 4
  %p_data_src = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 2
  %30 = ptrtoint ptr %p_data_src to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %mfw_mac, ptr %p_data_src, align 4
  %data_src_size = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 4
  %31 = ptrtoint ptr %data_src_size to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 8, ptr %data_src_size, align 4
  %call = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.end.if.end_crit_edge, label %do.end

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool30.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool30.not, ptr @.str.3, ptr %name
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.124, i32 noundef 2878, ptr noundef nonnull %spec.select, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %cond.end.if.end_crit_edge
  %32 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p_hwfn, align 8
  %wol_mac = getelementptr inbounds %struct.qed_dev, ptr %33, i32 0, i32 21
  %34 = call ptr @memcpy(ptr %wol_mac, ptr %mac, i32 6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mfw_mac) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_ov_update_wol(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %wol) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %b_wol_support = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 21
  %0 = ptrtoint ptr %b_wol_support to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_wol_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1 = icmp eq i8 %3, 0
  br i1 %cmp1, label %land.rhs, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %4 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module, align 4
  %and = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.cleanup_crit_edge, label %do.end, !prof !662

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, i32 noundef 2895, ptr noundef nonnull %spec.select) #14
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %wol)
  %6 = icmp ult i32 %wol, 3
  br i1 %6, label %switch.lookup, label %do.end18

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %name20 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool22.not = icmp eq ptr %name20, null
  %spec.select71 = select i1 %tobool22.not, ptr @.str.3, ptr %name20
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.126, i32 noundef 2910, ptr noundef nonnull %spec.select71, i32 noundef %wol) #14
  br label %cleanup

switch.lookup:                                    ; preds = %if.end12
  %switch.offset = add i32 %wol, 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %7 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 24)
  %9 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 939524096, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %10 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %switch.offset, ptr %param2.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  br i1 %tobool.not.i, label %switch.lookup.if.end52_crit_edge, label %do.end38

switch.lookup.if.end52_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

do.end38:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %name40 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool42.not = icmp eq ptr %name40, null
  %spec.select72 = select i1 %tobool42.not, ptr @.str.3, ptr %name40
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.126, i32 noundef 2917, ptr noundef nonnull %spec.select72, i32 noundef %call.i) #14
  br label %if.end52

if.end52:                                         ; preds = %do.end38, %switch.lookup.if.end52_crit_edge
  %conv53 = trunc i32 %wol to i8
  %11 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_hwfn, align 8
  %wol_config = getelementptr inbounds %struct.qed_dev, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %wol_config to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv53, ptr %wol_config, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end18, %do.end, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end18 ], [ %call.i, %if.end52 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_ov_update_eswitch(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %eswitch) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %eswitch)
  %switch = icmp ult i32 %eswitch, 3
  br i1 %switch, label %sw.epilog, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134, i32 noundef 2944, ptr noundef nonnull %spec.select, i32 noundef %eswitch) #14
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %0 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 956301312, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %3 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %eswitch, ptr %param2.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  br i1 %tobool.not.i, label %sw.epilog.cleanup_crit_edge, label %do.end13

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end13:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %name15 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool17.not = icmp eq ptr %name15, null
  %spec.select37 = select i1 %tobool17.not, ptr @.str.3, ptr %name15
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.134, i32 noundef 2951, ptr noundef nonnull %spec.select37, i32 noundef %call.i) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %do.end13 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_set_led(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %mode) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %0 = icmp ult i32 %mode, 3
  br i1 %0, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp = icmp ult i8 %2, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139, i32 noundef 2973, ptr noundef nonnull %spec.select, i32 noundef %mode) #14
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.offset = sub i32 2, %mode
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %3 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 24)
  %5 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2097152, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %6 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %switch.offset, ptr %param2.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %switch.lookup ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_mask_parities(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %mask_parities) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %0 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1703936, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %3 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mask_parities, ptr %param2.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool2.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool2.not, ptr @.str.3, ptr %name
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.141, i32 noundef 2994, ptr noundef nonnull %spec.select) #14
  br label %if.end26

if.else:                                          ; preds = %entry
  %mcp_resp.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 6
  %4 = ptrtoint ptr %mcp_resp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mcp_resp.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1441792, i32 %5)
  %cmp.not = icmp eq i32 %5, 1441792
  br i1 %cmp.not, label %if.else.if.end26_crit_edge, label %do.end12

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %name14 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool16.not = icmp eq ptr %name14, null
  %spec.select32 = select i1 %tobool16.not, ptr @.str.3, ptr %name14
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.141, i32 noundef 2997, ptr noundef nonnull %spec.select32) #14
  br label %if.end26

if.end26:                                         ; preds = %do.end12, %if.else.if.end26_crit_edge, %do.end
  %rc.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end12 ], [ 0, %if.else.if.end26_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_nvm_read(ptr noundef %cdev, i32 noundef %addr, ptr nocapture noundef writeonly %p_buf, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  %raw_data.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not70 = icmp eq i32 %len, 0
  br i1 %cmp.not70, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %0 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %p_data_dst.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 3
  %data_dst_size.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 5
  %mcp_resp.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 6
  %mcp_param.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 7
  %1 = call i32 @llvm.umin.i32(i32 %len, i32 32)
  %shl92 = shl nuw nsw i32 %1, 24
  %add293 = add i32 %shl92, %addr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_data.i) #11
  %2 = call ptr @memset(ptr %raw_data.i, i32 255, i32 32)
  %3 = call ptr @memset(ptr %0, i32 0, i32 24)
  %4 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 327680, ptr %mb_params.i, align 4
  %5 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add293, ptr %param2.i, align 4
  %6 = ptrtoint ptr %p_data_dst.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %raw_data.i, ptr %p_data_dst.i, align 4
  %7 = ptrtoint ptr %data_dst_size.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 32, ptr %data_dst_size.i, align 1
  %call.i94 = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %hwfns, ptr noundef nonnull %call, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool3.not.i95 = icmp eq i32 %call.i94, 0
  br i1 %tobool3.not.i95, label %while.body.lr.ph.lor.lhs.false_crit_edge, label %while.body.lr.ph.qed_mcp_nvm_rd_cmd.exit_crit_edge

while.body.lr.ph.qed_mcp_nvm_rd_cmd.exit_crit_edge: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_nvm_rd_cmd.exit

while.body.lr.ph.lor.lhs.false_crit_edge:         ; preds = %while.body.lr.ph
  br label %lor.lhs.false

while.body:                                       ; preds = %if.end30
  %add31 = add i32 %18, %offset.07297
  %8 = call i32 @llvm.umin.i32(i32 %sub, i32 32)
  %add = add i32 %add31, %addr
  %shl = shl nuw nsw i32 %8, 24
  %add2 = add i32 %add, %shl
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_data.i) #11
  %9 = call ptr @memset(ptr %raw_data.i, i32 255, i32 32)
  %10 = call ptr @memset(ptr %0, i32 0, i32 24)
  %11 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 327680, ptr %mb_params.i, align 4
  %12 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add2, ptr %param2.i, align 4
  %13 = ptrtoint ptr %p_data_dst.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %raw_data.i, ptr %p_data_dst.i, align 4
  %14 = ptrtoint ptr %data_dst_size.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 32, ptr %data_dst_size.i, align 1
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %hwfns, ptr noundef nonnull %call, ptr noundef nonnull %mb_params.i) #11
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %while.body.lor.lhs.false_crit_edge, label %while.body.qed_mcp_nvm_rd_cmd.exit_crit_edge

while.body.qed_mcp_nvm_rd_cmd.exit_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_nvm_rd_cmd.exit

while.body.lor.lhs.false_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

qed_mcp_nvm_rd_cmd.exit:                          ; preds = %while.body.qed_mcp_nvm_rd_cmd.exit_crit_edge, %while.body.lr.ph.qed_mcp_nvm_rd_cmd.exit_crit_edge
  %resp.071.lcssa = phi i32 [ 0, %while.body.lr.ph.qed_mcp_nvm_rd_cmd.exit_crit_edge ], [ 65536, %while.body.qed_mcp_nvm_rd_cmd.exit_crit_edge ]
  %call.i.lcssa = phi i32 [ %call.i94, %while.body.lr.ph.qed_mcp_nvm_rd_cmd.exit_crit_edge ], [ %call.i, %while.body.qed_mcp_nvm_rd_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_data.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  br label %do.body

lor.lhs.false:                                    ; preds = %while.body.lor.lhs.false_crit_edge, %while.body.lr.ph.lor.lhs.false_crit_edge
  %call.i98 = phi i32 [ %call.i, %while.body.lor.lhs.false_crit_edge ], [ %call.i94, %while.body.lr.ph.lor.lhs.false_crit_edge ]
  %offset.07297 = phi i32 [ %add31, %while.body.lor.lhs.false_crit_edge ], [ 0, %while.body.lr.ph.lor.lhs.false_crit_edge ]
  %bytes_left.07396 = phi i32 [ %sub, %while.body.lor.lhs.false_crit_edge ], [ %len, %while.body.lr.ph.lor.lhs.false_crit_edge ]
  %add.ptr = getelementptr i8, ptr %p_buf, i32 %offset.07297
  %15 = ptrtoint ptr %mcp_resp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mcp_resp.i, align 4
  %17 = ptrtoint ptr %mcp_param.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mcp_param.i, align 4
  %19 = call ptr @memcpy(ptr %add.ptr, ptr %raw_data.i, i32 %18)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_data.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %16)
  %cmp5.not = icmp eq i32 %16, 65536
  br i1 %cmp5.not, label %if.end25, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %qed_mcp_nvm_rd_cmd.exit
  %call.i88 = phi i32 [ %call.i.lcssa, %qed_mcp_nvm_rd_cmd.exit ], [ %call.i98, %lor.lhs.false.do.body_crit_edge ]
  %resp.165 = phi i32 [ %resp.071.lcssa, %qed_mcp_nvm_rd_cmd.exit ], [ %16, %lor.lhs.false.do.body_crit_edge ]
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %20 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp7 = icmp ult i8 %21, 3
  br i1 %cmp7, label %do.end, label %do.body.while.end_crit_edge, !prof !663

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool14.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool14.not, ptr @.str.3, ptr %name
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146, i32 noundef 3029, ptr noundef nonnull %spec.select, i32 noundef %call.i88) #14
  br label %while.end

if.end25:                                         ; preds = %lor.lhs.false
  %rem = and i32 %bytes_left.07396, 4095
  %sub = sub i32 %bytes_left.07396, %18
  %rem26 = and i32 %sub, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %rem26)
  %cmp27 = icmp ult i32 %rem, %rem26
  br i1 %cmp27, label %if.then29, label %if.end25.if.end30_crit_edge

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end25.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %if.end30.while.end_crit_edge, label %while.body

if.end30.while.end_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end30.while.end_crit_edge, %do.end, %do.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %resp.2 = phi i32 [ %resp.165, %do.end ], [ %resp.165, %do.body.while.end_crit_edge ], [ 0, %while.cond.preheader.while.end_crit_edge ], [ 65536, %if.end30.while.end_crit_edge ]
  %rc.1 = phi i32 [ %call.i88, %do.end ], [ %call.i88, %do.body.while.end_crit_edge ], [ 0, %while.cond.preheader.while.end_crit_edge ], [ 0, %if.end30.while.end_crit_edge ]
  %mcp_nvm_resp = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 43
  %22 = ptrtoint ptr %mcp_nvm_resp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %resp.2, ptr %mcp_nvm_resp, align 4
  call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %while.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_ptt_acquire(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ptt_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_nvm_resp(ptr noundef %cdev, ptr nocapture noundef writeonly %p_buf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mcp_nvm_resp = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 43
  %0 = ptrtoint ptr %mcp_nvm_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mcp_nvm_resp, align 4
  %2 = ptrtoint ptr %p_buf to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %p_buf, align 1
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_nvm_write(ptr noundef %cdev, i32 noundef %cmd, i32 noundef %addr, ptr noundef %p_buf, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.378)
  switch i32 %cmd, label %do.body [
    i32 65536, label %if.end.sw.epilog_crit_edge
    i32 131072, label %if.end.sw.epilog_crit_edge202
    i32 393216, label %if.end.sw.epilog_crit_edge203
  ]

if.end.sw.epilog_crit_edge203:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.sw.epilog_crit_edge202:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp = icmp ult i8 %2, 3
  br i1 %cmp, label %do.end, label %do.body.out_crit_edge, !prof !663

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.3, ptr %name
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.148, i32 noundef 3088, ptr noundef nonnull %spec.select, i32 noundef %cmd) #14
  br label %out

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge202, %if.end.sw.epilog_crit_edge203
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp22183.not = icmp eq i32 %len, 0
  br i1 %cmp22183.not, label %sw.epilog.while.end_crit_edge, label %while.body.lr.ph

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %sw.epilog
  %3 = tail call i32 @llvm.umin.i32(i32 %len, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmd)
  %cmp24 = icmp eq i32 %cmd, 65536
  %4 = getelementptr inbounds i8, ptr %mb_params.i, i32 12
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %p_data_src.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 2
  %data_src_size.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 4
  %mcp_resp.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 6
  %mcp_param.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 7
  %valid.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 63, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %cmd)
  %cmp108 = icmp eq i32 %cmd, 131072
  br label %while.body

while.body:                                       ; preds = %if.end123.while.body_crit_edge, %while.body.lr.ph
  %buf_idx.0185 = phi i32 [ 0, %while.body.lr.ph ], [ %buf_idx.1, %if.end123.while.body_crit_edge ]
  %buf_size.0184 = phi i32 [ %3, %while.body.lr.ph ], [ %buf_size.1, %if.end123.while.body_crit_edge ]
  %shl = shl nuw i32 %buf_size.0184, 24
  %or = or i32 %shl, %addr
  %add = add i32 %or, %buf_idx.0185
  %nvm_offset.0 = select i1 %cmp24, i32 %addr, i32 %add
  %arrayidx28 = getelementptr i8, ptr %p_buf, i32 %buf_idx.0185
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %5 = call ptr @memset(ptr %4, i32 0, i32 20)
  %6 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cmd, ptr %mb_params.i, align 4
  %7 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %nvm_offset.0, ptr %param2.i, align 4
  %8 = ptrtoint ptr %p_data_src.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx28, ptr %p_data_src.i, align 4
  %conv.i = trunc i32 %buf_size.0184 to i8
  %9 = ptrtoint ptr %data_src_size.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %data_src_size.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %hwfns, ptr noundef nonnull %call, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end61, label %do.body32

do.body32:                                        ; preds = %while.body
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  %dp_level33 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %10 = ptrtoint ptr %dp_level33 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level33, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp35 = icmp ult i8 %11, 3
  br i1 %cmp35, label %do.end46, label %do.body32.while.end_crit_edge, !prof !663

do.body32.while.end_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end46:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  %name48 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool50.not = icmp eq ptr %name48, null
  %spec.select169 = select i1 %tobool50.not, ptr @.str.3, ptr %name48
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.148, i32 noundef 3105, ptr noundef nonnull %spec.select169, i32 noundef %call.i) #14
  br label %while.end

if.end61:                                         ; preds = %while.body
  %12 = ptrtoint ptr %mcp_resp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mcp_resp.i, align 4
  %14 = ptrtoint ptr %mcp_param.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mcp_param.i, align 4
  %16 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %valid.i, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  %17 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.379)
  switch i32 %13, label %do.body70 [
    i32 1441792, label %if.end61.if.end99_crit_edge
    i32 65536, label %if.end61.if.end99_crit_edge204
    i32 4194304, label %if.end61.if.end99_crit_edge205
  ]

if.end61.if.end99_crit_edge205:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.end61.if.end99_crit_edge204:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.end61.if.end99_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

do.body70:                                        ; preds = %if.end61
  %dp_level71 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %18 = ptrtoint ptr %dp_level71 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level71, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp73 = icmp ult i8 %19, 3
  br i1 %cmp73, label %do.end84, label %do.body70.while.end_crit_edge, !prof !663

do.body70.while.end_crit_edge:                    ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end84:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #13
  %name86 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool88.not = icmp eq ptr %name86, null
  %spec.select170 = select i1 %tobool88.not, ptr @.str.3, ptr %name86
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.148, i32 noundef 3114, ptr noundef nonnull %spec.select170, i32 noundef %13) #14
  br label %while.end

if.end99:                                         ; preds = %if.end61.if.end99_crit_edge, %if.end61.if.end99_crit_edge204, %if.end61.if.end99_crit_edge205
  %rem = and i32 %buf_idx.0185, 4095
  %add100 = add i32 %buf_idx.0185, %buf_size.0184
  %rem101 = and i32 %add100, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %rem101)
  %cmp102 = icmp ugt i32 %rem, %rem101
  br i1 %cmp102, label %if.then104, label %if.end99.if.end105_crit_edge

if.end99.if.end105_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end99.if.end105_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool106.not = icmp ne i32 %15, 0
  %or.cond = and i1 %cmp108, %tobool106.not
  br i1 %or.cond, label %if.then110, label %if.else113

if.then110:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %15, 16777215
  %shr112 = lshr i32 %15, 24
  br label %if.end123

if.else113:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  %sub115 = sub i32 %len, %add100
  %20 = call i32 @llvm.umin.i32(i32 %sub115, i32 32)
  br label %if.end123

if.end123:                                        ; preds = %if.else113, %if.then110
  %buf_size.1 = phi i32 [ %shr112, %if.then110 ], [ %20, %if.else113 ]
  %buf_idx.1 = phi i32 [ %and, %if.then110 ], [ %add100, %if.else113 ]
  %cmp22 = icmp ult i32 %buf_idx.1, %len
  br i1 %cmp22, label %if.end123.while.body_crit_edge, label %if.end123.while.end_crit_edge

if.end123.while.end_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end123.while.body_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end123.while.end_crit_edge, %do.end84, %do.body70.while.end_crit_edge, %do.end46, %do.body32.while.end_crit_edge, %sw.epilog.while.end_crit_edge
  %resp.2 = phi i32 [ %13, %do.end84 ], [ %13, %do.body70.while.end_crit_edge ], [ 1507328, %do.end46 ], [ 1507328, %do.body32.while.end_crit_edge ], [ 0, %sw.epilog.while.end_crit_edge ], [ %13, %if.end123.while.end_crit_edge ]
  %rc.1 = phi i32 [ -22, %do.end84 ], [ -22, %do.body70.while.end_crit_edge ], [ %call.i, %do.end46 ], [ %call.i, %do.body32.while.end_crit_edge ], [ -22, %sw.epilog.while.end_crit_edge ], [ 0, %if.end123.while.end_crit_edge ]
  %mcp_nvm_resp = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 43
  %21 = ptrtoint ptr %mcp_nvm_resp to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %resp.2, ptr %mcp_nvm_resp, align 4
  br label %out

out:                                              ; preds = %while.end, %do.end, %do.body.out_crit_edge
  %rc.2 = phi i32 [ %rc.1, %while.end ], [ -22, %do.end ], [ -22, %do.body.out_crit_edge ]
  call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %out ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_phy_sfp_read(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %port, i32 noundef %addr, i32 noundef %offset, i32 noundef %len, ptr nocapture noundef writeonly %p_buf) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  %raw_data.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not68 = icmp eq i32 %len, 0
  br i1 %cmp.not68, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %shl1 = shl i32 %addr, 8
  %and2 = and i32 %shl1, 65280
  %and = and i32 %port, 3
  %or3 = or i32 %and2, %and
  %0 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %p_data_dst.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 3
  %data_dst_size.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 5
  %flags.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 8
  %mcp_resp.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 6
  %mcp_param.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end37.while.body_crit_edge, %while.body.lr.ph
  %nvm_offset.071 = phi i32 [ %or3, %while.body.lr.ph ], [ %or11, %if.end37.while.body_crit_edge ]
  %bytes_left.070 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %if.end37.while.body_crit_edge ]
  %offset.addr.069 = phi i32 [ 0, %while.body.lr.ph ], [ %add38, %if.end37.while.body_crit_edge ]
  %1 = call i32 @llvm.umin.i32(i32 %bytes_left.070, i32 16)
  %and5 = and i32 %nvm_offset.071, 65283
  %add = add i32 %offset.addr.069, %offset
  %shl6 = shl i32 %add, 16
  %or8 = or i32 %and5, %shl6
  %shl9 = shl nuw nsw i32 %1, 2
  %or11 = or i32 %or8, %shl9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_data.i) #11
  %2 = call ptr @memset(ptr %raw_data.i, i32 255, i32 32)
  %3 = call ptr @memset(ptr %0, i32 0, i32 20)
  %4 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1441792, ptr %mb_params.i, align 4
  %5 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or11, ptr %param2.i, align 4
  %6 = ptrtoint ptr %p_data_dst.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %raw_data.i, ptr %p_data_dst.i, align 4
  %7 = ptrtoint ptr %data_dst_size.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 32, ptr %data_dst_size.i, align 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %flags.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end29, label %do.body

do.body:                                          ; preds = %while.body
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_data.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %9 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp12 = icmp ult i8 %10, 3
  br i1 %cmp12, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool19.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool19.not, ptr @.str.3, ptr %name
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.156, i32 noundef 3182, ptr noundef nonnull %spec.select, i32 noundef %call.i) #14
  br label %cleanup

if.end29:                                         ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %p_buf, i32 %offset.addr.069
  %11 = ptrtoint ptr %mcp_resp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mcp_resp.i, align 4
  %13 = ptrtoint ptr %mcp_param.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mcp_param.i, align 4
  %15 = call ptr @memcpy(ptr %add.ptr, ptr %raw_data.i, i32 %14)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_data.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  %16 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.380)
  switch i32 %12, label %if.end29.cleanup_crit_edge [
    i32 131072, label %if.end29.cleanup.loopexit_crit_edge
    i32 1441792, label %if.end37
  ]

if.end29.cleanup.loopexit_crit_edge:              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.loopexit

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  %add38 = add i32 %14, %offset.addr.069
  %sub = sub i32 %bytes_left.070, %14
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %if.end37.cleanup.loopexit_crit_edge, label %if.end37.while.body_crit_edge

if.end37.while.body_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end37.cleanup.loopexit_crit_edge:              ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %if.end37.cleanup.loopexit_crit_edge, %if.end29.cleanup.loopexit_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end37.cleanup.loopexit_crit_edge ], [ -19, %if.end29.cleanup.loopexit_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.end29.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.loopexit ], [ -22, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_bist_register_test(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %0 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1966080, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %3 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %param2.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %qed_mcp_cmd.exit

qed_mcp_cmd.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mcp_resp.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 6
  %4 = ptrtoint ptr %mcp_resp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mcp_resp.i, align 4
  %mcp_param.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 7
  %6 = ptrtoint ptr %mcp_param.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mcp_param.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  %and = and i32 %5, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1441792, i32 %and)
  %cmp.not = icmp eq i32 %and, 1441792
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.not = icmp eq i32 %7, 1
  %or.cond = select i1 %cmp.not, i1 %cmp1.not, i1 false
  %spec.select = select i1 %or.cond, i32 0, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qed_mcp_cmd.exit
  %retval.0 = phi i32 [ %call.i, %qed_mcp_cmd.exit ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_bist_clock_test(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %0 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1966080, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %3 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %param2.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %qed_mcp_cmd.exit

qed_mcp_cmd.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mcp_resp.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 6
  %4 = ptrtoint ptr %mcp_resp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mcp_resp.i, align 4
  %mcp_param.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 7
  %6 = ptrtoint ptr %mcp_param.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mcp_param.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  %and = and i32 %5, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1441792, i32 %and)
  %cmp.not = icmp eq i32 %and, 1441792
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.not = icmp eq i32 %7, 1
  %or.cond = select i1 %cmp.not, i1 %cmp1.not, i1 false
  %spec.select = select i1 %or.cond, i32 0, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qed_mcp_cmd.exit
  %retval.0 = phi i32 [ %call.i, %qed_mcp_cmd.exit ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_bist_nvm_get_num_images(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef writeonly %num_images) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %0 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1966080, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %3 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %param2.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %qed_mcp_cmd.exit

qed_mcp_cmd.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mcp_resp.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 6
  %4 = ptrtoint ptr %mcp_resp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mcp_resp.i, align 4
  %mcp_param.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 7
  %6 = ptrtoint ptr %mcp_param.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mcp_param.i, align 4
  %8 = ptrtoint ptr %num_images to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_images, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  %and = and i32 %5, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1441792, i32 %and)
  %cmp.not = icmp eq i32 %and, 1441792
  %spec.select = select i1 %cmp.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qed_mcp_cmd.exit
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ %call.i, %qed_mcp_cmd.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_bist_nvm_get_image_att(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef %p_image_att, i32 noundef %image_index) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  %raw_data.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %image_index, 8
  %or = or i32 %shl, 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_data.i) #11
  %0 = call ptr @memset(ptr %raw_data.i, i32 255, i32 32)
  %1 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 24)
  %3 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1966080, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %4 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %param2.i, align 4
  %p_data_dst.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 3
  %5 = ptrtoint ptr %p_data_dst.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %raw_data.i, ptr %p_data_dst.i, align 4
  %data_dst_size.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 5
  %6 = ptrtoint ptr %data_dst_size.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %data_dst_size.i, align 1
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end, label %qed_mcp_nvm_rd_cmd.exit

qed_mcp_nvm_rd_cmd.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_data.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mcp_resp.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 6
  %7 = ptrtoint ptr %mcp_resp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mcp_resp.i, align 4
  %mcp_param.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 7
  %9 = ptrtoint ptr %mcp_param.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mcp_param.i, align 4
  %11 = call ptr @memcpy(ptr %p_image_att, ptr %raw_data.i, i32 %10)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_data.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  %and = and i32 %8, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1441792, i32 %and)
  %cmp.not = icmp eq i32 %and, 1441792
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.then2_crit_edge

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %12 = ptrtoint ptr %p_image_att to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p_image_att, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp1.not = icmp eq i32 %13, 1
  br i1 %cmp1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then2_crit_edge

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %lor.lhs.false.cleanup_crit_edge, %qed_mcp_nvm_rd_cmd.exit
  %retval.0 = phi i32 [ %call.i, %qed_mcp_nvm_rd_cmd.exit ], [ -22, %if.then2 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_nvm_info_populate(ptr noundef %p_hwfn) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i.i184 = alloca %struct.qed_mcp_mb_params, align 4
  %raw_data.i.i = alloca [32 x i8], align 1
  %mb_params.i.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm_info1 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 63
  %valid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 63, i32 2
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid, align 8, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %p_hwfn) #11
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.158, i32 noundef 3300, ptr noundef nonnull %spec.select) #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i.i) #11
  %2 = getelementptr inbounds i8, ptr %mb_params.i.i, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 24)
  %4 = ptrtoint ptr %mb_params.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1966080, ptr %mb_params.i.i, align 4
  %param2.i.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %param2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %param2.i.i, align 4
  %call.i.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef nonnull %call, ptr noundef nonnull %mb_params.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %qed_mcp_bist_nvm_get_num_images.exit

if.end.i:                                         ; preds = %if.end11
  %mcp_resp.i.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %mcp_resp.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mcp_resp.i.i, align 4
  %mcp_param.i.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %mcp_param.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mcp_param.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i.i) #11
  %and.i = and i32 %7, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1441792, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 1441792
  br i1 %cmp.not.i, label %lor.lhs.false, label %if.end.i.do.end45_crit_edge

if.end.i.do.end45_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

qed_mcp_bist_nvm_get_num_images.exit:             ; preds = %if.end11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call.i.i)
  %cond = icmp eq i32 %call.i.i, -95
  br i1 %cond, label %do.body15, label %qed_mcp_bist_nvm_get_num_images.exit.do.end45_crit_edge

qed_mcp_bist_nvm_get_num_images.exit.do.end45_crit_edge: ; preds = %qed_mcp_bist_nvm_get_num_images.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

do.body15:                                        ; preds = %qed_mcp_bist_nvm_get_num_images.exit
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %10 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp16 = icmp ult i8 %11, 2
  br i1 %cmp16, label %do.end23, label %do.body15.if.end137_crit_edge, !prof !663

do.body15.if.end137_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

do.end23:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  %name25 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool27.not = icmp eq ptr %name25, null
  %spec.select178 = select i1 %tobool27.not, ptr @.str.3, ptr %name25
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.158, i32 noundef 3309, ptr noundef nonnull %spec.select178) #14
  br label %if.end137

lor.lhs.false:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool40.not = icmp eq i32 %9, 0
  br i1 %tobool40.not, label %lor.lhs.false.do.end45_crit_edge, label %if.end60

lor.lhs.false.do.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

do.end45:                                         ; preds = %lor.lhs.false.do.end45_crit_edge, %qed_mcp_bist_nvm_get_num_images.exit.do.end45_crit_edge, %if.end.i.do.end45_crit_edge
  %retval.0.i202 = phi i32 [ 0, %lor.lhs.false.do.end45_crit_edge ], [ -22, %if.end.i.do.end45_crit_edge ], [ %call.i.i, %qed_mcp_bist_nvm_get_num_images.exit.do.end45_crit_edge ]
  %name47 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool49.not = icmp eq ptr %name47, null
  %spec.select179 = select i1 %tobool49.not, ptr @.str.3, ptr %name47
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.158, i32 noundef 3312, ptr noundef nonnull %spec.select179) #14
  br label %err0

if.end60:                                         ; preds = %lor.lhs.false
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 16) #11
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end60.err0_crit_edge, label %if.end7.i, !prof !663

if.end60.err0_crit_edge:                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %err0

if.end7.i:                                        ; preds = %if.end60
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #16
  %tobool64.not = icmp eq ptr %call8.i, null
  br i1 %tobool64.not, label %if.end7.i.err0_crit_edge, label %for.body.lr.ph

if.end7.i.err0_crit_edge:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err0

for.body.lr.ph:                                   ; preds = %if.end7.i
  %15 = getelementptr inbounds i8, ptr %mb_params.i.i184, i32 8
  %param2.i.i185 = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i184, i32 0, i32 1
  %p_data_dst.i.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i184, i32 0, i32 3
  %data_dst_size.i.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i184, i32 0, i32 5
  %mcp_resp.i.i187 = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i184, i32 0, i32 6
  %mcp_param.i.i188 = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i184, i32 0, i32 7
  %dp_level93 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name109 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool111.not = icmp eq ptr %name109, null
  %spec.select181 = select i1 %tobool111.not, ptr @.str.3, ptr %name109
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0225 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bist_nvm_image_att, ptr %call8.i, i32 %i.0225
  %shl.i = shl i32 %i.0225, 8
  %or.i = or i32 %shl.i, 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i.i184) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_data.i.i) #11
  %16 = call ptr @memset(ptr %raw_data.i.i, i32 255, i32 32)
  %17 = call ptr @memset(ptr %15, i32 0, i32 24)
  %18 = ptrtoint ptr %mb_params.i.i184 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1966080, ptr %mb_params.i.i184, align 4
  %19 = ptrtoint ptr %param2.i.i185 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %param2.i.i185, align 4
  %20 = ptrtoint ptr %p_data_dst.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %raw_data.i.i, ptr %p_data_dst.i.i, align 4
  %21 = ptrtoint ptr %data_dst_size.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 32, ptr %data_dst_size.i.i, align 1
  %call.i.i186 = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef nonnull %call, ptr noundef nonnull %mb_params.i.i184) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i186)
  %tobool3.not.i.i = icmp eq i32 %call.i.i186, 0
  br i1 %tobool3.not.i.i, label %if.end.i191, label %qed_mcp_nvm_rd_cmd.exit.i

qed_mcp_nvm_rd_cmd.exit.i:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_data.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i.i184) #11
  br label %do.end77

if.end.i191:                                      ; preds = %for.body
  %22 = ptrtoint ptr %mcp_resp.i.i187 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mcp_resp.i.i187, align 4
  %24 = ptrtoint ptr %mcp_param.i.i188 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mcp_param.i.i188, align 4
  %26 = call ptr @memcpy(ptr %arrayidx, ptr %raw_data.i.i, i32 %25)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_data.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i.i184) #11
  %and.i189 = and i32 %23, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1441792, i32 %and.i189)
  %cmp.not.i190 = icmp eq i32 %and.i189, 1441792
  br i1 %cmp.not.i190, label %lor.lhs.false.i, label %if.end.i191.do.end77_crit_edge

if.end.i191.do.end77_crit_edge:                   ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end77

lor.lhs.false.i:                                  ; preds = %if.end.i191
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp1.not.i = icmp eq i32 %28, 1
  br i1 %cmp1.not.i, label %do.body92, label %lor.lhs.false.i.do.end77_crit_edge

lor.lhs.false.i.do.end77_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end77

do.end77:                                         ; preds = %lor.lhs.false.i.do.end77_crit_edge, %if.end.i191.do.end77_crit_edge, %qed_mcp_nvm_rd_cmd.exit.i
  %retval.0.i192.ph = phi i32 [ %call.i.i186, %qed_mcp_nvm_rd_cmd.exit.i ], [ -22, %lor.lhs.false.i.do.end77_crit_edge ], [ -22, %if.end.i191.do.end77_crit_edge ]
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.158, i32 noundef 3330, ptr noundef nonnull %spec.select181, i32 noundef %i.0225) #14
  call void @kfree(ptr noundef nonnull %call8.i) #11
  br label %err0

do.body92:                                        ; preds = %lor.lhs.false.i
  %29 = ptrtoint ptr %dp_level93 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dp_level93, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp95 = icmp eq i8 %30, 0
  br i1 %cmp95, label %land.rhs, label %do.body92.for.inc_crit_edge

do.body92.for.inc_crit_edge:                      ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.rhs:                                         ; preds = %do.body92
  %31 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dp_module, align 4
  %and = and i32 %32, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool97.not = icmp eq i32 %and, 0
  br i1 %tobool97.not, label %land.rhs.for.inc_crit_edge, label %do.end107, !prof !662

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end107:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %len = getelementptr %struct.bist_nvm_image_att, ptr %call8.i, i32 %i.0225, i32 3
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.158, i32 noundef 3335, ptr noundef nonnull %spec.select181, i32 noundef %i.0225, i32 noundef %34) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end107, %land.rhs.for.inc_crit_edge, %do.body92.for.inc_crit_edge
  %inc = add nuw i32 %i.0225, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %if.then126, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.then126:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %nvm_info1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %9, ptr %nvm_info1, align 8
  %image_att131 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 63, i32 1
  %36 = ptrtoint ptr %image_att131 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %image_att131, align 4
  call void @kfree(ptr noundef %37) #11
  %38 = ptrtoint ptr %image_att131 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call8.i, ptr %image_att131, align 4
  %39 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %valid, align 8
  br label %if.end137

if.end137:                                        ; preds = %if.then126, %do.end23, %do.body15.if.end137_crit_edge
  call void @qed_ptt_release(ptr noundef %p_hwfn, ptr noundef nonnull %call) #11
  br label %cleanup

err0:                                             ; preds = %do.end77, %if.end7.i.err0_crit_edge, %if.end60.err0_crit_edge, %do.end45
  %rc.0 = phi i32 [ %retval.0.i202, %do.end45 ], [ %retval.0.i192.ph, %do.end77 ], [ -12, %if.end7.i.err0_crit_edge ], [ -12, %if.end60.err0_crit_edge ]
  call void @qed_ptt_release(ptr noundef %p_hwfn, ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %err0, %if.end137, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end137 ], [ %rc.0, %err0 ], [ -16, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_mcp_nvm_info_free(ptr nocapture noundef %p_hwfn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %image_att = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 63, i32 1
  %0 = ptrtoint ptr %image_att to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %image_att, align 4
  tail call void @kfree(ptr noundef %1) #11
  %2 = ptrtoint ptr %image_att to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %image_att, align 4
  %valid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 63, i32 2
  %3 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %valid, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_get_nvm_image_att(ptr noundef %p_hwfn, i32 noundef %image_id, ptr nocapture noundef writeonly %p_image_att) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %image_id)
  %0 = icmp ult i32 %image_id, 6
  br i1 %0, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp = icmp ult i8 %2, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool9.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool9.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.172, i32 noundef 3394, ptr noundef nonnull %spec.select, i32 noundef %image_id) #14
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.qed_mcp_get_nvm_image_att, i32 0, i32 %image_id
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call14 = tail call i32 @qed_mcp_nvm_info_populate(ptr noundef %p_hwfn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond.preheader, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %switch.lookup
  %nvm_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 63
  %4 = ptrtoint ptr %nvm_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nvm_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1891.not = icmp eq i32 %5, 0
  br i1 %cmp1891.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %image_att = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 63, i32 1
  %6 = ptrtoint ptr %image_att to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %image_att, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %image_type = getelementptr %struct.bist_nvm_image_att, ptr %7, i32 %i.092, i32 1
  %8 = ptrtoint ptr %image_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %image_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load, i32 %9)
  %cmp21 = icmp eq i32 %switch.load, %9
  br i1 %cmp21, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.do.body30_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.body30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body30

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.092, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %5)
  %cmp27 = icmp eq i32 %i.0.lcssa, %5
  br i1 %cmp27, label %for.end.do.body30_crit_edge, label %if.end60

for.end.do.body30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body30

do.body30:                                        ; preds = %for.end.do.body30_crit_edge, %for.inc.do.body30_crit_edge
  %dp_level31 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %10 = ptrtoint ptr %dp_level31 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level31, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp33 = icmp eq i8 %11, 0
  br i1 %cmp33, label %land.rhs, label %do.body30.cleanup_crit_edge

do.body30.cleanup_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs:                                         ; preds = %do.body30
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %12 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dp_module, align 4
  %and = and i32 %13, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %land.rhs.cleanup_crit_edge, label %do.end45, !prof !662

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end45:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %name47 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool49.not = icmp eq ptr %name47, null
  %spec.select90 = select i1 %tobool49.not, ptr @.str.3, ptr %name47
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.172, i32 noundef 3408, ptr noundef nonnull %spec.select90, i32 noundef %image_id) #14
  br label %cleanup

if.end60:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %image_att62 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 63, i32 1
  %14 = ptrtoint ptr %image_att62 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %image_att62, align 4
  %nvm_start_addr = getelementptr %struct.bist_nvm_image_att, ptr %15, i32 %i.0.lcssa, i32 2
  %16 = ptrtoint ptr %nvm_start_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nvm_start_addr, align 4
  %18 = ptrtoint ptr %p_image_att to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %p_image_att, align 4
  %19 = load ptr, ptr %image_att62, align 4
  %len = getelementptr %struct.bist_nvm_image_att, ptr %19, i32 %i.0.lcssa, i32 3
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %length = getelementptr inbounds %struct.qed_nvm_image_att, ptr %p_image_att, i32 0, i32 1
  %22 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end45, %land.rhs.cleanup_crit_edge, %do.body30.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end60 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ %call14, %switch.lookup.cleanup_crit_edge ], [ -2, %do.body30.cleanup_crit_edge ], [ -2, %do.end45 ], [ -2, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_get_nvm_image(ptr noundef %p_hwfn, i32 noundef %image_id, ptr nocapture noundef writeonly %p_buffer, i32 noundef %buffer_len) local_unnamed_addr #1 align 64 {
entry:
  %image_att = alloca %struct.qed_nvm_image_att, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %image_att) #11
  %0 = ptrtoint ptr %image_att to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %image_att, align 4, !annotation !665
  %1 = getelementptr inbounds %struct.qed_nvm_image_att, ptr %image_att, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !665
  %3 = call ptr @memset(ptr %p_buffer, i32 0, i32 %buffer_len)
  %call = call i32 @qed_mcp_get_nvm_image_att(ptr noundef %p_hwfn, i32 noundef %image_id, ptr noundef nonnull %image_att)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp = icmp ult i32 %5, 5
  br i1 %cmp, label %do.body, label %if.end17

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %6 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp2 = icmp eq i8 %7, 0
  br i1 %cmp2, label %land.rhs, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %8 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dp_module, align 4
  %and = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.rhs.cleanup_crit_edge, label %do.end, !prof !662

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool9.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool9.not, ptr @.str.3, ptr %name
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.177, i32 noundef 3435, ptr noundef nonnull %spec.select, i32 noundef %image_id, i32 noundef %5) #14
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %buffer_len)
  %cmp19 = icmp ugt i32 %5, %buffer_len
  br i1 %cmp19, label %do.body22, label %if.end57

do.body22:                                        ; preds = %if.end17
  %dp_level23 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %10 = ptrtoint ptr %dp_level23 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level23, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp25 = icmp eq i8 %11, 0
  br i1 %cmp25, label %land.rhs27, label %do.body22.cleanup_crit_edge

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs27:                                       ; preds = %do.body22
  %dp_module28 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %12 = ptrtoint ptr %dp_module28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dp_module28, align 4
  %and29 = and i32 %13, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %land.rhs27.cleanup_crit_edge, label %do.end41, !prof !662

land.rhs27.cleanup_crit_edge:                     ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end41:                                         ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #13
  %name43 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool45.not = icmp eq ptr %name43, null
  %spec.select76 = select i1 %tobool45.not, ptr @.str.3, ptr %name43
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.177, i32 noundef 3443, ptr noundef nonnull %spec.select76, i32 noundef %image_id, i32 noundef %5, i32 noundef %buffer_len) #14
  br label %cleanup

if.end57:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p_hwfn, align 8
  %16 = ptrtoint ptr %image_att to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %image_att, align 4
  %call59 = tail call i32 @qed_mcp_nvm_read(ptr noundef %15, i32 noundef %17, ptr noundef %p_buffer, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end41, %land.rhs27.cleanup_crit_edge, %do.body22.cleanup_crit_edge, %do.end, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call59, %if.end57 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %land.rhs.cleanup_crit_edge ], [ -12, %do.body22.cleanup_crit_edge ], [ -12, %do.end41 ], [ -12, %land.rhs27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %image_att) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_set_resc_max_val(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %res_id, i32 noundef %resc_max_val, ptr nocapture noundef writeonly %p_mcp_resp) local_unnamed_addr #1 align 64 {
entry:
  %out_params = alloca %struct.qed_resc_alloc_out_params, align 4
  %in_params = alloca %struct.qed_resc_alloc_in_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %out_params) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %in_params) #11
  %0 = getelementptr inbounds %struct.qed_resc_alloc_in_params, ptr %in_params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.qed_resc_alloc_in_params, ptr %in_params, i32 0, i32 2
  %2 = ptrtoint ptr %in_params to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 889192448, ptr %in_params, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %res_id, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %resc_max_val, ptr %1, align 4
  %5 = call ptr @memset(ptr %out_params, i32 0, i32 28)
  %call = call fastcc i32 @qed_mcp_resc_allocation_msg(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %in_params, ptr noundef nonnull %out_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %out_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out_params, align 4
  %8 = ptrtoint ptr %p_mcp_resp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %p_mcp_resp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %in_params) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %out_params) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_mcp_resc_allocation_msg(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef readonly %p_in_params, ptr nocapture noundef %p_out_params) unnamed_addr #1 align 64 {
entry:
  %mb_params = alloca %struct.qed_mcp_mb_params, align 4
  %mfw_resc_info = alloca %struct.resource_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mfw_resc_info) #11
  %0 = getelementptr inbounds %struct.resource_info, ptr %mfw_resc_info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.resource_info, ptr %mfw_resc_info, i32 0, i32 2
  %2 = getelementptr inbounds %struct.resource_info, ptr %mfw_resc_info, i32 0, i32 3
  %3 = getelementptr inbounds %struct.resource_info, ptr %mfw_resc_info, i32 0, i32 4
  %4 = getelementptr inbounds %struct.resource_info, ptr %mfw_resc_info, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %mfw_resc_info, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 20)
  %res_id = getelementptr inbounds %struct.qed_resc_alloc_in_params, ptr %p_in_params, i32 0, i32 1
  %7 = ptrtoint ptr %res_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %res_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %8)
  %9 = icmp ult i32 %8, 15
  br i1 %9, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool.not, ptr @.str.3, ptr %name
  %call8 = tail call ptr @qed_hw_get_resc_name(i32 noundef %8) #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.328, ptr noundef nonnull @.str.329, i32 noundef 3547, ptr noundef nonnull %spec.select, i32 noundef %8, ptr noundef %call8) #14
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.qed_mcp_resc_allocation_msg, i32 0, i32 %8
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %11 = ptrtoint ptr %mfw_resc_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %switch.load, ptr %mfw_resc_info, align 4
  %12 = ptrtoint ptr %p_in_params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p_in_params, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.381)
  switch i32 %13, label %do.end15 [
    i32 889192448, label %sw.bb
    i32 872415232, label %switch.lookup.sw.epilog_crit_edge
  ]

switch.lookup.sw.epilog_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %resc_max_val = getelementptr inbounds %struct.qed_resc_alloc_in_params, ptr %p_in_params, i32 0, i32 2
  %15 = ptrtoint ptr %resc_max_val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resc_max_val, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %0, align 4
  br label %sw.epilog

do.end15:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %name17 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool19.not = icmp eq ptr %name17, null
  %spec.select159 = select i1 %tobool19.not, ptr @.str.3, ptr %name17
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.329, i32 noundef 3559, ptr noundef nonnull %spec.select159, i32 noundef %13) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %switch.lookup.sw.epilog_crit_edge
  %18 = getelementptr inbounds i8, ptr %mb_params, i32 16
  %19 = call ptr @memset(ptr %18, i32 0, i32 16)
  %20 = ptrtoint ptr %mb_params to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %13, ptr %mb_params, align 4
  %param = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 1
  %21 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 131072, ptr %param, align 4
  %p_data_src = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 2
  %22 = ptrtoint ptr %p_data_src to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mfw_resc_info, ptr %p_data_src, align 4
  %data_src_size = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 4
  %23 = ptrtoint ptr %data_src_size to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 24, ptr %data_src_size, align 4
  %p_data_dst = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 3
  %24 = ptrtoint ptr %p_data_dst to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %mfw_resc_info, ptr %p_data_dst, align 4
  %data_dst_size = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 5
  %25 = ptrtoint ptr %data_dst_size to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 24, ptr %data_dst_size, align 1
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %26 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp35 = icmp eq i8 %27, 0
  br i1 %cmp35, label %land.rhs, label %sw.epilog.do.end67_crit_edge

sw.epilog.do.end67_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.rhs:                                         ; preds = %sw.epilog
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %28 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dp_module, align 4
  %and = and i32 %29, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %land.rhs.do.end67_crit_edge, label %do.end43, !prof !662

land.rhs.do.end67_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

do.end43:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %name45 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool47.not = icmp eq ptr %name45, null
  %spec.select160 = select i1 %tobool47.not, ptr @.str.3, ptr %name45
  %call57 = call ptr @qed_hw_get_resc_name(i32 noundef %8) #11
  %30 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %param, align 4
  %shr = lshr i32 %31, 16
  %and61 = and i32 %31, 65535
  %resc_max_val63 = getelementptr inbounds %struct.qed_resc_alloc_in_params, ptr %p_in_params, i32 0, i32 2
  %32 = ptrtoint ptr %resc_max_val63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %resc_max_val63, align 4
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.334, ptr noundef nonnull @.str.329, i32 noundef 3581, ptr noundef nonnull %spec.select160, i32 noundef %13, i32 noundef %8, ptr noundef %call57, i32 noundef %shr, i32 noundef %and61, i32 noundef %33) #14
  br label %do.end67

do.end67:                                         ; preds = %do.end43, %land.rhs.do.end67_crit_edge, %sw.epilog.do.end67_crit_edge
  %call68 = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %do.end67.cleanup_crit_edge

do.end67.cleanup_crit_edge:                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end71:                                         ; preds = %do.end67
  %mcp_resp = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 6
  %34 = ptrtoint ptr %mcp_resp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mcp_resp, align 4
  %36 = ptrtoint ptr %p_out_params to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %p_out_params, align 4
  %mcp_param = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 7
  %37 = ptrtoint ptr %mcp_param to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mcp_param, align 4
  %mcp_param73 = getelementptr inbounds %struct.qed_resc_alloc_out_params, ptr %p_out_params, i32 0, i32 1
  %39 = ptrtoint ptr %mcp_param73 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %mcp_param73, align 4
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %0, align 4
  %resc_num = getelementptr inbounds %struct.qed_resc_alloc_out_params, ptr %p_out_params, i32 0, i32 2
  %42 = ptrtoint ptr %resc_num to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %resc_num, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %1, align 4
  %resc_start = getelementptr inbounds %struct.qed_resc_alloc_out_params, ptr %p_out_params, i32 0, i32 3
  %45 = ptrtoint ptr %resc_start to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %resc_start, align 4
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %2, align 4
  %vf_resc_num = getelementptr inbounds %struct.qed_resc_alloc_out_params, ptr %p_out_params, i32 0, i32 4
  %48 = ptrtoint ptr %vf_resc_num to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %vf_resc_num, align 4
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %3, align 4
  %vf_resc_start = getelementptr inbounds %struct.qed_resc_alloc_out_params, ptr %p_out_params, i32 0, i32 5
  %51 = ptrtoint ptr %vf_resc_start to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %vf_resc_start, align 4
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %4, align 4
  %flags75 = getelementptr inbounds %struct.qed_resc_alloc_out_params, ptr %p_out_params, i32 0, i32 6
  %54 = ptrtoint ptr %flags75 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %flags75, align 4
  %55 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp79 = icmp eq i8 %56, 0
  br i1 %cmp79, label %land.rhs81, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs81:                                       ; preds = %if.end71
  %dp_module82 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %57 = ptrtoint ptr %dp_module82 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dp_module82, align 4
  %and83 = and i32 %58, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %land.rhs81.cleanup_crit_edge, label %do.end95, !prof !662

land.rhs81.cleanup_crit_edge:                     ; preds = %land.rhs81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end95:                                         ; preds = %land.rhs81
  call void @__sanitizer_cov_trace_pc() #13
  %name97 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool99.not = icmp eq ptr %name97, null
  %spec.select161 = select i1 %tobool99.not, ptr @.str.3, ptr %name97
  %shr108 = lshr i32 %38, 16
  %and110 = and i32 %38, 65535
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.337, ptr noundef nonnull @.str.329, i32 noundef 3605, ptr noundef nonnull %spec.select161, i32 noundef %shr108, i32 noundef %and110, i32 noundef %41, i32 noundef %44, i32 noundef %47, i32 noundef %50, i32 noundef %53) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %land.rhs81.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %do.end67.cleanup_crit_edge, %do.end15, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end15 ], [ %call68, %do.end67.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ], [ 0, %do.end95 ], [ 0, %land.rhs81.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mfw_resc_info) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_get_resc_info(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %res_id, ptr nocapture noundef writeonly %p_mcp_resp, ptr nocapture noundef writeonly %p_resc_num, ptr nocapture noundef writeonly %p_resc_start) local_unnamed_addr #1 align 64 {
entry:
  %out_params = alloca %struct.qed_resc_alloc_out_params, align 4
  %in_params = alloca %struct.qed_resc_alloc_in_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %out_params) #11
  %0 = getelementptr inbounds %struct.qed_resc_alloc_out_params, ptr %out_params, i32 0, i32 2
  %1 = getelementptr inbounds %struct.qed_resc_alloc_out_params, ptr %out_params, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %in_params) #11
  %2 = getelementptr inbounds %struct.qed_resc_alloc_in_params, ptr %in_params, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %in_params, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  %5 = ptrtoint ptr %in_params to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 872415232, ptr %in_params, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %res_id, ptr %2, align 4
  %7 = call ptr @memset(ptr %out_params, i32 0, i32 28)
  %call = call fastcc i32 @qed_mcp_resc_allocation_msg(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %in_params, ptr noundef nonnull %out_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %out_params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out_params, align 4
  %10 = ptrtoint ptr %p_mcp_resp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %p_mcp_resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 872415232, i32 %9)
  %cmp = icmp eq i32 %9, 872415232
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  %13 = ptrtoint ptr %p_resc_num to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %p_resc_num, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %16 = ptrtoint ptr %p_resc_start to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %p_resc_start, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %in_params) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %out_params) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_initiate_pf_flr(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %0 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 33619968, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %3 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %param2.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_resc_lock(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef %p_params) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i.i.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_b4_retry = getelementptr inbounds %struct.qed_resc_lock_params, ptr %p_params, i32 0, i32 4
  %retry_interval = getelementptr inbounds %struct.qed_resc_lock_params, ptr %p_params, i32 0, i32 3
  %timeout.i = getelementptr inbounds %struct.qed_resc_lock_params, ptr %p_params, i32 0, i32 1
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %0 = getelementptr inbounds i8, ptr %mb_params.i.i.i, i32 8
  %param2.i.i.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i.i, i32 0, i32 1
  %mcp_resp.i.i.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i.i, i32 0, i32 6
  %mcp_param.i.i.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i.i, i32 0, i32 7
  %owner.i = getelementptr inbounds %struct.qed_resc_lock_params, ptr %p_params, i32 0, i32 6
  %b_granted91.i = getelementptr inbounds %struct.qed_resc_lock_params, ptr %p_params, i32 0, i32 5
  %retry_num = getelementptr inbounds %struct.qed_resc_lock_params, ptr %p_params, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %retry_cnt.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry_cnt.0)
  %tobool.not = icmp eq i32 %retry_cnt.0, 0
  br i1 %tobool.not, label %do.body.if.end16_crit_edge, label %if.then

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then:                                          ; preds = %do.body
  %1 = ptrtoint ptr %sleep_b4_retry to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sleep_b4_retry, align 2, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  %3 = ptrtoint ptr %retry_interval to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %retry_interval, align 2
  br i1 %tobool1.not, label %cond.false12, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %4 to i32
  %sub = add nuw nsw i32 %conv, 999
  %div = udiv i32 %sub, 1000
  call void @msleep(i32 noundef %div) #11
  br label %if.end16

cond.false12:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv14 = zext i16 %4 to i32
  call void %5(i32 noundef %conv14) #11
  br label %if.end16

if.end16:                                         ; preds = %cond.false12, %if.then2, %do.body.if.end16_crit_edge
  %6 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %timeout.i, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.382)
  switch i8 %7, label %if.end16.do.body.i_crit_edge [
    i8 0, label %if.end16.do.body.sink.split.i_crit_edge
    i8 -1, label %sw.bb2.i
  ]

if.end16.do.body.sink.split.i_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.sink.split.i

if.end16.do.body.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

sw.bb2.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.sink.split.i

do.body.sink.split.i:                             ; preds = %sw.bb2.i, %if.end16.do.body.sink.split.i_crit_edge
  %opcode.0.ph.i = phi i32 [ 2, %sw.bb2.i ], [ 1, %if.end16.do.body.sink.split.i_crit_edge ]
  %9 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %timeout.i, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.sink.split.i, %if.end16.do.body.i_crit_edge
  %opcode.0.i = phi i32 [ 3, %if.end16.do.body.i_crit_edge ], [ %opcode.0.ph.i, %do.body.sink.split.i ]
  %10 = ptrtoint ptr %p_params to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %p_params, align 2
  %12 = and i8 %11, 31
  %and5.i = zext i8 %12 to i32
  %shl9.i = shl nuw nsw i32 %opcode.0.i, 5
  %or11.i = or i32 %shl9.i, %and5.i
  %13 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %timeout.i, align 1
  %conv17.i = zext i8 %14 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 8
  %or20.i = or i32 %or11.i, %shl18.i
  %15 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.i = icmp eq i8 %16, 0
  br i1 %cmp.i, label %land.rhs.i, label %do.body.i.do.end41.i_crit_edge

do.body.i.do.end41.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end41.i

land.rhs.i:                                       ; preds = %do.body.i
  %17 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dp_module.i, align 4
  %and26.i = and i32 %18, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.do.end41.i_crit_edge, label %do.end31.i, !prof !662

land.rhs.i.do.end41.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end41.i

do.end31.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv39.i = zext i8 %11 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.339, ptr noundef nonnull @.str.340, i32 noundef 3731, ptr noundef nonnull %name.i, i32 noundef %or20.i, i32 noundef %conv17.i, i32 noundef %opcode.0.i, i32 noundef %conv39.i) #14
  br label %do.end41.i

do.end41.i:                                       ; preds = %do.end31.i, %land.rhs.i.do.end41.i_crit_edge, %do.body.i.do.end41.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i.i.i) #11
  %19 = call ptr @memset(ptr %0, i32 0, i32 24)
  %20 = ptrtoint ptr %mb_params.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2293760, ptr %mb_params.i.i.i, align 4
  %21 = ptrtoint ptr %param2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or20.i, ptr %param2.i.i.i, align 4
  %call.i.i.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i, label %qed_mcp_cmd.exit.i.i

qed_mcp_cmd.exit.i.i:                             ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i.i.i) #11
  br label %cleanup

if.end.i.i:                                       ; preds = %do.end41.i
  %22 = ptrtoint ptr %mcp_resp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mcp_resp.i.i.i, align 4
  %24 = ptrtoint ptr %mcp_param.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mcp_param.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i = icmp eq i32 %23, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end15.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  %26 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp2.i.i = icmp ult i8 %27, 2
  br i1 %cmp2.i.i, label %do.end.i.i, label %do.body.i.i.cleanup_crit_edge, !prof !663

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.348, i32 noundef 3685, ptr noundef nonnull %name.i) #14
  br label %cleanup

if.end15.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %25)
  %cmp16.i.i = icmp eq i32 %25, 255
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.end45.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  %28 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp23.i.i = icmp ult i8 %29, 3
  br i1 %cmp23.i.i, label %do.end34.i.i, label %if.then18.i.i.cleanup_crit_edge, !prof !663

if.then18.i.i.cleanup_crit_edge:                  ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end34.i.i:                                     ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call46.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.350, ptr noundef nonnull @.str.348, i32 noundef 3694, ptr noundef nonnull %name.i, i32 noundef %or20.i, i32 noundef %opcode.0.i) #14
  br label %cleanup

if.end45.i:                                       ; preds = %if.end15.i.i
  %conv47.i = trunc i32 %25 to i8
  %30 = ptrtoint ptr %owner.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv47.i, ptr %owner.i, align 2
  %and48.i = lshr i32 %25, 8
  %31 = trunc i32 %and48.i to i8
  %conv50.i = and i8 %31, 7
  %32 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp54.i = icmp eq i8 %33, 0
  br i1 %cmp54.i, label %land.rhs56.i, label %if.end45.i.do.end87.i_crit_edge

if.end45.i.do.end87.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end87.i

land.rhs56.i:                                     ; preds = %if.end45.i
  %34 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dp_module.i, align 4
  %and58.i = and i32 %35, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %land.rhs56.i.do.end87.i_crit_edge, label %do.end70.i, !prof !662

land.rhs56.i.do.end87.i_crit_edge:                ; preds = %land.rhs56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end87.i

do.end70.i:                                       ; preds = %land.rhs56.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv81.i = zext i8 %conv50.i to i32
  %conv83.i = and i32 %25, 255
  %call84.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.342, ptr noundef nonnull @.str.340, i32 noundef 3745, ptr noundef nonnull %name.i, i32 noundef %25, i32 noundef %conv81.i, i32 noundef %conv83.i) #14
  br label %do.end87.i

do.end87.i:                                       ; preds = %do.end70.i, %land.rhs56.i.do.end87.i_crit_edge, %if.end45.i.do.end87.i_crit_edge
  %conv88.i = zext i8 %conv50.i to i32
  %36 = zext i32 %conv88.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.383)
  switch i32 %conv88.i, label %do.body93.i [
    i32 1, label %if.end19
    i32 2, label %do.cond
  ]

do.body93.i:                                      ; preds = %do.end87.i
  %37 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %38)
  %cmp96.i = icmp ult i8 %38, 3
  br i1 %cmp96.i, label %do.end107.i, label %do.body93.i.cleanup_crit_edge, !prof !663

do.body93.i.cleanup_crit_edge:                    ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end107.i:                                      ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #13
  %call119.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.345, ptr noundef nonnull @.str.340, i32 noundef 3757, ptr noundef nonnull %name.i, i32 noundef %25, i32 noundef %conv88.i) #14
  br label %cleanup

if.end19:                                         ; preds = %do.end87.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %b_granted91.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %b_granted91.i, align 1
  br label %cleanup

do.cond:                                          ; preds = %do.end87.i
  %40 = ptrtoint ptr %b_granted91.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %b_granted91.i, align 1
  %inc = add nuw nsw i32 %retry_cnt.0, 1
  %41 = ptrtoint ptr %retry_num to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %retry_num, align 2
  %conv23 = zext i8 %42 to i32
  %cmp24 = icmp ult i32 %retry_cnt.0, %conv23
  br i1 %cmp24, label %do.cond.do.body_crit_edge, label %do.cond.cleanup_crit_edge

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %if.end19, %do.end107.i, %do.body93.i.cleanup_crit_edge, %do.end34.i.i, %if.then18.i.i.cleanup_crit_edge, %do.end.i.i, %do.body.i.i.cleanup_crit_edge, %qed_mcp_cmd.exit.i.i
  %retval.0 = phi i32 [ %call.i.i.i, %qed_mcp_cmd.exit.i.i ], [ -22, %do.end.i.i ], [ -22, %do.body.i.i.cleanup_crit_edge ], [ -22, %do.end34.i.i ], [ -22, %if.then18.i.i.cleanup_crit_edge ], [ -22, %do.body93.i.cleanup_crit_edge ], [ -22, %do.end107.i ], [ 0, %if.end19 ], [ 0, %do.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_resc_unlock(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef %p_params) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %b_force = getelementptr inbounds %struct.qed_resc_unlock_params, ptr %p_params, i32 0, i32 1
  %0 = ptrtoint ptr %b_force to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_force, align 1, !range !664
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %conv = select i1 %tobool.not, i32 4, i32 5
  %2 = ptrtoint ptr %p_params to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p_params, align 1
  %4 = and i8 %3, 31
  %and2 = zext i8 %4 to i32
  %shl6 = shl nuw nsw i32 %conv, 5
  %or8 = or i32 %shl6, %and2
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end29_crit_edge

entry.do.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %7 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dp_module, align 4
  %and14 = and i32 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %land.rhs.do.end29_crit_edge, label %do.end20, !prof !662

land.rhs.do.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

do.end20:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool21.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool21.not, ptr @.str.3, ptr %name
  %conv27 = zext i8 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.182, i32 noundef 3812, ptr noundef nonnull %spec.select, i32 noundef %or8, i32 noundef %conv, i32 noundef %conv27) #14
  br label %do.end29

do.end29:                                         ; preds = %do.end20, %land.rhs.do.end29_crit_edge, %entry.do.end29_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i.i) #11
  %9 = getelementptr inbounds i8, ptr %mb_params.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 24)
  %11 = ptrtoint ptr %mb_params.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2293760, ptr %mb_params.i.i, align 4
  %param2.i.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %param2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or8, ptr %param2.i.i, align 4
  %call.i.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %qed_mcp_cmd.exit.i

qed_mcp_cmd.exit.i:                               ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %do.end29
  %mcp_resp.i.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %mcp_resp.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mcp_resp.i.i, align 4
  %mcp_param.i.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %mcp_param.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mcp_param.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %do.body.i, label %if.end15.i

do.body.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp2.i = icmp ult i8 %18, 2
  br i1 %cmp2.i, label %do.end.i, label %do.body.i.cleanup_crit_edge, !prof !663

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.348, i32 noundef 3685, ptr noundef nonnull %name.i) #14
  br label %cleanup

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %16)
  %cmp16.i = icmp eq i32 %16, 255
  br i1 %cmp16.i, label %if.then18.i, label %if.end33

if.then18.i:                                      ; preds = %if.end15.i
  %19 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp23.i = icmp ult i8 %20, 3
  br i1 %cmp23.i, label %do.end34.i, label %if.then18.i.cleanup_crit_edge, !prof !663

if.then18.i.cleanup_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end34.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  %name36.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.350, ptr noundef nonnull @.str.348, i32 noundef 3694, ptr noundef nonnull %name36.i, i32 noundef %or8, i32 noundef %conv) #14
  br label %cleanup

if.end33:                                         ; preds = %if.end15.i
  %and34 = lshr i32 %16, 8
  %21 = trunc i32 %and34 to i8
  %conv35 = and i8 %21, 7
  %22 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp39 = icmp eq i8 %23, 0
  br i1 %cmp39, label %land.rhs41, label %if.end33.do.end70_crit_edge

if.end33.do.end70_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70

land.rhs41:                                       ; preds = %if.end33
  %dp_module42 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %24 = ptrtoint ptr %dp_module42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dp_module42, align 4
  %and43 = and i32 %25, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %land.rhs41.do.end70_crit_edge, label %do.end55, !prof !662

land.rhs41.do.end70_crit_edge:                    ; preds = %land.rhs41
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70

do.end55:                                         ; preds = %land.rhs41
  call void @__sanitizer_cov_trace_pc() #13
  %name57 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool59.not = icmp eq ptr %name57, null
  %spec.select169 = select i1 %tobool59.not, ptr @.str.3, ptr %name57
  %conv66 = zext i8 %conv35 to i32
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.182, i32 noundef 3824, ptr noundef nonnull %spec.select169, i32 noundef %16, i32 noundef %conv66) #14
  br label %do.end70

do.end70:                                         ; preds = %do.end55, %land.rhs41.do.end70_crit_edge, %if.end33.do.end70_crit_edge
  %conv71 = zext i8 %conv35 to i32
  %26 = zext i32 %conv71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.384)
  switch i32 %conv71, label %do.body106 [
    i32 4, label %do.body72
    i32 3, label %do.end70.sw.bb103_crit_edge
    i32 5, label %sw.bb104
  ]

do.end70.sw.bb103_crit_edge:                      ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb103

do.body72:                                        ; preds = %do.end70
  %27 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp75 = icmp ult i8 %28, 2
  br i1 %cmp75, label %do.end86, label %do.body72.sw.bb103_crit_edge, !prof !663

do.body72.sw.bb103_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb103

do.end86:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #13
  %name88 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool90.not = icmp eq ptr %name88, null
  %spec.select170 = select i1 %tobool90.not, ptr @.str.3, ptr %name88
  %29 = ptrtoint ptr %p_params to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %p_params, align 1
  %conv98 = zext i8 %30 to i32
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.182, i32 noundef 3830, ptr noundef nonnull %spec.select170, i32 noundef %conv98) #14
  br label %sw.bb103

sw.bb103:                                         ; preds = %do.end86, %do.body72.sw.bb103_crit_edge, %do.end70.sw.bb103_crit_edge
  %b_released = getelementptr inbounds %struct.qed_resc_unlock_params, ptr %p_params, i32 0, i32 2
  %31 = ptrtoint ptr %b_released to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %b_released, align 1
  br label %cleanup

sw.bb104:                                         ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #13
  %b_released105 = getelementptr inbounds %struct.qed_resc_unlock_params, ptr %p_params, i32 0, i32 2
  %32 = ptrtoint ptr %b_released105 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %b_released105, align 1
  br label %cleanup

do.body106:                                       ; preds = %do.end70
  %33 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp109 = icmp ult i8 %34, 3
  br i1 %cmp109, label %do.end120, label %do.body106.cleanup_crit_edge, !prof !663

do.body106.cleanup_crit_edge:                     ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end120:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #13
  %name122 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool124.not = icmp eq ptr %name122, null
  %spec.select171 = select i1 %tobool124.not, ptr @.str.3, ptr %name122
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.182, i32 noundef 3841, ptr noundef nonnull %spec.select171, i32 noundef %16, i32 noundef %conv71) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end120, %do.body106.cleanup_crit_edge, %sw.bb104, %sw.bb103, %do.end34.i, %if.then18.i.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %qed_mcp_cmd.exit.i
  %retval.0 = phi i32 [ -22, %do.end120 ], [ -22, %do.body106.cleanup_crit_edge ], [ 0, %sw.bb104 ], [ 0, %sw.bb103 ], [ -22, %if.then18.i.cleanup_crit_edge ], [ -22, %do.end34.i ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %do.end.i ], [ %call.i.i, %qed_mcp_cmd.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qed_mcp_resc_lock_default_init(ptr noundef writeonly %p_lock, ptr noundef writeonly %p_unlock, i32 noundef %resource, i1 noundef zeroext %b_is_permanent) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p_lock, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %0 = call ptr @memset(ptr %p_lock, i32 0, i32 10)
  br i1 %b_is_permanent, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %timeout = getelementptr inbounds %struct.qed_resc_lock_params, ptr %p_lock, i32 0, i32 1
  %1 = ptrtoint ptr %timeout to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %timeout, align 1
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %retry_num = getelementptr inbounds %struct.qed_resc_lock_params, ptr %p_lock, i32 0, i32 2
  %2 = ptrtoint ptr %retry_num to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 10, ptr %retry_num, align 2
  %retry_interval = getelementptr inbounds %struct.qed_resc_lock_params, ptr %p_lock, i32 0, i32 3
  %3 = ptrtoint ptr %retry_interval to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 10000, ptr %retry_interval, align 2
  %sleep_b4_retry = getelementptr inbounds %struct.qed_resc_lock_params, ptr %p_lock, i32 0, i32 4
  %4 = ptrtoint ptr %sleep_b4_retry to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %sleep_b4_retry, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %conv = trunc i32 %resource to i8
  %5 = ptrtoint ptr %p_lock to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %p_lock, align 2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %p_unlock, null
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %6 = getelementptr inbounds i8, ptr %p_unlock, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 0, ptr %6, align 1
  %conv7 = trunc i32 %resource to i8
  %8 = ptrtoint ptr %p_unlock to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv7, ptr %p_unlock, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @qed_mcp_is_smart_an_supported(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  %capabilities = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capabilities, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_get_capabilities(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %2 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 24)
  %4 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3211264, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %5 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %param2.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body, label %qed_mcp_cmd.exit

qed_mcp_cmd.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  br label %if.end15

do.body:                                          ; preds = %entry
  %capabilities = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 18
  %mcp_param.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 7
  %6 = ptrtoint ptr %mcp_param.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mcp_param.i, align 4
  %8 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %capabilities, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %9 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp eq i8 %10, 0
  br i1 %cmp, label %land.rhs, label %do.body.if.end15_crit_edge

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %11 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dp_module, align 4
  %and = and i32 %12, 1048578
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.rhs.if.end15_crit_edge, label %do.end, !prof !662

land.rhs.if.end15_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.3, ptr %name
  %13 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mcp_info, align 8
  %capabilities11 = getelementptr inbounds %struct.qed_mcp_info, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %capabilities11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %capabilities11, align 8
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.193, i32 noundef 3894, ptr noundef nonnull %spec.select, i32 noundef %16) #14
  br label %if.end15

if.end15:                                         ; preds = %do.end, %land.rhs.if.end15_crit_edge, %do.body.if.end15_crit_edge, %qed_mcp_cmd.exit
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_set_capabilities(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %0 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3145728, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %3 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65542, ptr %param2.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_get_engine_config(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  %mb_params = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params) #11
  %0 = getelementptr inbounds i8, ptr %mb_params, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_hwfn, align 8
  %4 = ptrtoint ptr %mb_params to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3604480, ptr %mb_params, align 4
  %call = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mcp_resp = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 6
  %5 = ptrtoint ptr %mcp_resp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mcp_resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %7 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp3 = icmp ult i8 %8, 2
  br i1 %cmp3, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool9.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool9.not, ptr @.str.3, ptr %name
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.195, i32 noundef 3925, ptr noundef nonnull %spec.select) #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %mcp_param = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 7
  %9 = ptrtoint ptr %mcp_param to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mcp_param, align 4
  %11 = trunc i32 %10 to i8
  %conv17 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv17)
  %tobool18.not = icmp eq i8 %conv17, 0
  br i1 %tobool18.not, label %if.end16.if.end24_crit_edge, label %if.then19

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %12 = lshr i8 %11, 1
  %conv23 = and i8 %12, 1
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 35
  %13 = ptrtoint ptr %fir_affin to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv23, ptr %fir_affin, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end16.if.end24_crit_edge
  %14 = lshr i8 %11, 2
  %conv28 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv28)
  %tobool29.not = icmp eq i8 %conv28, 0
  br i1 %tobool29.not, label %if.end24.do.body36_crit_edge, label %if.then30

if.end24.do.body36_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %15 = lshr i8 %11, 3
  %conv34 = and i8 %15, 1
  %l2_affin_hint = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 34
  %16 = ptrtoint ptr %l2_affin_hint to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv34, ptr %l2_affin_hint, align 8
  br label %do.body36

do.body36:                                        ; preds = %if.then30, %if.end24.do.body36_crit_edge
  %dp_level37 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %17 = ptrtoint ptr %dp_level37 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dp_level37, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp39 = icmp ult i8 %18, 2
  br i1 %cmp39, label %do.end50, label %do.body36.cleanup_crit_edge, !prof !663

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end50:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  %name52 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool54.not = icmp eq ptr %name52, null
  %spec.select88 = select i1 %tobool54.not, ptr @.str.3, ptr %name52
  %conv61 = zext i8 %conv17 to i32
  %fir_affin62 = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 35
  %19 = ptrtoint ptr %fir_affin62 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fir_affin62, align 1
  %conv63 = zext i8 %20 to i32
  %conv64 = zext i8 %conv28 to i32
  %l2_affin_hint65 = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 34
  %21 = ptrtoint ptr %l2_affin_hint65 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %l2_affin_hint65, align 8
  %conv66 = zext i8 %22 to i32
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.195, i32 noundef 3945, ptr noundef nonnull %spec.select88, i32 noundef %conv61, i32 noundef %conv63, i32 noundef %conv64, i32 noundef %conv66) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %do.body36.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -95, %do.end ], [ -95, %do.body.cleanup_crit_edge ], [ 0, %do.end50 ], [ 0, %do.body36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_get_ppfid_bitmap(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  %mb_params = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params) #11
  %0 = getelementptr inbounds i8, ptr %mb_params, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_hwfn, align 8
  %4 = ptrtoint ptr %mb_params to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1124073472, ptr %mb_params, align 4
  %call = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mcp_resp = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 6
  %5 = ptrtoint ptr %mcp_resp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mcp_resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %7 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp3 = icmp ult i8 %8, 2
  br i1 %cmp3, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool9.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool9.not, ptr @.str.3, ptr %name
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.200, i32 noundef 3963, ptr noundef nonnull %spec.select) #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %mcp_param = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 7
  %9 = ptrtoint ptr %mcp_param to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mcp_param, align 4
  %conv17 = trunc i32 %10 to i8
  %ppfid_bitmap = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 46
  %11 = ptrtoint ptr %ppfid_bitmap to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv17, ptr %ppfid_bitmap, align 2
  %dp_level19 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %12 = ptrtoint ptr %dp_level19 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dp_level19, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp21 = icmp eq i8 %13, 0
  br i1 %cmp21, label %land.rhs, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs:                                         ; preds = %if.end16
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %14 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dp_module, align 4
  %and23 = and i32 %15, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %land.rhs.cleanup_crit_edge, label %do.end34, !prof !662

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end34:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %name36 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool38.not = icmp eq ptr %name36, null
  %spec.select63 = select i1 %tobool38.not, ptr @.str.3, ptr %name36
  %conv46 = and i32 %10, 255
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.200, i32 noundef 3971, ptr noundef nonnull %spec.select63, i32 noundef %conv46) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %land.rhs.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -95, %do.end ], [ -95, %do.body.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %do.end34 ], [ 0, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_nvm_get_cfg(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %option_id, i8 noundef zeroext %entity_id, i16 noundef zeroext %flags, ptr nocapture noundef writeonly %p_buf, ptr nocapture noundef writeonly %p_len) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  %raw_data.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %option_id to i32
  %conv2 = zext i16 %flags to i32
  %and3 = shl nuw i32 %conv2, 16
  %0 = and i32 %and3, 131072
  %1 = or i32 %0, %conv
  %2 = and i32 %and3, 524288
  %3 = or i32 %1, %2
  %and20 = and i32 %conv2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %conv30 = zext i8 %entity_id to i32
  %shl31 = shl nuw i32 %conv30, 24
  %and32 = and i32 %shl31, 251658240
  %and29 = or i32 %and32, %3
  %or33 = or i32 %and29, 1048576
  %mb_param.2 = select i1 %tobool21.not, i32 %3, i32 %or33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_data.i) #11
  %4 = call ptr @memset(ptr %raw_data.i, i32 255, i32 32)
  %5 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 24)
  %7 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4063232, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %8 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mb_param.2, ptr %param2.i, align 4
  %p_data_dst.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 3
  %9 = ptrtoint ptr %p_data_dst.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %raw_data.i, ptr %p_data_dst.i, align 4
  %data_dst_size.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 5
  %10 = ptrtoint ptr %data_dst_size.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 32, ptr %data_dst_size.i, align 1
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %entry.qed_mcp_nvm_rd_cmd.exit_crit_edge

entry.qed_mcp_nvm_rd_cmd.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_nvm_rd_cmd.exit

if.end5.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mcp_param.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 7
  %11 = ptrtoint ptr %mcp_param.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mcp_param.i, align 4
  %13 = ptrtoint ptr %p_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %p_len, align 4
  %14 = call ptr @memcpy(ptr %p_buf, ptr %raw_data.i, i32 %12)
  br label %qed_mcp_nvm_rd_cmd.exit

qed_mcp_nvm_rd_cmd.exit:                          ; preds = %if.end5.i, %entry.qed_mcp_nvm_rd_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_data.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_nvm_set_cfg(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %option_id, i8 noundef zeroext %entity_id, i16 noundef zeroext %flags, ptr noundef %p_buf, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %option_id to i32
  %conv2 = zext i16 %flags to i32
  %and3 = shl nuw i32 %conv2, 16
  %0 = and i32 %and3, 65536
  %1 = or i32 %0, %conv
  %2 = and i32 %and3, 131072
  %3 = or i32 %1, %2
  %4 = and i32 %and3, 262144
  %5 = or i32 %3, %4
  %6 = and i32 %and3, 524288
  %7 = or i32 %5, %6
  %and40 = and i32 %conv2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %conv50 = zext i8 %entity_id to i32
  %shl51 = shl nuw i32 %conv50, 24
  %and52 = and i32 %shl51, 251658240
  %and49 = or i32 %and52, %7
  %or53 = or i32 %and49, 1048576
  %mb_param.4 = select i1 %tobool41.not, i32 %7, i32 %or53
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %8 = getelementptr inbounds i8, ptr %mb_params.i, i32 12
  %9 = call ptr @memset(ptr %8, i32 0, i32 20)
  %10 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4128768, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %11 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mb_param.4, ptr %param2.i, align 4
  %p_data_src.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 2
  %12 = ptrtoint ptr %p_data_src.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %p_buf, ptr %p_data_src.i, align 4
  %conv.i = trunc i32 %len to i8
  %data_src_size.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 4
  %13 = ptrtoint ptr %data_src_size.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %data_src_size.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.qed_mcp_nvm_wr_cmd.exit_crit_edge

entry.qed_mcp_nvm_wr_cmd.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_nvm_wr_cmd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %valid.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 63, i32 2
  %14 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %valid.i, align 8
  br label %qed_mcp_nvm_wr_cmd.exit

qed_mcp_nvm_wr_cmd.exit:                          ; preds = %if.end.i, %entry.qed_mcp_nvm_wr_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_send_raw_debug_data(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef readonly %p_buf, i32 noundef %size) local_unnamed_addr #1 align 64 {
entry:
  %raw_data.i = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_data.i) #11
  %0 = getelementptr inbounds [32 x i8], ptr %raw_data.i, i32 0, i32 4
  %mcp_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %1 = call ptr @memset(ptr %0, i32 255, i32 28)
  %2 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcp_info.i, align 8
  %dbg_data_seq.i = getelementptr inbounds %struct.qed_mcp_info, ptr %3, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dbg_data_seq.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !666
  tail call void @llvm.prefetch.p0(ptr %dbg_data_seq.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dbg_data_seq.i, ptr %dbg_data_seq.i, i32 1, ptr elementtype(i32) %dbg_data_seq.i) #11, !srcloc !667
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !668
  %and5.i = and i32 %asmresult.i.i.i.i.i, 4095
  %or19.i = or i32 %and5.i, 1048576
  %abs_pf_id.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %5 = ptrtoint ptr %abs_pf_id.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %abs_pf_id.i, align 2
  %conv24.i = zext i8 %6 to i32
  %shl25.i = shl i32 %conv24.i, 28
  %or27.i = or i32 %shl25.i, %or19.i
  %7 = ptrtoint ptr %raw_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or27.i, ptr %raw_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %size)
  %cmp4.i = icmp ugt i32 %size, 28
  br i1 %cmp4.i, label %entry.while.body.i_crit_edge, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %if.end47.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %flags.07.i = phi i8 [ %flags.1.i, %if.end47.i.while.body.i_crit_edge ], [ 1, %entry.while.body.i_crit_edge ]
  %tmp_size.06.i = phi i32 [ %sub.i, %if.end47.i.while.body.i_crit_edge ], [ %size, %entry.while.body.i_crit_edge ]
  %p_tmp_buf.05.i = phi ptr [ %add.ptr48.i, %if.end47.i.while.body.i_crit_edge ], [ %p_buf, %entry.while.body.i_crit_edge ]
  %8 = call ptr @memcpy(ptr %0, ptr %p_tmp_buf.05.i, i32 28)
  %call32.i = call fastcc i32 @__qed_mcp_send_debug_data(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %raw_data.i, i8 noundef zeroext 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.i.qed_mcp_send_debug_data.exit_crit_edge

while.body.i.qed_mcp_send_debug_data.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qed_mcp_send_debug_data.exit

if.end.i:                                         ; preds = %while.body.i
  %cmp33.i = icmp eq ptr %p_tmp_buf.05.i, %p_buf
  br i1 %cmp33.i, label %if.then35.i, label %if.end.i.if.end47.i_crit_edge

if.end.i.if.end47.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i

if.then35.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = and i8 %flags.07.i, -2
  %10 = ptrtoint ptr %raw_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %raw_data.i, align 4
  %and40.i = and i32 %11, -267386881
  %conv41.i = zext i8 %9 to i32
  %shl42.i = shl nuw nsw i32 %conv41.i, 20
  %or44.i = or i32 %and40.i, %shl42.i
  store i32 %or44.i, ptr %raw_data.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then35.i, %if.end.i.if.end47.i_crit_edge
  %flags.1.i = phi i8 [ %9, %if.then35.i ], [ %flags.07.i, %if.end.i.if.end47.i_crit_edge ]
  %add.ptr48.i = getelementptr i8, ptr %p_tmp_buf.05.i, i32 28
  %sub.i = add i32 %tmp_size.06.i, -28
  %cmp.i = icmp ugt i32 %sub.i, 28
  br i1 %cmp.i, label %if.end47.i.while.body.i_crit_edge, label %if.end47.i.while.end.i_crit_edge

if.end47.i.while.end.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

if.end47.i.while.body.i_crit_edge:                ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %if.end47.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %p_tmp_buf.0.lcssa.i = phi ptr [ %p_buf, %entry.while.end.i_crit_edge ], [ %add.ptr48.i, %if.end47.i.while.end.i_crit_edge ]
  %tmp_size.0.lcssa.i = phi i32 [ %size, %entry.while.end.i_crit_edge ], [ %sub.i, %if.end47.i.while.end.i_crit_edge ]
  %flags.0.lcssa.i = phi i8 [ 1, %entry.while.end.i_crit_edge ], [ %flags.1.i, %if.end47.i.while.end.i_crit_edge ]
  %12 = or i8 %flags.0.lcssa.i, 2
  %13 = ptrtoint ptr %raw_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %raw_data.i, align 4
  %and53.i = and i32 %14, -267386881
  %conv54.i = zext i8 %12 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 20
  %or57.i = or i32 %shl55.i, %and53.i
  store i32 %or57.i, ptr %raw_data.i, align 4
  %15 = call ptr @memcpy(ptr %0, ptr %p_tmp_buf.0.lcssa.i, i32 %tmp_size.0.lcssa.i)
  %16 = trunc i32 %tmp_size.0.lcssa.i to i8
  %conv61.i = add nuw nsw i8 %16, 4
  %call62.i = call fastcc i32 @__qed_mcp_send_debug_data(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %raw_data.i, i8 noundef zeroext %conv61.i) #11
  br label %qed_mcp_send_debug_data.exit

qed_mcp_send_debug_data.exit:                     ; preds = %while.end.i, %while.body.i.qed_mcp_send_debug_data.exit_crit_edge
  %retval.0.i = phi i32 [ %call62.i, %while.end.i ], [ %call32.i, %while.body.i.qed_mcp_send_debug_data.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_data.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @qed_mcp_is_esl_supported(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  %capabilities = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capabilities, align 8
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mcp_get_esl_status(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef writeonly %active) local_unnamed_addr #1 align 64 {
entry:
  %mb_params.i = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params.i) #11
  %0 = getelementptr inbounds i8, ptr %mb_params.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = ptrtoint ptr %mb_params.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1073283072, ptr %mb_params.i, align 4
  %param2.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 1
  %3 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %param2.i, align 4
  %call.i = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end12, label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ult i8 %5, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !663

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.205, i32 noundef 4175, ptr noundef nonnull %spec.select, i32 noundef %call.i) #14
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mcp_param.i = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params.i, i32 0, i32 7
  %6 = ptrtoint ptr %mcp_param.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mcp_param.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params.i) #11
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 1
  %10 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %active, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end, %do.body.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_mcp_update_pending_cmd(ptr noundef %p_hwfn, ptr noundef %p_ptt) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %0 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcp_info, align 8
  %drv_mb_addr = getelementptr inbounds %struct.qed_mcp_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %drv_mb_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %drv_mb_addr, align 8
  %add = add i32 %3, 8
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add) #11
  %conv1 = and i32 %call, 65535
  %4 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcp_info, align 8
  %drv_mb_seq = getelementptr inbounds %struct.qed_mcp_info, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %drv_mb_seq to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %drv_mb_seq, align 4
  %8 = trunc i32 %call to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %8)
  %cmp.not = icmp eq i16 %7, %8
  br i1 %cmp.not, label %entry.for.cond.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %p_cmd_elem.0.in.i = phi ptr [ %p_cmd_elem.0.i, %for.body.i.for.cond.i_crit_edge ], [ %5, %entry.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %p_cmd_elem.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %p_cmd_elem.0.i = load ptr, ptr %p_cmd_elem.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %p_cmd_elem.0.i, %5
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %expected_seq_num.i = getelementptr inbounds %struct.qed_mcp_cmd_elem, ptr %p_cmd_elem.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %expected_seq_num.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %expected_seq_num.i, align 4
  %cmp4.i = icmp eq i16 %11, %7
  br i1 %cmp4.i, label %qed_mcp_cmd_get_elem.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

qed_mcp_cmd_get_elem.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %p_cmd_elem.0.i, null
  br i1 %tobool.not, label %qed_mcp_cmd_get_elem.exit.do.end_crit_edge, label %if.end15

qed_mcp_cmd_get_elem.exit.do.end_crit_edge:       ; preds = %qed_mcp_cmd_get_elem.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %qed_mcp_cmd_get_elem.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.3, ptr %name
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.232, i32 noundef 375, ptr noundef nonnull %spec.select, i32 noundef %conv1) #14
  br label %cleanup

if.end15:                                         ; preds = %qed_mcp_cmd_get_elem.exit
  %p_mb_params16 = getelementptr inbounds %struct.qed_mcp_cmd_elem, ptr %p_cmd_elem.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %p_mb_params16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p_mb_params16, align 4
  %mcp_resp17 = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %mcp_resp17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call, ptr %mcp_resp17, align 4
  %15 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mcp_info, align 8
  %drv_mb_addr19 = getelementptr inbounds %struct.qed_mcp_info, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %drv_mb_addr19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %drv_mb_addr19, align 8
  %add20 = add i32 %18, 12
  %call21 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add20) #11
  %mcp_param = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %13, i32 0, i32 7
  %19 = ptrtoint ptr %mcp_param to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call21, ptr %mcp_param, align 4
  %p_data_dst = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %13, i32 0, i32 3
  %20 = ptrtoint ptr %p_data_dst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p_data_dst, align 4
  %tobool22.not = icmp eq ptr %21, null
  br i1 %tobool22.not, label %if.end15.if.end32_crit_edge, label %land.lhs.true

if.end15.if.end32_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end15
  %data_dst_size = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %13, i32 0, i32 5
  %22 = ptrtoint ptr %data_dst_size to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data_dst_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool24.not = icmp eq i8 %23, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end32_crit_edge, label %if.then25

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %conv23 = zext i8 %23 to i32
  %24 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mcp_info, align 8
  %drv_mb_addr27 = getelementptr inbounds %struct.qed_mcp_info, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %drv_mb_addr27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %drv_mb_addr27, align 8
  %add28 = add i32 %27, 24
  tail call void @qed_memcpy_from(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %21, i32 noundef %add28, i32 noundef %conv23) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %land.lhs.true.if.end32_crit_edge, %if.end15.if.end32_crit_edge
  %b_is_completed = getelementptr inbounds %struct.qed_mcp_cmd_elem, ptr %p_cmd_elem.0.i, i32 0, i32 3
  %28 = ptrtoint ptr %b_is_completed to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %b_is_completed, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -22, %do.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_mcp_print_cpu_info(ptr noundef %p_hwfn, ptr noundef %p_ptt) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700544) #11
  %call1 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700548) #11
  %call2 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700572) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #11
  %call6 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700572) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #11
  %call15 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14700572) #11
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp16 = icmp ult i8 %3, 3
  br i1 %cmp16, label %do.end, label %entry.do.end28_crit_edge, !prof !663

entry.do.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool20.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool20.not, ptr @.str.3, ptr %name
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.236, i32 noundef 455, ptr noundef nonnull %spec.select, i32 noundef %call, i32 noundef %call1, i32 noundef %call2, i32 noundef %call6, i32 noundef %call15) #14
  br label %do.end28

do.end28:                                         ; preds = %do.end, %entry.do.end28_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @qed_hw_err_notify(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_memcpy_from(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_memcpy_to(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__qed_configure_pf_max_bandwidth(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__qed_configure_pf_min_bandwidth(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_configure_vp_wfq_on_link_change(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_link_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qed_iov_mark_vf_flr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_schedule_iov(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_hw_info_set_offload_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_qm_reconf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_sp_pf_update_ufp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_sp_pf_update_stag(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_int_igu_disable_int(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_schedule_recovery_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_get_protocol_stats(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_configure_pf_min_bandwidth(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_configure_pf_max_bandwidth(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_hw_get_resc_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qed_mcp_send_debug_data(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %p_buf, i8 noundef zeroext %size) unnamed_addr #1 align 64 {
entry:
  %mb_params = alloca %struct.qed_mcp_mb_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mb_params) #11
  %conv = zext i8 %size to i32
  %0 = getelementptr inbounds i8, ptr %mb_params, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %2 = ptrtoint ptr %mb_params to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1073479680, ptr %mb_params, align 4
  %param = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 1
  %3 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %param, align 4
  %p_data_src = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 2
  %4 = ptrtoint ptr %p_data_src to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %p_buf, ptr %p_data_src, align 4
  %data_src_size = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 4
  %5 = ptrtoint ptr %data_src_size to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %size, ptr %data_src_size, align 4
  %call14 = call fastcc i32 @qed_mcp_cmd_and_union(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mb_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %entry
  %mcp_resp = getelementptr inbounds %struct.qed_mcp_mb_params, ptr %mb_params, i32 0, i32 6
  %6 = ptrtoint ptr %mcp_resp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mcp_resp, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.385)
  switch i32 %7, label %do.body83 [
    i32 0, label %do.body21
    i32 -1341521920, label %do.body49
    i32 -1341456384, label %if.end17.cleanup_crit_edge
  ]

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body21:                                        ; preds = %if.end17
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %9 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp23 = icmp ult i8 %10, 2
  br i1 %cmp23, label %do.end30, label %do.body21.cleanup_crit_edge, !prof !663

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end30:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  %name32 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool34.not = icmp eq ptr %name32, null
  %spec.select = select i1 %tobool34.not, ptr @.str.3, ptr %name32
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.355, ptr noundef nonnull @.str.353, i32 noundef 4068, ptr noundef nonnull %spec.select) #14
  br label %cleanup

do.body49:                                        ; preds = %if.end17
  %dp_level50 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %11 = ptrtoint ptr %dp_level50 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dp_level50, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp52 = icmp ult i8 %12, 2
  br i1 %cmp52, label %do.end63, label %do.body49.cleanup_crit_edge, !prof !663

do.body49.cleanup_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end63:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #13
  %name65 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool67.not = icmp eq ptr %name65, null
  %spec.select132 = select i1 %tobool67.not, ptr @.str.3, ptr %name65
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.353, i32 noundef 4071, ptr noundef nonnull %spec.select132) #14
  br label %cleanup

do.body83:                                        ; preds = %if.end17
  %dp_level84 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %13 = ptrtoint ptr %dp_level84 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dp_level84, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp86 = icmp ult i8 %14, 3
  br i1 %cmp86, label %do.end97, label %do.body83.cleanup_crit_edge, !prof !663

do.body83.cleanup_crit_edge:                      ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end97:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  %name99 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool101.not = icmp eq ptr %name99, null
  %spec.select133 = select i1 %tobool101.not, ptr @.str.3, ptr %name99
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.361, ptr noundef nonnull @.str.353, i32 noundef 4076, ptr noundef nonnull %spec.select133, i32 noundef %7) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %do.body83.cleanup_crit_edge, %do.end63, %do.body49.cleanup_crit_edge, %do.end30, %do.body21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %entry.cleanup_crit_edge ], [ -95, %do.end30 ], [ -95, %do.body21.cleanup_crit_edge ], [ -16, %do.end63 ], [ -16, %do.body49.cleanup_crit_edge ], [ -22, %do.end97 ], [ -22, %do.body83.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mb_params) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 353)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 353)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !213, !215, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !267, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !294, !296, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !320, !322, !323, !324, !326, !327, !328, !329, !331, !332, !333, !335, !336, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !355, !357, !358, !359, !360, !362, !363, !364, !366, !367, !368, !369, !371, !372, !373, !375, !376, !377, !378, !380, !381, !382, !383, !385, !386, !387, !389, !390, !391, !393, !394, !395, !396, !398, !399, !400, !402, !403, !404, !406, !407, !408, !410, !411, !412, !413, !415, !416, !417, !419, !420, !421, !423, !424, !425, !426, !428, !429, !430, !431, !433, !434, !435, !436, !438, !439, !440, !441, !443, !444, !445, !446, !448, !449, !450, !452, !453, !454, !456, !457, !458, !460, !461, !462, !464, !465, !466, !467, !469, !470, !471, !472, !474, !475, !476, !478, !479, !480, !482, !483, !484, !486, !487, !488, !489, !491, !492, !493, !495, !496, !497, !498, !500, !501, !502, !504, !505, !506, !507, !509, !510, !511, !512, !514, !515, !516, !518, !519, !520, !522, !523, !524, !525, !527, !528, !529, !531, !532, !533, !535, !536, !537, !538, !540, !541, !542, !543, !545, !547, !548, !549, !550, !552, !553, !554, !556, !557, !558, !560, !561, !562, !563, !565, !566, !567, !568, !570, !571, !572, !574, !575, !576, !577, !579, !580, !581, !583, !584, !585, !586, !588, !589, !590, !592, !593, !594, !595, !596, !597, !599, !600, !601, !602, !604, !605, !606, !608, !609, !610, !612, !613, !614, !616, !617, !618, !619, !621, !622, !623, !625, !626, !627, !629, !630, !631, !632, !634, !635, !636, !638, !639, !640, !641, !643, !644, !645, !647, !648, !649, !651, !652}
!llvm.module.flags = !{!653, !654, !655, !656, !657, !658, !659, !660}
!llvm.ident = !{!661}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 68, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qed_mcp_cmd_port_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qed_mcp_cmd_port_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @qed_mcp_cmd_init.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 250, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @qed_mcp_cmd_init.__key.5, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 251, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 256, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @qed_mcp_cmd_init._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @qed_mcp_cmd_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 301, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @qed_mcp_reset._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @qed_mcp_reset._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 326, i32 3}
!25 = !{ptr @qed_mcp_reset._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @qed_mcp_reset._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 329, i32 3}
!29 = !{ptr @qed_mcp_reset._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @qed_mcp_reset._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 974, i32 3}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @qed_mcp_load_req._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @qed_mcp_load_req._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 987, i32 4}
!38 = !{ptr @qed_mcp_load_req._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @qed_mcp_load_req._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1007, i32 4}
!42 = !{ptr @qed_mcp_load_req._entry.22, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @qed_mcp_load_req._entry_ptr.24, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1015, i32 4}
!46 = !{ptr @qed_mcp_load_req._entry.25, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @qed_mcp_load_req._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1036, i32 4}
!50 = !{ptr @qed_mcp_load_req._entry.28, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @qed_mcp_load_req._entry_ptr.30, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1042, i32 3}
!54 = !{ptr @qed_mcp_load_req._entry.31, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @qed_mcp_load_req._entry_ptr.33, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1061, i32 3}
!58 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @qed_mcp_load_done._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @qed_mcp_load_done._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1068, i32 3}
!63 = !{ptr @qed_mcp_load_done._entry.36, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @qed_mcp_load_done._entry_ptr.38, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1087, i32 3}
!67 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @qed_mcp_unload_req._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @qed_mcp_unload_req._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1120, i32 3}
!72 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @qed_mcp_unload_done._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @qed_mcp_unload_done._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1176, i32 3}
!77 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @qed_mcp_ack_vf_flr._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @qed_mcp_ack_vf_flr._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1186, i32 3}
!82 = !{ptr @qed_mcp_ack_vf_flr._entry.45, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @qed_mcp_ack_vf_flr._entry_ptr.47, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1588, i32 3}
!86 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @qed_mcp_set_link._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @qed_mcp_set_link._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1594, i32 3}
!91 = !{ptr @qed_mcp_set_link._entry.50, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @qed_mcp_set_link._entry_ptr.52, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1605, i32 3}
!95 = !{ptr @qed_mcp_set_link._entry.53, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @qed_mcp_set_link._entry_ptr.55, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1856, i32 3}
!99 = !{ptr @.str.57, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @qed_mcp_mdump_get_retain._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @qed_mcp_mdump_get_retain._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1908, i32 3}
!104 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @qed_mcp_read_ufp_config._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @qed_mcp_read_ufp_config._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1919, i32 3}
!109 = !{ptr @qed_mcp_read_ufp_config._entry.60, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @qed_mcp_read_ufp_config._entry_ptr.62, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.64, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1936, i32 3}
!113 = !{ptr @qed_mcp_read_ufp_config._entry.63, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @qed_mcp_read_ufp_config._entry_ptr.65, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.67, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1941, i32 2}
!117 = !{ptr @qed_mcp_read_ufp_config._entry.66, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @qed_mcp_read_ufp_config._entry_ptr.68, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.69, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1984, i32 2}
!121 = !{ptr @.str.70, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @qed_mcp_handle_events._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @qed_mcp_handle_events._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.72, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1996, i32 3}
!126 = !{ptr @qed_mcp_handle_events._entry.71, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @qed_mcp_handle_events._entry_ptr.73, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.75, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2050, i32 4}
!130 = !{ptr @qed_mcp_handle_events._entry.74, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @qed_mcp_handle_events._entry_ptr.76, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.78, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2068, i32 3}
!134 = !{ptr @qed_mcp_handle_events._entry.77, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @qed_mcp_handle_events._entry_ptr.79, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.80, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2093, i32 4}
!138 = !{ptr @.str.81, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @qed_mcp_get_mfw_ver._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @qed_mcp_get_mfw_ver._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.82, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2130, i32 3}
!143 = !{ptr @.str.83, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @qed_mcp_get_mbi_ver._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @qed_mcp_get_mbi_ver._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.84, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2158, i32 3}
!148 = !{ptr @.str.85, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @qed_mcp_get_media_type._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @qed_mcp_get_media_type._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.86, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2189, i32 3}
!153 = !{ptr @qed_mcp_get_transceiver_data._entry, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @qed_mcp_get_transceiver_data._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.87, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2328, i32 3}
!157 = !{ptr @.str.88, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @qed_mcp_trans_speed_mask._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @qed_mcp_trans_speed_mask._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.89, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2346, i32 3}
!162 = !{ptr @qed_mcp_get_board_config._entry, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @qed_mcp_get_board_config._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.90, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2475, i32 3}
!166 = !{ptr @.str.91, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @qed_mcp_fill_shmem_func_info._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @qed_mcp_fill_shmem_func_info._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2493, i32 3}
!171 = !{ptr @qed_mcp_fill_shmem_func_info._entry.92, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @qed_mcp_fill_shmem_func_info._entry_ptr.94, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.96, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2519, i32 2}
!175 = !{ptr @qed_mcp_fill_shmem_func_info._entry.95, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @qed_mcp_fill_shmem_func_info._entry_ptr.97, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.98, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2591, i32 3}
!179 = !{ptr @.str.99, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @qed_start_recovery_process._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @qed_start_recovery_process._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.101, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2596, i32 2}
!184 = !{ptr @qed_start_recovery_process._entry.100, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @qed_start_recovery_process._entry_ptr.102, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.103, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2616, i32 3}
!188 = !{ptr @.str.104, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @qed_recovery_prolog._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @qed_recovery_prolog._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.105, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2709, i32 3}
!193 = !{ptr @qed_mcp_send_drv_version._entry, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @qed_mcp_send_drv_version._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.106, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2726, i32 3}
!197 = !{ptr @qed_mcp_halt._entry, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @qed_mcp_halt._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.108, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2738, i32 3}
!201 = !{ptr @qed_mcp_halt._entry.107, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @qed_mcp_halt._entry_ptr.109, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.110, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2764, i32 3}
!205 = !{ptr @.str.111, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @qed_mcp_resume._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @qed_mcp_resume._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.112, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2794, i32 3}
!210 = !{ptr @.str.113, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @qed_mcp_ov_update_current_config._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @qed_mcp_ov_update_current_config._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @qed_mcp_ov_update_current_config._entry.114, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2801, i32 3}
!215 = !{ptr @qed_mcp_ov_update_current_config._entry_ptr.115, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.116, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2825, i32 3}
!218 = !{ptr @.str.117, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @qed_mcp_ov_update_driver_state._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @qed_mcp_ov_update_driver_state._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.119, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2832, i32 3}
!223 = !{ptr @qed_mcp_ov_update_driver_state._entry.118, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @qed_mcp_ov_update_driver_state._entry_ptr.120, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.121, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2848, i32 3}
!227 = !{ptr @.str.122, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @qed_mcp_ov_update_mtu._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @qed_mcp_ov_update_mtu._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.123, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2878, i32 3}
!232 = !{ptr @.str.124, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @qed_mcp_ov_update_mac._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @qed_mcp_ov_update_mac._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.125, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2894, i32 3}
!237 = !{ptr @.str.126, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @qed_mcp_ov_update_wol._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @qed_mcp_ov_update_wol._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.128, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2910, i32 3}
!242 = !{ptr @qed_mcp_ov_update_wol._entry.127, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @qed_mcp_ov_update_wol._entry_ptr.129, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.131, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2917, i32 3}
!246 = !{ptr @qed_mcp_ov_update_wol._entry.130, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @qed_mcp_ov_update_wol._entry_ptr.132, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.133, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2944, i32 3}
!250 = !{ptr @.str.134, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @qed_mcp_ov_update_eswitch._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @qed_mcp_ov_update_eswitch._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.136, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2951, i32 3}
!255 = !{ptr @qed_mcp_ov_update_eswitch._entry.135, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @qed_mcp_ov_update_eswitch._entry_ptr.137, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.138, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2973, i32 3}
!259 = !{ptr @.str.139, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @qed_mcp_set_led._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @qed_mcp_set_led._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.140, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2993, i32 3}
!264 = !{ptr @.str.141, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @qed_mcp_mask_parities._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @qed_mcp_mask_parities._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.143, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2996, i32 3}
!269 = !{ptr @qed_mcp_mask_parities._entry.142, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @qed_mcp_mask_parities._entry_ptr.144, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.145, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3029, i32 4}
!273 = !{ptr @.str.146, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @qed_mcp_nvm_read._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @qed_mcp_nvm_read._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.147, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3088, i32 3}
!278 = !{ptr @.str.148, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @qed_mcp_nvm_write._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @qed_mcp_nvm_write._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.150, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3105, i32 4}
!283 = !{ptr @qed_mcp_nvm_write._entry.149, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @qed_mcp_nvm_write._entry_ptr.151, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.153, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3113, i32 4}
!287 = !{ptr @qed_mcp_nvm_write._entry.152, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @qed_mcp_nvm_write._entry_ptr.154, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.155, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3180, i32 4}
!291 = !{ptr @.str.156, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @qed_mcp_phy_sfp_read._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @qed_mcp_phy_sfp_read._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.157, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3300, i32 3}
!296 = !{ptr @.str.158, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @qed_mcp_nvm_info_populate._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @qed_mcp_nvm_info_populate._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.160, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3309, i32 3}
!301 = !{ptr @qed_mcp_nvm_info_populate._entry.159, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @qed_mcp_nvm_info_populate._entry_ptr.161, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.163, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3312, i32 3}
!305 = !{ptr @qed_mcp_nvm_info_populate._entry.162, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @qed_mcp_nvm_info_populate._entry_ptr.164, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.166, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3329, i32 4}
!309 = !{ptr @qed_mcp_nvm_info_populate._entry.165, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @qed_mcp_nvm_info_populate._entry_ptr.167, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.169, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3334, i32 3}
!313 = !{ptr @qed_mcp_nvm_info_populate._entry.168, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @qed_mcp_nvm_info_populate._entry_ptr.170, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.171, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3393, i32 3}
!317 = !{ptr @.str.172, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @qed_mcp_get_nvm_image_att._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @qed_mcp_get_nvm_image_att._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.174, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3406, i32 3}
!322 = !{ptr @qed_mcp_get_nvm_image_att._entry.173, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @qed_mcp_get_nvm_image_att._entry_ptr.175, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.176, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3433, i32 3}
!326 = !{ptr @.str.177, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @qed_mcp_get_nvm_image._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @qed_mcp_get_nvm_image._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.179, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3440, i32 3}
!331 = !{ptr @qed_mcp_get_nvm_image._entry.178, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @qed_mcp_get_nvm_image._entry_ptr.180, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.181, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3810, i32 2}
!335 = !{ptr @.str.182, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @qed_mcp_resc_unlock._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @qed_mcp_resc_unlock._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.184, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3822, i32 2}
!340 = !{ptr @qed_mcp_resc_unlock._entry.183, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @qed_mcp_resc_unlock._entry_ptr.185, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.187, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3828, i32 3}
!344 = !{ptr @qed_mcp_resc_unlock._entry.186, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @qed_mcp_resc_unlock._entry_ptr.188, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.190, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3839, i32 3}
!348 = !{ptr @qed_mcp_resc_unlock._entry.189, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @qed_mcp_resc_unlock._entry_ptr.191, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.192, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3892, i32 3}
!352 = !{ptr @.str.193, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @qed_mcp_get_capabilities._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @qed_mcp_get_capabilities._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.194, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3924, i32 3}
!357 = !{ptr @.str.195, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @qed_mcp_get_engine_config._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @qed_mcp_get_engine_config._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.197, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3943, i32 2}
!362 = !{ptr @qed_mcp_get_engine_config._entry.196, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @qed_mcp_get_engine_config._entry_ptr.198, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.199, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3962, i32 3}
!366 = !{ptr @.str.200, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @qed_mcp_get_ppfid_bitmap._entry, !365, !"_entry", i1 false, i1 false}
!368 = !{ptr @qed_mcp_get_ppfid_bitmap._entry_ptr, !365, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.202, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3970, i32 2}
!371 = !{ptr @qed_mcp_get_ppfid_bitmap._entry.201, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @qed_mcp_get_ppfid_bitmap._entry_ptr.203, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.204, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 4175, i32 3}
!375 = !{ptr @.str.205, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @qed_mcp_get_esl_status._entry, !374, !"_entry", i1 false, i1 false}
!377 = !{ptr @qed_mcp_get_esl_status._entry_ptr, !374, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.206, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 177, i32 3}
!380 = !{ptr @.str.207, !379, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @qed_load_mcp_offsets._entry, !379, !"_entry", i1 false, i1 false}
!382 = !{ptr @qed_load_mcp_offsets._entry_ptr, !379, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.209, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 208, i32 3}
!385 = !{ptr @qed_load_mcp_offsets._entry.208, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @qed_load_mcp_offsets._entry_ptr.210, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.212, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 219, i32 2}
!389 = !{ptr @qed_load_mcp_offsets._entry.211, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @qed_load_mcp_offsets._entry_ptr.213, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.214, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 285, i32 3}
!393 = !{ptr @.str.215, !392, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @qed_mcp_reread_offsets._entry, !392, !"_entry", i1 false, i1 false}
!395 = !{ptr @qed_mcp_reread_offsets._entry_ptr, !392, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.216, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 588, i32 3}
!398 = !{ptr @qed_mcp_cmd_and_union._entry, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @qed_mcp_cmd_and_union._entry_ptr, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.218, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 593, i32 3}
!402 = !{ptr @qed_mcp_cmd_and_union._entry.217, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @qed_mcp_cmd_and_union._entry_ptr.219, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.221, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 601, i32 3}
!406 = !{ptr @qed_mcp_cmd_and_union._entry.220, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @qed_mcp_cmd_and_union._entry_ptr.222, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.223, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 496, i32 3}
!410 = !{ptr @.str.224, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @_qed_mcp_cmd_and_union._entry, !409, !"_entry", i1 false, i1 false}
!412 = !{ptr @_qed_mcp_cmd_and_union._entry_ptr, !409, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.226, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 541, i32 3}
!415 = !{ptr @_qed_mcp_cmd_and_union._entry.225, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @_qed_mcp_cmd_and_union._entry_ptr.227, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.229, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 561, i32 2}
!419 = !{ptr @_qed_mcp_cmd_and_union._entry.228, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @_qed_mcp_cmd_and_union._entry_ptr.230, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.231, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 373, i32 3}
!423 = !{ptr @.str.232, !422, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @qed_mcp_update_pending_cmd._entry, !422, !"_entry", i1 false, i1 false}
!425 = !{ptr @qed_mcp_update_pending_cmd._entry_ptr, !422, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.233, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 426, i32 2}
!428 = !{ptr @.str.234, !427, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @__qed_mcp_cmd_and_union._entry, !427, !"_entry", i1 false, i1 false}
!430 = !{ptr @__qed_mcp_cmd_and_union._entry_ptr, !427, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.235, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 453, i32 2}
!433 = !{ptr @.str.236, !432, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @qed_mcp_print_cpu_info._entry, !432, !"_entry", i1 false, i1 false}
!435 = !{ptr @qed_mcp_print_cpu_info._entry_ptr, !432, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @.str.237, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 909, i32 3}
!438 = !{ptr @.str.238, !437, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @eocre_get_mfw_drv_role._entry, !437, !"_entry", i1 false, i1 false}
!440 = !{ptr @eocre_get_mfw_drv_role._entry_ptr, !437, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.239, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 837, i32 2}
!443 = !{ptr @.str.240, !442, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @__qed_mcp_load_req._entry, !442, !"_entry", i1 false, i1 false}
!445 = !{ptr @__qed_mcp_load_req._entry_ptr, !442, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.242, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 846, i32 3}
!448 = !{ptr @__qed_mcp_load_req._entry.241, !447, !"_entry", i1 false, i1 false}
!449 = !{ptr @__qed_mcp_load_req._entry_ptr.243, !447, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.245, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 861, i32 3}
!452 = !{ptr @__qed_mcp_load_req._entry.244, !451, !"_entry", i1 false, i1 false}
!453 = !{ptr @__qed_mcp_load_req._entry_ptr.246, !451, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.248, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 865, i32 2}
!456 = !{ptr @__qed_mcp_load_req._entry.247, !455, !"_entry", i1 false, i1 false}
!457 = !{ptr @__qed_mcp_load_req._entry_ptr.249, !455, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.251, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 871, i32 3}
!460 = !{ptr @__qed_mcp_load_req._entry.250, !459, !"_entry", i1 false, i1 false}
!461 = !{ptr @__qed_mcp_load_req._entry_ptr.252, !459, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.253, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 739, i32 3}
!464 = !{ptr @.str.254, !463, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @qed_mcp_cancel_load_req._entry, !463, !"_entry", i1 false, i1 false}
!466 = !{ptr @qed_mcp_cancel_load_req._entry_ptr, !463, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.255, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1313, i32 3}
!469 = !{ptr @.str.256, !468, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @qed_mcp_handle_link_change._entry, !468, !"_entry", i1 false, i1 false}
!471 = !{ptr @qed_mcp_handle_link_change._entry_ptr, !468, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @.str.258, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1319, i32 3}
!474 = !{ptr @qed_mcp_handle_link_change._entry.257, !473, !"_entry", i1 false, i1 false}
!475 = !{ptr @qed_mcp_handle_link_change._entry_ptr.259, !473, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.261, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1337, i32 4}
!478 = !{ptr @qed_mcp_handle_link_change._entry.260, !477, !"_entry", i1 false, i1 false}
!479 = !{ptr @qed_mcp_handle_link_change._entry_ptr.262, !477, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.264, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1341, i32 4}
!482 = !{ptr @qed_mcp_handle_link_change._entry.263, !481, !"_entry", i1 false, i1 false}
!483 = !{ptr @qed_mcp_handle_link_change._entry_ptr.265, !481, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @.str.266, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1815, i32 3}
!486 = !{ptr @.str.267, !485, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @qed_mcp_mdump_cmd._entry, !485, !"_entry", i1 false, i1 false}
!488 = !{ptr @qed_mcp_mdump_cmd._entry_ptr, !485, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.269, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1820, i32 3}
!491 = !{ptr @qed_mcp_mdump_cmd._entry.268, !490, !"_entry", i1 false, i1 false}
!492 = !{ptr @qed_mcp_mdump_cmd._entry_ptr.270, !490, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.271, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1143, i32 2}
!495 = !{ptr @.str.272, !494, !"<string literal>", i1 false, i1 false}
!496 = !{ptr @qed_mcp_handle_vf_flr._entry, !494, !"_entry", i1 false, i1 false}
!497 = !{ptr @qed_mcp_handle_vf_flr._entry_ptr, !494, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @.str.274, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1154, i32 3}
!500 = !{ptr @qed_mcp_handle_vf_flr._entry.273, !499, !"_entry", i1 false, i1 false}
!501 = !{ptr @qed_mcp_handle_vf_flr._entry_ptr.275, !499, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @.str.276, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1963, i32 3}
!504 = !{ptr @.str.277, !503, !"<string literal>", i1 false, i1 false}
!505 = !{ptr @qed_mcp_handle_ufp_event._entry, !503, !"_entry", i1 false, i1 false}
!506 = !{ptr @qed_mcp_handle_ufp_event._entry_ptr, !503, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.278, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1210, i32 2}
!509 = !{ptr @.str.279, !508, !"<string literal>", i1 false, i1 false}
!510 = !{ptr @qed_mcp_handle_transceiver_change._entry, !508, !"_entry", i1 false, i1 false}
!511 = !{ptr @qed_mcp_handle_transceiver_change._entry_ptr, !508, !"_entry_ptr", i1 false, i1 false}
!512 = !{ptr @.str.281, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1221, i32 3}
!514 = !{ptr @qed_mcp_handle_transceiver_change._entry.280, !513, !"_entry", i1 false, i1 false}
!515 = !{ptr @qed_mcp_handle_transceiver_change._entry_ptr.282, !513, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @.str.284, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1223, i32 3}
!518 = !{ptr @qed_mcp_handle_transceiver_change._entry.283, !517, !"_entry", i1 false, i1 false}
!519 = !{ptr @qed_mcp_handle_transceiver_change._entry_ptr.285, !517, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.286, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1652, i32 2}
!522 = !{ptr @.str.287, !521, !"<string literal>", i1 false, i1 false}
!523 = !{ptr @qed_mcp_handle_process_kill._entry, !521, !"_entry", i1 false, i1 false}
!524 = !{ptr @qed_mcp_handle_process_kill._entry_ptr, !521, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.289, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1661, i32 3}
!527 = !{ptr @qed_mcp_handle_process_kill._entry.288, !526, !"_entry", i1 false, i1 false}
!528 = !{ptr @qed_mcp_handle_process_kill._entry_ptr.290, !526, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @.str.292, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1669, i32 2}
!531 = !{ptr @qed_mcp_handle_process_kill._entry.291, !530, !"_entry", i1 false, i1 false}
!532 = !{ptr @qed_mcp_handle_process_kill._entry_ptr.293, !530, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @.str.294, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1701, i32 3}
!535 = !{ptr @.str.295, !534, !"<string literal>", i1 false, i1 false}
!536 = !{ptr @qed_mcp_send_protocol_stats._entry, !534, !"_entry", i1 false, i1 false}
!537 = !{ptr @qed_mcp_send_protocol_stats._entry_ptr, !534, !"_entry_ptr", i1 false, i1 false}
!538 = !{ptr @.str.296, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1765, i32 2}
!540 = !{ptr @.str.297, !539, !"<string literal>", i1 false, i1 false}
!541 = !{ptr @qed_mcp_update_stag._entry, !539, !"_entry", i1 false, i1 false}
!542 = !{ptr @qed_mcp_update_stag._entry_ptr, !539, !"_entry_ptr", i1 false, i1 false}
!543 = !{ptr @.str.298, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1781, i32 6}
!545 = !{ptr @.str.299, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1879, i32 3}
!547 = !{ptr @.str.300, !546, !"<string literal>", i1 false, i1 false}
!548 = !{ptr @qed_mcp_handle_critical_error._entry, !546, !"_entry", i1 false, i1 false}
!549 = !{ptr @qed_mcp_handle_critical_error._entry_ptr, !546, !"_entry_ptr", i1 false, i1 false}
!550 = !{ptr @.str.302, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1884, i32 3}
!552 = !{ptr @qed_mcp_handle_critical_error._entry.301, !551, !"_entry", i1 false, i1 false}
!553 = !{ptr @qed_mcp_handle_critical_error._entry_ptr.303, !551, !"_entry_ptr", i1 false, i1 false}
!554 = !{ptr @.str.305, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1887, i32 2}
!556 = !{ptr @qed_mcp_handle_critical_error._entry.304, !555, !"_entry", i1 false, i1 false}
!557 = !{ptr @qed_mcp_handle_critical_error._entry_ptr.306, !555, !"_entry_ptr", i1 false, i1 false}
!558 = !{ptr @.str.307, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2452, i32 3}
!560 = !{ptr @.str.308, !559, !"<string literal>", i1 false, i1 false}
!561 = !{ptr @qed_mcp_get_shmem_proto._entry, !559, !"_entry", i1 false, i1 false}
!562 = !{ptr @qed_mcp_get_shmem_proto._entry_ptr, !559, !"_entry_ptr", i1 false, i1 false}
!563 = !{ptr @.str.309, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1281, i32 3}
!565 = !{ptr @.str.310, !564, !"<string literal>", i1 false, i1 false}
!566 = !{ptr @qed_read_pf_bandwidth._entry, !564, !"_entry", i1 false, i1 false}
!567 = !{ptr @qed_read_pf_bandwidth._entry_ptr, !564, !"_entry_ptr", i1 false, i1 false}
!568 = !{ptr @.str.312, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 1290, i32 3}
!570 = !{ptr @qed_read_pf_bandwidth._entry.311, !569, !"_entry", i1 false, i1 false}
!571 = !{ptr @qed_read_pf_bandwidth._entry_ptr.313, !569, !"_entry_ptr", i1 false, i1 false}
!572 = !{ptr @.str.314, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2644, i32 3}
!574 = !{ptr @.str.315, !573, !"<string literal>", i1 false, i1 false}
!575 = !{ptr @qed_mcp_config_vf_msix_bb._entry, !573, !"_entry", i1 false, i1 false}
!576 = !{ptr @qed_mcp_config_vf_msix_bb._entry_ptr, !573, !"_entry_ptr", i1 false, i1 false}
!577 = !{ptr @.str.317, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2647, i32 3}
!579 = !{ptr @qed_mcp_config_vf_msix_bb._entry.316, !578, !"_entry", i1 false, i1 false}
!580 = !{ptr @qed_mcp_config_vf_msix_bb._entry_ptr.318, !578, !"_entry_ptr", i1 false, i1 false}
!581 = !{ptr @.str.319, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2666, i32 3}
!583 = !{ptr @.str.320, !582, !"<string literal>", i1 false, i1 false}
!584 = !{ptr @qed_mcp_config_vf_msix_ah._entry, !582, !"_entry", i1 false, i1 false}
!585 = !{ptr @qed_mcp_config_vf_msix_ah._entry_ptr, !582, !"_entry_ptr", i1 false, i1 false}
!586 = !{ptr @.str.322, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 2669, i32 3}
!588 = !{ptr @qed_mcp_config_vf_msix_ah._entry.321, !587, !"_entry", i1 false, i1 false}
!589 = !{ptr @qed_mcp_config_vf_msix_ah._entry_ptr.323, !587, !"_entry_ptr", i1 false, i1 false}
!590 = !{ptr @.str.324, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 435, i32 2}
!592 = !{ptr @.str.325, !591, !"<string literal>", i1 false, i1 false}
!593 = !{ptr @qed_mcp_cmd_set_blocking._entry, !591, !"_entry", i1 false, i1 false}
!594 = !{ptr @qed_mcp_cmd_set_blocking._entry_ptr, !591, !"_entry_ptr", i1 false, i1 false}
!595 = !{ptr @.str.326, !591, !"<string literal>", i1 false, i1 false}
!596 = !{ptr @.str.327, !591, !"<string literal>", i1 false, i1 false}
!597 = !{ptr @.str.328, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3544, i32 3}
!599 = !{ptr @.str.329, !598, !"<string literal>", i1 false, i1 false}
!600 = !{ptr @qed_mcp_resc_allocation_msg._entry, !598, !"_entry", i1 false, i1 false}
!601 = !{ptr @qed_mcp_resc_allocation_msg._entry_ptr, !598, !"_entry_ptr", i1 false, i1 false}
!602 = !{ptr @.str.331, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3558, i32 3}
!604 = !{ptr @qed_mcp_resc_allocation_msg._entry.330, !603, !"_entry", i1 false, i1 false}
!605 = !{ptr @qed_mcp_resc_allocation_msg._entry_ptr.332, !603, !"_entry_ptr", i1 false, i1 false}
!606 = !{ptr @.str.334, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3571, i32 2}
!608 = !{ptr @qed_mcp_resc_allocation_msg._entry.333, !607, !"_entry", i1 false, i1 false}
!609 = !{ptr @qed_mcp_resc_allocation_msg._entry_ptr.335, !607, !"_entry_ptr", i1 false, i1 false}
!610 = !{ptr @.str.337, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3595, i32 2}
!612 = !{ptr @qed_mcp_resc_allocation_msg._entry.336, !611, !"_entry", i1 false, i1 false}
!613 = !{ptr @qed_mcp_resc_allocation_msg._entry_ptr.338, !611, !"_entry_ptr", i1 false, i1 false}
!614 = !{ptr @.str.339, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3728, i32 2}
!616 = !{ptr @.str.340, !615, !"<string literal>", i1 false, i1 false}
!617 = !{ptr @__qed_mcp_resc_lock._entry, !615, !"_entry", i1 false, i1 false}
!618 = !{ptr @__qed_mcp_resc_lock._entry_ptr, !615, !"_entry_ptr", i1 false, i1 false}
!619 = !{ptr @.str.342, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3742, i32 2}
!621 = !{ptr @__qed_mcp_resc_lock._entry.341, !620, !"_entry", i1 false, i1 false}
!622 = !{ptr @__qed_mcp_resc_lock._entry_ptr.343, !620, !"_entry_ptr", i1 false, i1 false}
!623 = !{ptr @.str.345, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3755, i32 3}
!625 = !{ptr @__qed_mcp_resc_lock._entry.344, !624, !"_entry", i1 false, i1 false}
!626 = !{ptr @__qed_mcp_resc_lock._entry_ptr.346, !624, !"_entry_ptr", i1 false, i1 false}
!627 = !{ptr @.str.347, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3684, i32 3}
!629 = !{ptr @.str.348, !628, !"<string literal>", i1 false, i1 false}
!630 = !{ptr @qed_mcp_resource_cmd._entry, !628, !"_entry", i1 false, i1 false}
!631 = !{ptr @qed_mcp_resource_cmd._entry_ptr, !628, !"_entry_ptr", i1 false, i1 false}
!632 = !{ptr @.str.350, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 3692, i32 3}
!634 = !{ptr @qed_mcp_resource_cmd._entry.349, !633, !"_entry", i1 false, i1 false}
!635 = !{ptr @qed_mcp_resource_cmd._entry_ptr.351, !633, !"_entry_ptr", i1 false, i1 false}
!636 = !{ptr @.str.352, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 4051, i32 3}
!638 = !{ptr @.str.353, !637, !"<string literal>", i1 false, i1 false}
!639 = !{ptr @__qed_mcp_send_debug_data._entry, !637, !"_entry", i1 false, i1 false}
!640 = !{ptr @__qed_mcp_send_debug_data._entry_ptr, !637, !"_entry_ptr", i1 false, i1 false}
!641 = !{ptr @.str.355, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 4067, i32 3}
!643 = !{ptr @__qed_mcp_send_debug_data._entry.354, !642, !"_entry", i1 false, i1 false}
!644 = !{ptr @__qed_mcp_send_debug_data._entry_ptr.356, !642, !"_entry_ptr", i1 false, i1 false}
!645 = !{ptr @.str.358, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 4071, i32 3}
!647 = !{ptr @__qed_mcp_send_debug_data._entry.357, !646, !"_entry", i1 false, i1 false}
!648 = !{ptr @__qed_mcp_send_debug_data._entry_ptr.359, !646, !"_entry_ptr", i1 false, i1 false}
!649 = !{ptr @.str.361, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/net/ethernet/qlogic/qed/qed_mcp.c", i32 4074, i32 3}
!651 = !{ptr @__qed_mcp_send_debug_data._entry.360, !650, !"_entry", i1 false, i1 false}
!652 = !{ptr @__qed_mcp_send_debug_data._entry_ptr.362, !650, !"_entry_ptr", i1 false, i1 false}
!653 = !{i32 1, !"wchar_size", i32 2}
!654 = !{i32 1, !"min_enum_size", i32 4}
!655 = !{i32 8, !"branch-target-enforcement", i32 0}
!656 = !{i32 8, !"sign-return-address", i32 0}
!657 = !{i32 8, !"sign-return-address-all", i32 0}
!658 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!659 = !{i32 7, !"uwtable", i32 1}
!660 = !{i32 7, !"frame-pointer", i32 2}
!661 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!662 = !{!"branch_weights", i32 2000, i32 1}
!663 = !{!"branch_weights", i32 1, i32 2000}
!664 = !{i8 0, i8 2}
!665 = !{!"auto-init"}
!666 = !{i64 2148421170}
!667 = !{i64 2148336479, i64 2148336511, i64 2148336540, i64 2148336574, i64 2148336605, i64 2148336628}
!668 = !{i64 2148421399}
