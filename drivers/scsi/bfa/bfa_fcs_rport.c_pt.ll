; ModuleID = '/llk/IR_all_yes/drivers/scsi/bfa/bfa_fcs_rport.c_pt.bc'
source_filename = "../drivers/scsi/bfa/bfa_fcs_rport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bfa_sm_table_s = type { ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bfa_fcs_lport_s = type { %struct.list_head, ptr, ptr, %struct.bfa_lport_cfg_s, %struct.bfa_timer_s, [3 x i8], i8, i16, %struct.list_head, ptr, %union.bfa_fcs_lport_topo_u, ptr, ptr, ptr, %struct.bfa_fcxp_wqe_s, %struct.bfa_lport_stats_s, %struct.bfa_wc_s }
%struct.bfa_lport_cfg_s = type { i64, i64, %struct.bfa_lport_symname_s, %struct.bfa_lport_symname_s, i32, i32, i32, [16 x i8], [4 x i8] }
%struct.bfa_lport_symname_s = type { [128 x i8] }
%struct.bfa_timer_s = type { %struct.list_head, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%union.bfa_fcs_lport_topo_u = type { %struct.bfa_fcs_lport_n2n_s, [320 x i8] }
%struct.bfa_fcs_lport_n2n_s = type { i32, i16, i64 }
%struct.bfa_fcxp_wqe_s = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.bfa_lport_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_wc_s = type { ptr, ptr, i32 }
%struct.bfa_fcs_s = type { ptr, ptr, ptr, i32, i32, i32, i16, %struct.bfa_fcs_driver_info_s, %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_stats_s, %struct.bfa_wc_s, i32, i32 }
%struct.bfa_fcs_driver_info_s = type { [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8] }
%struct.bfa_fcs_fabric_s = type { %struct.list_head, ptr, ptr, %struct.bfa_fcs_lport_s, i32, i32, i8, i8, i8, i16, i16, i16, i16, %struct.list_head, %struct.list_head, ptr, %struct.bfa_timer_s, i64, i32, %struct.bfa_timer_s, %union.anon.90, %struct.bfa_wc_s, %struct.bfa_vf_stats_s, ptr, [16 x i8], %struct.bfa_wc_s }
%union.anon.90 = type { i16 }
%struct.bfa_vf_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_fcs_stats_s = type { %struct.anon.91 }
%struct.anon.91 = type { i32, i32, i32 }
%struct.bfa_fcs_rport_s = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i64, i64, %struct.bfa_rport_symname_s, ptr, %struct.bfa_timer_s, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.bfa_fcxp_wqe_s, %struct.bfa_rport_stats_s, i32, %struct.bfa_fcs_rpf_s, i32 }
%struct.bfa_rport_symname_s = type { [255 x i8] }
%struct.bfa_rport_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bfa_rport_hal_stats_s }
%struct.bfa_rport_hal_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_fcs_rpf_s = type { ptr, ptr, %struct.bfa_timer_s, ptr, %struct.bfa_fcxp_wqe_s, i32, i32, i32 }
%struct.fc_logi_s = type <{ %struct.fc_els_cmd_s, %struct.fc_plogi_csp_s, i64, i64, %struct.fc_plogi_clp_s, %struct.fc_plogi_clp_s, %struct.fc_plogi_clp_s, %struct.fc_plogi_clp_s, [16 x i8] }>
%struct.fc_els_cmd_s = type { i32 }
%struct.fc_plogi_csp_s = type { i8, i8, i16, i16, i16, i16, i16, i32 }
%struct.fc_plogi_clp_s = type { i128 }
%struct.fchs_s = type { [12 x i8], i8, i8, i16, i16, i16, i32 }
%struct.bfa_rport_aen_data_s = type { i16, [3 x i16], i64, i64, i64, %union.anon.93 }
%union.anon.93 = type { %struct.bfa_rport_qos_attr_s }
%struct.bfa_rport_qos_attr_s = type { i8, [3 x i8], i32 }
%struct.timespec64 = type { i64, i32 }
%struct.bfad_s = type { ptr, %struct.list_head, %struct.bfa_s, %struct.bfa_fcs_s, ptr, ptr, %struct.bfa_pcidev_s, %struct.bfa_ioc_pci_attr_s, ptr, ptr, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i32, %struct.bfad_port_s, %struct.bfa_meminfo_s, %struct.bfa_iocfc_cfg_s, i32, i32, %struct.spinlock, ptr, %struct.bfad_cfg_param_s, [22 x %struct.bfad_msix_s], i32, [64 x i8], [64 x i8], %struct.timer_list, i32, ptr, ptr, %struct.bfa_plog_s, i32, %union.bfad_tmp_buf, %struct.fc_host_statistics, %struct.list_head, ptr, i32, [5 x ptr], %struct.list_head, %struct.list_head, [512 x %struct.bfa_aen_entry_s], %struct.spinlock, %struct.list_head }
%struct.bfa_s = type { ptr, ptr, ptr, %struct.bfa_ioc_s, %struct.bfa_iocfc_s, %struct.bfa_timer_mod_s, %struct.bfa_modules_s, %struct.list_head, i32, [4 x %struct.list_head], i32, %struct.bfa_msix_s, i32, i32 }
%struct.bfa_ioc_s = type { ptr, ptr, %struct.bfa_pcidev_s, ptr, %struct.bfa_timer_s, %struct.bfa_timer_s, %struct.bfa_timer_s, i32, %struct.list_head, ptr, i32, i32, i32, %struct.bfa_ioc_regs_s, ptr, %struct.bfa_ioc_drv_stats_s, i32, i32, i32, i8, %struct.bfa_dma_s, ptr, ptr, %struct.bfa_ioc_mbox_mod_s, ptr, %struct.bfa_iocpf_s, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.bfa_ioc_regs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bfa_ioc_drv_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_dma_s = type { ptr, i64 }
%struct.bfa_ioc_mbox_mod_s = type { %struct.list_head, i32, [35 x %struct.anon.1] }
%struct.anon.1 = type { ptr, ptr }
%struct.bfa_iocpf_s = type { ptr, ptr, i32, i32, i32 }
%struct.bfa_iocfc_s = type { ptr, ptr, %struct.bfa_iocfc_cfg_s, [4 x i32], [4 x i32], [4 x i8], %struct.bfa_cb_qe_s, %struct.bfa_cb_qe_s, %struct.bfa_cb_qe_s, %struct.bfa_cb_qe_s, %struct.bfa_cb_qe_s, i32, i32, i32, %struct.bfa_dma_s, ptr, %struct.bfa_dma_s, ptr, [4 x %struct.bfa_dma_s], [4 x %struct.bfa_dma_s], [4 x %struct.bfa_dma_s], [4 x %struct.bfa_dma_s], %struct.bfa_iocfc_regs_s, %struct.bfa_hwif_s, ptr, ptr, i32, %struct.bfa_faa_args_s, %struct.bfa_mem_dma_s, %struct.bfa_mem_dma_s, [4 x %struct.bfa_mem_dma_s], [4 x %struct.bfa_mem_dma_s], %struct.bfa_mem_kva_s }
%struct.bfa_cb_qe_s = type { %struct.list_head, ptr, i32, i32, i32, ptr }
%struct.bfa_iocfc_regs_s = type { ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr] }
%struct.bfa_hwif_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.bfa_faa_args_s = type { ptr, %struct.bfa_faa_cbfn_s, i8, i32 }
%struct.bfa_faa_cbfn_s = type { ptr, ptr }
%struct.bfa_mem_dma_s = type { %struct.list_head, i32, ptr, i64, ptr, i64 }
%struct.bfa_mem_kva_s = type { %struct.list_head, i32, ptr, ptr }
%struct.bfa_timer_mod_s = type { %struct.list_head }
%struct.bfa_modules_s = type { %struct.bfa_fcdiag_s, %struct.bfa_fcport_s, %struct.bfa_fcxp_mod_s, %struct.bfa_lps_mod_s, %struct.bfa_uf_mod_s, %struct.bfa_rport_mod_s, %struct.bfa_fcp_mod_s, %struct.bfa_sgpg_mod_s, %struct.bfa_port_s, %struct.bfa_ablk_s, %struct.bfa_cee_s, %struct.bfa_sfp_s, %struct.bfa_flash_s, %struct.bfa_diag_s, %struct.bfa_phy_s, %struct.bfa_dconf_mod_s, %struct.bfa_fru_s }
%struct.bfa_fcdiag_s = type { ptr, ptr, %struct.bfa_fcdiag_lb_s, %struct.bfa_fcdiag_qtest_s, %struct.bfa_dport_s }
%struct.bfa_fcdiag_lb_s = type { ptr, ptr, ptr, i32, i32 }
%struct.bfa_fcdiag_qtest_s = type { ptr, ptr, ptr, %struct.bfa_timer_s, i32, i32, i8, i8, i8, i8 }
%struct.bfa_dport_s = type { ptr, ptr, %struct.bfa_reqq_wait_s, ptr, ptr, %union.bfi_diag_dport_msg_u, i8, i8, [2 x i8], i32, i32, i64, i64, %struct.bfa_diag_dport_result_s }
%struct.bfa_reqq_wait_s = type { %struct.list_head, ptr, ptr }
%union.bfi_diag_dport_msg_u = type { %struct.bfi_diag_dport_scn_s }
%struct.bfi_diag_dport_scn_s = type { %struct.bfi_mhdr_s, i8, [3 x i8], %union.anon.5 }
%struct.bfi_mhdr_s = type { i8, i8, %union.anon.2 }
%union.anon.2 = type { i16 }
%union.anon.5 = type { %struct.bfi_diag_dport_scn_teststart_s }
%struct.bfi_diag_dport_scn_teststart_s = type { i64, i64, i8, i8, [2 x i8], i32 }
%struct.bfa_diag_dport_result_s = type { i64, i64, i64, i64, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, [4 x %struct.bfa_diag_dport_subtest_result_s] }
%struct.bfa_diag_dport_subtest_result_s = type { i8, [7 x i8], i64 }
%struct.bfa_fcport_s = type <{ ptr, ptr, i64, i64, i32, i32, i32, [3 x i8], i8, i8, %struct.fc_alpabm_s, %struct.bfa_port_cfg_s, [3 x i8], i32, %struct.bfa_qos_attr_s, %struct.bfa_qos_vc_attr_s, %struct.bfa_reqq_wait_s, %struct.bfa_reqq_wait_s, %struct.bfa_reqq_wait_s, ptr, ptr, %union.anon.6, ptr, %struct.bfa_fcport_ln_s, %struct.bfa_cb_qe_s, %struct.bfa_timer_s, i32, ptr, i64, ptr, i32, %struct.list_head, %struct.list_head, i32, [4 x i8], i64, i32, i32, i32, [4 x i8], %struct.bfa_fcport_trunk_s, i16, [6 x i8], %struct.bfa_mem_dma_s, i32, %struct.bfa_bbcr_attr_s, i32, [4 x i8] }>
%struct.fc_alpabm_s = type { [16 x i8] }
%struct.bfa_port_cfg_s = type { i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, %struct.bfa_qos_bw_s }
%struct.bfa_qos_bw_s = type { i8, i8, i8, i8 }
%struct.bfa_qos_attr_s = type { i8, [3 x i8], i32, %struct.bfa_qos_bw_s, %struct.bfa_qos_bw_s }
%struct.bfa_qos_vc_attr_s = type { i16, i16, i32, [16 x %struct.bfa_qos_vc_info_s] }
%struct.bfa_qos_vc_info_s = type { i8, i8, i8, i8 }
%union.anon.6 = type { %union.bfi_fcport_i2h_msg_u }
%union.bfi_fcport_i2h_msg_u = type { ptr }
%struct.bfa_fcport_ln_s = type { ptr, ptr, %struct.bfa_cb_qe_s, i32 }
%struct.bfa_fcport_trunk_s = type { %struct.bfa_trunk_attr_s }
%struct.bfa_trunk_attr_s = type { i32, i32, i32, i32, [2 x %struct.bfa_trunk_link_attr_s] }
%struct.bfa_trunk_link_attr_s = type { i64, i32, i32, i32, i32 }
%struct.bfa_bbcr_attr_s = type { i8, i8, i8, i8 }
%struct.bfa_fcxp_mod_s = type { ptr, ptr, i16, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, [13 x %struct.bfa_mem_dma_s], %struct.bfa_mem_kva_s }
%struct.bfa_lps_mod_s = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.bfa_mem_kva_s }
%struct.bfa_uf_mod_s = type { ptr, ptr, i16, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, [5 x %struct.bfa_mem_dma_s], %struct.bfa_mem_kva_s }
%struct.bfa_rport_mod_s = type { ptr, %struct.list_head, %struct.list_head, %struct.list_head, i16, %struct.bfa_mem_kva_s }
%struct.bfa_fcp_mod_s = type { ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, i32, i32, i32, [4 x %struct.bfa_dma_s], %struct.bfa_fcpim_s, [4 x %struct.bfa_mem_dma_s], %struct.bfa_mem_kva_s, i32 }
%struct.bfa_fcpim_s = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.bfa_fcpim_del_itn_stats_s, i32, i32, i64, ptr, ptr }
%struct.bfa_fcpim_del_itn_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_sgpg_mod_s = type { ptr, i32, i32, %struct.list_head, %struct.list_head, [8 x %struct.bfa_mem_dma_s], %struct.bfa_mem_kva_s }
%struct.bfa_port_s = type { ptr, ptr, ptr, i32, i32, %struct.bfa_mbox_cmd_s, ptr, ptr, i32, i64, ptr, %struct.bfa_dma_s, i32, %struct.bfa_mbox_cmd_s, ptr, ptr, i32, %struct.bfa_ioc_notify_s, i32, i32, %struct.bfa_mem_dma_s }
%struct.bfa_mbox_cmd_s = type { %struct.list_head, [8 x i32] }
%struct.bfa_ioc_notify_s = type { %struct.list_head, ptr, ptr }
%struct.bfa_ablk_s = type { ptr, ptr, ptr, %struct.bfa_dma_s, i32, %struct.bfa_mbox_cmd_s, ptr, ptr, %struct.bfa_ioc_notify_s, %struct.bfa_mem_dma_s }
%struct.bfa_cee_s = type { ptr, i32, i32, i32, i32, i32, i32, %struct.bfa_cee_cbfn_s, %struct.bfa_ioc_notify_s, ptr, ptr, ptr, %struct.bfa_dma_s, %struct.bfa_dma_s, ptr, %struct.bfa_mbox_cmd_s, %struct.bfa_mbox_cmd_s, %struct.bfa_mbox_cmd_s, %struct.bfa_mem_dma_s }
%struct.bfa_cee_cbfn_s = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bfa_sfp_s = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.bfa_mbox_cmd_s, ptr, i64, %struct.bfa_ioc_notify_s, ptr, i32, ptr, ptr, i8, i8, i8, i8, %struct.bfa_mem_dma_s, i8 }
%struct.bfa_flash_s = type { ptr, ptr, i32, i8, [3 x i8], i32, i32, i32, i32, ptr, i64, %struct.bfa_reqq_wait_s, ptr, ptr, ptr, %struct.bfa_cb_qe_s, i32, %struct.bfa_mbox_cmd_s, %struct.bfa_ioc_notify_s, %struct.bfa_mem_dma_s }
%struct.bfa_diag_s = type { ptr, ptr, ptr, %struct.bfa_diag_fwping_s, %struct.bfa_diag_tsensor_s, %struct.bfa_diag_sfpshow_s, %struct.bfa_diag_led_s, %struct.bfa_diag_beacon_s, ptr, %struct.bfa_timer_s, ptr, ptr, ptr, i8, i8, [2 x i8], i32, %struct.bfa_ioc_notify_s, %struct.bfa_mem_dma_s }
%struct.bfa_diag_fwping_s = type { ptr, ptr, ptr, i32, i8, [3 x i8], i32, i32, %struct.bfa_mbox_cmd_s, ptr, i64 }
%struct.bfa_diag_tsensor_s = type { ptr, ptr, ptr, i8, [3 x i8], i32, %struct.bfa_mbox_cmd_s }
%struct.bfa_diag_sfpshow_s = type { ptr, ptr, ptr, i8, i8, [2 x i8], i32, %struct.bfa_mbox_cmd_s, ptr, i64 }
%struct.bfa_diag_led_s = type { %struct.bfa_mbox_cmd_s, i32 }
%struct.bfa_diag_beacon_s = type { %struct.bfa_mbox_cmd_s, i32, i32 }
%struct.bfa_phy_s = type { ptr, ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, i64, %struct.bfa_reqq_wait_s, ptr, ptr, ptr, %struct.bfa_cb_qe_s, i32, %struct.bfa_mbox_cmd_s, %struct.bfa_ioc_notify_s, %struct.bfa_mem_dma_s }
%struct.bfa_dconf_mod_s = type { ptr, i8, i32, i32, %struct.bfa_timer_s, ptr, ptr, ptr, ptr, %struct.bfa_mem_kva_s }
%struct.bfa_fru_s = type { ptr, ptr, i8, [3 x i8], i32, i32, i32, ptr, i64, %struct.bfa_reqq_wait_s, ptr, ptr, ptr, %struct.bfa_cb_qe_s, i32, %struct.bfa_mbox_cmd_s, %struct.bfa_ioc_notify_s, %struct.bfa_mem_dma_s, i8 }
%struct.bfa_msix_s = type { i32, [22 x ptr] }
%struct.bfa_pcidev_s = type { i32, i8, i16, i16, ptr }
%struct.bfa_ioc_pci_attr_s = type { i16, i16, i16, i16, i32, i32, [8 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bfad_port_s = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.bfa_meminfo_s = type { %struct.bfa_mem_dma_s, %struct.bfa_mem_kva_s }
%struct.bfa_iocfc_cfg_s = type { %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_drvcfg_s }
%struct.bfa_iocfc_fwcfg_s = type { i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, [6 x i8] }
%struct.bfa_iocfc_drvcfg_s = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i16, i32 }
%struct.bfad_cfg_param_s = type { i32, i32, i32, i32, i32 }
%struct.bfad_msix_s = type { ptr, %struct.msix_entry, [32 x i8] }
%struct.msix_entry = type { i32, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.bfa_plog_s = type { [8 x i8], i8, [7 x i8], i32, i16, i16, [256 x %struct.bfa_plog_rec_s] }
%struct.bfa_plog_rec_s = type { i64, i8, i8, i8, i8, i8, i8, i16, %union.anon }
%union.anon = type { [8 x i32] }
%union.bfad_tmp_buf = type { [256 x i64] }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bfa_aen_entry_s = type { %struct.list_head, i32, i32, %union.bfa_aen_data_u, i64, i64, i32, i32 }
%union.bfa_aen_data_u = type { %struct.bfa_rport_aen_data_s }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.bfad_im_s = type { ptr, ptr, [20 x i8], %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.fc_rpsc_speed_info_s = type { i16, i16 }
%struct.bfa_port_attr_s = type { i64, i64, i64, i64, i32, i32, %struct.fc_symname_s, i32, i32, %struct.bfa_port_cfg_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, [2 x i8] }
%struct.fc_symname_s = type { [256 x i8] }
%struct.bfa_rport_attr_s = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.bfa_rport_symname_s, i32, %struct.bfa_rport_qos_attr_s, i32, i32, i32 }
%struct.bfa_rport_s = type { %struct.list_head, ptr, ptr, ptr, i16, i16, i8, [3 x i8], %struct.bfa_rport_info_s, %struct.bfa_reqq_wait_s, %struct.bfa_cb_qe_s, %struct.bfa_rport_hal_stats_s, %struct.bfa_rport_qos_attr_s, %union.a }
%struct.bfa_rport_info_s = type <{ i16, [2 x i8], i64, i8, i8, i16, i32 }>
%union.a = type { i32 }
%struct.bfa_lps_s = type { %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i64, i64, i64, i64, %struct.mac_s, %struct.mac_s, %struct.bfa_reqq_wait_s, ptr, %struct.bfa_cb_qe_s, ptr, i32 }
%struct.mac_s = type { [6 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.92, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.92 = type { ptr }
%struct.fc_ls_rjt_s = type { %struct.fc_els_cmd_s, i32 }
%struct.ct_hdr_s = type { i128 }
%struct.fc_rpsc2_acc_s = type { i8, i8, i16, [1 x %struct.fc_rpsc2_port_info_s] }
%struct.fc_rpsc2_port_info_s = type { i32, i16, i16, i8, i8, i16 }

@rport_sm_table = internal constant { [25 x %struct.bfa_sm_table_s], [84 x i8] } { [25 x %struct.bfa_sm_table_s] [%struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_uninit, i32 0, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_plogi_sending, i32 2, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_plogiacc_sending, i32 3, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_plogi_retry, i32 4, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_plogi, i32 2, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_fc4_fcs_online, i32 3, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_hal_online, i32 3, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_online, i32 3, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_nsquery_sending, i32 5, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_nsquery, i32 5, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_adisc_online_sending, i32 6, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_adisc_online, i32 6, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_adisc_offline_sending, i32 6, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_adisc_offline, i32 6, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_fc4_logorcv, i32 8, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_fc4_logosend, i32 7, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_fc4_offline, i32 1, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_hcb_offline, i32 1, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_hcb_logorcv, i32 8, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_hcb_logosend, i32 7, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_logo_sending, i32 7, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_offline, i32 1, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_nsdisc_sending, i32 9, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_nsdisc_retry, i32 9, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_rport_sm_nsdisc_sent, i32 9, ptr null }], [84 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_del_timeout = internal global { i32, [28 x i8] } { i32 90000, [28 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_max_logins = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/scsi/bfa/bfa_fcs_rport.c\00", [63 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_uninit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Assertion failure: %s:%d: %d\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bfa_fcs_rport_sm_uninit\00", [40 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_uninit._entry_ptr = internal global ptr @bfa_fcs_rport_sm_uninit._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_plogi_sending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.3, ptr @.str, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bfa_fcs_rport_sm_plogi_sending\00", [33 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_plogi_sending._entry_ptr = internal global ptr @bfa_fcs_rport_sm_plogi_sending._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_plogi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.4, ptr @.str, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bfa_fcs_rport_sm_plogi\00", [41 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_plogi._entry_ptr = internal global ptr @bfa_fcs_rport_sm_plogi._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_fc4_fcs_online._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.5, ptr @.str, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bfa_fcs_rport_sm_fc4_fcs_online\00", [32 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_fc4_fcs_online._entry_ptr = internal global ptr @bfa_fcs_rport_sm_fc4_fcs_online._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_online._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.6, ptr @.str, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bfa_fcs_rport_sm_online\00", [40 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_online._entry_ptr = internal global ptr @bfa_fcs_rport_sm_online._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_nsquery_sending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.7, ptr @.str, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bfa_fcs_rport_sm_nsquery_sending\00", [63 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_nsquery_sending._entry_ptr = internal global ptr @bfa_fcs_rport_sm_nsquery_sending._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_nsquery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.8, ptr @.str, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bfa_fcs_rport_sm_nsquery\00", [39 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_nsquery._entry_ptr = internal global ptr @bfa_fcs_rport_sm_nsquery._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_adisc_online_sending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.9, ptr @.str, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bfa_fcs_rport_sm_adisc_online_sending\00", [58 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_adisc_online_sending._entry_ptr = internal global ptr @bfa_fcs_rport_sm_adisc_online_sending._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_adisc_online._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.10, ptr @.str, i32 893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bfa_fcs_rport_sm_adisc_online\00", [34 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_adisc_online._entry_ptr = internal global ptr @bfa_fcs_rport_sm_adisc_online._entry, section ".printk_index", align 4
@bfa_log_level = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_hal_offline_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 2492, ptr @.str.11, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Remote port (WWN = %s) connectivity lost for logical port (WWN = %s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bfa_fcs_rport_hal_offline_action\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_hal_offline_action._entry_ptr = internal global ptr @bfa_fcs_rport_hal_offline_action._entry, section ".printk_index", align 4
@bfa_fcs_rport_hal_offline_action._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str, i32 2499, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Remote port (WWN = %s) offlined by logical port (WWN = %s)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_hal_offline_action._entry_ptr.18 = internal global ptr @bfa_fcs_rport_hal_offline_action._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\00", [56 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_fc4_logosend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.20, ptr @.str, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bfa_fcs_rport_sm_fc4_logosend\00", [34 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_fc4_logosend._entry_ptr = internal global ptr @bfa_fcs_rport_sm_fc4_logosend._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_hcb_logosend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.21, ptr @.str, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bfa_fcs_rport_sm_hcb_logosend\00", [34 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_hcb_logosend._entry_ptr = internal global ptr @bfa_fcs_rport_sm_hcb_logosend._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_logo_sending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.22, ptr @.str, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bfa_fcs_rport_sm_logo_sending\00", [34 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_logo_sending._entry_ptr = internal global ptr @bfa_fcs_rport_sm_logo_sending._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_delete_pending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.23, ptr @.str, i32 1684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bfa_fcs_rport_sm_delete_pending\00", [32 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_delete_pending._entry_ptr = internal global ptr @bfa_fcs_rport_sm_delete_pending._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_fc4_off_delete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.24, ptr @.str, i32 1654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bfa_fcs_rport_sm_fc4_off_delete\00", [32 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_fc4_off_delete._entry_ptr = internal global ptr @bfa_fcs_rport_sm_fc4_off_delete._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_fc4_offline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.25, ptr @.str, i32 1108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bfa_fcs_rport_sm_fc4_offline\00", [35 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_fc4_offline._entry_ptr = internal global ptr @bfa_fcs_rport_sm_fc4_offline._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_hcb_offline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.26, ptr @.str, i32 1188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bfa_fcs_rport_sm_hcb_offline\00", [35 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_hcb_offline._entry_ptr = internal global ptr @bfa_fcs_rport_sm_hcb_offline._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_adisc_offline_sending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.27, ptr @.str, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bfa_fcs_rport_sm_adisc_offline_sending\00", [57 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_adisc_offline_sending._entry_ptr = internal global ptr @bfa_fcs_rport_sm_adisc_offline_sending._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_adisc_offline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.28, ptr @.str, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bfa_fcs_rport_sm_adisc_offline\00", [33 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_adisc_offline._entry_ptr = internal global ptr @bfa_fcs_rport_sm_adisc_offline._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_fc4_logorcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.29, ptr @.str, i32 1021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bfa_fcs_rport_sm_fc4_logorcv\00", [35 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_fc4_logorcv._entry_ptr = internal global ptr @bfa_fcs_rport_sm_fc4_logorcv._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_hcb_logorcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.30, ptr @.str, i32 1266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bfa_fcs_rport_sm_hcb_logorcv\00", [35 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_hcb_logorcv._entry_ptr = internal global ptr @bfa_fcs_rport_sm_hcb_logorcv._entry, section ".printk_index", align 4
@bfa_fcs_rport_fcs_online_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.31, ptr @.str, i32 2424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bfa_fcs_rport_fcs_online_action\00", [32 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_fcs_online_action._entry_ptr = internal global ptr @bfa_fcs_rport_fcs_online_action._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_plogi_retry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.32, ptr @.str, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bfa_fcs_rport_sm_plogi_retry\00", [35 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_plogi_retry._entry_ptr = internal global ptr @bfa_fcs_rport_sm_plogi_retry._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_offline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.33, ptr @.str, i32 1415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bfa_fcs_rport_sm_offline\00", [39 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_offline._entry_ptr = internal global ptr @bfa_fcs_rport_sm_offline._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_plogiacc_sending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.34, ptr @.str, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bfa_fcs_rport_sm_plogiacc_sending\00", [62 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_plogiacc_sending._entry_ptr = internal global ptr @bfa_fcs_rport_sm_plogiacc_sending._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_hal_online._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.35, ptr @.str, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bfa_fcs_rport_sm_hal_online\00", [36 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_hal_online._entry_ptr = internal global ptr @bfa_fcs_rport_sm_hal_online._entry, section ".printk_index", align 4
@bfa_fcs_rport_hal_online_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.36, ptr @.str, i32 2442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bfa_fcs_rport_hal_online_action\00", [32 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_hal_online_action._entry_ptr = internal global ptr @bfa_fcs_rport_hal_online_action._entry, section ".printk_index", align 4
@bfa_fcs_rport_hal_online_action._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str, i32 2456, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Remote port (WWN = %s) online for logical port (WWN = %s)\0A\00", [37 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_hal_online_action._entry_ptr.39 = internal global ptr @bfa_fcs_rport_hal_online_action._entry.37, section ".printk_index", align 4
@bfa_fcs_rport_sm_nsdisc_sending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.40, ptr @.str, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bfa_fcs_rport_sm_nsdisc_sending\00", [32 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_nsdisc_sending._entry_ptr = internal global ptr @bfa_fcs_rport_sm_nsdisc_sending._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_nsdisc_sent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.41, ptr @.str, i32 1626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bfa_fcs_rport_sm_nsdisc_sent\00", [35 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_nsdisc_sent._entry_ptr = internal global ptr @bfa_fcs_rport_sm_nsdisc_sent._entry, section ".printk_index", align 4
@bfa_fcs_rport_sm_nsdisc_retry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.42, ptr @.str, i32 1536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bfa_fcs_rport_sm_nsdisc_retry\00", [34 x i8] zeroinitializer }, align 32
@bfa_fcs_rport_sm_nsdisc_retry._entry_ptr = internal global ptr @bfa_fcs_rport_sm_nsdisc_retry._entry, section ".printk_index", align 4
@bfa_fcs_rpf_sm_uninit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.43, ptr @.str, i32 3164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bfa_fcs_rpf_sm_uninit\00", [42 x i8] zeroinitializer }, align 32
@bfa_fcs_rpf_sm_uninit._entry_ptr = internal global ptr @bfa_fcs_rpf_sm_uninit._entry, section ".printk_index", align 4
@bfa_fcs_rpf_sm_rpsc_sending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.44, ptr @.str, i32 3187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bfa_fcs_rpf_sm_rpsc_sending\00", [36 x i8] zeroinitializer }, align 32
@bfa_fcs_rpf_sm_rpsc_sending._entry_ptr = internal global ptr @bfa_fcs_rpf_sm_rpsc_sending._entry, section ".printk_index", align 4
@bfa_fcs_rpf_sm_rpsc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.45, ptr @.str, i32 3233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bfa_fcs_rpf_sm_rpsc\00", [44 x i8] zeroinitializer }, align 32
@bfa_fcs_rpf_sm_rpsc._entry_ptr = internal global ptr @bfa_fcs_rpf_sm_rpsc._entry, section ".printk_index", align 4
@bfa_fcs_rpf_sm_online._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.46, ptr @.str, i32 3279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bfa_fcs_rpf_sm_online\00", [42 x i8] zeroinitializer }, align 32
@bfa_fcs_rpf_sm_online._entry_ptr = internal global ptr @bfa_fcs_rpf_sm_online._entry, section ".printk_index", align 4
@bfa_fcs_rpf_sm_rpsc_retry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.47, ptr @.str, i32 3259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bfa_fcs_rpf_sm_rpsc_retry\00", [38 x i8] zeroinitializer }, align 32
@bfa_fcs_rpf_sm_rpsc_retry._entry_ptr = internal global ptr @bfa_fcs_rpf_sm_rpsc_retry._entry, section ".printk_index", align 4
@bfa_fcs_rpf_sm_offline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.48, ptr @.str, i32 3302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bfa_fcs_rpf_sm_offline\00", [41 x i8] zeroinitializer }, align 32
@bfa_fcs_rpf_sm_offline._entry_ptr = internal global ptr @bfa_fcs_rpf_sm_offline._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 5, i64 32, i64 33, i64 82, i64 125]
@__sancov_gen_cov_switch_values.49 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 10, i64 16]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 15, i64 16]
@__sancov_gen_cov_switch_values.52 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 5, i64 6, i64 7, i64 8, i64 15, i64 19]
@__sancov_gen_cov_switch_values.53 = internal global [11 x i64] [i64 9, i64 32, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 13, i64 15, i64 19]
@__sancov_gen_cov_switch_values.54 = internal global [12 x i64] [i64 10, i64 32, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 12, i64 15, i64 17, i64 19]
@__sancov_gen_cov_switch_values.55 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 15, i64 17]
@__sancov_gen_cov_switch_values.56 = internal global [15 x i64] [i64 13, i64 32, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10, i64 15, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.57 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 11, i64 15, i64 17, i64 19, i64 20]
@__sancov_gen_cov_switch_values.58 = internal global [12 x i64] [i64 10, i64 32, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 15, i64 17, i64 19, i64 21]
@__sancov_gen_cov_switch_values.59 = internal global [12 x i64] [i64 10, i64 32, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 11, i64 15, i64 17, i64 19]
@__sancov_gen_cov_switch_values.60 = internal global [12 x i64] [i64 10, i64 32, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 15, i64 17, i64 19, i64 20]
@__sancov_gen_cov_switch_values.61 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 7, i64 12, i64 14, i64 17]
@__sancov_gen_cov_switch_values.62 = internal global [12 x i64] [i64 10, i64 32, i64 4, i64 5, i64 7, i64 8, i64 12, i64 14, i64 15, i64 17, i64 19, i64 20]
@__sancov_gen_cov_switch_values.63 = internal global [10 x i64] [i64 8, i64 32, i64 4, i64 7, i64 12, i64 14, i64 15, i64 17, i64 19, i64 20]
@__sancov_gen_cov_switch_values.64 = internal global [11 x i64] [i64 9, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 15, i64 17]
@__sancov_gen_cov_switch_values.65 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 15, i64 17]
@__sancov_gen_cov_switch_values.66 = internal global [12 x i64] [i64 10, i64 32, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10, i64 15, i64 17]
@__sancov_gen_cov_switch_values.67 = internal global [11 x i64] [i64 9, i64 32, i64 2, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10, i64 15, i64 17]
@__sancov_gen_cov_switch_values.68 = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 13, i64 15, i64 17, i64 19, i64 20]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 7, i64 14]
@__sancov_gen_cov_switch_values.70 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 6, i64 8, i64 15, i64 17, i64 19, i64 20]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 5, i64 7, i64 13]
@__sancov_gen_cov_switch_values.72 = internal global [12 x i64] [i64 10, i64 32, i64 2, i64 4, i64 5, i64 7, i64 8, i64 13, i64 15, i64 17, i64 19, i64 20]
@__sancov_gen_cov_switch_values.73 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 5, i64 6, i64 7, i64 17, i64 19]
@__sancov_gen_cov_switch_values.74 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 4, i64 5, i64 7, i64 9, i64 10, i64 17, i64 19]
@__sancov_gen_cov_switch_values.75 = internal global [10 x i64] [i64 8, i64 32, i64 4, i64 5, i64 7, i64 13, i64 15, i64 17, i64 19, i64 20]
@__sancov_gen_cov_switch_values.76 = internal global [12 x i64] [i64 10, i64 32, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10, i64 15, i64 17]
@__sancov_gen_cov_switch_values.77 = internal global [11 x i64] [i64 9, i64 32, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 11, i64 15, i64 17]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.82 = internal global [9 x i64] [i64 7, i64 16, i64 0, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768]
@___asan_gen_.83 = private unnamed_addr constant [15 x i8] c"rport_sm_table\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 139, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant [26 x i8] c"bfa_fcs_rport_del_timeout\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 23, i32 1 }
@___asan_gen_.89 = private unnamed_addr constant [25 x i8] c"bfa_fcs_rport_max_logins\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 29, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 2337, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 201, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 262, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 504, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 568, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 672, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 722, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 781, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 832, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 893, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 2489, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 2496, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [29 x i8] c"../drivers/scsi/bfa/bfa_cs.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 296, i32 19 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1058, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1305, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1346, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1684, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1654, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1108, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1188, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 934, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 982, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1021, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1266, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 2424, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 399, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1415, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 328, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 620, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 2442, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 2454, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1472, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1626, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1536, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 3164, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 3187, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 3233, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 3279, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 3259, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.339 = private constant [36 x i8] c"../drivers/scsi/bfa/bfa_fcs_rport.c\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 3302, i32 3 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @bfa_fcs_rpf_sm_offline._entry, ptr @bfa_fcs_rpf_sm_offline._entry_ptr, ptr @bfa_fcs_rpf_sm_online._entry, ptr @bfa_fcs_rpf_sm_online._entry_ptr, ptr @bfa_fcs_rpf_sm_rpsc._entry, ptr @bfa_fcs_rpf_sm_rpsc._entry_ptr, ptr @bfa_fcs_rpf_sm_rpsc_retry._entry, ptr @bfa_fcs_rpf_sm_rpsc_retry._entry_ptr, ptr @bfa_fcs_rpf_sm_rpsc_sending._entry, ptr @bfa_fcs_rpf_sm_rpsc_sending._entry_ptr, ptr @bfa_fcs_rpf_sm_uninit._entry, ptr @bfa_fcs_rpf_sm_uninit._entry_ptr, ptr @bfa_fcs_rport_fcs_online_action._entry, ptr @bfa_fcs_rport_fcs_online_action._entry_ptr, ptr @bfa_fcs_rport_hal_offline_action._entry, ptr @bfa_fcs_rport_hal_offline_action._entry.15, ptr @bfa_fcs_rport_hal_offline_action._entry_ptr, ptr @bfa_fcs_rport_hal_offline_action._entry_ptr.18, ptr @bfa_fcs_rport_hal_online_action._entry, ptr @bfa_fcs_rport_hal_online_action._entry.37, ptr @bfa_fcs_rport_hal_online_action._entry_ptr, ptr @bfa_fcs_rport_hal_online_action._entry_ptr.39, ptr @bfa_fcs_rport_sm_adisc_offline._entry, ptr @bfa_fcs_rport_sm_adisc_offline._entry_ptr, ptr @bfa_fcs_rport_sm_adisc_offline_sending._entry, ptr @bfa_fcs_rport_sm_adisc_offline_sending._entry_ptr, ptr @bfa_fcs_rport_sm_adisc_online._entry, ptr @bfa_fcs_rport_sm_adisc_online._entry_ptr, ptr @bfa_fcs_rport_sm_adisc_online_sending._entry, ptr @bfa_fcs_rport_sm_adisc_online_sending._entry_ptr, ptr @bfa_fcs_rport_sm_delete_pending._entry, ptr @bfa_fcs_rport_sm_delete_pending._entry_ptr, ptr @bfa_fcs_rport_sm_fc4_fcs_online._entry, ptr @bfa_fcs_rport_sm_fc4_fcs_online._entry_ptr, ptr @bfa_fcs_rport_sm_fc4_logorcv._entry, ptr @bfa_fcs_rport_sm_fc4_logorcv._entry_ptr, ptr @bfa_fcs_rport_sm_fc4_logosend._entry, ptr @bfa_fcs_rport_sm_fc4_logosend._entry_ptr, ptr @bfa_fcs_rport_sm_fc4_off_delete._entry, ptr @bfa_fcs_rport_sm_fc4_off_delete._entry_ptr, ptr @bfa_fcs_rport_sm_fc4_offline._entry, ptr @bfa_fcs_rport_sm_fc4_offline._entry_ptr, ptr @bfa_fcs_rport_sm_hal_online._entry, ptr @bfa_fcs_rport_sm_hal_online._entry_ptr, ptr @bfa_fcs_rport_sm_hcb_logorcv._entry, ptr @bfa_fcs_rport_sm_hcb_logorcv._entry_ptr, ptr @bfa_fcs_rport_sm_hcb_logosend._entry, ptr @bfa_fcs_rport_sm_hcb_logosend._entry_ptr, ptr @bfa_fcs_rport_sm_hcb_offline._entry, ptr @bfa_fcs_rport_sm_hcb_offline._entry_ptr, ptr @bfa_fcs_rport_sm_logo_sending._entry, ptr @bfa_fcs_rport_sm_logo_sending._entry_ptr, ptr @bfa_fcs_rport_sm_nsdisc_retry._entry, ptr @bfa_fcs_rport_sm_nsdisc_retry._entry_ptr, ptr @bfa_fcs_rport_sm_nsdisc_sending._entry, ptr @bfa_fcs_rport_sm_nsdisc_sending._entry_ptr, ptr @bfa_fcs_rport_sm_nsdisc_sent._entry, ptr @bfa_fcs_rport_sm_nsdisc_sent._entry_ptr, ptr @bfa_fcs_rport_sm_nsquery._entry, ptr @bfa_fcs_rport_sm_nsquery._entry_ptr, ptr @bfa_fcs_rport_sm_nsquery_sending._entry, ptr @bfa_fcs_rport_sm_nsquery_sending._entry_ptr, ptr @bfa_fcs_rport_sm_offline._entry, ptr @bfa_fcs_rport_sm_offline._entry_ptr, ptr @bfa_fcs_rport_sm_online._entry, ptr @bfa_fcs_rport_sm_online._entry_ptr, ptr @bfa_fcs_rport_sm_plogi._entry, ptr @bfa_fcs_rport_sm_plogi._entry_ptr, ptr @bfa_fcs_rport_sm_plogi_retry._entry, ptr @bfa_fcs_rport_sm_plogi_retry._entry_ptr, ptr @bfa_fcs_rport_sm_plogi_sending._entry, ptr @bfa_fcs_rport_sm_plogi_sending._entry_ptr, ptr @bfa_fcs_rport_sm_plogiacc_sending._entry, ptr @bfa_fcs_rport_sm_plogiacc_sending._entry_ptr, ptr @bfa_fcs_rport_sm_uninit._entry, ptr @bfa_fcs_rport_sm_uninit._entry_ptr, ptr @rport_sm_table, ptr @bfa_fcs_rport_del_timeout, ptr @bfa_fcs_rport_max_logins, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rport_sm_table to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_del_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_max_logins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_uninit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_plogi_sending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_plogi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_fc4_fcs_online._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_online._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_nsquery_sending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_nsquery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_adisc_online_sending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_adisc_online._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_hal_offline_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_hal_offline_action._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_fc4_logosend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_hcb_logosend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_logo_sending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_delete_pending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_fc4_off_delete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_fc4_offline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_hcb_offline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_adisc_offline_sending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_adisc_offline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_fc4_logorcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_hcb_logorcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_fcs_online_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_plogi_retry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_offline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_plogiacc_sending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_hal_online._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_hal_online_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_hal_online_action._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_nsdisc_sending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_nsdisc_sent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rport_sm_nsdisc_retry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rpf_sm_uninit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rpf_sm_rpsc_sending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rpf_sm_rpsc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rpf_sm_online._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rpf_sm_rpsc_retry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_rpf_sm_offline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bfa_fcs_rport_create(ptr noundef %port, i32 noundef %rpid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %port, i32 0, i32 9
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %rpid to i64
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 2604, i64 noundef %conv) #7
  %call = tail call fastcc ptr @bfa_fcs_rport_alloc(ptr noundef %port, i64 noundef 0, i32 noundef %rpid)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sm, align 8
  tail call void %5(ptr noundef nonnull %call, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bfa_trc(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bfa_fcs_rport_alloc(ptr noundef %port, i64 noundef %pwwn, i32 noundef %rpid) unnamed_addr #0 align 64 {
entry:
  %rport = alloca ptr, align 4
  %rport_drv = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs1 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %port, i32 0, i32 9
  %0 = ptrtoint ptr %fcs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rport) #7
  %2 = ptrtoint ptr %rport to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %rport, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rport_drv) #7
  %3 = ptrtoint ptr %rport_drv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %rport_drv, align 4, !annotation !178
  %num_rport_logins = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %num_rport_logins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rport_logins, align 4
  %6 = load i32, ptr @bfa_fcs_rport_max_logins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %6)
  %cmp.not = icmp ult i32 %5, %6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %rpid to i64
  tail call void @__bfa_trc(ptr noundef %8, i32 noundef 2051, i32 noundef 2312, i64 noundef %conv) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bfad = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %bfad to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bfad, align 4
  %call = call i32 @bfa_fcb_rport_alloc(ptr noundef %10, ptr noundef nonnull %rport, ptr noundef nonnull %rport_drv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %trcmod5 = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %trcmod5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trcmod5, align 8
  %conv6 = zext i32 %rpid to i64
  call void @__bfa_trc(ptr noundef %12, i32 noundef 2051, i32 noundef 2318, i64 noundef %conv6) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %13 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rport, align 4
  %port8 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %port8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %port, ptr %port8, align 8
  %fcs9 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %14, i32 0, i32 2
  %16 = ptrtoint ptr %fcs9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %fcs9, align 4
  %17 = ptrtoint ptr %rport_drv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rport_drv, align 4
  %rp_drv = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %rp_drv to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %rp_drv, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %14, i32 0, i32 4
  %20 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %rpid, ptr %pid, align 4
  %pwwn10 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %14, i32 0, i32 12
  %21 = ptrtoint ptr %pwwn10 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %pwwn, ptr %pwwn10, align 8
  %old_pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %14, i32 0, i32 5
  %22 = ptrtoint ptr %old_pid to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %old_pid, align 8
  %bfa_rport = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %14, i32 0, i32 20
  %23 = ptrtoint ptr %bfa_rport to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %bfa_rport, align 4
  %roles = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %port, i32 0, i32 3, i32 4
  %24 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %roles, align 8
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end7.if.end26_crit_edge, !prof !179

if.end7.if.end26_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2337, i32 noundef 9, ptr noundef null) #7
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.end7.if.end26_crit_edge
  %26 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %roles, align 8
  %and35 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end26.if.end45_crit_edge, label %if.then37

if.end26.if.end45_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then37:                                        ; preds = %if.end26
  %28 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rport, align 4
  %call38 = call ptr @bfa_fcs_itnim_create(ptr noundef %29) #7
  %30 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rport, align 4
  %itnim = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %31, i32 0, i32 17
  %32 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call38, ptr %itnim, align 8
  %tobool40.not = icmp eq ptr %call38, null
  br i1 %tobool40.not, label %if.then41, label %if.then37.if.end45_crit_edge

if.then37.if.end45_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then41:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %trcmod42 = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %trcmod42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %trcmod42, align 8
  %conv43 = zext i32 %rpid to i64
  call void @__bfa_trc(ptr noundef %34, i32 noundef 2051, i32 noundef 2342, i64 noundef %conv43) #7
  %35 = ptrtoint ptr %rport_drv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rport_drv, align 4
  call void @kfree(ptr noundef %36) #7
  br label %cleanup

if.end45:                                         ; preds = %if.then37.if.end45_crit_edge, %if.end26.if.end45_crit_edge
  %37 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rport, align 4
  call void @bfa_fcs_lport_add_rport(ptr noundef %port, ptr noundef %38) #7
  %39 = ptrtoint ptr %num_rport_logins to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_rport_logins, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %num_rport_logins, align 4
  %41 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rport, align 4
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %42, i32 0, i32 15
  %43 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @bfa_fcs_rport_sm_uninit, ptr %sm, align 8
  %pid47 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %42, i32 0, i32 4
  %44 = ptrtoint ptr %pid47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pid47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %45)
  %cmp48 = icmp ugt i32 %45, 16773120
  br i1 %cmp48, label %if.end45.if.end51_crit_edge, label %if.then50

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %rpf1.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %42, i32 0, i32 27
  %fcs.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %42, i32 0, i32 2
  %46 = ptrtoint ptr %fcs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fcs.i, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %trcmod.i, align 8
  %conv.i = zext i32 %45 to i64
  call void @__bfa_trc(ptr noundef %49, i32 noundef 2051, i32 noundef 3313, i64 noundef %conv.i) #7
  %rport2.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %42, i32 0, i32 27, i32 1
  %50 = ptrtoint ptr %rport2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %42, ptr %rport2.i, align 4
  %51 = ptrtoint ptr %rpf1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @bfa_fcs_rpf_sm_uninit, ptr %rpf1.i, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end45.if.end51_crit_edge
  %52 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rport, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then41, %if.then4, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then4 ], [ %53, %if.end51 ], [ null, %if.then41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rport_drv) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rport) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bfa_fcs_rport_create_by_wwn(ptr noundef %port, i64 noundef %rpwwn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %port, i32 0, i32 9
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 2625, i64 noundef %rpwwn) #7
  %call = tail call fastcc ptr @bfa_fcs_rport_alloc(ptr noundef %port, i64 noundef %rpwwn, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sm, align 8
  tail call void %5(ptr noundef nonnull %call, i32 noundef 16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_rport_start(ptr noundef %port, ptr nocapture noundef readonly %fchs, ptr nocapture noundef readonly %plogi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %0, i32 12)
  %bf.load = load i96, ptr %fchs, align 1
  %bf.lshr = lshr i96 %bf.load, 32
  %1 = trunc i96 %bf.lshr to i32
  %bf.cast = and i32 %1, 16777215
  %call = tail call fastcc ptr @bfa_fcs_rport_alloc(ptr noundef %port, i64 noundef 0, i32 noundef %bf.cast)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_update(ptr noundef nonnull %call, ptr noundef %plogi)
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call, i32 0, i32 15
  %2 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm, align 8
  tail call void %3(ptr noundef nonnull %call, i32 noundef 3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_fcs_rport_update(ptr nocapture noundef %rport, ptr nocapture noundef readonly %plogi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 8
  %port_name = getelementptr inbounds %struct.fc_logi_s, ptr %plogi, i32 0, i32 2
  %2 = ptrtoint ptr %port_name to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %port_name, align 1
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %pwwn, align 8
  %node_name = getelementptr inbounds %struct.fc_logi_s, ptr %plogi, i32 0, i32 3
  %5 = ptrtoint ptr %node_name to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %node_name, align 1
  %nwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 13
  %7 = ptrtoint ptr %nwwn to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %nwwn, align 8
  %fc_cos = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 8
  %8 = ptrtoint ptr %fc_cos to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %fc_cos, align 8
  %class3 = getelementptr inbounds %struct.fc_logi_s, ptr %plogi, i32 0, i32 6
  %9 = ptrtoint ptr %class3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 16)
  %bf.load = load i128, ptr %class3, align 1
  %10 = lshr i128 %bf.load, 124
  %11 = trunc i128 %10 to i32
  %12 = and i32 %11, 8
  store i32 %12, ptr %fc_cos, align 8
  %class2 = getelementptr inbounds %struct.fc_logi_s, ptr %plogi, i32 0, i32 5
  %13 = ptrtoint ptr %class2 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 16)
  %bf.load3 = load i128, ptr %class2, align 1
  %tobool6.not = icmp sgt i128 %bf.load3, -1
  br i1 %tobool6.not, label %entry.if.end9_crit_edge, label %if.then7

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %12, 4
  %14 = ptrtoint ptr %fc_cos to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %fc_cos, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %entry.if.end9_crit_edge
  %cisc = getelementptr inbounds %struct.fc_logi_s, ptr %plogi, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %cisc to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %bf.load10 = load i16, ptr %cisc, align 1
  %16 = lshr i16 %bf.load10, 1
  %17 = and i16 %16, 1
  %bf.cast12 = zext i16 %17 to i32
  %cisc13 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 9
  %18 = ptrtoint ptr %cisc13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %bf.cast12, ptr %cisc13, align 4
  %19 = ptrtoint ptr %class3 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 16)
  %bf.load15 = load i128, ptr %class3, align 1
  %bf.lshr16 = lshr i128 %bf.load15, 64
  %20 = trunc i128 %bf.lshr16 to i32
  %conv20 = and i32 %20, 65535
  %rxsz = getelementptr inbounds %struct.fc_logi_s, ptr %plogi, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %rxsz to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %rxsz, align 1
  %conv22 = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20, i32 %conv22)
  %cmp = icmp ult i32 %conv20, %conv22
  %23 = trunc i128 %bf.lshr16 to i16
  %spec.select = select i1 %cmp, i16 %23, i16 %22
  %24 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 6
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %spec.select, ptr %24, align 4
  %fcs = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trcmod, align 8
  %bbcred = getelementptr inbounds %struct.fc_logi_s, ptr %plogi, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %bbcred to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %bbcred, align 1
  %conv36 = zext i16 %31 to i64
  tail call void @__bfa_trc(ptr noundef %29, i32 noundef 2051, i32 noundef 2547, i64 noundef %conv36) #7
  %32 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fcs, align 4
  %trcmod38 = getelementptr inbounds %struct.bfa_fcs_s, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %trcmod38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %trcmod38, align 8
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fabric, align 4
  %bb_credit = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %bb_credit to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %bb_credit, align 4
  %conv39 = zext i16 %39 to i64
  tail call void @__bfa_trc(ptr noundef %35, i32 noundef 2051, i32 noundef 2548, i64 noundef %conv39) #7
  %40 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fabric, align 4
  %fab_type = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %fab_type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fab_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp41 = icmp eq i32 %43, 1
  br i1 %cmp41, label %if.end9.if.end69_crit_edge, label %land.lhs.true

if.end9.if.end69_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true:                                    ; preds = %if.end9
  %44 = ptrtoint ptr %bbcred to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %bbcred, align 1
  %bb_credit47 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %41, i32 0, i32 9
  %46 = ptrtoint ptr %bb_credit47 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %bb_credit47, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %47)
  %cmp49 = icmp ult i16 %45, %47
  br i1 %cmp49, label %if.then51, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fcs, align 4
  %trcmod53 = getelementptr inbounds %struct.bfa_fcs_s, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %trcmod53 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %trcmod53, align 8
  %conv56 = zext i16 %45 to i64
  tail call void @__bfa_trc(ptr noundef %51, i32 noundef 2051, i32 noundef 2560, i64 noundef %conv56) #7
  %52 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fcs, align 4
  %trcmod58 = getelementptr inbounds %struct.bfa_fcs_s, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %trcmod58 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %trcmod58, align 8
  %56 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fabric, align 4
  %bb_credit60 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %bb_credit60 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %bb_credit60, align 4
  %conv61 = zext i16 %59 to i64
  tail call void @__bfa_trc(ptr noundef %55, i32 noundef 2051, i32 noundef 2561, i64 noundef %conv61) #7
  %60 = ptrtoint ptr %bbcred to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %bbcred, align 1
  %62 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fabric, align 4
  %bb_credit65 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %bb_credit65 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %61, ptr %bb_credit65, align 4
  %65 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fcs, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %69 = load ptr, ptr %fabric, align 4
  %bb_credit68 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %69, i32 0, i32 9
  %70 = ptrtoint ptr %bb_credit68 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %bb_credit68, align 4
  tail call void @bfa_fcport_set_tx_bbcredit(ptr noundef %68, i16 noundef zeroext %71) #7
  br label %if.end69

if.end69:                                         ; preds = %if.then51, %land.lhs.true.if.end69_crit_edge, %if.end9.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_rport_plogi_create(ptr noundef %port, ptr nocapture noundef readonly %fchs, ptr nocapture noundef readonly %plogi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port_name = getelementptr inbounds %struct.fc_logi_s, ptr %plogi, i32 0, i32 2
  %0 = ptrtoint ptr %port_name to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %port_name, align 1
  %2 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %2, i32 12)
  %bf.load = load i96, ptr %fchs, align 1
  %bf.lshr = lshr i96 %bf.load, 32
  %3 = trunc i96 %bf.lshr to i32
  %bf.cast = and i32 %3, 16777215
  %call = tail call fastcc ptr @bfa_fcs_rport_alloc(ptr noundef %port, i64 noundef %1, i32 noundef %bf.cast)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_update(ptr noundef nonnull %call, ptr noundef %plogi)
  %ox_id = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %ox_id, align 1
  %reply_oxid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %reply_oxid to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %reply_oxid, align 2
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trcmod, align 8
  %conv = zext i16 %5 to i64
  tail call void @__bfa_trc(ptr noundef %10, i32 noundef 2051, i32 noundef 2672, i64 noundef %conv) #7
  %plogi_rcvd = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call, i32 0, i32 25, i32 8
  %11 = ptrtoint ptr %plogi_rcvd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %plogi_rcvd, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %plogi_rcvd, align 4
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call, i32 0, i32 15
  %13 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sm, align 8
  tail call void %14(ptr noundef nonnull %call, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_rport_plogi(ptr noundef %rport, ptr nocapture noundef readonly %rx_fchs, ptr nocapture noundef readonly %plogi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @bfa_fcs_rport_update(ptr noundef %rport, ptr noundef %plogi)
  %ox_id = getelementptr inbounds %struct.fchs_s, ptr %rx_fchs, i32 0, i32 4
  %0 = ptrtoint ptr %ox_id to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %ox_id, align 1
  %reply_oxid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 7
  %2 = ptrtoint ptr %reply_oxid to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %reply_oxid, align 2
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %3 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trcmod, align 8
  %conv = zext i16 %1 to i64
  tail call void @__bfa_trc(ptr noundef %6, i32 noundef 2051, i32 noundef 2693, i64 noundef %conv) #7
  %7 = ptrtoint ptr %rx_fchs to i32
  call void @__asan_loadN_noabort(i32 %7, i32 12)
  %bf.load = load i96, ptr %rx_fchs, align 1
  %bf.lshr = lshr i96 %bf.load, 32
  %8 = trunc i96 %bf.lshr to i32
  %bf.cast = and i32 %8, 16777215
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bf.cast, ptr %pid, align 4
  %10 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fcs, align 4
  %trcmod3 = getelementptr inbounds %struct.bfa_fcs_s, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %trcmod3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trcmod3, align 8
  %conv5 = zext i32 %bf.cast to i64
  tail call void @__bfa_trc(ptr noundef %13, i32 noundef 2051, i32 noundef 2696, i64 noundef %conv5) #7
  %plogi_rcvd = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 25, i32 8
  %14 = ptrtoint ptr %plogi_rcvd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %plogi_rcvd, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %plogi_rcvd, align 4
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %16 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sm, align 8
  tail call void %17(ptr noundef %rport, i32 noundef 2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_rport_scn(ptr noundef %rport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rscns = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 25, i32 2
  %0 = ptrtoint ptr %rscns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rscns, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %rscns, align 4
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %2 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm, align 8
  tail call void %3(ptr noundef %rport, i32 noundef 8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_rport_online(ptr noundef %cbarg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 2732, i64 noundef %5) #7
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 15
  %6 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm, align 8
  tail call void %7(ptr noundef %cbarg, i32 noundef 12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_rport_offline(ptr noundef %cbarg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 2754, i64 noundef %5) #7
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 15
  %6 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm, align 8
  tail call void %7(ptr noundef %cbarg, i32 noundef 13) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_rport_qos_scn_flowid(ptr nocapture noundef readonly %cbarg, [2 x i32] %old_qos_attr.coerce, [2 x i32] %new_qos_attr.coerce) local_unnamed_addr #0 align 64 {
entry:
  %aen_data = alloca %struct.bfa_rport_aen_data_s, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %new_qos_attr.coerce.fca.0.extract = extractvalue [2 x i32] %new_qos_attr.coerce, 0
  %new_qos_attr.coerce.fca.1.extract = extractvalue [2 x i32] %new_qos_attr.coerce, 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %aen_data) #7
  %0 = call ptr @memset(ptr %aen_data, i32 255, i32 32)
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 2
  %1 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 12
  %5 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %4, i32 noundef 2051, i32 noundef 2780, i64 noundef %6) #7
  %priv = getelementptr inbounds %struct.bfa_rport_aen_data_s, ptr %aen_data, i32 0, i32 5
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %new_qos_attr.coerce.fca.0.extract, ptr %priv, align 8
  %new_qos_attr.sroa.2.0.priv.sroa_idx = getelementptr inbounds %struct.bfa_rport_aen_data_s, ptr %aen_data, i32 0, i32 5, i32 0, i32 2
  %8 = ptrtoint ptr %new_qos_attr.sroa.2.0.priv.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %new_qos_attr.coerce.fca.1.extract, ptr %new_qos_attr.sroa.2.0.priv.sroa_idx, align 4
  call fastcc void @bfa_fcs_rport_aen_post(ptr noundef %cbarg, i32 noundef 5, ptr noundef nonnull %aen_data)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %aen_data) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_fcs_rport_aen_post(ptr nocapture noundef readonly %rport, i32 noundef %event, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 8
  %fcs = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs, align 4
  %bfad2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bfad2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bfad2, align 4
  %bfad_aen_spinlock = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 42
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_aen_spinlock) #7
  %free_aen_q = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 39
  %6 = ptrtoint ptr %free_aen_q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %free_aen_q, align 4
  %cmp.i.not = icmp eq ptr %7, %free_aen_q
  br i1 %cmp.i.not, label %entry.if.then25.critedge_crit_edge, label %do.end17

entry.if.then25.critedge_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.critedge

do.end17:                                         ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %prev = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %free_aen_q, ptr %prev, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = ptrtoint ptr %free_aen_q to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %free_aen_q, align 4
  %tobool18.not = icmp eq ptr %7, null
  br i1 %tobool18.not, label %do.end17.if.then25.critedge_crit_edge, label %if.then19

do.end17.if.then25.critedge_crit_edge:            ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.critedge

if.then19:                                        ; preds = %do.end17
  %active_aen_q = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 40
  %prev.i = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 40, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %7, ptr noundef %14, ptr noundef %active_aen_q) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then19.list_add_tail.exit_crit_edge

if.then19.list_add_tail.exit_crit_edge:           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %7, ptr %prev.i, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %active_aen_q, ptr %7, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %7, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then19.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_aen_spinlock, i32 noundef %call5) #7
  %19 = and i32 %event, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %switch = icmp eq i32 %19, 4
  br i1 %switch, label %if.end39.sink.split, label %list_add_tail.exit.if.end39_crit_edge

list_add_tail.exit.if.end39_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then25.critedge:                               ; preds = %do.end17.if.then25.critedge_crit_edge, %entry.if.then25.critedge_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_aen_spinlock, i32 noundef %call5) #7
  br label %cleanup

if.end39.sink.split:                              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %priv36 = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %7, i32 0, i32 3, i32 0, i32 5
  %priv37 = getelementptr inbounds %struct.bfa_rport_aen_data_s, ptr %data, i32 0, i32 5
  %20 = ptrtoint ptr %priv37 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %priv37, align 8
  %22 = ptrtoint ptr %priv36 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %priv36, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %list_add_tail.exit.if.end39_crit_edge
  %23 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port1, align 8
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fabric, align 4
  %vf_id = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vf_id, align 2
  %aen_data41 = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %7, i32 0, i32 3
  %29 = ptrtoint ptr %aen_data41 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %aen_data41, align 8
  %fcs43 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %30 = ptrtoint ptr %fcs43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fcs43, align 4
  %call44 = tail call ptr @bfa_fcs_get_base_port(ptr noundef %31) #7
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %call44, i32 0, i32 3
  %32 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %port_cfg, align 8
  %ppwwn = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %7, i32 0, i32 3, i32 0, i32 2
  %34 = ptrtoint ptr %ppwwn to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %ppwwn, align 8
  %35 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port1, align 8
  %port_cfg47 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %port_cfg47 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %port_cfg47, align 8
  %lpwwn = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %7, i32 0, i32 3, i32 0, i32 3
  %39 = ptrtoint ptr %lpwwn to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %lpwwn, align 8
  %pwwn50 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %40 = ptrtoint ptr %pwwn50 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %pwwn50, align 8
  %rpwwn = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %7, i32 0, i32 3, i32 0, i32 4
  %42 = ptrtoint ptr %rpwwn to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %rpwwn, align 8
  %43 = ptrtoint ptr %fcs43 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fcs43, align 4
  %fcs_aen_seq = getelementptr inbounds %struct.bfa_fcs_s, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %fcs_aen_seq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fcs_aen_seq, align 8
  %inc = add i32 %46, 1
  store i32 %inc, ptr %fcs_aen_seq, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #7
  %47 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts.i) #7
  %48 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %ts.i, align 8
  %aen_tv_sec.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %7, i32 0, i32 4
  %50 = ptrtoint ptr %aen_tv_sec.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %aen_tv_sec.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %51 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %52, 1000
  %conv.i81 = sext i32 %div.i to i64
  %aen_tv_usec.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %7, i32 0, i32 5
  %53 = ptrtoint ptr %aen_tv_usec.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv.i81, ptr %aen_tv_usec.i, align 8
  %inst_no.i = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 18
  %54 = ptrtoint ptr %inst_no.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %inst_no.i, align 8
  %bfad_num.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %7, i32 0, i32 7
  %56 = ptrtoint ptr %bfad_num.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %bfad_num.i, align 4
  %seq_num.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %7, i32 0, i32 6
  %57 = ptrtoint ptr %seq_num.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %inc, ptr %seq_num.i, align 8
  %aen_category.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %7, i32 0, i32 1
  %58 = ptrtoint ptr %aen_category.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %aen_category.i, align 8
  %aen_type.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %7, i32 0, i32 2
  %59 = ptrtoint ptr %aen_type.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %event, ptr %aen_type.i, align 4
  %bfad_flags.i = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 19
  %60 = ptrtoint ptr %bfad_flags.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bfad_flags.i, align 4
  %and.i = and i32 %61, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end39.bfad_im_post_vendor_event.exit_crit_edge, label %if.then.i

if.end39.bfad_im_post_vendor_event.exit_crit_edge: ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfad_im_post_vendor_event.exit

if.then.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %im.i = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 29
  %62 = ptrtoint ptr %im.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %im.i, align 4
  %drv_workq.i = getelementptr inbounds %struct.bfad_im_s, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %drv_workq.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %drv_workq.i, align 4
  %aen_im_notify_work.i = getelementptr inbounds %struct.bfad_im_s, ptr %63, i32 0, i32 3
  %call.i.i82 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %65, ptr noundef %aen_im_notify_work.i) #7
  br label %bfad_im_post_vendor_event.exit

bfad_im_post_vendor_event.exit:                   ; preds = %if.then.i, %if.end39.bfad_im_post_vendor_event.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #7
  br label %cleanup

cleanup:                                          ; preds = %bfad_im_post_vendor_event.exit, %if.then25.critedge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_rport_scn_online(ptr nocapture noundef readonly %bfa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa, align 8
  %bfa_fcs = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 3
  %call = tail call ptr @bfa_fcs_get_base_port(ptr noundef %bfa_fcs) #7
  %rport_q = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %rport_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %qe.013 = load ptr, ptr %rport_q, align 4
  %cmp.i.not14 = icmp eq ptr %qe.013, %rport_q
  br i1 %cmp.i.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %qe.015 = phi ptr [ %qe.0, %for.body.for.body_crit_edge ], [ %qe.013, %entry.for.body_crit_edge ]
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %qe.015, i32 0, i32 15
  %3 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm, align 8
  tail call void %4(ptr noundef %qe.015, i32 noundef 20) #7
  %scn_online = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %qe.015, i32 0, i32 28
  %5 = ptrtoint ptr %scn_online to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %scn_online, align 4
  %6 = ptrtoint ptr %qe.015 to i32
  call void @__asan_load4_noabort(i32 %6)
  %qe.0 = load ptr, ptr %qe.015, align 4
  %cmp.i.not = icmp eq ptr %qe.0, %rport_q
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call4 = tail call i32 @bfa_fcs_lport_is_online(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bfa_fcs_lport_lip_scn_online(ptr noundef %call) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcs_get_base_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcs_lport_is_online(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_lport_lip_scn_online(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_rport_scn_no_dev(ptr noundef %rport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %0 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm, align 8
  tail call void %1(ptr noundef %rport, i32 noundef 19) #7
  %scn_online = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 28
  %2 = ptrtoint ptr %scn_online to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %scn_online, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_rport_scn_offline(ptr nocapture noundef readonly %bfa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa, align 8
  %bfa_fcs = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 3
  %call = tail call ptr @bfa_fcs_get_base_port(ptr noundef %bfa_fcs) #7
  %rport_q = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %rport_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %qe.09 = load ptr, ptr %rport_q, align 4
  %cmp.i.not10 = icmp eq ptr %qe.09, %rport_q
  br i1 %cmp.i.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %qe.011 = phi ptr [ %qe.0, %for.body.for.body_crit_edge ], [ %qe.09, %entry.for.body_crit_edge ]
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %qe.011, i32 0, i32 15
  %3 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm, align 8
  tail call void %4(ptr noundef %qe.011, i32 noundef 19) #7
  %scn_online = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %qe.011, i32 0, i32 28
  %5 = ptrtoint ptr %scn_online to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %scn_online, align 4
  %6 = ptrtoint ptr %qe.011 to i32
  call void @__asan_load4_noabort(i32 %6)
  %qe.0 = load ptr, ptr %qe.011, align 4
  %cmp.i.not = icmp eq ptr %qe.0, %rport_q
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_rport_qos_scn_prio(ptr nocapture noundef readonly %cbarg, [2 x i32] %old_qos_attr.coerce, [2 x i32] %new_qos_attr.coerce) local_unnamed_addr #0 align 64 {
entry:
  %aen_data = alloca %struct.bfa_rport_aen_data_s, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %new_qos_attr.coerce.fca.0.extract = extractvalue [2 x i32] %new_qos_attr.coerce, 0
  %new_qos_attr.coerce.fca.1.extract = extractvalue [2 x i32] %new_qos_attr.coerce, 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %aen_data) #7
  %0 = call ptr @memset(ptr %aen_data, i32 255, i32 32)
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 2
  %1 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 12
  %5 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %4, i32 noundef 2051, i32 noundef 2849, i64 noundef %6) #7
  %priv = getelementptr inbounds %struct.bfa_rport_aen_data_s, ptr %aen_data, i32 0, i32 5
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %new_qos_attr.coerce.fca.0.extract, ptr %priv, align 8
  %new_qos_attr.sroa.2.0.priv.sroa_idx = getelementptr inbounds %struct.bfa_rport_aen_data_s, ptr %aen_data, i32 0, i32 5, i32 0, i32 2
  %8 = ptrtoint ptr %new_qos_attr.sroa.2.0.priv.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %new_qos_attr.coerce.fca.1.extract, ptr %new_qos_attr.sroa.2.0.priv.sroa_idx, align 4
  call fastcc void @bfa_fcs_rport_aen_post(ptr noundef %cbarg, i32 noundef 4, ptr noundef nonnull %aen_data)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %aen_data) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_rport_uf_recv(ptr noundef %rport, ptr noundef %fchs, i16 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  %fchs.i109 = alloca %struct.fchs_s, align 1
  %speeds.i = alloca %struct.fc_rpsc_speed_info_s, align 2
  %pport_attr.i = alloca %struct.bfa_port_attr_s, align 8
  %fchs.i81 = alloca %struct.fchs_s, align 1
  %fchs.i = alloca %struct.fchs_s, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 8
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %2 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %6 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %6, i32 12)
  %bf.load = load i96, ptr %fchs, align 1
  %bf.lshr = lshr i96 %bf.load, 32
  %7 = trunc i96 %bf.lshr to i32
  %bf.cast = and i32 %7, 16777215
  %conv = zext i32 %bf.cast to i64
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2051, i32 noundef 2864, i64 noundef %conv) #7
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod3 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod3, align 8
  %12 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %12, i32 12)
  %bf.load4 = load i96, ptr %fchs, align 1
  %bf.lshr5 = lshr i96 %bf.load4, 64
  %13 = trunc i96 %bf.lshr5 to i32
  %bf.cast7 = and i32 %13, 16777215
  %conv8 = zext i32 %bf.cast7 to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2051, i32 noundef 2865, i64 noundef %conv8) #7
  %14 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fcs, align 4
  %trcmod10 = getelementptr inbounds %struct.bfa_fcs_s, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %trcmod10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trcmod10, align 8
  %18 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %18, i32 12)
  %bf.load11 = load i96, ptr %fchs, align 1
  %19 = trunc i96 %bf.load11 to i32
  %20 = lshr i32 %19, 24
  %conv15 = zext i32 %20 to i64
  tail call void @__bfa_trc(ptr noundef %17, i32 noundef 2051, i32 noundef 2866, i64 noundef %conv15) #7
  %21 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %21, i32 12)
  %bf.load16 = load i96, ptr %fchs, align 1
  %.mask75 = and i96 %bf.load16, 4278190080
  %cmp.not = icmp eq i96 %.mask75, 16777216
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.fchs_s, ptr %fchs, i32 1
  %22 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fcs, align 4
  %trcmod22 = getelementptr inbounds %struct.bfa_fcs_s, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %trcmod22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trcmod22, align 8
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %bf.load23 = load i32, ptr %add.ptr, align 1
  %bf.lshr24 = lshr i32 %bf.load23, 24
  %conv25 = zext i32 %bf.lshr24 to i64
  tail call void @__bfa_trc(ptr noundef %25, i32 noundef 2051, i32 noundef 2873, i64 noundef %conv25) #7
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %bf.load26 = load i32, ptr %add.ptr, align 1
  %bf.lshr27 = lshr i32 %bf.load26, 24
  %trunc = trunc i32 %bf.lshr27 to i8
  %28 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %sw.default [
    i8 5, label %sw.bb
    i8 82, label %sw.bb28
    i8 33, label %sw.bb31
    i8 32, label %sw.bb36
    i8 125, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %plogi_rcvd = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 15, i32 53
  %29 = ptrtoint ptr %plogi_rcvd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %plogi_rcvd, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %plogi_rcvd, align 4
  %ox_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %31 = ptrtoint ptr %ox_id.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %ox_id.i, align 1
  %reply_oxid.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 7
  %33 = ptrtoint ptr %reply_oxid.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %reply_oxid.i, align 2
  %34 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fcs, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %trcmod.i, align 8
  %conv.i = zext i16 %32 to i64
  tail call void @__bfa_trc(ptr noundef %37, i32 noundef 2051, i32 noundef 2577, i64 noundef %conv.i) #7
  %prlo.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 10
  %38 = ptrtoint ptr %prlo.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %prlo.i, align 8
  %logo_rcvd.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 25, i32 20
  %39 = ptrtoint ptr %logo_rcvd.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %logo_rcvd.i, align 4
  %inc.i = add i32 %40, 1
  store i32 %inc.i, ptr %logo_rcvd.i, align 4
  %sm.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %41 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sm.i, align 8
  tail call void %42(ptr noundef %rport, i32 noundef 4) #7
  br label %cleanup

sw.bb28:                                          ; preds = %if.end
  %adisc_rcvd = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 15, i32 55
  %43 = ptrtoint ptr %adisc_rcvd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %adisc_rcvd, align 4
  %inc30 = add i32 %44, 1
  store i32 %inc30, ptr %adisc_rcvd, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fchs.i) #7
  %45 = call ptr @memset(ptr %fchs.i, i32 255, i32 24)
  %46 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %port1, align 8
  %fcs.i76 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %fcs.i76 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fcs.i76, align 4
  %trcmod.i77 = getelementptr inbounds %struct.bfa_fcs_s, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %trcmod.i77 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %trcmod.i77, align 8
  %52 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %52, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %bf.lshr.i = lshr i96 %bf.load.i, 32
  %53 = trunc i96 %bf.lshr.i to i32
  %bf.cast.i = and i32 %53, 16777215
  %conv.i78 = zext i32 %bf.cast.i to i64
  tail call void @__bfa_trc(ptr noundef %51, i32 noundef 2051, i32 noundef 2244, i64 noundef %conv.i78) #7
  %54 = ptrtoint ptr %fcs.i76 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fcs.i76, align 4
  %trcmod3.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %trcmod3.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %trcmod3.i, align 8
  %58 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %58, i32 12)
  %bf.load4.i = load i96, ptr %fchs, align 1
  %bf.lshr5.i = lshr i96 %bf.load4.i, 64
  %59 = trunc i96 %bf.lshr5.i to i32
  %bf.cast7.i = and i32 %59, 16777215
  %conv8.i = zext i32 %bf.cast7.i to i64
  tail call void @__bfa_trc(ptr noundef %57, i32 noundef 2051, i32 noundef 2245, i64 noundef %conv8.i) #7
  %adisc_rcvd.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 25, i32 10
  %60 = ptrtoint ptr %adisc_rcvd.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %adisc_rcvd.i, align 4
  %inc.i79 = add i32 %61, 1
  store i32 %inc.i79, ptr %adisc_rcvd.i, align 4
  %itnim.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %62 = ptrtoint ptr %itnim.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %itnim.i, align 8
  %call.i = tail call i32 @bfa_fcs_itnim_get_online_state(ptr noundef %63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb28
  %64 = ptrtoint ptr %fcs.i76 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fcs.i76, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %call11.i = tail call ptr @bfa_fcxp_req_rsp_alloc(ptr noundef null, ptr noundef %67, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool.not.i, label %if.then.i.bfa_fcs_rport_process_adisc.exit_crit_edge, label %if.end.i

if.then.i.bfa_fcs_rport_process_adisc.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_process_adisc.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = tail call ptr @bfa_fcxp_get_reqbuf(ptr noundef nonnull %call11.i) #7
  %68 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %68, i32 12)
  %bf.load14.i = load i96, ptr %fchs, align 1
  %bf.lshr15.i = lshr i96 %bf.load14.i, 32
  %69 = trunc i96 %bf.lshr15.i to i32
  %bf.cast17.i = and i32 %69, 16777215
  %pid.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %47, i32 0, i32 5
  %70 = ptrtoint ptr %pid.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 3)
  %bf.load18.i = load i24, ptr %pid.i, align 4
  %bf.cast19.i = zext i24 %bf.load18.i to i32
  %ox_id.i80 = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %71 = ptrtoint ptr %ox_id.i80 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %ox_id.i80, align 1
  %port_cfg.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %47, i32 0, i32 3
  %73 = ptrtoint ptr %port_cfg.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %port_cfg.i, align 8
  %nwwn.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %47, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %nwwn.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %nwwn.i, align 8
  %call21.i = call zeroext i16 @fc_adisc_acc_build(ptr noundef nonnull %fchs.i, ptr noundef %call13.i, i32 noundef %bf.cast17.i, i32 noundef %bf.cast19.i, i16 noundef zeroext %72, i64 noundef %74, i64 noundef %76) #7
  %fabric.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %47, i32 0, i32 2
  %77 = ptrtoint ptr %fabric.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fabric.i, align 4
  %vf_id.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %78, i32 0, i32 10
  %79 = ptrtoint ptr %vf_id.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %vf_id.i, align 2
  %lp_tag.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %47, i32 0, i32 6
  %81 = ptrtoint ptr %lp_tag.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %lp_tag.i, align 1
  %conv22.i = zext i16 %call21.i to i32
  call void @bfa_fcxp_send(ptr noundef nonnull %call11.i, ptr noundef null, i16 noundef zeroext %80, i8 noundef zeroext %82, i32 noundef 0, i32 noundef 8, i32 noundef %conv22.i, ptr noundef nonnull %fchs.i, ptr noundef null, ptr noundef null, i32 noundef 2112, i8 noundef zeroext 0) #7
  br label %bfa_fcs_rport_process_adisc.exit

if.else.i:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  %adisc_rejected.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 25, i32 15
  %83 = ptrtoint ptr %adisc_rejected.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %adisc_rejected.i, align 4
  %inc24.i = add i32 %84, 1
  store i32 %inc24.i, ptr %adisc_rejected.i, align 4
  tail call fastcc void @bfa_fcs_rport_send_ls_rjt(ptr noundef %rport, ptr noundef %fchs, i8 noundef zeroext 9, i8 noundef zeroext 30) #7
  br label %bfa_fcs_rport_process_adisc.exit

bfa_fcs_rport_process_adisc.exit:                 ; preds = %if.else.i, %if.end.i, %if.then.i.bfa_fcs_rport_process_adisc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fchs.i) #7
  br label %cleanup

sw.bb31:                                          ; preds = %if.end
  %prlo_rcvd = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 15, i32 56
  %85 = ptrtoint ptr %prlo_rcvd to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %prlo_rcvd, align 4
  %inc33 = add i32 %86, 1
  store i32 %inc33, ptr %prlo_rcvd, align 4
  %roles = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 3, i32 4
  %87 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %roles, align 8
  %and = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb31.cleanup_crit_edge, label %if.then34

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then34:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  %itnim = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %89 = ptrtoint ptr %itnim to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %itnim, align 8
  tail call void @bfa_fcs_fcpim_uf_recv(ptr noundef %90, ptr noundef %fchs, i16 noundef zeroext %len) #7
  br label %cleanup

sw.bb36:                                          ; preds = %if.end
  %prli_rcvd = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 15, i32 54
  %91 = ptrtoint ptr %prli_rcvd to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %prli_rcvd, align 4
  %inc38 = add i32 %92, 1
  store i32 %inc38, ptr %prli_rcvd, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fchs.i81) #7
  %93 = call ptr @memset(ptr %fchs.i81, i32 255, i32 24)
  %94 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %port1, align 8
  %fcs.i83 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %95, i32 0, i32 9
  %96 = ptrtoint ptr %fcs.i83 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fcs.i83, align 4
  %trcmod.i84 = getelementptr inbounds %struct.bfa_fcs_s, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %trcmod.i84 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %trcmod.i84, align 8
  %100 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %100, i32 12)
  %bf.load.i85 = load i96, ptr %fchs, align 1
  %bf.lshr.i86 = lshr i96 %bf.load.i85, 32
  %101 = trunc i96 %bf.lshr.i86 to i32
  %bf.cast.i87 = and i32 %101, 16777215
  %conv.i88 = zext i32 %bf.cast.i87 to i64
  tail call void @__bfa_trc(ptr noundef %99, i32 noundef 2051, i32 noundef 2162, i64 noundef %conv.i88) #7
  %102 = ptrtoint ptr %fcs.i83 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fcs.i83, align 4
  %trcmod3.i89 = getelementptr inbounds %struct.bfa_fcs_s, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %trcmod3.i89 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %trcmod3.i89, align 8
  %106 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %106, i32 12)
  %bf.load4.i90 = load i96, ptr %fchs, align 1
  %bf.lshr5.i91 = lshr i96 %bf.load4.i90, 64
  %107 = trunc i96 %bf.lshr5.i91 to i32
  %bf.cast7.i92 = and i32 %107, 16777215
  %conv8.i93 = zext i32 %bf.cast7.i92 to i64
  tail call void @__bfa_trc(ptr noundef %105, i32 noundef 2051, i32 noundef 2163, i64 noundef %conv8.i93) #7
  %prli_rcvd.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 25, i32 9
  %108 = ptrtoint ptr %prli_rcvd.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %prli_rcvd.i, align 4
  %inc.i94 = add i32 %109, 1
  store i32 %inc.i94, ptr %prli_rcvd.i, align 4
  %servparams.i = getelementptr %struct.fchs_s, ptr %fchs, i32 1, i32 4
  %110 = ptrtoint ptr %servparams.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %bf.load9.i = load i32, ptr %servparams.i, align 1
  %111 = and i32 %bf.load9.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i95 = icmp eq i32 %111, 0
  br i1 %tobool.not.i95, label %if.else.i101, label %if.then.i99

if.then.i99:                                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %fcs.i83 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %fcs.i83, align 4
  %trcmod13.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %trcmod13.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %trcmod13.i, align 8
  %116 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %116, i32 12)
  %bf.load14.i96 = load i96, ptr %fchs, align 1
  %bf.lshr15.i97 = lshr i96 %bf.load14.i96, 32
  %117 = trunc i96 %bf.lshr15.i97 to i32
  %bf.cast17.i98 = and i32 %117, 16777215
  %conv18.i = zext i32 %bf.cast17.i98 to i64
  tail call void @__bfa_trc(ptr noundef %115, i32 noundef 2051, i32 noundef 2179, i64 noundef %conv18.i) #7
  %scsi_function.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 26
  %118 = ptrtoint ptr %scsi_function.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 2, ptr %scsi_function.i, align 4
  br label %if.end.i103

if.else.i101:                                     ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  %parampage.i = getelementptr %struct.fchs_s, ptr %fchs, i32 1, i32 0, i32 4
  %119 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %fcs, align 4
  %trcmod20.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %trcmod20.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %trcmod20.i, align 8
  %123 = ptrtoint ptr %parampage.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %bf.load22.i = load i32, ptr %parampage.i, align 1
  %bf.lshr23.i = lshr i32 %bf.load22.i, 24
  %conv24.i = zext i32 %bf.lshr23.i to i64
  tail call void @__bfa_trc(ptr noundef %122, i32 noundef 2051, i32 noundef 2182, i64 noundef %conv24.i) #7
  %scsi_function25.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 26
  %124 = ptrtoint ptr %scsi_function25.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1, ptr %scsi_function25.i, align 4
  %itnim.i100 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %125 = ptrtoint ptr %itnim.i100 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %itnim.i100, align 8
  tail call void @bfa_fcs_itnim_is_initiator(ptr noundef %126) #7
  br label %if.end.i103

if.end.i103:                                      ; preds = %if.else.i101, %if.then.i99
  %127 = ptrtoint ptr %fcs.i83 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fcs.i83, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 8
  %call.i102 = tail call ptr @bfa_fcxp_req_rsp_alloc(ptr noundef null, ptr noundef %130, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %tobool27.not.i = icmp eq ptr %call.i102, null
  br i1 %tobool27.not.i, label %if.end.i103.bfa_fcs_rport_process_prli.exit_crit_edge, label %if.end29.i

if.end.i103.bfa_fcs_rport_process_prli.exit_crit_edge: ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_process_prli.exit

if.end29.i:                                       ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i = tail call ptr @bfa_fcxp_get_reqbuf(ptr noundef nonnull %call.i102) #7
  %131 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %131, i32 12)
  %bf.load31.i = load i96, ptr %fchs, align 1
  %bf.lshr32.i = lshr i96 %bf.load31.i, 32
  %132 = trunc i96 %bf.lshr32.i to i32
  %bf.cast34.i = and i32 %132, 16777215
  %pid.i104 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %95, i32 0, i32 5
  %133 = ptrtoint ptr %pid.i104 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 3)
  %bf.load35.i = load i24, ptr %pid.i104, align 4
  %bf.cast36.i = zext i24 %bf.load35.i to i32
  %ox_id.i105 = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %134 = ptrtoint ptr %ox_id.i105 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %135 = load i16, ptr %ox_id.i105, align 1
  %roles.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %95, i32 0, i32 3, i32 4
  %136 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %roles.i, align 8
  %call37.i = call zeroext i16 @fc_prli_acc_build(ptr noundef nonnull %fchs.i81, ptr noundef %call30.i, i32 noundef %bf.cast34.i, i32 noundef %bf.cast36.i, i16 noundef zeroext %135, i32 noundef %137) #7
  %fabric.i106 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %95, i32 0, i32 2
  %138 = ptrtoint ptr %fabric.i106 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %fabric.i106, align 4
  %vf_id.i107 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %139, i32 0, i32 10
  %140 = ptrtoint ptr %vf_id.i107 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %vf_id.i107, align 2
  %lp_tag.i108 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %95, i32 0, i32 6
  %142 = ptrtoint ptr %lp_tag.i108 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %lp_tag.i108, align 1
  %conv38.i = zext i16 %call37.i to i32
  call void @bfa_fcxp_send(ptr noundef nonnull %call.i102, ptr noundef null, i16 noundef zeroext %141, i8 noundef zeroext %143, i32 noundef 0, i32 noundef 8, i32 noundef %conv38.i, ptr noundef nonnull %fchs.i81, ptr noundef null, ptr noundef null, i32 noundef 2112, i8 noundef zeroext 0) #7
  br label %bfa_fcs_rport_process_prli.exit

bfa_fcs_rport_process_prli.exit:                  ; preds = %if.end29.i, %if.end.i103.bfa_fcs_rport_process_prli.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fchs.i81) #7
  br label %cleanup

sw.bb39:                                          ; preds = %if.end
  %rpsc_rcvd = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 15, i32 58
  %144 = ptrtoint ptr %rpsc_rcvd to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rpsc_rcvd, align 4
  %inc41 = add i32 %145, 1
  store i32 %inc41, ptr %rpsc_rcvd, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fchs.i109) #7
  %146 = call ptr @memset(ptr %fchs.i109, i32 255, i32 24)
  %147 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %port1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speeds.i) #7
  %149 = getelementptr inbounds %struct.fc_rpsc_speed_info_s, ptr %speeds.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %pport_attr.i) #7
  %150 = call ptr @memset(ptr %pport_attr.i, i32 255, i32 376)
  %fcs.i111 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %148, i32 0, i32 9
  %151 = ptrtoint ptr %fcs.i111 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %fcs.i111, align 4
  %trcmod.i112 = getelementptr inbounds %struct.bfa_fcs_s, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %trcmod.i112 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %trcmod.i112, align 8
  %155 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %155, i32 12)
  %bf.load.i113 = load i96, ptr %fchs, align 1
  %bf.lshr.i114 = lshr i96 %bf.load.i113, 32
  %156 = trunc i96 %bf.lshr.i114 to i32
  %bf.cast.i115 = and i32 %156, 16777215
  %conv.i116 = zext i32 %bf.cast.i115 to i64
  tail call void @__bfa_trc(ptr noundef %154, i32 noundef 2051, i32 noundef 2209, i64 noundef %conv.i116) #7
  %157 = ptrtoint ptr %fcs.i111 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %fcs.i111, align 4
  %trcmod3.i117 = getelementptr inbounds %struct.bfa_fcs_s, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %trcmod3.i117 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %trcmod3.i117, align 8
  %161 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %161, i32 12)
  %bf.load4.i118 = load i96, ptr %fchs, align 1
  %bf.lshr5.i119 = lshr i96 %bf.load4.i118, 64
  %162 = trunc i96 %bf.lshr5.i119 to i32
  %bf.cast7.i120 = and i32 %162, 16777215
  %conv8.i121 = zext i32 %bf.cast7.i120 to i64
  tail call void @__bfa_trc(ptr noundef %160, i32 noundef 2051, i32 noundef 2210, i64 noundef %conv8.i121) #7
  %rpsc_rcvd.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 25, i32 21
  %163 = ptrtoint ptr %rpsc_rcvd.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %rpsc_rcvd.i, align 4
  %inc.i122 = add i32 %164, 1
  store i32 %inc.i122, ptr %rpsc_rcvd.i, align 4
  %165 = ptrtoint ptr %speeds.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 -6144, ptr %speeds.i, align 2
  %166 = ptrtoint ptr %fcs.i111 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %fcs.i111, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 8
  call void @bfa_fcport_get_attr(ptr noundef %169, ptr noundef nonnull %pport_attr.i) #7
  %speed.i = getelementptr inbounds %struct.bfa_port_attr_s, ptr %pport_attr.i, i32 0, i32 11
  %170 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %speed.i, align 4
  %172 = zext i32 %171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %171, label %sw.default.i.i [
    i32 1, label %sw.bb39.fc_bfa_speed_to_rpsc_operspeed.exit.i_crit_edge
    i32 2, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 8, label %sw.bb3.i.i
    i32 16, label %sw.bb4.i.i
    i32 10, label %sw.bb5.i.i
  ]

sw.bb39.fc_bfa_speed_to_rpsc_operspeed.exit.i_crit_edge: ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc_bfa_speed_to_rpsc_operspeed.exit.i

sw.bb1.i.i:                                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc_bfa_speed_to_rpsc_operspeed.exit.i

sw.bb2.i.i:                                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc_bfa_speed_to_rpsc_operspeed.exit.i

sw.bb3.i.i:                                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc_bfa_speed_to_rpsc_operspeed.exit.i

sw.bb4.i.i:                                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc_bfa_speed_to_rpsc_operspeed.exit.i

sw.bb5.i.i:                                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc_bfa_speed_to_rpsc_operspeed.exit.i

sw.default.i.i:                                   ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc_bfa_speed_to_rpsc_operspeed.exit.i

fc_bfa_speed_to_rpsc_operspeed.exit.i:            ; preds = %sw.default.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb39.fc_bfa_speed_to_rpsc_operspeed.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ 1, %sw.default.i.i ], [ 4096, %sw.bb5.i.i ], [ 1024, %sw.bb4.i.i ], [ 2048, %sw.bb3.i.i ], [ 8192, %sw.bb2.i.i ], [ 16384, %sw.bb1.i.i ], [ -32768, %sw.bb39.fc_bfa_speed_to_rpsc_operspeed.exit.i_crit_edge ]
  %173 = ptrtoint ptr %149 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %retval.0.i.i, ptr %149, align 2
  %174 = ptrtoint ptr %fcs.i111 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %fcs.i111, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 8
  %call13.i123 = call ptr @bfa_fcxp_req_rsp_alloc(ptr noundef null, ptr noundef %177, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %tobool.not.i124 = icmp eq ptr %call13.i123, null
  br i1 %tobool.not.i124, label %fc_bfa_speed_to_rpsc_operspeed.exit.i.bfa_fcs_rport_process_rpsc.exit_crit_edge, label %if.end.i132

fc_bfa_speed_to_rpsc_operspeed.exit.i.bfa_fcs_rport_process_rpsc.exit_crit_edge: ; preds = %fc_bfa_speed_to_rpsc_operspeed.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_process_rpsc.exit

if.end.i132:                                      ; preds = %fc_bfa_speed_to_rpsc_operspeed.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = call ptr @bfa_fcxp_get_reqbuf(ptr noundef nonnull %call13.i123) #7
  %178 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %178, i32 12)
  %bf.load15.i = load i96, ptr %fchs, align 1
  %bf.lshr16.i = lshr i96 %bf.load15.i, 32
  %179 = trunc i96 %bf.lshr16.i to i32
  %bf.cast18.i = and i32 %179, 16777215
  %pid.i125 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %148, i32 0, i32 5
  %180 = ptrtoint ptr %pid.i125 to i32
  call void @__asan_loadN_noabort(i32 %180, i32 3)
  %bf.load19.i = load i24, ptr %pid.i125, align 4
  %bf.cast20.i = zext i24 %bf.load19.i to i32
  %ox_id.i126 = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %181 = ptrtoint ptr %ox_id.i126 to i32
  call void @__asan_loadN_noabort(i32 %181, i32 2)
  %182 = load i16, ptr %ox_id.i126, align 1
  %call21.i127 = call zeroext i16 @fc_rpsc_acc_build(ptr noundef nonnull %fchs.i109, ptr noundef %call14.i, i32 noundef %bf.cast18.i, i32 noundef %bf.cast20.i, i16 noundef zeroext %182, ptr noundef nonnull %speeds.i) #7
  %fabric.i128 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %148, i32 0, i32 2
  %183 = ptrtoint ptr %fabric.i128 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %fabric.i128, align 4
  %vf_id.i129 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %184, i32 0, i32 10
  %185 = ptrtoint ptr %vf_id.i129 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %vf_id.i129, align 2
  %lp_tag.i130 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %148, i32 0, i32 6
  %187 = ptrtoint ptr %lp_tag.i130 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %lp_tag.i130, align 1
  %conv22.i131 = zext i16 %call21.i127 to i32
  call void @bfa_fcxp_send(ptr noundef nonnull %call13.i123, ptr noundef null, i16 noundef zeroext %186, i8 noundef zeroext %188, i32 noundef 0, i32 noundef 8, i32 noundef %conv22.i131, ptr noundef nonnull %fchs.i109, ptr noundef null, ptr noundef null, i32 noundef 2112, i8 noundef zeroext 0) #7
  br label %bfa_fcs_rport_process_rpsc.exit

bfa_fcs_rport_process_rpsc.exit:                  ; preds = %if.end.i132, %fc_bfa_speed_to_rpsc_operspeed.exit.i.bfa_fcs_rport_process_rpsc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %pport_attr.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speeds.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fchs.i109) #7
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %un_handled_els_rcvd = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 15, i32 59
  %189 = ptrtoint ptr %un_handled_els_rcvd to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %un_handled_els_rcvd, align 4
  %inc43 = add i32 %190, 1
  store i32 %inc43, ptr %un_handled_els_rcvd, align 4
  tail call fastcc void @bfa_fcs_rport_send_ls_rjt(ptr noundef %rport, ptr noundef %fchs, i8 noundef zeroext 11, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %bfa_fcs_rport_process_rpsc.exit, %bfa_fcs_rport_process_prli.exit, %if.then34, %sw.bb31.cleanup_crit_edge, %bfa_fcs_rport_process_adisc.exit, %sw.bb, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_fcpim_uf_recv(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_fcs_rport_send_ls_rjt(ptr nocapture noundef readonly %rport, ptr nocapture noundef readonly %rx_fchs, i8 noundef zeroext %reason_code, i8 noundef zeroext %reason_code_expl) unnamed_addr #0 align 64 {
entry:
  %fchs = alloca %struct.fchs_s, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fchs) #7
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %2 = call ptr @memset(ptr %fchs, i32 255, i32 24)
  %3 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trcmod, align 8
  %7 = ptrtoint ptr %rx_fchs to i32
  call void @__asan_loadN_noabort(i32 %7, i32 12)
  %bf.load = load i96, ptr %rx_fchs, align 1
  %bf.lshr = lshr i96 %bf.load, 32
  %8 = trunc i96 %bf.lshr to i32
  %bf.cast = and i32 %8, 16777215
  %conv = zext i32 %bf.cast to i64
  tail call void @__bfa_trc(ptr noundef %6, i32 noundef 2051, i32 noundef 2946, i64 noundef %conv) #7
  %9 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fcs, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %call = tail call ptr @bfa_fcxp_req_rsp_alloc(ptr noundef null, ptr noundef %12, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call ptr @bfa_fcxp_get_reqbuf(ptr noundef nonnull %call) #7
  %13 = ptrtoint ptr %rx_fchs to i32
  call void @__asan_loadN_noabort(i32 %13, i32 12)
  %bf.load4 = load i96, ptr %rx_fchs, align 1
  %bf.lshr5 = lshr i96 %bf.load4, 32
  %14 = trunc i96 %bf.lshr5 to i32
  %bf.cast7 = and i32 %14, 16777215
  %pid = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_loadN_noabort(i32 %15, i32 3)
  %bf.load8 = load i24, ptr %pid, align 4
  %bf.cast9 = zext i24 %bf.load8 to i32
  %ox_id = getelementptr inbounds %struct.fchs_s, ptr %rx_fchs, i32 0, i32 4
  %16 = ptrtoint ptr %ox_id to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %ox_id, align 1
  %call10 = call zeroext i16 @fc_ls_rjt_build(ptr noundef nonnull %fchs, ptr noundef %call3, i32 noundef %bf.cast7, i32 noundef %bf.cast9, i16 noundef zeroext %17, i8 noundef zeroext %reason_code, i8 noundef zeroext %reason_code_expl) #7
  %conv11 = zext i16 %call10 to i32
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fabric, align 4
  %vf_id = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vf_id, align 2
  %lp_tag = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %lp_tag to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %lp_tag, align 1
  call void @bfa_fcxp_send(ptr noundef nonnull %call, ptr noundef null, i16 noundef zeroext %21, i8 noundef zeroext %23, i32 noundef 0, i32 noundef 8, i32 noundef %conv11, ptr noundef nonnull %fchs, ptr noundef null, ptr noundef null, i32 noundef 2112, i8 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fchs) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_fcs_rport_get_state(ptr nocapture noundef readonly %rport) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %0 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %i.0.i = phi i32 [ 0, %entry ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bfa_sm_table_s, ptr @rport_sm_table, i32 %i.0.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.not.i = icmp eq ptr %3, %1
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  %inc.i = add i32 %i.0.i, 1
  br i1 %or.cond.i, label %bfa_sm_to_state.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

bfa_sm_to_state.exit:                             ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %state.i = getelementptr %struct.bfa_sm_table_s, ptr @rport_sm_table, i32 %i.0.i, i32 1
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_fcs_rport_set_del_timeout(i8 noundef zeroext %rport_tmo) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rport_tmo)
  %cmp.not = icmp eq i8 %rport_tmo, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %rport_tmo to i32
  %mul = mul nuw nsw i32 %conv, 1000
  store i32 %mul, ptr @bfa_fcs_rport_del_timeout, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_rport_prlo(ptr noundef %rport, i16 noundef zeroext %ox_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 4
  %conv = zext i32 %5 to i64
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 2989, i64 noundef %conv) #7
  %prlo = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 10
  %6 = ptrtoint ptr %prlo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %prlo, align 8
  %reply_oxid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 7
  %7 = ptrtoint ptr %reply_oxid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %ox_id, ptr %reply_oxid, align 2
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %8 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sm, align 8
  tail call void %9(ptr noundef %rport, i32 noundef 17) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_fcs_rport_set_max_logins(i32 noundef %max_logins) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_logins)
  %cmp.not = icmp eq i32 %max_logins, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i32 %max_logins, ptr @bfa_fcs_rport_max_logins, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_rport_get_attr(ptr nocapture noundef readonly %rport, ptr nocapture noundef writeonly %rport_attr) local_unnamed_addr #0 align 64 {
entry:
  %port_attr = alloca %struct.bfa_port_attr_s, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 8
  %rpsc_speed = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27, i32 6
  %2 = ptrtoint ptr %rpsc_speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rpsc_speed, align 4
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %port_attr) #7
  %4 = call ptr @memset(ptr %port_attr, i32 255, i32 376)
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %5 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fcs, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  call void @bfa_fcport_get_attr(ptr noundef %8, ptr noundef nonnull %port_attr) #7
  %9 = call ptr @memset(ptr %rport_attr, i32 0, i32 320)
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %pid2 = getelementptr inbounds %struct.bfa_rport_attr_s, ptr %rport_attr, i32 0, i32 3
  %12 = ptrtoint ptr %pid2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pid2, align 4
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %13 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %pwwn, align 8
  %pwwn3 = getelementptr inbounds %struct.bfa_rport_attr_s, ptr %rport_attr, i32 0, i32 1
  %15 = ptrtoint ptr %pwwn3 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %pwwn3, align 8
  %nwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 13
  %16 = ptrtoint ptr %nwwn to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %nwwn, align 8
  %18 = ptrtoint ptr %rport_attr to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %rport_attr, align 8
  %fc_cos = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 8
  %19 = ptrtoint ptr %fc_cos to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fc_cos, align 8
  %cos_supported = getelementptr inbounds %struct.bfa_rport_attr_s, ptr %rport_attr, i32 0, i32 2
  %21 = ptrtoint ptr %cos_supported to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %cos_supported, align 8
  %maxfrsize = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 6
  %22 = ptrtoint ptr %maxfrsize to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %maxfrsize, align 4
  %conv = zext i16 %23 to i32
  %df_sz = getelementptr inbounds %struct.bfa_rport_attr_s, ptr %rport_attr, i32 0, i32 4
  %24 = ptrtoint ptr %df_sz to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %df_sz, align 8
  %sm.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %25 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sm.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %entry
  %i.0.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.bfa_sm_table_s, ptr @rport_sm_table, i32 %i.0.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  %cmp.not.i.i = icmp eq ptr %28, %26
  %or.cond.i.i = or i1 %tobool.not.i.i, %cmp.not.i.i
  %inc.i.i = add i32 %i.0.i.i, 1
  br i1 %or.cond.i.i, label %bfa_fcs_rport_get_state.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

bfa_fcs_rport_get_state.exit:                     ; preds = %while.cond.i.i
  %state.i.i = getelementptr %struct.bfa_sm_table_s, ptr @rport_sm_table, i32 %i.0.i.i, i32 1
  %29 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state.i.i, align 4
  %state = getelementptr inbounds %struct.bfa_rport_attr_s, ptr %rport_attr, i32 0, i32 5
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %state, align 4
  %32 = ptrtoint ptr %fc_cos to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fc_cos, align 8
  %fc_cos6 = getelementptr inbounds %struct.bfa_rport_attr_s, ptr %rport_attr, i32 0, i32 6
  %34 = ptrtoint ptr %fc_cos6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %fc_cos6, align 8
  %cisc = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 9
  %35 = ptrtoint ptr %cisc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cisc, align 4
  %cisc7 = getelementptr inbounds %struct.bfa_rport_attr_s, ptr %rport_attr, i32 0, i32 7
  %37 = ptrtoint ptr %cisc7 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %cisc7, align 4
  %scsi_function = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 26
  %38 = ptrtoint ptr %scsi_function to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %scsi_function, align 4
  %scsi_function8 = getelementptr inbounds %struct.bfa_rport_attr_s, ptr %rport_attr, i32 0, i32 9
  %40 = ptrtoint ptr %scsi_function8 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %scsi_function8, align 8
  %41 = ptrtoint ptr %rpsc_speed to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rpsc_speed, align 4
  %curr_speed = getelementptr inbounds %struct.bfa_rport_attr_s, ptr %rport_attr, i32 0, i32 11
  %43 = ptrtoint ptr %curr_speed to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %curr_speed, align 4
  %assigned_speed = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27, i32 7
  %44 = ptrtoint ptr %assigned_speed to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %assigned_speed, align 8
  %assigned_speed12 = getelementptr inbounds %struct.bfa_rport_attr_s, ptr %rport_attr, i32 0, i32 13
  %46 = ptrtoint ptr %assigned_speed12 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %assigned_speed12, align 4
  %bfa_rport = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 20
  %47 = ptrtoint ptr %bfa_rport to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bfa_rport, align 4
  %tobool.not = icmp eq ptr %48, null
  br i1 %tobool.not, label %bfa_fcs_rport_get_state.exit.if.end_crit_edge, label %if.then

bfa_fcs_rport_get_state.exit.if.end_crit_edge:    ; preds = %bfa_fcs_rport_get_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %bfa_fcs_rport_get_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  %qos_attr14 = getelementptr inbounds %struct.bfa_rport_s, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %qos_attr14 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %qos_attr14, align 4
  %qos_flow_id = getelementptr inbounds %struct.bfa_rport_s, ptr %48, i32 0, i32 12, i32 2
  %51 = ptrtoint ptr %qos_flow_id to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %qos_flow_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %bfa_fcs_rport_get_state.exit.if.end_crit_edge
  %qos_attr.sroa.0.0 = phi i8 [ %50, %if.then ], [ 0, %bfa_fcs_rport_get_state.exit.if.end_crit_edge ]
  %qos_attr.sroa.9.0 = phi i32 [ %52, %if.then ], [ 0, %bfa_fcs_rport_get_state.exit.if.end_crit_edge ]
  %qos_attr19 = getelementptr inbounds %struct.bfa_rport_attr_s, ptr %rport_attr, i32 0, i32 10
  %53 = ptrtoint ptr %qos_attr19 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %qos_attr.sroa.0.0, ptr %qos_attr19, align 4
  %qos_attr.sroa.6.0.qos_attr19.sroa_idx = getelementptr inbounds %struct.bfa_rport_attr_s, ptr %rport_attr, i32 0, i32 10, i32 1
  %54 = ptrtoint ptr %qos_attr.sroa.6.0.qos_attr19.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %qos_attr.sroa.6.0.qos_attr19.sroa_idx, align 1
  %qos_attr.sroa.7.0.qos_attr19.sroa_idx = getelementptr inbounds %struct.bfa_rport_attr_s, ptr %rport_attr, i32 0, i32 10, i32 1, i32 1
  %55 = ptrtoint ptr %qos_attr.sroa.7.0.qos_attr19.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %qos_attr.sroa.7.0.qos_attr19.sroa_idx, align 2
  %qos_attr.sroa.8.0.qos_attr19.sroa_idx = getelementptr inbounds %struct.bfa_rport_attr_s, ptr %rport_attr, i32 0, i32 10, i32 1, i32 2
  %56 = ptrtoint ptr %qos_attr.sroa.8.0.qos_attr19.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %qos_attr.sroa.8.0.qos_attr19.sroa_idx, align 1
  %qos_attr.sroa.9.0.qos_attr19.sroa_idx = getelementptr inbounds %struct.bfa_rport_attr_s, ptr %rport_attr, i32 0, i32 10, i32 2
  %57 = ptrtoint ptr %qos_attr.sroa.9.0.qos_attr19.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %qos_attr.sroa.9.0, ptr %qos_attr.sroa.9.0.qos_attr19.sroa_idx, align 4
  %trl_enforced = getelementptr inbounds %struct.bfa_rport_attr_s, ptr %rport_attr, i32 0, i32 12
  %58 = ptrtoint ptr %trl_enforced to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %trl_enforced, align 8
  %fcs20 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 9
  %59 = ptrtoint ptr %fcs20 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fcs20, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %call22 = call i32 @bfa_fcport_is_ratelim(ptr noundef %62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end.if.end43_crit_edge, label %land.lhs.true

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end
  %63 = ptrtoint ptr %scsi_function to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %scsi_function, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp = icmp eq i32 %64, 2
  br i1 %cmp, label %if.then26, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp27 = icmp eq i32 %3, 0
  br i1 %cmp27, label %if.then29, label %if.then26.if.end33_crit_edge

if.then26.if.end33_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fcs, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %call32 = call i32 @bfa_fcport_get_ratelim_speed(ptr noundef %68) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.then26.if.end33_crit_edge
  %rport_speed.0 = phi i32 [ %call32, %if.then29 ], [ %3, %if.then26.if.end33_crit_edge ]
  %call34 = call i32 @bfa_fcs_lport_get_rport_max_speed(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.end33.if.end43_crit_edge, label %land.lhs.true37

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

land.lhs.true37:                                  ; preds = %if.end33
  %speed = getelementptr inbounds %struct.bfa_port_attr_s, ptr %port_attr, i32 0, i32 11
  %69 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rport_speed.0, i32 %70)
  %cmp38 = icmp ult i32 %rport_speed.0, %70
  br i1 %cmp38, label %if.then40, label %land.lhs.true37.if.end43_crit_edge

land.lhs.true37.if.end43_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then40:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %trl_enforced to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %trl_enforced, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %land.lhs.true37.if.end43_crit_edge, %if.end33.if.end43_crit_edge, %land.lhs.true.if.end43_crit_edge, %if.end.if.end43_crit_edge
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %port_attr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcport_get_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_is_ratelim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_get_ratelim_speed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcs_lport_get_rport_max_speed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bfa_fcs_rport_lookup(ptr noundef %port, i64 noundef %rpwwn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bfa_fcs_lport_get_rport_by_pwwn(ptr noundef %port, i64 noundef %rpwwn) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcs_lport_get_rport_by_pwwn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bfa_fcs_rport_lookup_by_nwwn(ptr noundef %port, i64 noundef %rnwwn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bfa_fcs_lport_get_rport_by_nwwn(ptr noundef %port, i64 noundef %rnwwn) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcs_lport_get_rport_by_nwwn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_rpf_init(ptr noundef %rport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rpf1 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 4
  %conv = zext i32 %5 to i64
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 3313, i64 noundef %conv) #7
  %rport2 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27, i32 1
  %6 = ptrtoint ptr %rport2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rport, ptr %rport2, align 4
  %7 = ptrtoint ptr %rpf1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bfa_fcs_rpf_sm_uninit, ptr %rpf1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rpf_sm_uninit(ptr noundef %rpf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rport1 = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 1
  %0 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rport1, align 4
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs, align 4
  %fabric2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 8
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2051, i32 noundef 3143, i64 noundef %7) #7
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod5 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod5, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 4
  %conv = zext i32 %13 to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2051, i32 noundef 3144, i64 noundef %conv) #7
  %14 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fcs, align 4
  %trcmod7 = getelementptr inbounds %struct.bfa_fcs_s, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %trcmod7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trcmod7, align 8
  %conv8 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %17, i32 noundef 2051, i32 noundef 3145, i64 noundef %conv8) #7
  %18 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %event, label %do.body [
    i32 2, label %sw.bb
    i32 1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %19 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %20)
  %cmp = icmp ugt i32 %20, 16773120
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %port = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port, align 8
  %fabric11 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %fabric11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fabric11, align 4
  %lps = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %24, i32 0, i32 23
  %25 = ptrtoint ptr %lps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lps, align 8
  %brcd_switch = getelementptr inbounds %struct.bfa_lps_s, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %brcd_switch to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %brcd_switch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call = tail call zeroext i16 @bfa_fcs_fabric_get_switch_oui(ptr noundef %fabric2) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1310, i16 %call)
  %cmp13 = icmp eq i16 %call, 1310
  br i1 %cmp13, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %29 = ptrtoint ptr %rpf to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @bfa_fcs_rpf_sm_rpsc_sending, ptr %rpf, align 4
  %rpsc_retries = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 5
  %30 = ptrtoint ptr %rpsc_retries to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %rpsc_retries, align 4
  tail call void @bfa_fcs_rpf_send_rpsc2(ptr noundef %rpf, ptr noundef null)
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fcs, align 4
  %trcmod16 = getelementptr inbounds %struct.bfa_fcs_s, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %trcmod16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %trcmod16, align 8
  %or = or i32 %event, -559087616
  %conv17 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %34, i32 noundef 2051, i32 noundef 3164, i64 noundef %conv17) #7
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 3164, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %if.then, %lor.lhs.false.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_rpf_rport_online(ptr noundef %rport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 4
  %conv = zext i32 %5 to i64
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 3325, i64 noundef %conv) #7
  %port = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 8
  %fcs1 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %fcs1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs1, align 4
  %min_cfg = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %min_cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end:                                           ; preds = %entry
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fabric, align 4
  %fab_type = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %fab_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fab_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rpf = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27
  %16 = ptrtoint ptr %rpf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rpf, align 8
  tail call void %17(ptr noundef %rpf, i32 noundef 2) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_rpf_rport_offline(ptr noundef %rport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 4
  %conv = zext i32 %5 to i64
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 3340, i64 noundef %conv) #7
  %port = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 8
  %fcs1 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %fcs1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs1, align 4
  %min_cfg = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %min_cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rpf = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27
  %rpsc_speed = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27, i32 6
  %12 = ptrtoint ptr %rpsc_speed to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rpsc_speed, align 4
  %13 = ptrtoint ptr %rpf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rpf, align 8
  tail call void %14(ptr noundef %rpf, i32 noundef 1) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcb_rport_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcs_itnim_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_lport_add_rport(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_uninit(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  %rport_info.i = alloca %struct.bfa_rport_info_s, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 173, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 174, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 175, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %event, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb8
    i32 15, label %entry.sw.bb10_crit_edge
    i32 16, label %entry.sw.bb10_crit_edge35
  ]

entry.sw.bb10_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_plogi_sending, ptr %sm, align 8
  %plogi_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 22
  %18 = ptrtoint ptr %plogi_retries to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %plogi_retries, align 4
  tail call void @bfa_fcs_rport_send_plogi(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm7 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %19 = ptrtoint ptr %sm7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bfa_fcs_rport_sm_plogiacc_sending, ptr %sm7, align 8
  tail call void @bfa_fcs_rport_send_plogiacc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm9 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %20 = ptrtoint ptr %sm9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bfa_fcs_rport_sm_hal_online, ptr %sm9, align 8
  %port1.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %21 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port1.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rport_info.i) #7
  %23 = getelementptr inbounds %struct.bfa_rport_info_s, ptr %rport_info.i, i32 0, i32 2
  %24 = getelementptr inbounds %struct.bfa_rport_info_s, ptr %rport_info.i, i32 0, i32 3
  %25 = getelementptr inbounds %struct.bfa_rport_info_s, ptr %rport_info.i, i32 0, i32 4
  %26 = getelementptr inbounds %struct.bfa_rport_info_s, ptr %rport_info.i, i32 0, i32 5
  %27 = call ptr @memset(ptr %rport_info.i, i32 255, i32 20)
  %28 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid, align 4
  %bf.value.i = zext i32 %29 to i64
  %bf.shl.i = shl i64 %bf.value.i, 40
  %pid3.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %22, i32 0, i32 5
  %30 = ptrtoint ptr %pid3.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 3)
  %bf.load4.i = load i24, ptr %pid3.i, align 4
  %31 = zext i24 %bf.load4.i to i64
  %bf.shl7.i = shl nuw nsw i64 %31, 8
  %bf.set9.i = or i64 %bf.shl7.i, %bf.shl.i
  %lp_tag.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %22, i32 0, i32 6
  %32 = ptrtoint ptr %lp_tag.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %lp_tag.i, align 1
  %34 = zext i8 %33 to i64
  %bf.shl14.i = shl nuw nsw i64 %34, 32
  %bf.set16.i = or i64 %bf.set9.i, %bf.shl14.i
  %fabric.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %22, i32 0, i32 2
  %35 = ptrtoint ptr %fabric.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fabric.i, align 4
  %vf_id.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %vf_id.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vf_id.i, align 2
  %39 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %26, align 2
  %40 = load ptr, ptr %fabric.i, align 4
  %is_vf.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %is_vf.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_vf.i, align 8
  %43 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %25, align 1
  %fc_cos.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 8
  %44 = ptrtoint ptr %fc_cos.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fc_cos.i, align 8
  %conv20.i = trunc i32 %45 to i8
  %46 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv20.i, ptr %24, align 4
  %cisc.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 9
  %47 = ptrtoint ptr %cisc.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cisc.i, align 4
  %49 = and i32 %48, 255
  %bf.value23.i = zext i32 %49 to i64
  %bf.set25.i = or i64 %bf.set16.i, %bf.value23.i
  %50 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %bf.set25.i, ptr %23, align 4
  %maxfrsize.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 6
  %51 = ptrtoint ptr %maxfrsize.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %maxfrsize.i, align 4
  %53 = ptrtoint ptr %rport_info.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %rport_info.i, align 4
  %bfa_rport.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 20
  %54 = ptrtoint ptr %bfa_rport.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bfa_rport.i, align 4
  call void @bfa_rport_online(ptr noundef %55, ptr noundef nonnull %rport_info.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rport_info.i) #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge35
  %sm11 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %56 = ptrtoint ptr %sm11 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @bfa_fcs_rport_sm_nsdisc_sending, ptr %sm11, align 8
  %ns_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 23
  %57 = ptrtoint ptr %ns_retries to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %ns_retries, align 8
  tail call void @bfa_fcs_rport_send_nsdisc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fcs, align 4
  %trcmod13 = getelementptr inbounds %struct.bfa_fcs_s, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %trcmod13 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %trcmod13, align 8
  %or = or i32 %event, -559087616
  %conv14 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %61, i32 noundef 2051, i32 noundef 201, i64 noundef %conv14) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 201, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_plogi_sending(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 212, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 213, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 214, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %event, label %do.body58 [
    i32 6, label %sw.bb
    i32 7, label %sw.bb6
    i32 2, label %sw.bb9
    i32 19, label %sw.bb14
    i32 15, label %entry.sw.bb21_crit_edge
    i32 8, label %entry.sw.bb21_crit_edge106
    i32 5, label %sw.bb48
  ]

entry.sw.bb21_crit_edge106:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

entry.sw.bb21_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_plogi, ptr %sm, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm7 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %18 = ptrtoint ptr %sm7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bfa_fcs_rport_sm_uninit, ptr %sm7, align 8
  %19 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fcs, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %fcxp_wqe = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %22, ptr noundef %fcxp_wqe) #7
  tail call fastcc void @bfa_fcs_rport_free(ptr noundef %rport)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm10 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %23 = ptrtoint ptr %sm10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bfa_fcs_rport_sm_plogiacc_sending, ptr %sm10, align 8
  %24 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fcs, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %fcxp_wqe13 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %27, ptr noundef %fcxp_wqe13) #7
  tail call void @bfa_fcs_rport_send_plogiacc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm15 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %28 = ptrtoint ptr %sm15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm15, align 8
  %29 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fcs, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %fcxp_wqe18 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %32, ptr noundef %fcxp_wqe18) #7
  %33 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fcs, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %timer_mod = getelementptr inbounds %struct.bfa_s, ptr %36, i32 0, i32 5
  %timer = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  %37 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod, ptr noundef %timer, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %37) #7
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry.sw.bb21_crit_edge, %entry.sw.bb21_crit_edge106
  %38 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fcs, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %fcxp_wqe24 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %41, ptr noundef %fcxp_wqe24) #7
  %port = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port, align 8
  %fcs25 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %fcs25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fcs25, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %call = tail call i32 @bfa_fcport_get_topology(ptr noundef %47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %do.end, label %sw.bb21.if.end_crit_edge, !prof !179

sw.bb21.if.end_crit_edge:                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb21.if.end_crit_edge
  %sm47 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %48 = ptrtoint ptr %sm47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @bfa_fcs_rport_sm_nsdisc_sending, ptr %sm47, align 8
  %ns_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 23
  %49 = ptrtoint ptr %ns_retries to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %ns_retries, align 8
  tail call void @bfa_fcs_rport_send_nsdisc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %pid, align 4
  %sm50 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %51 = ptrtoint ptr %sm50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm50, align 8
  %52 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fcs, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %fcxp_wqe53 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %55, ptr noundef %fcxp_wqe53) #7
  %56 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fcs, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %timer_mod56 = getelementptr inbounds %struct.bfa_s, ptr %59, i32 0, i32 5
  %timer57 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  %60 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod56, ptr noundef %timer57, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %60) #7
  br label %sw.epilog

do.body58:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fcs, align 4
  %trcmod60 = getelementptr inbounds %struct.bfa_fcs_s, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %trcmod60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %trcmod60, align 8
  %or = or i32 %event, -559087616
  %conv61 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %64, i32 noundef 2051, i32 noundef 262, i64 noundef %conv61) #7
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 262, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body58, %sw.bb48, %if.end, %sw.bb14, %sw.bb9, %sw.bb6, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_send_plogi(ptr noundef %rport_cbarg, ptr noundef %fcxp_alloced) #0 align 64 {
entry:
  %fchs = alloca %struct.fchs_s, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fchs) #7
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 2
  %2 = call ptr @memset(ptr %fchs, i32 255, i32 24)
  %3 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 12
  %7 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %6, i32 noundef 2051, i32 noundef 1701, i64 noundef %8) #7
  %tobool.not = icmp eq ptr %fcxp_alloced, null
  br i1 %tobool.not, label %cond.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cond.end:                                         ; preds = %entry
  %fcs2 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %fcs2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fcs2, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %call = tail call ptr @bfa_fcxp_req_rsp_alloc(ptr noundef null, ptr noundef %12, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1) #7
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %fcs2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fcs2, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %fcxp_wqe = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 24
  tail call void @bfa_fcxp_req_rsp_alloc_wait(ptr noundef %16, ptr noundef %fcxp_wqe, ptr noundef nonnull @bfa_fcs_rport_send_plogi, ptr noundef %rport_cbarg, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1) #7
  br label %cleanup

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  %cond47 = phi ptr [ %call, %cond.end.if.end_crit_edge ], [ %fcxp_alloced, %entry.if.end_crit_edge ]
  %fcxp6 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 21
  %17 = ptrtoint ptr %fcxp6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cond47, ptr %fcxp6, align 8
  %call7 = tail call ptr @bfa_fcxp_get_reqbuf(ptr noundef nonnull %cond47) #7
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 4
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid, align 4
  %pid8 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %pid8 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 3)
  %bf.load = load i24, ptr %pid8, align 4
  %bf.cast = zext i24 %bf.load to i32
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %port_cfg, align 8
  %nwwn = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %nwwn to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %nwwn, align 8
  %fcs11 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %fcs11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fcs11, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %call13 = tail call zeroext i16 @bfa_fcport_get_maxfrsize(ptr noundef %28) #7
  %29 = ptrtoint ptr %fcs11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fcs11, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %call16 = tail call zeroext i8 @bfa_fcport_get_rx_bbcredit(ptr noundef %32) #7
  %conv = zext i8 %call16 to i16
  %call17 = call zeroext i16 @fc_plogi_build(ptr noundef nonnull %fchs, ptr noundef %call7, i32 noundef %19, i32 noundef %bf.cast, i16 noundef zeroext 0, i64 noundef %22, i64 noundef %24, i16 noundef zeroext %call13, i16 noundef zeroext %conv) #7
  %conv18 = zext i16 %call17 to i32
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fabric, align 4
  %vf_id = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vf_id, align 2
  %lp_tag = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %lp_tag to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %lp_tag, align 1
  call void @bfa_fcxp_send(ptr noundef nonnull %cond47, ptr noundef null, i16 noundef zeroext %36, i8 noundef zeroext %38, i32 noundef 0, i32 noundef 8, i32 noundef %conv18, ptr noundef nonnull %fchs, ptr noundef nonnull @bfa_fcs_rport_plogi_response, ptr noundef %rport_cbarg, i32 noundef 2112, i8 noundef zeroext 20) #7
  %plogis = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 25, i32 3
  %39 = ptrtoint ptr %plogis to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %plogis, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %plogis, align 4
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 15
  %41 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sm, align 8
  call void %42(ptr noundef %rport_cbarg, i32 noundef 6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fchs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_plogiacc_sending(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 273, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 274, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 275, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %event, label %do.body [
    i32 6, label %sw.bb
    i32 7, label %sw.bb6
    i32 2, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge69
    i32 8, label %entry.sw.epilog_crit_edge70
    i32 19, label %sw.bb10
    i32 15, label %sw.bb17
    i32 5, label %sw.bb22
    i32 13, label %entry.sw.epilog_crit_edge71
  ]

entry.sw.epilog_crit_edge71:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge70:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge69:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_fc4_fcs_online, ptr %sm, align 8
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %sw.bb.if.then.i_crit_edge, label %lor.lhs.false.i

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %20 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pwwn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool1.not.i = icmp eq i64 %21, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge

lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_online_action.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb.if.then.i_crit_edge
  %22 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fcs, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trcmod.i, align 8
  %conv.i = zext i32 %19 to i64
  tail call void @__bfa_trc(ptr noundef %25, i32 noundef 2051, i32 noundef 2423, i64 noundef %conv.i) #7
  %26 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fcs, align 4
  %trcmod4.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %trcmod4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trcmod4.i, align 8
  %30 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid, align 4
  %or.i = or i32 %31, -559087616
  %conv6.i = zext i32 %or.i to i64
  tail call void @__bfa_trc(ptr noundef %29, i32 noundef 2051, i32 noundef 2424, i64 noundef %conv6.i) #7
  %32 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2424, i32 noundef %33) #10
  br label %bfa_fcs_rport_fcs_online_action.exit

bfa_fcs_rport_fcs_online_action.exit:             ; preds = %if.then.i, %lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge
  %itnim.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %34 = ptrtoint ptr %itnim.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %itnim.i, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  tail call void %37(ptr noundef %35, i32 noundef 1) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm7 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %38 = ptrtoint ptr %sm7 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @bfa_fcs_rport_sm_uninit, ptr %sm7, align 8
  %39 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fcs, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %fcxp_wqe = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %42, ptr noundef %fcxp_wqe) #7
  tail call fastcc void @bfa_fcs_rport_free(ptr noundef %rport)
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm11 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %43 = ptrtoint ptr %sm11 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm11, align 8
  %44 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fcs, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %fcxp_wqe14 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %47, ptr noundef %fcxp_wqe14) #7
  %48 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fcs, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %timer_mod = getelementptr inbounds %struct.bfa_s, ptr %51, i32 0, i32 5
  %timer = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  %52 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod, ptr noundef %timer, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %52) #7
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fcs, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %fcxp_wqe20 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %56, ptr noundef %fcxp_wqe20) #7
  %sm21 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %57 = ptrtoint ptr %sm21 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @bfa_fcs_rport_sm_nsdisc_sending, ptr %sm21, align 8
  %ns_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 23
  %58 = ptrtoint ptr %ns_retries to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %ns_retries, align 8
  tail call void @bfa_fcs_rport_send_nsdisc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %pid, align 4
  %sm24 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %60 = ptrtoint ptr %sm24 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm24, align 8
  %61 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fcs, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  %fcxp_wqe27 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %64, ptr noundef %fcxp_wqe27) #7
  %65 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fcs, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %timer_mod30 = getelementptr inbounds %struct.bfa_s, ptr %68, i32 0, i32 5
  %timer31 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  %69 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod30, ptr noundef %timer31, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %69) #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fcs, align 4
  %trcmod33 = getelementptr inbounds %struct.bfa_fcs_s, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %trcmod33 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %trcmod33, align 8
  %or = or i32 %event, -559087616
  %conv34 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %73, i32 noundef 2051, i32 noundef 328, i64 noundef %conv34) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 328, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb22, %sw.bb17, %sw.bb10, %sw.bb6, %bfa_fcs_rport_fcs_online_action.exit, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge69, %entry.sw.epilog_crit_edge70, %entry.sw.epilog_crit_edge71
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_send_plogiacc(ptr noundef %rport_cbarg, ptr noundef %fcxp_alloced) #0 align 64 {
entry:
  %fchs = alloca %struct.fchs_s, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fchs) #7
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 2
  %2 = call ptr @memset(ptr %fchs, i32 255, i32 24)
  %3 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 12
  %7 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %6, i32 noundef 2051, i32 noundef 1821, i64 noundef %8) #7
  %9 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fcs, align 4
  %trcmod3 = getelementptr inbounds %struct.bfa_fcs_s, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %trcmod3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trcmod3, align 8
  %reply_oxid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 7
  %13 = ptrtoint ptr %reply_oxid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %reply_oxid, align 2
  %conv = zext i16 %14 to i64
  tail call void @__bfa_trc(ptr noundef %12, i32 noundef 2051, i32 noundef 1822, i64 noundef %conv) #7
  %tobool.not = icmp eq ptr %fcxp_alloced, null
  br i1 %tobool.not, label %cond.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cond.end:                                         ; preds = %entry
  %fcs4 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %fcs4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fcs4, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %call = tail call ptr @bfa_fcxp_req_rsp_alloc(ptr noundef null, ptr noundef %18, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %fcs4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fcs4, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %fcxp_wqe = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 24
  tail call void @bfa_fcxp_req_rsp_alloc_wait(ptr noundef %22, ptr noundef %fcxp_wqe, ptr noundef nonnull @bfa_fcs_rport_send_plogiacc, ptr noundef %rport_cbarg, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  br label %cleanup

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  %cond52 = phi ptr [ %call, %cond.end.if.end_crit_edge ], [ %fcxp_alloced, %entry.if.end_crit_edge ]
  %fcxp8 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 21
  %23 = ptrtoint ptr %fcxp8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cond52, ptr %fcxp8, align 8
  %call9 = tail call ptr @bfa_fcxp_get_reqbuf(ptr noundef nonnull %cond52) #7
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 4
  %24 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid, align 4
  %pid10 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %pid10 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 3)
  %bf.load = load i24, ptr %pid10, align 4
  %bf.cast = zext i24 %bf.load to i32
  %27 = ptrtoint ptr %reply_oxid to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %reply_oxid, align 2
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %port_cfg, align 8
  %nwwn = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %nwwn to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %nwwn, align 8
  %fcs14 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %fcs14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fcs14, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %call16 = tail call zeroext i16 @bfa_fcport_get_maxfrsize(ptr noundef %36) #7
  %37 = ptrtoint ptr %fcs14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fcs14, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %call19 = tail call zeroext i8 @bfa_fcport_get_rx_bbcredit(ptr noundef %40) #7
  %conv20 = zext i8 %call19 to i16
  %call21 = call zeroext i16 @fc_plogi_acc_build(ptr noundef nonnull %fchs, ptr noundef %call9, i32 noundef %25, i32 noundef %bf.cast, i16 noundef zeroext %28, i64 noundef %30, i64 noundef %32, i16 noundef zeroext %call16, i16 noundef zeroext %conv20) #7
  %conv22 = zext i16 %call21 to i32
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fabric, align 4
  %vf_id = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vf_id, align 2
  %lp_tag = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %lp_tag to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %lp_tag, align 1
  call void @bfa_fcxp_send(ptr noundef nonnull %cond52, ptr noundef null, i16 noundef zeroext %44, i8 noundef zeroext %46, i32 noundef 0, i32 noundef 8, i32 noundef %conv22, ptr noundef nonnull %fchs, ptr noundef null, ptr noundef null, i32 noundef 2112, i8 noundef zeroext 0) #7
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 15
  %47 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sm, align 8
  call void %48(ptr noundef %rport_cbarg, i32 noundef 6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fchs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_hal_online(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  %lpwwn_buf.i = alloca [32 x i8], align 1
  %rpwwn_buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 581, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 582, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 583, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %event, label %do.body [
    i32 12, label %sw.bb
    i32 3, label %entry.sw.epilog_crit_edge
    i32 17, label %entry.sw.bb6_crit_edge
    i32 4, label %entry.sw.bb6_crit_edge99
    i32 8, label %entry.sw.bb8_crit_edge
    i32 5, label %entry.sw.bb8_crit_edge100
    i32 15, label %entry.sw.bb8_crit_edge101
    i32 19, label %entry.sw.bb8_crit_edge102
    i32 2, label %sw.bb10
    i32 7, label %sw.bb12
  ]

entry.sw.bb8_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.bb8_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.bb8_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.bb6_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_online, ptr %sm, align 8
  %port1.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %18 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port1.i, align 8
  %fcs.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %fcs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fcs.i, align 4
  %bfad2.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bfad2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bfad2.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %lpwwn_buf.i) #7
  %24 = call ptr @memset(ptr %lpwwn_buf.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rpwwn_buf.i) #7
  %onlines.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 25, i32 1
  %25 = call ptr @memset(ptr %rpwwn_buf.i, i32 255, i32 32)
  %26 = ptrtoint ptr %onlines.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %onlines.i, align 4
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %onlines.i, align 4
  %28 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %sw.bb.if.then.i_crit_edge, label %lor.lhs.false.i

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %30 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %pwwn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool3.not.i = icmp eq i64 %31, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb.if.then.i_crit_edge
  %32 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fcs, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %trcmod.i, align 8
  %conv.i = zext i32 %29 to i64
  tail call void @__bfa_trc(ptr noundef %35, i32 noundef 2051, i32 noundef 2441, i64 noundef %conv.i) #7
  %36 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fcs, align 4
  %trcmod7.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %trcmod7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trcmod7.i, align 8
  %40 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pid, align 4
  %or.i = or i32 %41, -559087616
  %conv9.i = zext i32 %or.i to i64
  tail call void @__bfa_trc(ptr noundef %39, i32 noundef 2051, i32 noundef 2442, i64 noundef %conv9.i) #7
  %42 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pid, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2442, i32 noundef %43) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %port_cfg.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %19, i32 0, i32 3
  %roles.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %19, i32 0, i32 3, i32 4
  %44 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %roles.i, align 8
  %and.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %if.end.i.if.end20.i_crit_edge, label %if.then15.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then15.i:                                      ; preds = %if.end.i
  %itnim.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %46 = ptrtoint ptr %itnim.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %itnim.i, align 8
  tail call void @bfa_fcs_itnim_brp_online(ptr noundef %47) #7
  %48 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %49)
  %cmp.i = icmp ugt i32 %49, 16773120
  br i1 %cmp.i, label %if.then15.i.if.end20.i_crit_edge, label %if.then18.i

if.then15.i.if.end20.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.then15.i
  %50 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fcs, align 4
  %trcmod.i.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %trcmod.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %trcmod.i.i, align 8
  %conv.i.i = zext i32 %49 to i64
  tail call void @__bfa_trc(ptr noundef %53, i32 noundef 2051, i32 noundef 3325, i64 noundef %conv.i.i) #7
  %54 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %port1.i, align 8
  %fcs1.i.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %fcs1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fcs1.i.i, align 4
  %min_cfg.i.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %min_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %min_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then18.i.if.end20.i_crit_edge

if.then18.i.if.end20.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.end.i.i:                                       ; preds = %if.then18.i
  %fabric.i.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %55, i32 0, i32 2
  %60 = ptrtoint ptr %fabric.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fabric.i.i, align 4
  %fab_type.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %fab_type.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fab_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.i.i = icmp eq i32 %63, 1
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.end.i.i.if.end20.i_crit_edge

if.end.i.i.if.end20.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rpf.i.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27
  %64 = ptrtoint ptr %rpf.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rpf.i.i, align 8
  tail call void %65(ptr noundef %rpf.i.i, i32 noundef 2) #7
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then4.i.i, %if.end.i.i.if.end20.i_crit_edge, %if.then18.i.if.end20.i_crit_edge, %if.then15.i.if.end20.i_crit_edge, %if.end.i.if.end20.i_crit_edge
  %66 = ptrtoint ptr %port_cfg.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %port_cfg.i, align 8
  %w.sroa.0.0.extract.shift.i.i = lshr i64 %67, 56
  %w.sroa.0.0.extract.trunc.i.i = trunc i64 %w.sroa.0.0.extract.shift.i.i to i32
  %w.sroa.5.0.extract.shift.i.i = lshr i64 %67, 48
  %w.sroa.5.0.extract.trunc.i.i = trunc i64 %w.sroa.5.0.extract.shift.i.i to i32
  %w.sroa.6.0.extract.shift.i.i = lshr i64 %67, 40
  %w.sroa.6.0.extract.trunc.i.i = trunc i64 %w.sroa.6.0.extract.shift.i.i to i32
  %w.sroa.7.0.extract.shift.i.i = lshr i64 %67, 32
  %w.sroa.7.0.extract.trunc.i.i = trunc i64 %w.sroa.7.0.extract.shift.i.i to i32
  %68 = trunc i64 %67 to i32
  %69 = lshr i32 %68, 24
  %70 = lshr i32 %68, 16
  %71 = lshr i32 %68, 8
  %conv2.i.i = and i32 %w.sroa.5.0.extract.trunc.i.i, 255
  %conv4.i.i = and i32 %w.sroa.6.0.extract.trunc.i.i, 255
  %conv6.i.i = and i32 %w.sroa.7.0.extract.trunc.i.i, 255
  %conv10.i.i = and i32 %70, 255
  %conv12.i.i = and i32 %71, 255
  %conv14.i.i = and i32 %68, 255
  %call.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %lpwwn_buf.i, ptr noundef nonnull @.str.19, i32 noundef %w.sroa.0.0.extract.trunc.i.i, i32 noundef %conv2.i.i, i32 noundef %conv4.i.i, i32 noundef %conv6.i.i, i32 noundef %69, i32 noundef %conv10.i.i, i32 noundef %conv12.i.i, i32 noundef %conv14.i.i) #7
  %72 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %pwwn, align 8
  %w.sroa.0.0.extract.shift.i60.i = lshr i64 %73, 56
  %w.sroa.0.0.extract.trunc.i61.i = trunc i64 %w.sroa.0.0.extract.shift.i60.i to i32
  %w.sroa.5.0.extract.shift.i62.i = lshr i64 %73, 48
  %w.sroa.5.0.extract.trunc.i63.i = trunc i64 %w.sroa.5.0.extract.shift.i62.i to i32
  %w.sroa.6.0.extract.shift.i64.i = lshr i64 %73, 40
  %w.sroa.6.0.extract.trunc.i65.i = trunc i64 %w.sroa.6.0.extract.shift.i64.i to i32
  %w.sroa.7.0.extract.shift.i66.i = lshr i64 %73, 32
  %w.sroa.7.0.extract.trunc.i67.i = trunc i64 %w.sroa.7.0.extract.shift.i66.i to i32
  %74 = trunc i64 %73 to i32
  %75 = lshr i32 %74, 24
  %76 = lshr i32 %74, 16
  %77 = lshr i32 %74, 8
  %conv2.i68.i = and i32 %w.sroa.5.0.extract.trunc.i63.i, 255
  %conv4.i69.i = and i32 %w.sroa.6.0.extract.trunc.i65.i, 255
  %conv6.i70.i = and i32 %w.sroa.7.0.extract.trunc.i67.i, 255
  %conv10.i71.i = and i32 %76, 255
  %conv12.i72.i = and i32 %77, 255
  %conv14.i73.i = and i32 %74, 255
  %call.i74.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %rpwwn_buf.i, ptr noundef nonnull @.str.19, i32 noundef %w.sroa.0.0.extract.trunc.i61.i, i32 noundef %conv2.i68.i, i32 noundef %conv4.i69.i, i32 noundef %conv6.i70.i, i32 noundef %75, i32 noundef %conv10.i71.i, i32 noundef %conv12.i72.i, i32 noundef %conv14.i73.i) #7
  %78 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %79)
  %cmp26.i = icmp ugt i32 %79, 16773120
  br i1 %cmp26.i, label %if.end20.i.bfa_fcs_rport_hal_online_action.exit_crit_edge, label %do.body31.i

if.end20.i.bfa_fcs_rport_hal_online_action.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_hal_online_action.exit

do.body31.i:                                      ; preds = %if.end20.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_log_level to i32))
  %80 = load i32, ptr @bfa_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %80)
  %cmp32.i = icmp eq i32 %80, 4
  br i1 %cmp32.i, label %do.end37.i, label %do.body31.i.do.end42.i_crit_edge

do.body31.i.do.end42.i_crit_edge:                 ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42.i

do.end37.i:                                       ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #9
  %pcidev.i = getelementptr inbounds %struct.bfad_s, ptr %23, i32 0, i32 4
  %81 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pcidev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull %rpwwn_buf.i, ptr noundef nonnull %lpwwn_buf.i) #10
  br label %do.end42.i

do.end42.i:                                       ; preds = %do.end37.i, %do.body31.i.do.end42.i_crit_edge
  call fastcc void @bfa_fcs_rport_aen_post(ptr noundef %rport, i32 noundef 1, ptr noundef null) #7
  br label %bfa_fcs_rport_hal_online_action.exit

bfa_fcs_rport_hal_online_action.exit:             ; preds = %do.end42.i, %if.end20.i.bfa_fcs_rport_hal_online_action.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rpwwn_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lpwwn_buf.i) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge99
  %sm7 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %83 = ptrtoint ptr %sm7 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @bfa_fcs_rport_sm_fc4_logorcv, ptr %sm7, align 8
  %84 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %85)
  %cmp.i39 = icmp ugt i32 %85, 16773120
  br i1 %cmp.i39, label %sw.bb6.bfa_fcs_rport_fcs_offline_action.exit_crit_edge, label %if.then.i46

sw.bb6.bfa_fcs_rport_fcs_offline_action.exit_crit_edge: ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit

if.then.i46:                                      ; preds = %sw.bb6
  %86 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fcs, align 4
  %trcmod.i.i41 = getelementptr inbounds %struct.bfa_fcs_s, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %trcmod.i.i41 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %trcmod.i.i41, align 8
  %conv.i.i42 = zext i32 %85 to i64
  tail call void @__bfa_trc(ptr noundef %89, i32 noundef 2051, i32 noundef 3340, i64 noundef %conv.i.i42) #7
  %port.i.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %90 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %port.i.i, align 8
  %fcs1.i.i43 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %91, i32 0, i32 9
  %92 = ptrtoint ptr %fcs1.i.i43 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fcs1.i.i43, align 4
  %min_cfg.i.i44 = getelementptr inbounds %struct.bfa_fcs_s, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %min_cfg.i.i44 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %min_cfg.i.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i.i45 = icmp eq i32 %95, 0
  br i1 %tobool.not.i.i45, label %if.end.i.i48, label %if.then.i46.bfa_fcs_rport_fcs_offline_action.exit_crit_edge

if.then.i46.bfa_fcs_rport_fcs_offline_action.exit_crit_edge: ; preds = %if.then.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit

if.end.i.i48:                                     ; preds = %if.then.i46
  call void @__sanitizer_cov_trace_pc() #9
  %rpf.i.i47 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27
  %rpsc_speed.i.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27, i32 6
  %96 = ptrtoint ptr %rpsc_speed.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %rpsc_speed.i.i, align 4
  %97 = ptrtoint ptr %rpf.i.i47 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rpf.i.i47, align 8
  tail call void %98(ptr noundef %rpf.i.i47, i32 noundef 1) #7
  br label %bfa_fcs_rport_fcs_offline_action.exit

bfa_fcs_rport_fcs_offline_action.exit:            ; preds = %if.end.i.i48, %if.then.i46.bfa_fcs_rport_fcs_offline_action.exit_crit_edge, %sw.bb6.bfa_fcs_rport_fcs_offline_action.exit_crit_edge
  %itnim.i49 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %99 = ptrtoint ptr %itnim.i49 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %itnim.i49, align 8
  tail call void @bfa_fcs_itnim_rport_offline(ptr noundef %100) #7
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge100, %entry.sw.bb8_crit_edge101, %entry.sw.bb8_crit_edge102
  %sm9 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %101 = ptrtoint ptr %sm9 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @bfa_fcs_rport_sm_fc4_offline, ptr %sm9, align 8
  %102 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %103)
  %cmp.i52 = icmp ugt i32 %103, 16773120
  br i1 %cmp.i52, label %sw.bb8.bfa_fcs_rport_fcs_offline_action.exit66_crit_edge, label %if.then.i60

sw.bb8.bfa_fcs_rport_fcs_offline_action.exit66_crit_edge: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit66

if.then.i60:                                      ; preds = %sw.bb8
  %104 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fcs, align 4
  %trcmod.i.i54 = getelementptr inbounds %struct.bfa_fcs_s, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %trcmod.i.i54 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %trcmod.i.i54, align 8
  %conv.i.i55 = zext i32 %103 to i64
  tail call void @__bfa_trc(ptr noundef %107, i32 noundef 2051, i32 noundef 3340, i64 noundef %conv.i.i55) #7
  %port.i.i56 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %108 = ptrtoint ptr %port.i.i56 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %port.i.i56, align 8
  %fcs1.i.i57 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %109, i32 0, i32 9
  %110 = ptrtoint ptr %fcs1.i.i57 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %fcs1.i.i57, align 4
  %min_cfg.i.i58 = getelementptr inbounds %struct.bfa_fcs_s, ptr %111, i32 0, i32 5
  %112 = ptrtoint ptr %min_cfg.i.i58 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %min_cfg.i.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i.i59 = icmp eq i32 %113, 0
  br i1 %tobool.not.i.i59, label %if.end.i.i63, label %if.then.i60.bfa_fcs_rport_fcs_offline_action.exit66_crit_edge

if.then.i60.bfa_fcs_rport_fcs_offline_action.exit66_crit_edge: ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit66

if.end.i.i63:                                     ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #9
  %rpf.i.i61 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27
  %rpsc_speed.i.i62 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27, i32 6
  %114 = ptrtoint ptr %rpsc_speed.i.i62 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %rpsc_speed.i.i62, align 4
  %115 = ptrtoint ptr %rpf.i.i61 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rpf.i.i61, align 8
  tail call void %116(ptr noundef %rpf.i.i61, i32 noundef 1) #7
  br label %bfa_fcs_rport_fcs_offline_action.exit66

bfa_fcs_rport_fcs_offline_action.exit66:          ; preds = %if.end.i.i63, %if.then.i60.bfa_fcs_rport_fcs_offline_action.exit66_crit_edge, %sw.bb8.bfa_fcs_rport_fcs_offline_action.exit66_crit_edge
  %itnim.i64 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %117 = ptrtoint ptr %itnim.i64 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %itnim.i64, align 8
  tail call void @bfa_fcs_itnim_rport_offline(ptr noundef %118) #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %plogi_pending = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 11
  %119 = ptrtoint ptr %plogi_pending to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %plogi_pending, align 4
  %sm11 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %120 = ptrtoint ptr %sm11 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @bfa_fcs_rport_sm_fc4_offline, ptr %sm11, align 8
  %121 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %122)
  %cmp.i68 = icmp ugt i32 %122, 16773120
  br i1 %cmp.i68, label %sw.bb10.bfa_fcs_rport_fcs_offline_action.exit82_crit_edge, label %if.then.i76

sw.bb10.bfa_fcs_rport_fcs_offline_action.exit82_crit_edge: ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit82

if.then.i76:                                      ; preds = %sw.bb10
  %123 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %fcs, align 4
  %trcmod.i.i70 = getelementptr inbounds %struct.bfa_fcs_s, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %trcmod.i.i70 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %trcmod.i.i70, align 8
  %conv.i.i71 = zext i32 %122 to i64
  tail call void @__bfa_trc(ptr noundef %126, i32 noundef 2051, i32 noundef 3340, i64 noundef %conv.i.i71) #7
  %port.i.i72 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %127 = ptrtoint ptr %port.i.i72 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %port.i.i72, align 8
  %fcs1.i.i73 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %128, i32 0, i32 9
  %129 = ptrtoint ptr %fcs1.i.i73 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %fcs1.i.i73, align 4
  %min_cfg.i.i74 = getelementptr inbounds %struct.bfa_fcs_s, ptr %130, i32 0, i32 5
  %131 = ptrtoint ptr %min_cfg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %min_cfg.i.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i.i75 = icmp eq i32 %132, 0
  br i1 %tobool.not.i.i75, label %if.end.i.i79, label %if.then.i76.bfa_fcs_rport_fcs_offline_action.exit82_crit_edge

if.then.i76.bfa_fcs_rport_fcs_offline_action.exit82_crit_edge: ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit82

if.end.i.i79:                                     ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #9
  %rpf.i.i77 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27
  %rpsc_speed.i.i78 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27, i32 6
  %133 = ptrtoint ptr %rpsc_speed.i.i78 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %rpsc_speed.i.i78, align 4
  %134 = ptrtoint ptr %rpf.i.i77 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rpf.i.i77, align 8
  tail call void %135(ptr noundef %rpf.i.i77, i32 noundef 1) #7
  br label %bfa_fcs_rport_fcs_offline_action.exit82

bfa_fcs_rport_fcs_offline_action.exit82:          ; preds = %if.end.i.i79, %if.then.i76.bfa_fcs_rport_fcs_offline_action.exit82_crit_edge, %sw.bb10.bfa_fcs_rport_fcs_offline_action.exit82_crit_edge
  %itnim.i80 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %136 = ptrtoint ptr %itnim.i80 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %itnim.i80, align 8
  tail call void @bfa_fcs_itnim_rport_offline(ptr noundef %137) #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %sm13 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %138 = ptrtoint ptr %sm13 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @bfa_fcs_rport_sm_fc4_logosend, ptr %sm13, align 8
  %139 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %140)
  %cmp.i84 = icmp ugt i32 %140, 16773120
  br i1 %cmp.i84, label %sw.bb12.bfa_fcs_rport_fcs_offline_action.exit98_crit_edge, label %if.then.i92

sw.bb12.bfa_fcs_rport_fcs_offline_action.exit98_crit_edge: ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit98

if.then.i92:                                      ; preds = %sw.bb12
  %141 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %fcs, align 4
  %trcmod.i.i86 = getelementptr inbounds %struct.bfa_fcs_s, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %trcmod.i.i86 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %trcmod.i.i86, align 8
  %conv.i.i87 = zext i32 %140 to i64
  tail call void @__bfa_trc(ptr noundef %144, i32 noundef 2051, i32 noundef 3340, i64 noundef %conv.i.i87) #7
  %port.i.i88 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %145 = ptrtoint ptr %port.i.i88 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %port.i.i88, align 8
  %fcs1.i.i89 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %146, i32 0, i32 9
  %147 = ptrtoint ptr %fcs1.i.i89 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %fcs1.i.i89, align 4
  %min_cfg.i.i90 = getelementptr inbounds %struct.bfa_fcs_s, ptr %148, i32 0, i32 5
  %149 = ptrtoint ptr %min_cfg.i.i90 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %min_cfg.i.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.i.i91 = icmp eq i32 %150, 0
  br i1 %tobool.not.i.i91, label %if.end.i.i95, label %if.then.i92.bfa_fcs_rport_fcs_offline_action.exit98_crit_edge

if.then.i92.bfa_fcs_rport_fcs_offline_action.exit98_crit_edge: ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit98

if.end.i.i95:                                     ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #9
  %rpf.i.i93 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27
  %rpsc_speed.i.i94 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27, i32 6
  %151 = ptrtoint ptr %rpsc_speed.i.i94 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %rpsc_speed.i.i94, align 4
  %152 = ptrtoint ptr %rpf.i.i93 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rpf.i.i93, align 8
  tail call void %153(ptr noundef %rpf.i.i93, i32 noundef 1) #7
  br label %bfa_fcs_rport_fcs_offline_action.exit98

bfa_fcs_rport_fcs_offline_action.exit98:          ; preds = %if.end.i.i95, %if.then.i92.bfa_fcs_rport_fcs_offline_action.exit98_crit_edge, %sw.bb12.bfa_fcs_rport_fcs_offline_action.exit98_crit_edge
  %itnim.i96 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %154 = ptrtoint ptr %itnim.i96 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %itnim.i96, align 8
  tail call void @bfa_fcs_itnim_rport_offline(ptr noundef %155) #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %156 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %fcs, align 4
  %trcmod15 = getelementptr inbounds %struct.bfa_fcs_s, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %trcmod15 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %trcmod15, align 8
  %or = or i32 %event, -559087616
  %conv16 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %159, i32 noundef 2051, i32 noundef 620, i64 noundef %conv16) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 620, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %bfa_fcs_rport_fcs_offline_action.exit98, %bfa_fcs_rport_fcs_offline_action.exit82, %bfa_fcs_rport_fcs_offline_action.exit66, %bfa_fcs_rport_fcs_offline_action.exit, %bfa_fcs_rport_hal_online_action.exit, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_nsdisc_sending(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 1426, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 1427, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 1428, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %event, label %do.body [
    i32 6, label %sw.bb
    i32 7, label %sw.bb6
    i32 2, label %sw.bb9
    i32 8, label %entry.sw.epilog_crit_edge
    i32 4, label %entry.sw.epilog_crit_edge61
    i32 17, label %entry.sw.epilog_crit_edge62
    i32 1, label %entry.sw.epilog_crit_edge63
    i32 15, label %sw.bb15
    i32 5, label %sw.bb16
    i32 3, label %sw.bb23
  ]

entry.sw.epilog_crit_edge63:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge62:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge61:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_nsdisc_sent, ptr %sm, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm7 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %18 = ptrtoint ptr %sm7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bfa_fcs_rport_sm_uninit, ptr %sm7, align 8
  %19 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fcs, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %fcxp_wqe = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %22, ptr noundef %fcxp_wqe) #7
  tail call fastcc void @bfa_fcs_rport_free(ptr noundef %rport)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm10 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %23 = ptrtoint ptr %sm10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bfa_fcs_rport_sm_plogiacc_sending, ptr %sm10, align 8
  %24 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fcs, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %fcxp_wqe13 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %27, ptr noundef %fcxp_wqe13) #7
  tail call void @bfa_fcs_rport_send_plogiacc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ns_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 23
  %28 = ptrtoint ptr %ns_retries to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ns_retries, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm17 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %29 = ptrtoint ptr %sm17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm17, align 8
  %30 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fcs, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %fcxp_wqe20 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %33, ptr noundef %fcxp_wqe20) #7
  %34 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fcs, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %timer_mod = getelementptr inbounds %struct.bfa_s, ptr %37, i32 0, i32 5
  %timer = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  %38 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod, ptr noundef %timer, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %38) #7
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %sm24 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %39 = ptrtoint ptr %sm24 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @bfa_fcs_rport_sm_fc4_fcs_online, ptr %sm24, align 8
  %40 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fcs, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %fcxp_wqe27 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %43, ptr noundef %fcxp_wqe27) #7
  %44 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %sw.bb23.if.then.i_crit_edge, label %lor.lhs.false.i

sw.bb23.if.then.i_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb23
  %46 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %pwwn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %tobool1.not.i = icmp eq i64 %47, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge

lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_online_action.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb23.if.then.i_crit_edge
  %48 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fcs, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %trcmod.i, align 8
  %conv.i = zext i32 %45 to i64
  tail call void @__bfa_trc(ptr noundef %51, i32 noundef 2051, i32 noundef 2423, i64 noundef %conv.i) #7
  %52 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fcs, align 4
  %trcmod4.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %trcmod4.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %trcmod4.i, align 8
  %56 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pid, align 4
  %or.i = or i32 %57, -559087616
  %conv6.i = zext i32 %or.i to i64
  tail call void @__bfa_trc(ptr noundef %55, i32 noundef 2051, i32 noundef 2424, i64 noundef %conv6.i) #7
  %58 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pid, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2424, i32 noundef %59) #10
  br label %bfa_fcs_rport_fcs_online_action.exit

bfa_fcs_rport_fcs_online_action.exit:             ; preds = %if.then.i, %lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge
  %itnim.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %60 = ptrtoint ptr %itnim.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %itnim.i, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  tail call void %63(ptr noundef %61, i32 noundef 1) #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fcs, align 4
  %trcmod29 = getelementptr inbounds %struct.bfa_fcs_s, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %trcmod29 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %trcmod29, align 8
  %or = or i32 %event, -559087616
  %conv30 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %67, i32 noundef 2051, i32 noundef 1472, i64 noundef %conv30) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1472, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %bfa_fcs_rport_fcs_online_action.exit, %sw.bb16, %sw.bb15, %sw.bb9, %sw.bb6, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge61, %entry.sw.epilog_crit_edge62, %entry.sw.epilog_crit_edge63
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_send_nsdisc(ptr noundef %rport_cbarg, ptr noundef %fcxp_alloced) #0 align 64 {
entry:
  %fchs = alloca %struct.fchs_s, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fchs) #7
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 2
  %2 = call ptr @memset(ptr %fchs, i32 255, i32 24)
  %3 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trcmod, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 4
  %7 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid, align 4
  %conv = zext i32 %8 to i64
  tail call void @__bfa_trc(ptr noundef %6, i32 noundef 2051, i32 noundef 1919, i64 noundef %conv) #7
  %tobool.not = icmp eq ptr %fcxp_alloced, null
  br i1 %tobool.not, label %cond.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cond.end:                                         ; preds = %entry
  %fcs2 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %fcs2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fcs2, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %call = tail call ptr @bfa_fcxp_req_rsp_alloc(ptr noundef null, ptr noundef %12, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1) #7
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %fcs2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fcs2, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %fcxp_wqe = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 24
  tail call void @bfa_fcxp_req_rsp_alloc_wait(ptr noundef %16, ptr noundef %fcxp_wqe, ptr noundef nonnull @bfa_fcs_rport_send_nsdisc, ptr noundef %rport_cbarg, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1) #7
  br label %cleanup

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  %cond50 = phi ptr [ %call, %cond.end.if.end_crit_edge ], [ %fcxp_alloced, %entry.if.end_crit_edge ]
  %fcxp6 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 21
  %17 = ptrtoint ptr %fcxp6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cond50, ptr %fcxp6, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 12
  %18 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pwwn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool7.not = icmp eq i64 %19, 0
  %call14 = tail call ptr @bfa_fcxp_get_reqbuf(ptr noundef nonnull %cond50) #7
  %pid15 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %pid15 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 3)
  %bf.load16 = load i24, ptr %pid15, align 4
  %bf.cast17 = zext i24 %bf.load16 to i32
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pwwn, align 8
  %call12 = call zeroext i16 @fc_gidpn_build(ptr noundef nonnull %fchs, ptr noundef %call14, i32 noundef %bf.cast17, i16 noundef zeroext 0, i64 noundef %22) #7
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid, align 4
  %call19 = call zeroext i16 @fc_gpnid_build(ptr noundef nonnull %fchs, ptr noundef %call14, i32 noundef %bf.cast17, i16 noundef zeroext 0, i32 noundef %24) #7
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then8
  %len.0.in = phi i16 [ %call12, %if.then8 ], [ %call19, %if.else ]
  %cbfn.0 = phi ptr [ @bfa_fcs_rport_gidpn_response, %if.then8 ], [ @bfa_fcs_rport_gpnid_response, %if.else ]
  %len.0 = zext i16 %len.0.in to i32
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fabric, align 4
  %vf_id = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vf_id, align 2
  %lp_tag = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %lp_tag to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %lp_tag, align 1
  call void @bfa_fcxp_send(ptr noundef nonnull %cond50, ptr noundef null, i16 noundef zeroext %28, i8 noundef zeroext %30, i32 noundef 0, i32 noundef 8, i32 noundef %len.0, ptr noundef nonnull %fchs, ptr noundef nonnull %cbfn.0, ptr noundef %rport_cbarg, i32 noundef 2112, i8 noundef zeroext 30) #7
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 15
  %31 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sm, align 8
  call void %32(ptr noundef %rport_cbarg, i32 noundef 6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fchs) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_plogi(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 409, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 410, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 411, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %event, label %do.body86 [
    i32 9, label %sw.bb
    i32 4, label %sw.bb6
    i32 17, label %entry.sw.bb7_crit_edge
    i32 10, label %entry.sw.bb9_crit_edge
    i32 20, label %entry.sw.epilog_crit_edge
    i32 19, label %sw.bb26
    i32 18, label %sw.bb33
    i32 5, label %sw.bb40
    i32 15, label %entry.sw.bb48_crit_edge
    i32 8, label %entry.sw.bb48_crit_edge172
    i32 2, label %sw.bb77
    i32 7, label %sw.bb80
    i32 3, label %sw.bb83
  ]

entry.sw.bb48_crit_edge172:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb48

entry.sw.bb48_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb48

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

sw.bb:                                            ; preds = %entry
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_fc4_fcs_online, ptr %sm, align 8
  %plogi_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 22
  %18 = ptrtoint ptr %plogi_retries to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %plogi_retries, align 4
  %19 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %sw.bb.if.then.i_crit_edge, label %lor.lhs.false.i

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %21 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pwwn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool1.not.i = icmp eq i64 %22, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge

lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_online_action.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb.if.then.i_crit_edge
  %23 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fcs, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trcmod.i, align 8
  %conv.i = zext i32 %20 to i64
  tail call void @__bfa_trc(ptr noundef %26, i32 noundef 2051, i32 noundef 2423, i64 noundef %conv.i) #7
  %27 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fcs, align 4
  %trcmod4.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %trcmod4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trcmod4.i, align 8
  %31 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid, align 4
  %or.i = or i32 %32, -559087616
  %conv6.i = zext i32 %or.i to i64
  tail call void @__bfa_trc(ptr noundef %30, i32 noundef 2051, i32 noundef 2424, i64 noundef %conv6.i) #7
  %33 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pid, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2424, i32 noundef %34) #10
  br label %bfa_fcs_rport_fcs_online_action.exit

bfa_fcs_rport_fcs_online_action.exit:             ; preds = %if.then.i, %lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge
  %itnim.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %35 = ptrtoint ptr %itnim.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %itnim.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  tail call void %38(ptr noundef %36, i32 noundef 1) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_logo_acc(ptr noundef %rport)
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb6, %entry.sw.bb7_crit_edge
  %prlo = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 10
  %39 = ptrtoint ptr %prlo to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %prlo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp = icmp eq i32 %40, 1
  br i1 %cmp, label %if.then, label %sw.bb7.if.end_crit_edge

sw.bb7.if.end_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_prlo_acc(ptr noundef %rport)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb7.if.end_crit_edge
  %fcxp = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %41 = ptrtoint ptr %fcxp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fcxp, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %42) #7
  br label %sw.bb9

sw.bb9:                                           ; preds = %if.end, %entry.sw.bb9_crit_edge
  %plogi_retries10 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 22
  %43 = ptrtoint ptr %plogi_retries10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %plogi_retries10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %44)
  %cmp11 = icmp slt i32 %44, 5
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nsw i32 %44, 1
  %45 = ptrtoint ptr %plogi_retries10 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %inc, ptr %plogi_retries10, align 4
  %sm15 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %46 = ptrtoint ptr %sm15 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @bfa_fcs_rport_sm_plogi_retry, ptr %sm15, align 8
  %47 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fcs, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %timer_mod = getelementptr inbounds %struct.bfa_s, ptr %50, i32 0, i32 5
  %timer = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_begin(ptr noundef %timer_mod, ptr noundef %timer, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef 2000) #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %port = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %51 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %port, align 8
  %rport_del_max_plogi_retry = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %52, i32 0, i32 15, i32 61
  %53 = ptrtoint ptr %rport_del_max_plogi_retry to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rport_del_max_plogi_retry, align 4
  %inc17 = add i32 %54, 1
  store i32 %inc17, ptr %rport_del_max_plogi_retry, align 4
  %55 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pid, align 4
  %old_pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 5
  %57 = ptrtoint ptr %old_pid to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %old_pid, align 8
  store i32 0, ptr %pid, align 4
  %sm20 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %58 = ptrtoint ptr %sm20 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm20, align 8
  %59 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fcs, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %timer_mod23 = getelementptr inbounds %struct.bfa_s, ptr %62, i32 0, i32 5
  %timer24 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  %63 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod23, ptr noundef %timer24, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %63) #7
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm27 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %64 = ptrtoint ptr %sm27 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm27, align 8
  %fcxp28 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %65 = ptrtoint ptr %fcxp28 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fcxp28, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %66) #7
  %67 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fcs, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %timer_mod31 = getelementptr inbounds %struct.bfa_s, ptr %70, i32 0, i32 5
  %timer32 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  %71 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod31, ptr noundef %timer32, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %71) #7
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %plogi_retries34 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 22
  %72 = ptrtoint ptr %plogi_retries34 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %plogi_retries34, align 4
  %sm35 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %73 = ptrtoint ptr %sm35 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @bfa_fcs_rport_sm_plogi_retry, ptr %sm35, align 8
  %74 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fcs, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  %timer_mod38 = getelementptr inbounds %struct.bfa_s, ptr %77, i32 0, i32 5
  %timer39 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_begin(ptr noundef %timer_mod38, ptr noundef %timer39, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef 10000) #7
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %pid, align 4
  %sm42 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %79 = ptrtoint ptr %sm42 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm42, align 8
  %fcxp43 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %80 = ptrtoint ptr %fcxp43 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fcxp43, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %81) #7
  %82 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fcs, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 8
  %timer_mod46 = getelementptr inbounds %struct.bfa_s, ptr %85, i32 0, i32 5
  %timer47 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  %86 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod46, ptr noundef %timer47, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %86) #7
  br label %sw.epilog

sw.bb48:                                          ; preds = %entry.sw.bb48_crit_edge, %entry.sw.bb48_crit_edge172
  %fcxp49 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %87 = ptrtoint ptr %fcxp49 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fcxp49, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %88) #7
  %port50 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %89 = ptrtoint ptr %port50 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %port50, align 8
  %fcs51 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %90, i32 0, i32 9
  %91 = ptrtoint ptr %fcs51 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fcs51, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 8
  %call = tail call i32 @bfa_fcport_get_topology(ptr noundef %94) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp53.not = icmp eq i32 %call, 2
  br i1 %cmp53.not, label %do.end, label %sw.bb48.if.end69_crit_edge, !prof !179

sw.bb48.if.end69_crit_edge:                       ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

do.end:                                           ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 479, i32 noundef 9, ptr noundef null) #7
  br label %if.end69

if.end69:                                         ; preds = %do.end, %sw.bb48.if.end69_crit_edge
  %sm76 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %95 = ptrtoint ptr %sm76 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @bfa_fcs_rport_sm_nsdisc_sending, ptr %sm76, align 8
  %ns_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 23
  %96 = ptrtoint ptr %ns_retries to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %ns_retries, align 8
  tail call void @bfa_fcs_rport_send_nsdisc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb77:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm78 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %97 = ptrtoint ptr %sm78 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @bfa_fcs_rport_sm_plogiacc_sending, ptr %sm78, align 8
  %fcxp79 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %98 = ptrtoint ptr %fcxp79 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %fcxp79, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %99) #7
  tail call void @bfa_fcs_rport_send_plogiacc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb80:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm81 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %100 = ptrtoint ptr %sm81 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @bfa_fcs_rport_sm_uninit, ptr %sm81, align 8
  %fcxp82 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %101 = ptrtoint ptr %fcxp82 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fcxp82, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %102) #7
  tail call fastcc void @bfa_fcs_rport_free(ptr noundef %rport)
  br label %sw.epilog

sw.bb83:                                          ; preds = %entry
  %sm84 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %103 = ptrtoint ptr %sm84 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @bfa_fcs_rport_sm_fc4_fcs_online, ptr %sm84, align 8
  %fcxp85 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %104 = ptrtoint ptr %fcxp85 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fcxp85, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %105) #7
  %106 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i158 = icmp eq i32 %107, 0
  br i1 %tobool.not.i158, label %sw.bb83.if.then.i169_crit_edge, label %lor.lhs.false.i161

sw.bb83.if.then.i169_crit_edge:                   ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i169

lor.lhs.false.i161:                               ; preds = %sw.bb83
  %108 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %pwwn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %109)
  %tobool1.not.i160 = icmp eq i64 %109, 0
  br i1 %tobool1.not.i160, label %lor.lhs.false.i161.if.then.i169_crit_edge, label %lor.lhs.false.i161.bfa_fcs_rport_fcs_online_action.exit171_crit_edge

lor.lhs.false.i161.bfa_fcs_rport_fcs_online_action.exit171_crit_edge: ; preds = %lor.lhs.false.i161
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_online_action.exit171

lor.lhs.false.i161.if.then.i169_crit_edge:        ; preds = %lor.lhs.false.i161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i169

if.then.i169:                                     ; preds = %lor.lhs.false.i161.if.then.i169_crit_edge, %sw.bb83.if.then.i169_crit_edge
  %110 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %fcs, align 4
  %trcmod.i163 = getelementptr inbounds %struct.bfa_fcs_s, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %trcmod.i163 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %trcmod.i163, align 8
  %conv.i164 = zext i32 %107 to i64
  tail call void @__bfa_trc(ptr noundef %113, i32 noundef 2051, i32 noundef 2423, i64 noundef %conv.i164) #7
  %114 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %fcs, align 4
  %trcmod4.i165 = getelementptr inbounds %struct.bfa_fcs_s, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %trcmod4.i165 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %trcmod4.i165, align 8
  %118 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pid, align 4
  %or.i166 = or i32 %119, -559087616
  %conv6.i167 = zext i32 %or.i166 to i64
  tail call void @__bfa_trc(ptr noundef %117, i32 noundef 2051, i32 noundef 2424, i64 noundef %conv6.i167) #7
  %120 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pid, align 4
  %call.i168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2424, i32 noundef %121) #10
  br label %bfa_fcs_rport_fcs_online_action.exit171

bfa_fcs_rport_fcs_online_action.exit171:          ; preds = %if.then.i169, %lor.lhs.false.i161.bfa_fcs_rport_fcs_online_action.exit171_crit_edge
  %itnim.i170 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %122 = ptrtoint ptr %itnim.i170 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %itnim.i170, align 8
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  tail call void %125(ptr noundef %123, i32 noundef 1) #7
  br label %sw.epilog

do.body86:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %fcs, align 4
  %trcmod88 = getelementptr inbounds %struct.bfa_fcs_s, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %trcmod88 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %trcmod88, align 8
  %or = or i32 %event, -559087616
  %conv89 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %129, i32 noundef 2051, i32 noundef 504, i64 noundef %conv89) #7
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 504, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body86, %bfa_fcs_rport_fcs_online_action.exit171, %sw.bb80, %sw.bb77, %if.end69, %sw.bb40, %sw.bb33, %sw.bb26, %if.else, %if.then13, %bfa_fcs_rport_fcs_online_action.exit, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcxp_walloc_cancel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_fcs_rport_free(ptr noundef %rport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 8
  %fcs2 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %fcs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs2, align 4
  %plogi_pending = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 11
  %4 = ptrtoint ptr %plogi_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %plogi_pending, align 4
  %roles = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %roles, align 8
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %itnim = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %7 = ptrtoint ptr %itnim to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %itnim, align 8
  tail call void @bfa_fcs_itnim_delete(ptr noundef %8) #7
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 4
  %11 = add i32 %10, -16773121
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16773120, i32 %11)
  %12 = icmp ult i32 %11, -16773120
  br i1 %12, label %if.then.if.end6_crit_edge, label %if.then5

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.then
  %fcs.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %13 = ptrtoint ptr %fcs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fcs.i, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trcmod.i, align 8
  %conv.i = zext i32 %10 to i64
  tail call void @__bfa_trc(ptr noundef %16, i32 noundef 2051, i32 noundef 3340, i64 noundef %conv.i) #7
  %17 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port1, align 8
  %fcs1.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %fcs1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fcs1.i, align 4
  %min_cfg.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %min_cfg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %min_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.if.end6_crit_edge

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %rpf.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27
  %rpsc_speed.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27, i32 6
  %23 = ptrtoint ptr %rpsc_speed.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rpsc_speed.i, align 4
  %24 = ptrtoint ptr %rpf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rpf.i, align 8
  tail call void %25(ptr noundef %rpf.i, i32 noundef 1) #7
  br label %if.end6

if.end6:                                          ; preds = %if.end.i, %if.then5.if.end6_crit_edge, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %bfa_rport = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 20
  %26 = ptrtoint ptr %bfa_rport to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bfa_rport, align 4
  %tobool7.not = icmp eq ptr %27, null
  br i1 %tobool7.not, label %if.end6.if.end12_crit_edge, label %if.then8

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_rport_s, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sm, align 4
  tail call void %29(ptr noundef nonnull %27, i32 noundef 2) #7
  %30 = ptrtoint ptr %bfa_rport to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %bfa_rport, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end6.if.end12_crit_edge
  tail call void @bfa_fcs_lport_del_rport(ptr noundef %1, ptr noundef %rport) #7
  %num_rport_logins = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 12
  %31 = ptrtoint ptr %num_rport_logins to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_rport_logins, align 4
  %dec = add i32 %32, -1
  store i32 %dec, ptr %num_rport_logins, align 4
  %rp_drv = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 3
  %33 = ptrtoint ptr %rp_drv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rp_drv, align 8
  tail call void @kfree(ptr noundef %34) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_offline(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 1357, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 1358, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 1359, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %event, label %do.body45 [
    i32 11, label %sw.bb
    i32 8, label %entry.sw.bb6_crit_edge
    i32 15, label %entry.sw.bb6_crit_edge88
    i32 7, label %sw.bb29
    i32 2, label %sw.bb32
    i32 4, label %entry.sw.epilog_crit_edge
    i32 17, label %entry.sw.epilog_crit_edge89
    i32 5, label %entry.sw.epilog_crit_edge90
    i32 19, label %entry.sw.epilog_crit_edge91
    i32 3, label %sw.bb36
    i32 20, label %sw.bb39
    i32 1, label %sw.bb42
  ]

entry.sw.epilog_crit_edge91:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge90:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge89:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.bb6_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_uninit, ptr %sm, align 8
  tail call fastcc void @bfa_fcs_rport_free(ptr noundef %rport)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge88
  %timer = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_stop(ptr noundef %timer) #7
  %port = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port, align 8
  %fcs7 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %fcs7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fcs7, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %call = tail call i32 @bfa_fcport_get_topology(ptr noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %do.end, label %sw.bb6.if.end_crit_edge, !prof !179

sw.bb6.if.end_crit_edge:                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1371, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb6.if.end_crit_edge
  %sm28 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %24 = ptrtoint ptr %sm28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @bfa_fcs_rport_sm_nsdisc_sending, ptr %sm28, align 8
  %ns_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 23
  %25 = ptrtoint ptr %ns_retries to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %ns_retries, align 8
  tail call void @bfa_fcs_rport_send_nsdisc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm30 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %26 = ptrtoint ptr %sm30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bfa_fcs_rport_sm_uninit, ptr %sm30, align 8
  %timer31 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_stop(ptr noundef %timer31) #7
  tail call fastcc void @bfa_fcs_rport_free(ptr noundef %rport)
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm33 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %27 = ptrtoint ptr %sm33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @bfa_fcs_rport_sm_plogiacc_sending, ptr %sm33, align 8
  %timer34 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_stop(ptr noundef %timer34) #7
  tail call void @bfa_fcs_rport_send_plogiacc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %sm37 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %28 = ptrtoint ptr %sm37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfa_fcs_rport_sm_fc4_fcs_online, ptr %sm37, align 8
  %timer38 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_stop(ptr noundef %timer38) #7
  %29 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %sw.bb36.if.then.i_crit_edge, label %lor.lhs.false.i

sw.bb36.if.then.i_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb36
  %31 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %pwwn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool1.not.i = icmp eq i64 %32, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge

lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_online_action.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb36.if.then.i_crit_edge
  %33 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fcs, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trcmod.i, align 8
  %conv.i = zext i32 %30 to i64
  tail call void @__bfa_trc(ptr noundef %36, i32 noundef 2051, i32 noundef 2423, i64 noundef %conv.i) #7
  %37 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fcs, align 4
  %trcmod4.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %trcmod4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %trcmod4.i, align 8
  %41 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pid, align 4
  %or.i = or i32 %42, -559087616
  %conv6.i = zext i32 %or.i to i64
  tail call void @__bfa_trc(ptr noundef %40, i32 noundef 2051, i32 noundef 2424, i64 noundef %conv6.i) #7
  %43 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pid, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2424, i32 noundef %44) #10
  br label %bfa_fcs_rport_fcs_online_action.exit

bfa_fcs_rport_fcs_online_action.exit:             ; preds = %if.then.i, %lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge
  %itnim.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %45 = ptrtoint ptr %itnim.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %itnim.i, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  tail call void %48(ptr noundef %46, i32 noundef 1) #7
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %timer40 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_stop(ptr noundef %timer40) #7
  %sm41 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %49 = ptrtoint ptr %sm41 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @bfa_fcs_rport_sm_plogi_sending, ptr %sm41, align 8
  tail call void @bfa_fcs_rport_send_plogi(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %timer43 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_stop(ptr noundef %timer43) #7
  %sm44 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %50 = ptrtoint ptr %sm44 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @bfa_fcs_rport_sm_plogi_sending, ptr %sm44, align 8
  %plogi_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 22
  %51 = ptrtoint ptr %plogi_retries to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %plogi_retries, align 4
  tail call void @bfa_fcs_rport_send_plogi(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

do.body45:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fcs, align 4
  %trcmod47 = getelementptr inbounds %struct.bfa_fcs_s, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %trcmod47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %trcmod47, align 8
  %or = or i32 %event, -559087616
  %conv48 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %55, i32 noundef 2051, i32 noundef 1415, i64 noundef %conv48) #7
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1415, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body45, %sw.bb42, %sw.bb39, %bfa_fcs_rport_fcs_online_action.exit, %sw.bb32, %sw.bb29, %if.end, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge89, %entry.sw.epilog_crit_edge90, %entry.sw.epilog_crit_edge91
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_timer_begin(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_timeout(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %plogi_timeouts = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %arg, i32 0, i32 25, i32 5
  %0 = ptrtoint ptr %plogi_timeouts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %plogi_timeouts, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %plogi_timeouts, align 4
  %port = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %rport_plogi_timeouts = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %3, i32 0, i32 15, i32 60
  %4 = ptrtoint ptr %rport_plogi_timeouts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rport_plogi_timeouts, align 4
  %inc2 = add i32 %5, 1
  store i32 %inc2, ptr %rport_plogi_timeouts, align 4
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %arg, i32 0, i32 15
  %6 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm, align 8
  tail call void %7(ptr noundef %arg, i32 noundef 11) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_get_topology(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_fc4_fcs_online(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  %rport_info.i = alloca %struct.bfa_rport_info_s, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 515, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 516, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 517, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %event, label %do.body [
    i32 21, label %sw.bb
    i32 2, label %sw.bb22
    i32 3, label %entry.sw.bb24_crit_edge
    i32 5, label %entry.sw.bb24_crit_edge120
    i32 15, label %entry.sw.bb24_crit_edge121
    i32 8, label %entry.sw.bb24_crit_edge122
    i32 19, label %entry.sw.bb24_crit_edge123
    i32 4, label %entry.sw.bb26_crit_edge
    i32 17, label %entry.sw.bb26_crit_edge124
    i32 7, label %sw.bb28
  ]

entry.sw.bb26_crit_edge124:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

entry.sw.bb26_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

entry.sw.bb24_crit_edge123:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb24

entry.sw.bb24_crit_edge122:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb24

entry.sw.bb24_crit_edge121:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb24

entry.sw.bb24_crit_edge120:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb24

entry.sw.bb24_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb24

sw.bb:                                            ; preds = %entry
  %scsi_function = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 26
  %17 = ptrtoint ptr %scsi_function to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %scsi_function, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp eq i32 %18, 1
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %sw.bb
  %19 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %20)
  %cmp8 = icmp ugt i32 %20, 16773120
  br i1 %cmp8, label %if.then.if.end_crit_edge, label %if.then10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10:                                        ; preds = %if.then
  %21 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fcs, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trcmod.i, align 8
  %conv.i = zext i32 %20 to i64
  tail call void @__bfa_trc(ptr noundef %24, i32 noundef 2051, i32 noundef 3325, i64 noundef %conv.i) #7
  %port.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %25 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port.i, align 8
  %fcs1.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %fcs1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fcs1.i, align 4
  %min_cfg.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %min_cfg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %min_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.if.end_crit_edge

if.then10.if.end_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then10
  %fabric.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %26, i32 0, i32 2
  %31 = ptrtoint ptr %fabric.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fabric.i, align 4
  %fab_type.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %fab_type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fab_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i = icmp eq i32 %34, 1
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %rpf.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27
  %35 = ptrtoint ptr %rpf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rpf.i, align 8
  tail call void %36(ptr noundef %rpf.i, i32 noundef 2) #7
  br label %if.end

if.end:                                           ; preds = %if.then4.i, %if.end.i.if.end_crit_edge, %if.then10.if.end_crit_edge, %if.then.if.end_crit_edge
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %37 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @bfa_fcs_rport_sm_online, ptr %sm, align 8
  br label %sw.epilog

if.end11:                                         ; preds = %sw.bb
  %bfa_rport = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 20
  %38 = ptrtoint ptr %bfa_rport to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bfa_rport, align 4
  %tobool.not = icmp eq ptr %39, null
  br i1 %tobool.not, label %if.end15, label %if.end11.if.then18_crit_edge

if.end11.if.then18_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.end15:                                         ; preds = %if.end11
  %40 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fcs, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %call = tail call ptr @bfa_rport_create(ptr noundef %43, ptr noundef %rport) #7
  %44 = ptrtoint ptr %bfa_rport to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call, ptr %bfa_rport, align 4
  %tobool17.not = icmp eq ptr %call, null
  br i1 %tobool17.not, label %if.else, label %if.end15.if.then18_crit_edge

if.end15.if.then18_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.then18:                                        ; preds = %if.end15.if.then18_crit_edge, %if.end11.if.then18_crit_edge
  %45 = phi ptr [ %call, %if.end15.if.then18_crit_edge ], [ %39, %if.end11.if.then18_crit_edge ]
  %sm19 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %46 = ptrtoint ptr %sm19 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @bfa_fcs_rport_sm_hal_online, ptr %sm19, align 8
  %port1.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %47 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %port1.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rport_info.i) #7
  %49 = getelementptr inbounds %struct.bfa_rport_info_s, ptr %rport_info.i, i32 0, i32 2
  %50 = getelementptr inbounds %struct.bfa_rport_info_s, ptr %rport_info.i, i32 0, i32 3
  %51 = getelementptr inbounds %struct.bfa_rport_info_s, ptr %rport_info.i, i32 0, i32 4
  %52 = getelementptr inbounds %struct.bfa_rport_info_s, ptr %rport_info.i, i32 0, i32 5
  %53 = call ptr @memset(ptr %rport_info.i, i32 255, i32 20)
  %54 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pid, align 4
  %bf.value.i = zext i32 %55 to i64
  %bf.shl.i = shl i64 %bf.value.i, 40
  %pid3.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %48, i32 0, i32 5
  %56 = ptrtoint ptr %pid3.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 3)
  %bf.load4.i = load i24, ptr %pid3.i, align 4
  %57 = zext i24 %bf.load4.i to i64
  %bf.shl7.i = shl nuw nsw i64 %57, 8
  %bf.set9.i = or i64 %bf.shl7.i, %bf.shl.i
  %lp_tag.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %48, i32 0, i32 6
  %58 = ptrtoint ptr %lp_tag.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %lp_tag.i, align 1
  %60 = zext i8 %59 to i64
  %bf.shl14.i = shl nuw nsw i64 %60, 32
  %bf.set16.i = or i64 %bf.set9.i, %bf.shl14.i
  %fabric.i67 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %48, i32 0, i32 2
  %61 = ptrtoint ptr %fabric.i67 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fabric.i67, align 4
  %vf_id.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %62, i32 0, i32 10
  %63 = ptrtoint ptr %vf_id.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vf_id.i, align 2
  %65 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %52, align 2
  %66 = load ptr, ptr %fabric.i67, align 4
  %is_vf.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %is_vf.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %is_vf.i, align 8
  %69 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %51, align 1
  %fc_cos.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 8
  %70 = ptrtoint ptr %fc_cos.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fc_cos.i, align 8
  %conv20.i = trunc i32 %71 to i8
  %72 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv20.i, ptr %50, align 4
  %cisc.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 9
  %73 = ptrtoint ptr %cisc.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cisc.i, align 4
  %75 = and i32 %74, 255
  %bf.value23.i = zext i32 %75 to i64
  %bf.set25.i = or i64 %bf.set16.i, %bf.value23.i
  %76 = ptrtoint ptr %49 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 8)
  store i64 %bf.set25.i, ptr %49, align 4
  %maxfrsize.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 6
  %77 = ptrtoint ptr %maxfrsize.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %maxfrsize.i, align 4
  %79 = ptrtoint ptr %rport_info.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %rport_info.i, align 4
  call void @bfa_rport_online(ptr noundef nonnull %45, ptr noundef nonnull %rport_info.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rport_info.i) #7
  br label %sw.epilog

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %sm20 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %80 = ptrtoint ptr %sm20 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @bfa_fcs_rport_sm_fc4_logosend, ptr %sm20, align 8
  tail call fastcc void @bfa_fcs_rport_fcs_offline_action(ptr noundef %rport)
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %sm23 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %81 = ptrtoint ptr %sm23 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @bfa_fcs_rport_sm_fc4_offline, ptr %sm23, align 8
  %plogi_pending = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 11
  %82 = ptrtoint ptr %plogi_pending to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %plogi_pending, align 4
  %83 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %84)
  %cmp.i69 = icmp ugt i32 %84, 16773120
  br i1 %cmp.i69, label %sw.bb22.bfa_fcs_rport_fcs_offline_action.exit_crit_edge, label %if.then.i

sw.bb22.bfa_fcs_rport_fcs_offline_action.exit_crit_edge: ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit

if.then.i:                                        ; preds = %sw.bb22
  %85 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fcs, align 4
  %trcmod.i.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %trcmod.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %trcmod.i.i, align 8
  %conv.i.i = zext i32 %84 to i64
  tail call void @__bfa_trc(ptr noundef %88, i32 noundef 2051, i32 noundef 3340, i64 noundef %conv.i.i) #7
  %port.i.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %89 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %port.i.i, align 8
  %fcs1.i.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %90, i32 0, i32 9
  %91 = ptrtoint ptr %fcs1.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fcs1.i.i, align 4
  %min_cfg.i.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %min_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %min_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.bfa_fcs_rport_fcs_offline_action.exit_crit_edge

if.then.i.bfa_fcs_rport_fcs_offline_action.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %rpf.i.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27
  %rpsc_speed.i.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27, i32 6
  %95 = ptrtoint ptr %rpsc_speed.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %rpsc_speed.i.i, align 4
  %96 = ptrtoint ptr %rpf.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rpf.i.i, align 8
  tail call void %97(ptr noundef %rpf.i.i, i32 noundef 1) #7
  br label %bfa_fcs_rport_fcs_offline_action.exit

bfa_fcs_rport_fcs_offline_action.exit:            ; preds = %if.end.i.i, %if.then.i.bfa_fcs_rport_fcs_offline_action.exit_crit_edge, %sw.bb22.bfa_fcs_rport_fcs_offline_action.exit_crit_edge
  %itnim.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %98 = ptrtoint ptr %itnim.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %itnim.i, align 8
  tail call void @bfa_fcs_itnim_rport_offline(ptr noundef %99) #7
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry.sw.bb24_crit_edge, %entry.sw.bb24_crit_edge120, %entry.sw.bb24_crit_edge121, %entry.sw.bb24_crit_edge122, %entry.sw.bb24_crit_edge123
  %sm25 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %100 = ptrtoint ptr %sm25 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @bfa_fcs_rport_sm_fc4_offline, ptr %sm25, align 8
  %101 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %102)
  %cmp.i72 = icmp ugt i32 %102, 16773120
  br i1 %cmp.i72, label %sw.bb24.bfa_fcs_rport_fcs_offline_action.exit86_crit_edge, label %if.then.i80

sw.bb24.bfa_fcs_rport_fcs_offline_action.exit86_crit_edge: ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit86

if.then.i80:                                      ; preds = %sw.bb24
  %103 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %fcs, align 4
  %trcmod.i.i74 = getelementptr inbounds %struct.bfa_fcs_s, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %trcmod.i.i74 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %trcmod.i.i74, align 8
  %conv.i.i75 = zext i32 %102 to i64
  tail call void @__bfa_trc(ptr noundef %106, i32 noundef 2051, i32 noundef 3340, i64 noundef %conv.i.i75) #7
  %port.i.i76 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %107 = ptrtoint ptr %port.i.i76 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %port.i.i76, align 8
  %fcs1.i.i77 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %108, i32 0, i32 9
  %109 = ptrtoint ptr %fcs1.i.i77 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fcs1.i.i77, align 4
  %min_cfg.i.i78 = getelementptr inbounds %struct.bfa_fcs_s, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %min_cfg.i.i78 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %min_cfg.i.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i.i79 = icmp eq i32 %112, 0
  br i1 %tobool.not.i.i79, label %if.end.i.i83, label %if.then.i80.bfa_fcs_rport_fcs_offline_action.exit86_crit_edge

if.then.i80.bfa_fcs_rport_fcs_offline_action.exit86_crit_edge: ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit86

if.end.i.i83:                                     ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #9
  %rpf.i.i81 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27
  %rpsc_speed.i.i82 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27, i32 6
  %113 = ptrtoint ptr %rpsc_speed.i.i82 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %rpsc_speed.i.i82, align 4
  %114 = ptrtoint ptr %rpf.i.i81 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rpf.i.i81, align 8
  tail call void %115(ptr noundef %rpf.i.i81, i32 noundef 1) #7
  br label %bfa_fcs_rport_fcs_offline_action.exit86

bfa_fcs_rport_fcs_offline_action.exit86:          ; preds = %if.end.i.i83, %if.then.i80.bfa_fcs_rport_fcs_offline_action.exit86_crit_edge, %sw.bb24.bfa_fcs_rport_fcs_offline_action.exit86_crit_edge
  %itnim.i84 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %116 = ptrtoint ptr %itnim.i84 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %itnim.i84, align 8
  tail call void @bfa_fcs_itnim_rport_offline(ptr noundef %117) #7
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry.sw.bb26_crit_edge, %entry.sw.bb26_crit_edge124
  %sm27 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %118 = ptrtoint ptr %sm27 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @bfa_fcs_rport_sm_fc4_logorcv, ptr %sm27, align 8
  %119 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %120)
  %cmp.i88 = icmp ugt i32 %120, 16773120
  br i1 %cmp.i88, label %sw.bb26.bfa_fcs_rport_fcs_offline_action.exit102_crit_edge, label %if.then.i96

sw.bb26.bfa_fcs_rport_fcs_offline_action.exit102_crit_edge: ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit102

if.then.i96:                                      ; preds = %sw.bb26
  %121 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fcs, align 4
  %trcmod.i.i90 = getelementptr inbounds %struct.bfa_fcs_s, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %trcmod.i.i90 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %trcmod.i.i90, align 8
  %conv.i.i91 = zext i32 %120 to i64
  tail call void @__bfa_trc(ptr noundef %124, i32 noundef 2051, i32 noundef 3340, i64 noundef %conv.i.i91) #7
  %port.i.i92 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %125 = ptrtoint ptr %port.i.i92 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %port.i.i92, align 8
  %fcs1.i.i93 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %126, i32 0, i32 9
  %127 = ptrtoint ptr %fcs1.i.i93 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fcs1.i.i93, align 4
  %min_cfg.i.i94 = getelementptr inbounds %struct.bfa_fcs_s, ptr %128, i32 0, i32 5
  %129 = ptrtoint ptr %min_cfg.i.i94 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %min_cfg.i.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.not.i.i95 = icmp eq i32 %130, 0
  br i1 %tobool.not.i.i95, label %if.end.i.i99, label %if.then.i96.bfa_fcs_rport_fcs_offline_action.exit102_crit_edge

if.then.i96.bfa_fcs_rport_fcs_offline_action.exit102_crit_edge: ; preds = %if.then.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit102

if.end.i.i99:                                     ; preds = %if.then.i96
  call void @__sanitizer_cov_trace_pc() #9
  %rpf.i.i97 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27
  %rpsc_speed.i.i98 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27, i32 6
  %131 = ptrtoint ptr %rpsc_speed.i.i98 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %rpsc_speed.i.i98, align 4
  %132 = ptrtoint ptr %rpf.i.i97 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rpf.i.i97, align 8
  tail call void %133(ptr noundef %rpf.i.i97, i32 noundef 1) #7
  br label %bfa_fcs_rport_fcs_offline_action.exit102

bfa_fcs_rport_fcs_offline_action.exit102:         ; preds = %if.end.i.i99, %if.then.i96.bfa_fcs_rport_fcs_offline_action.exit102_crit_edge, %sw.bb26.bfa_fcs_rport_fcs_offline_action.exit102_crit_edge
  %itnim.i100 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %134 = ptrtoint ptr %itnim.i100 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %itnim.i100, align 8
  tail call void @bfa_fcs_itnim_rport_offline(ptr noundef %135) #7
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  %sm29 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %136 = ptrtoint ptr %sm29 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @bfa_fcs_rport_sm_fc4_logosend, ptr %sm29, align 8
  %137 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %138)
  %cmp.i104 = icmp ugt i32 %138, 16773120
  br i1 %cmp.i104, label %sw.bb28.bfa_fcs_rport_fcs_offline_action.exit118_crit_edge, label %if.then.i112

sw.bb28.bfa_fcs_rport_fcs_offline_action.exit118_crit_edge: ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit118

if.then.i112:                                     ; preds = %sw.bb28
  %139 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %fcs, align 4
  %trcmod.i.i106 = getelementptr inbounds %struct.bfa_fcs_s, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %trcmod.i.i106 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %trcmod.i.i106, align 8
  %conv.i.i107 = zext i32 %138 to i64
  tail call void @__bfa_trc(ptr noundef %142, i32 noundef 2051, i32 noundef 3340, i64 noundef %conv.i.i107) #7
  %port.i.i108 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %143 = ptrtoint ptr %port.i.i108 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %port.i.i108, align 8
  %fcs1.i.i109 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %144, i32 0, i32 9
  %145 = ptrtoint ptr %fcs1.i.i109 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %fcs1.i.i109, align 4
  %min_cfg.i.i110 = getelementptr inbounds %struct.bfa_fcs_s, ptr %146, i32 0, i32 5
  %147 = ptrtoint ptr %min_cfg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %min_cfg.i.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool.not.i.i111 = icmp eq i32 %148, 0
  br i1 %tobool.not.i.i111, label %if.end.i.i115, label %if.then.i112.bfa_fcs_rport_fcs_offline_action.exit118_crit_edge

if.then.i112.bfa_fcs_rport_fcs_offline_action.exit118_crit_edge: ; preds = %if.then.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit118

if.end.i.i115:                                    ; preds = %if.then.i112
  call void @__sanitizer_cov_trace_pc() #9
  %rpf.i.i113 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27
  %rpsc_speed.i.i114 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27, i32 6
  %149 = ptrtoint ptr %rpsc_speed.i.i114 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %rpsc_speed.i.i114, align 4
  %150 = ptrtoint ptr %rpf.i.i113 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %rpf.i.i113, align 8
  tail call void %151(ptr noundef %rpf.i.i113, i32 noundef 1) #7
  br label %bfa_fcs_rport_fcs_offline_action.exit118

bfa_fcs_rport_fcs_offline_action.exit118:         ; preds = %if.end.i.i115, %if.then.i112.bfa_fcs_rport_fcs_offline_action.exit118_crit_edge, %sw.bb28.bfa_fcs_rport_fcs_offline_action.exit118_crit_edge
  %itnim.i116 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %152 = ptrtoint ptr %itnim.i116 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %itnim.i116, align 8
  tail call void @bfa_fcs_itnim_rport_offline(ptr noundef %153) #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %154 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %fcs, align 4
  %trcmod31 = getelementptr inbounds %struct.bfa_fcs_s, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %trcmod31 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %trcmod31, align 8
  %or = or i32 %event, -559087616
  %conv32 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %157, i32 noundef 2051, i32 noundef 568, i64 noundef %conv32) #7
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 568, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %bfa_fcs_rport_fcs_offline_action.exit118, %bfa_fcs_rport_fcs_offline_action.exit102, %bfa_fcs_rport_fcs_offline_action.exit86, %bfa_fcs_rport_fcs_offline_action.exit, %if.else, %if.then18, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_fcs_rport_send_logo_acc(ptr nocapture noundef %rport_cbarg) unnamed_addr #0 align 64 {
entry:
  %fchs = alloca %struct.fchs_s, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fchs) #7
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 2
  %0 = call ptr @memset(ptr %fchs, i32 255, i32 24)
  %1 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trcmod, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 4
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid, align 4
  %conv = zext i32 %6 to i64
  tail call void @__bfa_trc(ptr noundef %4, i32 noundef 2051, i32 noundef 2112, i64 noundef %conv) #7
  %port1 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 1
  %7 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port1, align 8
  %fcs2 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %fcs2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fcs2, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %call = tail call ptr @bfa_fcxp_req_rsp_alloc(ptr noundef null, ptr noundef %12, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %logo_rcvd = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 25, i32 20
  %13 = ptrtoint ptr %logo_rcvd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %logo_rcvd, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %logo_rcvd, align 4
  %call3 = tail call ptr @bfa_fcxp_get_reqbuf(ptr noundef nonnull %call) #7
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 4
  %pid5 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %8, i32 0, i32 5
  %17 = ptrtoint ptr %pid5 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 3)
  %bf.load = load i24, ptr %pid5, align 4
  %bf.cast = zext i24 %bf.load to i32
  %reply_oxid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 7
  %18 = ptrtoint ptr %reply_oxid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %reply_oxid, align 2
  %call6 = call zeroext i16 @fc_logo_acc_build(ptr noundef nonnull %fchs, ptr noundef %call3, i32 noundef %16, i32 noundef %bf.cast, i16 noundef zeroext %19) #7
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %8, i32 0, i32 2
  %20 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fabric, align 4
  %vf_id = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vf_id, align 2
  %lp_tag = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %8, i32 0, i32 6
  %24 = ptrtoint ptr %lp_tag to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %lp_tag, align 1
  %conv7 = zext i16 %call6 to i32
  call void @bfa_fcxp_send(ptr noundef nonnull %call, ptr noundef null, i16 noundef zeroext %23, i8 noundef zeroext %25, i32 noundef 0, i32 noundef 8, i32 noundef %conv7, ptr noundef nonnull %fchs, ptr noundef null, ptr noundef null, i32 noundef 2112, i8 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fchs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_fcs_rport_send_prlo_acc(ptr nocapture noundef readonly %rport) unnamed_addr #0 align 64 {
entry:
  %fchs = alloca %struct.fchs_s, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fchs) #7
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %2 = call ptr @memset(ptr %fchs, i32 255, i32 24)
  %3 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trcmod, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %7 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid, align 4
  %conv = zext i32 %8 to i64
  tail call void @__bfa_trc(ptr noundef %6, i32 noundef 2051, i32 noundef 2920, i64 noundef %conv) #7
  %fcs2 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %fcs2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fcs2, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %call = tail call ptr @bfa_fcxp_req_rsp_alloc(ptr noundef null, ptr noundef %12, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call ptr @bfa_fcxp_get_reqbuf(ptr noundef nonnull %call) #7
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid, align 4
  %pid5 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %pid5 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 3)
  %bf.load = load i24, ptr %pid5, align 4
  %bf.cast = zext i24 %bf.load to i32
  %reply_oxid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 7
  %16 = ptrtoint ptr %reply_oxid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reply_oxid, align 2
  %call6 = call zeroext i16 @fc_prlo_acc_build(ptr noundef nonnull %fchs, ptr noundef %call3, i32 noundef %14, i32 noundef %bf.cast, i16 noundef zeroext %17, i32 noundef 0) #7
  %conv7 = zext i16 %call6 to i32
  %bfa_rport = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 20
  %18 = ptrtoint ptr %bfa_rport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bfa_rport, align 4
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fabric, align 4
  %vf_id = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vf_id, align 2
  %lp_tag = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %lp_tag to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %lp_tag, align 1
  call void @bfa_fcxp_send(ptr noundef nonnull %call, ptr noundef %19, i16 noundef zeroext %23, i8 noundef zeroext %25, i32 noundef 0, i32 noundef 8, i32 noundef %conv7, ptr noundef nonnull %fchs, ptr noundef null, ptr noundef null, i32 noundef 2112, i8 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fchs) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcxp_discard(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_plogi_retry(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 339, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 340, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 341, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %event, label %do.body53 [
    i32 11, label %sw.bb
    i32 7, label %sw.bb6
    i32 17, label %entry.sw.epilog_crit_edge
    i32 4, label %entry.sw.epilog_crit_edge100
    i32 2, label %sw.bb9
    i32 19, label %sw.bb12
    i32 15, label %entry.sw.bb17_crit_edge
    i32 8, label %entry.sw.bb17_crit_edge101
    i32 5, label %sw.bb42
    i32 3, label %sw.bb50
  ]

entry.sw.bb17_crit_edge101:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

entry.sw.bb17_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

entry.sw.epilog_crit_edge100:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_plogi_sending, ptr %sm, align 8
  tail call void @bfa_fcs_rport_send_plogi(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm7 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %18 = ptrtoint ptr %sm7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bfa_fcs_rport_sm_uninit, ptr %sm7, align 8
  %timer = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_stop(ptr noundef %timer) #7
  tail call fastcc void @bfa_fcs_rport_free(ptr noundef %rport)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm10 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %19 = ptrtoint ptr %sm10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bfa_fcs_rport_sm_plogiacc_sending, ptr %sm10, align 8
  %timer11 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_stop(ptr noundef %timer11) #7
  tail call void @bfa_fcs_rport_send_plogiacc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm13 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %20 = ptrtoint ptr %sm13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm13, align 8
  %timer14 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_stop(ptr noundef %timer14) #7
  %21 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fcs, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %timer_mod = getelementptr inbounds %struct.bfa_s, ptr %24, i32 0, i32 5
  %25 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod, ptr noundef %timer14, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %25) #7
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry.sw.bb17_crit_edge, %entry.sw.bb17_crit_edge101
  %timer18 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_stop(ptr noundef %timer18) #7
  %port = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port, align 8
  %fcs19 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %fcs19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fcs19, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %call = tail call i32 @bfa_fcport_get_topology(ptr noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %do.end, label %sw.bb17.if.end_crit_edge, !prof !179

sw.bb17.if.end_crit_edge:                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 377, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb17.if.end_crit_edge
  %sm41 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %32 = ptrtoint ptr %sm41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @bfa_fcs_rport_sm_nsdisc_sending, ptr %sm41, align 8
  %ns_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 23
  %33 = ptrtoint ptr %ns_retries to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %ns_retries, align 8
  tail call void @bfa_fcs_rport_send_nsdisc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %pid, align 4
  %sm44 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %35 = ptrtoint ptr %sm44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm44, align 8
  %timer45 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_stop(ptr noundef %timer45) #7
  %36 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fcs, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %timer_mod48 = getelementptr inbounds %struct.bfa_s, ptr %39, i32 0, i32 5
  %40 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod48, ptr noundef %timer45, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %40) #7
  br label %sw.epilog

sw.bb50:                                          ; preds = %entry
  %sm51 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %41 = ptrtoint ptr %sm51 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bfa_fcs_rport_sm_fc4_fcs_online, ptr %sm51, align 8
  %timer52 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_stop(ptr noundef %timer52) #7
  %42 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i, label %sw.bb50.if.then.i_crit_edge, label %lor.lhs.false.i

sw.bb50.if.then.i_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb50
  %44 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %pwwn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %tobool1.not.i = icmp eq i64 %45, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge

lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_online_action.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb50.if.then.i_crit_edge
  %46 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fcs, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %trcmod.i, align 8
  %conv.i = zext i32 %43 to i64
  tail call void @__bfa_trc(ptr noundef %49, i32 noundef 2051, i32 noundef 2423, i64 noundef %conv.i) #7
  %50 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fcs, align 4
  %trcmod4.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %trcmod4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %trcmod4.i, align 8
  %54 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pid, align 4
  %or.i = or i32 %55, -559087616
  %conv6.i = zext i32 %or.i to i64
  tail call void @__bfa_trc(ptr noundef %53, i32 noundef 2051, i32 noundef 2424, i64 noundef %conv6.i) #7
  %56 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pid, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2424, i32 noundef %57) #10
  br label %bfa_fcs_rport_fcs_online_action.exit

bfa_fcs_rport_fcs_online_action.exit:             ; preds = %if.then.i, %lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge
  %itnim.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %58 = ptrtoint ptr %itnim.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %itnim.i, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  tail call void %61(ptr noundef %59, i32 noundef 1) #7
  br label %sw.epilog

do.body53:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fcs, align 4
  %trcmod55 = getelementptr inbounds %struct.bfa_fcs_s, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %trcmod55 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %trcmod55, align 8
  %or = or i32 %event, -559087616
  %conv56 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %65, i32 noundef 2051, i32 noundef 399, i64 noundef %conv56) #7
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 399, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body53, %bfa_fcs_rport_fcs_online_action.exit, %sw.bb42, %if.end, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge100
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_online(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 630, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 631, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 632, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %event, label %do.body [
    i32 8, label %sw.bb
    i32 2, label %entry.sw.bb8_crit_edge
    i32 5, label %entry.sw.bb8_crit_edge40
    i32 15, label %entry.sw.bb8_crit_edge41
    i32 19, label %entry.sw.bb8_crit_edge42
    i32 7, label %sw.bb10
    i32 4, label %entry.sw.bb12_crit_edge
    i32 17, label %entry.sw.bb12_crit_edge43
    i32 20, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge44
  ]

entry.sw.epilog_crit_edge44:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.bb12_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

entry.sw.bb8_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.bb8_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.bb8_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

sw.bb:                                            ; preds = %entry
  %port = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port, align 8
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fabric, align 4
  %fab_type = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %fab_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fab_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp = icmp eq i32 %22, 1
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bfa_fcs_rport_sm_nsquery_sending, ptr %sm, align 8
  %ns_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 23
  %24 = ptrtoint ptr %ns_retries to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ns_retries, align 8
  tail call void @bfa_fcs_rport_send_nsdisc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_fcs_rport_sm_adisc_online_sending, ptr %sm, align 8
  tail call void @bfa_fcs_rport_send_adisc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge40, %entry.sw.bb8_crit_edge41, %entry.sw.bb8_crit_edge42
  %sm9 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %26 = ptrtoint ptr %sm9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bfa_fcs_rport_sm_fc4_offline, ptr %sm9, align 8
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm11 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %27 = ptrtoint ptr %sm11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @bfa_fcs_rport_sm_fc4_logosend, ptr %sm11, align 8
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry.sw.bb12_crit_edge, %entry.sw.bb12_crit_edge43
  %sm13 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %28 = ptrtoint ptr %sm13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfa_fcs_rport_sm_fc4_logorcv, ptr %sm13, align 8
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fcs, align 4
  %trcmod16 = getelementptr inbounds %struct.bfa_fcs_s, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %trcmod16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %trcmod16, align 8
  %or = or i32 %event, -559087616
  %conv17 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %32, i32 noundef 2051, i32 noundef 672, i64 noundef %conv17) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 672, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb12, %sw.bb10, %sw.bb8, %if.else, %if.then, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_rport_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_fc4_logosend(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 1033, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 1034, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 1035, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %event, label %do.body [
    i32 14, label %sw.bb
    i32 4, label %sw.bb6
    i32 17, label %entry.sw.bb7_crit_edge
    i32 12, label %entry.sw.epilog_crit_edge
    i32 7, label %entry.sw.epilog_crit_edge30
  ]

entry.sw.epilog_crit_edge30:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

sw.bb:                                            ; preds = %entry
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_hcb_logosend, ptr %sm, align 8
  %bfa_rport.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 20
  %18 = ptrtoint ptr %bfa_rport.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bfa_rport.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %sm.i = getelementptr inbounds %struct.bfa_rport_s, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sm.i, align 4
  tail call void %21(ptr noundef nonnull %19, i32 noundef 4) #7
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fcs, align 4
  %trcmod.i.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %trcmod.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trcmod.i.i, align 8
  %26 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %25, i32 noundef 2051, i32 noundef 2754, i64 noundef %27) #7
  %28 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sm, align 8
  tail call void %29(ptr noundef %rport, i32 noundef 13) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_logo_acc(ptr noundef %rport)
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb6, %entry.sw.bb7_crit_edge
  %prlo = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 10
  %30 = ptrtoint ptr %prlo to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %prlo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp = icmp eq i32 %31, 1
  br i1 %cmp, label %if.then, label %sw.bb7.if.end_crit_edge

sw.bb7.if.end_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_prlo_acc(ptr noundef %rport)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb7.if.end_crit_edge
  %sm9 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %32 = ptrtoint ptr %sm9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @bfa_fcs_rport_sm_fc4_off_delete, ptr %sm9, align 8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fcs, align 4
  %trcmod12 = getelementptr inbounds %struct.bfa_fcs_s, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %trcmod12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trcmod12, align 8
  %or = or i32 %event, -559087616
  %conv13 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %36, i32 noundef 2051, i32 noundef 1058, i64 noundef %conv13) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1058, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %if.end, %if.else.i, %if.then.i, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_fcs_rport_fcs_offline_action(ptr noundef %rport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %0 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %1)
  %cmp = icmp ugt i32 %1, 16773120
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %fcs.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %2 = ptrtoint ptr %fcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs.i, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod.i, align 8
  %conv.i = zext i32 %1 to i64
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2051, i32 noundef 3340, i64 noundef %conv.i) #7
  %port.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i, align 8
  %fcs1.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %fcs1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs1.i, align 4
  %min_cfg.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %min_cfg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %rpf.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27
  %rpsc_speed.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27, i32 6
  %12 = ptrtoint ptr %rpsc_speed.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rpsc_speed.i, align 4
  %13 = ptrtoint ptr %rpf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rpf.i, align 8
  tail call void %14(ptr noundef %rpf.i, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %itnim = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %15 = ptrtoint ptr %itnim to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %itnim, align 8
  tail call void @bfa_fcs_itnim_rport_offline(ptr noundef %16) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_fc4_offline(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 1069, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 1070, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 1071, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %event, label %do.body [
    i32 14, label %sw.bb
    i32 20, label %entry.sw.epilog_crit_edge
    i32 4, label %sw.bb6
    i32 17, label %sw.bb7
    i32 19, label %entry.sw.epilog_crit_edge29
    i32 12, label %entry.sw.epilog_crit_edge30
    i32 8, label %entry.sw.epilog_crit_edge31
    i32 5, label %entry.sw.epilog_crit_edge32
    i32 15, label %entry.sw.epilog_crit_edge33
    i32 7, label %sw.bb9
  ]

entry.sw.epilog_crit_edge33:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge32:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge31:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge30:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge29:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_hcb_offline, ptr %sm, align 8
  %bfa_rport.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 20
  %18 = ptrtoint ptr %bfa_rport.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bfa_rport.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %sm.i = getelementptr inbounds %struct.bfa_rport_s, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sm.i, align 4
  tail call void %21(ptr noundef nonnull %19, i32 noundef 4) #7
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fcs, align 4
  %trcmod.i.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %trcmod.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trcmod.i.i, align 8
  %26 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %25, i32 noundef 2051, i32 noundef 2754, i64 noundef %27) #7
  %28 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sm, align 8
  tail call void %29(ptr noundef %rport, i32 noundef 13) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_logo_acc(ptr noundef %rport)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_prlo_acc(ptr noundef %rport)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm10 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %30 = ptrtoint ptr %sm10 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @bfa_fcs_rport_sm_fc4_logosend, ptr %sm10, align 8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fcs, align 4
  %trcmod12 = getelementptr inbounds %struct.bfa_fcs_s, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %trcmod12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %trcmod12, align 8
  %or = or i32 %event, -559087616
  %conv13 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %34, i32 noundef 2051, i32 noundef 1108, i64 noundef %conv13) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1108, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb9, %sw.bb7, %sw.bb6, %if.else.i, %if.then.i, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge29, %entry.sw.epilog_crit_edge30, %entry.sw.epilog_crit_edge31, %entry.sw.epilog_crit_edge32, %entry.sw.epilog_crit_edge33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_fc4_logorcv(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 993, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 994, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 995, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %event, label %do.body [
    i32 14, label %sw.bb
    i32 7, label %sw.bb6
    i32 20, label %entry.sw.epilog_crit_edge
    i32 19, label %entry.sw.epilog_crit_edge42
    i32 12, label %entry.sw.epilog_crit_edge43
    i32 4, label %entry.sw.epilog_crit_edge44
    i32 17, label %entry.sw.epilog_crit_edge45
    i32 15, label %entry.sw.epilog_crit_edge46
  ]

entry.sw.epilog_crit_edge46:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge45:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge44:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge43:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge42:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_hcb_logorcv, ptr %sm, align 8
  %bfa_rport.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 20
  %18 = ptrtoint ptr %bfa_rport.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bfa_rport.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %sm.i = getelementptr inbounds %struct.bfa_rport_s, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sm.i, align 4
  tail call void %21(ptr noundef nonnull %19, i32 noundef 4) #7
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fcs, align 4
  %trcmod.i.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %trcmod.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trcmod.i.i, align 8
  %26 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %25, i32 noundef 2051, i32 noundef 2754, i64 noundef %27) #7
  %28 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sm, align 8
  tail call void %29(ptr noundef %rport, i32 noundef 13) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %30 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %sw.bb6.if.end16_crit_edge, label %land.lhs.true

sw.bb6.if.end16_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %sw.bb6
  %prlo = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 10
  %32 = ptrtoint ptr %prlo to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prlo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp = icmp eq i32 %33, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_prlo_acc(ptr noundef %rport)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  %34 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool10.not = icmp eq i32 %.pr, 0
  br i1 %tobool10.not, label %if.end.if.end16_crit_edge, label %land.lhs.true11

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true11:                                  ; preds = %if.end
  %35 = ptrtoint ptr %prlo to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %prlo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp13 = icmp eq i32 %36, 0
  br i1 %cmp13, label %if.then15, label %land.lhs.true11.if.end16_crit_edge

land.lhs.true11.if.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_logo_acc(ptr noundef %rport)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true11.if.end16_crit_edge, %if.end.if.end16_crit_edge, %sw.bb6.if.end16_crit_edge
  %sm17 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %37 = ptrtoint ptr %sm17 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @bfa_fcs_rport_sm_fc4_off_delete, ptr %sm17, align 8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fcs, align 4
  %trcmod20 = getelementptr inbounds %struct.bfa_fcs_s, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %trcmod20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %trcmod20, align 8
  %or = or i32 %event, -559087616
  %conv21 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %41, i32 noundef 2051, i32 noundef 1021, i64 noundef %conv21) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1021, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %if.end16, %if.else.i, %if.then.i, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge42, %entry.sw.epilog_crit_edge43, %entry.sw.epilog_crit_edge44, %entry.sw.epilog_crit_edge45, %entry.sw.epilog_crit_edge46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_nsquery_sending(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 684, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 685, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 686, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %event, label %do.body [
    i32 6, label %sw.bb
    i32 7, label %sw.bb6
    i32 8, label %entry.sw.epilog_crit_edge
    i32 4, label %entry.sw.bb9_crit_edge
    i32 17, label %entry.sw.bb9_crit_edge45
    i32 5, label %entry.sw.bb14_crit_edge
    i32 2, label %entry.sw.bb14_crit_edge46
    i32 15, label %entry.sw.bb14_crit_edge47
    i32 3, label %entry.sw.bb14_crit_edge48
  ]

entry.sw.bb14_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

entry.sw.bb14_crit_edge47:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

entry.sw.bb14_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

entry.sw.bb9_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_nsquery, ptr %sm, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm7 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %18 = ptrtoint ptr %sm7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bfa_fcs_rport_sm_fc4_logosend, ptr %sm7, align 8
  %19 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fcs, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %fcxp_wqe = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %22, ptr noundef %fcxp_wqe) #7
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge45
  %sm10 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %23 = ptrtoint ptr %sm10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bfa_fcs_rport_sm_fc4_logorcv, ptr %sm10, align 8
  %24 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fcs, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %fcxp_wqe13 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %27, ptr noundef %fcxp_wqe13) #7
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge46, %entry.sw.bb14_crit_edge47, %entry.sw.bb14_crit_edge48
  %sm15 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %28 = ptrtoint ptr %sm15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfa_fcs_rport_sm_fc4_offline, ptr %sm15, align 8
  %29 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fcs, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %fcxp_wqe18 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %32, ptr noundef %fcxp_wqe18) #7
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fcs, align 4
  %trcmod20 = getelementptr inbounds %struct.bfa_fcs_s, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %trcmod20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trcmod20, align 8
  %or = or i32 %event, -559087616
  %conv21 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %36, i32 noundef 2051, i32 noundef 722, i64 noundef %conv21) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 722, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb14, %sw.bb9, %sw.bb6, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_adisc_online_sending(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 793, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 794, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 795, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %event, label %do.body [
    i32 6, label %sw.bb
    i32 7, label %sw.bb6
    i32 5, label %entry.sw.bb9_crit_edge
    i32 15, label %entry.sw.bb9_crit_edge54
    i32 4, label %entry.sw.bb14_crit_edge
    i32 17, label %entry.sw.bb14_crit_edge55
    i32 8, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb19
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.bb14_crit_edge55:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

entry.sw.bb9_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_adisc_online, ptr %sm, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm7 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %18 = ptrtoint ptr %sm7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bfa_fcs_rport_sm_fc4_logosend, ptr %sm7, align 8
  %19 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fcs, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %fcxp_wqe = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %22, ptr noundef %fcxp_wqe) #7
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge54
  %sm10 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %23 = ptrtoint ptr %sm10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bfa_fcs_rport_sm_fc4_offline, ptr %sm10, align 8
  %24 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fcs, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %fcxp_wqe13 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %27, ptr noundef %fcxp_wqe13) #7
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge55
  %sm15 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %28 = ptrtoint ptr %sm15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfa_fcs_rport_sm_fc4_logorcv, ptr %sm15, align 8
  %29 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fcs, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %fcxp_wqe18 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %32, ptr noundef %fcxp_wqe18) #7
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm20 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %33 = ptrtoint ptr %sm20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bfa_fcs_rport_sm_fc4_offline, ptr %sm20, align 8
  %34 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fcs, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %fcxp_wqe23 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %37, ptr noundef %fcxp_wqe23) #7
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fcs, align 4
  %trcmod25 = getelementptr inbounds %struct.bfa_fcs_s, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %trcmod25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %trcmod25, align 8
  %or = or i32 %event, -559087616
  %conv26 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %41, i32 noundef 2051, i32 noundef 832, i64 noundef %conv26) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 832, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb19, %sw.bb14, %sw.bb9, %sw.bb6, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_send_adisc(ptr noundef %rport_cbarg, ptr noundef %fcxp_alloced) #0 align 64 {
entry:
  %fchs = alloca %struct.fchs_s, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fchs) #7
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 2
  %2 = call ptr @memset(ptr %fchs, i32 255, i32 24)
  %3 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 12
  %7 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %6, i32 noundef 2051, i32 noundef 1855, i64 noundef %8) #7
  %tobool.not = icmp eq ptr %fcxp_alloced, null
  br i1 %tobool.not, label %cond.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cond.end:                                         ; preds = %entry
  %fcs2 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %fcs2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fcs2, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %call = tail call ptr @bfa_fcxp_req_rsp_alloc(ptr noundef null, ptr noundef %12, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1) #7
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %fcs2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fcs2, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %fcxp_wqe = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 24
  tail call void @bfa_fcxp_req_rsp_alloc_wait(ptr noundef %16, ptr noundef %fcxp_wqe, ptr noundef nonnull @bfa_fcs_rport_send_adisc, ptr noundef %rport_cbarg, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1) #7
  br label %cleanup

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  %cond38 = phi ptr [ %call, %cond.end.if.end_crit_edge ], [ %fcxp_alloced, %entry.if.end_crit_edge ]
  %fcxp6 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 21
  %17 = ptrtoint ptr %fcxp6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cond38, ptr %fcxp6, align 8
  %call7 = tail call ptr @bfa_fcxp_get_reqbuf(ptr noundef nonnull %cond38) #7
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 4
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid, align 4
  %pid8 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %pid8 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 3)
  %bf.load = load i24, ptr %pid8, align 4
  %bf.cast = zext i24 %bf.load to i32
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %port_cfg, align 8
  %nwwn = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %nwwn to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %nwwn, align 8
  %call11 = call zeroext i16 @fc_adisc_build(ptr noundef nonnull %fchs, ptr noundef %call7, i32 noundef %19, i32 noundef %bf.cast, i16 noundef zeroext 0, i64 noundef %22, i64 noundef %24) #7
  %conv = zext i16 %call11 to i32
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fabric, align 4
  %vf_id = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vf_id, align 2
  %lp_tag = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %lp_tag to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %lp_tag, align 1
  call void @bfa_fcxp_send(ptr noundef nonnull %cond38, ptr noundef null, i16 noundef zeroext %28, i8 noundef zeroext %30, i32 noundef 0, i32 noundef 8, i32 noundef %conv, ptr noundef nonnull %fchs, ptr noundef nonnull @bfa_fcs_rport_adisc_response, ptr noundef %rport_cbarg, i32 noundef 2112, i8 noundef zeroext 20) #7
  %adisc_sent = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 25, i32 12
  %31 = ptrtoint ptr %adisc_sent to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %adisc_sent, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %adisc_sent, align 4
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 15
  %33 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sm, align 8
  call void %34(ptr noundef %rport_cbarg, i32 noundef 6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fchs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport) unnamed_addr #0 align 64 {
entry:
  %lpwwn_buf = alloca [32 x i8], align 1
  %rpwwn_buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 8
  %fcs = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs, align 4
  %bfad2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bfad2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bfad2, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %lpwwn_buf) #7
  %6 = call ptr @memset(ptr %lpwwn_buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rpwwn_buf) #7
  %bfa_rport = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 20
  %7 = call ptr @memset(ptr %rpwwn_buf, i32 255, i32 32)
  %8 = ptrtoint ptr %bfa_rport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bfa_rport, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %pid.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %11)
  %cmp.i = icmp ugt i32 %11, 16773120
  br i1 %cmp.i, label %if.then.bfa_fcs_rport_fcs_offline_action.exit_crit_edge, label %if.then.i

if.then.bfa_fcs_rport_fcs_offline_action.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit

if.then.i:                                        ; preds = %if.then
  %fcs.i.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %12 = ptrtoint ptr %fcs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs.i.i, align 4
  %trcmod.i.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod.i.i, align 8
  %conv.i.i = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 3340, i64 noundef %conv.i.i) #7
  %16 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port1, align 8
  %fcs1.i.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %fcs1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fcs1.i.i, align 4
  %min_cfg.i.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %min_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %min_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.bfa_fcs_rport_fcs_offline_action.exit_crit_edge

if.then.i.bfa_fcs_rport_fcs_offline_action.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_offline_action.exit

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %rpf.i.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27
  %rpsc_speed.i.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27, i32 6
  %22 = ptrtoint ptr %rpsc_speed.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %rpsc_speed.i.i, align 4
  %23 = ptrtoint ptr %rpf.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rpf.i.i, align 8
  tail call void %24(ptr noundef %rpf.i.i, i32 noundef 1) #7
  br label %bfa_fcs_rport_fcs_offline_action.exit

bfa_fcs_rport_fcs_offline_action.exit:            ; preds = %if.end.i.i, %if.then.i.bfa_fcs_rport_fcs_offline_action.exit_crit_edge, %if.then.bfa_fcs_rport_fcs_offline_action.exit_crit_edge
  %itnim.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %25 = ptrtoint ptr %itnim.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %itnim.i, align 8
  tail call void @bfa_fcs_itnim_rport_offline(ptr noundef %26) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %stats = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 25
  %27 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stats, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %stats, align 4
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %port_cfg, align 8
  %w.sroa.0.0.extract.shift.i = lshr i64 %30, 56
  %w.sroa.0.0.extract.trunc.i = trunc i64 %w.sroa.0.0.extract.shift.i to i32
  %w.sroa.5.0.extract.shift.i = lshr i64 %30, 48
  %w.sroa.5.0.extract.trunc.i = trunc i64 %w.sroa.5.0.extract.shift.i to i32
  %w.sroa.6.0.extract.shift.i = lshr i64 %30, 40
  %w.sroa.6.0.extract.trunc.i = trunc i64 %w.sroa.6.0.extract.shift.i to i32
  %w.sroa.7.0.extract.shift.i = lshr i64 %30, 32
  %w.sroa.7.0.extract.trunc.i = trunc i64 %w.sroa.7.0.extract.shift.i to i32
  %31 = trunc i64 %30 to i32
  %32 = lshr i32 %31, 24
  %33 = lshr i32 %31, 16
  %34 = lshr i32 %31, 8
  %conv2.i = and i32 %w.sroa.5.0.extract.trunc.i, 255
  %conv4.i = and i32 %w.sroa.6.0.extract.trunc.i, 255
  %conv6.i = and i32 %w.sroa.7.0.extract.trunc.i, 255
  %conv10.i = and i32 %33, 255
  %conv12.i = and i32 %34, 255
  %conv14.i = and i32 %31, 255
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %lpwwn_buf, ptr noundef nonnull @.str.19, i32 noundef %w.sroa.0.0.extract.trunc.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %32, i32 noundef %conv10.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #7
  %pwwn4 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %35 = ptrtoint ptr %pwwn4 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %pwwn4, align 8
  %w.sroa.0.0.extract.shift.i63 = lshr i64 %36, 56
  %w.sroa.0.0.extract.trunc.i64 = trunc i64 %w.sroa.0.0.extract.shift.i63 to i32
  %w.sroa.5.0.extract.shift.i65 = lshr i64 %36, 48
  %w.sroa.5.0.extract.trunc.i66 = trunc i64 %w.sroa.5.0.extract.shift.i65 to i32
  %w.sroa.6.0.extract.shift.i67 = lshr i64 %36, 40
  %w.sroa.6.0.extract.trunc.i68 = trunc i64 %w.sroa.6.0.extract.shift.i67 to i32
  %w.sroa.7.0.extract.shift.i69 = lshr i64 %36, 32
  %w.sroa.7.0.extract.trunc.i70 = trunc i64 %w.sroa.7.0.extract.shift.i69 to i32
  %37 = trunc i64 %36 to i32
  %38 = lshr i32 %37, 24
  %39 = lshr i32 %37, 16
  %40 = lshr i32 %37, 8
  %conv2.i71 = and i32 %w.sroa.5.0.extract.trunc.i66, 255
  %conv4.i72 = and i32 %w.sroa.6.0.extract.trunc.i68, 255
  %conv6.i73 = and i32 %w.sroa.7.0.extract.trunc.i70, 255
  %conv10.i74 = and i32 %39, 255
  %conv12.i75 = and i32 %40, 255
  %conv14.i76 = and i32 %37, 255
  %call.i77 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %rpwwn_buf, ptr noundef nonnull @.str.19, i32 noundef %w.sroa.0.0.extract.trunc.i64, i32 noundef %conv2.i71, i32 noundef %conv4.i72, i32 noundef %conv6.i73, i32 noundef %38, i32 noundef %conv10.i74, i32 noundef %conv12.i75, i32 noundef %conv14.i76) #7
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %41 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %42)
  %cmp = icmp ugt i32 %42, 16773120
  br i1 %cmp, label %if.end.if.end34_crit_edge, label %if.then5

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then5:                                         ; preds = %if.end
  %43 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %port1, align 8
  %call = tail call i32 @bfa_fcs_lport_is_online(ptr noundef %44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp7 = icmp eq i32 %call, 1
  br i1 %cmp7, label %do.body, label %do.body19

do.body:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 4
  %45 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull %rpwwn_buf, ptr noundef nonnull %lpwwn_buf) #10
  br label %if.end34.sink.split

do.body19:                                        ; preds = %if.then5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_log_level to i32))
  %47 = load i32, ptr @bfa_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %cmp20 = icmp eq i32 %47, 4
  br i1 %cmp20, label %do.end25, label %do.body19.if.end34.sink.split_crit_edge

do.body19.if.end34.sink.split_crit_edge:          ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.sink.split

do.end25:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %pcidev26 = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 4
  %48 = ptrtoint ptr %pcidev26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcidev26, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %dev27, ptr noundef nonnull @.str.16, ptr noundef nonnull %rpwwn_buf, ptr noundef nonnull %lpwwn_buf) #10
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %do.end25, %do.body19.if.end34.sink.split_crit_edge, %do.body
  %.sink = phi i32 [ 3, %do.body ], [ 2, %do.end25 ], [ 2, %do.body19.if.end34.sink.split_crit_edge ]
  call fastcc void @bfa_fcs_rport_aen_post(ptr noundef %rport, i32 noundef %.sink, ptr noundef null)
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.end.if.end34_crit_edge
  %roles = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 3, i32 4
  %50 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %roles, align 8
  %and = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.end34.cleanup_crit_edge, label %if.then37

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then37:                                        ; preds = %if.end34
  %itnim = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %52 = ptrtoint ptr %itnim to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %itnim, align 8
  call void @bfa_fcs_itnim_rport_offline(ptr noundef %53) #7
  %54 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %55)
  %cmp39 = icmp ugt i32 %55, 16773120
  br i1 %cmp39, label %if.then37.cleanup_crit_edge, label %if.then43

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then43:                                        ; preds = %if.then37
  %fcs.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %56 = ptrtoint ptr %fcs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fcs.i, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %trcmod.i, align 8
  %conv.i = zext i32 %55 to i64
  call void @__bfa_trc(ptr noundef %59, i32 noundef 2051, i32 noundef 3340, i64 noundef %conv.i) #7
  %60 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %port1, align 8
  %fcs1.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %61, i32 0, i32 9
  %62 = ptrtoint ptr %fcs1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fcs1.i, align 4
  %min_cfg.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %min_cfg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %min_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %rpf.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27
  %rpsc_speed.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 27, i32 6
  %66 = ptrtoint ptr %rpsc_speed.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %rpsc_speed.i, align 4
  %67 = ptrtoint ptr %rpf.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rpf.i, align 8
  call void %68(ptr noundef %rpf.i, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then43.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %bfa_fcs_rport_fcs_offline_action.exit
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rpwwn_buf) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lpwwn_buf) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_nsquery(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 733, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 734, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 735, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %event, label %do.body [
    i32 9, label %sw.bb
    i32 10, label %sw.bb6
    i32 7, label %sw.bb11
    i32 8, label %entry.sw.epilog_crit_edge
    i32 4, label %entry.sw.bb13_crit_edge
    i32 17, label %entry.sw.bb13_crit_edge49
    i32 3, label %entry.sw.bb16_crit_edge
    i32 15, label %entry.sw.bb16_crit_edge50
    i32 2, label %entry.sw.bb16_crit_edge51
    i32 5, label %entry.sw.bb16_crit_edge52
  ]

entry.sw.bb16_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

entry.sw.bb16_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

entry.sw.bb16_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

entry.sw.bb16_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

entry.sw.bb13_crit_edge49:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_adisc_online_sending, ptr %sm, align 8
  tail call void @bfa_fcs_rport_send_adisc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %ns_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 23
  %18 = ptrtoint ptr %ns_retries to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ns_retries, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %ns_retries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %cmp = icmp slt i32 %inc, 5
  %sm9 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %sm9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bfa_fcs_rport_sm_nsquery_sending, ptr %sm9, align 8
  tail call void @bfa_fcs_rport_send_nsdisc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %sm9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @bfa_fcs_rport_sm_fc4_offline, ptr %sm9, align 8
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm12 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %22 = ptrtoint ptr %sm12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @bfa_fcs_rport_sm_fc4_logosend, ptr %sm12, align 8
  %fcxp = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %23 = ptrtoint ptr %fcxp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fcxp, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %24) #7
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry.sw.bb13_crit_edge, %entry.sw.bb13_crit_edge49
  %sm14 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %25 = ptrtoint ptr %sm14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_fcs_rport_sm_fc4_logorcv, ptr %sm14, align 8
  %fcxp15 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %26 = ptrtoint ptr %fcxp15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fcxp15, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %27) #7
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry.sw.bb16_crit_edge, %entry.sw.bb16_crit_edge50, %entry.sw.bb16_crit_edge51, %entry.sw.bb16_crit_edge52
  %sm17 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %28 = ptrtoint ptr %sm17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfa_fcs_rport_sm_fc4_offline, ptr %sm17, align 8
  %fcxp18 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %29 = ptrtoint ptr %fcxp18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fcxp18, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %30) #7
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fcs, align 4
  %trcmod20 = getelementptr inbounds %struct.bfa_fcs_s, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %trcmod20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %trcmod20, align 8
  %or = or i32 %event, -559087616
  %conv21 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %34, i32 noundef 2051, i32 noundef 781, i64 noundef %conv21) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 781, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb16, %sw.bb13, %sw.bb11, %if.else, %if.then, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_adisc_online(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 844, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 845, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 846, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %event, label %do.body [
    i32 9, label %sw.bb
    i32 2, label %sw.bb6
    i32 10, label %entry.sw.bb7_crit_edge
    i32 15, label %entry.sw.bb7_crit_edge44
    i32 7, label %sw.bb9
    i32 8, label %entry.sw.epilog_crit_edge
    i32 5, label %sw.bb12
    i32 4, label %entry.sw.bb15_crit_edge
    i32 17, label %entry.sw.bb15_crit_edge45
  ]

entry.sw.bb15_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.bb7_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_online, ptr %sm, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fcxp = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %18 = ptrtoint ptr %fcxp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fcxp, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %19) #7
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb6, %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge44
  %sm8 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %20 = ptrtoint ptr %sm8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bfa_fcs_rport_sm_fc4_offline, ptr %sm8, align 8
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm10 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %21 = ptrtoint ptr %sm10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @bfa_fcs_rport_sm_fc4_logosend, ptr %sm10, align 8
  %fcxp11 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %22 = ptrtoint ptr %fcxp11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fcxp11, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %23) #7
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm13 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %24 = ptrtoint ptr %sm13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @bfa_fcs_rport_sm_fc4_offline, ptr %sm13, align 8
  %fcxp14 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %25 = ptrtoint ptr %fcxp14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fcxp14, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %26) #7
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge45
  %sm16 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %27 = ptrtoint ptr %sm16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @bfa_fcs_rport_sm_fc4_logorcv, ptr %sm16, align 8
  %fcxp17 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %28 = ptrtoint ptr %fcxp17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fcxp17, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %29) #7
  tail call fastcc void @bfa_fcs_rport_hal_offline_action(ptr noundef %rport)
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fcs, align 4
  %trcmod19 = getelementptr inbounds %struct.bfa_fcs_s, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %trcmod19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %trcmod19, align 8
  %or = or i32 %event, -559087616
  %conv20 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %33, i32 noundef 2051, i32 noundef 893, i64 noundef %conv20) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 893, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb7, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcxp_req_rsp_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcxp_req_rsp_alloc_wait(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fc_adisc_build(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcxp_get_reqbuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcxp_send(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_adisc_response(ptr nocapture noundef readnone %fcsarg, ptr noundef %fcxp, ptr noundef %cbarg, i32 noundef %req_status, i32 noundef %rsp_len, i32 noundef %resid_len, ptr nocapture noundef readnone %rsp_fchs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bfa_fcxp_get_rspbuf(ptr noundef %fcxp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %req_status)
  %cmp.not = icmp eq i32 %req_status, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %req_status to i64
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 1888, i64 noundef %conv) #7
  %adisc_failed = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 25, i32 14
  %4 = ptrtoint ptr %adisc_failed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %adisc_failed, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %adisc_failed, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 12
  %6 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pwwn, align 8
  %nwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 13
  %8 = ptrtoint ptr %nwwn to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %nwwn, align 8
  %call1 = tail call i32 @fc_adisc_rsp_parse(ptr noundef %call, i32 noundef %rsp_len, i64 noundef %7, i64 noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %adisc_accs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 25, i32 13
  %10 = ptrtoint ptr %adisc_accs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %adisc_accs, align 4
  %inc6 = add i32 %11, 1
  store i32 %inc6, ptr %adisc_accs, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %adisc_rejects = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 25, i32 11
  %12 = ptrtoint ptr %adisc_rejects to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %adisc_rejects, align 4
  %inc10 = add i32 %13, 1
  store i32 %inc10, ptr %adisc_rejects, align 4
  %fcs11 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 2
  %14 = ptrtoint ptr %fcs11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fcs11, align 4
  %trcmod12 = getelementptr inbounds %struct.bfa_fcs_s, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %trcmod12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trcmod12, align 8
  %18 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %bf.load = load i32, ptr %call, align 1
  %bf.lshr = lshr i32 %bf.load, 24
  %conv13 = zext i32 %bf.lshr to i64
  tail call void @__bfa_trc(ptr noundef %17, i32 noundef 2051, i32 noundef 1903, i64 noundef %conv13) #7
  %19 = ptrtoint ptr %fcs11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fcs11, align 4
  %trcmod15 = getelementptr inbounds %struct.bfa_fcs_s, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %trcmod15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trcmod15, align 8
  %reason_code = getelementptr inbounds %struct.fc_ls_rjt_s, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %reason_code to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %bf.load16 = load i32, ptr %reason_code, align 1
  %bf.lshr17 = lshr i32 %bf.load16, 16
  %bf.clear = and i32 %bf.lshr17, 255
  %conv18 = zext i32 %bf.clear to i64
  tail call void @__bfa_trc(ptr noundef %22, i32 noundef 2051, i32 noundef 1904, i64 noundef %conv18) #7
  %24 = ptrtoint ptr %fcs11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fcs11, align 4
  %trcmod20 = getelementptr inbounds %struct.bfa_fcs_s, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %trcmod20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trcmod20, align 8
  %28 = ptrtoint ptr %reason_code to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %bf.load21 = load i32, ptr %reason_code, align 1
  %bf.lshr22 = lshr i32 %bf.load21, 8
  %bf.clear23 = and i32 %bf.lshr22, 255
  %conv24 = zext i32 %bf.clear23 to i64
  tail call void @__bfa_trc(ptr noundef %27, i32 noundef 2051, i32 noundef 1905, i64 noundef %conv24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4, %if.then
  %.sink = phi i32 [ 10, %if.end8 ], [ 9, %if.then4 ], [ 10, %if.then ]
  %sm25 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 15
  %29 = ptrtoint ptr %sm25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sm25, align 8
  tail call void %30(ptr noundef %cbarg, i32 noundef %.sink) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcxp_get_rspbuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_adisc_rsp_parse(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_itnim_rport_offline(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_hcb_logosend(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 1279, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 1280, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 1281, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %event, label %do.body [
    i32 13, label %sw.bb
    i32 4, label %sw.bb6
    i32 17, label %entry.sw.bb7_crit_edge
    i32 20, label %entry.sw.epilog_crit_edge
    i32 19, label %entry.sw.epilog_crit_edge30
    i32 15, label %entry.sw.epilog_crit_edge31
  ]

entry.sw.epilog_crit_edge31:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge30:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_logo_sending, ptr %sm, align 8
  tail call void @bfa_fcs_rport_send_logo(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_logo_acc(ptr noundef %rport)
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb6, %entry.sw.bb7_crit_edge
  %prlo = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 10
  %18 = ptrtoint ptr %prlo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prlo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp eq i32 %19, 1
  br i1 %cmp, label %if.then, label %sw.bb7.if.end_crit_edge

sw.bb7.if.end_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_prlo_acc(ptr noundef %rport)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb7.if.end_crit_edge
  %sm9 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %20 = ptrtoint ptr %sm9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bfa_fcs_rport_sm_delete_pending, ptr %sm9, align 8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fcs, align 4
  %trcmod12 = getelementptr inbounds %struct.bfa_fcs_s, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %trcmod12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trcmod12, align 8
  %or = or i32 %event, -559087616
  %conv13 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %24, i32 noundef 2051, i32 noundef 1305, i64 noundef %conv13) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1305, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %if.end, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge30, %entry.sw.epilog_crit_edge31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_fc4_off_delete(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 1638, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 1639, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 1640, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %event, label %do.body [
    i32 14, label %sw.bb
    i32 7, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge22
  ]

entry.sw.epilog_crit_edge22:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_delete_pending, ptr %sm, align 8
  %bfa_rport.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 20
  %18 = ptrtoint ptr %bfa_rport.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bfa_rport.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %sm.i = getelementptr inbounds %struct.bfa_rport_s, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sm.i, align 4
  tail call void %21(ptr noundef nonnull %19, i32 noundef 4) #7
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fcs, align 4
  %trcmod.i.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %trcmod.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trcmod.i.i, align 8
  %26 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %25, i32 noundef 2051, i32 noundef 2754, i64 noundef %27) #7
  %28 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sm, align 8
  tail call void %29(ptr noundef %rport, i32 noundef 13) #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fcs, align 4
  %trcmod8 = getelementptr inbounds %struct.bfa_fcs_s, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %trcmod8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %trcmod8, align 8
  %or = or i32 %event, -559087616
  %conv9 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %33, i32 noundef 2051, i32 noundef 1654, i64 noundef %conv9) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1654, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %if.else.i, %if.then.i, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_logo_sending(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 1316, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 1317, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 1318, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %event, label %do.body [
    i32 6, label %sw.bb
    i32 20, label %entry.sw.epilog_crit_edge
    i32 19, label %entry.sw.epilog_crit_edge34
    i32 8, label %entry.sw.epilog_crit_edge35
    i32 15, label %entry.sw.epilog_crit_edge36
    i32 4, label %sw.bb7
    i32 17, label %entry.sw.bb8_crit_edge
  ]

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.epilog_crit_edge36:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge35:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge34:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_uninit, ptr %sm, align 8
  tail call fastcc void @bfa_fcs_rport_free(ptr noundef %rport)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_logo_acc(ptr noundef %rport)
  br label %sw.bb8

sw.bb8:                                           ; preds = %sw.bb7, %entry.sw.bb8_crit_edge
  %prlo = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 10
  %18 = ptrtoint ptr %prlo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prlo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp eq i32 %19, 1
  br i1 %cmp, label %if.then, label %sw.bb8.if.end_crit_edge

sw.bb8.if.end_crit_edge:                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_prlo_acc(ptr noundef %rport)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb8.if.end_crit_edge
  %sm10 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %20 = ptrtoint ptr %sm10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bfa_fcs_rport_sm_uninit, ptr %sm10, align 8
  %21 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fcs, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %fcxp_wqe = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %24, ptr noundef %fcxp_wqe) #7
  tail call fastcc void @bfa_fcs_rport_free(ptr noundef %rport)
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fcs, align 4
  %trcmod13 = getelementptr inbounds %struct.bfa_fcs_s, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %trcmod13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %trcmod13, align 8
  %or = or i32 %event, -559087616
  %conv14 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %28, i32 noundef 2051, i32 noundef 1346, i64 noundef %conv14) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1346, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %if.end, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge34, %entry.sw.epilog_crit_edge35, %entry.sw.epilog_crit_edge36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_send_logo(ptr noundef %rport_cbarg, ptr noundef %fcxp_alloced) #0 align 64 {
entry:
  %fchs = alloca %struct.fchs_s, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fchs) #7
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 2
  %0 = call ptr @memset(ptr %fchs, i32 255, i32 24)
  %1 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trcmod, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 4
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid, align 4
  %conv = zext i32 %6 to i64
  tail call void @__bfa_trc(ptr noundef %4, i32 noundef 2051, i32 noundef 2074, i64 noundef %conv) #7
  %port1 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 1
  %7 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port1, align 8
  %tobool.not = icmp eq ptr %fcxp_alloced, null
  br i1 %tobool.not, label %cond.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cond.end:                                         ; preds = %entry
  %fcs2 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %fcs2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fcs2, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %call = tail call ptr @bfa_fcxp_req_rsp_alloc(ptr noundef null, ptr noundef %12, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %fcs2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fcs2, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %fcxp_wqe = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 24
  tail call void @bfa_fcxp_req_rsp_alloc_wait(ptr noundef %16, ptr noundef %fcxp_wqe, ptr noundef nonnull @bfa_fcs_rport_send_logo, ptr noundef %rport_cbarg, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  br label %cleanup

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  %cond39 = phi ptr [ %call, %cond.end.if.end_crit_edge ], [ %fcxp_alloced, %entry.if.end_crit_edge ]
  %fcxp6 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 21
  %17 = ptrtoint ptr %fcxp6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cond39, ptr %fcxp6, align 8
  %call7 = tail call ptr @bfa_fcxp_get_reqbuf(ptr noundef nonnull %cond39) #7
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid, align 4
  %pid9 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %8, i32 0, i32 5
  %20 = ptrtoint ptr %pid9 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 3)
  %bf.load = load i24, ptr %pid9, align 4
  %bf.cast = zext i24 %bf.load to i32
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %8, i32 0, i32 3
  %21 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %port_cfg, align 8
  %call10 = call zeroext i16 @fc_logo_build(ptr noundef nonnull %fchs, ptr noundef %call7, i32 noundef %19, i32 noundef %bf.cast, i16 noundef zeroext 0, i64 noundef %22) #7
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %8, i32 0, i32 2
  %23 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fabric, align 4
  %vf_id = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vf_id, align 2
  %lp_tag = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %8, i32 0, i32 6
  %27 = ptrtoint ptr %lp_tag to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %lp_tag, align 1
  %conv11 = zext i16 %call10 to i32
  call void @bfa_fcxp_send(ptr noundef nonnull %cond39, ptr noundef null, i16 noundef zeroext %26, i8 noundef zeroext %28, i32 noundef 0, i32 noundef 8, i32 noundef %conv11, ptr noundef nonnull %fchs, ptr noundef null, ptr noundef %rport_cbarg, i32 noundef 2112, i8 noundef zeroext 20) #7
  %logos = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 25, i32 16
  %29 = ptrtoint ptr %logos to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %logos, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %logos, align 4
  %31 = ptrtoint ptr %fcxp6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fcxp6, align 8
  call void @bfa_fcxp_discard(ptr noundef %32) #7
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport_cbarg, i32 0, i32 15
  %33 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sm, align 8
  call void %34(ptr noundef %rport_cbarg, i32 noundef 6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fchs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_delete_pending(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 1667, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 1668, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 1669, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %event, label %do.body [
    i32 13, label %sw.bb
    i32 7, label %entry.sw.epilog_crit_edge
    i32 5, label %entry.sw.epilog_crit_edge22
    i32 2, label %entry.sw.epilog_crit_edge23
  ]

entry.sw.epilog_crit_edge23:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge22:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_uninit, ptr %sm, align 8
  tail call fastcc void @bfa_fcs_rport_free(ptr noundef %rport)
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fcs, align 4
  %trcmod8 = getelementptr inbounds %struct.bfa_fcs_s, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %trcmod8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trcmod8, align 8
  %or = or i32 %event, -559087616
  %conv9 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %21, i32 noundef 2051, i32 noundef 1684, i64 noundef %conv9) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1684, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge22, %entry.sw.epilog_crit_edge23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fc_logo_build(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_hcb_offline(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 1120, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 1121, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 1122, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %event, label %do.body [
    i32 13, label %sw.bb
    i32 15, label %entry.sw.bb8_crit_edge
    i32 7, label %sw.bb42
    i32 20, label %entry.sw.epilog_crit_edge
    i32 19, label %entry.sw.epilog_crit_edge87
    i32 8, label %entry.sw.epilog_crit_edge88
    i32 4, label %entry.sw.epilog_crit_edge89
    i32 17, label %entry.sw.epilog_crit_edge90
    i32 2, label %entry.sw.epilog_crit_edge91
    i32 5, label %entry.sw.epilog_crit_edge92
  ]

entry.sw.epilog_crit_edge92:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge91:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge90:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge89:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge88:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge87:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

sw.bb:                                            ; preds = %entry
  %port = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port, align 8
  %call = tail call i32 @bfa_fcs_lport_is_online(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.bb.sw.bb8_crit_edge, label %land.lhs.true

sw.bb.sw.bb8_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

land.lhs.true:                                    ; preds = %sw.bb
  %plogi_pending = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 11
  %19 = ptrtoint ptr %plogi_pending to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %plogi_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not = icmp eq i32 %20, 0
  br i1 %tobool6.not, label %land.lhs.true.sw.bb8_crit_edge, label %if.then

land.lhs.true.sw.bb8_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %plogi_pending to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %plogi_pending, align 4
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %22 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @bfa_fcs_rport_sm_plogiacc_sending, ptr %sm, align 8
  tail call void @bfa_fcs_rport_send_plogiacc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb8:                                           ; preds = %land.lhs.true.sw.bb8_crit_edge, %sw.bb.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge
  %port9 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %23 = ptrtoint ptr %port9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port9, align 8
  %call10 = tail call i32 @bfa_fcs_lport_is_online(ptr noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end16

if.then12:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %pid, align 4
  %sm14 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %26 = ptrtoint ptr %sm14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm14, align 8
  %27 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fcs, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %timer_mod = getelementptr inbounds %struct.bfa_s, ptr %30, i32 0, i32 5
  %timer = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  %31 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod, ptr noundef %timer, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %31) #7
  br label %sw.epilog

if.end16:                                         ; preds = %sw.bb8
  %32 = ptrtoint ptr %port9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port9, align 8
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fabric, align 4
  %fab_type = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %fab_type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fab_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp = icmp eq i32 %37, 1
  br i1 %cmp, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %sm20 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %38 = ptrtoint ptr %sm20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @bfa_fcs_rport_sm_nsdisc_sending, ptr %sm20, align 8
  %ns_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 23
  %39 = ptrtoint ptr %ns_retries to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %ns_retries, align 8
  tail call void @bfa_fcs_rport_send_nsdisc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

if.else:                                          ; preds = %if.end16
  %fcs22 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %33, i32 0, i32 9
  %40 = ptrtoint ptr %fcs22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fcs22, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %call24 = tail call i32 @bfa_fcport_get_topology(ptr noundef %43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call24)
  %cmp25 = icmp eq i32 %call24, 2
  br i1 %cmp25, label %if.then27, label %if.else38

if.then27:                                        ; preds = %if.else
  %scn_online = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 28
  %44 = ptrtoint ptr %scn_online to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %scn_online, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool28.not = icmp eq i32 %45, 0
  %sm32 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  br i1 %tobool28.not, label %if.else31, label %if.then29

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %sm32 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @bfa_fcs_rport_sm_adisc_offline_sending, ptr %sm32, align 8
  tail call void @bfa_fcs_rport_send_adisc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

if.else31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %sm32 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm32, align 8
  %48 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fcs, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %timer_mod35 = getelementptr inbounds %struct.bfa_s, ptr %51, i32 0, i32 5
  %timer36 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  %52 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod35, ptr noundef %timer36, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %52) #7
  br label %sw.epilog

if.else38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sm39 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %53 = ptrtoint ptr %sm39 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @bfa_fcs_rport_sm_plogi_sending, ptr %sm39, align 8
  %plogi_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 22
  %54 = ptrtoint ptr %plogi_retries to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %plogi_retries, align 4
  tail call void @bfa_fcs_rport_send_plogi(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm43 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %55 = ptrtoint ptr %sm43 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @bfa_fcs_rport_sm_uninit, ptr %sm43, align 8
  tail call fastcc void @bfa_fcs_rport_free(ptr noundef %rport)
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fcs, align 4
  %trcmod46 = getelementptr inbounds %struct.bfa_fcs_s, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %trcmod46 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %trcmod46, align 8
  %or = or i32 %event, -559087616
  %conv47 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %59, i32 noundef 2051, i32 noundef 1188, i64 noundef %conv47) #7
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1188, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb42, %if.else38, %if.else31, %if.then29, %if.then19, %if.then12, %if.then, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge87, %entry.sw.epilog_crit_edge88, %entry.sw.epilog_crit_edge89, %entry.sw.epilog_crit_edge90, %entry.sw.epilog_crit_edge91, %entry.sw.epilog_crit_edge92
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_adisc_offline_sending(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 905, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 906, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 907, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %event, label %do.body [
    i32 6, label %sw.bb
    i32 7, label %entry.sw.bb6_crit_edge
    i32 19, label %entry.sw.bb6_crit_edge40
    i32 5, label %entry.sw.bb6_crit_edge41
    i32 4, label %entry.sw.bb6_crit_edge42
    i32 17, label %entry.sw.bb6_crit_edge43
    i32 2, label %sw.bb11
  ]

entry.sw.bb6_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb6_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb6_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb6_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_adisc_offline, ptr %sm, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge40, %entry.sw.bb6_crit_edge41, %entry.sw.bb6_crit_edge42, %entry.sw.bb6_crit_edge43
  %sm7 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %18 = ptrtoint ptr %sm7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm7, align 8
  %19 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fcs, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %fcxp_wqe = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %22, ptr noundef %fcxp_wqe) #7
  %23 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fcs, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %timer_mod = getelementptr inbounds %struct.bfa_s, ptr %26, i32 0, i32 5
  %timer = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  %27 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod, ptr noundef %timer, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %27) #7
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm12 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %28 = ptrtoint ptr %sm12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfa_fcs_rport_sm_plogiacc_sending, ptr %sm12, align 8
  %29 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fcs, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %fcxp_wqe15 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 24
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %32, ptr noundef %fcxp_wqe15) #7
  tail call void @bfa_fcs_rport_send_plogiacc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fcs, align 4
  %trcmod17 = getelementptr inbounds %struct.bfa_fcs_s, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %trcmod17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trcmod17, align 8
  %or = or i32 %event, -559087616
  %conv18 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %36, i32 noundef 2051, i32 noundef 934, i64 noundef %conv18) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 934, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb11, %sw.bb6, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_adisc_offline(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  %rport_info.i = alloca %struct.bfa_rport_info_s, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 946, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 947, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 948, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %event, label %do.body [
    i32 9, label %sw.bb
    i32 2, label %sw.bb6
    i32 10, label %sw.bb8
    i32 7, label %entry.sw.bb11_crit_edge
    i32 19, label %entry.sw.bb11_crit_edge45
    i32 5, label %entry.sw.bb11_crit_edge46
    i32 4, label %entry.sw.bb11_crit_edge47
    i32 17, label %entry.sw.bb11_crit_edge48
  ]

entry.sw.bb11_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11

entry.sw.bb11_crit_edge47:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11

entry.sw.bb11_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11

entry.sw.bb11_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_hal_online, ptr %sm, align 8
  %port1.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %18 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port1.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rport_info.i) #7
  %20 = getelementptr inbounds %struct.bfa_rport_info_s, ptr %rport_info.i, i32 0, i32 2
  %21 = getelementptr inbounds %struct.bfa_rport_info_s, ptr %rport_info.i, i32 0, i32 3
  %22 = getelementptr inbounds %struct.bfa_rport_info_s, ptr %rport_info.i, i32 0, i32 4
  %23 = getelementptr inbounds %struct.bfa_rport_info_s, ptr %rport_info.i, i32 0, i32 5
  %24 = call ptr @memset(ptr %rport_info.i, i32 255, i32 20)
  %25 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid, align 4
  %bf.value.i = zext i32 %26 to i64
  %bf.shl.i = shl i64 %bf.value.i, 40
  %pid3.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %19, i32 0, i32 5
  %27 = ptrtoint ptr %pid3.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 3)
  %bf.load4.i = load i24, ptr %pid3.i, align 4
  %28 = zext i24 %bf.load4.i to i64
  %bf.shl7.i = shl nuw nsw i64 %28, 8
  %bf.set9.i = or i64 %bf.shl7.i, %bf.shl.i
  %lp_tag.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %19, i32 0, i32 6
  %29 = ptrtoint ptr %lp_tag.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %lp_tag.i, align 1
  %31 = zext i8 %30 to i64
  %bf.shl14.i = shl nuw nsw i64 %31, 32
  %bf.set16.i = or i64 %bf.set9.i, %bf.shl14.i
  %fabric.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %19, i32 0, i32 2
  %32 = ptrtoint ptr %fabric.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fabric.i, align 4
  %vf_id.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %vf_id.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vf_id.i, align 2
  %36 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %23, align 2
  %37 = load ptr, ptr %fabric.i, align 4
  %is_vf.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %is_vf.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_vf.i, align 8
  %40 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %22, align 1
  %fc_cos.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 8
  %41 = ptrtoint ptr %fc_cos.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fc_cos.i, align 8
  %conv20.i = trunc i32 %42 to i8
  %43 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv20.i, ptr %21, align 4
  %cisc.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 9
  %44 = ptrtoint ptr %cisc.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cisc.i, align 4
  %46 = and i32 %45, 255
  %bf.value23.i = zext i32 %46 to i64
  %bf.set25.i = or i64 %bf.set16.i, %bf.value23.i
  %47 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %bf.set25.i, ptr %20, align 4
  %maxfrsize.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 6
  %48 = ptrtoint ptr %maxfrsize.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %maxfrsize.i, align 4
  %50 = ptrtoint ptr %rport_info.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %rport_info.i, align 4
  %bfa_rport.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 20
  %51 = ptrtoint ptr %bfa_rport.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bfa_rport.i, align 4
  call void @bfa_rport_online(ptr noundef %52, ptr noundef nonnull %rport_info.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rport_info.i) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm7 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %53 = ptrtoint ptr %sm7 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @bfa_fcs_rport_sm_plogiacc_sending, ptr %sm7, align 8
  %fcxp = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %54 = ptrtoint ptr %fcxp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fcxp, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %55) #7
  tail call void @bfa_fcs_rport_send_plogiacc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm9 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %56 = ptrtoint ptr %sm9 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm9, align 8
  %57 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fcs, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %timer_mod = getelementptr inbounds %struct.bfa_s, ptr %60, i32 0, i32 5
  %timer = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  %61 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod, ptr noundef %timer, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %61) #7
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge45, %entry.sw.bb11_crit_edge46, %entry.sw.bb11_crit_edge47, %entry.sw.bb11_crit_edge48
  %sm12 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %62 = ptrtoint ptr %sm12 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm12, align 8
  %fcxp13 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %63 = ptrtoint ptr %fcxp13 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fcxp13, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %64) #7
  %65 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fcs, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %timer_mod16 = getelementptr inbounds %struct.bfa_s, ptr %68, i32 0, i32 5
  %timer17 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  %69 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod16, ptr noundef %timer17, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %69) #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fcs, align 4
  %trcmod19 = getelementptr inbounds %struct.bfa_fcs_s, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %trcmod19 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %trcmod19, align 8
  %or = or i32 %event, -559087616
  %conv20 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %73, i32 noundef 2051, i32 noundef 982, i64 noundef %conv20) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 982, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb11, %sw.bb8, %sw.bb6, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_hcb_logorcv(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 1200, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 1201, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 1202, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %event, label %do.body [
    i32 13, label %entry.sw.bb_crit_edge
    i32 15, label %entry.sw.bb_crit_edge109
    i32 7, label %sw.bb40
    i32 5, label %sw.bb58
    i32 20, label %entry.sw.epilog_crit_edge
    i32 19, label %entry.sw.epilog_crit_edge110
    i32 4, label %entry.sw.epilog_crit_edge111
    i32 17, label %entry.sw.epilog_crit_edge112
  ]

entry.sw.epilog_crit_edge112:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge111:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge110:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.bb_crit_edge109:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge109
  %17 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %sw.bb.if.end15_crit_edge, label %land.lhs.true

sw.bb.if.end15_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true:                                    ; preds = %sw.bb
  %prlo = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 10
  %19 = ptrtoint ptr %prlo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prlo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp eq i32 %20, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_prlo_acc(ptr noundef %rport)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  %21 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool9.not = icmp eq i32 %.pr, 0
  br i1 %tobool9.not, label %if.end.if.end15_crit_edge, label %land.lhs.true10

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true10:                                  ; preds = %if.end
  %22 = ptrtoint ptr %prlo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %prlo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp12 = icmp eq i32 %23, 0
  br i1 %cmp12, label %if.then14, label %land.lhs.true10.if.end15_crit_edge

land.lhs.true10.if.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_logo_acc(ptr noundef %rport)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true10.if.end15_crit_edge, %if.end.if.end15_crit_edge, %sw.bb.if.end15_crit_edge
  %port = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port, align 8
  %call = tail call i32 @bfa_fcs_lport_is_online(ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  %26 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr105 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %.pr105)
  %cmp30 = icmp ugt i32 %.pr105, 16773120
  br i1 %tobool16.not, label %if.else28, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.end15
  br i1 %cmp30, label %land.lhs.true17.if.end36_crit_edge, label %if.then21

land.lhs.true17.if.end36_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then21:                                        ; preds = %land.lhs.true17
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port, align 8
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fabric, align 4
  %fab_type = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %fab_type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fab_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp23 = icmp eq i32 %32, 1
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bfa_fcs_rport_sm_nsdisc_sending, ptr %sm, align 8
  %ns_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 23
  %34 = ptrtoint ptr %ns_retries to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %ns_retries, align 8
  tail call void @bfa_fcs_rport_send_nsdisc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @bfa_fcs_rport_sm_plogi_sending, ptr %sm, align 8
  %plogi_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 22
  %36 = ptrtoint ptr %plogi_retries to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %plogi_retries, align 4
  tail call void @bfa_fcs_rport_send_plogi(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

if.else28:                                        ; preds = %if.end15
  br i1 %cmp30, label %if.else28.if.end36_crit_edge, label %if.then34

if.else28.if.end36_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then34:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %pid, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.else28.if.end36_crit_edge, %land.lhs.true17.if.end36_crit_edge
  %sm37 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %38 = ptrtoint ptr %sm37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm37, align 8
  %39 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fcs, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %timer_mod = getelementptr inbounds %struct.bfa_s, ptr %42, i32 0, i32 5
  %timer = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  %43 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod, ptr noundef %timer, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %43) #7
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  %sm41 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %44 = ptrtoint ptr %sm41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @bfa_fcs_rport_sm_delete_pending, ptr %sm41, align 8
  %45 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool43.not = icmp eq i32 %46, 0
  br i1 %tobool43.not, label %sw.bb40.sw.epilog_crit_edge, label %land.lhs.true44

sw.bb40.sw.epilog_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true44:                                  ; preds = %sw.bb40
  %prlo45 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 10
  %47 = ptrtoint ptr %prlo45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %prlo45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp46 = icmp eq i32 %48, 1
  br i1 %cmp46, label %if.then48, label %land.lhs.true44.if.end49_crit_edge

land.lhs.true44.if.end49_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then48:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_prlo_acc(ptr noundef %rport)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %land.lhs.true44.if.end49_crit_edge
  %49 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr107 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr107)
  %tobool51.not = icmp eq i32 %.pr107, 0
  br i1 %tobool51.not, label %if.end49.sw.epilog_crit_edge, label %land.lhs.true52

if.end49.sw.epilog_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true52:                                  ; preds = %if.end49
  %50 = ptrtoint ptr %prlo45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %prlo45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp54 = icmp eq i32 %51, 0
  br i1 %cmp54, label %if.then56, label %land.lhs.true52.sw.epilog_crit_edge

land.lhs.true52.sw.epilog_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then56:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_logo_acc(ptr noundef %rport)
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm59 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %52 = ptrtoint ptr %sm59 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @bfa_fcs_rport_sm_hcb_offline, ptr %sm59, align 8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fcs, align 4
  %trcmod62 = getelementptr inbounds %struct.bfa_fcs_s, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %trcmod62 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %trcmod62, align 8
  %or = or i32 %event, -559087616
  %conv63 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %56, i32 noundef 2051, i32 noundef 1266, i64 noundef %conv63) #7
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1266, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb58, %if.then56, %land.lhs.true52.sw.epilog_crit_edge, %if.end49.sw.epilog_crit_edge, %sw.bb40.sw.epilog_crit_edge, %if.end36, %if.else, %if.then25, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge110, %entry.sw.epilog_crit_edge111, %entry.sw.epilog_crit_edge112
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fc_logo_acc_build(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fc_prlo_acc_build(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_timer_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_itnim_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_lport_del_rport(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fc_plogi_build(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i64 noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @bfa_fcport_get_maxfrsize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @bfa_fcport_get_rx_bbcredit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_plogi_response(ptr nocapture noundef readnone %fcsarg, ptr noundef %fcxp, ptr noundef %cbarg, i32 noundef %req_status, i32 noundef %rsp_len, i32 noundef %resid_len, ptr nocapture noundef readonly %rsp_fchs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 1737, i64 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %req_status)
  %cmp.not = icmp eq i32 %req_status, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %req_status to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 1743, i64 noundef %conv) #7
  %plogi_failed = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 25, i32 7
  %10 = ptrtoint ptr %plogi_failed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %plogi_failed, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %plogi_failed, align 4
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 15
  %12 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sm, align 8
  tail call void %13(ptr noundef %cbarg, i32 noundef 10) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @bfa_fcxp_get_rspbuf(ptr noundef %fcxp) #7
  %14 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %bf.load = load i32, ptr %call, align 1
  %bf.lshr.mask = and i32 %bf.load, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %bf.lshr.mask)
  %cmp3.not = icmp eq i32 %bf.lshr.mask, 33554432
  br i1 %cmp3.not, label %if.end38, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call ptr @bfa_fcxp_get_rspbuf(ptr noundef %fcxp) #7
  %15 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fcs, align 4
  %trcmod8 = getelementptr inbounds %struct.bfa_fcs_s, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %trcmod8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trcmod8, align 8
  %reason_code = getelementptr inbounds %struct.fc_ls_rjt_s, ptr %call6, i32 0, i32 1
  %19 = ptrtoint ptr %reason_code to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %bf.load9 = load i32, ptr %reason_code, align 1
  %bf.lshr10 = lshr i32 %bf.load9, 16
  %bf.clear = and i32 %bf.lshr10, 255
  %conv11 = zext i32 %bf.clear to i64
  tail call void @__bfa_trc(ptr noundef %18, i32 noundef 2051, i32 noundef 1757, i64 noundef %conv11) #7
  %20 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fcs, align 4
  %trcmod13 = getelementptr inbounds %struct.bfa_fcs_s, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %trcmod13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trcmod13, align 8
  %24 = ptrtoint ptr %reason_code to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %bf.load14 = load i32, ptr %reason_code, align 1
  %bf.lshr15 = lshr i32 %bf.load14, 8
  %bf.clear16 = and i32 %bf.lshr15, 255
  %conv17 = zext i32 %bf.clear16 to i64
  tail call void @__bfa_trc(ptr noundef %23, i32 noundef 2051, i32 noundef 1758, i64 noundef %conv17) #7
  %25 = ptrtoint ptr %reason_code to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %bf.load19 = load i32, ptr %reason_code, align 1
  %26 = and i32 %bf.load19, 16776960
  call void @__sanitizer_cov_trace_const_cmp4(i32 600320, i32 %26)
  %27 = icmp eq i32 %26, 600320
  br i1 %27, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %rjt_insuff_res = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 25, i32 27
  %28 = ptrtoint ptr %rjt_insuff_res to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rjt_insuff_res, align 4
  %inc32 = add i32 %29, 1
  store i32 %inc32, ptr %rjt_insuff_res, align 4
  %sm33 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 15
  %30 = ptrtoint ptr %sm33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sm33, align 8
  tail call void %31(ptr noundef %cbarg, i32 noundef 18) #7
  br label %cleanup

if.end34:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %plogi_rejects = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 25, i32 6
  %32 = ptrtoint ptr %plogi_rejects to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %plogi_rejects, align 4
  %inc36 = add i32 %33, 1
  store i32 %inc36, ptr %plogi_rejects, align 4
  %sm37 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 15
  %34 = ptrtoint ptr %sm37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sm37, align 8
  tail call void %35(ptr noundef %cbarg, i32 noundef 10) #7
  br label %cleanup

if.end38:                                         ; preds = %if.end
  %port = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 1
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port, align 8
  %rport_q = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %rport_q to i32
  call void @__asan_load4_noabort(i32 %38)
  %qe.0153 = load ptr, ptr %rport_q, align 4
  %cmp.i.not154 = icmp eq ptr %qe.0153, %rport_q
  br i1 %cmp.i.not154, label %if.end38.for.end_crit_edge, label %for.body.lr.ph

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end38
  %port_name = getelementptr inbounds %struct.fc_logi_s, ptr %call, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %qe.0155 = phi ptr [ %qe.0153, %for.body.lr.ph ], [ %qe.0, %for.inc.for.body_crit_edge ]
  %cmp42 = icmp eq ptr %qe.0155, %cbarg
  br i1 %cmp42, label %for.body.for.inc_crit_edge, label %if.end45

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end45:                                         ; preds = %for.body
  %39 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %pwwn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %tobool47.not = icmp eq i64 %40, 0
  br i1 %tobool47.not, label %land.lhs.true48, label %if.end45.for.inc_crit_edge

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true48:                                  ; preds = %if.end45
  %41 = ptrtoint ptr %port_name to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %port_name, align 1
  %pwwn49 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %qe.0155, i32 0, i32 12
  %43 = ptrtoint ptr %pwwn49 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %pwwn49, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %44)
  %cmp50 = icmp eq i64 %42, %44
  br i1 %cmp50, label %if.then52, label %land.lhs.true48.for.inc_crit_edge

land.lhs.true48.for.inc_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then52:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fcs, align 4
  %trcmod54 = getelementptr inbounds %struct.bfa_fcs_s, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %trcmod54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %trcmod54, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %qe.0155, i32 0, i32 4
  %49 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pid, align 4
  %conv55 = zext i32 %50 to i64
  tail call void @__bfa_trc(ptr noundef %48, i32 noundef 2051, i32 noundef 1781, i64 noundef %conv55) #7
  %51 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fcs, align 4
  %trcmod57 = getelementptr inbounds %struct.bfa_fcs_s, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %trcmod57 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %trcmod57, align 8
  %pid58 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 4
  %55 = ptrtoint ptr %pid58 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pid58, align 4
  %conv59 = zext i32 %56 to i64
  tail call void @__bfa_trc(ptr noundef %54, i32 noundef 2051, i32 noundef 1782, i64 noundef %conv59) #7
  %plogis = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 25, i32 3
  %57 = ptrtoint ptr %plogis to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %plogis, align 4
  %plogis62 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %qe.0155, i32 0, i32 25, i32 3
  %59 = ptrtoint ptr %plogis62 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %plogis62, align 4
  %add = add i32 %60, %58
  store i32 %add, ptr %plogis62, align 4
  %plogi_rejects64 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 25, i32 6
  %61 = ptrtoint ptr %plogi_rejects64 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %plogi_rejects64, align 4
  %plogi_rejects66 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %qe.0155, i32 0, i32 25, i32 6
  %63 = ptrtoint ptr %plogi_rejects66 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %plogi_rejects66, align 4
  %add67 = add i32 %64, %62
  store i32 %add67, ptr %plogi_rejects66, align 4
  %plogi_timeouts = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 25, i32 5
  %65 = ptrtoint ptr %plogi_timeouts to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %plogi_timeouts, align 4
  %plogi_timeouts70 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %qe.0155, i32 0, i32 25, i32 5
  %67 = ptrtoint ptr %plogi_timeouts70 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %plogi_timeouts70, align 4
  %add71 = add i32 %68, %66
  store i32 %add71, ptr %plogi_timeouts70, align 4
  %plogi_failed73 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 25, i32 7
  %69 = ptrtoint ptr %plogi_failed73 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %plogi_failed73, align 4
  %plogi_failed75 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %qe.0155, i32 0, i32 25, i32 7
  %71 = ptrtoint ptr %plogi_failed75 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %plogi_failed75, align 4
  %add76 = add i32 %72, %70
  store i32 %add76, ptr %plogi_failed75, align 4
  %plogi_rcvd = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 25, i32 8
  %73 = ptrtoint ptr %plogi_rcvd to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %plogi_rcvd, align 4
  %plogi_rcvd79 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %qe.0155, i32 0, i32 25, i32 8
  %75 = ptrtoint ptr %plogi_rcvd79 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %plogi_rcvd79, align 4
  %add80 = add i32 %76, %74
  store i32 %add80, ptr %plogi_rcvd79, align 4
  %plogi_accs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %qe.0155, i32 0, i32 25, i32 4
  %77 = ptrtoint ptr %plogi_accs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %plogi_accs, align 4
  %inc82 = add i32 %78, 1
  store i32 %inc82, ptr %plogi_accs, align 4
  %sm83 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 15
  %79 = ptrtoint ptr %sm83 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sm83, align 8
  tail call void %80(ptr noundef %cbarg, i32 noundef 7) #7
  tail call fastcc void @bfa_fcs_rport_update(ptr noundef %qe.0155, ptr noundef %call)
  %81 = ptrtoint ptr %rsp_fchs to i32
  call void @__asan_loadN_noabort(i32 %81, i32 12)
  %bf.load84 = load i96, ptr %rsp_fchs, align 1
  %bf.lshr85 = lshr i96 %bf.load84, 32
  %82 = trunc i96 %bf.lshr85 to i32
  %bf.cast = and i32 %82, 16777215
  %83 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %bf.cast, ptr %pid, align 4
  %sm88 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %qe.0155, i32 0, i32 15
  %84 = ptrtoint ptr %sm88 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sm88, align 8
  tail call void %85(ptr noundef %qe.0155, i32 noundef 3) #7
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true48.for.inc_crit_edge, %if.end45.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %86 = ptrtoint ptr %qe.0155 to i32
  call void @__asan_load4_noabort(i32 %86)
  %qe.0 = load ptr, ptr %qe.0155, align 4
  %cmp.i.not = icmp eq ptr %qe.0, %rport_q
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end38.for.end_crit_edge
  %plogi_accs92 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 25, i32 4
  %87 = ptrtoint ptr %plogi_accs92 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %plogi_accs92, align 4
  %inc93 = add i32 %88, 1
  store i32 %inc93, ptr %plogi_accs92, align 4
  tail call fastcc void @bfa_fcs_rport_update(ptr noundef %cbarg, ptr noundef %call)
  %sm94 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 15
  %89 = ptrtoint ptr %sm94 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sm94, align 8
  tail call void %90(ptr noundef %cbarg, i32 noundef 9) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then52, %if.end34, %if.then30, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fc_plogi_acc_build(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i64 noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_itnim_brp_online(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_rport_online(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_nsdisc_sent(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 1547, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 1548, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 1549, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %event, label %do.body [
    i32 9, label %entry.sw.bb_crit_edge
    i32 15, label %entry.sw.bb_crit_edge85
    i32 10, label %sw.bb8
    i32 7, label %sw.bb20
    i32 2, label %sw.bb22
    i32 5, label %sw.bb25
    i32 17, label %sw.bb33
    i32 8, label %entry.sw.epilog_crit_edge
    i32 4, label %sw.bb34
    i32 3, label %sw.bb35
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.bb_crit_edge85:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge85
  %17 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  %sm7 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %sm7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bfa_fcs_rport_sm_plogi_sending, ptr %sm7, align 8
  tail call void @bfa_fcs_rport_send_plogi(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %sm7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bfa_fcs_rport_sm_nsdisc_sending, ptr %sm7, align 8
  %ns_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 23
  %21 = ptrtoint ptr %ns_retries to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ns_retries, align 8
  tail call void @bfa_fcs_rport_send_nsdisc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %ns_retries9 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 23
  %22 = ptrtoint ptr %ns_retries9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ns_retries9, align 8
  %inc = add i32 %23, 1
  store i32 %inc, ptr %ns_retries9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %cmp = icmp slt i32 %inc, 5
  br i1 %cmp, label %if.then12, label %if.else14

if.then12:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %sm13 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %24 = ptrtoint ptr %sm13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @bfa_fcs_rport_sm_nsdisc_sending, ptr %sm13, align 8
  tail call void @bfa_fcs_rport_send_nsdisc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

if.else14:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid, align 4
  %old_pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 5
  %27 = ptrtoint ptr %old_pid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %old_pid, align 8
  store i32 0, ptr %pid, align 4
  %sm17 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %28 = ptrtoint ptr %sm17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm17, align 8
  %29 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fcs, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %timer_mod = getelementptr inbounds %struct.bfa_s, ptr %32, i32 0, i32 5
  %timer = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  %33 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod, ptr noundef %timer, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %33) #7
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm21 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %34 = ptrtoint ptr %sm21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @bfa_fcs_rport_sm_uninit, ptr %sm21, align 8
  %fcxp = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %35 = ptrtoint ptr %fcxp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fcxp, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %36) #7
  tail call fastcc void @bfa_fcs_rport_free(ptr noundef %rport)
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm23 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %37 = ptrtoint ptr %sm23 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @bfa_fcs_rport_sm_plogiacc_sending, ptr %sm23, align 8
  %fcxp24 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %38 = ptrtoint ptr %fcxp24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fcxp24, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %39) #7
  tail call void @bfa_fcs_rport_send_plogiacc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %pid, align 4
  %sm27 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %41 = ptrtoint ptr %sm27 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm27, align 8
  %fcxp28 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %42 = ptrtoint ptr %fcxp28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fcxp28, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %43) #7
  %44 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fcs, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %timer_mod31 = getelementptr inbounds %struct.bfa_s, ptr %47, i32 0, i32 5
  %timer32 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  %48 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod31, ptr noundef %timer32, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %48) #7
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_prlo_acc(ptr noundef %rport)
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_logo_acc(ptr noundef %rport)
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  %sm36 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %49 = ptrtoint ptr %sm36 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @bfa_fcs_rport_sm_fc4_fcs_online, ptr %sm36, align 8
  %fcxp37 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 21
  %50 = ptrtoint ptr %fcxp37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fcxp37, align 8
  tail call void @bfa_fcxp_discard(ptr noundef %51) #7
  %52 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i, label %sw.bb35.if.then.i_crit_edge, label %lor.lhs.false.i

sw.bb35.if.then.i_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb35
  %54 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %pwwn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %tobool1.not.i = icmp eq i64 %55, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge

lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_online_action.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb35.if.then.i_crit_edge
  %56 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fcs, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %trcmod.i, align 8
  %conv.i = zext i32 %53 to i64
  tail call void @__bfa_trc(ptr noundef %59, i32 noundef 2051, i32 noundef 2423, i64 noundef %conv.i) #7
  %60 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fcs, align 4
  %trcmod4.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %trcmod4.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %trcmod4.i, align 8
  %64 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pid, align 4
  %or.i = or i32 %65, -559087616
  %conv6.i = zext i32 %or.i to i64
  tail call void @__bfa_trc(ptr noundef %63, i32 noundef 2051, i32 noundef 2424, i64 noundef %conv6.i) #7
  %66 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pid, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2424, i32 noundef %67) #10
  br label %bfa_fcs_rport_fcs_online_action.exit

bfa_fcs_rport_fcs_online_action.exit:             ; preds = %if.then.i, %lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge
  %itnim.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %68 = ptrtoint ptr %itnim.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %itnim.i, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  tail call void %71(ptr noundef %69, i32 noundef 1) #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fcs, align 4
  %trcmod39 = getelementptr inbounds %struct.bfa_fcs_s, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %trcmod39 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %trcmod39, align 8
  %or = or i32 %event, -559087616
  %conv40 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %75, i32 noundef 2051, i32 noundef 1626, i64 noundef %conv40) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1626, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %bfa_fcs_rport_fcs_online_action.exit, %sw.bb34, %sw.bb33, %sw.bb25, %sw.bb22, %sw.bb20, %if.else14, %if.then12, %if.else, %if.then, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fc_gidpn_build(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_gidpn_response(ptr nocapture noundef readnone %fcsarg, ptr noundef %fcxp, ptr noundef %cbarg, i32 noundef %req_status, i32 noundef %rsp_len, i32 noundef %resid_len, ptr nocapture noundef readnone %rsp_fchs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 1958, i64 noundef %5) #7
  %call = tail call ptr @bfa_fcxp_get_rspbuf(ptr noundef %fcxp) #7
  %6 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %6, i32 16)
  %bf.load = load i128, ptr %call, align 1
  %7 = and i128 %bf.load, 18446462598732840960
  %cmp = icmp eq i128 %7, 9223934986808197120
  br i1 %cmp, label %if.then, label %if.end43

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.ct_hdr_s, ptr %call, i32 1
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %bf.load9 = load i32, ptr %add.ptr, align 1
  %bf.clear10 = and i32 %bf.load9, 16777215
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 4
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear10, i32 %10)
  %cmp11 = icmp eq i32 %bf.clear10, %10
  br i1 %cmp11, label %if.then.cleanup_crit_edge, label %if.else

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.then
  %port = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 1
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 8
  %rport_q = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %rport_q to i32
  call void @__asan_load4_noabort(i32 %13)
  %qe.089 = load ptr, ptr %rport_q, align 4
  %cmp.i.not91 = icmp eq ptr %qe.089, %rport_q
  br i1 %cmp.i.not91, label %if.else.for.end_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else.for.body_crit_edge
  %qe.092 = phi ptr [ %qe.0, %for.inc.for.body_crit_edge ], [ %qe.089, %if.else.for.body_crit_edge ]
  %cmp17 = icmp eq ptr %qe.092, %cbarg
  br i1 %cmp17, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %bf.load20 = load i32, ptr %add.ptr, align 1
  %bf.clear21 = and i32 %bf.load20, 16777215
  %pid22 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %qe.092, i32 0, i32 4
  %15 = ptrtoint ptr %pid22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear21, i32 %16)
  %cmp23 = icmp eq i32 %bf.clear21, %16
  br i1 %cmp23, label %if.then25, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fcs, align 4
  %trcmod27 = getelementptr inbounds %struct.bfa_fcs_s, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %trcmod27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %trcmod27, align 8
  %conv29 = zext i32 %bf.clear21 to i64
  tail call void @__bfa_trc(ptr noundef %20, i32 noundef 2051, i32 noundef 1982, i64 noundef %conv29) #7
  %21 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fcs, align 4
  %trcmod31 = getelementptr inbounds %struct.bfa_fcs_s, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %trcmod31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trcmod31, align 8
  %25 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid, align 4
  %conv33 = zext i32 %26 to i64
  tail call void @__bfa_trc(ptr noundef %24, i32 noundef 2051, i32 noundef 1983, i64 noundef %conv33) #7
  %27 = ptrtoint ptr %pid22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %pid22, align 4
  %sm35 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %qe.092, i32 0, i32 15
  %28 = ptrtoint ptr %sm35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sm35, align 8
  tail call void %29(ptr noundef %qe.092, i32 noundef 15) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then25, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %30 = ptrtoint ptr %qe.092 to i32
  call void @__asan_load4_noabort(i32 %30)
  %qe.0 = load ptr, ptr %qe.092, align 4
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port, align 8
  %rport_q15 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %32, i32 0, i32 8
  %cmp.i.not = icmp eq ptr %qe.0, %rport_q15
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else.for.end_crit_edge
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %bf.load38 = load i32, ptr %add.ptr, align 1
  %bf.clear39 = and i32 %bf.load38, 16777215
  %34 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %bf.clear39, ptr %pid, align 4
  br label %cleanup

if.end43:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %35 = and i128 %bf.load, 16711680
  %switch.selectcmp94 = icmp eq i128 %35, 327680
  %switch.select95 = select i1 %switch.selectcmp94, i32 11, i32 10
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %for.end, %if.then.cleanup_crit_edge
  %.sink = phi i32 [ 15, %for.end ], [ 9, %if.then.cleanup_crit_edge ], [ %switch.select95, %if.end43 ]
  %sm48 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 15
  %36 = ptrtoint ptr %sm48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sm48, align 8
  tail call void %37(ptr noundef %cbarg, i32 noundef %.sink) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fc_gpnid_build(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_gpnid_response(ptr nocapture noundef readnone %fcsarg, ptr noundef %fcxp, ptr noundef %cbarg, i32 noundef %req_status, i32 noundef %rsp_len, i32 noundef %resid_len, ptr nocapture noundef readnone %rsp_fchs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 2028, i64 noundef %5) #7
  %call = tail call ptr @bfa_fcxp_get_rspbuf(ptr noundef %fcxp) #7
  %6 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %6, i32 16)
  %bf.load = load i128, ptr %call, align 1
  %7 = and i128 %bf.load, 18446462598732840960
  %cmp = icmp eq i128 %7, 9223934986808197120
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = and i128 %bf.load, 16711680
  %switch.selectcmp32 = icmp eq i128 %8, 327680
  %switch.select33 = select i1 %switch.selectcmp32, i32 11, i32 10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %.sink = phi i32 [ 9, %entry.cleanup_crit_edge ], [ %switch.select33, %if.end ]
  %sm13 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %cbarg, i32 0, i32 15
  %9 = ptrtoint ptr %sm13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sm13, align 8
  tail call void %10(ptr noundef %cbarg, i32 noundef %.sink) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcport_set_tx_bbcredit(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcs_itnim_get_online_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fc_adisc_acc_build(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_itnim_is_initiator(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fc_prli_acc_build(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fc_rpsc_acc_build(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fc_ls_rjt_build(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rport_sm_nsdisc_retry(ptr noundef %rport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %4 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2051, i32 noundef 1483, i64 noundef %5) #7
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 4
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %conv = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 1484, i64 noundef %conv) #7
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv5 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2051, i32 noundef 1485, i64 noundef %conv5) #7
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %event, label %do.body [
    i32 11, label %sw.bb
    i32 8, label %entry.sw.bb6_crit_edge
    i32 15, label %entry.sw.bb6_crit_edge61
    i32 7, label %sw.bb8
    i32 2, label %sw.bb11
    i32 5, label %sw.bb14
    i32 4, label %sw.bb20
    i32 17, label %sw.bb21
    i32 3, label %sw.bb22
  ]

entry.sw.bb6_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_rport_sm_nsdisc_sending, ptr %sm, align 8
  tail call void @bfa_fcs_rport_send_nsdisc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge61
  %sm7 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %18 = ptrtoint ptr %sm7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bfa_fcs_rport_sm_nsdisc_sending, ptr %sm7, align 8
  %timer = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_stop(ptr noundef %timer) #7
  %ns_retries = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 23
  %19 = ptrtoint ptr %ns_retries to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ns_retries, align 8
  tail call void @bfa_fcs_rport_send_nsdisc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm9 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %20 = ptrtoint ptr %sm9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bfa_fcs_rport_sm_uninit, ptr %sm9, align 8
  %timer10 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_stop(ptr noundef %timer10) #7
  tail call fastcc void @bfa_fcs_rport_free(ptr noundef %rport)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm12 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %21 = ptrtoint ptr %sm12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @bfa_fcs_rport_sm_plogiacc_sending, ptr %sm12, align 8
  %timer13 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_stop(ptr noundef %timer13) #7
  tail call void @bfa_fcs_rport_send_plogiacc(ptr noundef %rport, ptr noundef null)
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %pid, align 4
  %sm16 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %23 = ptrtoint ptr %sm16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bfa_fcs_rport_sm_offline, ptr %sm16, align 8
  %timer17 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_stop(ptr noundef %timer17) #7
  %24 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fcs, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %timer_mod = getelementptr inbounds %struct.bfa_s, ptr %27, i32 0, i32 5
  %28 = load i32, ptr @bfa_fcs_rport_del_timeout, align 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod, ptr noundef %timer17, ptr noundef nonnull @bfa_fcs_rport_timeout, ptr noundef %rport, i32 noundef %28) #7
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_logo_acc(ptr noundef %rport)
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bfa_fcs_rport_send_prlo_acc(ptr noundef %rport)
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %sm23 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 15
  %29 = ptrtoint ptr %sm23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @bfa_fcs_rport_sm_fc4_fcs_online, ptr %sm23, align 8
  %timer24 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 16
  tail call void @bfa_timer_stop(ptr noundef %timer24) #7
  %30 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %sw.bb22.if.then.i_crit_edge, label %lor.lhs.false.i

sw.bb22.if.then.i_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb22
  %32 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %pwwn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool1.not.i = icmp eq i64 %33, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge

lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_fcs_rport_fcs_online_action.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb22.if.then.i_crit_edge
  %34 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fcs, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %trcmod.i, align 8
  %conv.i = zext i32 %31 to i64
  tail call void @__bfa_trc(ptr noundef %37, i32 noundef 2051, i32 noundef 2423, i64 noundef %conv.i) #7
  %38 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fcs, align 4
  %trcmod4.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %trcmod4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %trcmod4.i, align 8
  %42 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pid, align 4
  %or.i = or i32 %43, -559087616
  %conv6.i = zext i32 %or.i to i64
  tail call void @__bfa_trc(ptr noundef %41, i32 noundef 2051, i32 noundef 2424, i64 noundef %conv6.i) #7
  %44 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pid, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 2424, i32 noundef %45) #10
  br label %bfa_fcs_rport_fcs_online_action.exit

bfa_fcs_rport_fcs_online_action.exit:             ; preds = %if.then.i, %lor.lhs.false.i.bfa_fcs_rport_fcs_online_action.exit_crit_edge
  %itnim.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 17
  %46 = ptrtoint ptr %itnim.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %itnim.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  tail call void %49(ptr noundef %47, i32 noundef 1) #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fcs, align 4
  %trcmod26 = getelementptr inbounds %struct.bfa_fcs_s, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %trcmod26 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %trcmod26, align 8
  %or = or i32 %event, -559087616
  %conv27 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %53, i32 noundef 2051, i32 noundef 1536, i64 noundef %conv27) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1536, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %bfa_fcs_rport_fcs_online_action.exit, %sw.bb21, %sw.bb20, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb6, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @bfa_fcs_fabric_get_switch_oui(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rpf_sm_rpsc_sending(ptr noundef %rpf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rport1 = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 1
  %0 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rport1, align 4
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2051, i32 noundef 3173, i64 noundef %conv) #7
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %event, label %do.body [
    i32 3, label %sw.bb
    i32 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %rpf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bfa_fcs_rpf_sm_rpsc, ptr %rpf, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %rpf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bfa_fcs_rpf_sm_offline, ptr %rpf, align 4
  %9 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fcs, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %fcxp_wqe = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 4
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %12, ptr noundef %fcxp_wqe) #7
  %rpsc_retries = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 5
  %13 = ptrtoint ptr %rpsc_retries to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %rpsc_retries, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fcs, align 4
  %trcmod6 = getelementptr inbounds %struct.bfa_fcs_s, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %trcmod6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trcmod6, align 8
  %or = or i32 %event, -559087616
  %conv7 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %17, i32 noundef 2051, i32 noundef 3187, i64 noundef %conv7) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 3187, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb2, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rpf_send_rpsc2(ptr noundef %rpf_cbarg, ptr noundef %fcxp_alloced) #0 align 64 {
entry:
  %fchs = alloca %struct.fchs_s, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rport1 = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf_cbarg, i32 0, i32 1
  %0 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rport1, align 4
  %port2 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port2, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fchs) #7
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 2
  %4 = call ptr @memset(ptr %fchs, i32 255, i32 24)
  %5 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %8, i32 noundef 2051, i32 noundef 3369, i64 noundef %10) #7
  %tobool.not = icmp eq ptr %fcxp_alloced, null
  br i1 %tobool.not, label %cond.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cond.end:                                         ; preds = %entry
  %fcs3 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %fcs3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fcs3, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %call = tail call ptr @bfa_fcxp_req_rsp_alloc(ptr noundef null, ptr noundef %14, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1) #7
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %fcs3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fcs3, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %fcxp_wqe = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf_cbarg, i32 0, i32 4
  tail call void @bfa_fcxp_req_rsp_alloc_wait(ptr noundef %18, ptr noundef %fcxp_wqe, ptr noundef nonnull @bfa_fcs_rpf_send_rpsc2, ptr noundef %rpf_cbarg, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1) #7
  br label %cleanup

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  %cond38 = phi ptr [ %call, %cond.end.if.end_crit_edge ], [ %fcxp_alloced, %entry.if.end_crit_edge ]
  %fcxp7 = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf_cbarg, i32 0, i32 3
  %19 = ptrtoint ptr %fcxp7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cond38, ptr %fcxp7, align 4
  %call8 = tail call ptr @bfa_fcxp_get_reqbuf(ptr noundef nonnull %cond38) #7
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid, align 4
  %pid9 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %pid9 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 3)
  %bf.load = load i24, ptr %pid9, align 4
  %bf.cast = zext i24 %bf.load to i32
  %call11 = call zeroext i16 @fc_rpsc2_build(ptr noundef nonnull %fchs, ptr noundef %call8, i32 noundef %21, i32 noundef %bf.cast, ptr noundef %pid, i16 noundef zeroext 1) #7
  %conv = zext i16 %call11 to i32
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fabric, align 4
  %vf_id = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vf_id, align 2
  %lp_tag = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %3, i32 0, i32 6
  %27 = ptrtoint ptr %lp_tag to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %lp_tag, align 1
  call void @bfa_fcxp_send(ptr noundef nonnull %cond38, ptr noundef null, i16 noundef zeroext %26, i8 noundef zeroext %28, i32 noundef 0, i32 noundef 8, i32 noundef %conv, ptr noundef nonnull %fchs, ptr noundef nonnull @bfa_fcs_rpf_rpsc2_response, ptr noundef %rpf_cbarg, i32 noundef 2112, i8 noundef zeroext 20) #7
  %rpsc_sent = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 25, i32 23
  %29 = ptrtoint ptr %rpsc_sent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rpsc_sent, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %rpsc_sent, align 4
  %31 = ptrtoint ptr %rpf_cbarg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rpf_cbarg, align 4
  call void %32(ptr noundef %rpf_cbarg, i32 noundef 3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fchs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rpf_sm_rpsc(ptr noundef %rpf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rport1 = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 1
  %0 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rport1, align 4
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 4
  %conv = zext i32 %7 to i64
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2051, i32 noundef 3196, i64 noundef %conv) #7
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod3 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod3, align 8
  %conv4 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2051, i32 noundef 3197, i64 noundef %conv4) #7
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %event, label %do.body [
    i32 5, label %sw.bb
    i32 6, label %sw.bb13
    i32 7, label %sw.bb15
    i32 1, label %sw.bb24
  ]

sw.bb:                                            ; preds = %entry
  %13 = ptrtoint ptr %rpf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bfa_fcs_rpf_sm_online, ptr %rpf, align 4
  %rpsc_speed = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 6
  %14 = ptrtoint ptr %rpsc_speed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rpsc_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %bfa_rport = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %bfa_rport to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bfa_rport, align 4
  tail call void @bfa_rport_speed(ptr noundef %17, i32 noundef %15) #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %assigned_speed = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 7
  %18 = ptrtoint ptr %assigned_speed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %assigned_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp7.not = icmp eq i32 %19, 0
  br i1 %cmp7.not, label %if.else.sw.epilog_crit_edge, label %if.then9

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %bfa_rport10 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 20
  %20 = ptrtoint ptr %bfa_rport10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bfa_rport10, align 4
  tail call void @bfa_rport_speed(ptr noundef %21, i32 noundef %19) #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %rpf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @bfa_fcs_rpf_sm_online, ptr %rpf, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %rpsc_retries = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 5
  %23 = ptrtoint ptr %rpsc_retries to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rpsc_retries, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %rpsc_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp16 = icmp slt i32 %24, 3
  br i1 %cmp16, label %if.then18, label %if.else21

if.then18:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fcs, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %timer_mod = getelementptr inbounds %struct.bfa_s, ptr %28, i32 0, i32 5
  %timer = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 2
  tail call void @bfa_timer_begin(ptr noundef %timer_mod, ptr noundef %timer, ptr noundef nonnull @bfa_fcs_rpf_timeout, ptr noundef %rpf, i32 noundef 1000) #7
  %29 = ptrtoint ptr %rpf to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @bfa_fcs_rpf_sm_rpsc_retry, ptr %rpf, align 4
  br label %sw.epilog

if.else21:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %rpf to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @bfa_fcs_rpf_sm_online, ptr %rpf, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %rpf to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @bfa_fcs_rpf_sm_offline, ptr %rpf, align 4
  %fcxp = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 3
  %32 = ptrtoint ptr %fcxp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fcxp, align 4
  tail call void @bfa_fcxp_discard(ptr noundef %33) #7
  %rpsc_retries26 = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 5
  %34 = ptrtoint ptr %rpsc_retries26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %rpsc_retries26, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fcs, align 4
  %trcmod28 = getelementptr inbounds %struct.bfa_fcs_s, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %trcmod28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trcmod28, align 8
  %or = or i32 %event, -559087616
  %conv29 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %38, i32 noundef 2051, i32 noundef 3233, i64 noundef %conv29) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 3233, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb24, %if.else21, %if.then18, %sw.bb13, %if.then9, %if.else.sw.epilog_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rpf_sm_offline(ptr noundef %rpf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rport1 = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 1
  %0 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rport1, align 4
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2051, i32 noundef 3288, i64 noundef %7) #7
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod3 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod3, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 4
  %conv = zext i32 %13 to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2051, i32 noundef 3289, i64 noundef %conv) #7
  %14 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fcs, align 4
  %trcmod5 = getelementptr inbounds %struct.bfa_fcs_s, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %trcmod5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trcmod5, align 8
  %conv6 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %17, i32 noundef 2051, i32 noundef 3290, i64 noundef %conv6) #7
  %18 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %event, label %do.body [
    i32 2, label %sw.bb
    i32 1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %rpf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bfa_fcs_rpf_sm_rpsc_sending, ptr %rpf, align 4
  tail call void @bfa_fcs_rpf_send_rpsc2(ptr noundef %rpf, ptr noundef null)
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fcs, align 4
  %trcmod8 = getelementptr inbounds %struct.bfa_fcs_s, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %trcmod8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trcmod8, align 8
  %or = or i32 %event, -559087616
  %conv9 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %23, i32 noundef 2051, i32 noundef 3302, i64 noundef %conv9) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 3302, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rpf_sm_online(ptr nocapture noundef %rpf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rport1 = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 1
  %0 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rport1, align 4
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2051, i32 noundef 3268, i64 noundef %7) #7
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod3 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod3, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 4
  %conv = zext i32 %13 to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2051, i32 noundef 3269, i64 noundef %conv) #7
  %14 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fcs, align 4
  %trcmod5 = getelementptr inbounds %struct.bfa_fcs_s, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %trcmod5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trcmod5, align 8
  %conv6 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %17, i32 noundef 2051, i32 noundef 3270, i64 noundef %conv6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cond = icmp eq i32 %event, 1
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %rpf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bfa_fcs_rpf_sm_offline, ptr %rpf, align 4
  %rpsc_retries = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 5
  %19 = ptrtoint ptr %rpsc_retries to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rpsc_retries, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fcs, align 4
  %trcmod8 = getelementptr inbounds %struct.bfa_fcs_s, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %trcmod8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trcmod8, align 8
  %or = or i32 %event, -559087616
  %conv9 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %23, i32 noundef 2051, i32 noundef 3279, i64 noundef %conv9) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 3279, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_rport_speed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rpf_timeout(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rport1 = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rport1, align 4
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 4
  %conv = zext i32 %7 to i64
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2051, i32 noundef 3355, i64 noundef %conv) #7
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arg, align 4
  tail call void %9(ptr noundef %arg, i32 noundef 4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rpf_sm_rpsc_retry(ptr noundef %rpf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rport1 = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 1
  %0 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rport1, align 4
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 4
  %conv = zext i32 %7 to i64
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2051, i32 noundef 3242, i64 noundef %conv) #7
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod3 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod3, align 8
  %conv4 = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2051, i32 noundef 3243, i64 noundef %conv4) #7
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %event, label %do.body [
    i32 4, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %rpf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bfa_fcs_rpf_sm_rpsc_sending, ptr %rpf, align 4
  tail call void @bfa_fcs_rpf_send_rpsc2(ptr noundef %rpf, ptr noundef null)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %timer = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 2
  tail call void @bfa_timer_stop(ptr noundef %timer) #7
  %14 = ptrtoint ptr %rpf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @bfa_fcs_rpf_sm_offline, ptr %rpf, align 4
  %rpsc_retries = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %rpf, i32 0, i32 5
  %15 = ptrtoint ptr %rpsc_retries to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rpsc_retries, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fcs, align 4
  %trcmod8 = getelementptr inbounds %struct.bfa_fcs_s, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %trcmod8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trcmod8, align 8
  %or = or i32 %event, -559087616
  %conv9 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %19, i32 noundef 2051, i32 noundef 3259, i64 noundef %conv9) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 3259, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb5, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fc_rpsc2_build(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_rpf_rpsc2_response(ptr nocapture noundef readnone %fcsarg, ptr noundef %fcxp, ptr noundef %cbarg, i32 noundef %req_status, i32 noundef %rsp_len, i32 noundef %resid_len, ptr nocapture noundef readnone %rsp_fchs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rport1 = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %cbarg, i32 0, i32 1
  %0 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rport1, align 4
  %fcs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %req_status to i64
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2051, i32 noundef 3402, i64 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %req_status)
  %cmp.not = icmp eq i32 %req_status, 0
  br i1 %cmp.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod4, align 8
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2051, i32 noundef 3405, i64 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %req_status)
  %cmp6 = icmp eq i32 %req_status, 5
  br i1 %cmp6, label %if.then8, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %rpsc_failed = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 25, i32 25
  %10 = ptrtoint ptr %rpsc_failed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rpsc_failed, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %rpsc_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %12 = ptrtoint ptr %cbarg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cbarg, align 4
  tail call void %13(ptr noundef %cbarg, i32 noundef 7) #7
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call = tail call ptr @bfa_fcxp_get_rspbuf(ptr noundef %fcxp) #7
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp11 = icmp eq i8 %15, 2
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end9
  %rpsc_accs = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 25, i32 24
  %16 = ptrtoint ptr %rpsc_accs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rpsc_accs, align 4
  %inc15 = add i32 %17, 1
  store i32 %inc15, ptr %rpsc_accs, align 4
  %num_pids = getelementptr inbounds %struct.fc_rpsc2_acc_s, ptr %call, i32 0, i32 2
  %18 = ptrtoint ptr %num_pids to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %num_pids, align 1
  %20 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fcs, align 4
  %trcmod17 = getelementptr inbounds %struct.bfa_fcs_s, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %trcmod17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trcmod17, align 8
  %conv18 = zext i16 %19 to i64
  tail call void @__bfa_trc(ptr noundef %23, i32 noundef 2051, i32 noundef 3416, i64 noundef %conv18) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp20.not = icmp eq i16 %19, 0
  br i1 %cmp20.not, label %if.then13.cleanup_crit_edge, label %if.then22

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22:                                        ; preds = %if.then13
  %port_info = getelementptr inbounds %struct.fc_rpsc2_acc_s, ptr %call, i32 0, i32 3
  %24 = ptrtoint ptr %port_info to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %port_info, align 1
  %pid23 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %pid23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp24.not = icmp eq i32 %25, %27
  br i1 %cmp24.not, label %if.then22.if.end39_crit_edge, label %do.end, !prof !180

if.then22.if.end39_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3419, i32 noundef 9, ptr noundef null) #7
  br label %if.end39

if.end39:                                         ; preds = %do.end, %if.then22.if.end39_crit_edge
  %28 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fcs, align 4
  %trcmod47 = getelementptr inbounds %struct.bfa_fcs_s, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %trcmod47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trcmod47, align 8
  %32 = ptrtoint ptr %port_info to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %port_info, align 1
  %conv51 = zext i32 %33 to i64
  tail call void @__bfa_trc(ptr noundef %31, i32 noundef 2051, i32 noundef 3421, i64 noundef %conv51) #7
  %34 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fcs, align 4
  %trcmod53 = getelementptr inbounds %struct.bfa_fcs_s, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %trcmod53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %trcmod53, align 8
  %speed = getelementptr inbounds %struct.fc_rpsc2_acc_s, ptr %call, i32 0, i32 3, i32 0, i32 5
  %38 = ptrtoint ptr %speed to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %speed, align 1
  %conv56 = zext i16 %39 to i64
  tail call void @__bfa_trc(ptr noundef %37, i32 noundef 2051, i32 noundef 3423, i64 noundef %conv56) #7
  %40 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fcs, align 4
  %trcmod58 = getelementptr inbounds %struct.bfa_fcs_s, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %trcmod58 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %trcmod58, align 8
  %index = getelementptr inbounds %struct.fc_rpsc2_acc_s, ptr %call, i32 0, i32 3, i32 0, i32 2
  %44 = ptrtoint ptr %index to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %index, align 1
  %conv61 = zext i16 %45 to i64
  tail call void @__bfa_trc(ptr noundef %43, i32 noundef 2051, i32 noundef 3425, i64 noundef %conv61) #7
  %46 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fcs, align 4
  %trcmod63 = getelementptr inbounds %struct.bfa_fcs_s, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %trcmod63 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %trcmod63, align 8
  %type = getelementptr inbounds %struct.fc_rpsc2_acc_s, ptr %call, i32 0, i32 3, i32 0, i32 4
  %50 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %type, align 1
  %conv66 = zext i8 %51 to i64
  tail call void @__bfa_trc(ptr noundef %49, i32 noundef 2051, i32 noundef 3427, i64 noundef %conv66) #7
  %52 = ptrtoint ptr %speed to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %speed, align 1
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %53, label %sw.default.i [
    i16 0, label %if.then73
    i16 -32768, label %if.end39.fc_rpsc_operspeed_to_bfa_speed.exit_crit_edge
    i16 16384, label %sw.bb1.i
    i16 8192, label %sw.bb2.i
    i16 2048, label %sw.bb3.i
    i16 1024, label %sw.bb4.i
    i16 4096, label %sw.bb5.i
  ]

if.end39.fc_rpsc_operspeed_to_bfa_speed.exit_crit_edge: ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc_rpsc_operspeed_to_bfa_speed.exit

if.then73:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %cbarg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cbarg, align 4
  tail call void %56(ptr noundef %cbarg, i32 noundef 7) #7
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc_rpsc_operspeed_to_bfa_speed.exit

sw.bb2.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc_rpsc_operspeed_to_bfa_speed.exit

sw.bb3.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc_rpsc_operspeed_to_bfa_speed.exit

sw.bb4.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc_rpsc_operspeed_to_bfa_speed.exit

sw.bb5.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc_rpsc_operspeed_to_bfa_speed.exit

sw.default.i:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc_rpsc_operspeed_to_bfa_speed.exit

fc_rpsc_operspeed_to_bfa_speed.exit:              ; preds = %sw.default.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end39.fc_rpsc_operspeed_to_bfa_speed.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.default.i ], [ 10, %sw.bb5.i ], [ 16, %sw.bb4.i ], [ 8, %sw.bb3.i ], [ 4, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ 1, %if.end39.fc_rpsc_operspeed_to_bfa_speed.exit_crit_edge ]
  %rpsc_speed = getelementptr inbounds %struct.bfa_fcs_rpf_s, ptr %cbarg, i32 0, i32 6
  %57 = ptrtoint ptr %rpsc_speed to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %retval.0.i, ptr %rpsc_speed, align 4
  %58 = ptrtoint ptr %cbarg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cbarg, align 4
  tail call void %59(ptr noundef %cbarg, i32 noundef 5) #7
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %call83 = tail call ptr @bfa_fcxp_get_rspbuf(ptr noundef %fcxp) #7
  %60 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fcs, align 4
  %trcmod85 = getelementptr inbounds %struct.bfa_fcs_s, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %trcmod85 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %trcmod85, align 8
  %reason_code = getelementptr inbounds %struct.fc_ls_rjt_s, ptr %call83, i32 0, i32 1
  %64 = ptrtoint ptr %reason_code to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %bf.load = load i32, ptr %reason_code, align 1
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %conv86 = zext i32 %bf.clear to i64
  tail call void @__bfa_trc(ptr noundef %63, i32 noundef 2051, i32 noundef 3441, i64 noundef %conv86) #7
  %65 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fcs, align 4
  %trcmod88 = getelementptr inbounds %struct.bfa_fcs_s, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %trcmod88 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %trcmod88, align 8
  %69 = ptrtoint ptr %reason_code to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %bf.load89 = load i32, ptr %reason_code, align 1
  %bf.lshr90 = lshr i32 %bf.load89, 8
  %bf.clear91 = and i32 %bf.lshr90, 255
  %conv92 = zext i32 %bf.clear91 to i64
  tail call void @__bfa_trc(ptr noundef %68, i32 noundef 2051, i32 noundef 3442, i64 noundef %conv92) #7
  %rpsc_rejects = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 25, i32 22
  %70 = ptrtoint ptr %rpsc_rejects to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rpsc_rejects, align 4
  %inc94 = add i32 %71, 1
  store i32 %inc94, ptr %rpsc_rejects, align 4
  %72 = ptrtoint ptr %reason_code to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %bf.load96 = load i32, ptr %reason_code, align 1
  %73 = and i32 %bf.load96, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 720896, i32 %73)
  %cmp99 = icmp eq i32 %73, 720896
  %74 = ptrtoint ptr %cbarg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cbarg, align 4
  br i1 %cmp99, label %if.then101, label %if.else103

if.then101:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %75(ptr noundef %cbarg, i32 noundef 6) #7
  br label %cleanup

if.else103:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %75(ptr noundef %cbarg, i32 noundef 7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else103, %if.then101, %fc_rpsc_operspeed_to_bfa_speed.exit, %if.then73, %if.then13.cleanup_crit_edge, %if.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !139, !140, !141, !143, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = distinct !{null, !1, !"__trc_fileno", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 20, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 2337, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 201, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @bfa_fcs_rport_sm_uninit._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @bfa_fcs_rport_sm_uninit._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 262, i32 3}
!11 = !{ptr @bfa_fcs_rport_sm_plogi_sending._entry, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @bfa_fcs_rport_sm_plogi_sending._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 504, i32 3}
!15 = !{ptr @bfa_fcs_rport_sm_plogi._entry, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @bfa_fcs_rport_sm_plogi._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 568, i32 3}
!19 = !{ptr @bfa_fcs_rport_sm_fc4_fcs_online._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @bfa_fcs_rport_sm_fc4_fcs_online._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 672, i32 3}
!23 = !{ptr @bfa_fcs_rport_sm_online._entry, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @bfa_fcs_rport_sm_online._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 722, i32 3}
!27 = !{ptr @bfa_fcs_rport_sm_nsquery_sending._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @bfa_fcs_rport_sm_nsquery_sending._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 781, i32 3}
!31 = !{ptr @bfa_fcs_rport_sm_nsquery._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @bfa_fcs_rport_sm_nsquery._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 832, i32 3}
!35 = !{ptr @bfa_fcs_rport_sm_adisc_online_sending._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @bfa_fcs_rport_sm_adisc_online_sending._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 893, i32 3}
!39 = !{ptr @bfa_fcs_rport_sm_adisc_online._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @bfa_fcs_rport_sm_adisc_online._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 2489, i32 4}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @bfa_fcs_rport_hal_offline_action._entry, !42, !"_entry", i1 false, i1 false}
!47 = !{ptr @bfa_fcs_rport_hal_offline_action._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 2496, i32 4}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @bfa_fcs_rport_hal_offline_action._entry.15, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @bfa_fcs_rport_hal_offline_action._entry_ptr.18, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/bfa/bfa_cs.h", i32 296, i32 19}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 1058, i32 3}
!57 = !{ptr @bfa_fcs_rport_sm_fc4_logosend._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @bfa_fcs_rport_sm_fc4_logosend._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 1305, i32 3}
!61 = !{ptr @bfa_fcs_rport_sm_hcb_logosend._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @bfa_fcs_rport_sm_hcb_logosend._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 1346, i32 3}
!65 = !{ptr @bfa_fcs_rport_sm_logo_sending._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @bfa_fcs_rport_sm_logo_sending._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 1684, i32 3}
!69 = !{ptr @bfa_fcs_rport_sm_delete_pending._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @bfa_fcs_rport_sm_delete_pending._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 1654, i32 3}
!73 = !{ptr @bfa_fcs_rport_sm_fc4_off_delete._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @bfa_fcs_rport_sm_fc4_off_delete._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 1108, i32 3}
!77 = !{ptr @bfa_fcs_rport_sm_fc4_offline._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @bfa_fcs_rport_sm_fc4_offline._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 1188, i32 3}
!81 = !{ptr @bfa_fcs_rport_sm_hcb_offline._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @bfa_fcs_rport_sm_hcb_offline._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 934, i32 3}
!85 = !{ptr @bfa_fcs_rport_sm_adisc_offline_sending._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @bfa_fcs_rport_sm_adisc_offline_sending._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 982, i32 3}
!89 = !{ptr @bfa_fcs_rport_sm_adisc_offline._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @bfa_fcs_rport_sm_adisc_offline._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 1021, i32 3}
!93 = !{ptr @bfa_fcs_rport_sm_fc4_logorcv._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @bfa_fcs_rport_sm_fc4_logorcv._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.30, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 1266, i32 3}
!97 = !{ptr @bfa_fcs_rport_sm_hcb_logorcv._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @bfa_fcs_rport_sm_hcb_logorcv._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 2424, i32 3}
!101 = !{ptr @bfa_fcs_rport_fcs_online_action._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @bfa_fcs_rport_fcs_online_action._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 399, i32 3}
!105 = !{ptr @bfa_fcs_rport_sm_plogi_retry._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @bfa_fcs_rport_sm_plogi_retry._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 1415, i32 3}
!109 = !{ptr @bfa_fcs_rport_sm_offline._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @bfa_fcs_rport_sm_offline._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 328, i32 3}
!113 = !{ptr @bfa_fcs_rport_sm_plogiacc_sending._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @bfa_fcs_rport_sm_plogiacc_sending._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.35, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 620, i32 3}
!117 = !{ptr @bfa_fcs_rport_sm_hal_online._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @bfa_fcs_rport_sm_hal_online._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.36, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 2442, i32 3}
!121 = !{ptr @bfa_fcs_rport_hal_online_action._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @bfa_fcs_rport_hal_online_action._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.38, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 2454, i32 3}
!125 = !{ptr @bfa_fcs_rport_hal_online_action._entry.37, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @bfa_fcs_rport_hal_online_action._entry_ptr.39, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 1472, i32 3}
!129 = !{ptr @bfa_fcs_rport_sm_nsdisc_sending._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @bfa_fcs_rport_sm_nsdisc_sending._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 1626, i32 3}
!133 = !{ptr @bfa_fcs_rport_sm_nsdisc_sent._entry, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @bfa_fcs_rport_sm_nsdisc_sent._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @rport_sm_table, !136, !"rport_sm_table", i1 false, i1 false}
!136 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 139, i32 30}
!137 = !{ptr @.str.42, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 1536, i32 3}
!139 = !{ptr @bfa_fcs_rport_sm_nsdisc_retry._entry, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @bfa_fcs_rport_sm_nsdisc_retry._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @bfa_fcs_rport_del_timeout, !142, !"bfa_fcs_rport_del_timeout", i1 false, i1 false}
!142 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 23, i32 1}
!143 = !{ptr @bfa_fcs_rport_max_logins, !144, !"bfa_fcs_rport_max_logins", i1 false, i1 false}
!144 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 29, i32 12}
!145 = !{ptr @.str.43, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 3164, i32 3}
!147 = !{ptr @bfa_fcs_rpf_sm_uninit._entry, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @bfa_fcs_rpf_sm_uninit._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.44, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 3187, i32 3}
!151 = !{ptr @bfa_fcs_rpf_sm_rpsc_sending._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @bfa_fcs_rpf_sm_rpsc_sending._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.45, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 3233, i32 3}
!155 = !{ptr @bfa_fcs_rpf_sm_rpsc._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @bfa_fcs_rpf_sm_rpsc._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.46, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 3279, i32 3}
!159 = !{ptr @bfa_fcs_rpf_sm_online._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @bfa_fcs_rpf_sm_online._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.47, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 3259, i32 3}
!163 = !{ptr @bfa_fcs_rpf_sm_rpsc_retry._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @bfa_fcs_rpf_sm_rpsc_retry._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.48, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/bfa/bfa_fcs_rport.c", i32 3302, i32 3}
!167 = !{ptr @bfa_fcs_rpf_sm_offline._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @bfa_fcs_rpf_sm_offline._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{!"auto-init"}
!179 = !{!"branch_weights", i32 1, i32 2000}
!180 = !{!"branch_weights", i32 2000, i32 1}
