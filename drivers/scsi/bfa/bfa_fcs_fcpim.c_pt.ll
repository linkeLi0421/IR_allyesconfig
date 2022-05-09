; ModuleID = '/llk/IR_all_yes/drivers/scsi/bfa/bfa_fcs_fcpim.c_pt.bc'
source_filename = "../drivers/scsi/bfa/bfa_fcs_fcpim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bfa_sm_table_s = type { ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bfa_fcs_rport_s = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i64, i64, %struct.bfa_rport_symname_s, ptr, %struct.bfa_timer_s, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.bfa_fcxp_wqe_s, %struct.bfa_rport_stats_s, i32, %struct.bfa_fcs_rpf_s, i32 }
%struct.list_head = type { ptr, ptr }
%struct.bfa_rport_symname_s = type { [255 x i8] }
%struct.bfa_timer_s = type { %struct.list_head, ptr, ptr, i32 }
%struct.bfa_fcxp_wqe_s = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.bfa_rport_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bfa_rport_hal_stats_s }
%struct.bfa_rport_hal_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_fcs_rpf_s = type { ptr, ptr, %struct.bfa_timer_s, ptr, %struct.bfa_fcxp_wqe_s, i32, i32, i32 }
%struct.bfa_fcs_lport_s = type { %struct.list_head, ptr, ptr, %struct.bfa_lport_cfg_s, %struct.bfa_timer_s, [3 x i8], i8, i16, %struct.list_head, ptr, %union.bfa_fcs_lport_topo_u, ptr, ptr, ptr, %struct.bfa_fcxp_wqe_s, %struct.bfa_lport_stats_s, %struct.bfa_wc_s }
%struct.bfa_lport_cfg_s = type { i64, i64, %struct.bfa_lport_symname_s, %struct.bfa_lport_symname_s, i32, i32, i32, [16 x i8], [4 x i8] }
%struct.bfa_lport_symname_s = type { [128 x i8] }
%union.bfa_fcs_lport_topo_u = type { %struct.bfa_fcs_lport_n2n_s, [320 x i8] }
%struct.bfa_fcs_lport_n2n_s = type { i32, i16, i64 }
%struct.bfa_lport_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_wc_s = type { ptr, ptr, i32 }
%struct.bfa_fcs_s = type { ptr, ptr, ptr, i32, i32, i32, i16, %struct.bfa_fcs_driver_info_s, %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_stats_s, %struct.bfa_wc_s, i32, i32 }
%struct.bfa_fcs_driver_info_s = type { [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8] }
%struct.bfa_fcs_fabric_s = type { %struct.list_head, ptr, ptr, %struct.bfa_fcs_lport_s, i32, i32, i8, i8, i8, i16, i16, i16, i16, %struct.list_head, %struct.list_head, ptr, %struct.bfa_timer_s, i64, i32, %struct.bfa_timer_s, %union.anon.90, %struct.bfa_wc_s, %struct.bfa_vf_stats_s, ptr, [16 x i8], %struct.bfa_wc_s }
%union.anon.90 = type { i16 }
%struct.bfa_vf_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_fcs_stats_s = type { %struct.anon.91 }
%struct.anon.91 = type { i32, i32, i32 }
%struct.bfa_fcs_itnim_s = type { ptr, ptr, ptr, ptr, %struct.bfa_timer_s, ptr, i32, i32, i32, i32, i32, %struct.bfa_fcxp_wqe_s, ptr, %struct.bfa_itnim_stats_s }
%struct.bfa_itnim_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfad_itnim_s = type { %struct.list_head, %struct.bfa_fcs_itnim_s, %struct.work_struct, i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bfa_itnim_attr_s = type { i32, i8, i8, i8, i8 }
%struct.fchs_s = type { [12 x i8], i8, i8, i16, i16, i16, i32 }
%struct.bfa_s = type { ptr, ptr, ptr, %struct.bfa_ioc_s, %struct.bfa_iocfc_s, %struct.bfa_timer_mod_s, %struct.bfa_modules_s, %struct.list_head, i32, [4 x %struct.list_head], i32, %struct.bfa_msix_s, i32, i32 }
%struct.bfa_ioc_s = type { ptr, ptr, %struct.bfa_pcidev_s, ptr, %struct.bfa_timer_s, %struct.bfa_timer_s, %struct.bfa_timer_s, i32, %struct.list_head, ptr, i32, i32, i32, %struct.bfa_ioc_regs_s, ptr, %struct.bfa_ioc_drv_stats_s, i32, i32, i32, i8, %struct.bfa_dma_s, ptr, ptr, %struct.bfa_ioc_mbox_mod_s, ptr, %struct.bfa_iocpf_s, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.bfa_pcidev_s = type { i32, i8, i16, i16, ptr }
%struct.bfa_ioc_regs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bfa_ioc_drv_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_dma_s = type { ptr, i64 }
%struct.bfa_ioc_mbox_mod_s = type { %struct.list_head, i32, [35 x %struct.anon.1] }
%struct.anon.1 = type { ptr, ptr }
%struct.bfa_iocpf_s = type { ptr, ptr, i32, i32, i32 }
%struct.bfa_iocfc_s = type { ptr, ptr, %struct.bfa_iocfc_cfg_s, [4 x i32], [4 x i32], [4 x i8], %struct.bfa_cb_qe_s, %struct.bfa_cb_qe_s, %struct.bfa_cb_qe_s, %struct.bfa_cb_qe_s, %struct.bfa_cb_qe_s, i32, i32, i32, %struct.bfa_dma_s, ptr, %struct.bfa_dma_s, ptr, [4 x %struct.bfa_dma_s], [4 x %struct.bfa_dma_s], [4 x %struct.bfa_dma_s], [4 x %struct.bfa_dma_s], %struct.bfa_iocfc_regs_s, %struct.bfa_hwif_s, ptr, ptr, i32, %struct.bfa_faa_args_s, %struct.bfa_mem_dma_s, %struct.bfa_mem_dma_s, [4 x %struct.bfa_mem_dma_s], [4 x %struct.bfa_mem_dma_s], %struct.bfa_mem_kva_s }
%struct.bfa_iocfc_cfg_s = type { %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_drvcfg_s }
%struct.bfa_iocfc_fwcfg_s = type { i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, [6 x i8] }
%struct.bfa_iocfc_drvcfg_s = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i16, i32 }
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
%struct.bfad_s = type { ptr, %struct.list_head, %struct.bfa_s, %struct.bfa_fcs_s, ptr, ptr, %struct.bfa_pcidev_s, %struct.bfa_ioc_pci_attr_s, ptr, ptr, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i32, %struct.bfad_port_s, %struct.bfa_meminfo_s, %struct.bfa_iocfc_cfg_s, i32, i32, %struct.spinlock, ptr, %struct.bfad_cfg_param_s, [22 x %struct.bfad_msix_s], i32, [64 x i8], [64 x i8], %struct.timer_list, i32, ptr, ptr, %struct.bfa_plog_s, i32, %union.bfad_tmp_buf, %struct.fc_host_statistics, %struct.list_head, ptr, i32, [5 x ptr], %struct.list_head, %struct.list_head, [512 x %struct.bfa_aen_entry_s], %struct.spinlock, %struct.list_head }
%struct.bfa_ioc_pci_attr_s = type { i16, i16, i16, i16, i32, i32, [8 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.bfad_port_s = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.bfa_meminfo_s = type { %struct.bfa_mem_dma_s, %struct.bfa_mem_kva_s }
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
%struct.bfa_rport_aen_data_s = type { i16, [3 x i16], i64, i64, i64, %union.anon.93 }
%union.anon.93 = type { %struct.bfa_rport_qos_attr_s }
%struct.bfa_rport_qos_attr_s = type { i8, [3 x i8], i32 }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
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
%struct.timespec64 = type { i64, i32 }
%struct.bfad_im_s = type { ptr, ptr, [20 x i8], %struct.work_struct }
%struct.fc_prli_s = type { i32, %struct.fc_prli_params_page_s }
%struct.fc_prli_params_page_s = type { i32, i32, i32, %struct.fc_prli_params_s }
%struct.fc_prli_params_s = type { i32 }
%struct.fc_ls_rjt_s = type { %struct.fc_els_cmd_s, i32 }
%struct.fc_els_cmd_s = type { i32 }

@itnim_sm_table = internal constant { [8 x %struct.bfa_sm_table_s], [32 x i8] } { [8 x %struct.bfa_sm_table_s] [%struct.bfa_sm_table_s { ptr @bfa_fcs_itnim_sm_offline, i32 0, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_itnim_sm_prli_send, i32 1, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_itnim_sm_prli, i32 2, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_itnim_sm_prli_retry, i32 3, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_itnim_sm_hcb_online, i32 4, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_itnim_sm_online, i32 5, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_itnim_sm_hcb_offline, i32 6, ptr null }, %struct.bfa_sm_table_s { ptr @bfa_fcs_itnim_sm_initiator, i32 7, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/scsi/bfa/bfa_fcs_fcpim.c\00", [63 x i8] zeroinitializer }, align 32
@bfa_fcs_itnim_sm_offline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Assertion failure: %s:%d: %d\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bfa_fcs_itnim_sm_offline\00", [39 x i8] zeroinitializer }, align 32
@bfa_fcs_itnim_sm_offline._entry_ptr = internal global ptr @bfa_fcs_itnim_sm_offline._entry, section ".printk_index", align 4
@bfa_fcs_itnim_sm_prli_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.3, ptr @.str, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bfa_fcs_itnim_sm_prli_send\00", [37 x i8] zeroinitializer }, align 32
@bfa_fcs_itnim_sm_prli_send._entry_ptr = internal global ptr @bfa_fcs_itnim_sm_prli_send._entry, section ".printk_index", align 4
@bfa_fcs_itnim_sm_prli._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.4, ptr @.str, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bfa_fcs_itnim_sm_prli\00", [42 x i8] zeroinitializer }, align 32
@bfa_fcs_itnim_sm_prli._entry_ptr = internal global ptr @bfa_fcs_itnim_sm_prli._entry, section ".printk_index", align 4
@bfa_fcs_itnim_sm_hal_rport_online._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.5, ptr @.str, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bfa_fcs_itnim_sm_hal_rport_online\00", [62 x i8] zeroinitializer }, align 32
@bfa_fcs_itnim_sm_hal_rport_online._entry_ptr = internal global ptr @bfa_fcs_itnim_sm_hal_rport_online._entry, section ".printk_index", align 4
@bfa_log_level = external dso_local local_unnamed_addr global i32, align 4
@bfa_fcs_itnim_sm_hcb_online._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 291, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Target (WWN = %s) is online for initiator (WWN = %s)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bfa_fcs_itnim_sm_hcb_online\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bfa_fcs_itnim_sm_hcb_online._entry_ptr = internal global ptr @bfa_fcs_itnim_sm_hcb_online._entry, section ".printk_index", align 4
@bfa_fcs_itnim_sm_hcb_online._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.7, ptr @.str, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bfa_fcs_itnim_sm_hcb_online._entry_ptr.11 = internal global ptr @bfa_fcs_itnim_sm_hcb_online._entry.10, section ".printk_index", align 4
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@bfa_fcs_itnim_sm_online._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 331, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Target (WWN = %s) connectivity lost for initiator (WWN = %s)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bfa_fcs_itnim_sm_online\00", [40 x i8] zeroinitializer }, align 32
@bfa_fcs_itnim_sm_online._entry_ptr = internal global ptr @bfa_fcs_itnim_sm_online._entry, section ".printk_index", align 4
@bfa_fcs_itnim_sm_online._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str, i32 336, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Target (WWN = %s) offlined by initiator (WWN = %s)\0A\00", [44 x i8] zeroinitializer }, align 32
@bfa_fcs_itnim_sm_online._entry_ptr.17 = internal global ptr @bfa_fcs_itnim_sm_online._entry.15, section ".printk_index", align 4
@bfa_fcs_itnim_sm_online._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.14, ptr @.str, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bfa_fcs_itnim_sm_online._entry_ptr.19 = internal global ptr @bfa_fcs_itnim_sm_online._entry.18, section ".printk_index", align 4
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\00", [56 x i8] zeroinitializer }, align 32
@bfa_fcs_itnim_sm_hcb_offline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.21, ptr @.str, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bfa_fcs_itnim_sm_hcb_offline\00", [35 x i8] zeroinitializer }, align 32
@bfa_fcs_itnim_sm_hcb_offline._entry_ptr = internal global ptr @bfa_fcs_itnim_sm_hcb_offline._entry, section ".printk_index", align 4
@bfa_fcs_itnim_sm_prli_retry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.22, ptr @.str, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bfa_fcs_itnim_sm_prli_retry\00", [36 x i8] zeroinitializer }, align 32
@bfa_fcs_itnim_sm_prli_retry._entry_ptr = internal global ptr @bfa_fcs_itnim_sm_prli_retry._entry, section ".printk_index", align 4
@bfa_fcs_itnim_sm_initiator._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.23, ptr @.str, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bfa_fcs_itnim_sm_initiator\00", [37 x i8] zeroinitializer }, align 32
@bfa_fcs_itnim_sm_initiator._entry_ptr = internal global ptr @bfa_fcs_itnim_sm_initiator._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 9, i64 10]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 5, i64 9, i64 10]
@__sancov_gen_cov_switch_values.26 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 4, i64 5, i64 9, i64 10, i64 12]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 10, i64 13]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 6, i64 9, i64 10]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 8, i64 10]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 10]
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"itnim_sm_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 55, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 753, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 97, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 133, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 185, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 223, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 289, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 306, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 329, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 334, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 347, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [29 x i8] c"../drivers/scsi/bfa/bfa_cs.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 296, i32 19 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 370, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 268, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private constant [36 x i8] c"../drivers/scsi/bfa/bfa_fcs_fcpim.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 409, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @bfa_fcs_itnim_sm_hal_rport_online._entry, ptr @bfa_fcs_itnim_sm_hal_rport_online._entry_ptr, ptr @bfa_fcs_itnim_sm_hcb_offline._entry, ptr @bfa_fcs_itnim_sm_hcb_offline._entry_ptr, ptr @bfa_fcs_itnim_sm_hcb_online._entry, ptr @bfa_fcs_itnim_sm_hcb_online._entry.10, ptr @bfa_fcs_itnim_sm_hcb_online._entry_ptr, ptr @bfa_fcs_itnim_sm_hcb_online._entry_ptr.11, ptr @bfa_fcs_itnim_sm_initiator._entry, ptr @bfa_fcs_itnim_sm_initiator._entry_ptr, ptr @bfa_fcs_itnim_sm_offline._entry, ptr @bfa_fcs_itnim_sm_offline._entry_ptr, ptr @bfa_fcs_itnim_sm_online._entry, ptr @bfa_fcs_itnim_sm_online._entry.15, ptr @bfa_fcs_itnim_sm_online._entry.18, ptr @bfa_fcs_itnim_sm_online._entry_ptr, ptr @bfa_fcs_itnim_sm_online._entry_ptr.17, ptr @bfa_fcs_itnim_sm_online._entry_ptr.19, ptr @bfa_fcs_itnim_sm_prli._entry, ptr @bfa_fcs_itnim_sm_prli._entry_ptr, ptr @bfa_fcs_itnim_sm_prli_retry._entry, ptr @bfa_fcs_itnim_sm_prli_retry._entry_ptr, ptr @bfa_fcs_itnim_sm_prli_send._entry, ptr @bfa_fcs_itnim_sm_prli_send._entry_ptr, ptr @itnim_sm_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itnim_sm_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_itnim_sm_offline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_itnim_sm_prli_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_itnim_sm_prli._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_itnim_sm_hal_rport_online._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_itnim_sm_hcb_online._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_itnim_sm_hcb_online._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_itnim_sm_online._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_itnim_sm_online._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_itnim_sm_online._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_itnim_sm_hcb_offline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_itnim_sm_prli_retry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_itnim_sm_initiator._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bfa_fcs_itnim_create(ptr noundef %rport) local_unnamed_addr #0 align 64 {
entry:
  %itnim = alloca ptr, align 4
  %itnim_drv = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %itnim) #5
  %2 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %itnim, align 4, !annotation !69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %itnim_drv) #5
  %3 = ptrtoint ptr %itnim_drv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %itnim_drv, align 4, !annotation !69
  %fcs = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fcs, align 4
  %bfad = getelementptr inbounds %struct.bfa_fcs_s, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bfad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bfad, align 4
  %call = call i32 @bfa_fcb_itnim_alloc(ptr noundef %7, ptr noundef nonnull %itnim, ptr noundef nonnull %itnim_drv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod, align 8
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 12
  %12 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pwwn, align 8
  call void @__bfa_trc(ptr noundef %11, i32 noundef 2052, i32 noundef 590, i64 noundef %13) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %itnim to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %itnim, align 4
  %rport3 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %rport3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rport, ptr %rport3, align 4
  %fcs4 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %rport, i32 0, i32 2
  %17 = ptrtoint ptr %fcs4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fcs4, align 4
  %fcs5 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %15, i32 0, i32 3
  %19 = ptrtoint ptr %fcs5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %fcs5, align 4
  %20 = ptrtoint ptr %itnim_drv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %itnim_drv, align 4
  %itnim_drv6 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %15, i32 0, i32 2
  %22 = ptrtoint ptr %itnim_drv6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %itnim_drv6, align 4
  %bfa_itnim = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %15, i32 0, i32 5
  %23 = ptrtoint ptr %bfa_itnim to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %bfa_itnim, align 4
  %seq_rec = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %15, i32 0, i32 7
  %24 = call ptr @memset(ptr %seq_rec, i32 0, i32 16)
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %15, align 4
  %26 = load ptr, ptr %itnim, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %26, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %itnim_drv) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %itnim) #5
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcb_itnim_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bfa_trc(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_itnim_sm_offline(ptr noundef %itnim, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 3
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 1
  %4 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport, align 4
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2052, i32 noundef 74, i64 noundef %7) #5
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2052, i32 noundef 75, i64 noundef %conv) #5
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 9, label %sw.bb7
    i32 10, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bfa_fcs_itnim_sm_prli_send, ptr %itnim, align 4
  %prli_retries = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 6
  %14 = ptrtoint ptr %prli_retries to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %prli_retries, align 4
  tail call void @bfa_fcs_itnim_send_prli(ptr noundef %itnim, ptr noundef null)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rport, align 4
  %sm5 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %sm5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sm5, align 8
  tail call void %18(ptr noundef %16, i32 noundef 14) #5
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bfa_fcs_itnim_sm_initiator, ptr %itnim, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %bfa_itnim.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 5
  %20 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bfa_itnim.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %sw.bb9.bfa_fcs_itnim_free.exit_crit_edge, label %if.then.i

sw.bb9.bfa_fcs_itnim_free.exit_crit_edge:         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %bfa_fcs_itnim_free.exit

if.then.i:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bfa_itnim_delete(ptr noundef nonnull %21) #5
  %22 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %bfa_itnim.i, align 4
  br label %bfa_fcs_itnim_free.exit

bfa_fcs_itnim_free.exit:                          ; preds = %if.then.i, %sw.bb9.bfa_fcs_itnim_free.exit_crit_edge
  %23 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fcs, align 4
  %bfad.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %bfad.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bfad.i, align 4
  %itnim_drv.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 2
  %27 = ptrtoint ptr %itnim_drv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %itnim_drv.i, align 4
  tail call void @bfa_fcb_itnim_free(ptr noundef %26, ptr noundef %28) #5
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fcs, align 4
  %trcmod11 = getelementptr inbounds %struct.bfa_fcs_s, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %trcmod11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %trcmod11, align 8
  %or = or i32 %event, -559087616
  %conv12 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %32, i32 noundef 2052, i32 noundef 97, i64 noundef %conv12) #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 97, i32 noundef %event) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %bfa_fcs_itnim_free.exit, %sw.bb7, %sw.bb3, %sw.bb
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_itnim_delete(ptr noundef %itnim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 3
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 1
  %4 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport, align 4
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 4
  %conv = zext i32 %7 to i64
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2052, i32 noundef 623, i64 noundef %conv) #5
  %8 = ptrtoint ptr %itnim to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %itnim, align 4
  tail call void %9(ptr noundef %itnim, i32 noundef 10) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_itnim_brp_online(ptr noundef %itnim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 13
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %stats, align 4
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 1
  %2 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rport, align 4
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %5)
  %cmp = icmp ugt i32 %5, 16773120
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %itnim to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %itnim, align 4
  tail call void %7(ptr noundef %itnim, i32 noundef 13) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_itnim_rport_offline(ptr noundef %itnim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offlines = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %offlines to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offlines, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %offlines, align 4
  %2 = ptrtoint ptr %itnim to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %itnim, align 4
  tail call void %3(ptr noundef %itnim, i32 noundef 2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_itnim_is_initiator(ptr noundef %itnim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 3
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 1
  %4 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport, align 4
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 4
  %conv = zext i32 %7 to i64
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2052, i32 noundef 656, i64 noundef %conv) #5
  %initiator = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 13, i32 6
  %8 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %initiator, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %initiator, align 4
  %10 = ptrtoint ptr %itnim to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %itnim, align 4
  tail call void %11(ptr noundef %itnim, i32 noundef 9) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_fcs_itnim_get_online_state(ptr nocapture noundef readonly %itnim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 3
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 1
  %4 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport, align 4
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 4
  %conv = zext i32 %7 to i64
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2052, i32 noundef 667, i64 noundef %conv) #5
  %8 = ptrtoint ptr %itnim to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %itnim, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %i.0.i = phi i32 [ 0, %entry ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bfa_sm_table_s, ptr @itnim_sm_table, i32 %i.0.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  %cmp.not.i = icmp eq ptr %11, %9
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  %inc.i = add i32 %i.0.i, 1
  br i1 %or.cond.i, label %bfa_sm_to_state.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

bfa_sm_to_state.exit:                             ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %state.i = getelementptr %struct.bfa_sm_table_s, ptr @itnim_sm_table, i32 %i.0.i, i32 1
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i, align 4
  %14 = add i32 %13, -5
  %switch.and = and i32 %14, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %15 = select i1 %switch.selectcmp, i32 0, i32 52
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_itnim_online(ptr noundef %cbarg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cbarg, i32 0, i32 3
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cbarg, i32 0, i32 1
  %4 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport, align 4
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2052, i32 noundef 686, i64 noundef %7) #5
  %8 = ptrtoint ptr %cbarg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cbarg, align 4
  tail call void %9(ptr noundef %cbarg, i32 noundef 8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_itnim_offline(ptr noundef %cb_arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cb_arg, i32 0, i32 3
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cb_arg, i32 0, i32 1
  %4 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport, align 4
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2052, i32 noundef 698, i64 noundef %7) #5
  %8 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb_arg, align 4
  tail call void %9(ptr noundef %cb_arg, i32 noundef 7) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_itnim_tov_begin(ptr nocapture noundef readonly %cb_arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cb_arg, i32 0, i32 3
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cb_arg, i32 0, i32 1
  %4 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport, align 4
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2052, i32 noundef 711, i64 noundef %7) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_itnim_tov(ptr nocapture noundef readonly %cb_arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %itnim_drv1 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cb_arg, i32 0, i32 2
  %0 = ptrtoint ptr %itnim_drv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itnim_drv1, align 4
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cb_arg, i32 0, i32 3
  %2 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cb_arg, i32 0, i32 1
  %6 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rport, align 4
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2052, i32 noundef 723, i64 noundef %9) #5
  %state = getelementptr inbounds %struct.bfad_itnim_s, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %state, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_itnim_sler(ptr nocapture noundef %cb_arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sler = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cb_arg, i32 0, i32 13, i32 10
  %0 = ptrtoint ptr %sler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sler, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %sler, align 4
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cb_arg, i32 0, i32 3
  %2 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cb_arg, i32 0, i32 1
  %6 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rport, align 4
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2052, i32 noundef 740, i64 noundef %9) #5
  %10 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rport, align 4
  %sm = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sm, align 8
  tail call void %13(ptr noundef %11, i32 noundef 5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bfa_fcs_itnim_lookup(ptr noundef %port, i64 noundef %rpwwn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bfa_fcs_rport_lookup(ptr noundef %port, i64 noundef %rpwwn) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %itnim = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call, i32 0, i32 17
  %0 = ptrtoint ptr %itnim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itnim, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end.if.end15_crit_edge, !prof !70

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 753, i32 noundef 9, ptr noundef null) #5
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  %2 = ptrtoint ptr %itnim to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %itnim, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %3, %if.end15 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcs_rport_lookup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_fcs_itnim_attr_get(ptr noundef %port, i64 noundef %rpwwn, ptr nocapture noundef writeonly %attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @bfa_fcs_rport_lookup(ptr noundef %port, i64 noundef %rpwwn) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %itnim.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call.i, i32 0, i32 17
  %0 = ptrtoint ptr %itnim.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itnim.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %bfa_fcs_itnim_lookup.exit, label %if.end.i.if.end_crit_edge, !prof !70

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

bfa_fcs_itnim_lookup.exit:                        ; preds = %if.end.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 753, i32 noundef 9, ptr noundef null) #5
  %2 = ptrtoint ptr %itnim.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load ptr, ptr %itnim.i, align 8
  %cmp = icmp eq ptr %.pr, null
  br i1 %cmp, label %bfa_fcs_itnim_lookup.exit.cleanup_crit_edge, label %bfa_fcs_itnim_lookup.exit.if.end_crit_edge

bfa_fcs_itnim_lookup.exit.if.end_crit_edge:       ; preds = %bfa_fcs_itnim_lookup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

bfa_fcs_itnim_lookup.exit.cleanup_crit_edge:      ; preds = %bfa_fcs_itnim_lookup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %bfa_fcs_itnim_lookup.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %3 = phi ptr [ %.pr, %bfa_fcs_itnim_lookup.exit.if.end_crit_edge ], [ %1, %if.end.i.if.end_crit_edge ]
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bfa_sm_table_s, ptr @itnim_sm_table, i32 %i.0.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i17 = icmp eq ptr %7, null
  %cmp.not.i = icmp eq ptr %7, %5
  %or.cond.i = or i1 %tobool.not.i17, %cmp.not.i
  %inc.i = add i32 %i.0.i, 1
  br i1 %or.cond.i, label %bfa_sm_to_state.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

bfa_sm_to_state.exit:                             ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %state.i = getelementptr %struct.bfa_sm_table_s, ptr @itnim_sm_table, i32 %i.0.i, i32 1
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %attr, align 4
  %seq_rec = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %seq_rec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seq_rec, align 4
  %conv = trunc i32 %12 to i8
  %retry = getelementptr inbounds %struct.bfa_itnim_attr_s, ptr %attr, i32 0, i32 1
  %13 = ptrtoint ptr %retry to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %retry, align 4
  %rec_support = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %rec_support to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rec_support, align 4
  %conv2 = trunc i32 %15 to i8
  %rec_support3 = getelementptr inbounds %struct.bfa_itnim_attr_s, ptr %attr, i32 0, i32 3
  %16 = ptrtoint ptr %rec_support3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv2, ptr %rec_support3, align 2
  %conf_comp = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %conf_comp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %conf_comp, align 4
  %conv4 = trunc i32 %18 to i8
  %conf_comp5 = getelementptr inbounds %struct.bfa_itnim_attr_s, ptr %attr, i32 0, i32 4
  %19 = ptrtoint ptr %conf_comp5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv4, ptr %conf_comp5, align 1
  %task_retry_id = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %task_retry_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %task_retry_id, align 4
  %conv6 = trunc i32 %21 to i8
  %task_retry_id7 = getelementptr inbounds %struct.bfa_itnim_attr_s, ptr %attr, i32 0, i32 2
  %22 = ptrtoint ptr %task_retry_id7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv6, ptr %task_retry_id7, align 1
  br label %cleanup

cleanup:                                          ; preds = %bfa_sm_to_state.exit, %bfa_fcs_itnim_lookup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %bfa_sm_to_state.exit ], [ 52, %bfa_fcs_itnim_lookup.exit.cleanup_crit_edge ], [ 52, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_fcs_itnim_stats_get(ptr noundef %port, i64 noundef %rpwwn, ptr nocapture noundef writeonly %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %port, null
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !70

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 782, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i = tail call ptr @bfa_fcs_rport_lookup(ptr noundef %port, i64 noundef %rpwwn) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %itnim.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call.i, i32 0, i32 17
  %0 = ptrtoint ptr %itnim.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itnim.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %bfa_fcs_itnim_lookup.exit, label %if.end.i.if.end21_crit_edge, !prof !70

if.end.i.if.end21_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

bfa_fcs_itnim_lookup.exit:                        ; preds = %if.end.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 753, i32 noundef 9, ptr noundef null) #5
  %2 = ptrtoint ptr %itnim.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load ptr, ptr %itnim.i, align 8
  %cmp19 = icmp eq ptr %.pr, null
  br i1 %cmp19, label %bfa_fcs_itnim_lookup.exit.cleanup_crit_edge, label %bfa_fcs_itnim_lookup.exit.if.end21_crit_edge

bfa_fcs_itnim_lookup.exit.if.end21_crit_edge:     ; preds = %bfa_fcs_itnim_lookup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

bfa_fcs_itnim_lookup.exit.cleanup_crit_edge:      ; preds = %bfa_fcs_itnim_lookup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %bfa_fcs_itnim_lookup.exit.if.end21_crit_edge, %if.end.i.if.end21_crit_edge
  %3 = phi ptr [ %.pr, %bfa_fcs_itnim_lookup.exit.if.end21_crit_edge ], [ %1, %if.end.i.if.end21_crit_edge ]
  %stats22 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %3, i32 0, i32 13
  %4 = call ptr @memcpy(ptr %stats, ptr %stats22, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %bfa_fcs_itnim_lookup.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ 52, %bfa_fcs_itnim_lookup.exit.cleanup_crit_edge ], [ 52, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_fcs_itnim_stats_clear(ptr noundef %port, i64 noundef %rpwwn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %port, null
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !70

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 799, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i = tail call ptr @bfa_fcs_rport_lookup(ptr noundef %port, i64 noundef %rpwwn) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %itnim.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %call.i, i32 0, i32 17
  %0 = ptrtoint ptr %itnim.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itnim.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %bfa_fcs_itnim_lookup.exit, label %if.end.i.if.end21_crit_edge, !prof !70

if.end.i.if.end21_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

bfa_fcs_itnim_lookup.exit:                        ; preds = %if.end.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 753, i32 noundef 9, ptr noundef null) #5
  %2 = ptrtoint ptr %itnim.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load ptr, ptr %itnim.i, align 8
  %cmp19 = icmp eq ptr %.pr, null
  br i1 %cmp19, label %bfa_fcs_itnim_lookup.exit.cleanup_crit_edge, label %bfa_fcs_itnim_lookup.exit.if.end21_crit_edge

bfa_fcs_itnim_lookup.exit.if.end21_crit_edge:     ; preds = %bfa_fcs_itnim_lookup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

bfa_fcs_itnim_lookup.exit.cleanup_crit_edge:      ; preds = %bfa_fcs_itnim_lookup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %bfa_fcs_itnim_lookup.exit.if.end21_crit_edge, %if.end.i.if.end21_crit_edge
  %3 = phi ptr [ %.pr, %bfa_fcs_itnim_lookup.exit.if.end21_crit_edge ], [ %1, %if.end.i.if.end21_crit_edge ]
  %stats = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %3, i32 0, i32 13
  %4 = call ptr @memset(ptr %stats, i32 0, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %bfa_fcs_itnim_lookup.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ 52, %bfa_fcs_itnim_lookup.exit.cleanup_crit_edge ], [ 52, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_fcpim_uf_recv(ptr nocapture noundef readonly %itnim, ptr nocapture noundef readonly %fchs, i16 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 3
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %4, i32 12)
  %bf.load = load i96, ptr %fchs, align 1
  %5 = trunc i96 %bf.load to i32
  %6 = lshr i32 %5, 24
  %conv = zext i32 %6 to i64
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2052, i32 noundef 816, i64 noundef %conv) #5
  %7 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %7, i32 12)
  %bf.load1 = load i96, ptr %fchs, align 1
  %.mask36 = and i96 %bf.load1, 4278190080
  %cmp.not = icmp eq i96 %.mask36, 16777216
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.fchs_s, ptr %fchs, i32 1
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod7 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod7, align 8
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %bf.load8 = load i32, ptr %add.ptr, align 1
  %bf.lshr9 = lshr i32 %bf.load8, 24
  %conv10 = zext i32 %bf.lshr9 to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2052, i32 noundef 823, i64 noundef %conv10) #5
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %bf.load11 = load i32, ptr %add.ptr, align 1
  %bf.lshr12.mask = and i32 %bf.load11, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 553648128, i32 %bf.lshr12.mask)
  %cond = icmp eq i32 %bf.lshr12.mask, 553648128
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 1
  %14 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rport, align 4
  %ox_id = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %16 = ptrtoint ptr %ox_id to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %ox_id, align 1
  tail call void @bfa_fcs_rport_prlo(ptr noundef %15, i16 noundef zeroext %17) #5
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 831, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_rport_prlo(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_itnim_sm_prli_send(ptr noundef %itnim, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 3
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 1
  %4 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport, align 4
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2052, i32 noundef 106, i64 noundef %7) #5
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2052, i32 noundef 107, i64 noundef %conv) #5
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %event, label %do.body [
    i32 3, label %sw.bb
    i32 9, label %sw.bb3
    i32 2, label %sw.bb9
    i32 10, label %sw.bb17
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bfa_fcs_itnim_sm_prli, ptr %itnim, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @bfa_fcs_itnim_sm_initiator, ptr %itnim, align 4
  %15 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fcs, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %fcxp_wqe = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 11
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %18, ptr noundef %fcxp_wqe) #5
  %19 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rport, align 4
  %sm7 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %sm7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sm7, align 8
  tail call void %22(ptr noundef %20, i32 noundef 21) #5
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %itnim, align 4
  %24 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fcs, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %fcxp_wqe13 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 11
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %27, ptr noundef %fcxp_wqe13) #5
  %28 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rport, align 4
  %sm15 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %sm15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sm15, align 8
  tail call void %31(ptr noundef %29, i32 noundef 14) #5
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %32 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %itnim, align 4
  %33 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fcs, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %fcxp_wqe21 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 11
  tail call void @bfa_fcxp_walloc_cancel(ptr noundef %36, ptr noundef %fcxp_wqe21) #5
  %bfa_itnim.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 5
  %37 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bfa_itnim.i, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %sw.bb17.bfa_fcs_itnim_free.exit_crit_edge, label %if.then.i

sw.bb17.bfa_fcs_itnim_free.exit_crit_edge:        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  br label %bfa_fcs_itnim_free.exit

if.then.i:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bfa_itnim_delete(ptr noundef nonnull %38) #5
  %39 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %bfa_itnim.i, align 4
  br label %bfa_fcs_itnim_free.exit

bfa_fcs_itnim_free.exit:                          ; preds = %if.then.i, %sw.bb17.bfa_fcs_itnim_free.exit_crit_edge
  %40 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fcs, align 4
  %bfad.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %bfad.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bfad.i, align 4
  %itnim_drv.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 2
  %44 = ptrtoint ptr %itnim_drv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %itnim_drv.i, align 4
  tail call void @bfa_fcb_itnim_free(ptr noundef %43, ptr noundef %45) #5
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fcs, align 4
  %trcmod23 = getelementptr inbounds %struct.bfa_fcs_s, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %trcmod23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %trcmod23, align 8
  %or = or i32 %event, -559087616
  %conv24 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %49, i32 noundef 2052, i32 noundef 133, i64 noundef %conv24) #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 133, i32 noundef %event) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %bfa_fcs_itnim_free.exit, %sw.bb9, %sw.bb3, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_itnim_send_prli(ptr noundef %itnim_cbarg, ptr noundef %fcxp_alloced) #0 align 64 {
entry:
  %fchs = alloca %struct.fchs_s, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rport1 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim_cbarg, i32 0, i32 1
  %0 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rport1, align 4
  %port2 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port2, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fchs) #5
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim_cbarg, i32 0, i32 3
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
  tail call void @__bfa_trc(ptr noundef %8, i32 noundef 2052, i32 noundef 450, i64 noundef %10) #5
  %tobool.not = icmp eq ptr %fcxp_alloced, null
  br i1 %tobool.not, label %cond.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.end:                                         ; preds = %entry
  %fcs4 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %fcs4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fcs4, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %call = tail call ptr @bfa_fcxp_req_rsp_alloc(ptr noundef null, ptr noundef %14, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1) #5
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %fcxp_alloc_wait = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim_cbarg, i32 0, i32 13, i32 3
  %15 = ptrtoint ptr %fcxp_alloc_wait to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fcxp_alloc_wait, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %fcxp_alloc_wait, align 4
  %17 = ptrtoint ptr %fcs4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fcs4, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %fcxp_wqe = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim_cbarg, i32 0, i32 11
  tail call void @bfa_fcxp_req_rsp_alloc_wait(ptr noundef %20, ptr noundef %fcxp_wqe, ptr noundef nonnull @bfa_fcs_itnim_send_prli, ptr noundef %itnim_cbarg, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1) #5
  br label %cleanup

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  %cond42 = phi ptr [ %call, %cond.end.if.end_crit_edge ], [ %fcxp_alloced, %entry.if.end_crit_edge ]
  %fcxp8 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim_cbarg, i32 0, i32 12
  %21 = ptrtoint ptr %fcxp8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cond42, ptr %fcxp8, align 4
  %call9 = tail call ptr @bfa_fcxp_get_reqbuf(ptr noundef nonnull %cond42) #5
  %22 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rport1, align 4
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid, align 4
  %pid11 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %3, i32 0, i32 5
  %26 = ptrtoint ptr %pid11 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 3)
  %bf.load = load i24, ptr %pid11, align 4
  %bf.cast = zext i24 %bf.load to i32
  %call12 = call zeroext i16 @fc_prli_build(ptr noundef nonnull %fchs, ptr noundef %call9, i32 noundef %25, i32 noundef %bf.cast, i16 noundef zeroext 0) #5
  %conv = zext i16 %call12 to i32
  %bfa_rport = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 20
  %27 = ptrtoint ptr %bfa_rport to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bfa_rport, align 4
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fabric, align 4
  %vf_id = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vf_id, align 2
  %lp_tag = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %3, i32 0, i32 6
  %33 = ptrtoint ptr %lp_tag to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %lp_tag, align 1
  call void @bfa_fcxp_send(ptr noundef nonnull %cond42, ptr noundef %28, i16 noundef zeroext %32, i8 noundef zeroext %34, i32 noundef 0, i32 noundef 8, i32 noundef %conv, ptr noundef nonnull %fchs, ptr noundef nonnull @bfa_fcs_itnim_prli_response, ptr noundef %itnim_cbarg, i32 noundef 2112, i8 noundef zeroext 20) #5
  %prli_sent = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim_cbarg, i32 0, i32 13, i32 2
  %35 = ptrtoint ptr %prli_sent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %prli_sent, align 4
  %inc14 = add i32 %36, 1
  store i32 %inc14, ptr %prli_sent, align 4
  %37 = ptrtoint ptr %itnim_cbarg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %itnim_cbarg, align 4
  call void %38(ptr noundef %itnim_cbarg, i32 noundef 3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fchs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_itnim_sm_initiator(ptr nocapture noundef %itnim, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 3
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 1
  %4 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport, align 4
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2052, i32 noundef 383, i64 noundef %7) #5
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2052, i32 noundef 384, i64 noundef %conv) #5
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %event, label %do.body [
    i32 2, label %sw.bb
    i32 1, label %sw.bb6
    i32 5, label %entry.sw.epilog_crit_edge
    i32 9, label %entry.sw.epilog_crit_edge31
    i32 10, label %sw.bb11
  ]

entry.sw.epilog_crit_edge31:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %itnim, align 4
  %14 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rport, align 4
  %sm4 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %sm4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sm4, align 8
  tail call void %17(ptr noundef %15, i32 noundef 14) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rport, align 4
  %sm8 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %sm8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sm8, align 8
  tail call void %21(ptr noundef %19, i32 noundef 21) #5
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %22 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %itnim, align 4
  %bfa_itnim.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 5
  %23 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bfa_itnim.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %sw.bb11.bfa_fcs_itnim_free.exit_crit_edge, label %if.then.i

sw.bb11.bfa_fcs_itnim_free.exit_crit_edge:        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %bfa_fcs_itnim_free.exit

if.then.i:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bfa_itnim_delete(ptr noundef nonnull %24) #5
  %25 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %bfa_itnim.i, align 4
  br label %bfa_fcs_itnim_free.exit

bfa_fcs_itnim_free.exit:                          ; preds = %if.then.i, %sw.bb11.bfa_fcs_itnim_free.exit_crit_edge
  %26 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fcs, align 4
  %bfad.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %bfad.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bfad.i, align 4
  %itnim_drv.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 2
  %30 = ptrtoint ptr %itnim_drv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %itnim_drv.i, align 4
  tail call void @bfa_fcb_itnim_free(ptr noundef %29, ptr noundef %31) #5
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fcs, align 4
  %trcmod14 = getelementptr inbounds %struct.bfa_fcs_s, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %trcmod14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %trcmod14, align 8
  %or = or i32 %event, -559087616
  %conv15 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %35, i32 noundef 2052, i32 noundef 409, i64 noundef %conv15) #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 409, i32 noundef %event) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %bfa_fcs_itnim_free.exit, %sw.bb6, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge31
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_itnim_sm_prli(ptr noundef %itnim, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 3
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 1
  %4 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport, align 4
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2052, i32 noundef 141, i64 noundef %7) #5
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2052, i32 noundef 142, i64 noundef %conv) #5
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %event, label %do.body [
    i32 4, label %sw.bb
    i32 5, label %sw.bb9
    i32 12, label %sw.bb12
    i32 2, label %sw.bb14
    i32 9, label %sw.bb19
    i32 10, label %sw.bb25
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rport, align 4
  %scsi_function = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %14, i32 0, i32 26
  %15 = ptrtoint ptr %scsi_function to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scsi_function, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  %bfa_fcs_itnim_sm_initiator.bfa_fcs_itnim_sm_hal_rport_online = select i1 %cmp, ptr @bfa_fcs_itnim_sm_initiator, ptr @bfa_fcs_itnim_sm_hal_rport_online
  %17 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bfa_fcs_itnim_sm_initiator.bfa_fcs_itnim_sm_hal_rport_online, ptr %itnim, align 4
  %sm7 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %14, i32 0, i32 15
  %18 = ptrtoint ptr %sm7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sm7, align 8
  tail call void %19(ptr noundef %14, i32 noundef 21) #5
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bfa_fcs_itnim_sm_prli_retry, ptr %itnim, align 4
  %21 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fcs, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %timer_mod = getelementptr inbounds %struct.bfa_s, ptr %24, i32 0, i32 5
  %timer = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 4
  tail call void @bfa_timer_begin(ptr noundef %timer_mod, ptr noundef %timer, ptr noundef nonnull @bfa_fcs_itnim_timeout, ptr noundef %itnim, i32 noundef 2000) #5
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %itnim, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %itnim, align 4
  %fcxp = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 12
  %27 = ptrtoint ptr %fcxp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fcxp, align 4
  tail call void @bfa_fcxp_discard(ptr noundef %28) #5
  %29 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rport, align 4
  %sm17 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %sm17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sm17, align 8
  tail call void %32(ptr noundef %30, i32 noundef 14) #5
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bfa_fcs_itnim_sm_initiator, ptr %itnim, align 4
  %fcxp21 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 12
  %34 = ptrtoint ptr %fcxp21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fcxp21, align 4
  tail call void @bfa_fcxp_discard(ptr noundef %35) #5
  %36 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rport, align 4
  %sm23 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %sm23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sm23, align 8
  tail call void %39(ptr noundef %37, i32 noundef 21) #5
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %40 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %itnim, align 4
  %fcxp27 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 12
  %41 = ptrtoint ptr %fcxp27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fcxp27, align 4
  tail call void @bfa_fcxp_discard(ptr noundef %42) #5
  %bfa_itnim.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 5
  %43 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bfa_itnim.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %sw.bb25.bfa_fcs_itnim_free.exit_crit_edge, label %if.then.i

sw.bb25.bfa_fcs_itnim_free.exit_crit_edge:        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #7
  br label %bfa_fcs_itnim_free.exit

if.then.i:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bfa_itnim_delete(ptr noundef nonnull %44) #5
  %45 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %bfa_itnim.i, align 4
  br label %bfa_fcs_itnim_free.exit

bfa_fcs_itnim_free.exit:                          ; preds = %if.then.i, %sw.bb25.bfa_fcs_itnim_free.exit_crit_edge
  %46 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fcs, align 4
  %bfad.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %bfad.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bfad.i, align 4
  %itnim_drv.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 2
  %50 = ptrtoint ptr %itnim_drv.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %itnim_drv.i, align 4
  tail call void @bfa_fcb_itnim_free(ptr noundef %49, ptr noundef %51) #5
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fcs, align 4
  %trcmod29 = getelementptr inbounds %struct.bfa_fcs_s, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %trcmod29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %trcmod29, align 8
  %or = or i32 %event, -559087616
  %conv30 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %55, i32 noundef 2052, i32 noundef 185, i64 noundef %conv30) #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 185, i32 noundef %event) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %bfa_fcs_itnim_free.exit, %sw.bb19, %sw.bb14, %sw.bb12, %sw.bb9, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcxp_walloc_cancel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_itnim_sm_hal_rport_online(ptr noundef %itnim, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 3
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 1
  %4 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport, align 4
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2052, i32 noundef 193, i64 noundef %7) #5
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2052, i32 noundef 194, i64 noundef %conv) #5
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %event, label %do.body [
    i32 13, label %sw.bb
    i32 2, label %sw.bb15
    i32 10, label %sw.bb20
  ]

sw.bb:                                            ; preds = %entry
  %bfa_itnim = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 5
  %13 = ptrtoint ptr %bfa_itnim to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bfa_itnim, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end, label %sw.bb.if.then8_crit_edge

sw.bb.if.then8_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.end:                                           ; preds = %sw.bb
  %15 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fcs, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %19 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rport, align 4
  %bfa_rport = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %bfa_rport to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bfa_rport, align 4
  %call = tail call ptr @bfa_itnim_create(ptr noundef %18, ptr noundef %22, ptr noundef %itnim) #5
  %23 = ptrtoint ptr %bfa_itnim to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call, ptr %bfa_itnim, align 4
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.else, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %sw.bb.if.then8_crit_edge
  %24 = phi ptr [ %call, %if.end.if.then8_crit_edge ], [ %14, %sw.bb.if.then8_crit_edge ]
  %25 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_fcs_itnim_sm_hcb_online, ptr %itnim, align 4
  %seq_rec = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 7
  %26 = ptrtoint ptr %seq_rec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %seq_rec, align 4
  tail call void @bfa_itnim_online(ptr noundef nonnull %24, i32 noundef %27) #5
  br label %sw.epilog

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %itnim, align 4
  %29 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rport, align 4
  %sm12 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %sm12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sm12, align 8
  tail call void %32(ptr noundef %30, i32 noundef 7) #5
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %itnim, align 4
  %34 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rport, align 4
  %sm18 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %sm18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sm18, align 8
  tail call void %37(ptr noundef %35, i32 noundef 14) #5
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %38 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %itnim, align 4
  %bfa_itnim.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 5
  %39 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bfa_itnim.i, align 4
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %sw.bb20.bfa_fcs_itnim_free.exit_crit_edge, label %if.then.i

sw.bb20.bfa_fcs_itnim_free.exit_crit_edge:        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  br label %bfa_fcs_itnim_free.exit

if.then.i:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bfa_itnim_delete(ptr noundef nonnull %40) #5
  %41 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %bfa_itnim.i, align 4
  br label %bfa_fcs_itnim_free.exit

bfa_fcs_itnim_free.exit:                          ; preds = %if.then.i, %sw.bb20.bfa_fcs_itnim_free.exit_crit_edge
  %42 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fcs, align 4
  %bfad.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %bfad.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bfad.i, align 4
  %itnim_drv.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 2
  %46 = ptrtoint ptr %itnim_drv.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %itnim_drv.i, align 4
  tail call void @bfa_fcb_itnim_free(ptr noundef %45, ptr noundef %47) #5
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fcs, align 4
  %trcmod23 = getelementptr inbounds %struct.bfa_fcs_s, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %trcmod23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %trcmod23, align 8
  %or = or i32 %event, -559087616
  %conv24 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %51, i32 noundef 2052, i32 noundef 223, i64 noundef %conv24) #5
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 223, i32 noundef %event) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %bfa_fcs_itnim_free.exit, %sw.bb15, %if.else, %if.then8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_itnim_sm_prli_retry(ptr noundef %itnim, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 3
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 1
  %4 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport, align 4
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2052, i32 noundef 231, i64 noundef %7) #5
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2052, i32 noundef 232, i64 noundef %conv) #5
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %event, label %do.body [
    i32 6, label %sw.bb
    i32 2, label %sw.bb13
    i32 9, label %sw.bb18
    i32 10, label %sw.bb24
  ]

sw.bb:                                            ; preds = %entry
  %prli_retries = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 6
  %13 = ptrtoint ptr %prli_retries to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prli_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp = icmp ult i32 %14, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add nuw nsw i32 %14, 1
  %15 = ptrtoint ptr %prli_retries to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc, ptr %prli_retries, align 4
  %16 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fcs, align 4
  %trcmod6 = getelementptr inbounds %struct.bfa_fcs_s, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %trcmod6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trcmod6, align 8
  %conv8 = zext i32 %inc to i64
  tail call void @__bfa_trc(ptr noundef %19, i32 noundef 2052, i32 noundef 238, i64 noundef %conv8) #5
  %20 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bfa_fcs_itnim_sm_prli_send, ptr %itnim, align 4
  tail call void @bfa_fcs_itnim_send_prli(ptr noundef %itnim, ptr noundef null)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %itnim, align 4
  %22 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rport, align 4
  %sm11 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %sm11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sm11, align 8
  tail call void %25(ptr noundef %23, i32 noundef 5) #5
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %itnim, align 4
  %timer = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 4
  tail call void @bfa_timer_stop(ptr noundef %timer) #5
  %27 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rport, align 4
  %sm16 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %sm16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sm16, align 8
  tail call void %30(ptr noundef %28, i32 noundef 14) #5
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @bfa_fcs_itnim_sm_initiator, ptr %itnim, align 4
  %timer20 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 4
  tail call void @bfa_timer_stop(ptr noundef %timer20) #5
  %32 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rport, align 4
  %sm22 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %sm22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sm22, align 8
  tail call void %35(ptr noundef %33, i32 noundef 21) #5
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %36 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %itnim, align 4
  %timer26 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 4
  tail call void @bfa_timer_stop(ptr noundef %timer26) #5
  %bfa_itnim.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 5
  %37 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bfa_itnim.i, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %sw.bb24.bfa_fcs_itnim_free.exit_crit_edge, label %if.then.i

sw.bb24.bfa_fcs_itnim_free.exit_crit_edge:        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #7
  br label %bfa_fcs_itnim_free.exit

if.then.i:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bfa_itnim_delete(ptr noundef nonnull %38) #5
  %39 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %bfa_itnim.i, align 4
  br label %bfa_fcs_itnim_free.exit

bfa_fcs_itnim_free.exit:                          ; preds = %if.then.i, %sw.bb24.bfa_fcs_itnim_free.exit_crit_edge
  %40 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fcs, align 4
  %bfad.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %bfad.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bfad.i, align 4
  %itnim_drv.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 2
  %44 = ptrtoint ptr %itnim_drv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %itnim_drv.i, align 4
  tail call void @bfa_fcb_itnim_free(ptr noundef %43, ptr noundef %45) #5
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fcs, align 4
  %trcmod28 = getelementptr inbounds %struct.bfa_fcs_s, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %trcmod28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %trcmod28, align 8
  %or = or i32 %event, -559087616
  %conv29 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %49, i32 noundef 2052, i32 noundef 268, i64 noundef %conv29) #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 268, i32 noundef %event) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %bfa_fcs_itnim_free.exit, %sw.bb18, %sw.bb13, %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_timer_begin(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_itnim_timeout(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %arg, i32 0, i32 13, i32 9
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %timeout, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 4
  tail call void %3(ptr noundef %arg, i32 noundef 6) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcxp_discard(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_itnim_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_itnim_sm_hcb_online(ptr nocapture noundef %itnim, i32 noundef %event) #0 align 64 {
entry:
  %lpwwn_buf = alloca [32 x i8], align 1
  %rpwwn_buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 3
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %bfad1 = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bfad1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bfad1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %lpwwn_buf) #5
  %4 = call ptr @memset(ptr %lpwwn_buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rpwwn_buf) #5
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %5 = call ptr @memset(ptr %rpwwn_buf, i32 255, i32 32)
  %6 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trcmod, align 8
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 1
  %8 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rport, align 4
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %7, i32 noundef 2052, i32 noundef 280, i64 noundef %11) #5
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2052, i32 noundef 281, i64 noundef %conv) #5
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %event, label %do.body20 [
    i32 8, label %sw.bb
    i32 2, label %sw.bb16
    i32 10, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  %17 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_itnim_sm_online, ptr %itnim, align 4
  %itnim_drv = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 2
  %18 = ptrtoint ptr %itnim_drv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %itnim_drv, align 4
  tail call void @bfa_fcb_itnim_online(ptr noundef %19) #5
  %20 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rport, align 4
  %port = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %port_cfg, align 8
  %w.sroa.0.0.extract.shift.i = lshr i64 %25, 56
  %w.sroa.0.0.extract.trunc.i = trunc i64 %w.sroa.0.0.extract.shift.i to i32
  %w.sroa.5.0.extract.shift.i = lshr i64 %25, 48
  %w.sroa.5.0.extract.trunc.i = trunc i64 %w.sroa.5.0.extract.shift.i to i32
  %w.sroa.6.0.extract.shift.i = lshr i64 %25, 40
  %w.sroa.6.0.extract.trunc.i = trunc i64 %w.sroa.6.0.extract.shift.i to i32
  %w.sroa.7.0.extract.shift.i = lshr i64 %25, 32
  %w.sroa.7.0.extract.trunc.i = trunc i64 %w.sroa.7.0.extract.shift.i to i32
  %26 = trunc i64 %25 to i32
  %27 = lshr i32 %26, 24
  %28 = lshr i32 %26, 16
  %29 = lshr i32 %26, 8
  %conv2.i = and i32 %w.sroa.5.0.extract.trunc.i, 255
  %conv4.i = and i32 %w.sroa.6.0.extract.trunc.i, 255
  %conv6.i = and i32 %w.sroa.7.0.extract.trunc.i, 255
  %conv10.i = and i32 %28, 255
  %conv12.i = and i32 %29, 255
  %conv14.i = and i32 %26, 255
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %lpwwn_buf, ptr noundef nonnull @.str.20, i32 noundef %w.sroa.0.0.extract.trunc.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %27, i32 noundef %conv10.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #5
  %30 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rport, align 4
  %pwwn9 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %pwwn9 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %pwwn9, align 8
  %w.sroa.0.0.extract.shift.i45 = lshr i64 %33, 56
  %w.sroa.0.0.extract.trunc.i46 = trunc i64 %w.sroa.0.0.extract.shift.i45 to i32
  %w.sroa.5.0.extract.shift.i47 = lshr i64 %33, 48
  %w.sroa.5.0.extract.trunc.i48 = trunc i64 %w.sroa.5.0.extract.shift.i47 to i32
  %w.sroa.6.0.extract.shift.i49 = lshr i64 %33, 40
  %w.sroa.6.0.extract.trunc.i50 = trunc i64 %w.sroa.6.0.extract.shift.i49 to i32
  %w.sroa.7.0.extract.shift.i51 = lshr i64 %33, 32
  %w.sroa.7.0.extract.trunc.i52 = trunc i64 %w.sroa.7.0.extract.shift.i51 to i32
  %34 = trunc i64 %33 to i32
  %35 = lshr i32 %34, 24
  %36 = lshr i32 %34, 16
  %37 = lshr i32 %34, 8
  %conv2.i53 = and i32 %w.sroa.5.0.extract.trunc.i48, 255
  %conv4.i54 = and i32 %w.sroa.6.0.extract.trunc.i50, 255
  %conv6.i55 = and i32 %w.sroa.7.0.extract.trunc.i52, 255
  %conv10.i56 = and i32 %36, 255
  %conv12.i57 = and i32 %37, 255
  %conv14.i58 = and i32 %34, 255
  %call.i59 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %rpwwn_buf, ptr noundef nonnull @.str.20, i32 noundef %w.sroa.0.0.extract.trunc.i46, i32 noundef %conv2.i53, i32 noundef %conv4.i54, i32 noundef %conv6.i55, i32 noundef %35, i32 noundef %conv10.i56, i32 noundef %conv12.i57, i32 noundef %conv14.i58) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_log_level to i32))
  %38 = load i32, ptr @bfa_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp = icmp eq i32 %38, 4
  br i1 %cmp, label %do.end, label %sw.bb.do.end15_crit_edge

sw.bb.do.end15_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 4
  %39 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull %rpwwn_buf, ptr noundef nonnull %lpwwn_buf) #8
  br label %do.end15

do.end15:                                         ; preds = %do.end, %sw.bb.do.end15_crit_edge
  call fastcc void @bfa_fcs_itnim_aen_post(ptr noundef %itnim, i32 noundef 1)
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bfa_fcs_itnim_sm_hcb_offline, ptr %itnim, align 4
  %bfa_itnim = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 5
  %42 = ptrtoint ptr %bfa_itnim to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bfa_itnim, align 4
  tail call void @bfa_itnim_offline(ptr noundef %43) #5
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %44 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %itnim, align 4
  %bfa_itnim.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 5
  %45 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bfa_itnim.i, align 4
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %sw.bb18.bfa_fcs_itnim_free.exit_crit_edge, label %if.then.i

sw.bb18.bfa_fcs_itnim_free.exit_crit_edge:        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  br label %bfa_fcs_itnim_free.exit

if.then.i:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bfa_itnim_delete(ptr noundef nonnull %46) #5
  %47 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %bfa_itnim.i, align 4
  br label %bfa_fcs_itnim_free.exit

bfa_fcs_itnim_free.exit:                          ; preds = %if.then.i, %sw.bb18.bfa_fcs_itnim_free.exit_crit_edge
  %48 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fcs, align 4
  %bfad.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %bfad.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bfad.i, align 4
  %itnim_drv.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 2
  %52 = ptrtoint ptr %itnim_drv.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %itnim_drv.i, align 4
  tail call void @bfa_fcb_itnim_free(ptr noundef %51, ptr noundef %53) #5
  br label %sw.epilog

do.body20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fcs, align 4
  %trcmod22 = getelementptr inbounds %struct.bfa_fcs_s, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %trcmod22 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %trcmod22, align 8
  %or = or i32 %event, -559087616
  %conv23 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %57, i32 noundef 2052, i32 noundef 306, i64 noundef %conv23) #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 306, i32 noundef %event) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body20, %bfa_fcs_itnim_free.exit, %sw.bb16, %do.end15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rpwwn_buf) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lpwwn_buf) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_itnim_online(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_itnim_sm_online(ptr nocapture noundef %itnim, i32 noundef %event) #0 align 64 {
entry:
  %lpwwn_buf = alloca [32 x i8], align 1
  %rpwwn_buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 3
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %bfad1 = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bfad1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bfad1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %lpwwn_buf) #5
  %4 = call ptr @memset(ptr %lpwwn_buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rpwwn_buf) #5
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %5 = call ptr @memset(ptr %rpwwn_buf, i32 255, i32 32)
  %6 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trcmod, align 8
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 1
  %8 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rport, align 4
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %7, i32 noundef 2052, i32 noundef 318, i64 noundef %11) #5
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod4, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2052, i32 noundef 319, i64 noundef %conv) #5
  %16 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %event, label %do.body41 [
    i32 2, label %sw.bb
    i32 10, label %sw.bb39
  ]

sw.bb:                                            ; preds = %entry
  %17 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_itnim_sm_hcb_offline, ptr %itnim, align 4
  %itnim_drv = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 2
  %18 = ptrtoint ptr %itnim_drv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %itnim_drv, align 4
  tail call void @bfa_fcb_itnim_offline(ptr noundef %19) #5
  %bfa_itnim = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 5
  %20 = ptrtoint ptr %bfa_itnim to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bfa_itnim, align 4
  tail call void @bfa_itnim_offline(ptr noundef %21) #5
  %22 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rport, align 4
  %port = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %port_cfg, align 8
  %w.sroa.0.0.extract.shift.i = lshr i64 %27, 56
  %w.sroa.0.0.extract.trunc.i = trunc i64 %w.sroa.0.0.extract.shift.i to i32
  %w.sroa.5.0.extract.shift.i = lshr i64 %27, 48
  %w.sroa.5.0.extract.trunc.i = trunc i64 %w.sroa.5.0.extract.shift.i to i32
  %w.sroa.6.0.extract.shift.i = lshr i64 %27, 40
  %w.sroa.6.0.extract.trunc.i = trunc i64 %w.sroa.6.0.extract.shift.i to i32
  %w.sroa.7.0.extract.shift.i = lshr i64 %27, 32
  %w.sroa.7.0.extract.trunc.i = trunc i64 %w.sroa.7.0.extract.shift.i to i32
  %28 = trunc i64 %27 to i32
  %29 = lshr i32 %28, 24
  %30 = lshr i32 %28, 16
  %31 = lshr i32 %28, 8
  %conv2.i = and i32 %w.sroa.5.0.extract.trunc.i, 255
  %conv4.i = and i32 %w.sroa.6.0.extract.trunc.i, 255
  %conv6.i = and i32 %w.sroa.7.0.extract.trunc.i, 255
  %conv10.i = and i32 %30, 255
  %conv12.i = and i32 %31, 255
  %conv14.i = and i32 %28, 255
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %lpwwn_buf, ptr noundef nonnull @.str.20, i32 noundef %w.sroa.0.0.extract.trunc.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %29, i32 noundef %conv10.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #5
  %32 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rport, align 4
  %pwwn9 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %pwwn9 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %pwwn9, align 8
  %w.sroa.0.0.extract.shift.i69 = lshr i64 %35, 56
  %w.sroa.0.0.extract.trunc.i70 = trunc i64 %w.sroa.0.0.extract.shift.i69 to i32
  %w.sroa.5.0.extract.shift.i71 = lshr i64 %35, 48
  %w.sroa.5.0.extract.trunc.i72 = trunc i64 %w.sroa.5.0.extract.shift.i71 to i32
  %w.sroa.6.0.extract.shift.i73 = lshr i64 %35, 40
  %w.sroa.6.0.extract.trunc.i74 = trunc i64 %w.sroa.6.0.extract.shift.i73 to i32
  %w.sroa.7.0.extract.shift.i75 = lshr i64 %35, 32
  %w.sroa.7.0.extract.trunc.i76 = trunc i64 %w.sroa.7.0.extract.shift.i75 to i32
  %36 = trunc i64 %35 to i32
  %37 = lshr i32 %36, 24
  %38 = lshr i32 %36, 16
  %39 = lshr i32 %36, 8
  %conv2.i77 = and i32 %w.sroa.5.0.extract.trunc.i72, 255
  %conv4.i78 = and i32 %w.sroa.6.0.extract.trunc.i74, 255
  %conv6.i79 = and i32 %w.sroa.7.0.extract.trunc.i76, 255
  %conv10.i80 = and i32 %38, 255
  %conv12.i81 = and i32 %39, 255
  %conv14.i82 = and i32 %36, 255
  %call.i83 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %rpwwn_buf, ptr noundef nonnull @.str.20, i32 noundef %w.sroa.0.0.extract.trunc.i70, i32 noundef %conv2.i77, i32 noundef %conv4.i78, i32 noundef %conv6.i79, i32 noundef %37, i32 noundef %conv10.i80, i32 noundef %conv12.i81, i32 noundef %conv14.i82) #5
  %40 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rport, align 4
  %port11 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %port11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port11, align 8
  %call = tail call i32 @bfa_fcs_lport_is_online(ptr noundef %43) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %do.body, label %do.body24

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 4
  %44 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull %rpwwn_buf, ptr noundef nonnull %lpwwn_buf) #8
  call fastcc void @bfa_fcs_itnim_aen_post(ptr noundef %itnim, i32 noundef 3)
  br label %sw.epilog

do.body24:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_log_level to i32))
  %46 = load i32, ptr @bfa_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp25 = icmp eq i32 %46, 4
  br i1 %cmp25, label %do.end30, label %do.body24.do.end37_crit_edge

do.body24.do.end37_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  %pcidev31 = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 4
  %47 = ptrtoint ptr %pcidev31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcidev31, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev32, ptr noundef nonnull @.str.16, ptr noundef nonnull %rpwwn_buf, ptr noundef nonnull %lpwwn_buf) #8
  br label %do.end37

do.end37:                                         ; preds = %do.end30, %do.body24.do.end37_crit_edge
  call fastcc void @bfa_fcs_itnim_aen_post(ptr noundef %itnim, i32 noundef 2)
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  %49 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %itnim, align 4
  %bfa_itnim.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 5
  %50 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bfa_itnim.i, align 4
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %sw.bb39.bfa_fcs_itnim_free.exit_crit_edge, label %if.then.i

sw.bb39.bfa_fcs_itnim_free.exit_crit_edge:        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #7
  br label %bfa_fcs_itnim_free.exit

if.then.i:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bfa_itnim_delete(ptr noundef nonnull %51) #5
  %52 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %bfa_itnim.i, align 4
  br label %bfa_fcs_itnim_free.exit

bfa_fcs_itnim_free.exit:                          ; preds = %if.then.i, %sw.bb39.bfa_fcs_itnim_free.exit_crit_edge
  %53 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fcs, align 4
  %bfad.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %bfad.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bfad.i, align 4
  %itnim_drv.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 2
  %57 = ptrtoint ptr %itnim_drv.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %itnim_drv.i, align 4
  tail call void @bfa_fcb_itnim_free(ptr noundef %56, ptr noundef %58) #5
  br label %sw.epilog

do.body41:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fcs, align 4
  %trcmod43 = getelementptr inbounds %struct.bfa_fcs_s, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %trcmod43 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %trcmod43, align 8
  %or = or i32 %event, -559087616
  %conv44 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %62, i32 noundef 2052, i32 noundef 347, i64 noundef %conv44) #5
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 347, i32 noundef %event) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body41, %bfa_fcs_itnim_free.exit, %do.end37, %do.body
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rpwwn_buf) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lpwwn_buf) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcb_itnim_online(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_fcs_itnim_aen_post(ptr nocapture noundef readonly %itnim, i32 noundef %event) unnamed_addr #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rport1 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 1
  %0 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rport1, align 4
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 3
  %2 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs, align 4
  %bfad2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bfad2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bfad2, align 4
  %pid = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16773120, i32 %7)
  %cmp = icmp ugt i32 %7, 16773120
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %bfad_aen_spinlock = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 42
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_aen_spinlock) #5
  %free_aen_q = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 39
  %8 = ptrtoint ptr %free_aen_q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %free_aen_q, align 4
  %cmp.i.not = icmp eq ptr %9, %free_aen_q
  br i1 %cmp.i.not, label %do.body.if.then28.critedge_crit_edge, label %do.end20

do.body.if.then28.critedge_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then28.critedge

do.end20:                                         ; preds = %do.body
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %prev = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %free_aen_q, ptr %prev, align 4
  %13 = load ptr, ptr %9, align 4
  %14 = ptrtoint ptr %free_aen_q to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %free_aen_q, align 4
  %tobool21.not = icmp eq ptr %9, null
  br i1 %tobool21.not, label %do.end20.if.then28.critedge_crit_edge, label %if.then22

do.end20.if.then28.critedge_crit_edge:            ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then28.critedge

if.then22:                                        ; preds = %do.end20
  %active_aen_q = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 40
  %prev.i = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 40, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %9, ptr noundef %16, ptr noundef %active_aen_q) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then22.list_add_tail.exit_crit_edge

if.then22.list_add_tail.exit_crit_edge:           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %9, ptr %prev.i, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %active_aen_q, ptr %9, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %9, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then22.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_aen_spinlock, i32 noundef %call6) #5
  %port = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port, align 8
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fabric, align 4
  %vf_id = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vf_id, align 2
  %aen_data = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %9, i32 0, i32 3
  %27 = ptrtoint ptr %aen_data to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %aen_data, align 8
  %28 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fcs, align 4
  %call32 = tail call ptr @bfa_fcs_get_base_port(ptr noundef %29) #5
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %call32, i32 0, i32 3
  %30 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %port_cfg, align 8
  %ppwwn = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %9, i32 0, i32 3, i32 0, i32 2
  %32 = ptrtoint ptr %ppwwn to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %ppwwn, align 8
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port, align 8
  %port_cfg35 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %port_cfg35 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %port_cfg35, align 8
  %lpwwn = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %9, i32 0, i32 3, i32 0, i32 3
  %37 = ptrtoint ptr %lpwwn to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %lpwwn, align 8
  %pwwn38 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 12
  %38 = ptrtoint ptr %pwwn38 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %pwwn38, align 8
  %rpwwn = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %9, i32 0, i32 3, i32 0, i32 4
  %40 = ptrtoint ptr %rpwwn to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %rpwwn, align 8
  %fcs40 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %fcs40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fcs40, align 4
  %fcs_aen_seq = getelementptr inbounds %struct.bfa_fcs_s, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %fcs_aen_seq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fcs_aen_seq, align 8
  %inc = add i32 %44, 1
  store i32 %inc, ptr %fcs_aen_seq, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #5
  %45 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts.i) #5
  %46 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ts.i, align 8
  %aen_tv_sec.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %9, i32 0, i32 4
  %48 = ptrtoint ptr %aen_tv_sec.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %aen_tv_sec.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %49 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %50, 1000
  %conv.i65 = sext i32 %div.i to i64
  %aen_tv_usec.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %9, i32 0, i32 5
  %51 = ptrtoint ptr %aen_tv_usec.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv.i65, ptr %aen_tv_usec.i, align 8
  %inst_no.i = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 18
  %52 = ptrtoint ptr %inst_no.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %inst_no.i, align 8
  %bfad_num.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %9, i32 0, i32 7
  %54 = ptrtoint ptr %bfad_num.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %bfad_num.i, align 4
  %seq_num.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %9, i32 0, i32 6
  %55 = ptrtoint ptr %seq_num.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %inc, ptr %seq_num.i, align 8
  %aen_category.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %9, i32 0, i32 1
  %56 = ptrtoint ptr %aen_category.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 5, ptr %aen_category.i, align 8
  %aen_type.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %9, i32 0, i32 2
  %57 = ptrtoint ptr %aen_type.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %event, ptr %aen_type.i, align 4
  %bfad_flags.i = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 19
  %58 = ptrtoint ptr %bfad_flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bfad_flags.i, align 4
  %and.i = and i32 %59, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %list_add_tail.exit.bfad_im_post_vendor_event.exit_crit_edge, label %if.then.i

list_add_tail.exit.bfad_im_post_vendor_event.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %bfad_im_post_vendor_event.exit

if.then.i:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %im.i = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 29
  %60 = ptrtoint ptr %im.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %im.i, align 4
  %drv_workq.i = getelementptr inbounds %struct.bfad_im_s, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %drv_workq.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %drv_workq.i, align 4
  %aen_im_notify_work.i = getelementptr inbounds %struct.bfad_im_s, ptr %61, i32 0, i32 3
  %call.i.i66 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %63, ptr noundef %aen_im_notify_work.i) #5
  br label %bfad_im_post_vendor_event.exit

bfad_im_post_vendor_event.exit:                   ; preds = %if.then.i, %list_add_tail.exit.bfad_im_post_vendor_event.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #5
  br label %cleanup

if.then28.critedge:                               ; preds = %do.end20.if.then28.critedge_crit_edge, %do.body.if.then28.critedge_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_aen_spinlock, i32 noundef %call6) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then28.critedge, %bfad_im_post_vendor_event.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_itnim_sm_hcb_offline(ptr nocapture noundef %itnim, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 3
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 1
  %4 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport, align 4
  %pwwn = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pwwn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pwwn, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2052, i32 noundef 355, i64 noundef %7) #5
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2052, i32 noundef 356, i64 noundef %conv) #5
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %event, label %do.body [
    i32 7, label %sw.bb
    i32 10, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %itnim, align 4
  %14 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rport, align 4
  %sm4 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %sm4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sm4, align 8
  tail call void %17(ptr noundef %15, i32 noundef 14) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %18 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bfa_fcs_itnim_sm_offline, ptr %itnim, align 4
  %bfa_itnim.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 5
  %19 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bfa_itnim.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %sw.bb6.bfa_fcs_itnim_free.exit_crit_edge, label %if.then.i

sw.bb6.bfa_fcs_itnim_free.exit_crit_edge:         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %bfa_fcs_itnim_free.exit

if.then.i:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bfa_itnim_delete(ptr noundef nonnull %20) #5
  %21 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %bfa_itnim.i, align 4
  br label %bfa_fcs_itnim_free.exit

bfa_fcs_itnim_free.exit:                          ; preds = %if.then.i, %sw.bb6.bfa_fcs_itnim_free.exit_crit_edge
  %22 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fcs, align 4
  %bfad.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %bfad.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bfad.i, align 4
  %itnim_drv.i = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %itnim, i32 0, i32 2
  %26 = ptrtoint ptr %itnim_drv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %itnim_drv.i, align 4
  tail call void @bfa_fcb_itnim_free(ptr noundef %25, ptr noundef %27) #5
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fcs, align 4
  %trcmod9 = getelementptr inbounds %struct.bfa_fcs_s, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %trcmod9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trcmod9, align 8
  %or = or i32 %event, -559087616
  %conv10 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %31, i32 noundef 2052, i32 noundef 370, i64 noundef %conv10) #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 370, i32 noundef %event) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %bfa_fcs_itnim_free.exit, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_itnim_offline(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcb_itnim_offline(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcs_lport_is_online(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcs_get_base_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_timer_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcxp_req_rsp_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcxp_req_rsp_alloc_wait(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fc_prli_build(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcxp_get_reqbuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcxp_send(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_itnim_prli_response(ptr nocapture noundef readnone %fcsarg, ptr noundef %fcxp, ptr noundef %cbarg, i32 noundef %req_status, i32 noundef %rsp_len, i32 noundef %resid_len, ptr nocapture noundef readnone %rsp_fchs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cbarg, i32 0, i32 3
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %req_status to i64
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2052, i32 noundef 485, i64 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %req_status)
  %cmp.not = icmp eq i32 %req_status, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prli_rsp_err = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cbarg, i32 0, i32 13, i32 4
  %4 = ptrtoint ptr %prli_rsp_err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prli_rsp_err, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %prli_rsp_err, align 4
  %6 = ptrtoint ptr %cbarg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cbarg, align 4
  tail call void %7(ptr noundef %cbarg, i32 noundef 5) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @bfa_fcxp_get_rspbuf(ptr noundef %fcxp) #5
  %8 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %bf.load = load i32, ptr %call, align 1
  %bf.lshr.mask = and i32 %bf.load, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %bf.lshr.mask)
  %cmp2 = icmp eq i32 %bf.lshr.mask, 33554432
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @fc_prli_rsp_parse(ptr noundef %call, i32 noundef %rsp_len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end29, label %if.then8

if.then8:                                         ; preds = %if.then4
  %9 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fcs, align 4
  %trcmod10 = getelementptr inbounds %struct.bfa_fcs_s, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %trcmod10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trcmod10, align 8
  %conv11 = zext i32 %rsp_len to i64
  tail call void @__bfa_trc(ptr noundef %12, i32 noundef 2052, i32 noundef 502, i64 noundef %conv11) #5
  %servparams = getelementptr inbounds %struct.fc_prli_s, ptr %call, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %servparams to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %bf.load12 = load i32, ptr %servparams, align 1
  %14 = and i32 %bf.load12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end26, label %if.then14

if.then14:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %parampage = getelementptr inbounds %struct.fc_prli_s, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fcs, align 4
  %trcmod16 = getelementptr inbounds %struct.bfa_fcs_s, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %trcmod16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trcmod16, align 8
  %19 = ptrtoint ptr %parampage to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %bf.load18 = load i32, ptr %parampage, align 1
  %bf.lshr19 = lshr i32 %bf.load18, 24
  %conv20 = zext i32 %bf.lshr19 to i64
  tail call void @__bfa_trc(ptr noundef %18, i32 noundef 2052, i32 noundef 508, i64 noundef %conv20) #5
  %rport = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cbarg, i32 0, i32 1
  %20 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rport, align 4
  %scsi_function = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %21, i32 0, i32 26
  %22 = ptrtoint ptr %scsi_function to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %scsi_function, align 4
  %prli_rsp_acc = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cbarg, i32 0, i32 13, i32 5
  %23 = ptrtoint ptr %prli_rsp_acc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %prli_rsp_acc, align 4
  %inc22 = add i32 %24, 1
  store i32 %inc22, ptr %prli_rsp_acc, align 4
  %initiator = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cbarg, i32 0, i32 13, i32 6
  %25 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %initiator, align 4
  %inc24 = add i32 %26, 1
  store i32 %inc24, ptr %initiator, align 4
  %27 = ptrtoint ptr %cbarg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cbarg, align 4
  tail call void %28(ptr noundef %cbarg, i32 noundef 4) #5
  br label %cleanup

if.end26:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %prli_rsp_parse_err = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cbarg, i32 0, i32 13, i32 7
  %29 = ptrtoint ptr %prli_rsp_parse_err to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %prli_rsp_parse_err, align 4
  %inc28 = add i32 %30, 1
  store i32 %inc28, ptr %prli_rsp_parse_err, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %rport30 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cbarg, i32 0, i32 1
  %31 = ptrtoint ptr %rport30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rport30, align 4
  %scsi_function31 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %32, i32 0, i32 26
  %33 = ptrtoint ptr %scsi_function31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %scsi_function31, align 4
  %servparams33 = getelementptr inbounds %struct.fc_prli_s, ptr %call, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %servparams33 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %bf.load34 = load i32, ptr %servparams33, align 1
  %bf.lshr35 = lshr i32 %bf.load34, 8
  %bf.clear36 = and i32 %bf.lshr35, 1
  %seq_rec = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cbarg, i32 0, i32 7
  %35 = ptrtoint ptr %seq_rec to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %bf.clear36, ptr %seq_rec, align 4
  %bf.load37 = load i32, ptr %servparams33, align 1
  %bf.lshr38 = lshr i32 %bf.load37, 10
  %bf.clear39 = and i32 %bf.lshr38, 1
  %rec_support = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cbarg, i32 0, i32 8
  %36 = ptrtoint ptr %rec_support to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %bf.clear39, ptr %rec_support, align 4
  %bf.load40 = load i32, ptr %servparams33, align 1
  %bf.lshr41 = lshr i32 %bf.load40, 9
  %bf.clear42 = and i32 %bf.lshr41, 1
  %task_retry_id = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cbarg, i32 0, i32 10
  %37 = ptrtoint ptr %task_retry_id to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %bf.clear42, ptr %task_retry_id, align 4
  %bf.load43 = load i32, ptr %servparams33, align 1
  %bf.lshr44 = lshr i32 %bf.load43, 7
  %bf.clear45 = and i32 %bf.lshr44, 1
  %conf_comp = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cbarg, i32 0, i32 9
  %38 = ptrtoint ptr %conf_comp to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %bf.clear45, ptr %conf_comp, align 4
  %prli_rsp_acc47 = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cbarg, i32 0, i32 13, i32 5
  %39 = ptrtoint ptr %prli_rsp_acc47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %prli_rsp_acc47, align 4
  %inc48 = add i32 %40, 1
  store i32 %inc48, ptr %prli_rsp_acc47, align 4
  %41 = ptrtoint ptr %cbarg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cbarg, align 4
  tail call void %42(ptr noundef %cbarg, i32 noundef 4) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call50 = tail call ptr @bfa_fcxp_get_rspbuf(ptr noundef %fcxp) #5
  %43 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fcs, align 4
  %trcmod52 = getelementptr inbounds %struct.bfa_fcs_s, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %trcmod52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %trcmod52, align 8
  %reason_code = getelementptr inbounds %struct.fc_ls_rjt_s, ptr %call50, i32 0, i32 1
  %47 = ptrtoint ptr %reason_code to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %bf.load53 = load i32, ptr %reason_code, align 1
  %bf.lshr54 = lshr i32 %bf.load53, 16
  %bf.clear55 = and i32 %bf.lshr54, 255
  %conv56 = zext i32 %bf.clear55 to i64
  tail call void @__bfa_trc(ptr noundef %46, i32 noundef 2052, i32 noundef 534, i64 noundef %conv56) #5
  %48 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fcs, align 4
  %trcmod58 = getelementptr inbounds %struct.bfa_fcs_s, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %trcmod58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %trcmod58, align 8
  %52 = ptrtoint ptr %reason_code to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %bf.load59 = load i32, ptr %reason_code, align 1
  %bf.lshr60 = lshr i32 %bf.load59, 8
  %bf.clear61 = and i32 %bf.lshr60, 255
  %conv62 = zext i32 %bf.clear61 to i64
  tail call void @__bfa_trc(ptr noundef %51, i32 noundef 2052, i32 noundef 535, i64 noundef %conv62) #5
  %prli_rsp_rjt = getelementptr inbounds %struct.bfa_fcs_itnim_s, ptr %cbarg, i32 0, i32 13, i32 8
  %53 = ptrtoint ptr %prli_rsp_rjt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %prli_rsp_rjt, align 4
  %inc64 = add i32 %54, 1
  store i32 %inc64, ptr %prli_rsp_rjt, align 4
  %55 = ptrtoint ptr %reason_code to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %bf.load66 = load i32, ptr %reason_code, align 1
  %56 = and i32 %bf.load66, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 720896, i32 %56)
  %cmp69 = icmp eq i32 %56, 720896
  %57 = ptrtoint ptr %cbarg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cbarg, align 4
  br i1 %cmp69, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %58(ptr noundef %cbarg, i32 noundef 12) #5
  br label %cleanup

if.end73:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %58(ptr noundef %cbarg, i32 noundef 5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.then71, %if.end29, %if.end26, %if.then14, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcxp_get_rspbuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_prli_rsp_parse(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_itnim_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcb_itnim_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !27, !28, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bfa/bfa_fcs_fcpim.c", i32 753, i32 2}
!2 = distinct !{null, !3, !"__trc_fileno", i1 false, i1 false}
!3 = !{!"../drivers/scsi/bfa/bfa_fcs_fcpim.c", i32 20, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/bfa/bfa_fcs_fcpim.c", i32 97, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @bfa_fcs_itnim_sm_offline._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @bfa_fcs_itnim_sm_offline._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/scsi/bfa/bfa_fcs_fcpim.c", i32 133, i32 3}
!11 = !{ptr @bfa_fcs_itnim_sm_prli_send._entry, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @bfa_fcs_itnim_sm_prli_send._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/bfa/bfa_fcs_fcpim.c", i32 185, i32 3}
!15 = !{ptr @bfa_fcs_itnim_sm_prli._entry, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @bfa_fcs_itnim_sm_prli._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/bfa/bfa_fcs_fcpim.c", i32 223, i32 3}
!19 = !{ptr @bfa_fcs_itnim_sm_hal_rport_online._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @bfa_fcs_itnim_sm_hal_rport_online._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/bfa/bfa_fcs_fcpim.c", i32 289, i32 3}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @bfa_fcs_itnim_sm_hcb_online._entry, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @bfa_fcs_itnim_sm_hcb_online._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @bfa_fcs_itnim_sm_hcb_online._entry.10, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/scsi/bfa/bfa_fcs_fcpim.c", i32 306, i32 3}
!30 = !{ptr @bfa_fcs_itnim_sm_hcb_online._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/bfa/bfa_fcs_fcpim.c", i32 329, i32 4}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @bfa_fcs_itnim_sm_online._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @bfa_fcs_itnim_sm_online._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/bfa/bfa_fcs_fcpim.c", i32 334, i32 4}
!39 = !{ptr @bfa_fcs_itnim_sm_online._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @bfa_fcs_itnim_sm_online._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @bfa_fcs_itnim_sm_online._entry.18, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/scsi/bfa/bfa_fcs_fcpim.c", i32 347, i32 3}
!43 = !{ptr @bfa_fcs_itnim_sm_online._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/bfa/bfa_cs.h", i32 296, i32 19}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/bfa/bfa_fcs_fcpim.c", i32 370, i32 3}
!48 = !{ptr @bfa_fcs_itnim_sm_hcb_offline._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @bfa_fcs_itnim_sm_hcb_offline._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/bfa/bfa_fcs_fcpim.c", i32 268, i32 3}
!52 = !{ptr @bfa_fcs_itnim_sm_prli_retry._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @bfa_fcs_itnim_sm_prli_retry._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/bfa/bfa_fcs_fcpim.c", i32 409, i32 3}
!56 = !{ptr @bfa_fcs_itnim_sm_initiator._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @bfa_fcs_itnim_sm_initiator._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @itnim_sm_table, !59, !"itnim_sm_table", i1 false, i1 false}
!59 = !{!"../drivers/scsi/bfa/bfa_fcs_fcpim.c", i32 55, i32 30}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"auto-init"}
!70 = !{!"branch_weights", i32 1, i32 2000}
