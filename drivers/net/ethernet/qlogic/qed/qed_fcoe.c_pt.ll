; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_fcoe.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_fcoe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+qed_get_fcoe_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_qed_get_fcoe_ops\09\09\09\09"
module asm "\09.long\09__crc_qed_get_fcoe_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qed_get_fcoe_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22qed_get_fcoe_ops\22\09\09\09\09\09"
module asm "__kstrtabns_qed_get_fcoe_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qed_put_fcoe_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_qed_put_fcoe_ops\09\09\09\09"
module asm "\09.long\09__crc_qed_put_fcoe_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qed_put_fcoe_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22qed_put_fcoe_ops\22\09\09\09\09\09"
module asm "__kstrtabns_qed_put_fcoe_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qed_fcoe_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.qed_common_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_ll2_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.qed_fcoe_info = type { %struct.spinlock, %struct.list_head }
%struct.fcoe_task_context = type { %struct.ystorm_fcoe_task_st_ctx, [2 x %struct.regpair], %struct.tdif_task_context, %struct.ystorm_fcoe_task_ag_ctx, %struct.tstorm_fcoe_task_ag_ctx, %struct.timers_context, %struct.tstorm_fcoe_task_st_ctx, [2 x %struct.regpair], %struct.mstorm_fcoe_task_ag_ctx, %struct.mstorm_fcoe_task_st_ctx, %struct.ustorm_fcoe_task_ag_ctx, %struct.rdif_task_context }
%struct.ystorm_fcoe_task_st_ctx = type { i8, i8, i8, i8, i32, %union.protection_info_union_ctx, i32, %struct.scsi_sgl_params, [12 x i8], %union.fcoe_tx_info_union_ctx, %union.fcoe_dix_desc_ctx, %struct.scsi_cached_sges, i16, i16, i32, [8 x i8] }
%union.protection_info_union_ctx = type { i32 }
%struct.scsi_sgl_params = type { %struct.regpair, i32, i32, i16, i8, i8 }
%struct.regpair = type { i32, i32 }
%union.fcoe_tx_info_union_ctx = type { %struct.fcoe_fcp_cmd_payload }
%struct.fcoe_fcp_cmd_payload = type { [8 x i32] }
%union.fcoe_dix_desc_ctx = type { %struct.fcoe_slow_sgl_ctx }
%struct.fcoe_slow_sgl_ctx = type { %struct.regpair, i16, i16, i16, i16 }
%struct.scsi_cached_sges = type { [4 x %struct.scsi_sge] }
%struct.scsi_sge = type { %struct.regpair, i32, i32 }
%struct.tdif_task_context = type { i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i16, i16, i32, [8 x i8], [8 x i8] }
%struct.ystorm_fcoe_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.tstorm_fcoe_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, i16, i16, i16, i32, i32 }
%struct.timers_context = type { i32, i32, i32, i32 }
%struct.tstorm_fcoe_task_st_ctx = type { %struct.fcoe_tstorm_fcoe_task_st_ctx_read_write, %struct.fcoe_tstorm_fcoe_task_st_ctx_read_only }
%struct.fcoe_tstorm_fcoe_task_st_ctx_read_write = type { %union.fcoe_cleanup_addr_exp_ro_union, i16, i16, i8, i8, i16, %struct.fcoe_abts_pkt, i32, i16, i16 }
%union.fcoe_cleanup_addr_exp_ro_union = type { %struct.regpair }
%struct.fcoe_abts_pkt = type { i32, i16, i8, i8 }
%struct.fcoe_tstorm_fcoe_task_st_ctx_read_only = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.mstorm_fcoe_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.mstorm_fcoe_task_st_ctx = type { %struct.regpair, [2 x i32], %struct.scsi_sgl_params, i32, i32, i16, i16, %struct.scsi_cached_sges }
%struct.ustorm_fcoe_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.rdif_task_context = type { i32, i16, i16, i8, [7 x i8], i16, i16, i32, i16, i16, i32 }
%struct.qed_fcoe_conn = type { %struct.list_head, i8, i16, i32, i32, i8, i32, i32, i32, i32, ptr, [4 x i32], [4 x ptr], i32, ptr, [2 x i32], [2 x ptr], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %struct.fc_addr_nw, i8, %struct.fc_addr_nw, i8, i8 }
%struct.fc_addr_nw = type { i8, i8, i8 }
%struct.qed_dev = type { i32, i8, [16 x i8], i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, [6 x i8], i32, i32, i16, i16, ptr, ptr, i64, i32, i8, ptr, i8, [4 x %struct.qed_hwfn], i8, i8, i8, ptr, %struct.qed_tunnel_info, i8, i32, ptr, ptr, i32, i8, i8, i8, ptr, %struct.qed_dev_info, ptr, ptr, i32, i32, %struct.pci_params, %struct.qed_int_params, i8, %union.anon.109, ptr, ptr, [6 x i8], [8 x %struct.qed_dbg_feature], i8, i8, i8, [1024 x %struct.hlist_head], ptr, i8, i32, i32, i32, i16, i8 }
%struct.qed_tunnel_info = type { %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_udp_port, %struct.qed_tunn_update_udp_port, i8, i8 }
%struct.qed_tunn_update_type = type { i8, i8, i32 }
%struct.qed_tunn_update_udp_port = type { i8, i16 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.pci_params = type { i32, i32, i32, i32, i8 }
%struct.qed_int_params = type { %struct.qed_int_param, %struct.qed_int_param, ptr, i8, i8, i8, i8, i8 }
%struct.qed_int_param = type { i32, i8, i8 }
%union.anon.109 = type { ptr }
%struct.qed_dbg_feature = type { ptr, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.108, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.108 = type { ptr }
%struct.qed_fcoe_stats = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.qed_mcp_fcoe_stats = type { i64, i64, i32, i32 }
%struct.qed_fcoe_cb_ops = type { %struct.qed_common_cb_ops, ptr }
%struct.qed_common_cb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fcoe_tx_stat = type { %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair }
%struct.fcoe_rx_stat = type { %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, i32, i32, i32, i32, i32, i32 }
%struct.iro = type { i32, i16, i16, i16, i16 }
%struct.qed_dev_fcoe_info = type { %struct.qed_dev_info, ptr, ptr, i64, i64, i8 }
%struct.qed_mcp_info = type { %struct.list_head, %struct.spinlock, i8, %struct.spinlock, i32, i32, i32, i32, i16, i16, %struct.qed_mcp_link_params, %struct.qed_mcp_link_state, %struct.qed_mcp_link_capabilities, %struct.qed_mcp_function_info, ptr, ptr, i16, i32, i32, %struct.atomic_t }
%struct.qed_mcp_link_params = type { %struct.qed_mcp_link_speed_params, %struct.qed_mcp_link_pause_params, i32, %struct.qed_link_eee_params, i32, %struct.qed_mcp_link_speed_params, i32 }
%struct.qed_mcp_link_pause_params = type { i8, i8, i8 }
%struct.qed_link_eee_params = type { i32, i8, i8, i8, i8 }
%struct.qed_mcp_link_speed_params = type { i8, i32, i32 }
%struct.qed_mcp_link_state = type { i8, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.qed_mcp_link_capabilities = type { i32, i8, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.qed_mcp_function_info = type { i8, i32, i8, i8, [6 x i8], i64, i64, i16, i16 }
%struct.qed_sp_init_data = type { i32, i16, i32, ptr }
%struct.qed_cxt_info = type { ptr, i32, i32 }
%struct.qed_spq_entry = type { %struct.list_head, i8, %struct.slow_path_element, %union.ramrod_data, i32, ptr, i32, %struct.qed_spq_comp_cb, %struct.qed_spq_comp_done, ptr }
%struct.slow_path_element = type { %struct.ramrod_header, %struct.regpair }
%struct.ramrod_header = type { i32, i8, i8, i16 }
%union.ramrod_data = type { %struct.iwarp_init_func_ramrod_data }
%struct.iwarp_init_func_ramrod_data = type { %struct.rdma_init_func_ramrod_data, %struct.tcp_init_params, %struct.iwarp_init_func_params }
%struct.rdma_init_func_ramrod_data = type { %struct.rdma_init_func_hdr, %struct.rdma_cnq_params, [128 x %struct.rdma_cnq_params] }
%struct.rdma_init_func_hdr = type { i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, i8, i8 }
%struct.rdma_cnq_params = type { i16, i8, i8, i32, %struct.regpair, i16, [6 x i8] }
%struct.tcp_init_params = type { i32, i16, i8, [9 x i8] }
%struct.iwarp_init_func_params = type { i8, [7 x i8] }
%struct.qed_spq_comp_cb = type { ptr, ptr }
%struct.qed_spq_comp_done = type { i32, i8 }
%struct.fcoe_conn_context = type { %struct.ystorm_fcoe_conn_st_ctx, %struct.pstorm_fcoe_conn_st_ctx, [2 x %struct.regpair], %struct.xstorm_fcoe_conn_st_ctx, %struct.xstorm_fcoe_conn_ag_ctx, [6 x %struct.regpair], %struct.ustorm_fcoe_conn_st_ctx, [2 x %struct.regpair], %struct.tstorm_fcoe_conn_ag_ctx, [2 x %struct.regpair], %struct.timers_context, %struct.ustorm_fcoe_conn_ag_ctx, %struct.tstorm_fcoe_conn_st_ctx, %struct.mstorm_fcoe_conn_ag_ctx, %struct.mstorm_fcoe_conn_st_ctx }
%struct.ystorm_fcoe_conn_st_ctx = type { i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, %struct.regpair, i16, i8, i8, i8, i8, i8, i8 }
%struct.pstorm_fcoe_conn_st_ctx = type { i8, i8, i8, i8, i16, i16, %struct.regpair, %struct.pstorm_fcoe_eth_context_section, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8 }
%struct.pstorm_fcoe_eth_context_section = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.fcoe_vlan_vif_field_union, i16, %union.fcoe_vlan_vif_field_union, i16 }
%union.fcoe_vlan_vif_field_union = type { %union.fcoe_vlan_field_union }
%union.fcoe_vlan_field_union = type { %struct.fcoe_vlan_fields }
%struct.fcoe_vlan_fields = type { i16 }
%struct.xstorm_fcoe_conn_st_ctx = type { i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i16, i16, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i8, i8, [2 x i8], [16 x %struct.fcoe_wqe] }
%struct.fcoe_wqe = type { i16, i16, %union.fcoe_additional_info_union }
%union.fcoe_additional_info_union = type { i32 }
%struct.xstorm_fcoe_conn_ag_ctx = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32 }
%struct.ustorm_fcoe_conn_st_ctx = type { %struct.regpair, i16, i8, i8, i16, [2 x i8] }
%struct.tstorm_fcoe_conn_ag_ctx = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ustorm_fcoe_conn_ag_ctx = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i16, i16 }
%struct.tstorm_fcoe_conn_st_ctx = type { i16, i16, i16, i8, i8, [2 x i32], i32, i16, i16, i8, i8, i8, i8, [4 x i8] }
%struct.mstorm_fcoe_conn_ag_ctx = type { i8, i8, i8, i8, i16, i16, i32, i32 }
%struct.mstorm_fcoe_conn_st_ctx = type { %struct.fcoe_mstorm_fcoe_conn_st_ctx_fp, %struct.fcoe_mstorm_fcoe_conn_st_ctx_non_fp }
%struct.fcoe_mstorm_fcoe_conn_st_ctx_fp = type { i16, i8, i8, i8, i8, [2 x i8] }
%struct.fcoe_mstorm_fcoe_conn_st_ctx_non_fp = type { i16, i16, i16, i8, i8, i16, i16, i8, [3 x i8], %struct.regpair, %struct.regpair, [3 x %struct.regpair] }
%struct.scsi_init_func_queues = type { %struct.regpair, i16, i16, i16, i8, i8, [64 x i16], i8, i8, i8, i8, [3 x i8], i8, [3 x %struct.regpair], [3 x i16], i16, [3 x i16], i16 }
%struct.qed_tid_mem = type { i32, i32, i32, [512 x ptr] }
%struct.qed_fcoe_tid = type { i32, i32, [512 x ptr] }
%struct.qed_hash_fcoe_con = type { %struct.hlist_node, ptr }
%struct.qed_fcoe_params_offload = type { i32, i32, i32, [6 x i8], [6 x i8], i16, i16, i16, i16, i16, %struct.fc_addr_nw, i8, %struct.fc_addr_nw, i8, i8 }
%struct.fcoe_conn_offload_ramrod_data = type { %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %struct.fc_addr_nw, i8, %struct.fc_addr_nw, i8, i16, i8, [5 x i8] }

@qed_fcoe_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]Failed to allocate qed_fcoe_info'\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qed_fcoe_alloc\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/qlogic/qed/qed_fcoe.c\00", [53 x i8] zeroinitializer }, align 32
@qed_fcoe_alloc._entry_ptr = internal global ptr @qed_fcoe_alloc._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_fcoe_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&p_hwfn->p_fcoe_info->lock\00", [37 x i8] zeroinitializer }, align 32
@qed_get_protocol_stats_fcoe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]Failed to collect FCoE statistics\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qed_get_protocol_stats_fcoe\00", [36 x i8] zeroinitializer }, align 32
@qed_get_protocol_stats_fcoe._entry_ptr = internal global ptr @qed_get_protocol_stats_fcoe._entry, section ".printk_index", align 4
@qed_fcoe_ops_pass = internal constant { %struct.qed_fcoe_ops, [52 x i8] } { %struct.qed_fcoe_ops { ptr @qed_common_ops_pass, ptr @qed_fill_fcoe_dev_info, ptr @qed_register_fcoe_ops, ptr @qed_ll2_ops_pass, ptr @qed_fcoe_start, ptr @qed_fcoe_stop, ptr @qed_fcoe_acquire_conn, ptr @qed_fcoe_release_conn, ptr @qed_fcoe_offload_conn, ptr @qed_fcoe_destroy_conn, ptr @qed_fcoe_stats }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_qed_get_fcoe_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_qed_get_fcoe_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_qed_get_fcoe_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qed_get_fcoe_ops to i32), ptr @__kstrtab_qed_get_fcoe_ops, ptr @__kstrtabns_qed_get_fcoe_ops }, section "___ksymtab+qed_get_fcoe_ops", align 4
@__kstrtab_qed_put_fcoe_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_qed_put_fcoe_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_qed_put_fcoe_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qed_put_fcoe_ops to i32), ptr @__kstrtab_qed_put_fcoe_ops, ptr @__kstrtabns_qed_put_fcoe_ops }, section "___ksymtab+qed_put_fcoe_ops", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qed_fcoe_get_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013[%s:%d(%s)]Failed to acquire ptt\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_fcoe_get_stats\00", [45 x i8] zeroinitializer }, align 32
@qed_fcoe_get_stats._entry_ptr = internal global ptr @qed_fcoe_get_stats._entry, section ".printk_index", align 4
@qed_common_ops_pass = external dso_local constant %struct.qed_common_ops, align 4
@qed_ll2_ops_pass = external dso_local constant %struct.qed_ll2_ops, align 4
@qed_fcoe_get_primary_bdq_prod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]BDQ is not allocated!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qed_fcoe_get_primary_bdq_prod\00", [34 x i8] zeroinitializer }, align 32
@qed_fcoe_get_primary_bdq_prod._entry_ptr = internal global ptr @qed_fcoe_get_primary_bdq_prod._entry, section ".printk_index", align 4
@qed_fcoe_get_secondary_bdq_prod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.11, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qed_fcoe_get_secondary_bdq_prod\00", [32 x i8] zeroinitializer }, align 32
@qed_fcoe_get_secondary_bdq_prod._entry_ptr = internal global ptr @qed_fcoe_get_secondary_bdq_prod._entry, section ".printk_index", align 4
@qed_fcoe_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]fcoe already started;\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qed_fcoe_start\00", [17 x i8] zeroinitializer }, align 32
@qed_fcoe_start._entry_ptr = internal global ptr @qed_fcoe_start._entry, section ".printk_index", align 4
@qed_fcoe_start._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]Failed to start fcoe\0A\00", [61 x i8] zeroinitializer }, align 32
@qed_fcoe_start._entry_ptr.16 = internal global ptr @qed_fcoe_start._entry.14, section ".printk_index", align 4
@qed_fcoe_start._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]Failed to allocate tasks information\0A\00", [45 x i8] zeroinitializer }, align 32
@qed_fcoe_start._entry_ptr.19 = internal global ptr @qed_fcoe_start._entry.17, section ".printk_index", align 4
@qed_fcoe_start._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]Failed to gather task information\0A\00", [48 x i8] zeroinitializer }, align 32
@qed_fcoe_start._entry_ptr.22 = internal global ptr @qed_fcoe_start._entry.20, section ".printk_index", align 4
@qed_sp_fcoe_func_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\013[%s:%d(%s)]Cannot satisfy CQ amount. CQs requested %d, CQs available %d. Aborting function start\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_sp_fcoe_func_start\00", [41 x i8] zeroinitializer }, align 32
@qed_sp_fcoe_func_start._entry_ptr = internal global ptr @qed_sp_fcoe_func_start._entry, section ".printk_index", align 4
@qed_sp_fcoe_func_start._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015[%s:%d(%s)]Cannot find context info for dummy cid=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@qed_sp_fcoe_func_start._entry_ptr.27 = internal global ptr @qed_sp_fcoe_func_start._entry.25, section ".printk_index", align 4
@qed_fcoe_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]fcoe already stopped\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qed_fcoe_stop\00", [18 x i8] zeroinitializer }, align 32
@qed_fcoe_stop._entry_ptr = internal global ptr @qed_fcoe_stop._entry, section ".printk_index", align 4
@qed_fcoe_stop._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015[%s:%d(%s)]Can't stop fcoe - not all connections were returned\0A\00", [62 x i8] zeroinitializer }, align 32
@qed_fcoe_stop._entry_ptr.32 = internal global ptr @qed_fcoe_stop._entry.30, section ".printk_index", align 4
@qed_fcoe_acquire_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]Failed to allocate hashed connection\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_fcoe_acquire_conn\00", [42 x i8] zeroinitializer }, align 32
@qed_fcoe_acquire_conn._entry_ptr = internal global ptr @qed_fcoe_acquire_conn._entry, section ".printk_index", align 4
@qed_fcoe_acquire_conn._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]Failed to acquire Connection\0A\00", [53 x i8] zeroinitializer }, align 32
@qed_fcoe_acquire_conn._entry_ptr.37 = internal global ptr @qed_fcoe_acquire_conn._entry.35, section ".printk_index", align 4
@qed_fcoe_release_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015[%s:%d(%s)]Failed to find connection for handle %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_fcoe_release_conn\00", [42 x i8] zeroinitializer }, align 32
@qed_fcoe_release_conn._entry_ptr = internal global ptr @qed_fcoe_release_conn._entry, section ".printk_index", align 4
@qed_fcoe_offload_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.40, ptr @.str.2, i32 912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_fcoe_offload_conn\00", [42 x i8] zeroinitializer }, align 32
@qed_fcoe_offload_conn._entry_ptr = internal global ptr @qed_fcoe_offload_conn._entry, section ".printk_index", align 4
@qed_fcoe_destroy_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.41, ptr @.str.2, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_fcoe_destroy_conn\00", [42 x i8] zeroinitializer }, align 32
@qed_fcoe_destroy_conn._entry_ptr = internal global ptr @qed_fcoe_destroy_conn._entry, section ".printk_index", align 4
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 540, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 555, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 989, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"qed_fcoe_ops_pass\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1013, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 705, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 514, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 528, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 804, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 811, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 823, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 831, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 121, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 140, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 776, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 781, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 859, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 867, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 890, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 911, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [46 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 963, i32 3 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__ksymtab_qed_get_fcoe_ops, ptr @__ksymtab_qed_put_fcoe_ops, ptr @qed_fcoe_acquire_conn._entry, ptr @qed_fcoe_acquire_conn._entry.35, ptr @qed_fcoe_acquire_conn._entry_ptr, ptr @qed_fcoe_acquire_conn._entry_ptr.37, ptr @qed_fcoe_alloc._entry, ptr @qed_fcoe_alloc._entry_ptr, ptr @qed_fcoe_destroy_conn._entry, ptr @qed_fcoe_destroy_conn._entry_ptr, ptr @qed_fcoe_get_primary_bdq_prod._entry, ptr @qed_fcoe_get_primary_bdq_prod._entry_ptr, ptr @qed_fcoe_get_secondary_bdq_prod._entry, ptr @qed_fcoe_get_secondary_bdq_prod._entry_ptr, ptr @qed_fcoe_get_stats._entry, ptr @qed_fcoe_get_stats._entry_ptr, ptr @qed_fcoe_offload_conn._entry, ptr @qed_fcoe_offload_conn._entry_ptr, ptr @qed_fcoe_release_conn._entry, ptr @qed_fcoe_release_conn._entry_ptr, ptr @qed_fcoe_start._entry, ptr @qed_fcoe_start._entry.14, ptr @qed_fcoe_start._entry.17, ptr @qed_fcoe_start._entry.20, ptr @qed_fcoe_start._entry_ptr, ptr @qed_fcoe_start._entry_ptr.16, ptr @qed_fcoe_start._entry_ptr.19, ptr @qed_fcoe_start._entry_ptr.22, ptr @qed_fcoe_stop._entry, ptr @qed_fcoe_stop._entry.30, ptr @qed_fcoe_stop._entry_ptr, ptr @qed_fcoe_stop._entry_ptr.32, ptr @qed_get_protocol_stats_fcoe._entry, ptr @qed_get_protocol_stats_fcoe._entry_ptr, ptr @qed_sp_fcoe_func_start._entry, ptr @qed_sp_fcoe_func_start._entry.25, ptr @qed_sp_fcoe_func_start._entry_ptr, ptr @qed_sp_fcoe_func_start._entry_ptr.27, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @qed_fcoe_setup.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @qed_fcoe_ops_pass, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fcoe_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fcoe_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_get_protocol_stats_fcoe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fcoe_ops_pass to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fcoe_get_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fcoe_get_primary_bdq_prod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fcoe_get_secondary_bdq_prod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fcoe_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fcoe_start._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fcoe_start._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fcoe_start._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_fcoe_func_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_fcoe_func_start._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fcoe_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fcoe_stop._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fcoe_acquire_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fcoe_acquire_conn._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fcoe_release_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fcoe_offload_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fcoe_destroy_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_fcoe_alloc(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 52) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp = icmp ult i8 %2, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !101

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull %spec.select) #12
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %free_list = getelementptr inbounds %struct.qed_fcoe_info, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i = getelementptr inbounds %struct.qed_fcoe_info, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %free_list, ptr %prev.i, align 8
  %p_fcoe_info13 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 35
  %5 = ptrtoint ptr %p_fcoe_info13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %p_fcoe_info13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -12, %do.end ], [ -12, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_fcoe_setup(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  %p_task_ctx = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_task_ctx) #8
  %0 = ptrtoint ptr %p_task_ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p_task_ctx, align 4
  %p_fcoe_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 35
  %1 = ptrtoint ptr %p_fcoe_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p_fcoe_info, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef nonnull @qed_fcoe_setup.__key, i16 noundef signext 3) #8
  %num_tasks = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 36, i32 1, i32 3
  %3 = ptrtoint ptr %num_tasks to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_tasks, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp37.not = icmp eq i16 %4, 0
  br i1 %cmp37.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call2 = call i32 @qed_cxt_get_task_ctx(ptr noundef %p_hwfn, i32 noundef %i.038, i8 noundef zeroext 0, ptr noundef nonnull %p_task_ctx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %p_task_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p_task_ctx, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 592)
  %timer_context = getelementptr inbounds %struct.fcoe_task_context, ptr %6, i32 0, i32 5
  %8 = ptrtoint ptr %timer_context to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %timer_context, align 4
  %logical_client_1 = getelementptr inbounds %struct.fcoe_task_context, ptr %6, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %logical_client_1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %logical_client_1, align 4
  %flags0 = getelementptr inbounds %struct.fcoe_task_context, ptr %6, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %flags0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %flags0, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.038, 1
  %11 = ptrtoint ptr %num_tasks to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_tasks, align 2
  %conv = zext i16 %12 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_task_ctx) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_cxt_get_task_ctx(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_fcoe_free(ptr nocapture noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %p_fcoe_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 35
  %0 = ptrtoint ptr %p_fcoe_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_fcoe_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %2 = ptrtoint ptr %p_fcoe_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_fcoe_info, align 4
  %free_list17 = getelementptr inbounds %struct.qed_fcoe_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %free_list17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %free_list17, align 4
  %cmp.i18 = icmp eq ptr %5, %free_list17
  %tobool5.not19 = icmp eq ptr %5, null
  %or.cond20 = or i1 %cmp.i18, %tobool5.not19
  br i1 %or.cond20, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.if.end7_crit_edge

while.cond.preheader.if.end7_crit_edge:           ; preds = %while.cond.preheader
  br label %if.end7

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end7:                                          ; preds = %qed_fcoe_free_connection.exit.if.end7_crit_edge, %while.cond.preheader.if.end7_crit_edge
  %6 = phi ptr [ %82, %qed_fcoe_free_connection.exit.if.end7_crit_edge ], [ %5, %while.cond.preheader.if.end7_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %6) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.if.end.i_crit_edge

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i, %if.end7.if.end.i_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %confq_pbl_addr_virt_addr.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %6, i32 0, i32 14
  %15 = ptrtoint ptr %confq_pbl_addr_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %confq_pbl_addr_virt_addr.i, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p_hwfn, align 8
  %pdev.i = getelementptr inbounds %struct.qed_dev, ptr %18, i32 0, i32 50
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %confq_pbl_addr.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %6, i32 0, i32 13
  %21 = ptrtoint ptr %confq_pbl_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %confq_pbl_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef nonnull %16, i32 noundef %22, i32 noundef 0) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %arrayidx.i = getelementptr %struct.qed_fcoe_conn, ptr %6, i32 0, i32 16, i32 0
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %24, null
  br i1 %tobool5.not.i, label %if.end4.i.for.inc.i_crit_edge, label %if.end7.i

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p_hwfn, align 8
  %pdev9.i = getelementptr inbounds %struct.qed_dev, ptr %26, i32 0, i32 50
  %27 = ptrtoint ptr %pdev9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev9.i, align 8
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %arrayidx13.i = getelementptr %struct.qed_fcoe_conn, ptr %6, i32 0, i32 15, i32 0
  %29 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx13.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev10.i, i32 noundef 4096, ptr noundef nonnull %24, i32 noundef %30, i32 noundef 0) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end7.i, %if.end4.i.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.qed_fcoe_conn, ptr %6, i32 0, i32 16, i32 1
  %31 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool5.not.1.i = icmp eq ptr %32, null
  br i1 %tobool5.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end7.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

if.end7.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p_hwfn, align 8
  %pdev9.1.i = getelementptr inbounds %struct.qed_dev, ptr %34, i32 0, i32 50
  %35 = ptrtoint ptr %pdev9.1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev9.1.i, align 8
  %dev10.1.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %arrayidx13.1.i = getelementptr %struct.qed_fcoe_conn, ptr %6, i32 0, i32 15, i32 1
  %37 = ptrtoint ptr %arrayidx13.1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx13.1.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev10.1.i, i32 noundef 4096, ptr noundef nonnull %32, i32 noundef %38, i32 noundef 0) #8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end7.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %xferq_pbl_addr_virt_addr.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %6, i32 0, i32 10
  %39 = ptrtoint ptr %xferq_pbl_addr_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xferq_pbl_addr_virt_addr.i, align 4
  %tobool14.not.i = icmp eq ptr %40, null
  br i1 %tobool14.not.i, label %for.inc.1.i.if.end20.i_crit_edge, label %if.then15.i

for.inc.1.i.if.end20.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then15.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p_hwfn, align 8
  %pdev17.i = getelementptr inbounds %struct.qed_dev, ptr %42, i32 0, i32 50
  %43 = ptrtoint ptr %pdev17.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev17.i, align 8
  %dev18.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %xferq_pbl_addr.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %6, i32 0, i32 9
  %45 = ptrtoint ptr %xferq_pbl_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %xferq_pbl_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev18.i, i32 noundef 4096, ptr noundef nonnull %40, i32 noundef %46, i32 noundef 0) #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then15.i, %for.inc.1.i.if.end20.i_crit_edge
  %arrayidx24.i = getelementptr %struct.qed_fcoe_conn, ptr %6, i32 0, i32 12, i32 0
  %47 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx24.i, align 4
  %tobool25.not.i = icmp eq ptr %48, null
  br i1 %tobool25.not.i, label %if.end20.i.for.inc34.i_crit_edge, label %if.end27.i

if.end20.i.for.inc34.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc34.i

if.end27.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %p_hwfn, align 8
  %pdev29.i = getelementptr inbounds %struct.qed_dev, ptr %50, i32 0, i32 50
  %51 = ptrtoint ptr %pdev29.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev29.i, align 8
  %dev30.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %arrayidx33.i = getelementptr %struct.qed_fcoe_conn, ptr %6, i32 0, i32 11, i32 0
  %53 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx33.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev30.i, i32 noundef 4096, ptr noundef nonnull %48, i32 noundef %54, i32 noundef 0) #8
  br label %for.inc34.i

for.inc34.i:                                      ; preds = %if.end27.i, %if.end20.i.for.inc34.i_crit_edge
  %arrayidx24.1.i = getelementptr %struct.qed_fcoe_conn, ptr %6, i32 0, i32 12, i32 1
  %55 = ptrtoint ptr %arrayidx24.1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx24.1.i, align 4
  %tobool25.not.1.i = icmp eq ptr %56, null
  br i1 %tobool25.not.1.i, label %for.inc34.i.for.inc34.1.i_crit_edge, label %if.end27.1.i

for.inc34.i.for.inc34.1.i_crit_edge:              ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc34.1.i

if.end27.1.i:                                     ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %p_hwfn, align 8
  %pdev29.1.i = getelementptr inbounds %struct.qed_dev, ptr %58, i32 0, i32 50
  %59 = ptrtoint ptr %pdev29.1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev29.1.i, align 8
  %dev30.1.i = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %arrayidx33.1.i = getelementptr %struct.qed_fcoe_conn, ptr %6, i32 0, i32 11, i32 1
  %61 = ptrtoint ptr %arrayidx33.1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx33.1.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev30.1.i, i32 noundef 4096, ptr noundef nonnull %56, i32 noundef %62, i32 noundef 0) #8
  br label %for.inc34.1.i

for.inc34.1.i:                                    ; preds = %if.end27.1.i, %for.inc34.i.for.inc34.1.i_crit_edge
  %arrayidx24.2.i = getelementptr %struct.qed_fcoe_conn, ptr %6, i32 0, i32 12, i32 2
  %63 = ptrtoint ptr %arrayidx24.2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx24.2.i, align 4
  %tobool25.not.2.i = icmp eq ptr %64, null
  br i1 %tobool25.not.2.i, label %for.inc34.1.i.for.inc34.2.i_crit_edge, label %if.end27.2.i

for.inc34.1.i.for.inc34.2.i_crit_edge:            ; preds = %for.inc34.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc34.2.i

if.end27.2.i:                                     ; preds = %for.inc34.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %p_hwfn, align 8
  %pdev29.2.i = getelementptr inbounds %struct.qed_dev, ptr %66, i32 0, i32 50
  %67 = ptrtoint ptr %pdev29.2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev29.2.i, align 8
  %dev30.2.i = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  %arrayidx33.2.i = getelementptr %struct.qed_fcoe_conn, ptr %6, i32 0, i32 11, i32 2
  %69 = ptrtoint ptr %arrayidx33.2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx33.2.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev30.2.i, i32 noundef 4096, ptr noundef nonnull %64, i32 noundef %70, i32 noundef 0) #8
  br label %for.inc34.2.i

for.inc34.2.i:                                    ; preds = %if.end27.2.i, %for.inc34.1.i.for.inc34.2.i_crit_edge
  %arrayidx24.3.i = getelementptr %struct.qed_fcoe_conn, ptr %6, i32 0, i32 12, i32 3
  %71 = ptrtoint ptr %arrayidx24.3.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx24.3.i, align 4
  %tobool25.not.3.i = icmp eq ptr %72, null
  br i1 %tobool25.not.3.i, label %for.inc34.2.i.qed_fcoe_free_connection.exit_crit_edge, label %if.end27.3.i

for.inc34.2.i.qed_fcoe_free_connection.exit_crit_edge: ; preds = %for.inc34.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_fcoe_free_connection.exit

if.end27.3.i:                                     ; preds = %for.inc34.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %p_hwfn, align 8
  %pdev29.3.i = getelementptr inbounds %struct.qed_dev, ptr %74, i32 0, i32 50
  %75 = ptrtoint ptr %pdev29.3.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev29.3.i, align 8
  %dev30.3.i = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  %arrayidx33.3.i = getelementptr %struct.qed_fcoe_conn, ptr %6, i32 0, i32 11, i32 3
  %77 = ptrtoint ptr %arrayidx33.3.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx33.3.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev30.3.i, i32 noundef 4096, ptr noundef nonnull %72, i32 noundef %78, i32 noundef 0) #8
  br label %qed_fcoe_free_connection.exit

qed_fcoe_free_connection.exit:                    ; preds = %if.end27.3.i, %for.inc34.2.i.qed_fcoe_free_connection.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %6) #8
  %79 = ptrtoint ptr %p_fcoe_info to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %p_fcoe_info, align 4
  %free_list = getelementptr inbounds %struct.qed_fcoe_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %free_list, align 4
  %cmp.i = icmp eq ptr %82, %free_list
  %tobool5.not = icmp eq ptr %82, null
  %or.cond = or i1 %cmp.i, %tobool5.not
  br i1 %or.cond, label %qed_fcoe_free_connection.exit.while.end_crit_edge, label %qed_fcoe_free_connection.exit.if.end7_crit_edge

qed_fcoe_free_connection.exit.if.end7_crit_edge:  ; preds = %qed_fcoe_free_connection.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

qed_fcoe_free_connection.exit.while.end_crit_edge: ; preds = %qed_fcoe_free_connection.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %qed_fcoe_free_connection.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %.lcssa = phi ptr [ %3, %while.cond.preheader.while.end_crit_edge ], [ %80, %qed_fcoe_free_connection.exit.while.end_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa) #8
  %83 = ptrtoint ptr %p_fcoe_info to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %p_fcoe_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_get_protocol_stats_fcoe(ptr noundef %cdev, ptr nocapture noundef writeonly %stats) local_unnamed_addr #0 align 64 {
entry:
  %proto_stats = alloca %struct.qed_fcoe_stats, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %proto_stats) #8
  %0 = call ptr @memset(ptr %proto_stats, i32 0, i32 88)
  %call = call i32 @qed_fcoe_stats(ptr noundef %cdev, ptr noundef nonnull %proto_stats)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end13, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %land.rhs, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %3 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cdev, align 8
  %and = and i32 %4, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.rhs.cleanup_crit_edge, label %do.end, !prof !102

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.3, ptr %name
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 990, ptr noundef nonnull %spec.select) #12
  br label %cleanup

if.end13:                                         ; preds = %entry
  %fcoe_rx_data_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %proto_stats, i32 0, i32 1
  %5 = ptrtoint ptr %fcoe_rx_data_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fcoe_rx_data_pkt_cnt, align 8
  %fcoe_rx_xfer_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %proto_stats, i32 0, i32 2
  %7 = ptrtoint ptr %fcoe_rx_xfer_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fcoe_rx_xfer_pkt_cnt, align 8
  %add = add i64 %8, %6
  %fcoe_rx_other_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %proto_stats, i32 0, i32 3
  %9 = ptrtoint ptr %fcoe_rx_other_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fcoe_rx_other_pkt_cnt, align 8
  %add14 = add i64 %add, %10
  %11 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add14, ptr %stats, align 8
  %fcoe_tx_data_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %proto_stats, i32 0, i32 10
  %12 = ptrtoint ptr %fcoe_tx_data_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fcoe_tx_data_pkt_cnt, align 8
  %fcoe_tx_xfer_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %proto_stats, i32 0, i32 11
  %14 = ptrtoint ptr %fcoe_tx_xfer_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %fcoe_tx_xfer_pkt_cnt, align 8
  %add15 = add i64 %15, %13
  %fcoe_tx_other_pkt_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %proto_stats, i32 0, i32 12
  %16 = ptrtoint ptr %fcoe_tx_other_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fcoe_tx_other_pkt_cnt, align 8
  %add16 = add i64 %add15, %17
  %tx_pkts = getelementptr inbounds %struct.qed_mcp_fcoe_stats, ptr %stats, i32 0, i32 1
  %18 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add16, ptr %tx_pkts, align 8
  %fcoe_silent_drop_pkt_crc_error_cnt = getelementptr inbounds %struct.qed_fcoe_stats, ptr %proto_stats, i32 0, i32 6
  %19 = ptrtoint ptr %fcoe_silent_drop_pkt_crc_error_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fcoe_silent_drop_pkt_crc_error_cnt, align 8
  %fcs_err = getelementptr inbounds %struct.qed_mcp_fcoe_stats, ptr %stats, i32 0, i32 2
  %21 = ptrtoint ptr %fcs_err to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %fcs_err, align 8
  %protocol_ops = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 56
  %22 = ptrtoint ptr %protocol_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %protocol_ops, align 8
  %tobool17.not = icmp eq ptr %23, null
  br i1 %tobool17.not, label %if.end13.cleanup_crit_edge, label %land.lhs.true

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end13
  %ops_cookie = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 57
  %24 = ptrtoint ptr %ops_cookie to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops_cookie, align 4
  %tobool18.not = icmp eq ptr %25, null
  br i1 %tobool18.not, label %land.lhs.true.cleanup_crit_edge, label %if.then19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true
  %get_login_failures = getelementptr inbounds %struct.qed_fcoe_cb_ops, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %get_login_failures to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_login_failures, align 4
  %tobool22.not = icmp eq ptr %27, null
  br i1 %tobool22.not, label %if.then19.cleanup_crit_edge, label %if.then23

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = tail call i32 %27(ptr noundef nonnull %25) #8
  %login_failure = getelementptr inbounds %struct.qed_mcp_fcoe_stats, ptr %stats, i32 0, i32 3
  %28 = ptrtoint ptr %login_failure to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call25, ptr %login_failure, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.then19.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %proto_stats) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_fcoe_stats(ptr noundef %cdev, ptr nocapture noundef writeonly %stats) #0 align 64 {
entry:
  %pstats.i.i = alloca %struct.fcoe_tx_stat, align 4
  %tstats.i.i = alloca %struct.fcoe_rx_stat, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %0 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_info, align 8
  %.off = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %2 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %2)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  %3 = call ptr @memset(ptr %stats, i32 0, i32 88)
  %call.i = tail call ptr @qed_ptt_acquire(ptr noundef %cond) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 705, ptr noundef nonnull %name.i) #12
  br label %qed_fcoe_get_stats.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tstats.i.i) #8
  %4 = call ptr @memset(ptr %tstats.i.i, i32 0, i32 56)
  %5 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cond, align 8
  %iro_arr.i.i = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 31
  %7 = ptrtoint ptr %iro_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iro_arr.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.iro, ptr %8, i32 53
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %rel_pf_id.i.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 2
  %11 = ptrtoint ptr %rel_pf_id.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rel_pf_id.i.i, align 1
  %conv.i.i = zext i8 %12 to i32
  %m1.i.i = getelementptr %struct.iro, ptr %8, i32 53, i32 1
  %13 = ptrtoint ptr %m1.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %m1.i.i, align 4
  %conv4.i.i = zext i16 %14 to i32
  %mul.i.i = mul nuw nsw i32 %conv4.i.i, %conv.i.i
  %add.i.i = add i32 %10, 29884416
  %add5.i.i = add i32 %add.i.i, %mul.i.i
  call void @qed_memcpy_from(ptr noundef %cond, ptr noundef nonnull %call.i, ptr noundef nonnull %tstats.i.i, i32 noundef %add5.i.i, i32 noundef 56) #8
  %15 = ptrtoint ptr %tstats.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %__regpair.sroa.0.0.copyload.i.i = load i32, ptr %tstats.i.i, align 4
  %__regpair.sroa.5.0.fcoe_rx_byte_cnt.sroa_idx.i.i = getelementptr inbounds i8, ptr %tstats.i.i, i32 4
  %16 = ptrtoint ptr %__regpair.sroa.5.0.fcoe_rx_byte_cnt.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %__regpair.sroa.5.0.copyload.i.i = load i32, ptr %__regpair.sroa.5.0.fcoe_rx_byte_cnt.sroa_idx.i.i, align 4
  %17 = zext i32 %__regpair.sroa.5.0.copyload.i.i to i64
  %18 = zext i32 %__regpair.sroa.0.0.copyload.i.i to i64
  %19 = shl nuw i64 %18, 32
  %20 = or i64 %19, %17
  %21 = call i64 @llvm.bswap.i64(i64 %20) #8
  %22 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %stats, align 8
  %fcoe_rx_data_pkt_cnt.i.i = getelementptr inbounds %struct.fcoe_rx_stat, ptr %tstats.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %fcoe_rx_data_pkt_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %__regpair10.sroa.0.0.copyload.i.i = load i32, ptr %fcoe_rx_data_pkt_cnt.i.i, align 4
  %__regpair10.sroa.5.0.fcoe_rx_data_pkt_cnt.sroa_idx.i.i = getelementptr inbounds %struct.fcoe_rx_stat, ptr %tstats.i.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %__regpair10.sroa.5.0.fcoe_rx_data_pkt_cnt.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %__regpair10.sroa.5.0.copyload.i.i = load i32, ptr %__regpair10.sroa.5.0.fcoe_rx_data_pkt_cnt.sroa_idx.i.i, align 4
  %25 = zext i32 %__regpair10.sroa.5.0.copyload.i.i to i64
  %26 = zext i32 %__regpair10.sroa.0.0.copyload.i.i to i64
  %27 = shl nuw i64 %26, 32
  %28 = or i64 %27, %25
  %29 = call i64 @llvm.bswap.i64(i64 %28) #8
  %fcoe_rx_data_pkt_cnt18.i.i = getelementptr inbounds %struct.qed_fcoe_stats, ptr %stats, i32 0, i32 1
  %30 = ptrtoint ptr %fcoe_rx_data_pkt_cnt18.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %fcoe_rx_data_pkt_cnt18.i.i, align 8
  %fcoe_rx_xfer_pkt_cnt.i.i = getelementptr inbounds %struct.fcoe_rx_stat, ptr %tstats.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %fcoe_rx_xfer_pkt_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %__regpair19.sroa.0.0.copyload.i.i = load i32, ptr %fcoe_rx_xfer_pkt_cnt.i.i, align 4
  %__regpair19.sroa.5.0.fcoe_rx_xfer_pkt_cnt.sroa_idx.i.i = getelementptr inbounds %struct.fcoe_rx_stat, ptr %tstats.i.i, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %__regpair19.sroa.5.0.fcoe_rx_xfer_pkt_cnt.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %__regpair19.sroa.5.0.copyload.i.i = load i32, ptr %__regpair19.sroa.5.0.fcoe_rx_xfer_pkt_cnt.sroa_idx.i.i, align 4
  %33 = zext i32 %__regpair19.sroa.5.0.copyload.i.i to i64
  %34 = zext i32 %__regpair19.sroa.0.0.copyload.i.i to i64
  %35 = shl nuw i64 %34, 32
  %36 = or i64 %35, %33
  %37 = call i64 @llvm.bswap.i64(i64 %36) #8
  %fcoe_rx_xfer_pkt_cnt27.i.i = getelementptr inbounds %struct.qed_fcoe_stats, ptr %stats, i32 0, i32 2
  %38 = ptrtoint ptr %fcoe_rx_xfer_pkt_cnt27.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %fcoe_rx_xfer_pkt_cnt27.i.i, align 8
  %fcoe_rx_other_pkt_cnt.i.i = getelementptr inbounds %struct.fcoe_rx_stat, ptr %tstats.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %fcoe_rx_other_pkt_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %__regpair28.sroa.0.0.copyload.i.i = load i32, ptr %fcoe_rx_other_pkt_cnt.i.i, align 4
  %__regpair28.sroa.5.0.fcoe_rx_other_pkt_cnt.sroa_idx.i.i = getelementptr inbounds %struct.fcoe_rx_stat, ptr %tstats.i.i, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %__regpair28.sroa.5.0.fcoe_rx_other_pkt_cnt.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %__regpair28.sroa.5.0.copyload.i.i = load i32, ptr %__regpair28.sroa.5.0.fcoe_rx_other_pkt_cnt.sroa_idx.i.i, align 4
  %41 = zext i32 %__regpair28.sroa.5.0.copyload.i.i to i64
  %42 = zext i32 %__regpair28.sroa.0.0.copyload.i.i to i64
  %43 = shl nuw i64 %42, 32
  %44 = or i64 %43, %41
  %45 = call i64 @llvm.bswap.i64(i64 %44) #8
  %fcoe_rx_other_pkt_cnt36.i.i = getelementptr inbounds %struct.qed_fcoe_stats, ptr %stats, i32 0, i32 3
  %46 = ptrtoint ptr %fcoe_rx_other_pkt_cnt36.i.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %fcoe_rx_other_pkt_cnt36.i.i, align 8
  %fcoe_silent_drop_pkt_cmdq_full_cnt.i.i = getelementptr inbounds %struct.fcoe_rx_stat, ptr %tstats.i.i, i32 0, i32 4
  %47 = ptrtoint ptr %fcoe_silent_drop_pkt_cmdq_full_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fcoe_silent_drop_pkt_cmdq_full_cnt.i.i, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48) #8
  %fcoe_silent_drop_pkt_cmdq_full_cnt37.i.i = getelementptr inbounds %struct.qed_fcoe_stats, ptr %stats, i32 0, i32 4
  %50 = ptrtoint ptr %fcoe_silent_drop_pkt_cmdq_full_cnt37.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %fcoe_silent_drop_pkt_cmdq_full_cnt37.i.i, align 8
  %fcoe_silent_drop_pkt_rq_full_cnt.i.i = getelementptr inbounds %struct.fcoe_rx_stat, ptr %tstats.i.i, i32 0, i32 5
  %51 = ptrtoint ptr %fcoe_silent_drop_pkt_rq_full_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fcoe_silent_drop_pkt_rq_full_cnt.i.i, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52) #8
  %fcoe_silent_drop_pkt_rq_full_cnt38.i.i = getelementptr inbounds %struct.qed_fcoe_stats, ptr %stats, i32 0, i32 5
  %54 = ptrtoint ptr %fcoe_silent_drop_pkt_rq_full_cnt38.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %fcoe_silent_drop_pkt_rq_full_cnt38.i.i, align 4
  %fcoe_silent_drop_pkt_crc_error_cnt.i.i = getelementptr inbounds %struct.fcoe_rx_stat, ptr %tstats.i.i, i32 0, i32 6
  %55 = ptrtoint ptr %fcoe_silent_drop_pkt_crc_error_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fcoe_silent_drop_pkt_crc_error_cnt.i.i, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56) #8
  %fcoe_silent_drop_pkt_crc_error_cnt39.i.i = getelementptr inbounds %struct.qed_fcoe_stats, ptr %stats, i32 0, i32 6
  %58 = ptrtoint ptr %fcoe_silent_drop_pkt_crc_error_cnt39.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %fcoe_silent_drop_pkt_crc_error_cnt39.i.i, align 8
  %fcoe_silent_drop_pkt_task_invalid_cnt.i.i = getelementptr inbounds %struct.fcoe_rx_stat, ptr %tstats.i.i, i32 0, i32 7
  %59 = ptrtoint ptr %fcoe_silent_drop_pkt_task_invalid_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fcoe_silent_drop_pkt_task_invalid_cnt.i.i, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60) #8
  %fcoe_silent_drop_pkt_task_invalid_cnt40.i.i = getelementptr inbounds %struct.qed_fcoe_stats, ptr %stats, i32 0, i32 7
  %62 = ptrtoint ptr %fcoe_silent_drop_pkt_task_invalid_cnt40.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %fcoe_silent_drop_pkt_task_invalid_cnt40.i.i, align 4
  %fcoe_silent_drop_total_pkt_cnt.i.i = getelementptr inbounds %struct.fcoe_rx_stat, ptr %tstats.i.i, i32 0, i32 8
  %63 = ptrtoint ptr %fcoe_silent_drop_total_pkt_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fcoe_silent_drop_total_pkt_cnt.i.i, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64) #8
  %fcoe_silent_drop_total_pkt_cnt41.i.i = getelementptr inbounds %struct.qed_fcoe_stats, ptr %stats, i32 0, i32 8
  %66 = ptrtoint ptr %fcoe_silent_drop_total_pkt_cnt41.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %fcoe_silent_drop_total_pkt_cnt41.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tstats.i.i) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pstats.i.i) #8
  %67 = getelementptr inbounds %struct.regpair, ptr %pstats.i.i, i32 0, i32 1
  %68 = getelementptr inbounds %struct.fcoe_tx_stat, ptr %pstats.i.i, i32 0, i32 1
  %69 = getelementptr inbounds %struct.fcoe_tx_stat, ptr %pstats.i.i, i32 0, i32 1, i32 1
  %70 = getelementptr inbounds %struct.fcoe_tx_stat, ptr %pstats.i.i, i32 0, i32 2
  %71 = getelementptr inbounds %struct.fcoe_tx_stat, ptr %pstats.i.i, i32 0, i32 2, i32 1
  %72 = getelementptr inbounds %struct.fcoe_tx_stat, ptr %pstats.i.i, i32 0, i32 3
  %73 = getelementptr inbounds %struct.fcoe_tx_stat, ptr %pstats.i.i, i32 0, i32 3, i32 1
  %74 = call ptr @memset(ptr %pstats.i.i, i32 0, i32 32)
  %75 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cond, align 8
  %iro_arr.i18.i = getelementptr inbounds %struct.qed_dev, ptr %76, i32 0, i32 31
  %77 = ptrtoint ptr %iro_arr.i18.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %iro_arr.i18.i, align 8
  %arrayidx.i19.i = getelementptr %struct.iro, ptr %78, i32 54
  %79 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i19.i, align 4
  %81 = ptrtoint ptr %rel_pf_id.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %rel_pf_id.i.i, align 1
  %conv.i21.i = zext i8 %82 to i32
  %m1.i22.i = getelementptr %struct.iro, ptr %78, i32 54, i32 1
  %83 = ptrtoint ptr %m1.i22.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %m1.i22.i, align 4
  %conv4.i23.i = zext i16 %84 to i32
  %mul.i24.i = mul nuw nsw i32 %conv4.i23.i, %conv.i21.i
  %add.i25.i = add i32 %80, 32505856
  %add5.i26.i = add i32 %add.i25.i, %mul.i24.i
  call void @qed_memcpy_from(ptr noundef %cond, ptr noundef nonnull %call.i, ptr noundef nonnull %pstats.i.i, i32 noundef %add5.i26.i, i32 noundef 32) #8
  %85 = ptrtoint ptr %pstats.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %__regpair.sroa.0.0.copyload.i27.i = load i32, ptr %pstats.i.i, align 4
  %86 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %86)
  %__regpair.sroa.5.0.copyload.i28.i = load i32, ptr %67, align 4
  %87 = zext i32 %__regpair.sroa.5.0.copyload.i28.i to i64
  %88 = zext i32 %__regpair.sroa.0.0.copyload.i27.i to i64
  %89 = shl nuw i64 %88, 32
  %90 = or i64 %89, %87
  %91 = call i64 @llvm.bswap.i64(i64 %90) #8
  %fcoe_tx_byte_cnt9.i.i = getelementptr inbounds %struct.qed_fcoe_stats, ptr %stats, i32 0, i32 9
  %92 = ptrtoint ptr %fcoe_tx_byte_cnt9.i.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %fcoe_tx_byte_cnt9.i.i, align 8
  %93 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %93)
  %__regpair10.sroa.0.0.copyload.i29.i = load i32, ptr %68, align 4
  %94 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %94)
  %__regpair10.sroa.5.0.copyload.i30.i = load i32, ptr %69, align 4
  %95 = zext i32 %__regpair10.sroa.5.0.copyload.i30.i to i64
  %96 = zext i32 %__regpair10.sroa.0.0.copyload.i29.i to i64
  %97 = shl nuw i64 %96, 32
  %98 = or i64 %97, %95
  %99 = call i64 @llvm.bswap.i64(i64 %98) #8
  %fcoe_tx_data_pkt_cnt18.i.i = getelementptr inbounds %struct.qed_fcoe_stats, ptr %stats, i32 0, i32 10
  %100 = ptrtoint ptr %fcoe_tx_data_pkt_cnt18.i.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %fcoe_tx_data_pkt_cnt18.i.i, align 8
  %101 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %101)
  %__regpair19.sroa.0.0.copyload.i31.i = load i32, ptr %70, align 4
  %102 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %102)
  %__regpair19.sroa.5.0.copyload.i32.i = load i32, ptr %71, align 4
  %103 = zext i32 %__regpair19.sroa.5.0.copyload.i32.i to i64
  %104 = zext i32 %__regpair19.sroa.0.0.copyload.i31.i to i64
  %105 = shl nuw i64 %104, 32
  %106 = or i64 %105, %103
  %107 = call i64 @llvm.bswap.i64(i64 %106) #8
  %fcoe_tx_xfer_pkt_cnt27.i.i = getelementptr inbounds %struct.qed_fcoe_stats, ptr %stats, i32 0, i32 11
  %108 = ptrtoint ptr %fcoe_tx_xfer_pkt_cnt27.i.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %107, ptr %fcoe_tx_xfer_pkt_cnt27.i.i, align 8
  %109 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %109)
  %__regpair28.sroa.0.0.copyload.i33.i = load i32, ptr %72, align 4
  %110 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %110)
  %__regpair28.sroa.5.0.copyload.i34.i = load i32, ptr %73, align 4
  %111 = zext i32 %__regpair28.sroa.5.0.copyload.i34.i to i64
  %112 = zext i32 %__regpair28.sroa.0.0.copyload.i33.i to i64
  %113 = shl nuw i64 %112, 32
  %114 = or i64 %113, %111
  %115 = call i64 @llvm.bswap.i64(i64 %114) #8
  %fcoe_tx_other_pkt_cnt36.i.i = getelementptr inbounds %struct.qed_fcoe_stats, ptr %stats, i32 0, i32 12
  %116 = ptrtoint ptr %fcoe_tx_other_pkt_cnt36.i.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %115, ptr %fcoe_tx_other_pkt_cnt36.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pstats.i.i) #8
  call void @qed_ptt_release(ptr noundef %cond, ptr noundef nonnull %call.i) #8
  br label %qed_fcoe_get_stats.exit

qed_fcoe_get_stats.exit:                          ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %do.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @qed_get_fcoe_ops() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @qed_fcoe_ops_pass
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_put_fcoe_ops() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_ptt_acquire(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ptt_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_memcpy_from(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_fill_fcoe_dev_info(ptr noundef %cdev, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %0 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_info, align 8
  %.off = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %2 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %2)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  %3 = call ptr @memset(ptr %info, i32 0, i32 96)
  %call = tail call i32 @qed_fill_dev_info(ptr noundef %cdev, ptr noundef %info) #8
  %arrayidx.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 2, i32 14
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regview.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 12
  %6 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regview.i, align 4
  %8 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cond, align 8
  %iro_arr.i = getelementptr inbounds %struct.qed_dev, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iro_arr.i, align 8
  %arrayidx1.i = getelementptr %struct.iro, ptr %11, i32 46
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx3.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 1, i32 14
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3.i, align 4
  %m1.i = getelementptr %struct.iro, ptr %11, i32 46, i32 1
  %16 = ptrtoint ptr %m1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %m1.i, align 4
  %conv.i = zext i16 %17 to i32
  %mul.i = mul i32 %15, %conv.i
  %add.i = add i32 %13, 69632
  %add14.i = add i32 %add.i, %mul.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add14.i
  br label %qed_fcoe_get_primary_bdq_prod.exit

do.body.i:                                        ; preds = %entry
  %dp_level.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 7
  %18 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp.i = icmp ult i8 %19, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.qed_fcoe_get_primary_bdq_prod.exit_crit_edge, !prof !101

do.body.i.qed_fcoe_get_primary_bdq_prod.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_fcoe_get_primary_bdq_prod.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 514, ptr noundef nonnull %name.i) #12
  br label %qed_fcoe_get_primary_bdq_prod.exit

qed_fcoe_get_primary_bdq_prod.exit:               ; preds = %do.end.i, %do.body.i.qed_fcoe_get_primary_bdq_prod.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %do.body.i.qed_fcoe_get_primary_bdq_prod.exit_crit_edge ], [ null, %do.end.i ]
  %primary_dbq_rq_addr = getelementptr inbounds %struct.qed_dev_fcoe_info, ptr %info, i32 0, i32 1
  %20 = ptrtoint ptr %primary_dbq_rq_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %retval.0.i, ptr %primary_dbq_rq_addr, align 4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i34 = icmp eq i32 %22, 0
  br i1 %tobool.not.i34, label %do.body.i48, label %if.then.i45

if.then.i45:                                      ; preds = %qed_fcoe_get_primary_bdq_prod.exit
  call void @__sanitizer_cov_trace_pc() #10
  %regview.i35 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 12
  %23 = ptrtoint ptr %regview.i35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regview.i35, align 4
  %25 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cond, align 8
  %iro_arr.i36 = getelementptr inbounds %struct.qed_dev, ptr %26, i32 0, i32 31
  %27 = ptrtoint ptr %iro_arr.i36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iro_arr.i36, align 8
  %arrayidx1.i37 = getelementptr %struct.iro, ptr %28, i32 45
  %29 = ptrtoint ptr %arrayidx1.i37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx1.i37, align 4
  %arrayidx3.i38 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 1, i32 14
  %31 = ptrtoint ptr %arrayidx3.i38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx3.i38, align 4
  %m1.i39 = getelementptr %struct.iro, ptr %28, i32 45, i32 1
  %33 = ptrtoint ptr %m1.i39 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %m1.i39, align 4
  %conv.i40 = zext i16 %34 to i32
  %mul.i41 = mul i32 %32, %conv.i40
  %add.i42 = add i32 %30, 65536
  %add14.i43 = add i32 %add.i42, %mul.i41
  %add.ptr.i44 = getelementptr i8, ptr %24, i32 %add14.i43
  br label %qed_fcoe_get_secondary_bdq_prod.exit

do.body.i48:                                      ; preds = %qed_fcoe_get_primary_bdq_prod.exit
  %dp_level.i46 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 7
  %35 = ptrtoint ptr %dp_level.i46 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dp_level.i46, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp.i47 = icmp ult i8 %36, 3
  br i1 %cmp.i47, label %do.end.i51, label %do.body.i48.qed_fcoe_get_secondary_bdq_prod.exit_crit_edge, !prof !101

do.body.i48.qed_fcoe_get_secondary_bdq_prod.exit_crit_edge: ; preds = %do.body.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_fcoe_get_secondary_bdq_prod.exit

do.end.i51:                                       ; preds = %do.body.i48
  call void @__sanitizer_cov_trace_pc() #10
  %name.i49 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 8
  %call.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef 528, ptr noundef nonnull %name.i49) #12
  br label %qed_fcoe_get_secondary_bdq_prod.exit

qed_fcoe_get_secondary_bdq_prod.exit:             ; preds = %do.end.i51, %do.body.i48.qed_fcoe_get_secondary_bdq_prod.exit_crit_edge, %if.then.i45
  %retval.0.i52 = phi ptr [ %add.ptr.i44, %if.then.i45 ], [ null, %do.body.i48.qed_fcoe_get_secondary_bdq_prod.exit_crit_edge ], [ null, %do.end.i51 ]
  %secondary_bdq_rq_addr = getelementptr inbounds %struct.qed_dev_fcoe_info, ptr %info, i32 0, i32 2
  %37 = ptrtoint ptr %secondary_bdq_rq_addr to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i52, ptr %secondary_bdq_rq_addr, align 8
  %mcp_info = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 45
  %38 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mcp_info, align 8
  %wwn_port = getelementptr inbounds %struct.qed_mcp_info, ptr %39, i32 0, i32 13, i32 5
  %40 = ptrtoint ptr %wwn_port to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %wwn_port, align 8
  %wwpn = getelementptr inbounds %struct.qed_dev_fcoe_info, ptr %info, i32 0, i32 3
  %42 = ptrtoint ptr %wwpn to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %wwpn, align 8
  %43 = load ptr, ptr %mcp_info, align 8
  %wwn_node = getelementptr inbounds %struct.qed_mcp_info, ptr %43, i32 0, i32 13, i32 6
  %44 = ptrtoint ptr %wwn_node to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %wwn_node, align 8
  %wwnn = getelementptr inbounds %struct.qed_dev_fcoe_info, ptr %info, i32 0, i32 4
  %46 = ptrtoint ptr %wwnn to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %wwnn, align 8
  %arrayidx16 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 3, i32 5
  %47 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx16, align 4
  %conv = trunc i32 %48 to i8
  %num_cqs = getelementptr inbounds %struct.qed_dev_fcoe_info, ptr %info, i32 0, i32 5
  %49 = ptrtoint ptr %num_cqs to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv, ptr %num_cqs, align 8
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @qed_register_fcoe_ops(ptr nocapture noundef writeonly %cdev, ptr noundef %ops, ptr noundef %cookie) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol_ops = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 56
  %0 = ptrtoint ptr %protocol_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ops, ptr %protocol_ops, align 8
  %ops_cookie = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 57
  %1 = ptrtoint ptr %ops_cookie to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cookie, ptr %ops_cookie, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_fcoe_start(ptr noundef %cdev, ptr noundef writeonly %tasks) #0 align 64 {
entry:
  %p_ent.i = alloca ptr, align 4
  %init_data.i = alloca %struct.qed_sp_init_data, align 4
  %cxt_info.i = alloca %struct.qed_cxt_info, align 4
  %dummy_cid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 51
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup164_crit_edge, !prof !101

do.body.cleanup164_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup164

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 804, ptr noundef nonnull %spec.select) #12
  br label %cleanup164

if.end11:                                         ; preds = %entry
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %4 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_info, align 8
  %.off = add i32 %5, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %6 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %6)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond28 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i) #8
  %7 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %p_ent.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cxt_info.i) #8
  %8 = ptrtoint ptr %cxt_info.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %cxt_info.i, align 4, !annotation !103
  %9 = getelementptr inbounds %struct.qed_cxt_info, ptr %cxt_info.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !103
  %11 = getelementptr inbounds %struct.qed_cxt_info, ptr %cxt_info.i, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy_cid.i) #8
  %13 = ptrtoint ptr %dummy_cid.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %dummy_cid.i, align 4, !annotation !103
  %14 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %14, align 4
  %call.i = tail call i32 @qed_spq_get_cid(ptr noundef %cond28) #8
  %16 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i, ptr %init_data.i, align 4
  %opaque_fid.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 10
  %17 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %opaque_fid.i, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %14, align 4
  %comp_mode2.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 2
  %20 = ptrtoint ptr %comp_mode2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %comp_mode2.i, align 4
  %p_comp_data.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 3
  %21 = ptrtoint ptr %p_comp_data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %p_comp_data.i, align 4
  %call3.i = call i32 @qed_sp_init_request(ptr noundef %cond28, ptr noundef nonnull %p_ent.i, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %init_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.qed_sp_fcoe_func_start.exit.thread_crit_edge

if.end11.qed_sp_fcoe_func_start.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_sp_fcoe_func_start.exit.thread

if.end.i:                                         ; preds = %if.end11
  %22 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p_ent.i, align 4
  %ramrod.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3
  %fcoe_pf_params4.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1
  %num_cqs.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 13
  %24 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_cqs.i, align 2
  %conv.i = zext i8 %25 to i32
  %arrayidx.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 3, i32 5
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv.i)
  %cmp.i = icmp ult i32 %27, %conv.i
  br i1 %cmp.i, label %do.end.i, label %if.end21.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 8
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 124, ptr noundef nonnull %name.i, i32 noundef %conv.i, i32 noundef %27) #12
  br label %err.i

if.end21.i:                                       ; preds = %if.end.i
  %mtu.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 8
  %28 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mtu.i, align 4
  %30 = call i16 @llvm.bswap.i16(i16 %29) #8
  %mtu22.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 2, i32 7
  %31 = ptrtoint ptr %mtu22.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %mtu22.i, align 4
  %sq_num_pbl_pages.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 4
  %32 = ptrtoint ptr %sq_num_pbl_pages.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %sq_num_pbl_pages.i, align 4
  %34 = call i16 @llvm.bswap.i16(i16 %33) #8
  %sq_num_pages_in_pbl.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 2, i32 7, i32 1
  %35 = ptrtoint ptr %sq_num_pages_in_pbl.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %sq_num_pages_in_pbl.i, align 2
  %call23.i = call i32 @qed_cxt_acquire_cid(ptr noundef %cond28, i32 noundef 1, ptr noundef nonnull %dummy_cid.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end21.i.err.i_crit_edge

if.end21.i.err.i_crit_edge:                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

if.end26.i:                                       ; preds = %if.end21.i
  %36 = ptrtoint ptr %dummy_cid.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dummy_cid.i, align 4
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %9, align 4
  %call27.i = call i32 @qed_cxt_get_cid_info(ptr noundef %cond28, ptr noundef nonnull %cxt_info.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end54.i, label %do.body30.i

do.body30.i:                                      ; preds = %if.end26.i
  %dp_level.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 7
  %39 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %cmp32.i = icmp ult i8 %40, 3
  br i1 %cmp32.i, label %do.end39.i, label %do.body30.i.err.i_crit_edge, !prof !101

do.body30.i.err.i_crit_edge:                      ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

do.end39.i:                                       ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  %name41.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 8
  %41 = ptrtoint ptr %dummy_cid.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dummy_cid.i, align 4
  %call50.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef 141, ptr noundef nonnull %name41.i, i32 noundef %42) #12
  br label %err.i

if.end54.i:                                       ; preds = %if.end26.i
  %43 = ptrtoint ptr %cxt_info.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cxt_info.i, align 4
  %45 = call ptr @memset(ptr %44, i32 0, i32 688)
  %flags3.i = getelementptr inbounds %struct.fcoe_conn_context, ptr %44, i32 0, i32 8, i32 5
  %46 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 16, ptr %flags3.i, align 1
  %47 = ptrtoint ptr %dummy_cid.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dummy_cid.i, align 4
  %conv65.i = trunc i32 %48 to i16
  %dummy_icid.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 9
  %49 = ptrtoint ptr %dummy_icid.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv65.i, ptr %dummy_icid.i, align 2
  %num_tasks.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 3
  %50 = ptrtoint ptr %num_tasks.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %num_tasks.i, align 2
  %52 = call i16 @llvm.bswap.i16(i16 %51) #8
  %53 = ptrtoint ptr %ramrod.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %ramrod.i, align 4
  %log_page_size.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 14
  %54 = ptrtoint ptr %log_page_size.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %log_page_size.i, align 1
  %log_page_size68.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %56 = ptrtoint ptr %log_page_size68.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %log_page_size68.i, align 2
  %debug_mode.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 17
  %57 = ptrtoint ptr %debug_mode.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %debug_mode.i, align 2
  %debug_mode70.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %59 = ptrtoint ptr %debug_mode70.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %debug_mode70.i, align 4
  %60 = ptrtoint ptr %fcoe_pf_params4.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %fcoe_pf_params4.i, align 8
  %shr.i = lshr i64 %61, 32
  %conv73.i = trunc i64 %shr.i to i32
  %62 = call i32 @llvm.bswap.i32(i32 %conv73.i) #8
  %q_params.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 1
  %hi.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 1, i32 3
  %63 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %hi.i, align 4
  %64 = ptrtoint ptr %fcoe_pf_params4.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %fcoe_pf_params4.i, align 8
  %conv77.i = trunc i64 %65 to i32
  %66 = call i32 @llvm.bswap.i32(i32 %conv77.i) #8
  %67 = ptrtoint ptr %q_params.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %q_params.i, align 4
  %cq_num_entries.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 5
  %68 = ptrtoint ptr %cq_num_entries.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %cq_num_entries.i, align 2
  %70 = call i16 @llvm.bswap.i16(i16 %69) #8
  %cq_num_entries83.i = getelementptr inbounds %struct.scsi_init_func_queues, ptr %q_params.i, i32 0, i32 2
  %71 = ptrtoint ptr %cq_num_entries83.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %cq_num_entries83.i, align 2
  %cmdq_num_entries.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 6
  %72 = ptrtoint ptr %cmdq_num_entries.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %cmdq_num_entries.i, align 8
  %74 = call i16 @llvm.bswap.i16(i16 %73) #8
  %cmdq_num_entries85.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4, i32 1
  %75 = ptrtoint ptr %cmdq_num_entries85.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %cmdq_num_entries85.i, align 4
  %76 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %num_cqs.i, align 2
  %num_queues.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5
  %78 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %num_queues.i, align 4
  %arrayidx89.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 1, i32 12
  %79 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx89.i, align 4
  %conv91.i = trunc i32 %80 to i8
  %queue_relative_offset.i = getelementptr inbounds %struct.scsi_init_func_queues, ptr %q_params.i, i32 0, i32 8
  %81 = ptrtoint ptr %queue_relative_offset.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv91.i, ptr %queue_relative_offset.i, align 1
  %82 = load i8, ptr %num_cqs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp963.not.i = icmp eq i8 %82, 0
  br i1 %cmp963.not.i, label %if.end54.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end54.i.for.end.i_crit_edge:                   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end54.i
  %cq_cmdq_sb_num_arr.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 1, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %83 = trunc i32 %indvars.iv.i to i16
  %call99.i = call zeroext i16 @qed_get_igu_sb_id(ptr noundef %cond28, i16 noundef zeroext %83) #8
  %84 = call i16 @llvm.bswap.i16(i16 %call99.i) #8
  %arrayidx101.i = getelementptr [64 x i16], ptr %cq_cmdq_sb_num_arr.i, i32 0, i32 %indvars.iv.i
  %85 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %arrayidx101.i, align 2
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %86 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %num_cqs.i, align 2
  %88 = zext i8 %87 to i32
  %cmp96.i = icmp ult i32 %indvars.iv.next.i, %88
  br i1 %cmp96.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end54.i.for.end.i_crit_edge
  %gl_rq_pi.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 15
  %89 = ptrtoint ptr %gl_rq_pi.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %gl_rq_pi.i, align 4
  %cq_sb_pi.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5, i32 1
  %91 = ptrtoint ptr %cq_sb_pi.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %cq_sb_pi.i, align 2
  %gl_cmd_pi.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 16
  %92 = ptrtoint ptr %gl_cmd_pi.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %gl_cmd_pi.i, align 1
  %cmdq_sb_pi.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5, i32 2
  %94 = ptrtoint ptr %cmdq_sb_pi.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %cmdq_sb_pi.i, align 1
  %arrayidx106.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 1, i32 14
  %95 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx106.i, align 4
  %conv107.i = trunc i32 %96 to i8
  %bdq_resource_id.i = getelementptr inbounds %struct.scsi_init_func_queues, ptr %q_params.i, i32 0, i32 4
  %97 = ptrtoint ptr %bdq_resource_id.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv107.i, ptr %bdq_resource_id.i, align 2
  %bdq_pbl_base_addr.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 1
  %98 = ptrtoint ptr %bdq_pbl_base_addr.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %bdq_pbl_base_addr.i, align 8
  %shr111.i = lshr i64 %99, 32
  %conv113.i = trunc i64 %shr111.i to i32
  %100 = call i32 @llvm.bswap.i32(i32 %conv113.i) #8
  %bdq_pbl_base_address.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5, i32 4
  %hi116.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5, i32 4, i32 1
  %101 = ptrtoint ptr %hi116.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %hi116.i, align 4
  %102 = ptrtoint ptr %bdq_pbl_base_addr.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %bdq_pbl_base_addr.i, align 8
  %conv120.i = trunc i64 %103 to i32
  %104 = call i32 @llvm.bswap.i32(i32 %conv120.i) #8
  %105 = ptrtoint ptr %bdq_pbl_base_address.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %bdq_pbl_base_address.i, align 4
  %bdq_pbl_num_entries.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 19
  %106 = ptrtoint ptr %bdq_pbl_num_entries.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %bdq_pbl_num_entries.i, align 8
  %bdq_pbl_num_entries129.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5, i32 3
  %108 = ptrtoint ptr %bdq_pbl_num_entries129.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %bdq_pbl_num_entries129.i, align 4
  %bdq_xoff_threshold.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 10
  %109 = ptrtoint ptr %bdq_xoff_threshold.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %bdq_xoff_threshold.i, align 8
  %111 = call i16 @llvm.bswap.i16(i16 %110) #8
  %bdq_xoff_threshold133.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 2, i32 6, i32 4
  %112 = ptrtoint ptr %bdq_xoff_threshold133.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %bdq_xoff_threshold133.i, align 4
  %bdq_xon_threshold.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 11
  %113 = ptrtoint ptr %bdq_xon_threshold.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %bdq_xon_threshold.i, align 4
  %115 = call i16 @llvm.bswap.i16(i16 %114) #8
  %bdq_xon_threshold137.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 2, i32 6, i32 5
  %116 = ptrtoint ptr %bdq_xon_threshold137.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %bdq_xon_threshold137.i, align 4
  %arrayidx141.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 1, i32 1
  %117 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx141.i, align 8
  %shr142.i = lshr i64 %118, 32
  %conv144.i = trunc i64 %shr142.i to i32
  %119 = call i32 @llvm.bswap.i32(i32 %conv144.i) #8
  %arrayidx147.i = getelementptr %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5, i32 5
  %hi148.i = getelementptr %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 2, i32 5, i32 6, i32 2
  %120 = ptrtoint ptr %hi148.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %hi148.i, align 4
  %121 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %arrayidx141.i, align 8
  %conv152.i = trunc i64 %122 to i32
  %123 = call i32 @llvm.bswap.i32(i32 %conv152.i) #8
  %124 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %arrayidx147.i, align 4
  %arrayidx160.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 19, i32 1
  %125 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx160.i, align 1
  %arrayidx163.i = getelementptr [3 x i8], ptr %bdq_pbl_num_entries129.i, i32 0, i32 1
  %127 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %arrayidx163.i, align 1
  %arrayidx165.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 10, i32 1
  %128 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %arrayidx165.i, align 2
  %130 = call i16 @llvm.bswap.i16(i16 %129) #8
  %arrayidx168.i = getelementptr [3 x i16], ptr %bdq_xoff_threshold133.i, i32 0, i32 1
  %131 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %arrayidx168.i, align 2
  %arrayidx170.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 11, i32 1
  %132 = ptrtoint ptr %arrayidx170.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %arrayidx170.i, align 2
  %134 = call i16 @llvm.bswap.i16(i16 %133) #8
  %arrayidx173.i = getelementptr %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 2, i32 6, i32 6
  %135 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %arrayidx173.i, align 2
  %rq_buffer_size.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 12
  %136 = ptrtoint ptr %rq_buffer_size.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %rq_buffer_size.i, align 8
  %138 = call i16 @llvm.bswap.i16(i16 %137) #8
  %rq_buffer_size175.i = getelementptr inbounds %struct.qed_spq_entry, ptr %23, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4
  %139 = ptrtoint ptr %rq_buffer_size175.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %rq_buffer_size175.i, align 4
  %is_target.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 36, i32 1, i32 18
  %140 = ptrtoint ptr %is_target.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %is_target.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool176.not.i = icmp eq i8 %141, 0
  %q_validity224.i = getelementptr inbounds %struct.scsi_init_func_queues, ptr %q_params.i, i32 0, i32 5
  %142 = ptrtoint ptr %q_validity224.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %q_validity224.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool193.not.i = icmp eq i8 %126, 0
  %spec.select2.i = select i1 %tobool193.not.i, i8 5, i8 7
  %.sink.i.v = select i1 %tobool176.not.i, i8 1, i8 %spec.select2.i
  %.sink.i = or i8 %143, %.sink.i.v
  %144 = ptrtoint ptr %q_validity224.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %.sink.i, ptr %q_validity224.i, align 1
  %145 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %p_ent.i, align 4
  %call236.i = call i32 @qed_spq_post(ptr noundef %cond28, ptr noundef %146, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy_cid.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cxt_info.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236.i)
  %tobool30.not = icmp eq i32 %call236.i, 0
  br i1 %tobool30.not, label %if.end61, label %for.end.i.do.body32_crit_edge

for.end.i.do.body32_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

err.i:                                            ; preds = %do.end39.i, %do.body30.i.err.i_crit_edge, %if.end21.i.err.i_crit_edge, %do.end.i
  %rc.0.i = phi i32 [ -22, %do.end.i ], [ %call23.i, %if.end21.i.err.i_crit_edge ], [ %call27.i, %do.end39.i ], [ %call27.i, %do.body30.i.err.i_crit_edge ]
  %147 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %p_ent.i, align 4
  call void @qed_sp_destroy_request(ptr noundef %cond28, ptr noundef %148) #8
  br label %qed_sp_fcoe_func_start.exit.thread

qed_sp_fcoe_func_start.exit.thread:               ; preds = %err.i, %if.end11.qed_sp_fcoe_func_start.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call3.i, %if.end11.qed_sp_fcoe_func_start.exit.thread_crit_edge ], [ %rc.0.i, %err.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy_cid.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cxt_info.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #8
  br label %do.body32

do.body32:                                        ; preds = %qed_sp_fcoe_func_start.exit.thread, %for.end.i.do.body32_crit_edge
  %retval.0.i214 = phi i32 [ %retval.0.i.ph, %qed_sp_fcoe_func_start.exit.thread ], [ %call236.i, %for.end.i.do.body32_crit_edge ]
  %dp_level33 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %149 = ptrtoint ptr %dp_level33 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %dp_level33, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %150)
  %cmp35 = icmp ult i8 %150, 3
  br i1 %cmp35, label %do.end46, label %do.body32.cleanup164_crit_edge, !prof !101

do.body32.cleanup164_crit_edge:                   ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup164

do.end46:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %name48 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool50.not = icmp eq ptr %name48, null
  %spec.select207 = select i1 %tobool50.not, ptr @.str.3, ptr %name48
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 811, ptr noundef nonnull %spec.select207) #12
  br label %cleanup164

if.end61:                                         ; preds = %for.end.i
  %151 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %flags, align 4
  %or = or i32 %152, 1
  store i32 %or, ptr %flags, align 4
  %connections = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 64
  %153 = call ptr @memset(ptr %connections, i32 0, i32 4096)
  %tobool64.not = icmp eq ptr %tasks, null
  br i1 %tobool64.not, label %if.end61.cleanup164_crit_edge, label %if.then65

if.end61.cleanup164_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup164

if.then65:                                        ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %154 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %154, i32 noundef 2848, i32 noundef 2060) #11
  %tobool67.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool67.not, label %do.body69, label %if.end99

do.body69:                                        ; preds = %if.then65
  %dp_level70 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %155 = ptrtoint ptr %dp_level70 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %dp_level70, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %156)
  %cmp72 = icmp ult i8 %156, 3
  br i1 %cmp72, label %do.end83, label %do.body69.do.end97_crit_edge, !prof !101

do.body69.do.end97_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end97

do.end83:                                         ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #10
  %name85 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool87.not = icmp eq ptr %name85, null
  %spec.select208 = select i1 %tobool87.not, ptr @.str.3, ptr %name85
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, i32 noundef 824, ptr noundef nonnull %spec.select208) #12
  br label %do.end97

do.end97:                                         ; preds = %do.end83, %do.body69.do.end97_crit_edge
  %call98 = call i32 @qed_fcoe_stop(ptr noundef %cdev)
  br label %cleanup164

if.end99:                                         ; preds = %if.then65
  %157 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %hw_info, align 8
  %.off210 = add i32 %158, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off210)
  %switch211 = icmp ult i32 %.off210, 2
  %idxprom116.pn.in.in = select i1 %switch211, ptr %iwarp_affin, ptr %fir_affin
  %159 = ptrtoint ptr %idxprom116.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %159)
  %idxprom116.pn.in = load i8, ptr %idxprom116.pn.in.in, align 1
  %idxprom116.pn = zext i8 %idxprom116.pn.in to i32
  %cond124 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom116.pn
  %call125 = call i32 @qed_cxt_get_tid_mem_info(ptr noundef %cond124, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %cleanup, label %do.body128

do.body128:                                       ; preds = %if.end99
  %dp_level129 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %160 = ptrtoint ptr %dp_level129 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %dp_level129, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %161)
  %cmp131 = icmp ult i8 %161, 3
  br i1 %cmp131, label %do.end142, label %do.body128.do.end156_crit_edge, !prof !101

do.body128.do.end156_crit_edge:                   ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end156

do.end142:                                        ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #10
  %name144 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool146.not = icmp eq ptr %name144, null
  %spec.select209 = select i1 %tobool146.not, ptr @.str.3, ptr %name144
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.13, i32 noundef 831, ptr noundef nonnull %spec.select209) #12
  br label %do.end156

do.end156:                                        ; preds = %do.end142, %do.body128.do.end156_crit_edge
  %call157 = call i32 @qed_fcoe_stop(ptr noundef %cdev)
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup164

cleanup:                                          ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %call7.i.i, align 8
  %164 = ptrtoint ptr %tasks to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %tasks, align 4
  %num_tids_per_block = getelementptr inbounds %struct.qed_tid_mem, ptr %call7.i.i, i32 0, i32 1
  %165 = ptrtoint ptr %num_tids_per_block to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %num_tids_per_block, align 4
  %num_tids_per_block159 = getelementptr inbounds %struct.qed_fcoe_tid, ptr %tasks, i32 0, i32 1
  %167 = ptrtoint ptr %num_tids_per_block159 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %num_tids_per_block159, align 4
  %blocks = getelementptr inbounds %struct.qed_fcoe_tid, ptr %tasks, i32 0, i32 2
  %blocks161 = getelementptr inbounds %struct.qed_tid_mem, ptr %call7.i.i, i32 0, i32 3
  %168 = call ptr @memcpy(ptr %blocks, ptr %blocks161, i32 2048)
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup164

cleanup164:                                       ; preds = %cleanup, %do.end156, %do.end97, %if.end61.cleanup164_crit_edge, %do.end46, %do.body32.cleanup164_crit_edge, %do.end, %do.body.cleanup164_crit_edge
  %retval.1 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup164_crit_edge ], [ %retval.0.i214, %do.end46 ], [ %retval.0.i214, %do.body32.cleanup164_crit_edge ], [ 0, %cleanup ], [ 0, %if.end61.cleanup164_crit_edge ], [ -12, %do.end97 ], [ %call125, %do.end156 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_fcoe_stop(ptr noundef %cdev) #0 align 64 {
entry:
  %p_ent.i = alloca ptr, align 4
  %init_data.i = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 51
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !101

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 776, ptr noundef nonnull %spec.select) #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  %connections = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 64
  %4 = ptrtoint ptr %connections to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %connections, align 4
  %tobool.not.i.not.i155 = icmp eq ptr %5, null
  br i1 %tobool.not.i.not.i155, label %if.end11.for.cond.i_crit_edge, label %if.end11.do.body15_crit_edge

if.end11.do.body15_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

if.end11.for.cond.i_crit_edge:                    ; preds = %if.end11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end11.for.cond.i_crit_edge
  %i.01.i156 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %if.end11.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.01.i156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.__hash_empty.exit_crit_edge, label %for.body.i

for.cond.i.__hash_empty.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hash_empty.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %connections, i32 %inc.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.__hash_empty.exit_crit_edge

for.body.i.__hash_empty.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hash_empty.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

__hash_empty.exit:                                ; preds = %for.body.i.__hash_empty.exit_crit_edge, %for.cond.i.__hash_empty.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %i.01.i156)
  %cmp.i.le = icmp ult i32 %i.01.i156, 1023
  br i1 %cmp.i.le, label %__hash_empty.exit.do.body15_crit_edge, label %if.end44

__hash_empty.exit.do.body15_crit_edge:            ; preds = %__hash_empty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

do.body15:                                        ; preds = %__hash_empty.exit.do.body15_crit_edge, %if.end11.do.body15_crit_edge
  %dp_level16 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %8 = ptrtoint ptr %dp_level16 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level16, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp18 = icmp ult i8 %9, 3
  br i1 %cmp18, label %do.end29, label %do.body15.cleanup_crit_edge, !prof !101

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end29:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %name31 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool33.not = icmp eq ptr %name31, null
  %spec.select150 = select i1 %tobool33.not, ptr @.str.3, ptr %name31
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef 782, ptr noundef nonnull %spec.select150) #12
  br label %cleanup

if.end44:                                         ; preds = %__hash_empty.exit
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %10 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_info, align 8
  %.off = add i32 %11, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %12 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %12)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond61 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  %call62 = tail call ptr @qed_ptt_acquire(ptr noundef %cond61) #8
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.end44.cleanup_crit_edge, label %if.end65

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end65:                                         ; preds = %if.end44
  %13 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_info, align 8
  %.off151 = add i32 %14, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off151)
  %switch152 = icmp ult i32 %.off151, 2
  %idxprom82.pn.in.in = select i1 %switch152, ptr %iwarp_affin, ptr %fir_affin
  %15 = ptrtoint ptr %idxprom82.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %15)
  %idxprom82.pn.in = load i8, ptr %idxprom82.pn.in.in, align 1
  %idxprom82.pn = zext i8 %idxprom82.pn.in to i32
  %cond90 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom82.pn
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i) #8
  %16 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %p_ent.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #8
  %17 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %17, align 4
  %dummy_icid.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom82.pn, i32 36, i32 1, i32 9
  %19 = ptrtoint ptr %dummy_icid.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dummy_icid.i, align 2
  %conv.i = zext i16 %20 to i32
  %21 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i, ptr %init_data.i, align 4
  %opaque_fid.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom82.pn, i32 17, i32 10
  %22 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %opaque_fid.i, align 4
  store i16 %23, ptr %17, align 4
  %comp_mode2.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 2
  %24 = ptrtoint ptr %comp_mode2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %comp_mode2.i, align 4
  %p_comp_data.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 3
  %25 = ptrtoint ptr %p_comp_data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %p_comp_data.i, align 4
  %call.i = call i32 @qed_sp_init_request(ptr noundef %cond90, ptr noundef nonnull %p_ent.i, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %init_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end65.qed_sp_fcoe_func_stop.exit_crit_edge

if.end65.qed_sp_fcoe_func_stop.exit_crit_edge:    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_sp_fcoe_func_stop.exit

if.end.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call i32 @qed_rd(ptr noundef %cond90, ptr noundef nonnull %call62, i32 noundef 2884676) #8
  %and.i = and i32 %call3.i, -3
  call void @qed_wr(ptr noundef %cond90, ptr noundef nonnull %call62, i32 noundef 2884676, i32 noundef %and.i) #8
  %26 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p_ent.i, align 4
  %call4.i = call i32 @qed_spq_post(ptr noundef %cond90, ptr noundef %27, ptr noundef null) #8
  br label %qed_sp_fcoe_func_stop.exit

qed_sp_fcoe_func_stop.exit:                       ; preds = %if.end.i, %if.end65.qed_sp_fcoe_func_stop.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %call.i, %if.end65.qed_sp_fcoe_func_stop.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #8
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and93 = and i32 %29, -2
  store i32 %and93, ptr %flags, align 4
  %30 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw_info, align 8
  %.off153 = add i32 %31, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off153)
  %switch154 = icmp ult i32 %.off153, 2
  %idxprom110.pn.in.in = select i1 %switch154, ptr %iwarp_affin, ptr %fir_affin
  %32 = ptrtoint ptr %idxprom110.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %32)
  %idxprom110.pn.in = load i8, ptr %idxprom110.pn.in.in, align 1
  %idxprom110.pn = zext i8 %idxprom110.pn.in to i32
  %cond118 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom110.pn
  call void @qed_ptt_release(ptr noundef %cond118, ptr noundef nonnull %call62) #8
  br label %cleanup

cleanup:                                          ; preds = %qed_sp_fcoe_func_stop.exit, %if.end44.cleanup_crit_edge, %do.end29, %do.body15.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %qed_sp_fcoe_func_stop.exit ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ -22, %do.end29 ], [ -22, %do.body15.cleanup_crit_edge ], [ -11, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_fcoe_acquire_conn(ptr noundef %cdev, ptr nocapture noundef %handle, ptr nocapture noundef writeonly %fw_cid, ptr noundef writeonly %p_doorbell) #0 align 64 {
entry:
  %icid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp = icmp ult i8 %2, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !101

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 859, ptr noundef nonnull %spec.select) #12
  br label %cleanup

if.end12:                                         ; preds = %entry
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %3 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_info, align 8
  %.off = add i32 %4, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %5 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %5)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond29 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  %con = getelementptr inbounds %struct.qed_hash_fcoe_con, ptr %call7.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %icid.i) #8
  %6 = ptrtoint ptr %icid.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %icid.i, align 4, !annotation !103
  %p_fcoe_info.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 35
  %7 = ptrtoint ptr %p_fcoe_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p_fcoe_info.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #8
  %call.i = call i32 @qed_cxt_acquire_cid(ptr noundef %cond29, i32 noundef 1, ptr noundef nonnull %icid.i) #8
  %9 = ptrtoint ptr %p_fcoe_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p_fcoe_info.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end12.do.body33_crit_edge

if.end12.do.body33_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body33

if.else.i:                                        ; preds = %if.end12
  %11 = ptrtoint ptr %p_fcoe_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_fcoe_info.i, align 4
  call void @_raw_spin_lock_bh(ptr noundef %12) #8
  %13 = ptrtoint ptr %p_fcoe_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_fcoe_info.i, align 4
  %free_list.i.i = getelementptr inbounds %struct.qed_fcoe_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %free_list.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %free_list.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %16, %free_list.i.i
  %tobool4.not.i.i = icmp eq ptr %16, null
  %or.cond.i.i = or i1 %cmp.i.i.i, %tobool4.not.i.i
  br i1 %or.cond.i.i, label %if.end8.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %16) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then5.i.i.list_del.exit.i.i_crit_edge

if.then5.i.i.list_del.exit.i.i_crit_edge:         ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then5.i.i.list_del.exit.i.i_crit_edge
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %p_fcoe_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p_fcoe_info.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %26) #8
  br label %if.end62

if.end8.i.i:                                      ; preds = %if.else.i
  call void @_raw_spin_unlock_bh(ptr noundef %14) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 140) #11
  %tobool12.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool12.not.i.i, label %if.end8.i.i.if.then7.i_crit_edge, label %if.end14.i.i

if.end8.i.i.if.then7.i_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i

if.end14.i.i:                                     ; preds = %if.end8.i.i
  %28 = ptrtoint ptr %cond29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cond29, align 8
  %pdev.i.i = getelementptr inbounds %struct.qed_dev, ptr %29, i32 0, i32 50
  %30 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %xferq_pbl_addr.i.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 9
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef 4096, ptr noundef %xferq_pbl_addr.i.i, i32 noundef 3264, i32 noundef 0) #8
  %tobool16.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool16.not.i.i, label %if.end14.i.i.nomem_pbl_xferq.i.i_crit_edge, label %if.end18.i.i

if.end14.i.i.nomem_pbl_xferq.i.i_crit_edge:       ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem_pbl_xferq.i.i

if.end18.i.i:                                     ; preds = %if.end14.i.i
  %xferq_pbl_addr_virt_addr.i.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 10
  %32 = ptrtoint ptr %xferq_pbl_addr_virt_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i.i, ptr %xferq_pbl_addr_virt_addr.i.i, align 8
  %33 = ptrtoint ptr %cond29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cond29, align 8
  %pdev20.i.i = getelementptr inbounds %struct.qed_dev, ptr %34, i32 0, i32 50
  %35 = ptrtoint ptr %pdev20.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev20.i.i, align 8
  %dev21.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %arrayidx.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 11, i32 0
  %call.i178.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev21.i.i, i32 noundef 4096, ptr noundef %arrayidx.i.i, i32 noundef 3264, i32 noundef 0) #8
  %tobool23.not.i.i = icmp eq ptr %call.i178.i.i, null
  br i1 %tobool23.not.i.i, label %if.end18.i.i.nomem_xferq.i.i_crit_edge, label %if.end25.i.i

if.end18.i.i.nomem_xferq.i.i_crit_edge:           ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem_xferq.i.i

if.end25.i.i:                                     ; preds = %if.end18.i.i
  %arrayidx26.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 12, i32 0
  %37 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i178.i.i, ptr %arrayidx26.i.i, align 4
  %38 = ptrtoint ptr %xferq_pbl_addr_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xferq_pbl_addr_virt_addr.i.i, align 8
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %39, align 4
  %43 = ptrtoint ptr %cond29 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cond29, align 8
  %pdev20.1.i.i = getelementptr inbounds %struct.qed_dev, ptr %44, i32 0, i32 50
  %45 = ptrtoint ptr %pdev20.1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev20.1.i.i, align 8
  %dev21.1.i.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %arrayidx.1.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 11, i32 1
  %call.i178.1.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev21.1.i.i, i32 noundef 4096, ptr noundef %arrayidx.1.i.i, i32 noundef 3264, i32 noundef 0) #8
  %tobool23.not.1.i.i = icmp eq ptr %call.i178.1.i.i, null
  br i1 %tobool23.not.1.i.i, label %if.end25.i.i.nomem_xferq.i.i_crit_edge, label %if.end25.1.i.i

if.end25.i.i.nomem_xferq.i.i_crit_edge:           ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem_xferq.i.i

if.end25.1.i.i:                                   ; preds = %if.end25.i.i
  %arrayidx26.1.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 12, i32 1
  %47 = ptrtoint ptr %arrayidx26.1.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i178.1.i.i, ptr %arrayidx26.1.i.i, align 8
  %48 = ptrtoint ptr %xferq_pbl_addr_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %xferq_pbl_addr_virt_addr.i.i, align 8
  %50 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.1.i.i, align 8
  %arrayidx30.1.i.i = getelementptr i32, ptr %49, i32 1
  %52 = ptrtoint ptr %arrayidx30.1.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx30.1.i.i, align 4
  %53 = ptrtoint ptr %cond29 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cond29, align 8
  %pdev20.2.i.i = getelementptr inbounds %struct.qed_dev, ptr %54, i32 0, i32 50
  %55 = ptrtoint ptr %pdev20.2.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev20.2.i.i, align 8
  %dev21.2.i.i = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %arrayidx.2.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 11, i32 2
  %call.i178.2.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev21.2.i.i, i32 noundef 4096, ptr noundef %arrayidx.2.i.i, i32 noundef 3264, i32 noundef 0) #8
  %tobool23.not.2.i.i = icmp eq ptr %call.i178.2.i.i, null
  br i1 %tobool23.not.2.i.i, label %if.end25.1.i.i.nomem_xferq.i.i_crit_edge, label %if.end25.2.i.i

if.end25.1.i.i.nomem_xferq.i.i_crit_edge:         ; preds = %if.end25.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem_xferq.i.i

if.end25.2.i.i:                                   ; preds = %if.end25.1.i.i
  %arrayidx26.2.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 12, i32 2
  %57 = ptrtoint ptr %arrayidx26.2.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i178.2.i.i, ptr %arrayidx26.2.i.i, align 4
  %58 = ptrtoint ptr %xferq_pbl_addr_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %xferq_pbl_addr_virt_addr.i.i, align 8
  %60 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.2.i.i, align 4
  %arrayidx30.2.i.i = getelementptr i32, ptr %59, i32 2
  %62 = ptrtoint ptr %arrayidx30.2.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx30.2.i.i, align 4
  %63 = ptrtoint ptr %cond29 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cond29, align 8
  %pdev20.3.i.i = getelementptr inbounds %struct.qed_dev, ptr %64, i32 0, i32 50
  %65 = ptrtoint ptr %pdev20.3.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev20.3.i.i, align 8
  %dev21.3.i.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %arrayidx.3.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 11, i32 3
  %call.i178.3.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev21.3.i.i, i32 noundef 4096, ptr noundef %arrayidx.3.i.i, i32 noundef 3264, i32 noundef 0) #8
  %tobool23.not.3.i.i = icmp eq ptr %call.i178.3.i.i, null
  br i1 %tobool23.not.3.i.i, label %if.end25.2.i.i.nomem_xferq.i.i_crit_edge, label %if.end25.3.i.i

if.end25.2.i.i.nomem_xferq.i.i_crit_edge:         ; preds = %if.end25.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem_xferq.i.i

if.end25.3.i.i:                                   ; preds = %if.end25.2.i.i
  %arrayidx26.3.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 12, i32 3
  %67 = ptrtoint ptr %arrayidx26.3.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i178.3.i.i, ptr %arrayidx26.3.i.i, align 8
  %68 = ptrtoint ptr %xferq_pbl_addr_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %xferq_pbl_addr_virt_addr.i.i, align 8
  %70 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.3.i.i, align 8
  %arrayidx30.3.i.i = getelementptr i32, ptr %69, i32 3
  %72 = ptrtoint ptr %arrayidx30.3.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx30.3.i.i, align 4
  %73 = ptrtoint ptr %cond29 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cond29, align 8
  %pdev32.i.i = getelementptr inbounds %struct.qed_dev, ptr %74, i32 0, i32 50
  %75 = ptrtoint ptr %pdev32.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev32.i.i, align 8
  %dev33.i.i = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  %confq_pbl_addr.i.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 13
  %call.i179.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev33.i.i, i32 noundef 4096, ptr noundef %confq_pbl_addr.i.i, i32 noundef 3264, i32 noundef 0) #8
  %tobool35.not.i.i = icmp eq ptr %call.i179.i.i, null
  br i1 %tobool35.not.i.i, label %if.end25.3.i.i.nomem_xferq.i.i_crit_edge, label %if.end37.i.i

if.end25.3.i.i.nomem_xferq.i.i_crit_edge:         ; preds = %if.end25.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem_xferq.i.i

if.end37.i.i:                                     ; preds = %if.end25.3.i.i
  %confq_pbl_addr_virt_addr.i.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 14
  %77 = ptrtoint ptr %confq_pbl_addr_virt_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i179.i.i, ptr %confq_pbl_addr_virt_addr.i.i, align 8
  %78 = ptrtoint ptr %cond29 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cond29, align 8
  %pdev42.i.i = getelementptr inbounds %struct.qed_dev, ptr %79, i32 0, i32 50
  %80 = ptrtoint ptr %pdev42.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev42.i.i, align 8
  %dev43.i.i = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %arrayidx44.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 15, i32 0
  %call.i180.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev43.i.i, i32 noundef 4096, ptr noundef %arrayidx44.i.i, i32 noundef 3264, i32 noundef 0) #8
  %tobool46.not.i.i = icmp eq ptr %call.i180.i.i, null
  br i1 %tobool46.not.i.i, label %if.end37.i.i.nomem_confq.i.i_crit_edge, label %if.end48.i.i

if.end37.i.i.nomem_confq.i.i_crit_edge:           ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem_confq.i.i

if.end48.i.i:                                     ; preds = %if.end37.i.i
  %arrayidx49.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 16, i32 0
  %82 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i180.i.i, ptr %arrayidx49.i.i, align 4
  %83 = ptrtoint ptr %confq_pbl_addr_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %confq_pbl_addr_virt_addr.i.i, align 8
  %85 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx44.i.i, align 4
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %84, align 4
  %88 = ptrtoint ptr %cond29 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cond29, align 8
  %pdev42.1.i.i = getelementptr inbounds %struct.qed_dev, ptr %89, i32 0, i32 50
  %90 = ptrtoint ptr %pdev42.1.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev42.1.i.i, align 8
  %dev43.1.i.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %arrayidx44.1.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 15, i32 1
  %call.i180.1.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev43.1.i.i, i32 noundef 4096, ptr noundef %arrayidx44.1.i.i, i32 noundef 3264, i32 noundef 0) #8
  %tobool46.not.1.i.i = icmp eq ptr %call.i180.1.i.i, null
  br i1 %tobool46.not.1.i.i, label %if.end48.i.i.nomem_confq.i.i_crit_edge, label %if.end48.1.i.i

if.end48.i.i.nomem_confq.i.i_crit_edge:           ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem_confq.i.i

if.end48.1.i.i:                                   ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx49.1.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 16, i32 1
  %92 = ptrtoint ptr %arrayidx49.1.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i180.1.i.i, ptr %arrayidx49.1.i.i, align 8
  %93 = ptrtoint ptr %confq_pbl_addr_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %confq_pbl_addr_virt_addr.i.i, align 8
  %95 = ptrtoint ptr %arrayidx44.1.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx44.1.i.i, align 8
  %arrayidx53.1.i.i = getelementptr i32, ptr %94, i32 1
  %97 = ptrtoint ptr %arrayidx53.1.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx53.1.i.i, align 4
  %free_on_delete.i.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %free_on_delete.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %free_on_delete.i.i, align 8
  br label %if.end62

nomem_confq.i.i:                                  ; preds = %if.end48.i.i.nomem_confq.i.i_crit_edge, %if.end37.i.i.nomem_confq.i.i_crit_edge
  %99 = ptrtoint ptr %cond29 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cond29, align 8
  %pdev58.i.i = getelementptr inbounds %struct.qed_dev, ptr %100, i32 0, i32 50
  %101 = ptrtoint ptr %pdev58.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev58.i.i, align 8
  %dev59.i.i = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %103 = ptrtoint ptr %confq_pbl_addr_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %confq_pbl_addr_virt_addr.i.i, align 8
  %105 = ptrtoint ptr %confq_pbl_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %confq_pbl_addr.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev59.i.i, i32 noundef 4096, ptr noundef %104, i32 noundef %106, i32 noundef 0) #8
  %arrayidx66.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 16, i32 0
  %107 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx66.i.i, align 4
  %tobool67.not.i.i = icmp eq ptr %108, null
  br i1 %tobool67.not.i.i, label %nomem_confq.i.i.for.inc77.i.i_crit_edge, label %if.then68.i.i

nomem_confq.i.i.for.inc77.i.i_crit_edge:          ; preds = %nomem_confq.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.i.i

if.then68.i.i:                                    ; preds = %nomem_confq.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %cond29 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cond29, align 8
  %pdev70.i.i = getelementptr inbounds %struct.qed_dev, ptr %110, i32 0, i32 50
  %111 = ptrtoint ptr %pdev70.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pdev70.i.i, align 8
  %dev71.i.i = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 44
  %113 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx44.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev71.i.i, i32 noundef 4096, ptr noundef nonnull %108, i32 noundef %114, i32 noundef 0) #8
  br label %for.inc77.i.i

for.inc77.i.i:                                    ; preds = %if.then68.i.i, %nomem_confq.i.i.for.inc77.i.i_crit_edge
  %arrayidx66.1.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 16, i32 1
  %115 = ptrtoint ptr %arrayidx66.1.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx66.1.i.i, align 8
  %tobool67.not.1.i.i = icmp eq ptr %116, null
  br i1 %tobool67.not.1.i.i, label %for.inc77.i.i.nomem_xferq.i.i_crit_edge, label %if.then68.1.i.i

for.inc77.i.i.nomem_xferq.i.i_crit_edge:          ; preds = %for.inc77.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem_xferq.i.i

if.then68.1.i.i:                                  ; preds = %for.inc77.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %cond29 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cond29, align 8
  %pdev70.1.i.i = getelementptr inbounds %struct.qed_dev, ptr %118, i32 0, i32 50
  %119 = ptrtoint ptr %pdev70.1.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pdev70.1.i.i, align 8
  %dev71.1.i.i = getelementptr inbounds %struct.pci_dev, ptr %120, i32 0, i32 44
  %arrayidx75.1.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 15, i32 1
  %121 = ptrtoint ptr %arrayidx75.1.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx75.1.i.i, align 8
  call void @dma_free_attrs(ptr noundef %dev71.1.i.i, i32 noundef 4096, ptr noundef nonnull %116, i32 noundef %122, i32 noundef 0) #8
  br label %nomem_xferq.i.i

nomem_xferq.i.i:                                  ; preds = %if.then68.1.i.i, %for.inc77.i.i.nomem_xferq.i.i_crit_edge, %if.end25.3.i.i.nomem_xferq.i.i_crit_edge, %if.end25.2.i.i.nomem_xferq.i.i_crit_edge, %if.end25.1.i.i.nomem_xferq.i.i_crit_edge, %if.end25.i.i.nomem_xferq.i.i_crit_edge, %if.end18.i.i.nomem_xferq.i.i_crit_edge
  %123 = ptrtoint ptr %cond29 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cond29, align 8
  %pdev81.i.i = getelementptr inbounds %struct.qed_dev, ptr %124, i32 0, i32 50
  %125 = ptrtoint ptr %pdev81.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pdev81.i.i, align 8
  %dev82.i.i = getelementptr inbounds %struct.pci_dev, ptr %126, i32 0, i32 44
  %127 = ptrtoint ptr %xferq_pbl_addr_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %xferq_pbl_addr_virt_addr.i.i, align 8
  %129 = ptrtoint ptr %xferq_pbl_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %xferq_pbl_addr.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev82.i.i, i32 noundef 4096, ptr noundef %128, i32 noundef %130, i32 noundef 0) #8
  %arrayidx89.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 12, i32 0
  %131 = ptrtoint ptr %arrayidx89.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx89.i.i, align 4
  %tobool90.not.i.i = icmp eq ptr %132, null
  br i1 %tobool90.not.i.i, label %nomem_xferq.i.i.for.inc100.i.i_crit_edge, label %if.then91.i.i

nomem_xferq.i.i.for.inc100.i.i_crit_edge:         ; preds = %nomem_xferq.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc100.i.i

if.then91.i.i:                                    ; preds = %nomem_xferq.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %cond29 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cond29, align 8
  %pdev93.i.i = getelementptr inbounds %struct.qed_dev, ptr %134, i32 0, i32 50
  %135 = ptrtoint ptr %pdev93.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pdev93.i.i, align 8
  %dev94.i.i = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 44
  %137 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev94.i.i, i32 noundef 4096, ptr noundef nonnull %132, i32 noundef %138, i32 noundef 0) #8
  br label %for.inc100.i.i

for.inc100.i.i:                                   ; preds = %if.then91.i.i, %nomem_xferq.i.i.for.inc100.i.i_crit_edge
  %arrayidx89.1.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 12, i32 1
  %139 = ptrtoint ptr %arrayidx89.1.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx89.1.i.i, align 8
  %tobool90.not.1.i.i = icmp eq ptr %140, null
  br i1 %tobool90.not.1.i.i, label %for.inc100.i.i.for.inc100.1.i.i_crit_edge, label %if.then91.1.i.i

for.inc100.i.i.for.inc100.1.i.i_crit_edge:        ; preds = %for.inc100.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc100.1.i.i

if.then91.1.i.i:                                  ; preds = %for.inc100.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %cond29 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cond29, align 8
  %pdev93.1.i.i = getelementptr inbounds %struct.qed_dev, ptr %142, i32 0, i32 50
  %143 = ptrtoint ptr %pdev93.1.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pdev93.1.i.i, align 8
  %dev94.1.i.i = getelementptr inbounds %struct.pci_dev, ptr %144, i32 0, i32 44
  %arrayidx98.1.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 11, i32 1
  %145 = ptrtoint ptr %arrayidx98.1.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx98.1.i.i, align 8
  call void @dma_free_attrs(ptr noundef %dev94.1.i.i, i32 noundef 4096, ptr noundef nonnull %140, i32 noundef %146, i32 noundef 0) #8
  br label %for.inc100.1.i.i

for.inc100.1.i.i:                                 ; preds = %if.then91.1.i.i, %for.inc100.i.i.for.inc100.1.i.i_crit_edge
  %arrayidx89.2.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 12, i32 2
  %147 = ptrtoint ptr %arrayidx89.2.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx89.2.i.i, align 4
  %tobool90.not.2.i.i = icmp eq ptr %148, null
  br i1 %tobool90.not.2.i.i, label %for.inc100.1.i.i.for.inc100.2.i.i_crit_edge, label %if.then91.2.i.i

for.inc100.1.i.i.for.inc100.2.i.i_crit_edge:      ; preds = %for.inc100.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc100.2.i.i

if.then91.2.i.i:                                  ; preds = %for.inc100.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %cond29 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cond29, align 8
  %pdev93.2.i.i = getelementptr inbounds %struct.qed_dev, ptr %150, i32 0, i32 50
  %151 = ptrtoint ptr %pdev93.2.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pdev93.2.i.i, align 8
  %dev94.2.i.i = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 44
  %arrayidx98.2.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 11, i32 2
  %153 = ptrtoint ptr %arrayidx98.2.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx98.2.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev94.2.i.i, i32 noundef 4096, ptr noundef nonnull %148, i32 noundef %154, i32 noundef 0) #8
  br label %for.inc100.2.i.i

for.inc100.2.i.i:                                 ; preds = %if.then91.2.i.i, %for.inc100.1.i.i.for.inc100.2.i.i_crit_edge
  %arrayidx89.3.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 12, i32 3
  %155 = ptrtoint ptr %arrayidx89.3.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx89.3.i.i, align 8
  %tobool90.not.3.i.i = icmp eq ptr %156, null
  br i1 %tobool90.not.3.i.i, label %for.inc100.2.i.i.nomem_pbl_xferq.i.i_crit_edge, label %if.then91.3.i.i

for.inc100.2.i.i.nomem_pbl_xferq.i.i_crit_edge:   ; preds = %for.inc100.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem_pbl_xferq.i.i

if.then91.3.i.i:                                  ; preds = %for.inc100.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %cond29 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cond29, align 8
  %pdev93.3.i.i = getelementptr inbounds %struct.qed_dev, ptr %158, i32 0, i32 50
  %159 = ptrtoint ptr %pdev93.3.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pdev93.3.i.i, align 8
  %dev94.3.i.i = getelementptr inbounds %struct.pci_dev, ptr %160, i32 0, i32 44
  %arrayidx98.3.i.i = getelementptr %struct.qed_fcoe_conn, ptr %call7.i.i.i.i, i32 0, i32 11, i32 3
  %161 = ptrtoint ptr %arrayidx98.3.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx98.3.i.i, align 8
  call void @dma_free_attrs(ptr noundef %dev94.3.i.i, i32 noundef 4096, ptr noundef nonnull %156, i32 noundef %162, i32 noundef 0) #8
  br label %nomem_pbl_xferq.i.i

nomem_pbl_xferq.i.i:                              ; preds = %if.then91.3.i.i, %for.inc100.2.i.i.nomem_pbl_xferq.i.i_crit_edge, %if.end14.i.i.nomem_pbl_xferq.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %if.then7.i

if.then7.i:                                       ; preds = %nomem_pbl_xferq.i.i, %if.end8.i.i.if.then7.i_crit_edge
  %163 = ptrtoint ptr %p_fcoe_info.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %p_fcoe_info.i, align 4
  call void @_raw_spin_lock_bh(ptr noundef %164) #8
  %165 = ptrtoint ptr %icid.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %icid.i, align 4
  call void @qed_cxt_release_cid(ptr noundef %cond29, i32 noundef %166) #8
  %167 = ptrtoint ptr %p_fcoe_info.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %p_fcoe_info.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %168) #8
  br label %do.body33

do.body33:                                        ; preds = %if.then7.i, %if.end12.do.body33_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end12.do.body33_crit_edge ], [ -12, %if.then7.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %icid.i) #8
  %dp_level34 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %169 = ptrtoint ptr %dp_level34 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %dp_level34, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %170)
  %cmp36 = icmp ult i8 %170, 3
  br i1 %cmp36, label %do.end47, label %do.body33.do.end61_crit_edge, !prof !101

do.body33.do.end61_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end61

do.end47:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  %name49 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool51.not = icmp eq ptr %name49, null
  %spec.select126 = select i1 %tobool51.not, ptr @.str.3, ptr %name49
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef 867, ptr noundef nonnull %spec.select126) #12
  br label %do.end61

do.end61:                                         ; preds = %do.end47, %do.body33.do.end61_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end62:                                         ; preds = %if.end48.1.i.i, %list_del.exit.i.i
  %p_conn.0.ph.i = phi ptr [ %16, %list_del.exit.i.i ], [ %call7.i.i.i.i, %if.end48.1.i.i ]
  %171 = ptrtoint ptr %icid.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %icid.i, align 4
  %icid14.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %p_conn.0.ph.i, i32 0, i32 3
  %173 = ptrtoint ptr %icid14.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %icid14.i, align 4
  %opaque_fid.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 10
  %174 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %opaque_fid.i, align 4
  %conv.i = zext i16 %175 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %or.i = or i32 %shl.i, %172
  %fw_cid.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %p_conn.0.ph.i, i32 0, i32 4
  %176 = ptrtoint ptr %fw_cid.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %or.i, ptr %fw_cid.i, align 4
  %177 = ptrtoint ptr %con to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %p_conn.0.ph.i, ptr %con, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %icid.i) #8
  %178 = ptrtoint ptr %icid14.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %icid14.i, align 4
  %180 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %handle, align 4
  %181 = ptrtoint ptr %fw_cid.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %fw_cid.i, align 4
  %183 = ptrtoint ptr %fw_cid to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %fw_cid, align 4
  %184 = load i32, ptr %handle, align 4
  %mul.i.i = mul i32 %184, 1640531527
  %shr.i = lshr i32 %mul.i.i, 22
  %arrayidx67 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 64, i32 %shr.i
  %185 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx67, align 4
  %187 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store volatile ptr %186, ptr %call7.i.i, align 8
  %tobool.not.i129 = icmp eq ptr %186, null
  br i1 %tobool.not.i129, label %if.end62.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end62.hlist_add_head.exit_crit_edge:           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %186, i32 0, i32 1
  %188 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile ptr %call7.i.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end62.hlist_add_head.exit_crit_edge
  %189 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile ptr %call7.i.i, ptr %arrayidx67, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %190 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile ptr %arrayidx67, ptr %pprev34.i, align 4
  %tobool68.not = icmp eq ptr %p_doorbell, null
  br i1 %tobool68.not, label %hlist_add_head.exit.cleanup_crit_edge, label %if.then69

hlist_add_head.exit.cleanup_crit_edge:            ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then69:                                        ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  %191 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %hw_info, align 8
  %.off127 = add i32 %192, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off127)
  %switch128 = icmp ult i32 %.off127, 2
  %idxprom86.pn.in.in = select i1 %switch128, ptr %iwarp_affin, ptr %fir_affin
  %193 = ptrtoint ptr %idxprom86.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %193)
  %idxprom86.pn.in = load i8, ptr %idxprom86.pn.in.in, align 1
  %idxprom86.pn = zext i8 %idxprom86.pn.in to i32
  %194 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %handle, align 4
  %doorbells.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom86.pn, i32 13
  %196 = ptrtoint ptr %doorbells.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %doorbells.i, align 8
  %mul.i.i130 = shl i32 %195, 2
  %add.ptr.i = getelementptr i8, ptr %197, i32 %mul.i.i130
  %198 = ptrtoint ptr %p_doorbell to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %add.ptr.i, ptr %p_doorbell, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %hlist_add_head.exit.cleanup_crit_edge, %do.end61, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end61 ], [ -12, %do.end ], [ -12, %do.body.cleanup_crit_edge ], [ 0, %if.then69 ], [ 0, %hlist_add_head.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_fcoe_release_conn(ptr noundef %cdev, i32 noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 51
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i:                                         ; preds = %entry
  %mul.i.i.i = mul i32 %handle, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %arrayidx.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 64, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %hash_con.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %hash_con.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %hash_con.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %hash_con.0.i = load ptr, ptr %hash_con.0.in.i, align 4
  %tobool3.not.i = icmp eq ptr %hash_con.0.i, null
  br i1 %tobool3.not.i, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %con.i = getelementptr inbounds %struct.qed_hash_fcoe_con, ptr %hash_con.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %con.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %con.i, align 4
  %icid.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %icid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %icid.i, align 4
  %cmp.i = icmp eq i32 %6, %handle
  br i1 %cmp.i, label %if.end12, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body:                                          ; preds = %for.cond.i.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %7 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp = icmp ult i8 %8, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !101

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef 891, ptr noundef nonnull %spec.select, i32 noundef %handle) #12
  br label %cleanup

if.end12:                                         ; preds = %for.body.i
  %con.i.le = getelementptr inbounds %struct.qed_hash_fcoe_con, ptr %hash_con.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %hash_con.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hash_con.0.i, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %hash_con.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pprev2.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %10, ptr %12, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end12.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end12.hlist_del.exit_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end12.hlist_del.exit_crit_edge
  %15 = ptrtoint ptr %hash_con.0.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %hash_con.0.i, align 4
  %16 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %17 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_info, align 8
  %.off = add i32 %18, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %19 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %19)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond29 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  %20 = ptrtoint ptr %con.i.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %con.i.le, align 4
  %p_fcoe_info.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 35
  %22 = ptrtoint ptr %p_fcoe_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p_fcoe_info.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %23) #8
  %24 = ptrtoint ptr %p_fcoe_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p_fcoe_info.i, align 4
  %free_list.i = getelementptr inbounds %struct.qed_fcoe_info, ptr %25, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.qed_fcoe_info, ptr %25, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %21, ptr noundef %27, ptr noundef %free_list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %hlist_del.exit.qed_fcoe_release_connection.exit_crit_edge

hlist_del.exit.qed_fcoe_release_connection.exit_crit_edge: ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_fcoe_release_connection.exit

if.end.i.i.i:                                     ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %21, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %free_list.i, ptr %21, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %21, ptr %27, align 4
  br label %qed_fcoe_release_connection.exit

qed_fcoe_release_connection.exit:                 ; preds = %if.end.i.i.i, %hlist_del.exit.qed_fcoe_release_connection.exit_crit_edge
  %icid.i43 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %21, i32 0, i32 3
  %32 = ptrtoint ptr %icid.i43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %icid.i43, align 4
  tail call void @qed_cxt_release_cid(ptr noundef %cond29, i32 noundef %33) #8
  %34 = ptrtoint ptr %p_fcoe_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %p_fcoe_info.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %35) #8
  tail call void @kfree(ptr noundef nonnull %hash_con.0.i) #8
  br label %cleanup

cleanup:                                          ; preds = %qed_fcoe_release_connection.exit, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qed_fcoe_release_connection.exit ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_fcoe_offload_conn(ptr noundef %cdev, i32 noundef %handle, ptr noundef readonly %conn_info) #0 align 64 {
entry:
  %p_ent.i = alloca ptr, align 4
  %init_data.i = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 51
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i:                                         ; preds = %entry
  %mul.i.i.i = mul i32 %handle, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %arrayidx.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 64, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %hash_con.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %hash_con.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %hash_con.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %hash_con.0.i = load ptr, ptr %hash_con.0.in.i, align 4
  %tobool3.not.i = icmp eq ptr %hash_con.0.i, null
  br i1 %tobool3.not.i, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %con.i = getelementptr inbounds %struct.qed_hash_fcoe_con, ptr %hash_con.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %con.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %con.i, align 4
  %icid.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %icid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %icid.i, align 4
  %cmp.i = icmp eq i32 %6, %handle
  br i1 %cmp.i, label %if.end12, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body:                                          ; preds = %for.cond.i.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %7 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp = icmp ult i8 %8, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !101

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.40, i32 noundef 912, ptr noundef nonnull %spec.select, i32 noundef %handle) #12
  br label %cleanup

if.end12:                                         ; preds = %for.body.i
  %con.i.le = getelementptr inbounds %struct.qed_hash_fcoe_con, ptr %hash_con.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %con.i.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %con.i.le, align 4
  %11 = ptrtoint ptr %conn_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %conn_info, align 4
  %sq_pbl_addr14 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 6
  %13 = ptrtoint ptr %sq_pbl_addr14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sq_pbl_addr14, align 4
  %sq_curr_page_addr = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 1
  %14 = ptrtoint ptr %sq_curr_page_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sq_curr_page_addr, align 4
  %sq_curr_page_addr15 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 7
  %16 = ptrtoint ptr %sq_curr_page_addr15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sq_curr_page_addr15, align 4
  %sq_next_page_addr = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 2
  %17 = ptrtoint ptr %sq_next_page_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sq_next_page_addr, align 4
  %sq_next_page_addr16 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 8
  %19 = ptrtoint ptr %sq_next_page_addr16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %sq_next_page_addr16, align 4
  %tx_max_fc_pay_len = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 5
  %20 = ptrtoint ptr %tx_max_fc_pay_len to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tx_max_fc_pay_len, align 4
  %tx_max_fc_pay_len17 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 24
  %22 = ptrtoint ptr %tx_max_fc_pay_len17 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %tx_max_fc_pay_len17, align 4
  %e_d_tov_timer_val = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 6
  %23 = ptrtoint ptr %e_d_tov_timer_val to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %e_d_tov_timer_val, align 2
  %e_d_tov_timer_val18 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 25
  %25 = ptrtoint ptr %e_d_tov_timer_val18 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %e_d_tov_timer_val18, align 2
  %rec_tov_timer_val = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 7
  %26 = ptrtoint ptr %rec_tov_timer_val to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rec_tov_timer_val, align 4
  %rec_tov_timer_val19 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 26
  %28 = ptrtoint ptr %rec_tov_timer_val19 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %rec_tov_timer_val19, align 4
  %rx_max_fc_pay_len = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 8
  %29 = ptrtoint ptr %rx_max_fc_pay_len to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rx_max_fc_pay_len, align 2
  %rx_max_fc_pay_len20 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 27
  %31 = ptrtoint ptr %rx_max_fc_pay_len20 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %rx_max_fc_pay_len20, align 2
  %vlan_tag = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 9
  %32 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vlan_tag, align 4
  %vlan_tag21 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 28
  %34 = ptrtoint ptr %vlan_tag21 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %vlan_tag21, align 4
  %max_conc_seqs_c3 = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 11
  %35 = ptrtoint ptr %max_conc_seqs_c3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %max_conc_seqs_c3, align 1
  %max_conc_seqs_c322 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 31
  %37 = ptrtoint ptr %max_conc_seqs_c322 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %max_conc_seqs_c322, align 1
  %flags = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 13
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %flags, align 1
  %flags23 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 33
  %40 = ptrtoint ptr %flags23 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %flags23, align 1
  %def_q_idx = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 14
  %41 = ptrtoint ptr %def_q_idx to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %def_q_idx, align 2
  %def_q_idx24 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 34
  %43 = ptrtoint ptr %def_q_idx24 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %def_q_idx24, align 4
  %src_mac = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 3
  %arrayidx = getelementptr %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 3, i32 5
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx, align 1
  %conv25 = zext i8 %45 to i16
  %shl = shl nuw i16 %conv25, 8
  %arrayidx27 = getelementptr %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 3, i32 4
  %46 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx27, align 4
  %conv28 = zext i8 %47 to i16
  %or = or i16 %shl, %conv28
  %src_mac_addr_hi = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 23
  %48 = ptrtoint ptr %src_mac_addr_hi to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %or, ptr %src_mac_addr_hi, align 2
  %arrayidx31 = getelementptr %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %50 to i16
  %shl33 = shl nuw i16 %conv32, 8
  %arrayidx35 = getelementptr %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 3, i32 2
  %51 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx35, align 2
  %conv36 = zext i8 %52 to i16
  %or37 = or i16 %shl33, %conv36
  %src_mac_addr_mid = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 22
  %53 = ptrtoint ptr %src_mac_addr_mid to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %or37, ptr %src_mac_addr_mid, align 4
  %arrayidx40 = getelementptr %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %55 to i16
  %shl42 = shl nuw i16 %conv41, 8
  %56 = ptrtoint ptr %src_mac to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %src_mac, align 4
  %conv45 = zext i8 %57 to i16
  %or46 = or i16 %shl42, %conv45
  %src_mac_addr_lo = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 21
  %58 = ptrtoint ptr %src_mac_addr_lo to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %or46, ptr %src_mac_addr_lo, align 2
  %dst_mac = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 4
  %arrayidx48 = getelementptr %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 4, i32 5
  %59 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %60 to i16
  %shl50 = shl nuw i16 %conv49, 8
  %arrayidx52 = getelementptr %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 4, i32 4
  %61 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx52, align 2
  %conv53 = zext i8 %62 to i16
  %or54 = or i16 %shl50, %conv53
  %dst_mac_addr_hi = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 20
  %63 = ptrtoint ptr %dst_mac_addr_hi to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %or54, ptr %dst_mac_addr_hi, align 4
  %arrayidx57 = getelementptr %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 4, i32 3
  %64 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %65 to i16
  %shl59 = shl nuw i16 %conv58, 8
  %arrayidx61 = getelementptr %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 4, i32 2
  %66 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx61, align 2
  %conv62 = zext i8 %67 to i16
  %or63 = or i16 %shl59, %conv62
  %dst_mac_addr_mid = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 19
  %68 = ptrtoint ptr %dst_mac_addr_mid to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %or63, ptr %dst_mac_addr_mid, align 2
  %arrayidx66 = getelementptr %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %70 to i16
  %shl68 = shl nuw i16 %conv67, 8
  %71 = ptrtoint ptr %dst_mac to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %dst_mac, align 2
  %conv71 = zext i8 %72 to i16
  %or72 = or i16 %shl68, %conv71
  %dst_mac_addr_lo = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 18
  %73 = ptrtoint ptr %dst_mac_addr_lo to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %or72, ptr %dst_mac_addr_lo, align 4
  %s_id = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 10
  %addr_hi = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 10, i32 2
  %74 = ptrtoint ptr %addr_hi to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %addr_hi, align 2
  %s_id74 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 30
  %addr_hi75 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 30, i32 2
  %76 = ptrtoint ptr %addr_hi75 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %addr_hi75, align 2
  %addr_mid = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 10, i32 1
  %77 = ptrtoint ptr %addr_mid to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %addr_mid, align 1
  %addr_mid78 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 30, i32 1
  %79 = ptrtoint ptr %addr_mid78 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %addr_mid78, align 1
  %80 = ptrtoint ptr %s_id to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %s_id, align 2
  %82 = ptrtoint ptr %s_id74 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %s_id74, align 4
  %d_id = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 12
  %addr_hi82 = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 12, i32 2
  %83 = ptrtoint ptr %addr_hi82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %addr_hi82, align 2
  %d_id83 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 32
  %addr_hi84 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 32, i32 2
  %85 = ptrtoint ptr %addr_hi84 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %addr_hi84, align 2
  %addr_mid86 = getelementptr inbounds %struct.qed_fcoe_params_offload, ptr %conn_info, i32 0, i32 12, i32 1
  %86 = ptrtoint ptr %addr_mid86 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %addr_mid86, align 1
  %addr_mid88 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 32, i32 1
  %88 = ptrtoint ptr %addr_mid88 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %addr_mid88, align 1
  %89 = ptrtoint ptr %d_id to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %d_id, align 2
  %91 = ptrtoint ptr %d_id83 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %d_id83, align 4
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %92 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %hw_info, align 8
  %.off = add i32 %93, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %94 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %94)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond110 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i) #8
  %95 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %p_ent.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #8
  %96 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %96, align 4
  %icid.i175 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 3
  %98 = ptrtoint ptr %icid.i175 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %icid.i175, align 4
  %100 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %init_data.i, align 4
  %opaque_fid.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 10
  %101 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %opaque_fid.i, align 4
  store i16 %102, ptr %96, align 4
  %comp_mode2.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 2
  %103 = ptrtoint ptr %comp_mode2.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 2, ptr %comp_mode2.i, align 4
  %p_comp_data.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 3
  %104 = ptrtoint ptr %p_comp_data.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %p_comp_data.i, align 4
  %call.i = call i32 @qed_sp_init_request(ptr noundef %cond110, ptr noundef nonnull %p_ent.i, i8 noundef zeroext 3, i8 noundef zeroext 1, ptr noundef nonnull %init_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i176 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i176, label %if.end.i178, label %if.end12.qed_sp_fcoe_conn_offload.exit_crit_edge

if.end12.qed_sp_fcoe_conn_offload.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_sp_fcoe_conn_offload.exit

if.end.i178:                                      ; preds = %if.end12
  %105 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %p_ent.i, align 4
  %ramrod.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3
  %call3.i = call zeroext i16 @qed_get_cm_pq_idx(ptr noundef %cond110, i32 noundef 32) #8
  %physical_q04.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 29
  %107 = ptrtoint ptr %physical_q04.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %call3.i, ptr %physical_q04.i, align 2
  %108 = call i16 @llvm.bswap.i16(i16 %call3.i) #8
  %physical_q05.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 3
  %109 = ptrtoint ptr %physical_q05.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %physical_q05.i, align 4
  %conn_id.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 2
  %110 = ptrtoint ptr %conn_id.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %conn_id.i, align 2
  %112 = call i16 @llvm.bswap.i16(i16 %111) #8
  %conn_id6.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 5
  %113 = ptrtoint ptr %conn_id6.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %conn_id6.i, align 4
  %hi.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %114 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %hi.i, align 4
  %115 = ptrtoint ptr %sq_pbl_addr14 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sq_pbl_addr14, align 4
  %117 = call i32 @llvm.bswap.i32(i32 %116) #8
  %118 = ptrtoint ptr %ramrod.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %ramrod.i, align 4
  %sq_curr_page_addr14.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7
  %hi15.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 0, i32 8
  %119 = ptrtoint ptr %hi15.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %hi15.i, align 4
  %120 = ptrtoint ptr %sq_curr_page_addr15 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %sq_curr_page_addr15, align 4
  %122 = call i32 @llvm.bswap.i32(i32 %121) #8
  %123 = ptrtoint ptr %sq_curr_page_addr14.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %sq_curr_page_addr14.i, align 4
  %sq_next_page_addr25.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 1
  %hi26.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 1, i32 3
  %124 = ptrtoint ptr %hi26.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %hi26.i, align 4
  %125 = ptrtoint ptr %sq_next_page_addr16 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %sq_next_page_addr16, align 4
  %127 = call i32 @llvm.bswap.i32(i32 %126) #8
  %128 = ptrtoint ptr %sq_next_page_addr25.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %sq_next_page_addr25.i, align 4
  %xferq_pbl_addr.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 9
  %xferq_pbl_addr36.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4
  %hi37.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4, i32 1
  %129 = ptrtoint ptr %hi37.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %hi37.i, align 4
  %130 = ptrtoint ptr %xferq_pbl_addr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %xferq_pbl_addr.i, align 4
  %132 = call i32 @llvm.bswap.i32(i32 %131) #8
  %133 = ptrtoint ptr %xferq_pbl_addr36.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %xferq_pbl_addr36.i, align 4
  %xferq_addr.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 11
  %xferq_curr_page_addr.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 1, i32 5
  %hi47.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 1, i32 6, i32 2
  %134 = ptrtoint ptr %hi47.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %hi47.i, align 4
  %135 = ptrtoint ptr %xferq_addr.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %xferq_addr.i, align 4
  %137 = call i32 @llvm.bswap.i32(i32 %136) #8
  %138 = ptrtoint ptr %xferq_curr_page_addr.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %xferq_curr_page_addr.i, align 4
  %arrayidx57.i = getelementptr %struct.qed_fcoe_conn, ptr %10, i32 0, i32 11, i32 1
  %xferq_next_page_addr.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2
  %hi60.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 3
  %139 = ptrtoint ptr %hi60.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %hi60.i, align 4
  %140 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx57.i, align 4
  %142 = call i32 @llvm.bswap.i32(i32 %141) #8
  %143 = ptrtoint ptr %xferq_next_page_addr.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %xferq_next_page_addr.i, align 4
  %confq_pbl_addr.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 13
  %respq_pbl_addr.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 4
  %hi71.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 4, i32 1
  %144 = ptrtoint ptr %hi71.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %hi71.i, align 4
  %145 = ptrtoint ptr %confq_pbl_addr.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %confq_pbl_addr.i, align 4
  %147 = call i32 @llvm.bswap.i32(i32 %146) #8
  %148 = ptrtoint ptr %respq_pbl_addr.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %respq_pbl_addr.i, align 4
  %confq_addr.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 15
  %respq_curr_page_addr.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 5
  %hi82.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 6, i32 2
  %149 = ptrtoint ptr %hi82.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %hi82.i, align 4
  %150 = ptrtoint ptr %confq_addr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %confq_addr.i, align 4
  %152 = call i32 @llvm.bswap.i32(i32 %151) #8
  %153 = ptrtoint ptr %respq_curr_page_addr.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %respq_curr_page_addr.i, align 4
  %arrayidx92.i = getelementptr %struct.qed_fcoe_conn, ptr %10, i32 0, i32 15, i32 1
  %respq_next_page_addr.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1
  %hi95.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 3
  %154 = ptrtoint ptr %hi95.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %hi95.i, align 4
  %155 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx92.i, align 4
  %157 = call i32 @llvm.bswap.i32(i32 %156) #8
  %158 = ptrtoint ptr %respq_next_page_addr.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %respq_next_page_addr.i, align 4
  %159 = ptrtoint ptr %dst_mac_addr_lo to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %dst_mac_addr_lo, align 4
  %161 = call i16 @llvm.bswap.i16(i16 %160) #8
  %dst_mac_addr_lo103.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 4
  %162 = ptrtoint ptr %dst_mac_addr_lo103.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %dst_mac_addr_lo103.i, align 4
  %163 = ptrtoint ptr %dst_mac_addr_mid to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %dst_mac_addr_mid, align 2
  %165 = call i16 @llvm.bswap.i16(i16 %164) #8
  %dst_mac_addr_mid104.i = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, ptr %ramrod.i, i32 0, i32 10
  %166 = ptrtoint ptr %dst_mac_addr_mid104.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %165, ptr %dst_mac_addr_mid104.i, align 2
  %167 = ptrtoint ptr %dst_mac_addr_hi to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %dst_mac_addr_hi, align 4
  %169 = call i16 @llvm.bswap.i16(i16 %168) #8
  %dst_mac_addr_hi105.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 4, i32 1
  %170 = ptrtoint ptr %dst_mac_addr_hi105.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %169, ptr %dst_mac_addr_hi105.i, align 4
  %171 = ptrtoint ptr %src_mac_addr_lo to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %src_mac_addr_lo, align 2
  %173 = call i16 @llvm.bswap.i16(i16 %172) #8
  %src_mac_addr_lo106.i = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, ptr %ramrod.i, i32 0, i32 12
  %174 = ptrtoint ptr %src_mac_addr_lo106.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %173, ptr %src_mac_addr_lo106.i, align 2
  %175 = ptrtoint ptr %src_mac_addr_mid to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %src_mac_addr_mid, align 4
  %177 = call i16 @llvm.bswap.i16(i16 %176) #8
  %src_mac_addr_mid107.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 5
  %178 = ptrtoint ptr %src_mac_addr_mid107.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %177, ptr %src_mac_addr_mid107.i, align 4
  %179 = ptrtoint ptr %src_mac_addr_hi to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %src_mac_addr_hi, align 2
  %181 = call i16 @llvm.bswap.i16(i16 %180) #8
  %src_mac_addr_hi108.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 6
  %182 = ptrtoint ptr %src_mac_addr_hi108.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %181, ptr %src_mac_addr_hi108.i, align 2
  %183 = ptrtoint ptr %tx_max_fc_pay_len17 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %tx_max_fc_pay_len17, align 4
  %185 = call i16 @llvm.bswap.i16(i16 %184) #8
  %tx_max_fc_pay_len109.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 6, i32 2
  %186 = ptrtoint ptr %tx_max_fc_pay_len109.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %185, ptr %tx_max_fc_pay_len109.i, align 4
  %187 = ptrtoint ptr %e_d_tov_timer_val18 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %e_d_tov_timer_val18, align 2
  %189 = call i16 @llvm.bswap.i16(i16 %188) #8
  %e_d_tov_timer_val110.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 6, i32 4
  %190 = ptrtoint ptr %e_d_tov_timer_val110.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %189, ptr %e_d_tov_timer_val110.i, align 2
  %191 = ptrtoint ptr %rec_tov_timer_val19 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %rec_tov_timer_val19, align 4
  %193 = call i16 @llvm.bswap.i16(i16 %192) #8
  %rec_rr_tov_timer_val.i = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, ptr %ramrod.i, i32 0, i32 20
  %194 = ptrtoint ptr %rec_rr_tov_timer_val.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %193, ptr %rec_rr_tov_timer_val.i, align 2
  %195 = ptrtoint ptr %rx_max_fc_pay_len20 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %rx_max_fc_pay_len20, align 2
  %197 = call i16 @llvm.bswap.i16(i16 %196) #8
  %rx_max_fc_pay_len111.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2
  %198 = ptrtoint ptr %rx_max_fc_pay_len111.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %197, ptr %rx_max_fc_pay_len111.i, align 4
  %199 = ptrtoint ptr %vlan_tag21 to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %vlan_tag21, align 4
  %201 = call i16 @llvm.bswap.i16(i16 %200) #8
  %vlan_tag112.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 1
  %202 = ptrtoint ptr %vlan_tag112.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %201, ptr %vlan_tag112.i, align 2
  %203 = ptrtoint ptr %addr_hi75 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %addr_hi75, align 2
  %s_id113.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 4
  %addr_hi114.i = getelementptr inbounds %struct.fc_addr_nw, ptr %s_id113.i, i32 0, i32 2
  %205 = ptrtoint ptr %addr_hi114.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %204, ptr %addr_hi114.i, align 2
  %206 = ptrtoint ptr %addr_mid78 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %addr_mid78, align 1
  %addr_mid117.i = getelementptr inbounds %struct.fc_addr_nw, ptr %s_id113.i, i32 0, i32 1
  %208 = ptrtoint ptr %addr_mid117.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %207, ptr %addr_mid117.i, align 1
  %209 = ptrtoint ptr %s_id74 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %s_id74, align 4
  %211 = ptrtoint ptr %s_id113.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %210, ptr %s_id113.i, align 4
  %212 = ptrtoint ptr %max_conc_seqs_c322 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %max_conc_seqs_c322, align 1
  %max_conc_seqs_c3121.i = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, ptr %ramrod.i, i32 0, i32 22
  %214 = ptrtoint ptr %max_conc_seqs_c3121.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %213, ptr %max_conc_seqs_c3121.i, align 1
  %215 = ptrtoint ptr %addr_hi84 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %addr_hi84, align 2
  %d_id123.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 4, i32 1
  %addr_hi124.i = getelementptr inbounds %struct.fc_addr_nw, ptr %d_id123.i, i32 0, i32 2
  %217 = ptrtoint ptr %addr_hi124.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %216, ptr %addr_hi124.i, align 2
  %218 = ptrtoint ptr %addr_mid88 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %addr_mid88, align 1
  %addr_mid128.i = getelementptr inbounds %struct.fc_addr_nw, ptr %d_id123.i, i32 0, i32 1
  %220 = ptrtoint ptr %addr_mid128.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %addr_mid128.i, align 1
  %221 = ptrtoint ptr %d_id83 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %d_id83, align 4
  %223 = ptrtoint ptr %d_id123.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %222, ptr %d_id123.i, align 4
  %224 = ptrtoint ptr %flags23 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %flags23, align 1
  %flags133.i = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, ptr %ramrod.i, i32 0, i32 24
  %226 = ptrtoint ptr %flags133.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %flags133.i, align 1
  %227 = ptrtoint ptr %cond110 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %cond110, align 8
  %mf_bits.i = getelementptr inbounds %struct.qed_dev, ptr %228, i32 0, i32 15
  %229 = ptrtoint ptr %mf_bits.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load volatile i32, ptr %mf_bits.i, align 4
  %231 = and i32 %230, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool135.not.i = icmp eq i32 %231, 0
  br i1 %tobool135.not.i, label %if.end.i178.if.end146.i_crit_edge, label %do.body137.i

if.end.i178.if.end146.i_crit_edge:                ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146.i

do.body137.i:                                     ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #10
  %232 = or i8 %225, 16
  %233 = ptrtoint ptr %flags133.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %flags133.i, align 1
  br label %if.end146.i

if.end146.i:                                      ; preds = %do.body137.i, %if.end.i178.if.end146.i_crit_edge
  %234 = ptrtoint ptr %def_q_idx24 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %def_q_idx24, align 4
  %def_q_idx147.i = getelementptr inbounds %struct.qed_spq_entry, ptr %106, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 6
  %236 = ptrtoint ptr %def_q_idx147.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %def_q_idx147.i, align 2
  %237 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %p_ent.i, align 4
  %call148.i = call i32 @qed_spq_post(ptr noundef %cond110, ptr noundef %238, ptr noundef null) #8
  br label %qed_sp_fcoe_conn_offload.exit

qed_sp_fcoe_conn_offload.exit:                    ; preds = %if.end146.i, %if.end12.qed_sp_fcoe_conn_offload.exit_crit_edge
  %retval.0.i179 = phi i32 [ %call148.i, %if.end146.i ], [ %call.i, %if.end12.qed_sp_fcoe_conn_offload.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #8
  br label %cleanup

cleanup:                                          ; preds = %qed_sp_fcoe_conn_offload.exit, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i179, %qed_sp_fcoe_conn_offload.exit ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_fcoe_destroy_conn(ptr noundef %cdev, i32 noundef %handle, i32 noundef %terminate_params) #0 align 64 {
entry:
  %p_ent.i = alloca ptr, align 4
  %init_data.i = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 51
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i:                                         ; preds = %entry
  %mul.i.i.i = mul i32 %handle, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %arrayidx.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 64, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %hash_con.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %hash_con.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %hash_con.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %hash_con.0.i = load ptr, ptr %hash_con.0.in.i, align 4
  %tobool3.not.i = icmp eq ptr %hash_con.0.i, null
  br i1 %tobool3.not.i, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %con.i = getelementptr inbounds %struct.qed_hash_fcoe_con, ptr %hash_con.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %con.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %con.i, align 4
  %icid.i = getelementptr inbounds %struct.qed_fcoe_conn, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %icid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %icid.i, align 4
  %cmp.i = icmp eq i32 %6, %handle
  br i1 %cmp.i, label %if.end12, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body:                                          ; preds = %for.cond.i.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %7 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp = icmp ult i8 %8, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !101

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %name
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.41, i32 noundef 964, ptr noundef nonnull %spec.select, i32 noundef %handle) #12
  br label %cleanup

if.end12:                                         ; preds = %for.body.i
  %con.i.le = getelementptr inbounds %struct.qed_hash_fcoe_con, ptr %hash_con.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %con.i.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %con.i.le, align 4
  %terminate_params14 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %terminate_params14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %terminate_params, ptr %terminate_params14, align 4
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %12 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_info, align 8
  %.off = add i32 %13, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %14 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %14)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %cond31 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i) #8
  %15 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %p_ent.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #8
  %16 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %16, align 4
  %icid.i46 = getelementptr inbounds %struct.qed_fcoe_conn, ptr %10, i32 0, i32 3
  %18 = ptrtoint ptr %icid.i46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %icid.i46, align 4
  %20 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %init_data.i, align 4
  %opaque_fid.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 17, i32 10
  %21 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %opaque_fid.i, align 4
  store i16 %22, ptr %16, align 4
  %comp_mode2.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 2
  %23 = ptrtoint ptr %comp_mode2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %comp_mode2.i, align 4
  %p_comp_data.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 3
  %24 = ptrtoint ptr %p_comp_data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %p_comp_data.i, align 4
  %call.i = call i32 @qed_sp_init_request(ptr noundef %cond31, ptr noundef nonnull %p_ent.i, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef nonnull %init_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i47 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i47, label %if.end.i48, label %if.end12.qed_sp_fcoe_conn_destroy.exit_crit_edge

if.end12.qed_sp_fcoe_conn_destroy.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_sp_fcoe_conn_destroy.exit

if.end.i48:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p_ent.i, align 4
  %ramrod.i = getelementptr inbounds %struct.qed_spq_entry, ptr %26, i32 0, i32 3
  %hi.i = getelementptr inbounds %struct.qed_spq_entry, ptr %26, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %27 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %hi.i, align 4
  %28 = ptrtoint ptr %terminate_params14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %terminate_params14, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29) #8
  %31 = ptrtoint ptr %ramrod.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ramrod.i, align 4
  %call7.i = call i32 @qed_spq_post(ptr noundef %cond31, ptr noundef %26, ptr noundef null) #8
  br label %qed_sp_fcoe_conn_destroy.exit

qed_sp_fcoe_conn_destroy.exit:                    ; preds = %if.end.i48, %if.end12.qed_sp_fcoe_conn_destroy.exit_crit_edge
  %retval.0.i49 = phi i32 [ %call7.i, %if.end.i48 ], [ %call.i, %if.end12.qed_sp_fcoe_conn_destroy.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #8
  br label %cleanup

cleanup:                                          ; preds = %qed_sp_fcoe_conn_destroy.exit, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i49, %qed_sp_fcoe_conn_destroy.exit ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_fill_dev_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_cxt_get_tid_mem_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_spq_get_cid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_sp_init_request(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_cxt_acquire_cid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_cxt_get_cid_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qed_get_igu_sb_id(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_spq_post(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_sp_destroy_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_rd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_wr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_cxt_release_cid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qed_get_cm_pq_idx(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !12, !13, !14, !15, !17, !19, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 540, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qed_fcoe_alloc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qed_fcoe_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @qed_fcoe_setup.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 555, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 989, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @qed_get_protocol_stats_fcoe._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @qed_get_protocol_stats_fcoe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_qed_get_fcoe_ops, !16, !"__ksymtab_qed_get_fcoe_ops", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 1031, i32 1}
!17 = !{ptr @__ksymtab_qed_put_fcoe_ops, !18, !"__ksymtab_qed_put_fcoe_ops", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 1036, i32 1}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 705, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @qed_fcoe_get_stats._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @qed_fcoe_get_stats._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @qed_fcoe_ops_pass, !25, !"qed_fcoe_ops_pass", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 1013, i32 34}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 514, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qed_fcoe_get_primary_bdq_prod._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @qed_fcoe_get_primary_bdq_prod._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 528, i32 3}
!33 = !{ptr @qed_fcoe_get_secondary_bdq_prod._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @qed_fcoe_get_secondary_bdq_prod._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 804, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @qed_fcoe_start._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @qed_fcoe_start._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 811, i32 3}
!42 = !{ptr @qed_fcoe_start._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @qed_fcoe_start._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 823, i32 4}
!46 = !{ptr @qed_fcoe_start._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @qed_fcoe_start._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 831, i32 4}
!50 = !{ptr @qed_fcoe_start._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @qed_fcoe_start._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 121, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @qed_sp_fcoe_func_start._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @qed_sp_fcoe_func_start._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 140, i32 3}
!59 = !{ptr @qed_sp_fcoe_func_start._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @qed_sp_fcoe_func_start._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 776, i32 3}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @qed_fcoe_stop._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @qed_fcoe_stop._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 781, i32 3}
!68 = !{ptr @qed_fcoe_stop._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @qed_fcoe_stop._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 859, i32 3}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @qed_fcoe_acquire_conn._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @qed_fcoe_acquire_conn._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 867, i32 3}
!77 = !{ptr @qed_fcoe_acquire_conn._entry.35, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @qed_fcoe_acquire_conn._entry_ptr.37, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 890, i32 3}
!81 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @qed_fcoe_release_conn._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @qed_fcoe_release_conn._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 911, i32 3}
!86 = !{ptr @qed_fcoe_offload_conn._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @qed_fcoe_offload_conn._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/qlogic/qed/qed_fcoe.c", i32 963, i32 3}
!90 = !{ptr @qed_fcoe_destroy_conn._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @qed_fcoe_destroy_conn._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{!"auto-init"}
