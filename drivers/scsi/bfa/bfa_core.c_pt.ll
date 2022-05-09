; ModuleID = '/llk/IR_all_yes/drivers/scsi/bfa/bfa_core.c_pt.bc'
source_filename = "../drivers/scsi/bfa/bfa_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bfa_ioc_cbfn_s = type { ptr, ptr, ptr, ptr }
%struct.bfa_pciid_s = type { i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.bfa_trc_mod_s = type { i32, i32, i32, i32, i32, [3 x i32], [4096 x %struct.bfa_trc_s] }
%struct.bfa_trc_s = type { i16, i16, i32, %union.anon }
%union.anon = type { i64 }
%struct.bfa_s = type { ptr, ptr, ptr, %struct.bfa_ioc_s, %struct.bfa_iocfc_s, %struct.bfa_timer_mod_s, %struct.bfa_modules_s, %struct.list_head, i32, [4 x %struct.list_head], i32, %struct.bfa_msix_s, i32, i32 }
%struct.bfa_ioc_s = type { ptr, ptr, %struct.bfa_pcidev_s, ptr, %struct.bfa_timer_s, %struct.bfa_timer_s, %struct.bfa_timer_s, i32, %struct.list_head, ptr, i32, i32, i32, %struct.bfa_ioc_regs_s, ptr, %struct.bfa_ioc_drv_stats_s, i32, i32, i32, i8, %struct.bfa_dma_s, ptr, ptr, %struct.bfa_ioc_mbox_mod_s, ptr, %struct.bfa_iocpf_s, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.bfa_pcidev_s = type { i32, i8, i16, i16, ptr }
%struct.bfa_timer_s = type { %struct.list_head, ptr, ptr, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.bfa_msix_s = type { i32, [22 x ptr] }
%struct.bfi_msg_s = type { %struct.bfi_mhdr_s, [31 x i32] }
%struct.bfi_faa_query_s = type { %struct.bfi_mhdr_s, i8, i8, [2 x i8], i64 }
%struct.bfi_ioc_attr_s = type { i64, i64, %struct.mac_s, i8, i8, i64, i64, %struct.mac_s, i16, %struct.mac_s, i16, [12 x i8], i8, i8, i8, i8, i32, i16, i8, i8, [64 x i8], [64 x i8], %struct.bfa_mfg_vpd_s, i32, i8, i8, i16, [16 x i8] }
%struct.mac_s = type { [6 x i8] }
%struct.bfa_mfg_vpd_s = type { i8, [3 x i8], i8, i8, i8, i8, [512 x i8] }
%struct.anon.3 = type { i8, i8 }
%struct.bfa_meminfo_s = type { %struct.bfa_mem_dma_s, %struct.bfa_mem_kva_s }
%struct.bfi_iocfc_cfgrsp_s = type <{ %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_intr_attr_s, %struct.bfi_iocfc_bootwwns, %struct.bfi_pbc_s, %struct.bfi_iocfc_qreg_s }>
%struct.bfa_iocfc_intr_attr_s = type { i8, [3 x i8], i16, i16 }
%struct.bfi_iocfc_bootwwns = type { [4 x i64], i8, [7 x i8] }
%struct.bfi_pbc_s = type { i8, i8, i8, i8, i8, i8, i16, i64, i64, [8 x %struct.bfi_pbc_blun_s], [16 x %struct.bfi_pbc_vport_s] }
%struct.bfi_pbc_blun_s = type { i64, %struct.scsi_lun }
%struct.scsi_lun = type { [8 x i8] }
%struct.bfi_pbc_vport_s = type { i64, i64 }
%struct.bfi_iocfc_qreg_s = type { [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i8] }
%struct.bfi_iocfc_cfg_s = type { i8, i8, i16, i32, i8, i8, [2 x i8], i16, i16, [4 x %union.bfi_addr_u], [4 x %union.bfi_addr_u], [4 x i16], [4 x %union.bfi_addr_u], [4 x %union.bfi_addr_u], [4 x i16], %union.bfi_addr_u, %union.bfi_addr_u, [4 x %union.bfi_addr_u], %struct.bfa_iocfc_intr_attr_s }
%union.bfi_addr_u = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32 }
%struct.bfi_faa_addr_msg_s = type { %struct.bfi_mhdr_s, [4 x i8], i64, i64 }
%struct.bfa_faa_attr_s = type { i64, i8, i8, [6 x i8] }
%struct.bfa_iocfc_attr_s = type { %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_intr_attr_s }
%struct.bfi_iocfc_set_intr_req_s = type { %struct.bfi_mhdr_s, i8, [3 x i8], i16, i16 }
%struct.bfad_s = type { ptr, %struct.list_head, %struct.bfa_s, %struct.bfa_fcs_s, ptr, ptr, %struct.bfa_pcidev_s, %struct.bfa_ioc_pci_attr_s, ptr, ptr, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i32, %struct.bfad_port_s, %struct.bfa_meminfo_s, %struct.bfa_iocfc_cfg_s, i32, i32, %struct.spinlock, ptr, %struct.bfad_cfg_param_s, [22 x %struct.bfad_msix_s], i32, [64 x i8], [64 x i8], %struct.timer_list, i32, ptr, ptr, %struct.bfa_plog_s, i32, %union.bfad_tmp_buf, %struct.fc_host_statistics, %struct.list_head, ptr, i32, [5 x ptr], %struct.list_head, %struct.list_head, [512 x %struct.bfa_aen_entry_s], %struct.spinlock, %struct.list_head }
%struct.bfa_fcs_s = type { ptr, ptr, ptr, i32, i32, i32, i16, %struct.bfa_fcs_driver_info_s, %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_stats_s, %struct.bfa_wc_s, i32, i32 }
%struct.bfa_fcs_driver_info_s = type { [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8] }
%struct.bfa_fcs_fabric_s = type { %struct.list_head, ptr, ptr, %struct.bfa_fcs_lport_s, i32, i32, i8, i8, i8, i16, i16, i16, i16, %struct.list_head, %struct.list_head, ptr, %struct.bfa_timer_s, i64, i32, %struct.bfa_timer_s, %union.anon.94, %struct.bfa_wc_s, %struct.bfa_vf_stats_s, ptr, [16 x i8], %struct.bfa_wc_s }
%struct.bfa_fcs_lport_s = type { %struct.list_head, ptr, ptr, %struct.bfa_lport_cfg_s, %struct.bfa_timer_s, [3 x i8], i8, i16, %struct.list_head, ptr, %union.bfa_fcs_lport_topo_u, ptr, ptr, ptr, %struct.bfa_fcxp_wqe_s, %struct.bfa_lport_stats_s, %struct.bfa_wc_s }
%struct.bfa_lport_cfg_s = type { i64, i64, %struct.bfa_lport_symname_s, %struct.bfa_lport_symname_s, i32, i32, i32, [16 x i8], [4 x i8] }
%struct.bfa_lport_symname_s = type { [128 x i8] }
%union.bfa_fcs_lport_topo_u = type { %struct.bfa_fcs_lport_n2n_s, [320 x i8] }
%struct.bfa_fcs_lport_n2n_s = type { i32, i16, i64 }
%struct.bfa_fcxp_wqe_s = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.bfa_lport_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.94 = type { i16 }
%struct.bfa_vf_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_fcs_stats_s = type { %struct.anon.95 }
%struct.anon.95 = type { i32, i32, i32 }
%struct.bfa_wc_s = type { ptr, ptr, i32 }
%struct.bfa_ioc_pci_attr_s = type { i16, i16, i16, i16, i32, i32, [8 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bfad_port_s = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.bfad_cfg_param_s = type { i32, i32, i32, i32, i32 }
%struct.bfad_msix_s = type { ptr, %struct.msix_entry, [32 x i8] }
%struct.msix_entry = type { i32, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.bfa_plog_s = type { [8 x i8], i8, [7 x i8], i32, i16, i16, [256 x %struct.bfa_plog_rec_s] }
%struct.bfa_plog_rec_s = type { i64, i8, i8, i8, i8, i8, i8, i16, %union.anon.0 }
%union.anon.0 = type { [8 x i32] }
%union.bfad_tmp_buf = type { [256 x i64] }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bfa_aen_entry_s = type { %struct.list_head, i32, i32, %union.bfa_aen_data_u, i64, i64, i32, i32 }
%union.bfa_aen_data_u = type { %struct.bfa_rport_aen_data_s }
%struct.bfa_rport_aen_data_s = type { i16, [3 x i16], i64, i64, i64, %union.anon.97 }
%union.anon.97 = type { %struct.bfa_rport_qos_attr_s }
%struct.bfa_rport_qos_attr_s = type { i8, [3 x i8], i32 }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.bfi_iocfc_cfg_req_s = type { %struct.bfi_mhdr_s, %union.bfi_addr_u }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/scsi/bfa/bfa_core.c\00", [36 x i8] zeroinitializer }, align 32
@bfa_iocfc_cbfn = internal global { %struct.bfa_ioc_cbfn_s, [16 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IOC Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IOC Disable\00", [20 x i8] zeroinitializer }, align 32
@bfa_get_pciids.__pciids = internal global { [4 x %struct.bfa_pciid_s], [16 x i8] } { [4 x %struct.bfa_pciid_s] [%struct.bfa_pciid_s { i16 5719, i16 19 }, %struct.bfa_pciid_s { i16 5719, i16 23 }, %struct.bfa_pciid_s { i16 5719, i16 20 }, %struct.bfa_pciid_s { i16 5719, i16 33 }], [16 x i8] zeroinitializer }, align 32
@bfa_isrs = internal constant { [35 x ptr], [52 x i8] } { [35 x ptr] [ptr @bfa_isr_unhandled, ptr @bfa_isr_unhandled, ptr @bfa_fcdiag_intr, ptr @bfa_isr_unhandled, ptr @bfa_isr_unhandled, ptr @bfa_fcport_isr, ptr @bfa_isr_unhandled, ptr @bfa_isr_unhandled, ptr @bfa_uf_isr, ptr @bfa_fcxp_isr, ptr @bfa_lps_isr, ptr @bfa_rport_isr, ptr @bfa_itn_isr, ptr @bfa_isr_unhandled, ptr @bfa_isr_unhandled, ptr @bfa_isr_unhandled, ptr @bfa_ioim_isr, ptr @bfa_ioim_good_comp_isr, ptr @bfa_tskim_isr, ptr @bfa_isr_unhandled, ptr @bfa_isr_unhandled, ptr @bfa_isr_unhandled, ptr @bfa_isr_unhandled, ptr @bfa_isr_unhandled, ptr @bfa_isr_unhandled, ptr @bfa_isr_unhandled, ptr @bfa_isr_unhandled, ptr @bfa_isr_unhandled, ptr @bfa_isr_unhandled, ptr @bfa_isr_unhandled, ptr @bfa_isr_unhandled, ptr @bfa_isr_unhandled, ptr null, ptr null, ptr null], [52 x i8] zeroinitializer }, align 32
@bfa_mbox_isrs = internal global { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [28 x ptr] }>, [52 x i8] } { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [28 x ptr] }> <{ ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfa_iocfc_isr, [28 x ptr] zeroinitializer }>, [52 x i8] zeroinitializer }, align 32
@bfa_iocfc_sm_stopped._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Assertion failure: %s:%d: %d\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bfa_iocfc_sm_stopped\00", [43 x i8] zeroinitializer }, align 32
@bfa_iocfc_sm_stopped._entry_ptr = internal global ptr @bfa_iocfc_sm_stopped._entry, section ".printk_index", align 4
@bfa_iocfc_sm_initing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.6, ptr @.str, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bfa_iocfc_sm_initing\00", [43 x i8] zeroinitializer }, align 32
@bfa_iocfc_sm_initing._entry_ptr = internal global ptr @bfa_iocfc_sm_initing._entry, section ".printk_index", align 4
@bfa_iocfc_sm_dconf_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.7, ptr @.str, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bfa_iocfc_sm_dconf_read\00", [40 x i8] zeroinitializer }, align 32
@bfa_iocfc_sm_dconf_read._entry_ptr = internal global ptr @bfa_iocfc_sm_dconf_read._entry, section ".printk_index", align 4
@bfa_iocfc_sm_init_cfg_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.8, ptr @.str, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bfa_iocfc_sm_init_cfg_wait\00", [37 x i8] zeroinitializer }, align 32
@bfa_iocfc_sm_init_cfg_wait._entry_ptr = internal global ptr @bfa_iocfc_sm_init_cfg_wait._entry, section ".printk_index", align 4
@bfa_iocfc_sm_init_cfg_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.9, ptr @.str, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bfa_iocfc_sm_init_cfg_done\00", [37 x i8] zeroinitializer }, align 32
@bfa_iocfc_sm_init_cfg_done._entry_ptr = internal global ptr @bfa_iocfc_sm_init_cfg_done._entry, section ".printk_index", align 4
@bfa_iocfc_sm_failed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.10, ptr @.str, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bfa_iocfc_sm_failed\00", [44 x i8] zeroinitializer }, align 32
@bfa_iocfc_sm_failed._entry_ptr = internal global ptr @bfa_iocfc_sm_failed._entry, section ".printk_index", align 4
@bfa_iocfc_sm_dconf_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.11, ptr @.str, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bfa_iocfc_sm_dconf_write\00", [39 x i8] zeroinitializer }, align 32
@bfa_iocfc_sm_dconf_write._entry_ptr = internal global ptr @bfa_iocfc_sm_dconf_write._entry, section ".printk_index", align 4
@bfa_iocfc_sm_cfg_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.12, ptr @.str, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bfa_iocfc_sm_cfg_wait\00", [42 x i8] zeroinitializer }, align 32
@bfa_iocfc_sm_cfg_wait._entry_ptr = internal global ptr @bfa_iocfc_sm_cfg_wait._entry, section ".printk_index", align 4
@bfa_iocfc_sm_disabling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.13, ptr @.str, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bfa_iocfc_sm_disabling\00", [41 x i8] zeroinitializer }, align 32
@bfa_iocfc_sm_disabling._entry_ptr = internal global ptr @bfa_iocfc_sm_disabling._entry, section ".printk_index", align 4
@bfa_iocfc_sm_disabled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.14, ptr @.str, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bfa_iocfc_sm_disabled\00", [42 x i8] zeroinitializer }, align 32
@bfa_iocfc_sm_disabled._entry_ptr = internal global ptr @bfa_iocfc_sm_disabled._entry, section ".printk_index", align 4
@bfa_iocfc_sm_enabling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.15, ptr @.str, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bfa_iocfc_sm_enabling\00", [42 x i8] zeroinitializer }, align 32
@bfa_iocfc_sm_enabling._entry_ptr = internal global ptr @bfa_iocfc_sm_enabling._entry, section ".printk_index", align 4
@bfa_iocfc_sm_stopping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.16, ptr @.str, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bfa_iocfc_sm_stopping\00", [42 x i8] zeroinitializer }, align 32
@bfa_iocfc_sm_stopping._entry_ptr = internal global ptr @bfa_iocfc_sm_stopping._entry, section ".printk_index", align 4
@bfa_iocfc_sm_init_failed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.17, ptr @.str, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bfa_iocfc_sm_init_failed\00", [39 x i8] zeroinitializer }, align 32
@bfa_iocfc_sm_init_failed._entry_ptr = internal global ptr @bfa_iocfc_sm_init_failed._entry, section ".printk_index", align 4
@bfa_iocfc_sm_operational._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.18, ptr @.str, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bfa_iocfc_sm_operational\00", [39 x i8] zeroinitializer }, align 32
@bfa_iocfc_sm_operational._entry_ptr = internal global ptr @bfa_iocfc_sm_operational._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 20, i64 33, i64 34, i64 35]
@__sancov_gen_cov_switch_values.19 = internal global [9 x i64] [i64 7, i64 32, i64 804, i64 807, i64 902, i64 1007, i64 1741, i64 1867, i64 1869]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 16, i64 20, i64 33, i64 34, i64 35]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 8, i64 129, i64 131, i64 132, i64 133]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 8]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 8, i64 9]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 7, i64 9, i64 10]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 7, i64 9, i64 10]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 8, i64 10]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 5, i64 8]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 8, i64 10]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 8]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 895, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"bfa_iocfc_cbfn\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 241, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1670, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1679, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant [9 x i8] c"__pciids\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1945, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant [9 x i8] c"bfa_isrs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 20, i32 24 }
@___asan_gen_.53 = private unnamed_addr constant [14 x i8] c"bfa_mbox_isrs\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 57, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 263, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 296, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 329, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 362, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 394, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 645, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 444, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 562, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 587, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 615, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 517, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 476, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 683, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [31 x i8] c"../drivers/scsi/bfa/bfa_core.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 422, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @bfa_iocfc_sm_cfg_wait._entry, ptr @bfa_iocfc_sm_cfg_wait._entry_ptr, ptr @bfa_iocfc_sm_dconf_read._entry, ptr @bfa_iocfc_sm_dconf_read._entry_ptr, ptr @bfa_iocfc_sm_dconf_write._entry, ptr @bfa_iocfc_sm_dconf_write._entry_ptr, ptr @bfa_iocfc_sm_disabled._entry, ptr @bfa_iocfc_sm_disabled._entry_ptr, ptr @bfa_iocfc_sm_disabling._entry, ptr @bfa_iocfc_sm_disabling._entry_ptr, ptr @bfa_iocfc_sm_enabling._entry, ptr @bfa_iocfc_sm_enabling._entry_ptr, ptr @bfa_iocfc_sm_failed._entry, ptr @bfa_iocfc_sm_failed._entry_ptr, ptr @bfa_iocfc_sm_init_cfg_done._entry, ptr @bfa_iocfc_sm_init_cfg_done._entry_ptr, ptr @bfa_iocfc_sm_init_cfg_wait._entry, ptr @bfa_iocfc_sm_init_cfg_wait._entry_ptr, ptr @bfa_iocfc_sm_init_failed._entry, ptr @bfa_iocfc_sm_init_failed._entry_ptr, ptr @bfa_iocfc_sm_initing._entry, ptr @bfa_iocfc_sm_initing._entry_ptr, ptr @bfa_iocfc_sm_operational._entry, ptr @bfa_iocfc_sm_operational._entry_ptr, ptr @bfa_iocfc_sm_stopped._entry, ptr @bfa_iocfc_sm_stopped._entry_ptr, ptr @bfa_iocfc_sm_stopping._entry, ptr @bfa_iocfc_sm_stopping._entry_ptr, ptr @.str, ptr @bfa_iocfc_cbfn, ptr @.str.1, ptr @.str.2, ptr @bfa_get_pciids.__pciids, ptr @bfa_isrs, ptr @bfa_mbox_isrs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocfc_cbfn to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_get_pciids.__pciids to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_isrs to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_mbox_isrs to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocfc_sm_stopped._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocfc_sm_initing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocfc_sm_dconf_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocfc_sm_init_cfg_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocfc_sm_init_cfg_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocfc_sm_failed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocfc_sm_dconf_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocfc_sm_cfg_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocfc_sm_disabling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocfc_sm_disabled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocfc_sm_enabling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocfc_sm_stopping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocfc_sm_init_failed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocfc_sm_operational._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bfa_trc(ptr nocapture noundef %trcm, i32 noundef %fileno, i32 noundef %line, i64 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stopped = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %trcm, i32 0, i32 3
  %0 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail1 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %trcm, i32 0, i32 1
  %2 = ptrtoint ptr %tail1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail1, align 4
  %arrayidx = getelementptr %struct.bfa_trc_mod_s, ptr %trcm, i32 0, i32 6, i32 %3
  %conv = trunc i32 %fileno to i16
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %arrayidx, align 8
  %conv4 = trunc i32 %line to i16
  %line5 = getelementptr %struct.bfa_trc_mod_s, ptr %trcm, i32 0, i32 6, i32 %3, i32 1
  %5 = ptrtoint ptr %line5 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv4, ptr %line5, align 2
  %data6 = getelementptr %struct.bfa_trc_mod_s, ptr %trcm, i32 0, i32 6, i32 %3, i32 3
  %6 = ptrtoint ptr %data6 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %data, ptr %data6, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #10
  %7 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts) #10
  %8 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ts, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %10 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tv_nsec, align 8
  %div = sdiv i32 %11, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #10
  %12 = trunc i64 %9 to i32
  %13 = mul i32 %12, 1000000
  %conv8 = add i32 %13, %div
  %timestamp = getelementptr %struct.bfa_trc_mod_s, ptr %trcm, i32 0, i32 6, i32 %3, i32 2
  %14 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv8, ptr %timestamp, align 4
  %15 = ptrtoint ptr %tail1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tail1, align 4
  %add10 = add i32 %16, 1
  %and = and i32 %add10, 4095
  store i32 %and, ptr %tail1, align 4
  %17 = ptrtoint ptr %trcm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %trcm, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %18)
  %cmp = icmp eq i32 %and, %18
  br i1 %cmp, label %if.then14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add16 = add i32 %16, 2
  %and17 = and i32 %add16, 4095
  %19 = ptrtoint ptr %trcm to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and17, ptr %trcm, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_msix_all(ptr noundef %bfa, i32 noundef %vec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa_regs = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 22
  %0 = ptrtoint ptr %bfa_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa_regs, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !82
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %queue_process = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 8
  %4 = ptrtoint ptr %queue_process to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_process, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end6_crit_edge, label %for.body.preheader

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

for.body.preheader:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call fastcc i32 @bfa_isr_rspq(ptr noundef %bfa, i32 noundef 0)
  %call5.1 = tail call fastcc i32 @bfa_isr_rspq(ptr noundef %bfa, i32 noundef 1)
  %call5.2 = tail call fastcc i32 @bfa_isr_rspq(ptr noundef %bfa, i32 noundef 2)
  %call5.3 = tail call fastcc i32 @bfa_isr_rspq(ptr noundef %bfa, i32 noundef 3)
  br label %if.end6

if.end6:                                          ; preds = %for.body.preheader, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %and7 = and i32 %3, -65281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %and11 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end23_crit_edge, label %land.lhs.true13

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true13:                                  ; preds = %if.end10
  %queue_process14 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 8
  %6 = ptrtoint ptr %queue_process14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue_process14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool15.not = icmp eq i32 %7, 0
  br i1 %tobool15.not, label %land.lhs.true13.if.end23_crit_edge, label %for.cond17.preheader

land.lhs.true13.if.end23_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

for.cond17.preheader:                             ; preds = %land.lhs.true13
  %hw_reqq_ack.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 1
  %drvcfg.i.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 2, i32 1
  br label %for.body19

for.body19:                                       ; preds = %bfa_isr_reqq.exit.for.body19_crit_edge, %for.cond17.preheader
  %queue.152 = phi i32 [ 0, %for.cond17.preheader ], [ %inc21, %bfa_isr_reqq.exit.for.body19_crit_edge ]
  %8 = ptrtoint ptr %hw_reqq_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_reqq_ack.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body19.do.end.i_crit_edge, label %if.then.i

for.body19.do.end.i_crit_edge:                    ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %9(ptr noundef %bfa, i32 noundef %queue.152) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %for.body19.do.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 9, i32 %queue.152
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp eq ptr %11, %arrayidx.i
  br i1 %cmp.i.i, label %do.end.i.bfa_isr_reqq.exit_crit_edge, label %if.then5.i

do.end.i.bfa_isr_reqq.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_isr_reqq.exit

if.then5.i:                                       ; preds = %do.end.i
  %arrayidx2.i.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 3, i32 %queue.152
  %arrayidx5.i.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 19, i32 %queue.152
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %if.then5.i
  %qe.021.i.i = phi ptr [ %11, %if.then5.i ], [ %qen.023.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %qe.021.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %qen.023.i.i = load ptr, ptr %qe.021.i.i, align 4
  %13 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2.i.i, align 4
  %add.i.i = add i32 %14, 1
  %15 = ptrtoint ptr %drvcfg.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %drvcfg.i.i, align 8
  %conv.i13.i = zext i16 %16 to i32
  %sub.i.i = add nsw i32 %conv.i13.i, -1
  %and.i.i = and i32 %sub.i.i, %add.i.i
  %17 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx5.i.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %20)
  %cmp.i14.i = icmp eq i32 %and.i.i, %20
  br i1 %cmp.i14.i, label %for.body.i.i.bfa_isr_reqq.exit_crit_edge, label %if.end.i.i

for.body.i.i.bfa_isr_reqq.exit_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_isr_reqq.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qe.021.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del.exit.i.i_crit_edge

if.end.i.i.list_del.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %qe.021.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i.i, align 4
  %23 = ptrtoint ptr %qe.021.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qe.021.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del.exit.i.i_crit_edge
  %27 = ptrtoint ptr %qe.021.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %qe.021.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %qe.021.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %qresume.i.i = getelementptr inbounds %struct.bfa_reqq_wait_s, ptr %qe.021.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %qresume.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %qresume.i.i, align 4
  %cbarg.i.i = getelementptr inbounds %struct.bfa_reqq_wait_s, ptr %qe.021.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %cbarg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cbarg.i.i, align 4
  tail call void %30(ptr noundef %32) #10
  %cmp.i.not.i.i = icmp eq ptr %qen.023.i.i, %arrayidx.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.bfa_isr_reqq.exit_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

list_del.exit.i.i.bfa_isr_reqq.exit_crit_edge:    ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_isr_reqq.exit

bfa_isr_reqq.exit:                                ; preds = %list_del.exit.i.i.bfa_isr_reqq.exit_crit_edge, %for.body.i.i.bfa_isr_reqq.exit_crit_edge, %do.end.i.bfa_isr_reqq.exit_crit_edge
  %inc21 = add nuw nsw i32 %queue.152, 1
  %exitcond.not = icmp eq i32 %inc21, 4
  br i1 %exitcond.not, label %bfa_isr_reqq.exit.if.end23_crit_edge, label %bfa_isr_reqq.exit.for.body19_crit_edge

bfa_isr_reqq.exit.for.body19_crit_edge:           ; preds = %bfa_isr_reqq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body19

bfa_isr_reqq.exit.if.end23_crit_edge:             ; preds = %bfa_isr_reqq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end23:                                         ; preds = %bfa_isr_reqq.exit.if.end23_crit_edge, %land.lhs.true13.if.end23_crit_edge, %if.end10.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %3)
  %tobool26.not = icmp ult i32 %3, 65536
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bfa_msix_lpu_err(ptr noundef %bfa, i32 undef)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end23.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bfa_isr_rspq(ptr noundef %bfa, i32 noundef %qid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 4, i32 %qid
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 21, i32 %qid
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp3.not67 = icmp eq i32 %1, %5
  br i1 %cmp3.not67, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %arrayidx6 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 20, i32 %qid
  %num_rspq_elems = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 2, i32 1, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %ci.068 = phi i32 [ %1, %while.body.lr.ph ], [ %and, %if.end.while.body_crit_edge ]
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 8
  %arrayidx8 = getelementptr %struct.bfi_msg_s, ptr %7, i32 %ci.068
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %9)
  %cmp10 = icmp ugt i8 %9, 34
  br i1 %cmp10, label %do.end, label %while.body.if.end_crit_edge, !prof !84

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 726, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %while.body.if.end_crit_edge
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %idxprom = zext i8 %11 to i32
  %arrayidx32 = getelementptr [35 x ptr], ptr @bfa_isrs, i32 0, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx32, align 4
  tail call void %13(ptr noundef %bfa, ptr noundef %arrayidx8) #10
  %inc = add i32 %ci.068, 1
  %14 = ptrtoint ptr %num_rspq_elems to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_rspq_elems, align 2
  %conv35 = zext i16 %15 to i32
  %sub = add nsw i32 %conv35, -1
  %and = and i32 %sub, %inc
  %cmp3.not = icmp eq i32 %and, %5
  br i1 %cmp3.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %ci.0.lcssa = phi i32 [ %1, %entry.while.end_crit_edge ], [ %5, %if.end.while.end_crit_edge ]
  %hw_rspq_ack = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 2
  %16 = ptrtoint ptr %hw_rspq_ack to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_rspq_ack, align 8
  tail call void %17(ptr noundef %bfa, i32 noundef %qid, i32 noundef %ci.0.lcssa) #10
  %arrayidx39 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 9, i32 %qid
  %18 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx39, align 4
  %cmp.i = icmp eq ptr %19, %arrayidx39
  br i1 %cmp.i, label %while.end.if.end42_crit_edge, label %if.then41

while.end.if.end42_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then41:                                        ; preds = %while.end
  %arrayidx2.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 3, i32 %qid
  %drvcfg.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 2, i32 1
  %arrayidx5.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 19, i32 %qid
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then41
  %qe.021.i = phi ptr [ %19, %if.then41 ], [ %qen.023.i, %list_del.exit.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %qe.021.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %qen.023.i = load ptr, ptr %qe.021.i, align 4
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx2.i, align 4
  %add.i = add i32 %22, 1
  %23 = ptrtoint ptr %drvcfg.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %drvcfg.i, align 8
  %conv.i65 = zext i16 %24 to i32
  %sub.i = add nsw i32 %conv.i65, -1
  %and.i = and i32 %sub.i, %add.i
  %25 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx5.i, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %28)
  %cmp.i66 = icmp eq i32 %and.i, %28
  br i1 %cmp.i66, label %for.body.i.if.end42_crit_edge, label %if.end.i

for.body.i.if.end42_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end.i:                                         ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qe.021.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %qe.021.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %qe.021.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qe.021.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %35 = ptrtoint ptr %qe.021.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %qe.021.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %qe.021.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %qresume.i = getelementptr inbounds %struct.bfa_reqq_wait_s, ptr %qe.021.i, i32 0, i32 1
  %37 = ptrtoint ptr %qresume.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %qresume.i, align 4
  %cbarg.i = getelementptr inbounds %struct.bfa_reqq_wait_s, ptr %qe.021.i, i32 0, i32 2
  %39 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cbarg.i, align 4
  tail call void %38(ptr noundef %40) #10
  %cmp.i.not.i = icmp eq ptr %qen.023.i, %arrayidx39
  br i1 %cmp.i.not.i, label %list_del.exit.i.if.end42_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del.exit.i.if.end42_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end42:                                         ; preds = %list_del.exit.i.if.end42_crit_edge, %for.body.i.if.end42_crit_edge, %while.end.if.end42_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp = icmp ne i32 %1, %5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_msix_lpu_err(ptr noundef %bfa, i32 %vec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa_regs = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 22
  %0 = ptrtoint ptr %bfa_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa_regs, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !82
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  %ioc = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3
  %device_id = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 2, i32 2
  %4 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device_id, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %entry.if.end_crit_edge [
    i16 34, label %entry.if.then_crit_edge
    i16 35, label %entry.if.then_crit_edge95
    i16 20, label %entry.cond.true_crit_edge
    i16 33, label %entry.cond.true_crit_edge96
  ]

entry.cond.true_crit_edge96:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true

entry.if.then_crit_edge95:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge95
  %and = and i32 %3, 2097152
  br label %if.end

cond.true:                                        ; preds = %entry.cond.true_crit_edge, %entry.cond.true_crit_edge96
  %and25 = and i32 %3, 16777216
  br label %if.end

if.end:                                           ; preds = %cond.true, %if.then, %entry.if.end_crit_edge
  %.sink94 = phi i32 [ 262144, %if.then ], [ 524288, %entry.if.end_crit_edge ], [ 524288, %cond.true ]
  %.sink93 = phi i32 [ 196608, %if.then ], [ 3145728, %entry.if.end_crit_edge ], [ 3145728, %cond.true ]
  %.sink = phi i32 [ 33292288, %if.then ], [ 17760256, %entry.if.end_crit_edge ], [ 17760256, %cond.true ]
  %halt_isr.0 = phi i32 [ %and, %if.then ], [ 0, %entry.if.end_crit_edge ], [ %and25, %cond.true ]
  %and26 = and i32 %3, %.sink94
  %and27 = and i32 %3, %.sink93
  %and28 = and i32 %3, %.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool.not = icmp eq i32 %and27, 0
  br i1 %tobool.not, label %if.end.if.end31_crit_edge, label %if.then29

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bfa_ioc_mbox_isr(ptr noundef %ioc) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool32.not = icmp eq i32 %and28, 0
  br i1 %tobool32.not, label %if.end31.if.end70_crit_edge, label %if.then33

if.end31.if.end70_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %halt_isr.0)
  %tobool34.not = icmp eq i32 %halt_isr.0, 0
  br i1 %tobool34.not, label %if.then33.if.end46_crit_edge, label %if.then35

if.then33.if.end46_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %ll_halt = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 13, i32 17
  %7 = ptrtoint ptr %ll_halt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ll_halt, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  %10 = and i32 %9, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %ll_halt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ll_halt, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #10, !srcloc !88
  br label %if.end46

if.end46:                                         ; preds = %if.then35, %if.then33.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool47.not = icmp eq i32 %and26, 0
  br i1 %tobool47.not, label %if.end46.do.body63_crit_edge, label %if.then48

if.end46.do.body63_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %pss_err_status_reg = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 13, i32 6
  %13 = ptrtoint ptr %pss_err_status_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pss_err_status_reg, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %pss_err_status_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pss_err_status_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #10, !srcloc !88
  br label %do.body63

do.body63:                                        ; preds = %if.then48, %if.end46.do.body63_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !91
  tail call void @arm_heavy_mb() #10
  %18 = tail call i32 @llvm.bswap.i32(i32 %and28)
  %19 = ptrtoint ptr %bfa_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bfa_regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #10, !srcloc !88
  tail call void @bfa_ioc_error_isr(ptr noundef %ioc) #10
  br label %if.end70

if.end70:                                         ; preds = %do.body63, %if.end31.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_intx(ptr noundef %bfa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa_regs = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 22
  %0 = ptrtoint ptr %bfa_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa_regs, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !82
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !92
  %and = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %and)
  %5 = ptrtoint ptr %bfa_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bfa_regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #10, !srcloc !88
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %queue_process = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 8
  %7 = ptrtoint ptr %queue_process to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %queue_process, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %for.body.preheader

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

for.body.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call fastcc i32 @bfa_isr_rspq(ptr noundef %bfa, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp ne i32 %call7, 0
  %call7.1 = tail call fastcc i32 @bfa_isr_rspq(ptr noundef %bfa, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1)
  %tobool8.not.1 = icmp ne i32 %call7.1, 0
  %call7.2 = tail call fastcc i32 @bfa_isr_rspq(ptr noundef %bfa, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2)
  %tobool8.not.2 = icmp ne i32 %call7.2, 0
  %call7.3 = tail call fastcc i32 @bfa_isr_rspq(ptr noundef %bfa, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.3)
  %tobool8.not.3 = icmp ne i32 %call7.3, 0
  %9 = select i1 %tobool8.not.3, i1 true, i1 %tobool8.not.2
  %10 = select i1 %9, i1 true, i1 %tobool8.not.1
  %narrow = select i1 %10, i1 true, i1 %tobool8.not
  %spec.select.3 = zext i1 %narrow to i32
  br label %if.end11

if.end11:                                         ; preds = %for.body.preheader, %if.end.if.end11_crit_edge
  %rspq_comp.2 = phi i32 [ 0, %if.end.if.end11_crit_edge ], [ %spec.select.3, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool12.not = icmp eq i32 %2, 0
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %rspq_comp.2, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool14.not = icmp ne i32 %or, 0
  %cond = zext i1 %tobool14.not to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %and16 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end27_crit_edge, label %land.lhs.true

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end15
  %11 = ptrtoint ptr %queue_process to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %queue_process, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool19.not = icmp eq i32 %12, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end27_crit_edge, label %for.cond21.preheader

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

for.cond21.preheader:                             ; preds = %land.lhs.true
  %hw_reqq_ack.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 1
  %drvcfg.i.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 2, i32 1
  br label %for.body23

for.body23:                                       ; preds = %bfa_isr_reqq.exit.for.body23_crit_edge, %for.cond21.preheader
  %queue.161 = phi i32 [ 0, %for.cond21.preheader ], [ %inc25, %bfa_isr_reqq.exit.for.body23_crit_edge ]
  %13 = ptrtoint ptr %hw_reqq_ack.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_reqq_ack.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %for.body23.do.end.i_crit_edge, label %if.then.i

for.body23.do.end.i_crit_edge:                    ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %14(ptr noundef %bfa, i32 noundef %queue.161) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %for.body23.do.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 9, i32 %queue.161
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp eq ptr %16, %arrayidx.i
  br i1 %cmp.i.i, label %do.end.i.bfa_isr_reqq.exit_crit_edge, label %if.then5.i

do.end.i.bfa_isr_reqq.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_isr_reqq.exit

if.then5.i:                                       ; preds = %do.end.i
  %arrayidx2.i.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 3, i32 %queue.161
  %arrayidx5.i.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 19, i32 %queue.161
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %if.then5.i
  %qe.021.i.i = phi ptr [ %16, %if.then5.i ], [ %qen.023.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ]
  %17 = ptrtoint ptr %qe.021.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %qen.023.i.i = load ptr, ptr %qe.021.i.i, align 4
  %18 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.i.i, align 4
  %add.i.i = add i32 %19, 1
  %20 = ptrtoint ptr %drvcfg.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %drvcfg.i.i, align 8
  %conv.i13.i = zext i16 %21 to i32
  %sub.i.i = add nsw i32 %conv.i13.i, -1
  %and.i.i = and i32 %sub.i.i, %add.i.i
  %22 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx5.i.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %25)
  %cmp.i14.i = icmp eq i32 %and.i.i, %25
  br i1 %cmp.i14.i, label %for.body.i.i.bfa_isr_reqq.exit_crit_edge, label %if.end.i.i

for.body.i.i.bfa_isr_reqq.exit_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_isr_reqq.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qe.021.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del.exit.i.i_crit_edge

if.end.i.i.list_del.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %qe.021.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i.i, align 4
  %28 = ptrtoint ptr %qe.021.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %qe.021.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del.exit.i.i_crit_edge
  %32 = ptrtoint ptr %qe.021.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %qe.021.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %qe.021.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %qresume.i.i = getelementptr inbounds %struct.bfa_reqq_wait_s, ptr %qe.021.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %qresume.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %qresume.i.i, align 4
  %cbarg.i.i = getelementptr inbounds %struct.bfa_reqq_wait_s, ptr %qe.021.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %cbarg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cbarg.i.i, align 4
  tail call void %35(ptr noundef %37) #10
  %cmp.i.not.i.i = icmp eq ptr %qen.023.i.i, %arrayidx.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.bfa_isr_reqq.exit_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

list_del.exit.i.i.bfa_isr_reqq.exit_crit_edge:    ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_isr_reqq.exit

bfa_isr_reqq.exit:                                ; preds = %list_del.exit.i.i.bfa_isr_reqq.exit_crit_edge, %for.body.i.i.bfa_isr_reqq.exit_crit_edge, %do.end.i.bfa_isr_reqq.exit_crit_edge
  %inc25 = add nuw nsw i32 %queue.161, 1
  %exitcond.not = icmp eq i32 %inc25, 4
  br i1 %exitcond.not, label %bfa_isr_reqq.exit.if.end27_crit_edge, label %bfa_isr_reqq.exit.for.body23_crit_edge

bfa_isr_reqq.exit.for.body23_crit_edge:           ; preds = %bfa_isr_reqq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body23

bfa_isr_reqq.exit.if.end27_crit_edge:             ; preds = %bfa_isr_reqq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end27:                                         ; preds = %bfa_isr_reqq.exit.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.end15.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %tobool29.not = icmp ult i32 %3, 256
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %intr_enabled = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 13
  %38 = ptrtoint ptr %intr_enabled to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %intr_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool32.not = icmp eq i32 %39, 0
  br i1 %tobool32.not, label %if.end31.cleanup_crit_edge, label %if.then33

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bfa_msix_lpu_err(ptr noundef %bfa, i32 undef)
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.then13
  %retval.0 = phi i32 [ %cond, %if.then13 ], [ 1, %if.end27.cleanup_crit_edge ], [ 1, %if.then33 ], [ 1, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_isr_enable(ptr noundef %bfa) local_unnamed_addr #0 align 64 {
entry:
  %ts.i64 = alloca %struct.timespec64, align 8
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port_id1 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 19
  %0 = ptrtoint ptr %port_id1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_id1, align 8
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bfa_trc.exit_crit_edge

entry.__bfa_trc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %entry
  %pci_func = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 2, i32 1
  %6 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pci_func, align 4
  %conv3 = zext i8 %7 to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %9, i32 1
  %11 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 849, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %9, i32 3
  %12 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv3, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %13 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %14 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %16 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %17, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %18 = trunc i64 %15 to i32
  %19 = mul i32 %18, 1000000
  %conv8.i = add i32 %19, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %9, i32 2
  %20 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %21 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %22, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %24)
  %cmp.i = icmp eq i32 %and.i, %24
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %22, 2
  %and17.i = and i32 %add16.i, 4095
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and17.i, ptr %3, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %entry.__bfa_trc.exit_crit_edge
  %26 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trcmod, align 8
  %stopped.i65 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %stopped.i65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stopped.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i66 = icmp eq i32 %29, 0
  br i1 %tobool.not.i66, label %if.end.i78, label %__bfa_trc.exit.__bfa_trc.exit82_crit_edge

__bfa_trc.exit.__bfa_trc.exit82_crit_edge:        ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit82

if.end.i78:                                       ; preds = %__bfa_trc.exit
  %30 = zext i8 %1 to i64
  %tail1.i67 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %27, i32 0, i32 1
  %31 = ptrtoint ptr %tail1.i67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tail1.i67, align 4
  %arrayidx.i68 = getelementptr %struct.bfa_trc_mod_s, ptr %27, i32 0, i32 6, i32 %32
  %33 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1025, ptr %arrayidx.i68, align 8
  %line5.i69 = getelementptr %struct.bfa_trc_mod_s, ptr %27, i32 0, i32 6, i32 %32, i32 1
  %34 = ptrtoint ptr %line5.i69 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 850, ptr %line5.i69, align 2
  %data6.i70 = getelementptr %struct.bfa_trc_mod_s, ptr %27, i32 0, i32 6, i32 %32, i32 3
  %35 = ptrtoint ptr %data6.i70 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %30, ptr %data6.i70, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i64) #10
  %36 = call ptr @memset(ptr %ts.i64, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i64) #10
  %37 = ptrtoint ptr %ts.i64 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ts.i64, align 8
  %tv_nsec.i71 = getelementptr inbounds %struct.timespec64, ptr %ts.i64, i32 0, i32 1
  %39 = ptrtoint ptr %tv_nsec.i71 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tv_nsec.i71, align 8
  %div.i72 = sdiv i32 %40, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i64) #10
  %41 = trunc i64 %38 to i32
  %42 = mul i32 %41, 1000000
  %conv8.i73 = add i32 %42, %div.i72
  %timestamp.i74 = getelementptr %struct.bfa_trc_mod_s, ptr %27, i32 0, i32 6, i32 %32, i32 2
  %43 = ptrtoint ptr %timestamp.i74 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv8.i73, ptr %timestamp.i74, align 4
  %44 = ptrtoint ptr %tail1.i67 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tail1.i67, align 4
  %add10.i75 = add i32 %45, 1
  %and.i76 = and i32 %add10.i75, 4095
  store i32 %and.i76, ptr %tail1.i67, align 4
  %46 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %27, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i76, i32 %47)
  %cmp.i77 = icmp eq i32 %and.i76, %47
  br i1 %cmp.i77, label %if.then14.i81, label %if.end.i78.__bfa_trc.exit82_crit_edge

if.end.i78.__bfa_trc.exit82_crit_edge:            ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit82

if.then14.i81:                                    ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i79 = add i32 %45, 2
  %and17.i80 = and i32 %add16.i79, 4095
  %48 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and17.i80, ptr %27, align 8
  br label %__bfa_trc.exit82

__bfa_trc.exit82:                                 ; preds = %if.then14.i81, %if.end.i78.__bfa_trc.exit82_crit_edge, %__bfa_trc.exit.__bfa_trc.exit82_crit_edge
  %hw_msix_ctrl_install = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 4
  %49 = ptrtoint ptr %hw_msix_ctrl_install to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_msix_ctrl_install, align 8
  call void %50(ptr noundef %bfa) #10
  %device_id = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 2, i32 2
  %51 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %device_id, align 2
  %53 = and i16 %52, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %53)
  %switch = icmp eq i16 %53, 34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp16 = icmp eq i8 %1, 0
  %or = select i1 %cmp16, i32 33361679, i32 33485040
  %or21 = select i1 %cmp16, i32 18812687, i32 19919088
  %umsk.0 = select i1 %switch, i32 %or, i32 %or21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  call void @arm_heavy_mb() #10
  %54 = call i32 @llvm.bswap.i32(i32 %umsk.0)
  %bfa_regs = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 22
  %55 = ptrtoint ptr %bfa_regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bfa_regs, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #10, !srcloc !88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %neg = xor i32 %umsk.0, -1
  %57 = call i32 @llvm.bswap.i32(i32 %neg)
  %intr_mask = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 22, i32 1
  %58 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %intr_mask, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #10, !srcloc !88
  %intr_mask30 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 26
  %60 = ptrtoint ptr %intr_mask30 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %neg, ptr %intr_mask30, align 8
  %hw_isr_mode_set = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 7
  %61 = ptrtoint ptr %hw_isr_mode_set to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw_isr_mode_set, align 4
  %tobool.not = icmp eq ptr %62, null
  br i1 %tobool.not, label %__bfa_trc.exit82.do.end42_crit_edge, label %if.then34

__bfa_trc.exit82.do.end42_crit_edge:              ; preds = %__bfa_trc.exit82
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

if.then34:                                        ; preds = %__bfa_trc.exit82
  call void @__sanitizer_cov_trace_pc() #12
  %msix = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 11
  %63 = ptrtoint ptr %msix to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %msix, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp38 = icmp ne i32 %64, 0
  %conv39 = zext i1 %cmp38 to i32
  call void %62(ptr noundef %bfa, i32 noundef %conv39) #10
  br label %do.end42

do.end42:                                         ; preds = %if.then34, %__bfa_trc.exit82.do.end42_crit_edge
  %intr_enabled = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 13
  %65 = ptrtoint ptr %intr_enabled to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %intr_enabled, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_isr_disable(ptr noundef %bfa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_enabled = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 13
  %0 = ptrtoint ptr %intr_enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %intr_enabled, align 8
  %hw_isr_mode_set = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 7
  %1 = ptrtoint ptr %hw_isr_mode_set to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_isr_mode_set, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.do.body4_crit_edge, label %if.then

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %2(ptr noundef %bfa, i32 noundef 0) #10
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry.do.body4_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !96
  tail call void @arm_heavy_mb() #10
  %intr_mask = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 22, i32 1
  %3 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intr_mask, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -1) #10, !srcloc !88
  %hw_msix_uninstall = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 6
  %5 = ptrtoint ptr %hw_msix_uninstall to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_msix_uninstall, align 8
  tail call void %6(ptr noundef %bfa) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_msix_reqq(ptr noundef %bfa, i32 noundef %vec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cpe_vec_q0 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 10
  %0 = ptrtoint ptr %cpe_vec_q0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpe_vec_q0, align 8
  %sub = sub i32 %vec, %1
  %hw_reqq_ack.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 1
  %2 = ptrtoint ptr %hw_reqq_ack.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_reqq_ack.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.do.end.i_crit_edge, label %if.then.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %3(ptr noundef %bfa, i32 noundef %sub) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry.do.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 9, i32 %sub
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp eq ptr %5, %arrayidx.i
  br i1 %cmp.i.i, label %do.end.i.bfa_isr_reqq.exit_crit_edge, label %if.then5.i

do.end.i.bfa_isr_reqq.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_isr_reqq.exit

if.then5.i:                                       ; preds = %do.end.i
  %arrayidx2.i.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 3, i32 %sub
  %drvcfg.i.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 2, i32 1
  %arrayidx5.i.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 19, i32 %sub
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %if.then5.i
  %qe.021.i.i = phi ptr [ %5, %if.then5.i ], [ %qen.023.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %qe.021.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %qen.023.i.i = load ptr, ptr %qe.021.i.i, align 4
  %7 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2.i.i, align 4
  %add.i.i = add i32 %8, 1
  %9 = ptrtoint ptr %drvcfg.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %drvcfg.i.i, align 8
  %conv.i13.i = zext i16 %10 to i32
  %sub.i.i = add nsw i32 %conv.i13.i, -1
  %and.i.i = and i32 %sub.i.i, %add.i.i
  %11 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx5.i.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %14)
  %cmp.i14.i = icmp eq i32 %and.i.i, %14
  br i1 %cmp.i14.i, label %for.body.i.i.bfa_isr_reqq.exit_crit_edge, label %if.end.i.i

for.body.i.i.bfa_isr_reqq.exit_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_isr_reqq.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qe.021.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del.exit.i.i_crit_edge

if.end.i.i.list_del.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %qe.021.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i.i, align 4
  %17 = ptrtoint ptr %qe.021.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qe.021.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del.exit.i.i_crit_edge
  %21 = ptrtoint ptr %qe.021.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %qe.021.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %qe.021.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %qresume.i.i = getelementptr inbounds %struct.bfa_reqq_wait_s, ptr %qe.021.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %qresume.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qresume.i.i, align 4
  %cbarg.i.i = getelementptr inbounds %struct.bfa_reqq_wait_s, ptr %qe.021.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %cbarg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cbarg.i.i, align 4
  tail call void %24(ptr noundef %26) #10
  %cmp.i.not.i.i = icmp eq ptr %qen.023.i.i, %arrayidx.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.bfa_isr_reqq.exit_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

list_del.exit.i.i.bfa_isr_reqq.exit_crit_edge:    ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_isr_reqq.exit

bfa_isr_reqq.exit:                                ; preds = %list_del.exit.i.i.bfa_isr_reqq.exit_crit_edge, %for.body.i.i.bfa_isr_reqq.exit_crit_edge, %do.end.i.bfa_isr_reqq.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_isr_unhandled(ptr nocapture noundef readonly %bfa, ptr nocapture noundef readonly %m) #0 align 64 {
entry:
  %ts.i47 = alloca %struct.timespec64, align 8
  %ts.i28 = alloca %struct.timespec64, align 8
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 2
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bfa_trc.exit_crit_edge

entry.__bfa_trc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %m to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %m, align 1
  %conv = zext i8 %5 to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %1, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %1, i32 0, i32 6, i32 %7, i32 1
  %9 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 892, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %1, i32 0, i32 6, i32 %7, i32 3
  %10 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %11 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %12 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %15, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %16 = trunc i64 %13 to i32
  %17 = mul i32 %16, 1000000
  %conv8.i = add i32 %17, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %1, i32 0, i32 6, i32 %7, i32 2
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %19 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %20, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %22)
  %cmp.i = icmp eq i32 %and.i, %22
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %20, 2
  %and17.i = and i32 %add16.i, 4095
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and17.i, ptr %1, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %entry.__bfa_trc.exit_crit_edge
  %24 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trcmod, align 8
  %stopped.i29 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %stopped.i29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stopped.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i30 = icmp eq i32 %27, 0
  br i1 %tobool.not.i30, label %if.end.i42, label %__bfa_trc.exit.__bfa_trc.exit46_crit_edge

__bfa_trc.exit.__bfa_trc.exit46_crit_edge:        ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit46

if.end.i42:                                       ; preds = %__bfa_trc.exit
  %msg_id = getelementptr inbounds %struct.bfi_mhdr_s, ptr %m, i32 0, i32 1
  %28 = ptrtoint ptr %msg_id to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %msg_id, align 1
  %conv3 = zext i8 %29 to i64
  %tail1.i31 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %tail1.i31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tail1.i31, align 4
  %arrayidx.i32 = getelementptr %struct.bfa_trc_mod_s, ptr %25, i32 0, i32 6, i32 %31
  %32 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1025, ptr %arrayidx.i32, align 8
  %line5.i33 = getelementptr %struct.bfa_trc_mod_s, ptr %25, i32 0, i32 6, i32 %31, i32 1
  %33 = ptrtoint ptr %line5.i33 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 893, ptr %line5.i33, align 2
  %data6.i34 = getelementptr %struct.bfa_trc_mod_s, ptr %25, i32 0, i32 6, i32 %31, i32 3
  %34 = ptrtoint ptr %data6.i34 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv3, ptr %data6.i34, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i28) #10
  %35 = call ptr @memset(ptr %ts.i28, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i28) #10
  %36 = ptrtoint ptr %ts.i28 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ts.i28, align 8
  %tv_nsec.i35 = getelementptr inbounds %struct.timespec64, ptr %ts.i28, i32 0, i32 1
  %38 = ptrtoint ptr %tv_nsec.i35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tv_nsec.i35, align 8
  %div.i36 = sdiv i32 %39, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i28) #10
  %40 = trunc i64 %37 to i32
  %41 = mul i32 %40, 1000000
  %conv8.i37 = add i32 %41, %div.i36
  %timestamp.i38 = getelementptr %struct.bfa_trc_mod_s, ptr %25, i32 0, i32 6, i32 %31, i32 2
  %42 = ptrtoint ptr %timestamp.i38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv8.i37, ptr %timestamp.i38, align 4
  %43 = ptrtoint ptr %tail1.i31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tail1.i31, align 4
  %add10.i39 = add i32 %44, 1
  %and.i40 = and i32 %add10.i39, 4095
  store i32 %and.i40, ptr %tail1.i31, align 4
  %45 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %25, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i40, i32 %46)
  %cmp.i41 = icmp eq i32 %and.i40, %46
  br i1 %cmp.i41, label %if.then14.i45, label %if.end.i42.__bfa_trc.exit46_crit_edge

if.end.i42.__bfa_trc.exit46_crit_edge:            ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit46

if.then14.i45:                                    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i43 = add i32 %44, 2
  %and17.i44 = and i32 %add16.i43, 4095
  %47 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and17.i44, ptr %25, align 8
  br label %__bfa_trc.exit46

__bfa_trc.exit46:                                 ; preds = %if.then14.i45, %if.end.i42.__bfa_trc.exit46_crit_edge, %__bfa_trc.exit.__bfa_trc.exit46_crit_edge
  %48 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %trcmod, align 8
  %stopped.i48 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %stopped.i48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %stopped.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i49 = icmp eq i32 %51, 0
  br i1 %tobool.not.i49, label %if.end.i61, label %__bfa_trc.exit46.__bfa_trc.exit65_crit_edge

__bfa_trc.exit46.__bfa_trc.exit65_crit_edge:      ; preds = %__bfa_trc.exit46
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit65

if.end.i61:                                       ; preds = %__bfa_trc.exit46
  %mtag = getelementptr inbounds %struct.bfi_mhdr_s, ptr %m, i32 0, i32 2
  %52 = ptrtoint ptr %mtag to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %mtag, align 1
  %conv6 = zext i16 %53 to i64
  %tail1.i50 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %tail1.i50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tail1.i50, align 4
  %arrayidx.i51 = getelementptr %struct.bfa_trc_mod_s, ptr %49, i32 0, i32 6, i32 %55
  %56 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1025, ptr %arrayidx.i51, align 8
  %line5.i52 = getelementptr %struct.bfa_trc_mod_s, ptr %49, i32 0, i32 6, i32 %55, i32 1
  %57 = ptrtoint ptr %line5.i52 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 894, ptr %line5.i52, align 2
  %data6.i53 = getelementptr %struct.bfa_trc_mod_s, ptr %49, i32 0, i32 6, i32 %55, i32 3
  %58 = ptrtoint ptr %data6.i53 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv6, ptr %data6.i53, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i47) #10
  %59 = call ptr @memset(ptr %ts.i47, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i47) #10
  %60 = ptrtoint ptr %ts.i47 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %ts.i47, align 8
  %tv_nsec.i54 = getelementptr inbounds %struct.timespec64, ptr %ts.i47, i32 0, i32 1
  %62 = ptrtoint ptr %tv_nsec.i54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tv_nsec.i54, align 8
  %div.i55 = sdiv i32 %63, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i47) #10
  %64 = trunc i64 %61 to i32
  %65 = mul i32 %64, 1000000
  %conv8.i56 = add i32 %65, %div.i55
  %timestamp.i57 = getelementptr %struct.bfa_trc_mod_s, ptr %49, i32 0, i32 6, i32 %55, i32 2
  %66 = ptrtoint ptr %timestamp.i57 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv8.i56, ptr %timestamp.i57, align 4
  %67 = ptrtoint ptr %tail1.i50 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tail1.i50, align 4
  %add10.i58 = add i32 %68, 1
  %and.i59 = and i32 %add10.i58, 4095
  store i32 %and.i59, ptr %tail1.i50, align 4
  %69 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %49, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i59, i32 %70)
  %cmp.i60 = icmp eq i32 %and.i59, %70
  br i1 %cmp.i60, label %if.then14.i64, label %if.end.i61.__bfa_trc.exit65_crit_edge

if.end.i61.__bfa_trc.exit65_crit_edge:            ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit65

if.then14.i64:                                    ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i62 = add i32 %68, 2
  %and17.i63 = and i32 %add16.i62, 4095
  %71 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and17.i63, ptr %49, align 8
  br label %__bfa_trc.exit65

__bfa_trc.exit65:                                 ; preds = %if.then14.i64, %if.end.i61.__bfa_trc.exit65_crit_edge, %__bfa_trc.exit46.__bfa_trc.exit65_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 895, i32 noundef 9, ptr noundef null) #10
  %72 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %trcmod, align 8
  %stopped.i66 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %stopped.i66 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %stopped.i66, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_msix_rspq(ptr noundef %bfa, i32 noundef %vec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rme_vec_q0 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 11
  %0 = ptrtoint ptr %rme_vec_q0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rme_vec_q0, align 4
  %sub = sub i32 %vec, %1
  %call = tail call fastcc i32 @bfa_isr_rspq(ptr noundef %bfa, i32 noundef %sub)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_mbox_isr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_error_isr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_iocfc_reset_queues(ptr nocapture noundef %bfa) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 19, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %1, align 4
  %arrayidx2 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 3, i32 0
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 4, i32 0
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 21, i32 0
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx6, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %6, align 4
  %arrayidx.1 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 19, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %arrayidx2.1 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx2.1, align 4
  %arrayidx4.1 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx4.1, align 4
  %arrayidx6.1 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 21, i32 1
  %13 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6.1, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %14, align 4
  %arrayidx.2 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 19, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %17, align 4
  %arrayidx2.2 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 3, i32 2
  %19 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx2.2, align 4
  %arrayidx4.2 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 4, i32 2
  %20 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx4.2, align 4
  %arrayidx6.2 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 21, i32 2
  %21 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx6.2, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %22, align 4
  %arrayidx.3 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 19, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.3, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %25, align 4
  %arrayidx2.3 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 3, i32 3
  %27 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx2.3, align 4
  %arrayidx4.3 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 4, i32 3
  %28 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx4.3, align 4
  %arrayidx6.3 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 21, i32 3
  %29 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx6.3, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %30, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_faa_query(ptr noundef %bfa, ptr noundef %attr, ptr noundef %cbfn, ptr noundef %cbarg) local_unnamed_addr #0 align 64 {
entry:
  %faa_attr_req = alloca %struct.bfi_faa_query_s, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %faa_attr_req) #10
  %0 = getelementptr inbounds %struct.bfi_mhdr_s, ptr %faa_attr_req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.bfi_mhdr_s, ptr %faa_attr_req, i32 0, i32 2
  %ioc.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3
  %call.i = tail call i32 @bfa_ioc_get_type(ptr noundef %ioc.i) #10
  %attr.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 21
  %2 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr.i, align 8
  %card_type2.i = getelementptr inbounds %struct.bfi_ioc_attr_s, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %card_type2.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %card_type2.i, align 1
  %call4.i = tail call i32 @bfa_ioc_is_operational(ptr noundef %ioc.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %call.fr.i = freeze i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.fr.i)
  %cmp.not.not.i = icmp eq i32 %call.fr.i, 1
  br i1 %cmp.not.not.i, label %switch.early.test.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.i:                              ; preds = %if.then.i
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %5, label %if.end [
    i32 1869, label %switch.early.test.i.cleanup_crit_edge
    i32 1867, label %switch.early.test.i.cleanup_crit_edge30
    i32 1741, label %switch.early.test.i.cleanup_crit_edge31
    i32 1007, label %switch.early.test.i.cleanup_crit_edge32
    i32 902, label %switch.early.test.i.cleanup_crit_edge33
    i32 807, label %switch.early.test.i.cleanup_crit_edge34
    i32 804, label %switch.early.test.i.cleanup_crit_edge35
  ]

switch.early.test.i.cleanup_crit_edge35:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.i.cleanup_crit_edge34:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.i.cleanup_crit_edge33:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.i.cleanup_crit_edge32:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.i.cleanup_crit_edge31:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.i.cleanup_crit_edge30:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.i.cleanup_crit_edge:            ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %switch.early.test.i
  %busy = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 27, i32 3
  %7 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp2 = icmp eq i32 %8, 1
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %faa_args = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 27
  %9 = ptrtoint ptr %faa_args to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %attr, ptr %faa_args, align 4
  %faa_cb = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 27, i32 1
  %10 = ptrtoint ptr %faa_cb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cbfn, ptr %faa_cb, align 4
  %faa_cbarg = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 27, i32 1, i32 1
  %11 = ptrtoint ptr %faa_cbarg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cbarg, ptr %faa_cbarg, align 4
  %12 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %busy, align 4
  %13 = getelementptr inbounds i8, ptr %faa_attr_req, i32 2
  %14 = call ptr @memset(ptr %13, i32 0, i32 14)
  %15 = ptrtoint ptr %faa_attr_req to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 6, ptr %faa_attr_req, align 1
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %0, align 1
  %pci_func = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 2, i32 1
  %17 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pci_func, align 4
  %shl = shl i8 %18, 1
  %port_id = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 19
  %19 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port_id, align 8
  %or = or i8 %shl, %20
  %fn_lpu = getelementptr inbounds %struct.anon.3, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %fn_lpu to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or, ptr %fn_lpu, align 1
  call void @bfa_ioc_mbox_send(ptr noundef %ioc.i, ptr noundef nonnull %faa_attr_req, i32 noundef 16) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %switch.early.test.i.cleanup_crit_edge, %switch.early.test.i.cleanup_crit_edge30, %switch.early.test.i.cleanup_crit_edge31, %switch.early.test.i.cleanup_crit_edge32, %switch.early.test.i.cleanup_crit_edge33, %switch.early.test.i.cleanup_crit_edge34, %switch.early.test.i.cleanup_crit_edge35, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 13, %if.end.cleanup_crit_edge ], [ 192, %switch.early.test.i.cleanup_crit_edge ], [ 192, %switch.early.test.i.cleanup_crit_edge30 ], [ 192, %switch.early.test.i.cleanup_crit_edge31 ], [ 192, %switch.early.test.i.cleanup_crit_edge32 ], [ 192, %switch.early.test.i.cleanup_crit_edge33 ], [ 192, %switch.early.test.i.cleanup_crit_edge34 ], [ 192, %if.then.i.cleanup_crit_edge ], [ 61, %entry.cleanup_crit_edge ], [ 192, %switch.early.test.i.cleanup_crit_edge35 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %faa_attr_req) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_mbox_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_iocfc_meminfo(ptr nocapture noundef readonly %cfg, ptr noundef %meminfo, ptr noundef %bfa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_dma1 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 28
  %mem_len.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 28, i32 1
  %0 = ptrtoint ptr %mem_len.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 768, ptr %mem_len.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %meminfo, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ioc_dma1, ptr noundef %2, ptr noundef %meminfo) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.bfa_mem_dma_setup.exit_crit_edge

entry.bfa_mem_dma_setup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ioc_dma1, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %ioc_dma1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %meminfo, ptr %ioc_dma1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 28, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev3.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %ioc_dma1, ptr %2, align 4
  br label %bfa_mem_dma_setup.exit

bfa_mem_dma_setup.exit:                           ; preds = %if.end.i.i.i, %entry.bfa_mem_dma_setup.exit_crit_edge
  %drvcfg = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1
  %7 = ptrtoint ptr %drvcfg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %drvcfg, align 4
  %conv = zext i16 %8 to i32
  %mul = shl nuw nsw i32 %conv, 7
  %add = add nuw nsw i32 %mul, 255
  %and = and i32 %add, 16776960
  %num_rspq_elems = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %num_rspq_elems to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_rspq_elems, align 2
  %conv6 = zext i16 %10 to i32
  %mul7 = shl nuw nsw i32 %conv6, 7
  %add8 = add nuw nsw i32 %mul7, 255
  %and9 = and i32 %add8, 16776960
  %num_cqs = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 8
  %11 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_cqs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp75.not = icmp eq i8 %12, 0
  br i1 %cmp75.not, label %bfa_mem_dma_setup.exit.if.then.i65_crit_edge, label %for.body.lr.ph

bfa_mem_dma_setup.exit.if.then.i65_crit_edge:     ; preds = %bfa_mem_dma_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i65

for.body.lr.ph:                                   ; preds = %bfa_mem_dma_setup.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not.i54 = icmp eq i32 %and9, 0
  br label %for.body

for.cond15.preheader:                             ; preds = %bfa_mem_dma_setup.exit60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp1977.not = icmp eq i8 %29, 0
  br i1 %cmp1977.not, label %for.cond15.preheader.if.then.i65_crit_edge, label %for.body21.preheader

for.cond15.preheader.if.then.i65_crit_edge:       ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i65

for.body21.preheader:                             ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %conv10.le = zext i8 %29 to i32
  %13 = shl nuw nsw i32 %conv10.le, 9
  %phi.bo = add nuw nsw i32 %13, 1024
  br label %if.then.i65

for.body:                                         ; preds = %bfa_mem_dma_setup.exit60.for.body_crit_edge, %for.body.lr.ph
  %q.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %bfa_mem_dma_setup.exit60.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 30, i32 %q.076
  %mem_len.i47 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 30, i32 %q.076, i32 1
  %14 = ptrtoint ptr %mem_len.i47 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %mem_len.i47, align 8
  br i1 %tobool.not.i, label %for.body.bfa_mem_dma_setup.exit52_crit_edge, label %if.then.i

for.body.bfa_mem_dma_setup.exit52_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit52

if.then.i:                                        ; preds = %for.body
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i49 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %16, ptr noundef %meminfo) #10
  br i1 %call.i.i.i49, label %if.end.i.i.i51, label %if.then.i.bfa_mem_dma_setup.exit52_crit_edge

if.then.i.bfa_mem_dma_setup.exit52_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit52

if.end.i.i.i51:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %meminfo, ptr %arrayidx, align 4
  %prev3.i.i.i50 = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i50, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %arrayidx, ptr %16, align 4
  br label %bfa_mem_dma_setup.exit52

bfa_mem_dma_setup.exit52:                         ; preds = %if.end.i.i.i51, %if.then.i.bfa_mem_dma_setup.exit52_crit_edge, %for.body.bfa_mem_dma_setup.exit52_crit_edge
  %arrayidx14 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 31, i32 %q.076
  %mem_len.i53 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 31, i32 %q.076, i32 1
  %21 = ptrtoint ptr %mem_len.i53 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and9, ptr %mem_len.i53, align 8
  br i1 %tobool.not.i54, label %bfa_mem_dma_setup.exit52.bfa_mem_dma_setup.exit60_crit_edge, label %if.then.i57

bfa_mem_dma_setup.exit52.bfa_mem_dma_setup.exit60_crit_edge: ; preds = %bfa_mem_dma_setup.exit52
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit60

if.then.i57:                                      ; preds = %bfa_mem_dma_setup.exit52
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i56 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx14, ptr noundef %23, ptr noundef %meminfo) #10
  br i1 %call.i.i.i56, label %if.end.i.i.i59, label %if.then.i57.bfa_mem_dma_setup.exit60_crit_edge

if.then.i57.bfa_mem_dma_setup.exit60_crit_edge:   ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit60

if.end.i.i.i59:                                   ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx14, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %meminfo, ptr %arrayidx14, align 4
  %prev3.i.i.i58 = getelementptr inbounds %struct.list_head, ptr %arrayidx14, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i58, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %arrayidx14, ptr %23, align 4
  br label %bfa_mem_dma_setup.exit60

bfa_mem_dma_setup.exit60:                         ; preds = %if.end.i.i.i59, %if.then.i57.bfa_mem_dma_setup.exit60_crit_edge, %bfa_mem_dma_setup.exit52.bfa_mem_dma_setup.exit60_crit_edge
  %inc = add nuw nsw i32 %q.076, 1
  %28 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_cqs, align 4
  %conv10 = zext i8 %29 to i32
  %cmp = icmp ult i32 %inc, %conv10
  br i1 %cmp, label %bfa_mem_dma_setup.exit60.for.body_crit_edge, label %for.cond15.preheader

bfa_mem_dma_setup.exit60.for.body_crit_edge:      ; preds = %bfa_mem_dma_setup.exit60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.then.i65:                                      ; preds = %for.body21.preheader, %for.cond15.preheader.if.then.i65_crit_edge, %bfa_mem_dma_setup.exit.if.then.i65_crit_edge
  %dm_len.0.lcssa = phi i32 [ 1024, %for.cond15.preheader.if.then.i65_crit_edge ], [ %phi.bo, %for.body21.preheader ], [ 1024, %bfa_mem_dma_setup.exit.if.then.i65_crit_edge ]
  %kva_seg = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 32
  %iocfc_dma3 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 29
  %mem_len.i61 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 29, i32 1
  %30 = ptrtoint ptr %mem_len.i61 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %dm_len.0.lcssa, ptr %mem_len.i61, align 8
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i64 = tail call zeroext i1 @__list_add_valid(ptr noundef %iocfc_dma3, ptr noundef %32, ptr noundef %meminfo) #10
  br i1 %call.i.i.i64, label %if.end.i.i.i67, label %if.then.i65.bfa_mem_dma_setup.exit68_crit_edge

if.then.i65.bfa_mem_dma_setup.exit68_crit_edge:   ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit68

if.end.i.i.i67:                                   ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %iocfc_dma3, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %iocfc_dma3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %meminfo, ptr %iocfc_dma3, align 4
  %prev3.i.i.i66 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 29, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i66, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %iocfc_dma3, ptr %32, align 4
  br label %bfa_mem_dma_setup.exit68

bfa_mem_dma_setup.exit68:                         ; preds = %if.end.i.i.i67, %if.then.i65.bfa_mem_dma_setup.exit68_crit_edge
  %mem_len.i69 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 32, i32 1
  %37 = ptrtoint ptr %mem_len.i69 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4128, ptr %mem_len.i69, align 4
  %kva_info.i = getelementptr inbounds %struct.bfa_meminfo_s, ptr %meminfo, i32 0, i32 1
  %prev.i.i70 = getelementptr inbounds %struct.bfa_meminfo_s, ptr %meminfo, i32 0, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i70 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i70, align 4
  %call.i.i.i71 = tail call zeroext i1 @__list_add_valid(ptr noundef %kva_seg, ptr noundef %39, ptr noundef %kva_info.i) #10
  br i1 %call.i.i.i71, label %if.end.i.i.i73, label %bfa_mem_dma_setup.exit68.bfa_mem_kva_setup.exit_crit_edge

bfa_mem_dma_setup.exit68.bfa_mem_kva_setup.exit_crit_edge: ; preds = %bfa_mem_dma_setup.exit68
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_kva_setup.exit

if.end.i.i.i73:                                   ; preds = %bfa_mem_dma_setup.exit68
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %prev.i.i70 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %kva_seg, ptr %prev.i.i70, align 4
  %41 = ptrtoint ptr %kva_seg to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %kva_info.i, ptr %kva_seg, align 4
  %prev3.i.i.i72 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 32, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i72, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %kva_seg, ptr %39, align 4
  br label %bfa_mem_kva_setup.exit

bfa_mem_kva_setup.exit:                           ; preds = %if.end.i.i.i73, %bfa_mem_dma_setup.exit68.bfa_mem_kva_setup.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_iocfc_attach(ptr noundef %bfa, ptr noundef %bfad, ptr nocapture noundef readonly %cfg, ptr noundef %pcidev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3
  store ptr @bfa_iocfc_enable_cbfn, ptr @bfa_iocfc_cbfn, align 4
  store ptr @bfa_iocfc_disable_cbfn, ptr getelementptr inbounds (%struct.bfa_ioc_cbfn_s, ptr @bfa_iocfc_cbfn, i32 0, i32 1), align 4
  store ptr @bfa_iocfc_hbfail_cbfn, ptr getelementptr inbounds (%struct.bfa_ioc_cbfn_s, ptr @bfa_iocfc_cbfn, i32 0, i32 2), align 4
  store ptr @bfa_iocfc_reset_cbfn, ptr getelementptr inbounds (%struct.bfa_ioc_cbfn_s, ptr @bfa_iocfc_cbfn, i32 0, i32 3), align 4
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 2
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 8
  %trcmod2 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 14
  %2 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %trcmod2, align 8
  %timer_mod = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 5
  tail call void @bfa_ioc_attach(ptr noundef %ioc1, ptr noundef %bfa, ptr noundef nonnull @bfa_iocfc_cbfn, ptr noundef %timer_mod) #10
  tail call void @bfa_ioc_pci_init(ptr noundef %ioc1, ptr noundef %pcidev, i32 noundef 3076) #10
  tail call void @bfa_ioc_mbox_register(ptr noundef %ioc1, ptr noundef nonnull @bfa_mbox_isrs) #10
  %3 = ptrtoint ptr %bfa to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bfad, ptr %bfa, align 8
  %bfa3.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %bfa3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bfa, ptr %bfa3.i, align 4
  %cfg4.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 2
  %5 = call ptr @memcpy(ptr %cfg4.i, ptr %cfg, i32 56)
  %device_id.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 2, i32 2
  %6 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device_id.i, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %7, label %if.end.thread.i [
    i16 20, label %entry.if.end.i_crit_edge
    i16 33, label %entry.if.end.i_crit_edge36
    i16 34, label %entry.if.end.i_crit_edge37
    i16 35, label %entry.if.end.i_crit_edge38
  ]

entry.if.end.i_crit_edge38:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

entry.if.end.i_crit_edge37:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

entry.if.end.i_crit_edge36:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hwif38.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23
  %9 = ptrtoint ptr %hwif38.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @bfa_hwcb_reginit, ptr %hwif38.i, align 8
  %hw_reqq_ack41.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 1
  %10 = ptrtoint ptr %hw_reqq_ack41.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %hw_reqq_ack41.i, align 4
  %hw_rspq_ack43.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 2
  %11 = ptrtoint ptr %hw_rspq_ack43.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bfa_hwcb_rspq_ack, ptr %hw_rspq_ack43.i, align 8
  %hw_msix_init45.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 3
  %12 = ptrtoint ptr %hw_msix_init45.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @bfa_hwcb_msix_init, ptr %hw_msix_init45.i, align 4
  %hw_msix_ctrl_install47.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 4
  %13 = ptrtoint ptr %hw_msix_ctrl_install47.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bfa_hwcb_msix_ctrl_install, ptr %hw_msix_ctrl_install47.i, align 8
  %hw_msix_queue_install49.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 5
  %14 = ptrtoint ptr %hw_msix_queue_install49.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @bfa_hwcb_msix_queue_install, ptr %hw_msix_queue_install49.i, align 4
  %hw_msix_uninstall51.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 6
  %15 = ptrtoint ptr %hw_msix_uninstall51.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @bfa_hwcb_msix_uninstall, ptr %hw_msix_uninstall51.i, align 8
  %hw_isr_mode_set53.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 7
  %16 = ptrtoint ptr %hw_isr_mode_set53.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @bfa_hwcb_isr_mode_set, ptr %hw_isr_mode_set53.i, align 4
  %hw_msix_getvecs55.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 8
  %17 = ptrtoint ptr %hw_msix_getvecs55.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_hwcb_msix_getvecs, ptr %hw_msix_getvecs55.i, align 8
  %hw_msix_get_rme_range57.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 9
  %18 = ptrtoint ptr %hw_msix_get_rme_range57.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bfa_hwcb_msix_get_rme_range, ptr %hw_msix_get_rme_range57.i, align 4
  %pci_func.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 2, i32 1
  %19 = ptrtoint ptr %pci_func.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pci_func.i, align 4
  %conv60.i = zext i8 %20 to i32
  %mul.i = shl nuw nsw i32 %conv60.i, 2
  %add.i = add nuw nsw i32 %mul.i, 8
  %rme_vec_q062.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 11
  %21 = ptrtoint ptr %rme_vec_q062.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i, ptr %rme_vec_q062.i, align 4
  %cpe_vec_q070.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 10
  %22 = ptrtoint ptr %cpe_vec_q070.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.i, ptr %cpe_vec_q070.i, align 8
  br label %bfa_iocfc_init_mem.exit

if.end.i:                                         ; preds = %entry.if.end.i_crit_edge, %entry.if.end.i_crit_edge36, %entry.if.end.i_crit_edge37, %entry.if.end.i_crit_edge38
  %hwif.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23
  %23 = ptrtoint ptr %hwif.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bfa_hwct_reginit, ptr %hwif.i, align 8
  %hw_reqq_ack.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 1
  %24 = ptrtoint ptr %hw_reqq_ack.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @bfa_hwct_reqq_ack, ptr %hw_reqq_ack.i, align 4
  %hw_rspq_ack.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 2
  %25 = ptrtoint ptr %hw_rspq_ack.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_hwct_rspq_ack, ptr %hw_rspq_ack.i, align 8
  %hw_msix_init.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 3
  %26 = ptrtoint ptr %hw_msix_init.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bfa_hwct_msix_init, ptr %hw_msix_init.i, align 4
  %hw_msix_ctrl_install.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 4
  %27 = ptrtoint ptr %hw_msix_ctrl_install.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @bfa_hwct_msix_ctrl_install, ptr %hw_msix_ctrl_install.i, align 8
  %hw_msix_queue_install.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 5
  %28 = ptrtoint ptr %hw_msix_queue_install.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfa_hwct_msix_queue_install, ptr %hw_msix_queue_install.i, align 4
  %hw_msix_uninstall.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 6
  %29 = ptrtoint ptr %hw_msix_uninstall.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @bfa_hwct_msix_uninstall, ptr %hw_msix_uninstall.i, align 8
  %hw_isr_mode_set.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 7
  %30 = ptrtoint ptr %hw_isr_mode_set.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @bfa_hwct_isr_mode_set, ptr %hw_isr_mode_set.i, align 4
  %hw_msix_getvecs.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 8
  %31 = ptrtoint ptr %hw_msix_getvecs.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @bfa_hwct_msix_getvecs, ptr %hw_msix_getvecs.i, align 8
  %hw_msix_get_rme_range.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 9
  %32 = ptrtoint ptr %hw_msix_get_rme_range.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @bfa_hwct_msix_get_rme_range, ptr %hw_msix_get_rme_range.i, align 4
  %rme_vec_q0.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 11
  %33 = ptrtoint ptr %rme_vec_q0.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 5, ptr %rme_vec_q0.i, align 4
  %cpe_vec_q0.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23, i32 10
  %34 = ptrtoint ptr %cpe_vec_q0.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %cpe_vec_q0.i, align 8
  %35 = and i16 %7, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %35)
  %switch.i = icmp eq i16 %35, 34
  br i1 %switch.i, label %if.then84.i, label %if.end.i.bfa_iocfc_init_mem.exit_crit_edge

if.end.i.bfa_iocfc_init_mem.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_iocfc_init_mem.exit

if.then84.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %hwif.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @bfa_hwct2_reginit, ptr %hwif.i, align 8
  %37 = ptrtoint ptr %hw_isr_mode_set.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %hw_isr_mode_set.i, align 4
  %38 = ptrtoint ptr %hw_rspq_ack.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @bfa_hwct2_rspq_ack, ptr %hw_rspq_ack.i, align 8
  br label %bfa_iocfc_init_mem.exit

bfa_iocfc_init_mem.exit:                          ; preds = %if.then84.i, %if.end.i.bfa_iocfc_init_mem.exit_crit_edge, %if.end.thread.i
  %hwif92.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 23
  %39 = ptrtoint ptr %hwif92.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hwif92.i, align 8
  tail call void %40(ptr noundef %bfa) #10
  %msix.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 11
  %41 = ptrtoint ptr %msix.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %msix.i, align 8
  %kva_curp.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 28, i32 4
  %42 = ptrtoint ptr %kva_curp.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %kva_curp.i, align 8
  %dma_curp.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 28, i32 5
  %44 = ptrtoint ptr %dma_curp.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %dma_curp.i, align 8
  tail call void @bfa_ioc_mem_claim(ptr noundef %ioc1, ptr noundef %43, i64 noundef %45) #10
  %drvcfg.i = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1
  %46 = ptrtoint ptr %drvcfg.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %drvcfg.i, align 4
  %conv.i = zext i16 %47 to i32
  %mul.i31 = shl nuw nsw i32 %conv.i, 7
  %add.i32 = add nuw nsw i32 %mul.i31, 255
  %and.i = and i32 %add.i32, 16776960
  %num_rspq_elems.i = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %num_rspq_elems.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %num_rspq_elems.i, align 2
  %conv7.i = zext i16 %49 to i32
  %mul8.i = shl nuw nsw i32 %conv7.i, 7
  %add9.i = add nuw nsw i32 %mul8.i, 255
  %and10.i = and i32 %add9.i, 16776960
  %num_cqs.i = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 8
  %50 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %num_cqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp144.not.i = icmp eq i8 %51, 0
  br i1 %cmp144.not.i, label %for.end.thread.i, label %bfa_iocfc_init_mem.exit.for.body.i_crit_edge

bfa_iocfc_init_mem.exit.for.body.i_crit_edge:     ; preds = %bfa_iocfc_init_mem.exit
  br label %for.body.i

for.end.thread.i:                                 ; preds = %bfa_iocfc_init_mem.exit
  call void @__sanitizer_cov_trace_pc() #12
  %kva_curp36152.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 29, i32 4
  %52 = ptrtoint ptr %kva_curp36152.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %kva_curp36152.i, align 8
  %dma_curp37153.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 29, i32 5
  %54 = ptrtoint ptr %dma_curp37153.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %dma_curp37153.i, align 8
  br label %bfa_iocfc_mem_claim.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %bfa_iocfc_init_mem.exit.for.body.i_crit_edge
  %i.0145.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %bfa_iocfc_init_mem.exit.for.body.i_crit_edge ]
  %kva_curp15.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 30, i32 %i.0145.i, i32 4
  %56 = ptrtoint ptr %kva_curp15.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %kva_curp15.i, align 8
  %arrayidx16.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 18, i32 %i.0145.i
  %58 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %arrayidx16.i, align 8
  %dma_curp17.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 30, i32 %i.0145.i, i32 5
  %59 = ptrtoint ptr %dma_curp17.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %dma_curp17.i, align 8
  %pa.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 18, i32 %i.0145.i, i32 1
  %61 = ptrtoint ptr %pa.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %pa.i, align 8
  %62 = call ptr @memset(ptr %57, i32 0, i32 %and.i)
  %kva_curp26.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 31, i32 %i.0145.i, i32 4
  %63 = ptrtoint ptr %kva_curp26.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %kva_curp26.i, align 8
  %arrayidx27.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 20, i32 %i.0145.i
  %65 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %arrayidx27.i, align 8
  %dma_curp29.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 31, i32 %i.0145.i, i32 5
  %66 = ptrtoint ptr %dma_curp29.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %dma_curp29.i, align 8
  %pa32.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 20, i32 %i.0145.i, i32 1
  %68 = ptrtoint ptr %pa32.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %pa32.i, align 8
  %69 = call ptr @memset(ptr %64, i32 0, i32 %and10.i)
  %inc.i = add nuw nsw i32 %i.0145.i, 1
  %70 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %num_cqs.i, align 4
  %conv11.i = zext i8 %71 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv11.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %kva_curp36.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 29, i32 4
  %72 = ptrtoint ptr %kva_curp36.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %kva_curp36.i, align 8
  %dma_curp37.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 29, i32 5
  %74 = ptrtoint ptr %dma_curp37.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %dma_curp37.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp42147.not.i = icmp eq i8 %71, 0
  br i1 %cmp42147.not.i, label %for.end.i.bfa_iocfc_mem_claim.exit_crit_edge, label %for.end.i.for.body44.i_crit_edge

for.end.i.for.body44.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body44.i

for.end.i.bfa_iocfc_mem_claim.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_iocfc_mem_claim.exit

for.body44.i:                                     ; preds = %for.body44.i.for.body44.i_crit_edge, %for.end.i.for.body44.i_crit_edge
  %dm_kva.0150.i = phi ptr [ %add.ptr56.i, %for.body44.i.for.body44.i_crit_edge ], [ %73, %for.end.i.for.body44.i_crit_edge ]
  %i.1149.i = phi i32 [ %inc59.i, %for.body44.i.for.body44.i_crit_edge ], [ 0, %for.end.i.for.body44.i_crit_edge ]
  %dm_pa.0148.i = phi i64 [ %add57.i, %for.body44.i.for.body44.i_crit_edge ], [ %75, %for.end.i.for.body44.i_crit_edge ]
  %arrayidx45.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 19, i32 %i.1149.i
  %76 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %dm_kva.0150.i, ptr %arrayidx45.i, align 8
  %pa49.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 19, i32 %i.1149.i, i32 1
  %77 = ptrtoint ptr %pa49.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %dm_pa.0148.i, ptr %pa49.i, align 8
  %add.ptr.i = getelementptr i8, ptr %dm_kva.0150.i, i32 256
  %add50.i = add i64 %dm_pa.0148.i, 256
  %arrayidx51.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 21, i32 %i.1149.i
  %78 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr.i, ptr %arrayidx51.i, align 8
  %pa55.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 21, i32 %i.1149.i, i32 1
  %79 = ptrtoint ptr %pa55.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %add50.i, ptr %pa55.i, align 8
  %add.ptr56.i = getelementptr i8, ptr %dm_kva.0150.i, i32 512
  %add57.i = add i64 %dm_pa.0148.i, 512
  %inc59.i = add nuw nsw i32 %i.1149.i, 1
  %80 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %num_cqs.i, align 4
  %conv41.i = zext i8 %81 to i32
  %cmp42.i = icmp ult i32 %inc59.i, %conv41.i
  br i1 %cmp42.i, label %for.body44.i.for.body44.i_crit_edge, label %for.body44.i.bfa_iocfc_mem_claim.exit_crit_edge

for.body44.i.bfa_iocfc_mem_claim.exit_crit_edge:  ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_iocfc_mem_claim.exit

for.body44.i.for.body44.i_crit_edge:              ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body44.i

bfa_iocfc_mem_claim.exit:                         ; preds = %for.body44.i.bfa_iocfc_mem_claim.exit_crit_edge, %for.end.i.bfa_iocfc_mem_claim.exit_crit_edge, %for.end.thread.i
  %dm_pa.0.lcssa.i = phi i64 [ %75, %for.end.i.bfa_iocfc_mem_claim.exit_crit_edge ], [ %55, %for.end.thread.i ], [ %add57.i, %for.body44.i.bfa_iocfc_mem_claim.exit_crit_edge ]
  %dm_kva.0.lcssa.i = phi ptr [ %73, %for.end.i.bfa_iocfc_mem_claim.exit_crit_edge ], [ %53, %for.end.thread.i ], [ %add.ptr56.i, %for.body44.i.bfa_iocfc_mem_claim.exit_crit_edge ]
  %cfg_info.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 14
  %82 = ptrtoint ptr %cfg_info.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %dm_kva.0.lcssa.i, ptr %cfg_info.i, align 8
  %pa65.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 14, i32 1
  %83 = ptrtoint ptr %pa65.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %dm_pa.0.lcssa.i, ptr %pa65.i, align 8
  %cfginfo.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 15
  %84 = ptrtoint ptr %cfginfo.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %dm_kva.0.lcssa.i, ptr %cfginfo.i, align 8
  %add.ptr67.i = getelementptr i8, ptr %dm_kva.0.lcssa.i, i32 256
  %add68.i = add i64 %dm_pa.0.lcssa.i, 256
  %cfgrsp_dma.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 16
  %85 = ptrtoint ptr %cfgrsp_dma.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %add.ptr67.i, ptr %cfgrsp_dma.i, align 8
  %pa73.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 16, i32 1
  %86 = ptrtoint ptr %pa73.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %add68.i, ptr %pa73.i, align 8
  %cfgrsp.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 17
  %87 = ptrtoint ptr %cfgrsp.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %add.ptr67.i, ptr %cfgrsp.i, align 8
  %kva_curp78.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 32, i32 3
  %88 = ptrtoint ptr %kva_curp78.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %kva_curp78.i, align 8
  tail call void @bfa_ioc_debug_memclaim(ptr noundef %ioc1, ptr noundef %89) #10
  %90 = ptrtoint ptr %kva_curp78.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %kva_curp78.i, align 8
  %add.ptr81.i = getelementptr i8, ptr %91, i32 4128
  store ptr %add.ptr81.i, ptr %kva_curp78.i, align 8
  %92 = ptrtoint ptr %timer_mod to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %timer_mod, ptr %timer_mod, align 4
  %prev.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 5, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %timer_mod, ptr %prev.i, align 4
  %comp_q = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 7
  %94 = ptrtoint ptr %comp_q to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %comp_q, ptr %comp_q, align 4
  %prev.i33 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 7, i32 1
  %95 = ptrtoint ptr %prev.i33 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %comp_q, ptr %prev.i33, align 4
  %arrayidx = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 9, i32 0
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i34 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 9, i32 0, i32 1
  %97 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %arrayidx, ptr %prev.i34, align 4
  %arrayidx.1 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 9, i32 1
  %98 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i34.1 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 9, i32 1, i32 1
  %99 = ptrtoint ptr %prev.i34.1 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %arrayidx.1, ptr %prev.i34.1, align 4
  %arrayidx.2 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 9, i32 2
  %100 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 4
  %prev.i34.2 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 9, i32 2, i32 1
  %101 = ptrtoint ptr %prev.i34.2 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %arrayidx.2, ptr %prev.i34.2, align 4
  %arrayidx.3 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 9, i32 3
  %102 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %arrayidx.3, ptr %arrayidx.3, align 4
  %prev.i34.3 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 9, i32 3, i32 1
  %103 = ptrtoint ptr %prev.i34.3 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %arrayidx.3, ptr %prev.i34.3, align 4
  %iocfc = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4
  %cb_reqd = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 12
  %104 = ptrtoint ptr %cb_reqd to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %cb_reqd, align 4
  %op_status = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 13
  %105 = ptrtoint ptr %op_status to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %op_status, align 8
  %submod_enabled = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 11
  %106 = ptrtoint ptr %submod_enabled to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %submod_enabled, align 8
  %107 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @bfa_iocfc_sm_stopped, ptr %iocfc, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_enable_cbfn(ptr noundef %bfa_arg, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  %iocfc = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4
  %0 = ptrtoint ptr %iocfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocfc, align 8
  %. = select i1 %cmp, i32 6, i32 8
  tail call void %1(ptr noundef %iocfc, i32 noundef %.) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_disable_cbfn(ptr noundef %bfa_arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_process = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 8
  %0 = ptrtoint ptr %queue_process to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %queue_process, align 8
  %iocfc = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4
  %1 = ptrtoint ptr %iocfc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iocfc, align 8
  tail call void %2(ptr noundef %iocfc, i32 noundef 7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_hbfail_cbfn(ptr noundef %bfa_arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_process = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 8
  %0 = ptrtoint ptr %queue_process to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %queue_process, align 8
  %iocfc = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4
  %1 = ptrtoint ptr %iocfc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iocfc, align 8
  tail call void %2(ptr noundef %iocfc, i32 noundef 8) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_reset_cbfn(ptr noundef %bfa_arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 19, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %1, align 4
  %arrayidx2.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 3, i32 0
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 4, i32 0
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 21, i32 0
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx6.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %6, align 4
  %arrayidx.1.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 19, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %arrayidx2.1.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx2.1.i, align 4
  %arrayidx4.1.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx4.1.i, align 4
  %arrayidx6.1.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 21, i32 1
  %13 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6.1.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %14, align 4
  %arrayidx.2.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 19, i32 2
  %16 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %17, align 4
  %arrayidx2.2.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 3, i32 2
  %19 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx2.2.i, align 4
  %arrayidx4.2.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 4, i32 2
  %20 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx4.2.i, align 4
  %arrayidx6.2.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 21, i32 2
  %21 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx6.2.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %22, align 4
  %arrayidx.3.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 19, i32 3
  %24 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.3.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %25, align 4
  %arrayidx2.3.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 3, i32 3
  %27 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx2.3.i, align 4
  %arrayidx4.3.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 4, i32 3
  %28 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx4.3.i, align 4
  %arrayidx6.3.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 21, i32 3
  %29 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx6.3.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %30, align 4
  tail call void @bfa_isr_enable(ptr noundef %bfa_arg)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_pci_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_mbox_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_sm_stopped(ptr nocapture noundef %iocfc, i32 noundef %event) #0 align 64 {
entry:
  %ts.i14 = alloca %struct.timespec64, align 8
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa = getelementptr inbounds %struct.bfa_iocfc_s, ptr %iocfc, i32 0, i32 1
  %0 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa, align 4
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bfa_trc.exit_crit_edge

entry.__bfa_trc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %entry
  %conv = zext i32 %event to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 1
  %9 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 255, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 3
  %10 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %11 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %12 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %15, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %16 = trunc i64 %13 to i32
  %17 = mul i32 %16, 1000000
  %conv8.i = add i32 %17, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 2
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %19 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %20, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %22)
  %cmp.i = icmp eq i32 %and.i, %22
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %20, 2
  %and17.i = and i32 %add16.i, 4095
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and17.i, ptr %3, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %entry.__bfa_trc.exit_crit_edge
  %24 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %event, label %do.body1 [
    i32 1, label %__bfa_trc.exit.do.body_crit_edge
    i32 4, label %__bfa_trc.exit.do.body_crit_edge33
  ]

__bfa_trc.exit.do.body_crit_edge33:               ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

__bfa_trc.exit.do.body_crit_edge:                 ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %__bfa_trc.exit.do.body_crit_edge, %__bfa_trc.exit.do.body_crit_edge33
  %25 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_iocfc_sm_initing, ptr %iocfc, align 8
  %26 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bfa, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_s, ptr %27, i32 0, i32 3
  call void @bfa_ioc_enable(ptr noundef %ioc.i) #10
  br label %sw.epilog

do.body1:                                         ; preds = %__bfa_trc.exit
  %28 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bfa, align 4
  %trcmod3 = getelementptr inbounds %struct.bfa_s, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %trcmod3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trcmod3, align 8
  %stopped.i15 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %stopped.i15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stopped.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i16 = icmp eq i32 %33, 0
  br i1 %tobool.not.i16, label %if.end.i28, label %do.body1.__bfa_trc.exit32_crit_edge

do.body1.__bfa_trc.exit32_crit_edge:              ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit32

if.end.i28:                                       ; preds = %do.body1
  %or = or i32 %event, -559087616
  %conv4 = zext i32 %or to i64
  %tail1.i17 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %tail1.i17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tail1.i17, align 4
  %arrayidx.i18 = getelementptr %struct.bfa_trc_mod_s, ptr %31, i32 0, i32 6, i32 %35
  %36 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1025, ptr %arrayidx.i18, align 8
  %line5.i19 = getelementptr %struct.bfa_trc_mod_s, ptr %31, i32 0, i32 6, i32 %35, i32 1
  %37 = ptrtoint ptr %line5.i19 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 263, ptr %line5.i19, align 2
  %data6.i20 = getelementptr %struct.bfa_trc_mod_s, ptr %31, i32 0, i32 6, i32 %35, i32 3
  %38 = ptrtoint ptr %data6.i20 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv4, ptr %data6.i20, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i14) #10
  %39 = call ptr @memset(ptr %ts.i14, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i14) #10
  %40 = ptrtoint ptr %ts.i14 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ts.i14, align 8
  %tv_nsec.i21 = getelementptr inbounds %struct.timespec64, ptr %ts.i14, i32 0, i32 1
  %42 = ptrtoint ptr %tv_nsec.i21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tv_nsec.i21, align 8
  %div.i22 = sdiv i32 %43, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i14) #10
  %44 = trunc i64 %41 to i32
  %45 = mul i32 %44, 1000000
  %conv8.i23 = add i32 %45, %div.i22
  %timestamp.i24 = getelementptr %struct.bfa_trc_mod_s, ptr %31, i32 0, i32 6, i32 %35, i32 2
  %46 = ptrtoint ptr %timestamp.i24 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv8.i23, ptr %timestamp.i24, align 4
  %47 = ptrtoint ptr %tail1.i17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tail1.i17, align 4
  %add10.i25 = add i32 %48, 1
  %and.i26 = and i32 %add10.i25, 4095
  store i32 %and.i26, ptr %tail1.i17, align 4
  %49 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %31, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i26, i32 %50)
  %cmp.i27 = icmp eq i32 %and.i26, %50
  br i1 %cmp.i27, label %if.then14.i31, label %if.end.i28.__bfa_trc.exit32_crit_edge

if.end.i28.__bfa_trc.exit32_crit_edge:            ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit32

if.then14.i31:                                    ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i29 = add i32 %48, 2
  %and17.i30 = and i32 %add16.i29, 4095
  %51 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and17.i30, ptr %31, align 8
  br label %__bfa_trc.exit32

__bfa_trc.exit32:                                 ; preds = %if.then14.i31, %if.end.i28.__bfa_trc.exit32_crit_edge, %do.body1.__bfa_trc.exit32_crit_edge
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 263, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %__bfa_trc.exit32, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_iocfc_init(ptr noundef %bfa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iocfc = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4
  %0 = ptrtoint ptr %iocfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocfc, align 8
  tail call void %1(ptr noundef %iocfc, i32 noundef 1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_iocfc_start(ptr noundef %bfa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iocfc = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4
  %0 = ptrtoint ptr %iocfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocfc, align 8
  tail call void %1(ptr noundef %iocfc, i32 noundef 2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_iocfc_stop(ptr noundef %bfa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iocfc = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4
  %0 = ptrtoint ptr %iocfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocfc, align 8
  tail call void %1(ptr noundef %iocfc, i32 noundef 3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_iocfc_isr(ptr noundef %bfaarg, ptr nocapture noundef readonly %m) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %bfaarg, i32 0, i32 2
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 8
  %msg_id = getelementptr inbounds %struct.bfi_mhdr_s, ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %msg_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msg_id, align 1
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bfa_trc.exit_crit_edge

entry.__bfa_trc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %entry
  %conv = zext i8 %3 to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %1, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %1, i32 0, i32 6, i32 %7, i32 1
  %9 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1586, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %1, i32 0, i32 6, i32 %7, i32 3
  %10 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %11 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %12 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %15, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %16 = trunc i64 %13 to i32
  %17 = mul i32 %16, 1000000
  %conv8.i = add i32 %17, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %1, i32 0, i32 6, i32 %7, i32 2
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %19 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %20, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %22)
  %cmp.i = icmp eq i32 %and.i, %22
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exitthread-pre-split_crit_edge

if.end.i.__bfa_trc.exitthread-pre-split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exitthread-pre-split

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %20, 2
  %and17.i = and i32 %add16.i, 4095
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and17.i, ptr %1, align 8
  br label %__bfa_trc.exitthread-pre-split

__bfa_trc.exitthread-pre-split:                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exitthread-pre-split_crit_edge
  %24 = ptrtoint ptr %msg_id to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pr = load i8, ptr %msg_id, align 1
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %__bfa_trc.exitthread-pre-split, %entry.__bfa_trc.exit_crit_edge
  %25 = phi i8 [ %.pr, %__bfa_trc.exitthread-pre-split ], [ %3, %entry.__bfa_trc.exit_crit_edge ]
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %25, label %do.end [
    i8 -127, label %sw.bb
    i8 -125, label %sw.bb4
    i8 -123, label %sw.bb5
    i8 -124, label %sw.bb6
  ]

sw.bb:                                            ; preds = %__bfa_trc.exit
  %cfgrsp2.i = getelementptr inbounds %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 17
  %27 = ptrtoint ptr %cfgrsp2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfgrsp2.i, align 8
  %qreg.i = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4
  %pci_bar_kva.i.i = getelementptr inbounds %struct.bfa_s, ptr %bfaarg, i32 0, i32 3, i32 2, i32 4
  %29 = ptrtoint ptr %pci_bar_kva.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_bar_kva.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx3.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 5, i32 0
  %33 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx3.i.i, align 1
  %34 = ptrtoint ptr %qreg.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %qreg.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %35
  %arrayidx5.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 3, i32 0
  %36 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i.i, ptr %arrayidx5.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %arrayidx6.i.i, align 1
  %add.ptr7.i.i = getelementptr i8, ptr %30, i32 %38
  %arrayidx8.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 2, i32 0
  %39 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr7.i.i, ptr %arrayidx8.i.i, align 4
  %arrayidx9.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 2
  %40 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %arrayidx9.i.i, align 1
  %add.ptr10.i.i = getelementptr i8, ptr %30, i32 %41
  %arrayidx11.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 4, i32 0
  %42 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr10.i.i, ptr %arrayidx11.i.i, align 4
  %arrayidx12.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 3
  %43 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %arrayidx12.i.i, align 1
  %add.ptr13.i.i = getelementptr i8, ptr %30, i32 %44
  %arrayidx14.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 5, i32 0
  %45 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr13.i.i, ptr %arrayidx14.i.i, align 4
  %arrayidx15.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 4
  %46 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %arrayidx15.i.i, align 1
  %add.ptr16.i.i = getelementptr i8, ptr %30, i32 %47
  %arrayidx17.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 6, i32 0
  %48 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr16.i.i, ptr %arrayidx17.i.i, align 4
  %arrayidx18.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 5
  %49 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %arrayidx18.i.i, align 1
  %add.ptr19.i.i = getelementptr i8, ptr %30, i32 %50
  %arrayidx20.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 7, i32 0
  %51 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr19.i.i, ptr %arrayidx20.i.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 6, i32 1
  %52 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.1.i.i, align 1
  %arrayidx3.1.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 5, i32 1
  %54 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx3.1.i.i, align 1
  %arrayidx4.1.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 0, i32 1
  %55 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %arrayidx4.1.i.i, align 1
  %add.ptr.1.i.i = getelementptr i8, ptr %30, i32 %56
  %arrayidx5.1.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 3, i32 1
  %57 = ptrtoint ptr %arrayidx5.1.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr.1.i.i, ptr %arrayidx5.1.i.i, align 4
  %arrayidx6.1.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 1, i32 1
  %58 = ptrtoint ptr %arrayidx6.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %arrayidx6.1.i.i, align 1
  %add.ptr7.1.i.i = getelementptr i8, ptr %30, i32 %59
  %arrayidx8.1.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 2, i32 1
  %60 = ptrtoint ptr %arrayidx8.1.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr7.1.i.i, ptr %arrayidx8.1.i.i, align 4
  %arrayidx9.1.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 2, i32 1
  %61 = ptrtoint ptr %arrayidx9.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %arrayidx9.1.i.i, align 1
  %add.ptr10.1.i.i = getelementptr i8, ptr %30, i32 %62
  %arrayidx11.1.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 4, i32 1
  %63 = ptrtoint ptr %arrayidx11.1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr10.1.i.i, ptr %arrayidx11.1.i.i, align 4
  %arrayidx12.1.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 3, i32 1
  %64 = ptrtoint ptr %arrayidx12.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %arrayidx12.1.i.i, align 1
  %add.ptr13.1.i.i = getelementptr i8, ptr %30, i32 %65
  %arrayidx14.1.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 5, i32 1
  %66 = ptrtoint ptr %arrayidx14.1.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr13.1.i.i, ptr %arrayidx14.1.i.i, align 4
  %arrayidx15.1.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 4, i32 1
  %67 = ptrtoint ptr %arrayidx15.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %arrayidx15.1.i.i, align 1
  %add.ptr16.1.i.i = getelementptr i8, ptr %30, i32 %68
  %arrayidx17.1.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 6, i32 1
  %69 = ptrtoint ptr %arrayidx17.1.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr16.1.i.i, ptr %arrayidx17.1.i.i, align 4
  %arrayidx18.1.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 5, i32 1
  %70 = ptrtoint ptr %arrayidx18.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %arrayidx18.1.i.i, align 1
  %add.ptr19.1.i.i = getelementptr i8, ptr %30, i32 %71
  %arrayidx20.1.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 7, i32 1
  %72 = ptrtoint ptr %arrayidx20.1.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr19.1.i.i, ptr %arrayidx20.1.i.i, align 4
  %arrayidx.2.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 6, i32 2
  %73 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.2.i.i, align 1
  %arrayidx3.2.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 5, i32 2
  %75 = ptrtoint ptr %arrayidx3.2.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx3.2.i.i, align 1
  %arrayidx4.2.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 0, i32 2
  %76 = ptrtoint ptr %arrayidx4.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %arrayidx4.2.i.i, align 1
  %add.ptr.2.i.i = getelementptr i8, ptr %30, i32 %77
  %arrayidx5.2.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 3, i32 2
  %78 = ptrtoint ptr %arrayidx5.2.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr.2.i.i, ptr %arrayidx5.2.i.i, align 4
  %arrayidx6.2.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 1, i32 2
  %79 = ptrtoint ptr %arrayidx6.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %arrayidx6.2.i.i, align 1
  %add.ptr7.2.i.i = getelementptr i8, ptr %30, i32 %80
  %arrayidx8.2.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 2, i32 2
  %81 = ptrtoint ptr %arrayidx8.2.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr7.2.i.i, ptr %arrayidx8.2.i.i, align 4
  %arrayidx9.2.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 2, i32 2
  %82 = ptrtoint ptr %arrayidx9.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %arrayidx9.2.i.i, align 1
  %add.ptr10.2.i.i = getelementptr i8, ptr %30, i32 %83
  %arrayidx11.2.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 4, i32 2
  %84 = ptrtoint ptr %arrayidx11.2.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %add.ptr10.2.i.i, ptr %arrayidx11.2.i.i, align 4
  %arrayidx12.2.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 3, i32 2
  %85 = ptrtoint ptr %arrayidx12.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %arrayidx12.2.i.i, align 1
  %add.ptr13.2.i.i = getelementptr i8, ptr %30, i32 %86
  %arrayidx14.2.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 5, i32 2
  %87 = ptrtoint ptr %arrayidx14.2.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %add.ptr13.2.i.i, ptr %arrayidx14.2.i.i, align 4
  %arrayidx15.2.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 4, i32 2
  %88 = ptrtoint ptr %arrayidx15.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %arrayidx15.2.i.i, align 1
  %add.ptr16.2.i.i = getelementptr i8, ptr %30, i32 %89
  %arrayidx17.2.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 6, i32 2
  %90 = ptrtoint ptr %arrayidx17.2.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %add.ptr16.2.i.i, ptr %arrayidx17.2.i.i, align 4
  %arrayidx18.2.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 5, i32 2
  %91 = ptrtoint ptr %arrayidx18.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %arrayidx18.2.i.i, align 1
  %add.ptr19.2.i.i = getelementptr i8, ptr %30, i32 %92
  %arrayidx20.2.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 7, i32 2
  %93 = ptrtoint ptr %arrayidx20.2.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %add.ptr19.2.i.i, ptr %arrayidx20.2.i.i, align 4
  %arrayidx.3.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 6, i32 3
  %94 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.3.i.i, align 1
  %arrayidx3.3.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 5, i32 3
  %96 = ptrtoint ptr %arrayidx3.3.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx3.3.i.i, align 1
  %arrayidx4.3.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 0, i32 3
  %97 = ptrtoint ptr %arrayidx4.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %arrayidx4.3.i.i, align 1
  %add.ptr.3.i.i = getelementptr i8, ptr %30, i32 %98
  %arrayidx5.3.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 3, i32 3
  %99 = ptrtoint ptr %arrayidx5.3.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %add.ptr.3.i.i, ptr %arrayidx5.3.i.i, align 4
  %arrayidx6.3.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 1, i32 3
  %100 = ptrtoint ptr %arrayidx6.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %arrayidx6.3.i.i, align 1
  %add.ptr7.3.i.i = getelementptr i8, ptr %30, i32 %101
  %arrayidx8.3.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 2, i32 3
  %102 = ptrtoint ptr %arrayidx8.3.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %add.ptr7.3.i.i, ptr %arrayidx8.3.i.i, align 4
  %arrayidx9.3.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 2, i32 3
  %103 = ptrtoint ptr %arrayidx9.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %arrayidx9.3.i.i, align 1
  %add.ptr10.3.i.i = getelementptr i8, ptr %30, i32 %104
  %arrayidx11.3.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 4, i32 3
  %105 = ptrtoint ptr %arrayidx11.3.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %add.ptr10.3.i.i, ptr %arrayidx11.3.i.i, align 4
  %arrayidx12.3.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 3, i32 3
  %106 = ptrtoint ptr %arrayidx12.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %arrayidx12.3.i.i, align 1
  %add.ptr13.3.i.i = getelementptr i8, ptr %30, i32 %107
  %arrayidx14.3.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 5, i32 3
  %108 = ptrtoint ptr %arrayidx14.3.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %add.ptr13.3.i.i, ptr %arrayidx14.3.i.i, align 4
  %arrayidx15.3.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 4, i32 3
  %109 = ptrtoint ptr %arrayidx15.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %arrayidx15.3.i.i, align 1
  %add.ptr16.3.i.i = getelementptr i8, ptr %30, i32 %110
  %arrayidx17.3.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 6, i32 3
  %111 = ptrtoint ptr %arrayidx17.3.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %add.ptr16.3.i.i, ptr %arrayidx17.3.i.i, align 4
  %arrayidx18.3.i.i = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %28, i32 0, i32 4, i32 5, i32 3
  %112 = ptrtoint ptr %arrayidx18.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %arrayidx18.3.i.i, align 1
  %add.ptr19.3.i.i = getelementptr i8, ptr %30, i32 %113
  %arrayidx20.3.i.i = getelementptr %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 22, i32 7, i32 3
  %114 = ptrtoint ptr %arrayidx20.3.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %add.ptr19.3.i.i, ptr %arrayidx20.3.i.i, align 4
  %cfginfo.i.i = getelementptr inbounds %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 15
  %115 = ptrtoint ptr %cfginfo.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cfginfo.i.i, align 8
  %num_fcxp_reqs.i.i = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %28, i32 0, i32 6
  %117 = ptrtoint ptr %num_fcxp_reqs.i.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %118 = load i16, ptr %num_fcxp_reqs.i.i, align 1
  call void @bfa_fcxp_res_recfg(ptr noundef %bfaarg, i16 noundef zeroext %118) #10
  %num_uf_bufs.i.i = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %28, i32 0, i32 7
  %119 = ptrtoint ptr %num_uf_bufs.i.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %num_uf_bufs.i.i, align 1
  call void @bfa_uf_res_recfg(ptr noundef %bfaarg, i16 noundef zeroext %120) #10
  %num_rports.i.i = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %28, i32 0, i32 2
  %121 = ptrtoint ptr %num_rports.i.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %num_rports.i.i, align 1
  call void @bfa_rport_res_recfg(ptr noundef %bfaarg, i16 noundef zeroext %122) #10
  %num_ioim_reqs.i.i = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %116, i32 0, i32 7
  %123 = ptrtoint ptr %num_ioim_reqs.i.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %124 = load i16, ptr %num_ioim_reqs.i.i, align 1
  %num_ioim_reqs2.i.i = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %28, i32 0, i32 3
  %125 = ptrtoint ptr %num_ioim_reqs2.i.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 2)
  %126 = load i16, ptr %num_ioim_reqs2.i.i, align 1
  call void @bfa_fcp_res_recfg(ptr noundef %bfaarg, i16 noundef zeroext %124, i16 noundef zeroext %126) #10
  %num_tskim_reqs.i.i = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %28, i32 0, i32 4
  %127 = ptrtoint ptr %num_tskim_reqs.i.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 2)
  %128 = load i16, ptr %num_tskim_reqs.i.i, align 1
  call void @bfa_tskim_res_recfg(ptr noundef %bfaarg, i16 noundef zeroext %128) #10
  %hw_msix_queue_install.i = getelementptr inbounds %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 23, i32 5
  %129 = ptrtoint ptr %hw_msix_queue_install.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hw_msix_queue_install.i, align 4
  call void %130(ptr noundef %bfaarg) #10
  %131 = ptrtoint ptr %cfgrsp2.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cfgrsp2.i, align 8
  %pbc_pwwn.i = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, ptr %132, i32 0, i32 3, i32 7
  %133 = ptrtoint ptr %pbc_pwwn.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 8)
  %134 = load i64, ptr %pbc_pwwn.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %134)
  %cmp.not.i = icmp eq i64 %134, 0
  br i1 %cmp.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %iocfc1.i = getelementptr inbounds %struct.bfa_s, ptr %bfaarg, i32 0, i32 4
  %attr.i = getelementptr inbounds %struct.bfa_s, ptr %bfaarg, i32 0, i32 3, i32 21
  %135 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %attr.i, align 8
  %pwwn.i = getelementptr inbounds %struct.bfi_ioc_attr_s, ptr %136, i32 0, i32 5
  %137 = ptrtoint ptr %pwwn.i to i32
  call void @__asan_storeN_noabort(i32 %137, i32 8)
  store i64 %134, ptr %pwwn.i, align 1
  %138 = ptrtoint ptr %cfgrsp2.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cfgrsp2.i, align 8
  %pbc_nwwn.i = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, ptr %139, i32 0, i32 3, i32 8
  %140 = ptrtoint ptr %pbc_nwwn.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 8)
  %141 = load i64, ptr %pbc_nwwn.i, align 1
  %142 = load ptr, ptr %attr.i, align 8
  %nwwn.i = getelementptr inbounds %struct.bfi_ioc_attr_s, ptr %142, i32 0, i32 6
  %143 = ptrtoint ptr %nwwn.i to i32
  call void @__asan_storeN_noabort(i32 %143, i32 8)
  store i64 %141, ptr %nwwn.i, align 1
  %144 = ptrtoint ptr %iocfc1.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %iocfc1.i, align 8
  call void %145(ptr noundef %iocfc1.i, i32 noundef 10) #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %updateq_cbfn = getelementptr inbounds %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 24
  %146 = ptrtoint ptr %updateq_cbfn to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %updateq_cbfn, align 8
  %updateq_cbarg = getelementptr inbounds %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 25
  %148 = ptrtoint ptr %updateq_cbarg to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %updateq_cbarg, align 4
  call void %147(ptr noundef %149, i32 noundef 0) #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %iocfc1.i31 = getelementptr inbounds %struct.bfa_s, ptr %bfaarg, i32 0, i32 4
  %cfgrsp2.i32 = getelementptr inbounds %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 17
  %150 = ptrtoint ptr %cfgrsp2.i32 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cfgrsp2.i32, align 8
  %pwwn.i33 = getelementptr inbounds %struct.bfi_faa_addr_msg_s, ptr %m, i32 0, i32 2
  %152 = ptrtoint ptr %pwwn.i33 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 8)
  %153 = load i64, ptr %pwwn.i33, align 1
  %pbc_pwwn.i34 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, ptr %151, i32 0, i32 3, i32 7
  %154 = ptrtoint ptr %pbc_pwwn.i34 to i32
  call void @__asan_storeN_noabort(i32 %154, i32 8)
  store i64 %153, ptr %pbc_pwwn.i34, align 1
  %nwwn.i35 = getelementptr inbounds %struct.bfi_faa_addr_msg_s, ptr %m, i32 0, i32 3
  %155 = ptrtoint ptr %nwwn.i35 to i32
  call void @__asan_loadN_noabort(i32 %155, i32 8)
  %156 = load i64, ptr %nwwn.i35, align 1
  %pbc_nwwn.i36 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, ptr %151, i32 0, i32 3, i32 8
  %157 = ptrtoint ptr %pbc_nwwn.i36 to i32
  call void @__asan_storeN_noabort(i32 %157, i32 8)
  store i64 %156, ptr %pbc_nwwn.i36, align 1
  %158 = load i64, ptr %pwwn.i33, align 1
  %attr.i37 = getelementptr inbounds %struct.bfa_s, ptr %bfaarg, i32 0, i32 3, i32 21
  %159 = ptrtoint ptr %attr.i37 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %attr.i37, align 8
  %pwwn5.i = getelementptr inbounds %struct.bfi_ioc_attr_s, ptr %160, i32 0, i32 5
  %161 = ptrtoint ptr %pwwn5.i to i32
  call void @__asan_storeN_noabort(i32 %161, i32 8)
  store i64 %158, ptr %pwwn5.i, align 1
  %162 = load i64, ptr %nwwn.i35, align 1
  %163 = load ptr, ptr %attr.i37, align 8
  %nwwn9.i = getelementptr inbounds %struct.bfi_ioc_attr_s, ptr %163, i32 0, i32 6
  %164 = ptrtoint ptr %nwwn9.i to i32
  call void @__asan_storeN_noabort(i32 %164, i32 8)
  store i64 %162, ptr %nwwn9.i, align 1
  %165 = ptrtoint ptr %iocfc1.i31 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %iocfc1.i31, align 8
  call void %166(ptr noundef %iocfc1.i31, i32 noundef 10) #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %__bfa_trc.exit
  %faa_args.i = getelementptr inbounds %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 27
  %faa_cb.i = getelementptr inbounds %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 27, i32 1
  %faa_cbarg.i = getelementptr inbounds %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 27, i32 1, i32 1
  %167 = ptrtoint ptr %faa_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %faa_cbarg.i, align 4
  %169 = ptrtoint ptr %faa_args.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %faa_args.i, align 4
  %tobool.not.i38 = icmp eq ptr %170, null
  br i1 %tobool.not.i38, label %sw.bb6.if.end.i40_crit_edge, label %if.then.i39

sw.bb6.if.end.i40_crit_edge:                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i40

if.then.i39:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  %faa.i = getelementptr inbounds %struct.bfi_faa_query_s, ptr %m, i32 0, i32 4
  %171 = ptrtoint ptr %faa.i to i32
  call void @__asan_loadN_noabort(i32 %171, i32 8)
  %172 = load i64, ptr %faa.i, align 1
  %173 = ptrtoint ptr %170 to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %172, ptr %170, align 8
  %faa_status.i = getelementptr inbounds %struct.bfi_faa_query_s, ptr %m, i32 0, i32 1
  %174 = ptrtoint ptr %faa_status.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %faa_status.i, align 1
  %176 = ptrtoint ptr %faa_args.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %faa_args.i, align 4
  %faa_state.i = getelementptr inbounds %struct.bfa_faa_attr_s, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %faa_state.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %175, ptr %faa_state.i, align 8
  %addr_source.i = getelementptr inbounds %struct.bfi_faa_query_s, ptr %m, i32 0, i32 2
  %179 = ptrtoint ptr %addr_source.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %addr_source.i, align 1
  %181 = load ptr, ptr %faa_args.i, align 4
  %pwwn_source.i = getelementptr inbounds %struct.bfa_faa_attr_s, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %pwwn_source.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %180, ptr %pwwn_source.i, align 1
  br label %if.end.i40

if.end.i40:                                       ; preds = %if.then.i39, %sw.bb6.if.end.i40_crit_edge
  %183 = ptrtoint ptr %faa_cb.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %faa_cb.i, align 4
  %tobool11.not.i = icmp eq ptr %184, null
  br i1 %tobool11.not.i, label %do.end.i, label %if.end.i40.bfa_faa_query_reply.exit_crit_edge, !prof !84

if.end.i40.bfa_faa_query_reply.exit_crit_edge:    ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_faa_query_reply.exit

do.end.i:                                         ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1411, i32 noundef 9, ptr noundef null) #10
  br label %bfa_faa_query_reply.exit

bfa_faa_query_reply.exit:                         ; preds = %do.end.i, %if.end.i40.bfa_faa_query_reply.exit_crit_edge
  %185 = ptrtoint ptr %faa_cb.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %faa_cb.i, align 4
  call void %186(ptr noundef %168, i32 noundef 0) #10
  %busy.i = getelementptr inbounds %struct.bfa_s, ptr %bfaarg, i32 0, i32 4, i32 27, i32 3
  %187 = ptrtoint ptr %busy.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %busy.i, align 4
  br label %sw.epilog

do.end:                                           ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1603, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %bfa_faa_query_reply.exit, %sw.bb5, %sw.bb4, %if.then.i, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bfa_iocfc_get_attr(ptr nocapture noundef readonly %bfa, ptr nocapture noundef writeonly %attr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cfginfo = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 15
  %0 = ptrtoint ptr %cfginfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfginfo, align 8
  %intr_attr = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %intr_attr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %intr_attr, align 1
  %intr_attr2 = getelementptr inbounds %struct.bfa_iocfc_attr_s, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %intr_attr2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %intr_attr2, align 4
  %5 = load ptr, ptr %cfginfo, align 8
  %delay = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %5, i32 0, i32 18, i32 3
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %delay, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cfgrsp = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 17
  %8 = ptrtoint ptr %cfgrsp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfgrsp, align 8
  %delay11 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, ptr %9, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %delay11 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %delay11, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond.in = phi i16 [ %11, %cond.false ], [ %7, %entry.cond.end_crit_edge ]
  %delay15 = getelementptr inbounds %struct.bfa_iocfc_attr_s, ptr %attr, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %delay15 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %cond.in, ptr %delay15, align 2
  %13 = ptrtoint ptr %cfginfo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfginfo, align 8
  %latency = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %14, i32 0, i32 18, i32 2
  %15 = ptrtoint ptr %latency to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %latency, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool19.not = icmp eq i16 %16, 0
  br i1 %tobool19.not, label %cond.false25, label %cond.end.cond.end30_crit_edge

cond.end.cond.end30_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end30

cond.false25:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %cfgrsp26 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 17
  %17 = ptrtoint ptr %cfgrsp26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfgrsp26, align 8
  %latency28 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, ptr %18, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %latency28 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %latency28, align 1
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false25, %cond.end.cond.end30_crit_edge
  %cond31.in = phi i16 [ %20, %cond.false25 ], [ %16, %cond.end.cond.end30_crit_edge ]
  %latency34 = getelementptr inbounds %struct.bfa_iocfc_attr_s, ptr %attr, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %latency34 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %cond31.in, ptr %latency34, align 4
  %cfg = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 2
  %22 = call ptr @memcpy(ptr %attr, ptr %cfg, i32 56)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_iocfc_israttr_set(ptr noundef %bfa, ptr nocapture noundef readonly %attr) local_unnamed_addr #0 align 64 {
entry:
  %ts.i109 = alloca %struct.timespec64, align 8
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %attr, align 1
  %cfginfo = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 15
  %2 = ptrtoint ptr %cfginfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfginfo, align 8
  %intr_attr = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %intr_attr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %1, ptr %intr_attr, align 1
  %delay = getelementptr inbounds %struct.bfa_iocfc_intr_attr_s, ptr %attr, i32 0, i32 3
  %5 = ptrtoint ptr %delay to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %delay, align 1
  %7 = load ptr, ptr %cfginfo, align 8
  %delay5 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %7, i32 0, i32 18, i32 3
  %8 = ptrtoint ptr %delay5 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %6, ptr %delay5, align 1
  %latency = getelementptr inbounds %struct.bfa_iocfc_intr_attr_s, ptr %attr, i32 0, i32 2
  %9 = ptrtoint ptr %latency to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %latency, align 1
  %11 = load ptr, ptr %cfginfo, align 8
  %latency8 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %11, i32 0, i32 18, i32 2
  %12 = ptrtoint ptr %latency8 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %10, ptr %latency8, align 1
  %ioc.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3
  %call.i = tail call i32 @bfa_ioc_is_operational(ptr noundef %ioc.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %bfa_iocfc_is_operational.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

bfa_iocfc_is_operational.exit:                    ; preds = %entry
  %iocfc.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4
  %13 = ptrtoint ptr %iocfc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iocfc.i, align 8
  %cmp.i.not = icmp eq ptr %14, @bfa_iocfc_sm_operational
  br i1 %cmp.i.not, label %if.end, label %bfa_iocfc_is_operational.exit.cleanup_crit_edge

bfa_iocfc_is_operational.exit.cleanup_crit_edge:  ; preds = %bfa_iocfc_is_operational.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %bfa_iocfc_is_operational.exit
  %req_cq_pi = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %req_cq_pi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %req_cq_pi, align 8
  %add = add i32 %16, 1
  %drvcfg = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 2, i32 1
  %17 = ptrtoint ptr %drvcfg to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %drvcfg, align 8
  %conv = zext i16 %18 to i32
  %sub = add nsw i32 %conv, -1
  %and = and i32 %sub, %add
  %req_cq_shadow_ci = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 19
  %19 = ptrtoint ptr %req_cq_shadow_ci to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %req_cq_shadow_ci, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %22)
  %cmp = icmp eq i32 %and, %22
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %cond.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end:                                         ; preds = %if.end
  %req_cq_ba = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 18
  %23 = ptrtoint ptr %req_cq_ba to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %req_cq_ba, align 8
  %add.ptr = getelementptr %struct.bfi_msg_s, ptr %24, i32 %16
  %tobool20.not = icmp eq ptr %add.ptr, null
  br i1 %tobool20.not, label %cond.end.cleanup_crit_edge, label %do.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %cond.end
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 6, ptr %add.ptr, align 1
  %msg_id = getelementptr inbounds %struct.bfi_mhdr_s, ptr %add.ptr, i32 0, i32 1
  %26 = ptrtoint ptr %msg_id to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %msg_id, align 1
  %pci_func = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 2, i32 1
  %27 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pci_func, align 4
  %shl = shl i8 %28, 1
  %port_id = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 19
  %29 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %port_id, align 8
  %or = or i8 %shl, %30
  %mtag = getelementptr inbounds %struct.bfi_mhdr_s, ptr %add.ptr, i32 0, i32 2
  %fn_lpu = getelementptr inbounds %struct.anon.3, ptr %mtag, i32 0, i32 1
  %31 = ptrtoint ptr %fn_lpu to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %or, ptr %fn_lpu, align 1
  %32 = ptrtoint ptr %cfginfo to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfginfo, align 8
  %intr_attr30 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %33, i32 0, i32 18
  %34 = ptrtoint ptr %intr_attr30 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %intr_attr30, align 1
  %coalesce32 = getelementptr inbounds %struct.bfi_iocfc_set_intr_req_s, ptr %add.ptr, i32 0, i32 1
  %36 = ptrtoint ptr %coalesce32 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %coalesce32, align 1
  %37 = load ptr, ptr %cfginfo, align 8
  %delay35 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %37, i32 0, i32 18, i32 3
  %38 = ptrtoint ptr %delay35 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %delay35, align 1
  %delay36 = getelementptr inbounds %struct.bfi_iocfc_set_intr_req_s, ptr %add.ptr, i32 0, i32 3
  %40 = ptrtoint ptr %delay36 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %delay36, align 1
  %41 = load ptr, ptr %cfginfo, align 8
  %latency39 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %41, i32 0, i32 18, i32 2
  %42 = ptrtoint ptr %latency39 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %latency39, align 1
  %latency40 = getelementptr inbounds %struct.bfi_iocfc_set_intr_req_s, ptr %add.ptr, i32 0, i32 4
  %44 = ptrtoint ptr %latency40 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %43, ptr %latency40, align 1
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 2
  %45 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i107 = icmp eq i32 %48, 0
  br i1 %tobool.not.i107, label %if.end.i, label %do.body.__bfa_trc.exit_crit_edge

do.body.__bfa_trc.exit_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %do.body
  %49 = ptrtoint ptr %delay to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %delay, align 1
  %conv42 = zext i16 %50 to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %46, i32 0, i32 1
  %51 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %46, i32 0, i32 6, i32 %52
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %46, i32 0, i32 6, i32 %52, i32 1
  %54 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1648, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %46, i32 0, i32 6, i32 %52, i32 3
  %55 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv42, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %56 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %57 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %59 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %60, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %61 = trunc i64 %58 to i32
  %62 = mul i32 %61, 1000000
  %conv8.i = add i32 %62, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %46, i32 0, i32 6, i32 %52, i32 2
  %63 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %64 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %65, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %66 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %46, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %67)
  %cmp.i108 = icmp eq i32 %and.i, %67
  br i1 %cmp.i108, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %65, 2
  %and17.i = and i32 %add16.i, 4095
  %68 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and17.i, ptr %46, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %do.body.__bfa_trc.exit_crit_edge
  %69 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %trcmod, align 8
  %stopped.i110 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %stopped.i110 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %stopped.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i111 = icmp eq i32 %72, 0
  br i1 %tobool.not.i111, label %if.end.i123, label %__bfa_trc.exit.__bfa_trc.exit127_crit_edge

__bfa_trc.exit.__bfa_trc.exit127_crit_edge:       ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit127

if.end.i123:                                      ; preds = %__bfa_trc.exit
  %73 = ptrtoint ptr %latency to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %latency, align 1
  %conv45 = zext i16 %74 to i64
  %tail1.i112 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %70, i32 0, i32 1
  %75 = ptrtoint ptr %tail1.i112 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tail1.i112, align 4
  %arrayidx.i113 = getelementptr %struct.bfa_trc_mod_s, ptr %70, i32 0, i32 6, i32 %76
  %77 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1025, ptr %arrayidx.i113, align 8
  %line5.i114 = getelementptr %struct.bfa_trc_mod_s, ptr %70, i32 0, i32 6, i32 %76, i32 1
  %78 = ptrtoint ptr %line5.i114 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 1649, ptr %line5.i114, align 2
  %data6.i115 = getelementptr %struct.bfa_trc_mod_s, ptr %70, i32 0, i32 6, i32 %76, i32 3
  %79 = ptrtoint ptr %data6.i115 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv45, ptr %data6.i115, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i109) #10
  %80 = call ptr @memset(ptr %ts.i109, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i109) #10
  %81 = ptrtoint ptr %ts.i109 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %ts.i109, align 8
  %tv_nsec.i116 = getelementptr inbounds %struct.timespec64, ptr %ts.i109, i32 0, i32 1
  %83 = ptrtoint ptr %tv_nsec.i116 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tv_nsec.i116, align 8
  %div.i117 = sdiv i32 %84, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i109) #10
  %85 = trunc i64 %82 to i32
  %86 = mul i32 %85, 1000000
  %conv8.i118 = add i32 %86, %div.i117
  %timestamp.i119 = getelementptr %struct.bfa_trc_mod_s, ptr %70, i32 0, i32 6, i32 %76, i32 2
  %87 = ptrtoint ptr %timestamp.i119 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv8.i118, ptr %timestamp.i119, align 4
  %88 = ptrtoint ptr %tail1.i112 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tail1.i112, align 4
  %add10.i120 = add i32 %89, 1
  %and.i121 = and i32 %add10.i120, 4095
  store i32 %and.i121, ptr %tail1.i112, align 4
  %90 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %70, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i121, i32 %91)
  %cmp.i122 = icmp eq i32 %and.i121, %91
  br i1 %cmp.i122, label %if.then14.i126, label %if.end.i123.__bfa_trc.exit127_crit_edge

if.end.i123.__bfa_trc.exit127_crit_edge:          ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit127

if.then14.i126:                                   ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i124 = add i32 %89, 2
  %and17.i125 = and i32 %add16.i124, 4095
  %92 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %and17.i125, ptr %70, align 8
  br label %__bfa_trc.exit127

__bfa_trc.exit127:                                ; preds = %if.then14.i126, %if.end.i123.__bfa_trc.exit127_crit_edge, %__bfa_trc.exit.__bfa_trc.exit127_crit_edge
  %hw_qid = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 5
  %93 = ptrtoint ptr %hw_qid to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %hw_qid, align 8
  %95 = ptrtoint ptr %mtag to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %mtag, align 1
  %96 = ptrtoint ptr %req_cq_pi to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %req_cq_pi, align 8
  %inc = add i32 %97, 1
  %98 = ptrtoint ptr %drvcfg to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %drvcfg, align 8
  %conv58 = zext i16 %99 to i32
  %sub59 = add nsw i32 %conv58, -1
  %and63 = and i32 %sub59, %inc
  store i32 %and63, ptr %req_cq_pi, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  call void @arm_heavy_mb() #10
  %100 = ptrtoint ptr %req_cq_pi to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %req_cq_pi, align 8
  %102 = call i32 @llvm.bswap.i32(i32 %101)
  %cpe_q_pi = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 22, i32 2
  %103 = ptrtoint ptr %cpe_q_pi to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cpe_q_pi, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #10, !srcloc !88
  br label %cleanup

cleanup:                                          ; preds = %__bfa_trc.exit127, %cond.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %bfa_iocfc_is_operational.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__bfa_trc.exit127 ], [ 0, %bfa_iocfc_is_operational.exit.cleanup_crit_edge ], [ 13, %cond.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 13, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_iocfc_is_operational(ptr noundef %bfa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3
  %call = tail call i32 @bfa_ioc_is_operational(ptr noundef %ioc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %iocfc = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4
  %0 = ptrtoint ptr %iocfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocfc, align 8
  %cmp = icmp eq ptr %1, @bfa_iocfc_sm_operational
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bfa_iocfc_set_snsbase(ptr nocapture noundef readonly %bfa, i32 noundef %seg_no, i64 noundef %snsbase_pa) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cfginfo = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 15
  %0 = ptrtoint ptr %cfginfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfginfo, align 8
  %sense_buf_len = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sense_buf_len to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %sense_buf_len, align 1
  %3 = load ptr, ptr %cfginfo, align 8
  %arrayidx = getelementptr %struct.bfi_iocfc_cfg_s, ptr %3, i32 0, i32 17, i32 %seg_no
  %conv.i = trunc i64 %snsbase_pa to i32
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %conv.i, ptr %arrayidx, align 1
  %shr.i = lshr i64 %snsbase_pa, 32
  %conv1.i = trunc i64 %shr.i to i32
  %addr_hi.i = getelementptr inbounds %struct.anon.4, ptr %arrayidx, i32 0, i32 1
  %5 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %conv1.i, ptr %addr_hi.i, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_iocfc_enable(ptr noundef %bfa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %plog = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 1
  %0 = ptrtoint ptr %plog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plog, align 4
  tail call void @bfa_plog_str(ptr noundef %1, i32 noundef 3, i32 noundef 19, i16 noundef zeroext 0, ptr noundef nonnull @.str.1) #10
  %iocfc = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4
  %cb_reqd = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 12
  %2 = ptrtoint ptr %cb_reqd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %cb_reqd, align 4
  %3 = ptrtoint ptr %iocfc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iocfc, align 8
  tail call void %4(ptr noundef %iocfc, i32 noundef 4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_plog_str(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_iocfc_disable(ptr noundef %bfa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %plog = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 1
  %0 = ptrtoint ptr %plog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plog, align 4
  tail call void @bfa_plog_str(ptr noundef %1, i32 noundef 3, i32 noundef 19, i16 noundef zeroext 0, ptr noundef nonnull @.str.2) #10
  %iocfc = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4
  %2 = ptrtoint ptr %iocfc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocfc, align 8
  tail call void %3(ptr noundef %iocfc, i32 noundef 5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioc_is_operational(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_sm_operational(ptr nocapture noundef %iocfc, i32 noundef %event) #0 align 64 {
entry:
  %ts.i28 = alloca %struct.timespec64, align 8
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa = getelementptr inbounds %struct.bfa_iocfc_s, ptr %iocfc, i32 0, i32 1
  %0 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa, align 4
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bfa_trc.exit_crit_edge

entry.__bfa_trc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %entry
  %conv = zext i32 %event to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 1
  %9 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 409, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 3
  %10 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %11 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %12 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %15, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %16 = trunc i64 %13 to i32
  %17 = mul i32 %16, 1000000
  %conv8.i = add i32 %17, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 2
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %19 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %20, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %22)
  %cmp.i = icmp eq i32 %and.i, %22
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %20, 2
  %and17.i = and i32 %add16.i, 4095
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and17.i, ptr %3, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %entry.__bfa_trc.exit_crit_edge
  %24 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %event, label %do.body9 [
    i32 3, label %do.body
    i32 5, label %do.body2
    i32 8, label %do.body6
  ]

do.body:                                          ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_iocfc_sm_dconf_write, ptr %iocfc, align 8
  %26 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bfa, align 4
  call void @bfa_dconf_modexit(ptr noundef %27) #10
  br label %sw.epilog

do.body2:                                         ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfa_iocfc_sm_disabling, ptr %iocfc, align 8
  %29 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bfa, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_s, ptr %30, i32 0, i32 3
  call void @bfa_ioc_disable(ptr noundef %ioc.i) #10
  br label %sw.epilog

do.body6:                                         ; preds = %__bfa_trc.exit
  %31 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @bfa_iocfc_sm_failed, ptr %iocfc, align 8
  %32 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bfa, align 4
  %intr_enabled.i.i = getelementptr inbounds %struct.bfa_s, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %intr_enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %intr_enabled.i.i, align 8
  %hw_isr_mode_set.i.i = getelementptr inbounds %struct.bfa_s, ptr %33, i32 0, i32 4, i32 23, i32 7
  %35 = ptrtoint ptr %hw_isr_mode_set.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_isr_mode_set.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %do.body6.bfa_iocfc_sm_failed_entry.exit_crit_edge, label %if.then.i.i

do.body6.bfa_iocfc_sm_failed_entry.exit_crit_edge: ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_iocfc_sm_failed_entry.exit

if.then.i.i:                                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  call void %36(ptr noundef %33, i32 noundef 0) #10
  br label %bfa_iocfc_sm_failed_entry.exit

bfa_iocfc_sm_failed_entry.exit:                   ; preds = %if.then.i.i, %do.body6.bfa_iocfc_sm_failed_entry.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !96
  call void @arm_heavy_mb() #10
  %intr_mask.i.i = getelementptr inbounds %struct.bfa_s, ptr %33, i32 0, i32 4, i32 22, i32 1
  %37 = ptrtoint ptr %intr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intr_mask.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 -1) #10, !srcloc !88
  %hw_msix_uninstall.i.i = getelementptr inbounds %struct.bfa_s, ptr %33, i32 0, i32 4, i32 23, i32 6
  %39 = ptrtoint ptr %hw_msix_uninstall.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw_msix_uninstall.i.i, align 8
  call void %40(ptr noundef %33) #10
  %41 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bfa, align 4
  call fastcc void @bfa_iocfc_disable_submod(ptr noundef %42) #10
  br label %sw.epilog

do.body9:                                         ; preds = %__bfa_trc.exit
  %43 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bfa, align 4
  %trcmod11 = getelementptr inbounds %struct.bfa_s, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %trcmod11 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %trcmod11, align 8
  %stopped.i29 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %stopped.i29 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stopped.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i30 = icmp eq i32 %48, 0
  br i1 %tobool.not.i30, label %if.end.i42, label %do.body9.__bfa_trc.exit46_crit_edge

do.body9.__bfa_trc.exit46_crit_edge:              ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit46

if.end.i42:                                       ; preds = %do.body9
  %or = or i32 %event, -559087616
  %conv12 = zext i32 %or to i64
  %tail1.i31 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %46, i32 0, i32 1
  %49 = ptrtoint ptr %tail1.i31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tail1.i31, align 4
  %arrayidx.i32 = getelementptr %struct.bfa_trc_mod_s, ptr %46, i32 0, i32 6, i32 %50
  %51 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1025, ptr %arrayidx.i32, align 8
  %line5.i33 = getelementptr %struct.bfa_trc_mod_s, ptr %46, i32 0, i32 6, i32 %50, i32 1
  %52 = ptrtoint ptr %line5.i33 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 422, ptr %line5.i33, align 2
  %data6.i34 = getelementptr %struct.bfa_trc_mod_s, ptr %46, i32 0, i32 6, i32 %50, i32 3
  %53 = ptrtoint ptr %data6.i34 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv12, ptr %data6.i34, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i28) #10
  %54 = call ptr @memset(ptr %ts.i28, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i28) #10
  %55 = ptrtoint ptr %ts.i28 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %ts.i28, align 8
  %tv_nsec.i35 = getelementptr inbounds %struct.timespec64, ptr %ts.i28, i32 0, i32 1
  %57 = ptrtoint ptr %tv_nsec.i35 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tv_nsec.i35, align 8
  %div.i36 = sdiv i32 %58, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i28) #10
  %59 = trunc i64 %56 to i32
  %60 = mul i32 %59, 1000000
  %conv8.i37 = add i32 %60, %div.i36
  %timestamp.i38 = getelementptr %struct.bfa_trc_mod_s, ptr %46, i32 0, i32 6, i32 %50, i32 2
  %61 = ptrtoint ptr %timestamp.i38 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv8.i37, ptr %timestamp.i38, align 4
  %62 = ptrtoint ptr %tail1.i31 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tail1.i31, align 4
  %add10.i39 = add i32 %63, 1
  %and.i40 = and i32 %add10.i39, 4095
  store i32 %and.i40, ptr %tail1.i31, align 4
  %64 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %46, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i40, i32 %65)
  %cmp.i41 = icmp eq i32 %and.i40, %65
  br i1 %cmp.i41, label %if.then14.i45, label %if.end.i42.__bfa_trc.exit46_crit_edge

if.end.i42.__bfa_trc.exit46_crit_edge:            ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit46

if.then14.i45:                                    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i43 = add i32 %63, 2
  %and17.i44 = and i32 %add16.i43, 4095
  %66 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and17.i44, ptr %46, align 8
  br label %__bfa_trc.exit46

__bfa_trc.exit46:                                 ; preds = %if.then14.i45, %if.end.i42.__bfa_trc.exit46_crit_edge, %do.body9.__bfa_trc.exit46_crit_edge
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 422, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %__bfa_trc.exit46, %bfa_iocfc_sm_failed_entry.exit, %do.body2, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_iocfc_get_bootwwns(ptr nocapture noundef readonly %bfa, ptr nocapture noundef writeonly %nwwns, ptr nocapture noundef writeonly %wwns) local_unnamed_addr #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cfgrsp2 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 17
  %0 = ptrtoint ptr %cfgrsp2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgrsp2, align 8
  %boot_enabled = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %boot_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %boot_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %nbluns = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, ptr %1, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %nbluns to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nbluns, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 2
  %6 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.__bfa_trc.exit_crit_edge

if.then.__bfa_trc.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %if.then
  %conv8 = zext i8 %5 to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %7, i32 0, i32 6, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %7, i32 0, i32 6, i32 %11, i32 1
  %13 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1702, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %7, i32 0, i32 6, i32 %11, i32 3
  %14 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv8, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %15 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %16 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %18 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %19, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %20 = trunc i64 %17 to i32
  %21 = mul i32 %20, 1000000
  %conv8.i = add i32 %21, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %7, i32 0, i32 6, i32 %11, i32 2
  %22 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %23 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %24, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %26)
  %cmp.i = icmp eq i32 %and.i, %26
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %24, 2
  %and17.i = and i32 %add16.i, 4095
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and17.i, ptr %7, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %if.then.__bfa_trc.exit_crit_edge
  %28 = ptrtoint ptr %nbluns to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nbluns, align 1
  %30 = ptrtoint ptr %nwwns to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %nwwns, align 1
  %31 = load i8, ptr %nbluns, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp35.not = icmp eq i8 %31, 0
  br i1 %cmp35.not, label %__bfa_trc.exit.cleanup_crit_edge, label %__bfa_trc.exit.for.body_crit_edge

__bfa_trc.exit.for.body_crit_edge:                ; preds = %__bfa_trc.exit
  br label %for.body

__bfa_trc.exit.cleanup_crit_edge:                 ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %__bfa_trc.exit.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %__bfa_trc.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bfi_iocfc_cfgrsp_s, ptr %1, i32 0, i32 3, i32 9, i32 %i.036
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %arrayidx, align 1
  %arrayidx16 = getelementptr i64, ptr %wwns, i32 %i.036
  %34 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %arrayidx16, align 8
  %inc = add nuw nsw i32 %i.036, 1
  %35 = ptrtoint ptr %nbluns to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nbluns, align 1
  %conv13 = zext i8 %36 to i32
  %cmp = icmp ult i32 %inc, %conv13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %bootwwns = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, ptr %1, i32 0, i32 2
  %nwwns17 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, ptr %1, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %nwwns17 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nwwns17, align 1
  %39 = ptrtoint ptr %nwwns to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %nwwns, align 1
  %40 = call ptr @memcpy(ptr %wwns, ptr %bootwwns, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge, %__bfa_trc.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bfa_iocfc_get_pbc_vports(ptr nocapture noundef readonly %bfa, ptr nocapture noundef writeonly %pbc_vport) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cfgrsp2 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 17
  %0 = ptrtoint ptr %cfgrsp2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgrsp2, align 8
  %vport = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, ptr %1, i32 0, i32 3, i32 10
  %2 = call ptr @memcpy(ptr %pbc_vport, ptr %vport, i32 256)
  %nvports = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, ptr %1, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %nvports to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nvports, align 1
  %conv = zext i8 %4 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cfg_get_meminfo(ptr noundef %cfg, ptr noundef %meminfo, ptr noundef %bfa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %cfg, null
  %cmp16 = icmp eq ptr %meminfo, null
  %spec.select = or i1 %cmp, %cmp16
  br i1 %spec.select, label %do.end, label %entry.if.end_crit_edge, !prof !84

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1769, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %fru_dma15 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 16, i32 17
  %phy_dma13 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 14, i32 18
  %diag_dma11 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 13, i32 18
  %flash_dma9 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 12, i32 19
  %sfp_dma7 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 11, i32 20
  %cee_dma5 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 10, i32 18
  %ablk_dma3 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 9, i32 9
  %port_dma1 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 8, i32 20
  %0 = getelementptr inbounds i8, ptr %meminfo, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = ptrtoint ptr %meminfo to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %meminfo, ptr %meminfo, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %meminfo, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %meminfo, ptr %prev.i, align 4
  %kva_info = getelementptr inbounds %struct.bfa_meminfo_s, ptr %meminfo, i32 0, i32 1
  %4 = ptrtoint ptr %kva_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %kva_info, ptr %kva_info, align 4
  %prev.i98 = getelementptr inbounds %struct.bfa_meminfo_s, ptr %meminfo, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %kva_info, ptr %prev.i98, align 4
  tail call void @bfa_iocfc_meminfo(ptr noundef %cfg, ptr noundef %meminfo, ptr noundef %bfa)
  tail call void @bfa_sgpg_meminfo(ptr noundef %cfg, ptr noundef %meminfo, ptr noundef %bfa) #10
  tail call void @bfa_fcport_meminfo(ptr noundef %cfg, ptr noundef %meminfo, ptr noundef %bfa) #10
  tail call void @bfa_fcxp_meminfo(ptr noundef %cfg, ptr noundef %meminfo, ptr noundef %bfa) #10
  tail call void @bfa_lps_meminfo(ptr noundef %cfg, ptr noundef %meminfo, ptr noundef %bfa) #10
  tail call void @bfa_uf_meminfo(ptr noundef %cfg, ptr noundef %meminfo, ptr noundef %bfa) #10
  tail call void @bfa_rport_meminfo(ptr noundef %cfg, ptr noundef %meminfo, ptr noundef %bfa) #10
  tail call void @bfa_fcp_meminfo(ptr noundef %cfg, ptr noundef %meminfo, ptr noundef %bfa) #10
  tail call void @bfa_dconf_meminfo(ptr noundef %cfg, ptr noundef %meminfo, ptr noundef %bfa) #10
  %call = tail call i32 @bfa_port_meminfo() #10
  %mem_len.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 8, i32 20, i32 1
  %6 = ptrtoint ptr %mem_len.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %mem_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not.i = icmp eq i32 %call, 0
  br i1 %tobool.not.i, label %if.end.bfa_mem_dma_setup.exit_crit_edge, label %if.then.i

if.end.bfa_mem_dma_setup.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit

if.then.i:                                        ; preds = %if.end
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %port_dma1, ptr noundef %8, ptr noundef %meminfo) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.bfa_mem_dma_setup.exit_crit_edge

if.then.i.bfa_mem_dma_setup.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %port_dma1, ptr %prev.i, align 4
  %10 = ptrtoint ptr %port_dma1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %meminfo, ptr %port_dma1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 8, i32 20, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %port_dma1, ptr %8, align 4
  br label %bfa_mem_dma_setup.exit

bfa_mem_dma_setup.exit:                           ; preds = %if.end.i.i.i, %if.then.i.bfa_mem_dma_setup.exit_crit_edge, %if.end.bfa_mem_dma_setup.exit_crit_edge
  %call36 = tail call i32 @bfa_ablk_meminfo() #10
  %mem_len.i99 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 9, i32 9, i32 1
  %13 = ptrtoint ptr %mem_len.i99 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call36, ptr %mem_len.i99, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool.not.i100 = icmp eq i32 %call36, 0
  br i1 %tobool.not.i100, label %bfa_mem_dma_setup.exit.bfa_mem_dma_setup.exit106_crit_edge, label %if.then.i103

bfa_mem_dma_setup.exit.bfa_mem_dma_setup.exit106_crit_edge: ; preds = %bfa_mem_dma_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit106

if.then.i103:                                     ; preds = %bfa_mem_dma_setup.exit
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i.i102 = tail call zeroext i1 @__list_add_valid(ptr noundef %ablk_dma3, ptr noundef %15, ptr noundef %meminfo) #10
  br i1 %call.i.i.i102, label %if.end.i.i.i105, label %if.then.i103.bfa_mem_dma_setup.exit106_crit_edge

if.then.i103.bfa_mem_dma_setup.exit106_crit_edge: ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit106

if.end.i.i.i105:                                  ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ablk_dma3, ptr %prev.i, align 4
  %17 = ptrtoint ptr %ablk_dma3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %meminfo, ptr %ablk_dma3, align 4
  %prev3.i.i.i104 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 9, i32 9, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i.i104, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %ablk_dma3, ptr %15, align 4
  br label %bfa_mem_dma_setup.exit106

bfa_mem_dma_setup.exit106:                        ; preds = %if.end.i.i.i105, %if.then.i103.bfa_mem_dma_setup.exit106_crit_edge, %bfa_mem_dma_setup.exit.bfa_mem_dma_setup.exit106_crit_edge
  %call37 = tail call i32 @bfa_cee_meminfo() #10
  %mem_len.i107 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 10, i32 18, i32 1
  %20 = ptrtoint ptr %mem_len.i107 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call37, ptr %mem_len.i107, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool.not.i108 = icmp eq i32 %call37, 0
  br i1 %tobool.not.i108, label %bfa_mem_dma_setup.exit106.bfa_mem_dma_setup.exit114_crit_edge, label %if.then.i111

bfa_mem_dma_setup.exit106.bfa_mem_dma_setup.exit114_crit_edge: ; preds = %bfa_mem_dma_setup.exit106
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit114

if.then.i111:                                     ; preds = %bfa_mem_dma_setup.exit106
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %call.i.i.i110 = tail call zeroext i1 @__list_add_valid(ptr noundef %cee_dma5, ptr noundef %22, ptr noundef %meminfo) #10
  br i1 %call.i.i.i110, label %if.end.i.i.i113, label %if.then.i111.bfa_mem_dma_setup.exit114_crit_edge

if.then.i111.bfa_mem_dma_setup.exit114_crit_edge: ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit114

if.end.i.i.i113:                                  ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cee_dma5, ptr %prev.i, align 4
  %24 = ptrtoint ptr %cee_dma5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %meminfo, ptr %cee_dma5, align 4
  %prev3.i.i.i112 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 10, i32 18, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i112 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i112, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %cee_dma5, ptr %22, align 4
  br label %bfa_mem_dma_setup.exit114

bfa_mem_dma_setup.exit114:                        ; preds = %if.end.i.i.i113, %if.then.i111.bfa_mem_dma_setup.exit114_crit_edge, %bfa_mem_dma_setup.exit106.bfa_mem_dma_setup.exit114_crit_edge
  %call38 = tail call i32 @bfa_sfp_meminfo() #10
  %mem_len.i115 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 11, i32 20, i32 1
  %27 = ptrtoint ptr %mem_len.i115 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call38, ptr %mem_len.i115, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool.not.i116 = icmp eq i32 %call38, 0
  br i1 %tobool.not.i116, label %bfa_mem_dma_setup.exit114.bfa_mem_dma_setup.exit122_crit_edge, label %if.then.i119

bfa_mem_dma_setup.exit114.bfa_mem_dma_setup.exit122_crit_edge: ; preds = %bfa_mem_dma_setup.exit114
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit122

if.then.i119:                                     ; preds = %bfa_mem_dma_setup.exit114
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i, align 4
  %call.i.i.i118 = tail call zeroext i1 @__list_add_valid(ptr noundef %sfp_dma7, ptr noundef %29, ptr noundef %meminfo) #10
  br i1 %call.i.i.i118, label %if.end.i.i.i121, label %if.then.i119.bfa_mem_dma_setup.exit122_crit_edge

if.then.i119.bfa_mem_dma_setup.exit122_crit_edge: ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit122

if.end.i.i.i121:                                  ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %sfp_dma7, ptr %prev.i, align 4
  %31 = ptrtoint ptr %sfp_dma7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %meminfo, ptr %sfp_dma7, align 4
  %prev3.i.i.i120 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 11, i32 20, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i120, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %sfp_dma7, ptr %29, align 4
  br label %bfa_mem_dma_setup.exit122

bfa_mem_dma_setup.exit122:                        ; preds = %if.end.i.i.i121, %if.then.i119.bfa_mem_dma_setup.exit122_crit_edge, %bfa_mem_dma_setup.exit114.bfa_mem_dma_setup.exit122_crit_edge
  %min_cfg = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 6
  %34 = ptrtoint ptr %min_cfg to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %min_cfg, align 4
  %conv = zext i16 %35 to i32
  %call39 = tail call i32 @bfa_flash_meminfo(i32 noundef %conv) #10
  %mem_len.i123 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 12, i32 19, i32 1
  %36 = ptrtoint ptr %mem_len.i123 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call39, ptr %mem_len.i123, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool.not.i124 = icmp eq i32 %call39, 0
  br i1 %tobool.not.i124, label %bfa_mem_dma_setup.exit122.bfa_mem_dma_setup.exit130_crit_edge, label %if.then.i127

bfa_mem_dma_setup.exit122.bfa_mem_dma_setup.exit130_crit_edge: ; preds = %bfa_mem_dma_setup.exit122
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit130

if.then.i127:                                     ; preds = %bfa_mem_dma_setup.exit122
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i, align 4
  %call.i.i.i126 = tail call zeroext i1 @__list_add_valid(ptr noundef %flash_dma9, ptr noundef %38, ptr noundef %meminfo) #10
  br i1 %call.i.i.i126, label %if.end.i.i.i129, label %if.then.i127.bfa_mem_dma_setup.exit130_crit_edge

if.then.i127.bfa_mem_dma_setup.exit130_crit_edge: ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit130

if.end.i.i.i129:                                  ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %flash_dma9, ptr %prev.i, align 4
  %40 = ptrtoint ptr %flash_dma9 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %meminfo, ptr %flash_dma9, align 4
  %prev3.i.i.i128 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 12, i32 19, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i128, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %flash_dma9, ptr %38, align 4
  br label %bfa_mem_dma_setup.exit130

bfa_mem_dma_setup.exit130:                        ; preds = %if.end.i.i.i129, %if.then.i127.bfa_mem_dma_setup.exit130_crit_edge, %bfa_mem_dma_setup.exit122.bfa_mem_dma_setup.exit130_crit_edge
  %call40 = tail call i32 @bfa_diag_meminfo() #10
  %mem_len.i131 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 13, i32 18, i32 1
  %43 = ptrtoint ptr %mem_len.i131 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call40, ptr %mem_len.i131, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool.not.i132 = icmp eq i32 %call40, 0
  br i1 %tobool.not.i132, label %bfa_mem_dma_setup.exit130.bfa_mem_dma_setup.exit138_crit_edge, label %if.then.i135

bfa_mem_dma_setup.exit130.bfa_mem_dma_setup.exit138_crit_edge: ; preds = %bfa_mem_dma_setup.exit130
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit138

if.then.i135:                                     ; preds = %bfa_mem_dma_setup.exit130
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i, align 4
  %call.i.i.i134 = tail call zeroext i1 @__list_add_valid(ptr noundef %diag_dma11, ptr noundef %45, ptr noundef %meminfo) #10
  br i1 %call.i.i.i134, label %if.end.i.i.i137, label %if.then.i135.bfa_mem_dma_setup.exit138_crit_edge

if.then.i135.bfa_mem_dma_setup.exit138_crit_edge: ; preds = %if.then.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit138

if.end.i.i.i137:                                  ; preds = %if.then.i135
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %diag_dma11, ptr %prev.i, align 4
  %47 = ptrtoint ptr %diag_dma11 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %meminfo, ptr %diag_dma11, align 4
  %prev3.i.i.i136 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 13, i32 18, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i136 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i.i136, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %diag_dma11, ptr %45, align 4
  br label %bfa_mem_dma_setup.exit138

bfa_mem_dma_setup.exit138:                        ; preds = %if.end.i.i.i137, %if.then.i135.bfa_mem_dma_setup.exit138_crit_edge, %bfa_mem_dma_setup.exit130.bfa_mem_dma_setup.exit138_crit_edge
  %50 = ptrtoint ptr %min_cfg to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %min_cfg, align 4
  %conv43 = zext i16 %51 to i32
  %call44 = tail call i32 @bfa_phy_meminfo(i32 noundef %conv43) #10
  %mem_len.i139 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 14, i32 18, i32 1
  %52 = ptrtoint ptr %mem_len.i139 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call44, ptr %mem_len.i139, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool.not.i140 = icmp eq i32 %call44, 0
  br i1 %tobool.not.i140, label %bfa_mem_dma_setup.exit138.bfa_mem_dma_setup.exit146_crit_edge, label %if.then.i143

bfa_mem_dma_setup.exit138.bfa_mem_dma_setup.exit146_crit_edge: ; preds = %bfa_mem_dma_setup.exit138
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit146

if.then.i143:                                     ; preds = %bfa_mem_dma_setup.exit138
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i, align 4
  %call.i.i.i142 = tail call zeroext i1 @__list_add_valid(ptr noundef %phy_dma13, ptr noundef %54, ptr noundef %meminfo) #10
  br i1 %call.i.i.i142, label %if.end.i.i.i145, label %if.then.i143.bfa_mem_dma_setup.exit146_crit_edge

if.then.i143.bfa_mem_dma_setup.exit146_crit_edge: ; preds = %if.then.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit146

if.end.i.i.i145:                                  ; preds = %if.then.i143
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %phy_dma13, ptr %prev.i, align 4
  %56 = ptrtoint ptr %phy_dma13 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %meminfo, ptr %phy_dma13, align 4
  %prev3.i.i.i144 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 14, i32 18, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i144 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i144, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %phy_dma13, ptr %54, align 4
  br label %bfa_mem_dma_setup.exit146

bfa_mem_dma_setup.exit146:                        ; preds = %if.end.i.i.i145, %if.then.i143.bfa_mem_dma_setup.exit146_crit_edge, %bfa_mem_dma_setup.exit138.bfa_mem_dma_setup.exit146_crit_edge
  %59 = ptrtoint ptr %min_cfg to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %min_cfg, align 4
  %conv47 = zext i16 %60 to i32
  %call48 = tail call i32 @bfa_fru_meminfo(i32 noundef %conv47) #10
  %mem_len.i147 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 16, i32 17, i32 1
  %61 = ptrtoint ptr %mem_len.i147 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call48, ptr %mem_len.i147, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool.not.i148 = icmp eq i32 %call48, 0
  br i1 %tobool.not.i148, label %bfa_mem_dma_setup.exit146.bfa_mem_dma_setup.exit154_crit_edge, label %if.then.i151

bfa_mem_dma_setup.exit146.bfa_mem_dma_setup.exit154_crit_edge: ; preds = %bfa_mem_dma_setup.exit146
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit154

if.then.i151:                                     ; preds = %bfa_mem_dma_setup.exit146
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i, align 4
  %call.i.i.i150 = tail call zeroext i1 @__list_add_valid(ptr noundef %fru_dma15, ptr noundef %63, ptr noundef %meminfo) #10
  br i1 %call.i.i.i150, label %if.end.i.i.i153, label %if.then.i151.bfa_mem_dma_setup.exit154_crit_edge

if.then.i151.bfa_mem_dma_setup.exit154_crit_edge: ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_mem_dma_setup.exit154

if.end.i.i.i153:                                  ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %fru_dma15, ptr %prev.i, align 4
  %65 = ptrtoint ptr %fru_dma15 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %meminfo, ptr %fru_dma15, align 4
  %prev3.i.i.i152 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 16, i32 17, i32 0, i32 1
  %66 = ptrtoint ptr %prev3.i.i.i152 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev3.i.i.i152, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %fru_dma15, ptr %63, align 4
  br label %bfa_mem_dma_setup.exit154

bfa_mem_dma_setup.exit154:                        ; preds = %if.end.i.i.i153, %if.then.i151.bfa_mem_dma_setup.exit154_crit_edge, %bfa_mem_dma_setup.exit146.bfa_mem_dma_setup.exit154_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_sgpg_meminfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcport_meminfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcxp_meminfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_lps_meminfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_uf_meminfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_rport_meminfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcp_meminfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_dconf_meminfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_port_meminfo() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ablk_meminfo() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_cee_meminfo() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_sfp_meminfo() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_flash_meminfo(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_diag_meminfo() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_phy_meminfo(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fru_meminfo(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_attach(ptr noundef %bfa, ptr noundef %bfad, ptr noundef %cfg, ptr noundef %meminfo, ptr noundef %pcidev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 10
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fcs, align 4
  %cmp = icmp eq ptr %cfg, null
  %cmp1 = icmp eq ptr %meminfo, null
  %spec.select = or i1 %cmp, %cmp1
  br i1 %spec.select, label %do.end, label %entry.if.end_crit_edge, !prof !84

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1837, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %kva = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %meminfo, i32 0, i32 2
  %1 = ptrtoint ptr %kva to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %kva, align 4
  %kva_curp = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %meminfo, i32 0, i32 4
  %3 = ptrtoint ptr %kva_curp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %kva_curp, align 8
  %dma = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %meminfo, i32 0, i32 3
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dma, align 8
  %dma_curp = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %meminfo, i32 0, i32 5
  %6 = ptrtoint ptr %dma_curp to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %dma_curp, align 8
  %kva_info21 = getelementptr inbounds %struct.bfa_meminfo_s, ptr %meminfo, i32 0, i32 1
  %kva22 = getelementptr inbounds %struct.bfa_meminfo_s, ptr %meminfo, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %kva22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kva22, align 4
  %kva_curp23 = getelementptr inbounds %struct.bfa_meminfo_s, ptr %meminfo, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %kva_curp23 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %kva_curp23, align 4
  %10 = ptrtoint ptr %meminfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %dm_qe.0149 = load ptr, ptr %meminfo, align 4
  %cmp.i.not150 = icmp eq ptr %dm_qe.0149, %meminfo
  br i1 %cmp.i.not150, label %if.end.for.cond35.preheader_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.cond35.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %for.body.for.cond35.preheader_crit_edge, %if.end.for.cond35.preheader_crit_edge
  %11 = ptrtoint ptr %kva_info21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %km_qe.0152 = load ptr, ptr %kva_info21, align 4
  %cmp.i120.not153 = icmp eq ptr %km_qe.0152, %kva_info21
  br i1 %cmp.i120.not153, label %for.cond35.preheader.for.end46_crit_edge, label %for.cond35.preheader.for.body41_crit_edge

for.cond35.preheader.for.body41_crit_edge:        ; preds = %for.cond35.preheader
  br label %for.body41

for.cond35.preheader.for.end46_crit_edge:         ; preds = %for.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end46

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %dm_qe.0151 = phi ptr [ %dm_qe.0, %for.body.for.body_crit_edge ], [ %dm_qe.0149, %if.end.for.body_crit_edge ]
  %kva28 = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.0151, i32 0, i32 2
  %12 = ptrtoint ptr %kva28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kva28, align 4
  %kva_curp29 = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.0151, i32 0, i32 4
  %14 = ptrtoint ptr %kva_curp29 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %kva_curp29, align 8
  %dma30 = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.0151, i32 0, i32 3
  %15 = ptrtoint ptr %dma30 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %dma30, align 8
  %dma_curp31 = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.0151, i32 0, i32 5
  %17 = ptrtoint ptr %dma_curp31 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %dma_curp31, align 8
  %18 = ptrtoint ptr %dm_qe.0151 to i32
  call void @__asan_load4_noabort(i32 %18)
  %dm_qe.0 = load ptr, ptr %dm_qe.0151, align 4
  %cmp.i.not = icmp eq ptr %dm_qe.0, %meminfo
  br i1 %cmp.i.not, label %for.body.for.cond35.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.cond35.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond35.preheader

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.cond35.preheader.for.body41_crit_edge
  %km_qe.0154 = phi ptr [ %km_qe.0, %for.body41.for.body41_crit_edge ], [ %km_qe.0152, %for.cond35.preheader.for.body41_crit_edge ]
  %kva42 = getelementptr inbounds %struct.bfa_mem_kva_s, ptr %km_qe.0154, i32 0, i32 2
  %19 = ptrtoint ptr %kva42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %kva42, align 4
  %kva_curp43 = getelementptr inbounds %struct.bfa_mem_kva_s, ptr %km_qe.0154, i32 0, i32 3
  %21 = ptrtoint ptr %kva_curp43 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %kva_curp43, align 4
  %22 = ptrtoint ptr %km_qe.0154 to i32
  call void @__asan_load4_noabort(i32 %22)
  %km_qe.0 = load ptr, ptr %km_qe.0154, align 4
  %cmp.i120.not = icmp eq ptr %km_qe.0, %kva_info21
  br i1 %cmp.i120.not, label %for.body41.for.end46_crit_edge, label %for.body41.for.body41_crit_edge

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body41

for.body41.for.end46_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end46

for.end46:                                        ; preds = %for.body41.for.end46_crit_edge, %for.cond35.preheader.for.end46_crit_edge
  tail call void @bfa_iocfc_attach(ptr noundef %bfa, ptr noundef %bfad, ptr noundef %cfg, ptr noundef %pcidev)
  tail call void @bfa_fcdiag_attach(ptr noundef %bfa, ptr noundef %bfad, ptr noundef %cfg, ptr noundef %pcidev) #10
  tail call void @bfa_sgpg_attach(ptr noundef %bfa, ptr noundef %bfad, ptr noundef %cfg, ptr noundef %pcidev) #10
  tail call void @bfa_fcport_attach(ptr noundef %bfa, ptr noundef %bfad, ptr noundef %cfg, ptr noundef %pcidev) #10
  tail call void @bfa_fcxp_attach(ptr noundef %bfa, ptr noundef %bfad, ptr noundef %cfg, ptr noundef %pcidev) #10
  tail call void @bfa_lps_attach(ptr noundef %bfa, ptr noundef %bfad, ptr noundef %cfg, ptr noundef %pcidev) #10
  tail call void @bfa_uf_attach(ptr noundef %bfa, ptr noundef %bfad, ptr noundef %cfg, ptr noundef %pcidev) #10
  tail call void @bfa_rport_attach(ptr noundef %bfa, ptr noundef %bfad, ptr noundef %cfg, ptr noundef %pcidev) #10
  tail call void @bfa_fcp_attach(ptr noundef %bfa, ptr noundef %bfad, ptr noundef %cfg, ptr noundef %pcidev) #10
  tail call void @bfa_dconf_attach(ptr noundef %bfa, ptr noundef %bfad, ptr noundef %cfg) #10
  %port1.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 8
  %ioc.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3
  %trcmod.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 2
  %23 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trcmod.i, align 8
  tail call void @bfa_port_attach(ptr noundef %port1.i, ptr noundef %ioc.i, ptr noundef %bfa, ptr noundef %24) #10
  %kva_curp.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 8, i32 20, i32 4
  %25 = ptrtoint ptr %kva_curp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %kva_curp.i, align 8
  %dma_curp.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 8, i32 20, i32 5
  %27 = ptrtoint ptr %dma_curp.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dma_curp.i, align 8
  tail call void @bfa_port_mem_claim(ptr noundef %port1.i, ptr noundef %26, i64 noundef %28) #10
  %ablk1.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 9
  tail call void @bfa_ablk_attach(ptr noundef %ablk1.i, ptr noundef %ioc.i) #10
  %kva_curp.i123 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 9, i32 9, i32 4
  %29 = ptrtoint ptr %kva_curp.i123 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %kva_curp.i123, align 8
  %dma_curp.i124 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 9, i32 9, i32 5
  %31 = ptrtoint ptr %dma_curp.i124 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %dma_curp.i124, align 8
  tail call void @bfa_ablk_memclaim(ptr noundef %ablk1.i, ptr noundef %30, i64 noundef %32) #10
  %cee1.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 10
  %33 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %trcmod.i, align 8
  %trcmod5.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 10, i32 9
  %35 = ptrtoint ptr %trcmod5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %trcmod5.i, align 4
  tail call void @bfa_cee_attach(ptr noundef %cee1.i, ptr noundef %ioc.i, ptr noundef %bfa) #10
  %kva_curp.i127 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 10, i32 18, i32 4
  %36 = ptrtoint ptr %kva_curp.i127 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %kva_curp.i127, align 8
  %dma_curp.i128 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 10, i32 18, i32 5
  %38 = ptrtoint ptr %dma_curp.i128 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %dma_curp.i128, align 8
  tail call void @bfa_cee_mem_claim(ptr noundef %cee1.i, ptr noundef %37, i64 noundef %39) #10
  %sfp1.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 11
  %40 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %trcmod.i, align 8
  tail call void @bfa_sfp_attach(ptr noundef %sfp1.i, ptr noundef %ioc.i, ptr noundef %bfa, ptr noundef %41) #10
  %kva_curp.i131 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 11, i32 20, i32 4
  %42 = ptrtoint ptr %kva_curp.i131 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %kva_curp.i131, align 8
  %dma_curp.i132 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 11, i32 20, i32 5
  %44 = ptrtoint ptr %dma_curp.i132 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %dma_curp.i132, align 8
  tail call void @bfa_sfp_memclaim(ptr noundef %sfp1.i, ptr noundef %43, i64 noundef %45) #10
  %min_cfg = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 6
  %46 = ptrtoint ptr %min_cfg to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %min_cfg, align 4
  %conv = zext i16 %47 to i32
  %flash1.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 12
  %48 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %trcmod.i, align 8
  tail call void @bfa_flash_attach(ptr noundef %flash1.i, ptr noundef %ioc.i, ptr noundef %bfa, ptr noundef %49, i32 noundef %conv) #10
  %kva_curp.i135 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 12, i32 19, i32 4
  %50 = ptrtoint ptr %kva_curp.i135 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %kva_curp.i135, align 8
  %dma_curp.i136 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 12, i32 19, i32 5
  %52 = ptrtoint ptr %dma_curp.i136 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %dma_curp.i136, align 8
  tail call void @bfa_flash_memclaim(ptr noundef %flash1.i, ptr noundef %51, i64 noundef %53, i32 noundef %conv) #10
  %diag_mod.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 13
  %54 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %trcmod.i, align 8
  tail call void @bfa_diag_attach(ptr noundef %diag_mod.i, ptr noundef %ioc.i, ptr noundef %bfa, ptr noundef nonnull @bfa_fcport_beacon, ptr noundef %55) #10
  %kva_curp.i139 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 13, i32 18, i32 4
  %56 = ptrtoint ptr %kva_curp.i139 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %kva_curp.i139, align 8
  %dma_curp.i140 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 13, i32 18, i32 5
  %58 = ptrtoint ptr %dma_curp.i140 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %dma_curp.i140, align 8
  tail call void @bfa_diag_memclaim(ptr noundef %diag_mod.i, ptr noundef %57, i64 noundef %59) #10
  %60 = ptrtoint ptr %min_cfg to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %min_cfg, align 4
  %conv49 = zext i16 %61 to i32
  %phy1.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 14
  %62 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %trcmod.i, align 8
  tail call void @bfa_phy_attach(ptr noundef %phy1.i, ptr noundef %ioc.i, ptr noundef %bfa, ptr noundef %63, i32 noundef %conv49) #10
  %kva_curp.i143 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 14, i32 18, i32 4
  %64 = ptrtoint ptr %kva_curp.i143 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %kva_curp.i143, align 8
  %dma_curp.i144 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 14, i32 18, i32 5
  %66 = ptrtoint ptr %dma_curp.i144 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %dma_curp.i144, align 8
  tail call void @bfa_phy_memclaim(ptr noundef %phy1.i, ptr noundef %65, i64 noundef %67, i32 noundef %conv49) #10
  %68 = ptrtoint ptr %min_cfg to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %min_cfg, align 4
  %conv52 = zext i16 %69 to i32
  %fru1.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 16
  %70 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %trcmod.i, align 8
  tail call void @bfa_fru_attach(ptr noundef %fru1.i, ptr noundef %ioc.i, ptr noundef %bfa, ptr noundef %71, i32 noundef %conv52) #10
  %kva_curp.i147 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 16, i32 17, i32 4
  %72 = ptrtoint ptr %kva_curp.i147 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %kva_curp.i147, align 8
  %dma_curp.i148 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 6, i32 16, i32 17, i32 5
  %74 = ptrtoint ptr %dma_curp.i148 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %dma_curp.i148, align 8
  tail call void @bfa_fru_memclaim(ptr noundef %fru1.i, ptr noundef %73, i64 noundef %75, i32 noundef %conv52) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcdiag_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_sgpg_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcport_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcxp_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_lps_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_uf_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_rport_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcp_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_dconf_attach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_detach(ptr noundef %bfa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3
  tail call void @bfa_ioc_detach(ptr noundef %ioc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_comp_deq(ptr noundef %bfa, ptr noundef %comp_q) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %comp_q to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %comp_q, ptr %comp_q, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %comp_q, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %comp_q, ptr %prev.i, align 4
  %comp_q1 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 7
  %2 = ptrtoint ptr %comp_q1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %comp_q1, align 4
  %cmp.i.not.i = icmp eq ptr %3, %comp_q1
  br i1 %cmp.i.not.i, label %entry.list_splice_tail_init.exit_crit_edge, label %if.then.i

entry.list_splice_tail_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev2.i.i = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %comp_q, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %comp_q to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %comp_q, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %comp_q, ptr %5, align 4
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %prev.i, align 4
  %10 = ptrtoint ptr %comp_q1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %comp_q1, ptr %comp_q1, align 4
  store ptr %comp_q1, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %entry.list_splice_tail_init.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_comp_process(ptr nocapture noundef readnone %bfa, ptr noundef readonly %comp_q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %comp_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp_q, align 4
  %cmp.i.not18 = icmp eq ptr %1, %comp_q
  br i1 %cmp.i.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %qe.019 = phi ptr [ %qen.021, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %qe.019 to i32
  call void @__asan_load4_noabort(i32 %2)
  %qen.021 = load ptr, ptr %qe.019, align 4
  %pre_rmv = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %qe.019, i32 0, i32 3
  %3 = ptrtoint ptr %pre_rmv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pre_rmv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qe.019) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %qe.019, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %qe.019 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qe.019, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %qe.019 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %qe.019, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %qe.019, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cbfn3 = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %qe.019, i32 0, i32 1
  %13 = ptrtoint ptr %cbfn3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cbfn3, align 4
  %cbarg = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %qe.019, i32 0, i32 5
  %15 = ptrtoint ptr %cbarg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cbarg, align 4
  %fw_status = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %qe.019, i32 0, i32 4
  %17 = ptrtoint ptr %fw_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fw_status, align 4
  tail call void %14(ptr noundef %16, i32 noundef %18) #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %cbfn4 = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %qe.019, i32 0, i32 1
  %19 = ptrtoint ptr %cbfn4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cbfn4, align 4
  %cbarg5 = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %qe.019, i32 0, i32 5
  %21 = ptrtoint ptr %cbarg5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cbarg5, align 4
  tail call void %20(ptr noundef %22, i32 noundef 1) #10
  br label %for.inc

for.inc:                                          ; preds = %if.else, %list_del.exit
  %cmp.i.not = icmp eq ptr %qen.021, %comp_q
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_comp_free(ptr nocapture noundef readnone %bfa, ptr noundef %comp_q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %comp_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %comp_q, align 4
  %cmp.i.not43 = icmp eq ptr %1, %comp_q
  br i1 %cmp.i.not43, label %entry.while.end_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.body:                                          ; preds = %if.end25.do.body_crit_edge, %entry.do.body_crit_edge
  %2 = ptrtoint ptr %comp_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %comp_q, align 4
  %cmp.i41.not = icmp eq ptr %3, %comp_q
  br i1 %cmp.i41.not, label %do.body.do.end_crit_edge, label %if.then

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %prev = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %comp_q, ptr %prev, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %comp_q to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %comp_q, align 4
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body.do.end_crit_edge
  %qe.0 = phi ptr [ %3, %if.then ], [ null, %do.body.do.end_crit_edge ]
  %pre_rmv = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %qe.0, i32 0, i32 3
  %9 = ptrtoint ptr %pre_rmv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pre_rmv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %do.end.if.end25_crit_edge, label %do.end19, !prof !98

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1933, i32 noundef 9, ptr noundef null) #10
  br label %if.end25

if.end25:                                         ; preds = %do.end19, %do.end.if.end25_crit_edge
  %cbfn = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %qe.0, i32 0, i32 1
  %11 = ptrtoint ptr %cbfn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cbfn, align 4
  %cbarg = getelementptr inbounds %struct.bfa_cb_qe_s, ptr %qe.0, i32 0, i32 5
  %13 = ptrtoint ptr %cbarg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cbarg, align 4
  tail call void %12(ptr noundef %14, i32 noundef 0) #10
  %15 = ptrtoint ptr %comp_q to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %comp_q, align 4
  %cmp.i.not = icmp eq ptr %16, %comp_q
  br i1 %cmp.i.not, label %if.end25.while.end_crit_edge, label %if.end25.do.body_crit_edge

if.end25.do.body_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end25.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_get_pciids(ptr nocapture noundef writeonly %pciids, ptr nocapture noundef writeonly %npciids) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %npciids to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %npciids, align 4
  %1 = ptrtoint ptr %pciids to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bfa_get_pciids.__pciids, ptr %pciids, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_cfg_get_default(ptr nocapture noundef writeonly %cfg) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %cfg, align 4
  %num_lports = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 1
  %1 = ptrtoint ptr %num_lports to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 256, ptr %num_lports, align 2
  %num_rports = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 2
  %2 = ptrtoint ptr %num_rports to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1024, ptr %num_rports, align 4
  %num_ioim_reqs = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 3
  %3 = ptrtoint ptr %num_ioim_reqs to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2000, ptr %num_ioim_reqs, align 2
  %num_tskim_reqs = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 4
  %4 = ptrtoint ptr %num_tskim_reqs to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 128, ptr %num_tskim_reqs, align 4
  %num_fcxp_reqs = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 6
  %5 = ptrtoint ptr %num_fcxp_reqs to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 64, ptr %num_fcxp_reqs, align 4
  %num_uf_bufs = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 7
  %6 = ptrtoint ptr %num_uf_bufs to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 64, ptr %num_uf_bufs, align 2
  %num_cqs = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 8
  %7 = ptrtoint ptr %num_cqs to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %num_cqs, align 4
  %num_fwtio_reqs = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 5
  %8 = ptrtoint ptr %num_fwtio_reqs to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %num_fwtio_reqs, align 2
  %drvcfg = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1
  %9 = ptrtoint ptr %drvcfg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 256, ptr %drvcfg, align 4
  %num_rspq_elems = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %num_rspq_elems to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 64, ptr %num_rspq_elems, align 2
  %num_sgpgs = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %num_sgpgs to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2048, ptr %num_sgpgs, align 4
  %num_sboot_tgts = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %num_sboot_tgts to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 16, ptr %num_sboot_tgts, align 2
  %num_sboot_luns = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %num_sboot_luns to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 16, ptr %num_sboot_luns, align 4
  %path_tov = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %path_tov to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 30000, ptr %path_tov, align 2
  %ioc_recover = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %ioc_recover to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %ioc_recover, align 2
  %delay_comp = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 11
  %16 = ptrtoint ptr %delay_comp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %delay_comp, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_cfg_get_min(ptr noundef writeonly %cfg) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %cfg, align 4
  %num_lports.i = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 1
  %1 = ptrtoint ptr %num_lports.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 256, ptr %num_lports.i, align 2
  %num_rports.i = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 2
  %num_ioim_reqs.i = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 3
  %num_tskim_reqs.i = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 4
  %num_fcxp_reqs.i = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 6
  %num_uf_bufs.i = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 7
  %num_cqs.i = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 8
  %2 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %num_cqs.i, align 4
  %num_fwtio_reqs.i = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %cfg, i32 0, i32 5
  %drvcfg.i = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1
  %num_rspq_elems.i = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 1
  %num_sgpgs.i = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 2
  %num_sboot_tgts.i = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %num_sboot_tgts.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 16, ptr %num_sboot_tgts.i, align 2
  %num_sboot_luns.i = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %num_sboot_luns.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 16, ptr %num_sboot_luns.i, align 4
  %path_tov.i = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 7
  %5 = ptrtoint ptr %path_tov.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 30000, ptr %path_tov.i, align 2
  %ioc_recover.i = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %ioc_recover.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %ioc_recover.i, align 2
  %delay_comp.i = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 11
  %7 = ptrtoint ptr %delay_comp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %delay_comp.i, align 4
  %8 = ptrtoint ptr %num_ioim_reqs.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 8, ptr %num_ioim_reqs.i, align 2
  %9 = ptrtoint ptr %num_tskim_reqs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4, ptr %num_tskim_reqs.i, align 4
  %10 = ptrtoint ptr %num_fcxp_reqs.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %num_fcxp_reqs.i, align 4
  %11 = ptrtoint ptr %num_uf_bufs.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %num_uf_bufs.i, align 2
  %12 = ptrtoint ptr %num_rports.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4, ptr %num_rports.i, align 4
  %13 = ptrtoint ptr %num_fwtio_reqs.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %num_fwtio_reqs.i, align 2
  %14 = ptrtoint ptr %num_sgpgs.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 16, ptr %num_sgpgs.i, align 4
  %15 = ptrtoint ptr %drvcfg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 4, ptr %drvcfg.i, align 4
  %16 = ptrtoint ptr %num_rspq_elems.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 4, ptr %num_rspq_elems.i, align 2
  %min_cfg = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %cfg, i32 0, i32 1, i32 6
  %17 = ptrtoint ptr %min_cfg to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %min_cfg, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcdiag_intr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcport_isr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_uf_isr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcxp_isr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_lps_isr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_rport_isr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_itn_isr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioim_isr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioim_good_comp_isr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_tskim_isr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioc_get_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwct_reginit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwct_reqq_ack(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwct_rspq_ack(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwct_msix_init(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwct_msix_ctrl_install(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwct_msix_queue_install(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwct_msix_uninstall(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwct_isr_mode_set(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwct_msix_getvecs(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwct_msix_get_rme_range(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwcb_reginit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwcb_rspq_ack(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwcb_msix_init(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwcb_msix_ctrl_install(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwcb_msix_queue_install(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwcb_msix_uninstall(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwcb_isr_mode_set(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwcb_msix_getvecs(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwcb_msix_get_rme_range(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwct2_reginit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_hwct2_rspq_ack(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_mem_claim(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_debug_memclaim(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_sm_initing(ptr nocapture noundef %iocfc, i32 noundef %event) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa = getelementptr inbounds %struct.bfa_iocfc_s, ptr %iocfc, i32 0, i32 1
  %0 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa, align 4
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bfa_trc.exit_crit_edge

entry.__bfa_trc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %entry
  %conv = zext i32 %event to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 1
  %9 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 277, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 3
  %10 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %11 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %12 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %15, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %16 = trunc i64 %13 to i32
  %17 = mul i32 %16, 1000000
  %conv8.i = add i32 %17, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 2
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %19 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %20, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %22)
  %cmp.i = icmp eq i32 %and.i, %22
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %20, 2
  %and17.i = and i32 %add16.i, 4095
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and17.i, ptr %3, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %entry.__bfa_trc.exit_crit_edge
  %24 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %event, label %do.body13 [
    i32 6, label %do.body
    i32 5, label %do.body2
    i32 3, label %do.body6
    i32 8, label %do.body10
  ]

do.body:                                          ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_iocfc_sm_dconf_read, ptr %iocfc, align 8
  %26 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bfa, align 4
  call void @bfa_dconf_modinit(ptr noundef %27) #10
  br label %sw.epilog

do.body2:                                         ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfa_iocfc_sm_disabling, ptr %iocfc, align 8
  %29 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bfa, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_s, ptr %30, i32 0, i32 3
  call void @bfa_ioc_disable(ptr noundef %ioc.i) #10
  br label %sw.epilog

do.body6:                                         ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @bfa_iocfc_sm_stopping, ptr %iocfc, align 8
  %32 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bfa, align 4
  %ioc.i34 = getelementptr inbounds %struct.bfa_s, ptr %33, i32 0, i32 3
  call void @bfa_ioc_disable(ptr noundef %ioc.i34) #10
  br label %sw.epilog

do.body10:                                        ; preds = %__bfa_trc.exit
  %34 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @bfa_iocfc_sm_init_failed, ptr %iocfc, align 8
  %35 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bfa, align 4
  %intr_enabled.i.i = getelementptr inbounds %struct.bfa_s, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %intr_enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %intr_enabled.i.i, align 8
  %hw_isr_mode_set.i.i = getelementptr inbounds %struct.bfa_s, ptr %36, i32 0, i32 4, i32 23, i32 7
  %38 = ptrtoint ptr %hw_isr_mode_set.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_isr_mode_set.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %do.body10.bfa_isr_disable.exit.i_crit_edge, label %if.then.i.i

do.body10.bfa_isr_disable.exit.i_crit_edge:       ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_isr_disable.exit.i

if.then.i.i:                                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  call void %39(ptr noundef %36, i32 noundef 0) #10
  br label %bfa_isr_disable.exit.i

bfa_isr_disable.exit.i:                           ; preds = %if.then.i.i, %do.body10.bfa_isr_disable.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !96
  call void @arm_heavy_mb() #10
  %intr_mask.i.i = getelementptr inbounds %struct.bfa_s, ptr %36, i32 0, i32 4, i32 22, i32 1
  %40 = ptrtoint ptr %intr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %intr_mask.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 -1) #10, !srcloc !88
  %hw_msix_uninstall.i.i = getelementptr inbounds %struct.bfa_s, ptr %36, i32 0, i32 4, i32 23, i32 6
  %42 = ptrtoint ptr %hw_msix_uninstall.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_msix_uninstall.i.i, align 8
  call void %43(ptr noundef %36) #10
  %44 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bfa, align 4
  %op_status.i = getelementptr inbounds %struct.bfa_s, ptr %45, i32 0, i32 4, i32 13
  %46 = ptrtoint ptr %op_status.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %op_status.i, align 8
  %47 = load ptr, ptr %bfa, align 4
  %cbfn.i = getelementptr inbounds %struct.bfa_s, ptr %47, i32 0, i32 4, i32 6, i32 1
  %48 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @bfa_iocfc_init_cb, ptr %cbfn.i, align 4
  %49 = load ptr, ptr %bfa, align 4
  %cbarg.i = getelementptr inbounds %struct.bfa_s, ptr %49, i32 0, i32 4, i32 6, i32 5
  %50 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %cbarg.i, align 4
  %51 = load ptr, ptr %bfa, align 4
  %pre_rmv.i = getelementptr inbounds %struct.bfa_s, ptr %51, i32 0, i32 4, i32 6, i32 3
  %52 = ptrtoint ptr %pre_rmv.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %pre_rmv.i, align 4
  %53 = load ptr, ptr %bfa, align 4
  %init_hcb_qe14.i = getelementptr inbounds %struct.bfa_s, ptr %53, i32 0, i32 4, i32 6
  %comp_q.i = getelementptr inbounds %struct.bfa_s, ptr %53, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.bfa_s, ptr %53, i32 0, i32 7, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %init_hcb_qe14.i, ptr noundef %55, ptr noundef %comp_q.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %bfa_isr_disable.exit.i.sw.epilog_crit_edge

bfa_isr_disable.exit.i.sw.epilog_crit_edge:       ; preds = %bfa_isr_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i.i:                                     ; preds = %bfa_isr_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %init_hcb_qe14.i, ptr %prev.i.i, align 4
  %57 = ptrtoint ptr %init_hcb_qe14.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %comp_q.i, ptr %init_hcb_qe14.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.bfa_s, ptr %53, i32 0, i32 4, i32 6, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %init_hcb_qe14.i, ptr %55, align 4
  br label %sw.epilog

do.body13:                                        ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bfa, align 4
  %trcmod15 = getelementptr inbounds %struct.bfa_s, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %trcmod15 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %trcmod15, align 8
  %or = or i32 %event, -559087616
  %conv16 = zext i32 %or to i64
  call void @__bfa_trc(ptr noundef %63, i32 noundef 1025, i32 noundef 296, i64 noundef %conv16)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 296, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body13, %if.end.i.i.i, %bfa_isr_disable.exit.i.sw.epilog_crit_edge, %do.body6, %do.body2, %do.body
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_sm_dconf_read(ptr nocapture noundef %iocfc, i32 noundef %event) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa = getelementptr inbounds %struct.bfa_iocfc_s, ptr %iocfc, i32 0, i32 1
  %0 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa, align 4
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bfa_trc.exit_crit_edge

entry.__bfa_trc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %entry
  %conv = zext i32 %event to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 1
  %9 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 310, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 3
  %10 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %11 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %12 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %15, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %16 = trunc i64 %13 to i32
  %17 = mul i32 %16, 1000000
  %conv8.i = add i32 %17, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 2
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %19 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %20, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %22)
  %cmp.i = icmp eq i32 %and.i, %22
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %20, 2
  %and17.i = and i32 %add16.i, 4095
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and17.i, ptr %3, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %entry.__bfa_trc.exit_crit_edge
  %24 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %event, label %do.body13 [
    i32 9, label %do.body
    i32 5, label %do.body2
    i32 3, label %do.body6
    i32 8, label %do.body10
  ]

do.body:                                          ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_iocfc_sm_init_cfg_wait, ptr %iocfc, align 8
  %26 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bfa, align 4
  call fastcc void @bfa_iocfc_send_cfg(ptr noundef %27) #10
  br label %sw.epilog

do.body2:                                         ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfa_iocfc_sm_disabling, ptr %iocfc, align 8
  %29 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bfa, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_s, ptr %30, i32 0, i32 3
  call void @bfa_ioc_disable(ptr noundef %ioc.i) #10
  br label %sw.epilog

do.body6:                                         ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @bfa_iocfc_sm_stopping, ptr %iocfc, align 8
  %32 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bfa, align 4
  %ioc.i34 = getelementptr inbounds %struct.bfa_s, ptr %33, i32 0, i32 3
  call void @bfa_ioc_disable(ptr noundef %ioc.i34) #10
  br label %sw.epilog

do.body10:                                        ; preds = %__bfa_trc.exit
  %34 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @bfa_iocfc_sm_init_failed, ptr %iocfc, align 8
  %35 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bfa, align 4
  %intr_enabled.i.i = getelementptr inbounds %struct.bfa_s, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %intr_enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %intr_enabled.i.i, align 8
  %hw_isr_mode_set.i.i = getelementptr inbounds %struct.bfa_s, ptr %36, i32 0, i32 4, i32 23, i32 7
  %38 = ptrtoint ptr %hw_isr_mode_set.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_isr_mode_set.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %do.body10.bfa_isr_disable.exit.i_crit_edge, label %if.then.i.i

do.body10.bfa_isr_disable.exit.i_crit_edge:       ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_isr_disable.exit.i

if.then.i.i:                                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  call void %39(ptr noundef %36, i32 noundef 0) #10
  br label %bfa_isr_disable.exit.i

bfa_isr_disable.exit.i:                           ; preds = %if.then.i.i, %do.body10.bfa_isr_disable.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !96
  call void @arm_heavy_mb() #10
  %intr_mask.i.i = getelementptr inbounds %struct.bfa_s, ptr %36, i32 0, i32 4, i32 22, i32 1
  %40 = ptrtoint ptr %intr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %intr_mask.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 -1) #10, !srcloc !88
  %hw_msix_uninstall.i.i = getelementptr inbounds %struct.bfa_s, ptr %36, i32 0, i32 4, i32 23, i32 6
  %42 = ptrtoint ptr %hw_msix_uninstall.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_msix_uninstall.i.i, align 8
  call void %43(ptr noundef %36) #10
  %44 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bfa, align 4
  %op_status.i = getelementptr inbounds %struct.bfa_s, ptr %45, i32 0, i32 4, i32 13
  %46 = ptrtoint ptr %op_status.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %op_status.i, align 8
  %47 = load ptr, ptr %bfa, align 4
  %cbfn.i = getelementptr inbounds %struct.bfa_s, ptr %47, i32 0, i32 4, i32 6, i32 1
  %48 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @bfa_iocfc_init_cb, ptr %cbfn.i, align 4
  %49 = load ptr, ptr %bfa, align 4
  %cbarg.i = getelementptr inbounds %struct.bfa_s, ptr %49, i32 0, i32 4, i32 6, i32 5
  %50 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %cbarg.i, align 4
  %51 = load ptr, ptr %bfa, align 4
  %pre_rmv.i = getelementptr inbounds %struct.bfa_s, ptr %51, i32 0, i32 4, i32 6, i32 3
  %52 = ptrtoint ptr %pre_rmv.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %pre_rmv.i, align 4
  %53 = load ptr, ptr %bfa, align 4
  %init_hcb_qe14.i = getelementptr inbounds %struct.bfa_s, ptr %53, i32 0, i32 4, i32 6
  %comp_q.i = getelementptr inbounds %struct.bfa_s, ptr %53, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.bfa_s, ptr %53, i32 0, i32 7, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %init_hcb_qe14.i, ptr noundef %55, ptr noundef %comp_q.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %bfa_isr_disable.exit.i.sw.epilog_crit_edge

bfa_isr_disable.exit.i.sw.epilog_crit_edge:       ; preds = %bfa_isr_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i.i:                                     ; preds = %bfa_isr_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %init_hcb_qe14.i, ptr %prev.i.i, align 4
  %57 = ptrtoint ptr %init_hcb_qe14.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %comp_q.i, ptr %init_hcb_qe14.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.bfa_s, ptr %53, i32 0, i32 4, i32 6, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %init_hcb_qe14.i, ptr %55, align 4
  br label %sw.epilog

do.body13:                                        ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bfa, align 4
  %trcmod15 = getelementptr inbounds %struct.bfa_s, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %trcmod15 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %trcmod15, align 8
  %or = or i32 %event, -559087616
  %conv16 = zext i32 %or to i64
  call void @__bfa_trc(ptr noundef %63, i32 noundef 1025, i32 noundef 329, i64 noundef %conv16)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 329, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body13, %if.end.i.i.i, %bfa_isr_disable.exit.i.sw.epilog_crit_edge, %do.body6, %do.body2, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_sm_disabling(ptr nocapture noundef %iocfc, i32 noundef %event) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa = getelementptr inbounds %struct.bfa_iocfc_s, ptr %iocfc, i32 0, i32 1
  %0 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa, align 4
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bfa_trc.exit_crit_edge

entry.__bfa_trc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %entry
  %conv = zext i32 %event to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 1
  %9 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 576, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 3
  %10 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %11 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %12 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %15, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %16 = trunc i64 %13 to i32
  %17 = mul i32 %16, 1000000
  %conv8.i = add i32 %17, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 2
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %19 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %20, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %22)
  %cmp.i = icmp eq i32 %and.i, %22
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %20, 2
  %and17.i = and i32 %add16.i, 4095
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and17.i, ptr %3, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %entry.__bfa_trc.exit_crit_edge
  %24 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %event, label %do.body2 [
    i32 7, label %do.body
    i32 6, label %__bfa_trc.exit.sw.epilog_crit_edge
    i32 9, label %__bfa_trc.exit.sw.epilog_crit_edge15
    i32 10, label %__bfa_trc.exit.sw.epilog_crit_edge16
  ]

__bfa_trc.exit.sw.epilog_crit_edge16:             ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

__bfa_trc.exit.sw.epilog_crit_edge15:             ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

__bfa_trc.exit.sw.epilog_crit_edge:               ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %__bfa_trc.exit
  %25 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_iocfc_sm_disabled, ptr %iocfc, align 8
  %26 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bfa, align 4
  %intr_enabled.i.i = getelementptr inbounds %struct.bfa_s, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %intr_enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %intr_enabled.i.i, align 8
  %hw_isr_mode_set.i.i = getelementptr inbounds %struct.bfa_s, ptr %27, i32 0, i32 4, i32 23, i32 7
  %29 = ptrtoint ptr %hw_isr_mode_set.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_isr_mode_set.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %do.body.bfa_isr_disable.exit.i_crit_edge, label %if.then.i.i

do.body.bfa_isr_disable.exit.i_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_isr_disable.exit.i

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void %30(ptr noundef %27, i32 noundef 0) #10
  br label %bfa_isr_disable.exit.i

bfa_isr_disable.exit.i:                           ; preds = %if.then.i.i, %do.body.bfa_isr_disable.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !96
  call void @arm_heavy_mb() #10
  %intr_mask.i.i = getelementptr inbounds %struct.bfa_s, ptr %27, i32 0, i32 4, i32 22, i32 1
  %31 = ptrtoint ptr %intr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %intr_mask.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 -1) #10, !srcloc !88
  %hw_msix_uninstall.i.i = getelementptr inbounds %struct.bfa_s, ptr %27, i32 0, i32 4, i32 23, i32 6
  %33 = ptrtoint ptr %hw_msix_uninstall.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_msix_uninstall.i.i, align 8
  call void %34(ptr noundef %27) #10
  %35 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bfa, align 4
  call fastcc void @bfa_iocfc_disable_submod(ptr noundef %36) #10
  %37 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bfa, align 4
  %op_status.i = getelementptr inbounds %struct.bfa_s, ptr %38, i32 0, i32 4, i32 13
  %39 = ptrtoint ptr %op_status.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %op_status.i, align 8
  %40 = load ptr, ptr %bfa, align 4
  %cbfn.i = getelementptr inbounds %struct.bfa_s, ptr %40, i32 0, i32 4, i32 8, i32 1
  %41 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bfa_iocfc_disable_cb, ptr %cbfn.i, align 4
  %42 = load ptr, ptr %bfa, align 4
  %cbarg.i = getelementptr inbounds %struct.bfa_s, ptr %42, i32 0, i32 4, i32 8, i32 5
  %43 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %cbarg.i, align 4
  %44 = load ptr, ptr %bfa, align 4
  %pre_rmv.i = getelementptr inbounds %struct.bfa_s, ptr %44, i32 0, i32 4, i32 8, i32 3
  %45 = ptrtoint ptr %pre_rmv.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %pre_rmv.i, align 4
  %46 = load ptr, ptr %bfa, align 4
  %dis_hcb_qe15.i = getelementptr inbounds %struct.bfa_s, ptr %46, i32 0, i32 4, i32 8
  %comp_q.i = getelementptr inbounds %struct.bfa_s, ptr %46, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.bfa_s, ptr %46, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %dis_hcb_qe15.i, ptr noundef %48, ptr noundef %comp_q.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %bfa_isr_disable.exit.i.sw.epilog_crit_edge

bfa_isr_disable.exit.i.sw.epilog_crit_edge:       ; preds = %bfa_isr_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i.i:                                     ; preds = %bfa_isr_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dis_hcb_qe15.i, ptr %prev.i.i, align 4
  %50 = ptrtoint ptr %dis_hcb_qe15.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %comp_q.i, ptr %dis_hcb_qe15.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.bfa_s, ptr %46, i32 0, i32 4, i32 8, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %dis_hcb_qe15.i, ptr %48, align 4
  br label %sw.epilog

do.body2:                                         ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bfa, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_s, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %trcmod4, align 8
  %or = or i32 %event, -559087616
  %conv5 = zext i32 %or to i64
  call void @__bfa_trc(ptr noundef %56, i32 noundef 1025, i32 noundef 587, i64 noundef %conv5)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 587, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body2, %if.end.i.i.i, %bfa_isr_disable.exit.i.sw.epilog_crit_edge, %__bfa_trc.exit.sw.epilog_crit_edge, %__bfa_trc.exit.sw.epilog_crit_edge15, %__bfa_trc.exit.sw.epilog_crit_edge16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_sm_stopping(ptr nocapture noundef %iocfc, i32 noundef %event) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa = getelementptr inbounds %struct.bfa_iocfc_s, ptr %iocfc, i32 0, i32 1
  %0 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa, align 4
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bfa_trc.exit_crit_edge

entry.__bfa_trc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %entry
  %conv = zext i32 %event to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 1
  %9 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 458, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 3
  %10 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %11 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %12 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %15, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %16 = trunc i64 %13 to i32
  %17 = mul i32 %16, 1000000
  %conv8.i = add i32 %17, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 2
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %19 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %20, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %22)
  %cmp.i = icmp eq i32 %and.i, %22
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %20, 2
  %and17.i = and i32 %add16.i, 4095
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and17.i, ptr %3, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %entry.__bfa_trc.exit_crit_edge
  %24 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %event, label %do.body21 [
    i32 7, label %sw.bb
    i32 6, label %__bfa_trc.exit.sw.epilog_crit_edge
    i32 9, label %__bfa_trc.exit.sw.epilog_crit_edge44
    i32 10, label %__bfa_trc.exit.sw.epilog_crit_edge45
  ]

__bfa_trc.exit.sw.epilog_crit_edge45:             ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

__bfa_trc.exit.sw.epilog_crit_edge44:             ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

__bfa_trc.exit.sw.epilog_crit_edge:               ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %__bfa_trc.exit
  %25 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bfa, align 4
  %intr_enabled.i = getelementptr inbounds %struct.bfa_s, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %intr_enabled.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %intr_enabled.i, align 8
  %hw_isr_mode_set.i = getelementptr inbounds %struct.bfa_s, ptr %26, i32 0, i32 4, i32 23, i32 7
  %28 = ptrtoint ptr %hw_isr_mode_set.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_isr_mode_set.i, align 4
  %tobool.not.i43 = icmp eq ptr %29, null
  br i1 %tobool.not.i43, label %sw.bb.bfa_isr_disable.exit_crit_edge, label %if.then.i

sw.bb.bfa_isr_disable.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_isr_disable.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  call void %29(ptr noundef %26, i32 noundef 0) #10
  br label %bfa_isr_disable.exit

bfa_isr_disable.exit:                             ; preds = %if.then.i, %sw.bb.bfa_isr_disable.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !96
  call void @arm_heavy_mb() #10
  %intr_mask.i = getelementptr inbounds %struct.bfa_s, ptr %26, i32 0, i32 4, i32 22, i32 1
  %30 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %intr_mask.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 -1) #10, !srcloc !88
  %hw_msix_uninstall.i = getelementptr inbounds %struct.bfa_s, ptr %26, i32 0, i32 4, i32 23, i32 6
  %32 = ptrtoint ptr %hw_msix_uninstall.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_msix_uninstall.i, align 8
  call void %33(ptr noundef %26) #10
  %34 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bfa, align 4
  call fastcc void @bfa_iocfc_disable_submod(ptr noundef %35)
  %36 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @bfa_iocfc_sm_stopped, ptr %iocfc, align 8
  %37 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bfa, align 4
  %op_status = getelementptr inbounds %struct.bfa_s, ptr %38, i32 0, i32 4, i32 13
  %39 = ptrtoint ptr %op_status to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %op_status, align 8
  %40 = load ptr, ptr %bfa, align 4
  %cbfn = getelementptr inbounds %struct.bfa_s, ptr %40, i32 0, i32 4, i32 7, i32 1
  %41 = ptrtoint ptr %cbfn to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bfa_iocfc_stop_cb, ptr %cbfn, align 8
  %42 = load ptr, ptr %bfa, align 4
  %cbarg = getelementptr inbounds %struct.bfa_s, ptr %42, i32 0, i32 4, i32 7, i32 5
  %43 = ptrtoint ptr %cbarg to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %cbarg, align 8
  %44 = load ptr, ptr %bfa, align 4
  %pre_rmv = getelementptr inbounds %struct.bfa_s, ptr %44, i32 0, i32 4, i32 7, i32 3
  %45 = ptrtoint ptr %pre_rmv to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %pre_rmv, align 8
  %46 = load ptr, ptr %bfa, align 4
  %stop_hcb_qe17 = getelementptr inbounds %struct.bfa_s, ptr %46, i32 0, i32 4, i32 7
  %comp_q = getelementptr inbounds %struct.bfa_s, ptr %46, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.bfa_s, ptr %46, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %stop_hcb_qe17, ptr noundef %48, ptr noundef %comp_q) #10
  br i1 %call.i.i, label %if.end.i.i, label %bfa_isr_disable.exit.sw.epilog_crit_edge

bfa_isr_disable.exit.sw.epilog_crit_edge:         ; preds = %bfa_isr_disable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i:                                       ; preds = %bfa_isr_disable.exit
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %stop_hcb_qe17, ptr %prev.i, align 4
  %50 = ptrtoint ptr %stop_hcb_qe17 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %comp_q, ptr %stop_hcb_qe17, align 4
  %prev3.i.i = getelementptr inbounds %struct.bfa_s, ptr %46, i32 0, i32 4, i32 7, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %stop_hcb_qe17, ptr %48, align 4
  br label %sw.epilog

do.body21:                                        ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bfa, align 4
  %trcmod23 = getelementptr inbounds %struct.bfa_s, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %trcmod23 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %trcmod23, align 8
  %or = or i32 %event, -559087616
  %conv24 = zext i32 %or to i64
  call void @__bfa_trc(ptr noundef %56, i32 noundef 1025, i32 noundef 476, i64 noundef %conv24)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 476, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body21, %if.end.i.i, %bfa_isr_disable.exit.sw.epilog_crit_edge, %__bfa_trc.exit.sw.epilog_crit_edge, %__bfa_trc.exit.sw.epilog_crit_edge44, %__bfa_trc.exit.sw.epilog_crit_edge45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_sm_init_failed(ptr nocapture noundef %iocfc, i32 noundef %event) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa = getelementptr inbounds %struct.bfa_iocfc_s, ptr %iocfc, i32 0, i32 1
  %0 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa, align 4
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bfa_trc.exit_crit_edge

entry.__bfa_trc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %entry
  %conv = zext i32 %event to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 1
  %9 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 662, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 3
  %10 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %11 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %12 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %15, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %16 = trunc i64 %13 to i32
  %17 = mul i32 %16, 1000000
  %conv8.i = add i32 %17, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 2
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %19 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %20, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %22)
  %cmp.i = icmp eq i32 %and.i, %22
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %20, 2
  %and17.i = and i32 %add16.i, 4095
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and17.i, ptr %3, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %entry.__bfa_trc.exit_crit_edge
  %24 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %event, label %do.body28 [
    i32 3, label %do.body
    i32 5, label %sw.bb1
    i32 6, label %do.body4
    i32 7, label %do.body8
    i32 8, label %__bfa_trc.exit.sw.epilog_crit_edge
  ]

__bfa_trc.exit.sw.epilog_crit_edge:               ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_iocfc_sm_stopping, ptr %iocfc, align 8
  %26 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bfa, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_s, ptr %27, i32 0, i32 3
  call void @bfa_ioc_disable(ptr noundef %ioc.i) #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bfa, align 4
  %ioc = getelementptr inbounds %struct.bfa_s, ptr %29, i32 0, i32 3
  call void @bfa_ioc_disable(ptr noundef %ioc) #10
  br label %sw.epilog

do.body4:                                         ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @bfa_iocfc_sm_dconf_read, ptr %iocfc, align 8
  %31 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bfa, align 4
  call void @bfa_dconf_modinit(ptr noundef %32) #10
  br label %sw.epilog

do.body8:                                         ; preds = %__bfa_trc.exit
  %33 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bfa_iocfc_sm_stopped, ptr %iocfc, align 8
  %34 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bfa, align 4
  %op_status = getelementptr inbounds %struct.bfa_s, ptr %35, i32 0, i32 4, i32 13
  %36 = ptrtoint ptr %op_status to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %op_status, align 8
  %37 = load ptr, ptr %bfa, align 4
  %cbfn = getelementptr inbounds %struct.bfa_s, ptr %37, i32 0, i32 4, i32 8, i32 1
  %38 = ptrtoint ptr %cbfn to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @bfa_iocfc_disable_cb, ptr %cbfn, align 4
  %39 = load ptr, ptr %bfa, align 4
  %cbarg = getelementptr inbounds %struct.bfa_s, ptr %39, i32 0, i32 4, i32 8, i32 5
  %40 = ptrtoint ptr %cbarg to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %cbarg, align 4
  %41 = load ptr, ptr %bfa, align 4
  %pre_rmv = getelementptr inbounds %struct.bfa_s, ptr %41, i32 0, i32 4, i32 8, i32 3
  %42 = ptrtoint ptr %pre_rmv to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %pre_rmv, align 4
  %43 = load ptr, ptr %bfa, align 4
  %dis_hcb_qe25 = getelementptr inbounds %struct.bfa_s, ptr %43, i32 0, i32 4, i32 8
  %comp_q = getelementptr inbounds %struct.bfa_s, ptr %43, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.bfa_s, ptr %43, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %dis_hcb_qe25, ptr noundef %45, ptr noundef %comp_q) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.body8.sw.epilog_crit_edge

do.body8.sw.epilog_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i:                                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dis_hcb_qe25, ptr %prev.i, align 4
  %47 = ptrtoint ptr %dis_hcb_qe25 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %comp_q, ptr %dis_hcb_qe25, align 4
  %prev3.i.i = getelementptr inbounds %struct.bfa_s, ptr %43, i32 0, i32 4, i32 8, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %dis_hcb_qe25, ptr %45, align 4
  br label %sw.epilog

do.body28:                                        ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bfa, align 4
  %trcmod30 = getelementptr inbounds %struct.bfa_s, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %trcmod30 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %trcmod30, align 8
  %or = or i32 %event, -559087616
  %conv31 = zext i32 %or to i64
  call void @__bfa_trc(ptr noundef %53, i32 noundef 1025, i32 noundef 683, i64 noundef %conv31)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 683, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body28, %if.end.i.i, %do.body8.sw.epilog_crit_edge, %do.body4, %sw.bb1, %do.body, %__bfa_trc.exit.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_sm_init_cfg_wait(ptr nocapture noundef %iocfc, i32 noundef %event) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa = getelementptr inbounds %struct.bfa_iocfc_s, ptr %iocfc, i32 0, i32 1
  %0 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa, align 4
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bfa_trc.exit_crit_edge

entry.__bfa_trc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %entry
  %conv = zext i32 %event to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 1
  %9 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 343, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 3
  %10 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %11 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %12 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %15, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %16 = trunc i64 %13 to i32
  %17 = mul i32 %16, 1000000
  %conv8.i = add i32 %17, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 2
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %19 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %20, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %22)
  %cmp.i = icmp eq i32 %and.i, %22
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %20, 2
  %and17.i = and i32 %add16.i, 4095
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and17.i, ptr %3, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %entry.__bfa_trc.exit_crit_edge
  %24 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %event, label %do.body13 [
    i32 10, label %do.body
    i32 5, label %do.body2
    i32 3, label %do.body6
    i32 8, label %do.body10
  ]

do.body:                                          ; preds = %__bfa_trc.exit
  %25 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_iocfc_sm_init_cfg_done, ptr %iocfc, align 8
  %26 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bfa, align 4
  %op_status.i = getelementptr inbounds %struct.bfa_s, ptr %27, i32 0, i32 4, i32 13
  %28 = ptrtoint ptr %op_status.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %op_status.i, align 8
  %29 = load ptr, ptr %bfa, align 4
  %cbfn.i = getelementptr inbounds %struct.bfa_s, ptr %29, i32 0, i32 4, i32 6, i32 1
  %30 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @bfa_iocfc_init_cb, ptr %cbfn.i, align 4
  %31 = load ptr, ptr %bfa, align 4
  %cbarg.i = getelementptr inbounds %struct.bfa_s, ptr %31, i32 0, i32 4, i32 6, i32 5
  %32 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %cbarg.i, align 4
  %33 = load ptr, ptr %bfa, align 4
  %pre_rmv.i = getelementptr inbounds %struct.bfa_s, ptr %33, i32 0, i32 4, i32 6, i32 3
  %34 = ptrtoint ptr %pre_rmv.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %pre_rmv.i, align 4
  %35 = load ptr, ptr %bfa, align 4
  %init_hcb_qe13.i = getelementptr inbounds %struct.bfa_s, ptr %35, i32 0, i32 4, i32 6
  %comp_q.i = getelementptr inbounds %struct.bfa_s, ptr %35, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.bfa_s, ptr %35, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %init_hcb_qe13.i, ptr noundef %37, ptr noundef %comp_q.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body.sw.epilog_crit_edge

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i.i:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %init_hcb_qe13.i, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %init_hcb_qe13.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %comp_q.i, ptr %init_hcb_qe13.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.bfa_s, ptr %35, i32 0, i32 4, i32 6, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %init_hcb_qe13.i, ptr %37, align 4
  br label %sw.epilog

do.body2:                                         ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @bfa_iocfc_sm_disabling, ptr %iocfc, align 8
  %43 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bfa, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_s, ptr %44, i32 0, i32 3
  call void @bfa_ioc_disable(ptr noundef %ioc.i) #10
  br label %sw.epilog

do.body6:                                         ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @bfa_iocfc_sm_stopping, ptr %iocfc, align 8
  %46 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bfa, align 4
  %ioc.i34 = getelementptr inbounds %struct.bfa_s, ptr %47, i32 0, i32 3
  call void @bfa_ioc_disable(ptr noundef %ioc.i34) #10
  br label %sw.epilog

do.body10:                                        ; preds = %__bfa_trc.exit
  %48 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @bfa_iocfc_sm_init_failed, ptr %iocfc, align 8
  %49 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bfa, align 4
  %intr_enabled.i.i = getelementptr inbounds %struct.bfa_s, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %intr_enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %intr_enabled.i.i, align 8
  %hw_isr_mode_set.i.i = getelementptr inbounds %struct.bfa_s, ptr %50, i32 0, i32 4, i32 23, i32 7
  %52 = ptrtoint ptr %hw_isr_mode_set.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_isr_mode_set.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i, label %do.body10.bfa_isr_disable.exit.i_crit_edge, label %if.then.i.i

do.body10.bfa_isr_disable.exit.i_crit_edge:       ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_isr_disable.exit.i

if.then.i.i:                                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  call void %53(ptr noundef %50, i32 noundef 0) #10
  br label %bfa_isr_disable.exit.i

bfa_isr_disable.exit.i:                           ; preds = %if.then.i.i, %do.body10.bfa_isr_disable.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !96
  call void @arm_heavy_mb() #10
  %intr_mask.i.i = getelementptr inbounds %struct.bfa_s, ptr %50, i32 0, i32 4, i32 22, i32 1
  %54 = ptrtoint ptr %intr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %intr_mask.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 -1) #10, !srcloc !88
  %hw_msix_uninstall.i.i = getelementptr inbounds %struct.bfa_s, ptr %50, i32 0, i32 4, i32 23, i32 6
  %56 = ptrtoint ptr %hw_msix_uninstall.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_msix_uninstall.i.i, align 8
  call void %57(ptr noundef %50) #10
  %58 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bfa, align 4
  %op_status.i36 = getelementptr inbounds %struct.bfa_s, ptr %59, i32 0, i32 4, i32 13
  %60 = ptrtoint ptr %op_status.i36 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %op_status.i36, align 8
  %61 = load ptr, ptr %bfa, align 4
  %cbfn.i37 = getelementptr inbounds %struct.bfa_s, ptr %61, i32 0, i32 4, i32 6, i32 1
  %62 = ptrtoint ptr %cbfn.i37 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @bfa_iocfc_init_cb, ptr %cbfn.i37, align 4
  %63 = load ptr, ptr %bfa, align 4
  %cbarg.i38 = getelementptr inbounds %struct.bfa_s, ptr %63, i32 0, i32 4, i32 6, i32 5
  %64 = ptrtoint ptr %cbarg.i38 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %cbarg.i38, align 4
  %65 = load ptr, ptr %bfa, align 4
  %pre_rmv.i39 = getelementptr inbounds %struct.bfa_s, ptr %65, i32 0, i32 4, i32 6, i32 3
  %66 = ptrtoint ptr %pre_rmv.i39 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %pre_rmv.i39, align 4
  %67 = load ptr, ptr %bfa, align 4
  %init_hcb_qe14.i = getelementptr inbounds %struct.bfa_s, ptr %67, i32 0, i32 4, i32 6
  %comp_q.i40 = getelementptr inbounds %struct.bfa_s, ptr %67, i32 0, i32 7
  %prev.i.i41 = getelementptr inbounds %struct.bfa_s, ptr %67, i32 0, i32 7, i32 1
  %68 = ptrtoint ptr %prev.i.i41 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i41, align 4
  %call.i.i.i42 = call zeroext i1 @__list_add_valid(ptr noundef %init_hcb_qe14.i, ptr noundef %69, ptr noundef %comp_q.i40) #10
  br i1 %call.i.i.i42, label %if.end.i.i.i44, label %bfa_isr_disable.exit.i.sw.epilog_crit_edge

bfa_isr_disable.exit.i.sw.epilog_crit_edge:       ; preds = %bfa_isr_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i.i44:                                   ; preds = %bfa_isr_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %prev.i.i41 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %init_hcb_qe14.i, ptr %prev.i.i41, align 4
  %71 = ptrtoint ptr %init_hcb_qe14.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %comp_q.i40, ptr %init_hcb_qe14.i, align 4
  %prev3.i.i.i43 = getelementptr inbounds %struct.bfa_s, ptr %67, i32 0, i32 4, i32 6, i32 0, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev3.i.i.i43, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %init_hcb_qe14.i, ptr %69, align 4
  br label %sw.epilog

do.body13:                                        ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bfa, align 4
  %trcmod15 = getelementptr inbounds %struct.bfa_s, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %trcmod15 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %trcmod15, align 8
  %or = or i32 %event, -559087616
  %conv16 = zext i32 %or to i64
  call void @__bfa_trc(ptr noundef %77, i32 noundef 1025, i32 noundef 362, i64 noundef %conv16)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 362, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body13, %if.end.i.i.i44, %bfa_isr_disable.exit.i.sw.epilog_crit_edge, %do.body6, %do.body2, %if.end.i.i.i, %do.body.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_sm_init_cfg_done(ptr nocapture noundef %iocfc, i32 noundef %event) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa = getelementptr inbounds %struct.bfa_iocfc_s, ptr %iocfc, i32 0, i32 1
  %0 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa, align 4
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bfa_trc.exit_crit_edge

entry.__bfa_trc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %entry
  %conv = zext i32 %event to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 1
  %9 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 378, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 3
  %10 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %11 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %12 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %15, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %16 = trunc i64 %13 to i32
  %17 = mul i32 %16, 1000000
  %conv8.i = add i32 %17, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 2
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %19 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %20, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %22)
  %cmp.i = icmp eq i32 %and.i, %22
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %20, 2
  %and17.i = and i32 %add16.i, 4095
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and17.i, ptr %3, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %entry.__bfa_trc.exit_crit_edge
  %24 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %event, label %do.body13 [
    i32 2, label %do.body
    i32 3, label %do.body2
    i32 5, label %do.body6
    i32 8, label %do.body10
  ]

do.body:                                          ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_iocfc_sm_operational, ptr %iocfc, align 8
  %26 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bfa, align 4
  call void @bfa_fcport_init(ptr noundef %27) #10
  %28 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bfa, align 4
  %queue_process.i.i = getelementptr inbounds %struct.bfa_s, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %queue_process.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %queue_process.i.i, align 8
  %hw_rspq_ack.i.i = getelementptr inbounds %struct.bfa_s, ptr %29, i32 0, i32 4, i32 23, i32 2
  %31 = ptrtoint ptr %hw_rspq_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_rspq_ack.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.bfa_s, ptr %29, i32 0, i32 4, i32 4, i32 0
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i, align 4
  call void %32(ptr noundef %29, i32 noundef 0, i32 noundef %34) #10
  %35 = ptrtoint ptr %hw_rspq_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_rspq_ack.i.i, align 8
  %arrayidx.1.i.i = getelementptr %struct.bfa_s, ptr %29, i32 0, i32 4, i32 4, i32 1
  %37 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.1.i.i, align 4
  call void %36(ptr noundef %29, i32 noundef 1, i32 noundef %38) #10
  %39 = ptrtoint ptr %hw_rspq_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw_rspq_ack.i.i, align 8
  %arrayidx.2.i.i = getelementptr %struct.bfa_s, ptr %29, i32 0, i32 4, i32 4, i32 2
  %41 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.2.i.i, align 4
  call void %40(ptr noundef %29, i32 noundef 2, i32 noundef %42) #10
  %43 = ptrtoint ptr %hw_rspq_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_rspq_ack.i.i, align 8
  %arrayidx.3.i.i = getelementptr %struct.bfa_s, ptr %29, i32 0, i32 4, i32 4, i32 3
  %45 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.3.i.i, align 4
  call void %44(ptr noundef %29, i32 noundef 3, i32 noundef %46) #10
  call void @bfa_fcport_start(ptr noundef %29) #10
  call void @bfa_uf_start(ptr noundef %29) #10
  %fcp_mod.i.i = getelementptr inbounds %struct.bfa_s, ptr %29, i32 0, i32 6, i32 6
  %47 = ptrtoint ptr %fcp_mod.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fcp_mod.i.i, align 8
  call void @bfa_ioim_lm_init(ptr noundef %48) #10
  %submod_enabled.i.i = getelementptr inbounds %struct.bfa_s, ptr %29, i32 0, i32 4, i32 11
  %49 = ptrtoint ptr %submod_enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %submod_enabled.i.i, align 8
  br label %sw.epilog

do.body2:                                         ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @bfa_iocfc_sm_stopping, ptr %iocfc, align 8
  %51 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bfa, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_s, ptr %52, i32 0, i32 3
  call void @bfa_ioc_disable(ptr noundef %ioc.i) #10
  br label %sw.epilog

do.body6:                                         ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @bfa_iocfc_sm_disabling, ptr %iocfc, align 8
  %54 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bfa, align 4
  %ioc.i34 = getelementptr inbounds %struct.bfa_s, ptr %55, i32 0, i32 3
  call void @bfa_ioc_disable(ptr noundef %ioc.i34) #10
  br label %sw.epilog

do.body10:                                        ; preds = %__bfa_trc.exit
  %56 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @bfa_iocfc_sm_failed, ptr %iocfc, align 8
  %57 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bfa, align 4
  %intr_enabled.i.i = getelementptr inbounds %struct.bfa_s, ptr %58, i32 0, i32 13
  %59 = ptrtoint ptr %intr_enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %intr_enabled.i.i, align 8
  %hw_isr_mode_set.i.i = getelementptr inbounds %struct.bfa_s, ptr %58, i32 0, i32 4, i32 23, i32 7
  %60 = ptrtoint ptr %hw_isr_mode_set.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_isr_mode_set.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i, label %do.body10.bfa_iocfc_sm_failed_entry.exit_crit_edge, label %if.then.i.i

do.body10.bfa_iocfc_sm_failed_entry.exit_crit_edge: ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_iocfc_sm_failed_entry.exit

if.then.i.i:                                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  call void %61(ptr noundef %58, i32 noundef 0) #10
  br label %bfa_iocfc_sm_failed_entry.exit

bfa_iocfc_sm_failed_entry.exit:                   ; preds = %if.then.i.i, %do.body10.bfa_iocfc_sm_failed_entry.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !96
  call void @arm_heavy_mb() #10
  %intr_mask.i.i = getelementptr inbounds %struct.bfa_s, ptr %58, i32 0, i32 4, i32 22, i32 1
  %62 = ptrtoint ptr %intr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %intr_mask.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 -1) #10, !srcloc !88
  %hw_msix_uninstall.i.i = getelementptr inbounds %struct.bfa_s, ptr %58, i32 0, i32 4, i32 23, i32 6
  %64 = ptrtoint ptr %hw_msix_uninstall.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw_msix_uninstall.i.i, align 8
  call void %65(ptr noundef %58) #10
  %66 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bfa, align 4
  call fastcc void @bfa_iocfc_disable_submod(ptr noundef %67) #10
  br label %sw.epilog

do.body13:                                        ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bfa, align 4
  %trcmod15 = getelementptr inbounds %struct.bfa_s, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %trcmod15 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %trcmod15, align 8
  %or = or i32 %event, -559087616
  %conv16 = zext i32 %or to i64
  call void @__bfa_trc(ptr noundef %71, i32 noundef 1025, i32 noundef 394, i64 noundef %conv16)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 394, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body13, %bfa_iocfc_sm_failed_entry.exit, %do.body6, %do.body2, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_sm_failed(ptr nocapture noundef %iocfc, i32 noundef %event) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa = getelementptr inbounds %struct.bfa_iocfc_s, ptr %iocfc, i32 0, i32 1
  %0 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa, align 4
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bfa_trc.exit_crit_edge

entry.__bfa_trc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %entry
  %conv = zext i32 %event to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 1
  %9 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 630, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 3
  %10 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %11 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %12 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %15, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %16 = trunc i64 %13 to i32
  %17 = mul i32 %16, 1000000
  %conv8.i = add i32 %17, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 2
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %19 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %20, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %22)
  %cmp.i = icmp eq i32 %and.i, %22
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %20, 2
  %and17.i = and i32 %add16.i, 4095
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and17.i, ptr %3, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %entry.__bfa_trc.exit_crit_edge
  %24 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %event, label %do.body9 [
    i32 3, label %do.body
    i32 5, label %do.body2
    i32 6, label %do.body6
    i32 8, label %__bfa_trc.exit.sw.epilog_crit_edge
  ]

__bfa_trc.exit.sw.epilog_crit_edge:               ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_iocfc_sm_dconf_write, ptr %iocfc, align 8
  %26 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bfa, align 4
  call void @bfa_dconf_modexit(ptr noundef %27) #10
  br label %sw.epilog

do.body2:                                         ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfa_iocfc_sm_disabling, ptr %iocfc, align 8
  %29 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bfa, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_s, ptr %30, i32 0, i32 3
  call void @bfa_ioc_disable(ptr noundef %ioc.i) #10
  br label %sw.epilog

do.body6:                                         ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @bfa_iocfc_sm_cfg_wait, ptr %iocfc, align 8
  %32 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bfa, align 4
  call fastcc void @bfa_iocfc_send_cfg(ptr noundef %33) #10
  br label %sw.epilog

do.body9:                                         ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bfa, align 4
  %trcmod11 = getelementptr inbounds %struct.bfa_s, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %trcmod11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %trcmod11, align 8
  %or = or i32 %event, -559087616
  %conv12 = zext i32 %or to i64
  call void @__bfa_trc(ptr noundef %37, i32 noundef 1025, i32 noundef 645, i64 noundef %conv12)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 645, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body9, %do.body6, %do.body2, %do.body, %__bfa_trc.exit.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcport_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcport_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_uf_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioim_lm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_sm_dconf_write(ptr nocapture noundef %iocfc, i32 noundef %event) #0 align 64 {
entry:
  %ts.i14 = alloca %struct.timespec64, align 8
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa = getelementptr inbounds %struct.bfa_iocfc_s, ptr %iocfc, i32 0, i32 1
  %0 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa, align 4
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bfa_trc.exit_crit_edge

entry.__bfa_trc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %entry
  %conv = zext i32 %event to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 1
  %9 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 436, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 3
  %10 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %11 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %12 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %15, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %16 = trunc i64 %13 to i32
  %17 = mul i32 %16, 1000000
  %conv8.i = add i32 %17, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 2
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %19 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %20, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %22)
  %cmp.i = icmp eq i32 %and.i, %22
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %20, 2
  %and17.i = and i32 %add16.i, 4095
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and17.i, ptr %3, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %entry.__bfa_trc.exit_crit_edge
  %24 = and i32 %event, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %switch = icmp eq i32 %24, 8
  br i1 %switch, label %do.body, label %do.body1

do.body:                                          ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_iocfc_sm_stopping, ptr %iocfc, align 8
  %26 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bfa, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_s, ptr %27, i32 0, i32 3
  call void @bfa_ioc_disable(ptr noundef %ioc.i) #10
  br label %sw.epilog

do.body1:                                         ; preds = %__bfa_trc.exit
  %28 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bfa, align 4
  %trcmod3 = getelementptr inbounds %struct.bfa_s, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %trcmod3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trcmod3, align 8
  %stopped.i15 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %stopped.i15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stopped.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i16 = icmp eq i32 %33, 0
  br i1 %tobool.not.i16, label %if.end.i28, label %do.body1.__bfa_trc.exit32_crit_edge

do.body1.__bfa_trc.exit32_crit_edge:              ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit32

if.end.i28:                                       ; preds = %do.body1
  %or = or i32 %event, -559087616
  %conv4 = zext i32 %or to i64
  %tail1.i17 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %tail1.i17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tail1.i17, align 4
  %arrayidx.i18 = getelementptr %struct.bfa_trc_mod_s, ptr %31, i32 0, i32 6, i32 %35
  %36 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1025, ptr %arrayidx.i18, align 8
  %line5.i19 = getelementptr %struct.bfa_trc_mod_s, ptr %31, i32 0, i32 6, i32 %35, i32 1
  %37 = ptrtoint ptr %line5.i19 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 444, ptr %line5.i19, align 2
  %data6.i20 = getelementptr %struct.bfa_trc_mod_s, ptr %31, i32 0, i32 6, i32 %35, i32 3
  %38 = ptrtoint ptr %data6.i20 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv4, ptr %data6.i20, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i14) #10
  %39 = call ptr @memset(ptr %ts.i14, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i14) #10
  %40 = ptrtoint ptr %ts.i14 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ts.i14, align 8
  %tv_nsec.i21 = getelementptr inbounds %struct.timespec64, ptr %ts.i14, i32 0, i32 1
  %42 = ptrtoint ptr %tv_nsec.i21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tv_nsec.i21, align 8
  %div.i22 = sdiv i32 %43, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i14) #10
  %44 = trunc i64 %41 to i32
  %45 = mul i32 %44, 1000000
  %conv8.i23 = add i32 %45, %div.i22
  %timestamp.i24 = getelementptr %struct.bfa_trc_mod_s, ptr %31, i32 0, i32 6, i32 %35, i32 2
  %46 = ptrtoint ptr %timestamp.i24 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv8.i23, ptr %timestamp.i24, align 4
  %47 = ptrtoint ptr %tail1.i17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tail1.i17, align 4
  %add10.i25 = add i32 %48, 1
  %and.i26 = and i32 %add10.i25, 4095
  store i32 %and.i26, ptr %tail1.i17, align 4
  %49 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %31, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i26, i32 %50)
  %cmp.i27 = icmp eq i32 %and.i26, %50
  br i1 %cmp.i27, label %if.then14.i31, label %if.end.i28.__bfa_trc.exit32_crit_edge

if.end.i28.__bfa_trc.exit32_crit_edge:            ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit32

if.then14.i31:                                    ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i29 = add i32 %48, 2
  %and17.i30 = and i32 %add16.i29, 4095
  %51 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and17.i30, ptr %31, align 8
  br label %__bfa_trc.exit32

__bfa_trc.exit32:                                 ; preds = %if.then14.i31, %if.end.i28.__bfa_trc.exit32_crit_edge, %do.body1.__bfa_trc.exit32_crit_edge
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 444, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %__bfa_trc.exit32, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_sm_cfg_wait(ptr nocapture noundef %iocfc, i32 noundef %event) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa = getelementptr inbounds %struct.bfa_iocfc_s, ptr %iocfc, i32 0, i32 1
  %0 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa, align 4
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bfa_trc.exit_crit_edge

entry.__bfa_trc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %entry
  %conv = zext i32 %event to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 1
  %9 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 531, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 3
  %10 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %11 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %12 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %15, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %16 = trunc i64 %13 to i32
  %17 = mul i32 %16, 1000000
  %conv8.i = add i32 %17, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 2
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %19 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %20, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %22)
  %cmp.i = icmp eq i32 %and.i, %22
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %20, 2
  %and17.i = and i32 %add16.i, 4095
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and17.i, ptr %3, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %entry.__bfa_trc.exit_crit_edge
  %24 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %event, label %do.body70 [
    i32 10, label %do.body
    i32 5, label %do.body25
    i32 3, label %do.body29
    i32 8, label %do.body33
  ]

do.body:                                          ; preds = %__bfa_trc.exit
  %25 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_iocfc_sm_operational, ptr %iocfc, align 8
  %26 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bfa, align 4
  call void @bfa_fcport_init(ptr noundef %27) #10
  %28 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bfa, align 4
  %queue_process.i.i = getelementptr inbounds %struct.bfa_s, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %queue_process.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %queue_process.i.i, align 8
  %hw_rspq_ack.i.i = getelementptr inbounds %struct.bfa_s, ptr %29, i32 0, i32 4, i32 23, i32 2
  %31 = ptrtoint ptr %hw_rspq_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_rspq_ack.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.bfa_s, ptr %29, i32 0, i32 4, i32 4, i32 0
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i, align 4
  call void %32(ptr noundef %29, i32 noundef 0, i32 noundef %34) #10
  %35 = ptrtoint ptr %hw_rspq_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_rspq_ack.i.i, align 8
  %arrayidx.1.i.i = getelementptr %struct.bfa_s, ptr %29, i32 0, i32 4, i32 4, i32 1
  %37 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.1.i.i, align 4
  call void %36(ptr noundef %29, i32 noundef 1, i32 noundef %38) #10
  %39 = ptrtoint ptr %hw_rspq_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw_rspq_ack.i.i, align 8
  %arrayidx.2.i.i = getelementptr %struct.bfa_s, ptr %29, i32 0, i32 4, i32 4, i32 2
  %41 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.2.i.i, align 4
  call void %40(ptr noundef %29, i32 noundef 2, i32 noundef %42) #10
  %43 = ptrtoint ptr %hw_rspq_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_rspq_ack.i.i, align 8
  %arrayidx.3.i.i = getelementptr %struct.bfa_s, ptr %29, i32 0, i32 4, i32 4, i32 3
  %45 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.3.i.i, align 4
  call void %44(ptr noundef %29, i32 noundef 3, i32 noundef %46) #10
  call void @bfa_fcport_start(ptr noundef %29) #10
  call void @bfa_uf_start(ptr noundef %29) #10
  %fcp_mod.i.i = getelementptr inbounds %struct.bfa_s, ptr %29, i32 0, i32 6, i32 6
  %47 = ptrtoint ptr %fcp_mod.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fcp_mod.i.i, align 8
  call void @bfa_ioim_lm_init(ptr noundef %48) #10
  %submod_enabled.i.i = getelementptr inbounds %struct.bfa_s, ptr %29, i32 0, i32 4, i32 11
  %49 = ptrtoint ptr %submod_enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %submod_enabled.i.i, align 8
  %50 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bfa, align 4
  %cb_reqd = getelementptr inbounds %struct.bfa_s, ptr %51, i32 0, i32 4, i32 12
  %52 = ptrtoint ptr %cb_reqd to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cb_reqd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp = icmp eq i32 %53, 0
  br i1 %cmp, label %do.body.sw.epilog_crit_edge, label %if.end

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end:                                           ; preds = %do.body
  %op_status = getelementptr inbounds %struct.bfa_s, ptr %51, i32 0, i32 4, i32 13
  %54 = ptrtoint ptr %op_status to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %op_status, align 8
  %55 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bfa, align 4
  %cbfn = getelementptr inbounds %struct.bfa_s, ptr %56, i32 0, i32 4, i32 9, i32 1
  %57 = ptrtoint ptr %cbfn to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @bfa_iocfc_enable_cb, ptr %cbfn, align 8
  %58 = load ptr, ptr %bfa, align 4
  %cbarg = getelementptr inbounds %struct.bfa_s, ptr %58, i32 0, i32 4, i32 9, i32 5
  %59 = ptrtoint ptr %cbarg to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %cbarg, align 8
  %60 = load ptr, ptr %bfa, align 4
  %pre_rmv = getelementptr inbounds %struct.bfa_s, ptr %60, i32 0, i32 4, i32 9, i32 3
  %61 = ptrtoint ptr %pre_rmv to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %pre_rmv, align 8
  %62 = load ptr, ptr %bfa, align 4
  %en_hcb_qe18 = getelementptr inbounds %struct.bfa_s, ptr %62, i32 0, i32 4, i32 9
  %comp_q = getelementptr inbounds %struct.bfa_s, ptr %62, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.bfa_s, ptr %62, i32 0, i32 7, i32 1
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %en_hcb_qe18, ptr noundef %64, ptr noundef %comp_q) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %en_hcb_qe18, ptr %prev.i, align 4
  %66 = ptrtoint ptr %en_hcb_qe18 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %comp_q, ptr %en_hcb_qe18, align 4
  %prev3.i.i = getelementptr inbounds %struct.bfa_s, ptr %62, i32 0, i32 4, i32 9, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %en_hcb_qe18, ptr %64, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %69 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bfa, align 4
  %cb_reqd23 = getelementptr inbounds %struct.bfa_s, ptr %70, i32 0, i32 4, i32 12
  %71 = ptrtoint ptr %cb_reqd23 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %cb_reqd23, align 4
  br label %sw.epilog

do.body25:                                        ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @bfa_iocfc_sm_disabling, ptr %iocfc, align 8
  %73 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bfa, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_s, ptr %74, i32 0, i32 3
  call void @bfa_ioc_disable(ptr noundef %ioc.i) #10
  br label %sw.epilog

do.body29:                                        ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @bfa_iocfc_sm_dconf_write, ptr %iocfc, align 8
  %76 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bfa, align 4
  call void @bfa_dconf_modexit(ptr noundef %77) #10
  br label %sw.epilog

do.body33:                                        ; preds = %__bfa_trc.exit
  %78 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @bfa_iocfc_sm_failed, ptr %iocfc, align 8
  %79 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bfa, align 4
  %intr_enabled.i.i = getelementptr inbounds %struct.bfa_s, ptr %80, i32 0, i32 13
  %81 = ptrtoint ptr %intr_enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %intr_enabled.i.i, align 8
  %hw_isr_mode_set.i.i = getelementptr inbounds %struct.bfa_s, ptr %80, i32 0, i32 4, i32 23, i32 7
  %82 = ptrtoint ptr %hw_isr_mode_set.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw_isr_mode_set.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %83, null
  br i1 %tobool.not.i.i, label %do.body33.bfa_iocfc_sm_failed_entry.exit_crit_edge, label %if.then.i.i

do.body33.bfa_iocfc_sm_failed_entry.exit_crit_edge: ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_iocfc_sm_failed_entry.exit

if.then.i.i:                                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  call void %83(ptr noundef %80, i32 noundef 0) #10
  br label %bfa_iocfc_sm_failed_entry.exit

bfa_iocfc_sm_failed_entry.exit:                   ; preds = %if.then.i.i, %do.body33.bfa_iocfc_sm_failed_entry.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !96
  call void @arm_heavy_mb() #10
  %intr_mask.i.i = getelementptr inbounds %struct.bfa_s, ptr %80, i32 0, i32 4, i32 22, i32 1
  %84 = ptrtoint ptr %intr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %intr_mask.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 -1) #10, !srcloc !88
  %hw_msix_uninstall.i.i = getelementptr inbounds %struct.bfa_s, ptr %80, i32 0, i32 4, i32 23, i32 6
  %86 = ptrtoint ptr %hw_msix_uninstall.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw_msix_uninstall.i.i, align 8
  call void %87(ptr noundef %80) #10
  %88 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bfa, align 4
  call fastcc void @bfa_iocfc_disable_submod(ptr noundef %89) #10
  %90 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bfa, align 4
  %cb_reqd38 = getelementptr inbounds %struct.bfa_s, ptr %91, i32 0, i32 4, i32 12
  %92 = ptrtoint ptr %cb_reqd38 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cb_reqd38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp39 = icmp eq i32 %93, 0
  br i1 %cmp39, label %bfa_iocfc_sm_failed_entry.exit.sw.epilog_crit_edge, label %if.end42

bfa_iocfc_sm_failed_entry.exit.sw.epilog_crit_edge: ; preds = %bfa_iocfc_sm_failed_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end42:                                         ; preds = %bfa_iocfc_sm_failed_entry.exit
  %op_status45 = getelementptr inbounds %struct.bfa_s, ptr %91, i32 0, i32 4, i32 13
  %94 = ptrtoint ptr %op_status45 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %op_status45, align 8
  %95 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bfa, align 4
  %cbfn50 = getelementptr inbounds %struct.bfa_s, ptr %96, i32 0, i32 4, i32 9, i32 1
  %97 = ptrtoint ptr %cbfn50 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @bfa_iocfc_enable_cb, ptr %cbfn50, align 8
  %98 = load ptr, ptr %bfa, align 4
  %cbarg55 = getelementptr inbounds %struct.bfa_s, ptr %98, i32 0, i32 4, i32 9, i32 5
  %99 = ptrtoint ptr %cbarg55 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %cbarg55, align 8
  %100 = load ptr, ptr %bfa, align 4
  %pre_rmv59 = getelementptr inbounds %struct.bfa_s, ptr %100, i32 0, i32 4, i32 9, i32 3
  %101 = ptrtoint ptr %pre_rmv59 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %pre_rmv59, align 8
  %102 = load ptr, ptr %bfa, align 4
  %en_hcb_qe62 = getelementptr inbounds %struct.bfa_s, ptr %102, i32 0, i32 4, i32 9
  %comp_q65 = getelementptr inbounds %struct.bfa_s, ptr %102, i32 0, i32 7
  %prev.i110 = getelementptr inbounds %struct.bfa_s, ptr %102, i32 0, i32 7, i32 1
  %103 = ptrtoint ptr %prev.i110 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev.i110, align 4
  %call.i.i111 = call zeroext i1 @__list_add_valid(ptr noundef %en_hcb_qe62, ptr noundef %104, ptr noundef %comp_q65) #10
  br i1 %call.i.i111, label %if.end.i.i113, label %if.end42.list_add_tail.exit114_crit_edge

if.end42.list_add_tail.exit114_crit_edge:         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit114

if.end.i.i113:                                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %prev.i110 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %en_hcb_qe62, ptr %prev.i110, align 4
  %106 = ptrtoint ptr %en_hcb_qe62 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %comp_q65, ptr %en_hcb_qe62, align 4
  %prev3.i.i112 = getelementptr inbounds %struct.bfa_s, ptr %102, i32 0, i32 4, i32 9, i32 0, i32 1
  %107 = ptrtoint ptr %prev3.i.i112 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %104, ptr %prev3.i.i112, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %en_hcb_qe62, ptr %104, align 4
  br label %list_add_tail.exit114

list_add_tail.exit114:                            ; preds = %if.end.i.i113, %if.end42.list_add_tail.exit114_crit_edge
  %109 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bfa, align 4
  %cb_reqd69 = getelementptr inbounds %struct.bfa_s, ptr %110, i32 0, i32 4, i32 12
  %111 = ptrtoint ptr %cb_reqd69 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %cb_reqd69, align 4
  br label %sw.epilog

do.body70:                                        ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bfa, align 4
  %trcmod72 = getelementptr inbounds %struct.bfa_s, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %trcmod72 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %trcmod72, align 8
  %or = or i32 %event, -559087616
  %conv73 = zext i32 %or to i64
  call void @__bfa_trc(ptr noundef %115, i32 noundef 1025, i32 noundef 562, i64 noundef %conv73)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 562, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body70, %list_add_tail.exit114, %bfa_iocfc_sm_failed_entry.exit.sw.epilog_crit_edge, %do.body29, %do.body25, %list_add_tail.exit, %do.body.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_dconf_modexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_enable_cb(ptr nocapture noundef readonly %bfa_arg, i32 noundef %compl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %compl)
  %tobool.not = icmp eq i32 %compl, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %bfa_arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa_arg, align 8
  %enable_comp = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 12
  tail call void @complete(ptr noundef %enable_comp) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_iocfc_send_cfg(ptr noundef %bfa_arg) unnamed_addr #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  %cfg_req = alloca %struct.bfi_iocfc_cfg_req_s, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iocfc1 = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg_req) #10
  %cfginfo = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 15
  %0 = call ptr @memset(ptr %cfg_req, i32 255, i32 12)
  %1 = ptrtoint ptr %cfginfo to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cfginfo, align 8
  %num_cqs = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 2, i32 0, i32 8
  %3 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_cqs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp = icmp ugt i8 %4, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !84

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 980, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 2
  %5 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.__bfa_trc.exit_crit_edge

if.end.__bfa_trc.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_cqs, align 4
  %conv24 = zext i8 %10 to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %6, i32 0, i32 6, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %6, i32 0, i32 6, i32 %12, i32 1
  %14 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 981, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %6, i32 0, i32 6, i32 %12, i32 3
  %15 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv24, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %16 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %17 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %19 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %20, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %21 = trunc i64 %18 to i32
  %22 = mul i32 %21, 1000000
  %conv8.i = add i32 %22, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %6, i32 0, i32 6, i32 %12, i32 2
  %23 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %24 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %25, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %27)
  %cmp.i = icmp eq i32 %and.i, %27
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %25, 2
  %and17.i = and i32 %add16.i, 4095
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and17.i, ptr %6, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %if.end.__bfa_trc.exit_crit_edge
  %arrayidx.i121 = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 19, i32 0
  %29 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i121, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %30, align 4
  %arrayidx2.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 3, i32 0
  %32 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 4, i32 0
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 21, i32 0
  %34 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx6.i, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %35, align 4
  %arrayidx.1.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 19, i32 1
  %37 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.1.i, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %38, align 4
  %arrayidx2.1.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 3, i32 1
  %40 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx2.1.i, align 4
  %arrayidx4.1.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 4, i32 1
  %41 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx4.1.i, align 4
  %arrayidx6.1.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 21, i32 1
  %42 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx6.1.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %43, align 4
  %arrayidx.2.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 19, i32 2
  %45 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.2.i, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %46, align 4
  %arrayidx2.2.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 3, i32 2
  %48 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %arrayidx2.2.i, align 4
  %arrayidx4.2.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 4, i32 2
  %49 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx4.2.i, align 4
  %arrayidx6.2.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 21, i32 2
  %50 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx6.2.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %51, align 4
  %arrayidx.3.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 19, i32 3
  %53 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.3.i, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %54, align 4
  %arrayidx2.3.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 3, i32 3
  %56 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %arrayidx2.3.i, align 4
  %arrayidx4.3.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 4, i32 3
  %57 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %arrayidx4.3.i, align 4
  %arrayidx6.3.i = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 21, i32 3
  %58 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx6.3.i, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %59, align 4
  %single_msix_vec = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %2, i32 0, i32 5
  %61 = ptrtoint ptr %single_msix_vec to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %single_msix_vec, align 1
  %msix = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 11
  %62 = ptrtoint ptr %msix to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %msix, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp25 = icmp eq i32 %63, 1
  %spec.store.select = zext i1 %cmp25 to i8
  %64 = ptrtoint ptr %single_msix_vec to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %spec.store.select, ptr %single_msix_vec, align 1
  %endian_sig = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %2, i32 0, i32 3
  %65 = ptrtoint ptr %endian_sig to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 305419896, ptr %endian_sig, align 1
  %66 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %num_cqs, align 4
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %2, align 1
  %num_ioim_reqs = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 2, i32 0, i32 3
  %69 = ptrtoint ptr %num_ioim_reqs to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %num_ioim_reqs, align 2
  %call = call zeroext i16 @bfa_fcpim_get_throttle_cfg(ptr noundef %bfa_arg, i16 noundef zeroext %70) #10
  %num_ioim_reqs34 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %2, i32 0, i32 7
  %71 = ptrtoint ptr %num_ioim_reqs34 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 %call, ptr %num_ioim_reqs34, align 1
  %num_fwtio_reqs = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 2, i32 0, i32 5
  %72 = ptrtoint ptr %num_fwtio_reqs to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %num_fwtio_reqs, align 2
  %num_fwtio_reqs36 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %2, i32 0, i32 8
  %74 = ptrtoint ptr %num_fwtio_reqs36 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %73, ptr %num_fwtio_reqs36, align 1
  %cfgrsp_addr = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %2, i32 0, i32 16
  %pa = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 16, i32 1
  %75 = ptrtoint ptr %pa to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %pa, align 8
  %conv.i = trunc i64 %76 to i32
  %77 = ptrtoint ptr %cfgrsp_addr to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %conv.i, ptr %cfgrsp_addr, align 1
  %shr.i = lshr i64 %76, 32
  %conv1.i = trunc i64 %shr.i to i32
  %addr_hi.i = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %2, i32 0, i32 16, i32 0, i32 1
  %78 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %conv1.i, ptr %addr_hi.i, align 1
  %79 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %num_cqs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp40143.not = icmp eq i8 %80, 0
  br i1 %cmp40143.not, label %__bfa_trc.exit.for.end_crit_edge, label %for.body.lr.ph

__bfa_trc.exit.for.end_crit_edge:                 ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %__bfa_trc.exit
  %drvcfg = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 2, i32 1
  %num_rspq_elems = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 2, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0144 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bfi_iocfc_cfg_s, ptr %2, i32 0, i32 9, i32 %i.0144
  %pa44 = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 18, i32 %i.0144, i32 1
  %81 = ptrtoint ptr %pa44 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %pa44, align 8
  %conv.i122 = trunc i64 %82 to i32
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %conv.i122, ptr %arrayidx, align 1
  %shr.i123 = lshr i64 %82, 32
  %conv1.i124 = trunc i64 %shr.i123 to i32
  %addr_hi.i125 = getelementptr inbounds %struct.anon.4, ptr %arrayidx, i32 0, i32 1
  %84 = ptrtoint ptr %addr_hi.i125 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %conv1.i124, ptr %addr_hi.i125, align 1
  %arrayidx45 = getelementptr %struct.bfi_iocfc_cfg_s, ptr %2, i32 0, i32 10, i32 %i.0144
  %pa47 = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 19, i32 %i.0144, i32 1
  %85 = ptrtoint ptr %pa47 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %pa47, align 8
  %conv.i126 = trunc i64 %86 to i32
  %87 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %conv.i126, ptr %arrayidx45, align 1
  %shr.i127 = lshr i64 %86, 32
  %conv1.i128 = trunc i64 %shr.i127 to i32
  %addr_hi.i129 = getelementptr inbounds %struct.anon.4, ptr %arrayidx45, i32 0, i32 1
  %88 = ptrtoint ptr %addr_hi.i129 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %conv1.i128, ptr %addr_hi.i129, align 1
  %89 = ptrtoint ptr %drvcfg to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %drvcfg, align 4
  %arrayidx48 = getelementptr %struct.bfi_iocfc_cfg_s, ptr %2, i32 0, i32 11, i32 %i.0144
  %91 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 %90, ptr %arrayidx48, align 1
  %arrayidx49 = getelementptr %struct.bfi_iocfc_cfg_s, ptr %2, i32 0, i32 12, i32 %i.0144
  %pa52 = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 20, i32 %i.0144, i32 1
  %92 = ptrtoint ptr %pa52 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %pa52, align 8
  %conv.i130 = trunc i64 %93 to i32
  %94 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %conv.i130, ptr %arrayidx49, align 1
  %shr.i131 = lshr i64 %93, 32
  %conv1.i132 = trunc i64 %shr.i131 to i32
  %addr_hi.i133 = getelementptr inbounds %struct.anon.4, ptr %arrayidx49, i32 0, i32 1
  %95 = ptrtoint ptr %addr_hi.i133 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %conv1.i132, ptr %addr_hi.i133, align 1
  %arrayidx53 = getelementptr %struct.bfi_iocfc_cfg_s, ptr %2, i32 0, i32 13, i32 %i.0144
  %pa55 = getelementptr %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 21, i32 %i.0144, i32 1
  %96 = ptrtoint ptr %pa55 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %pa55, align 8
  %conv.i134 = trunc i64 %97 to i32
  %98 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 %conv.i134, ptr %arrayidx53, align 1
  %shr.i135 = lshr i64 %97, 32
  %conv1.i136 = trunc i64 %shr.i135 to i32
  %addr_hi.i137 = getelementptr inbounds %struct.anon.4, ptr %arrayidx53, i32 0, i32 1
  %99 = ptrtoint ptr %addr_hi.i137 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %conv1.i136, ptr %addr_hi.i137, align 1
  %100 = ptrtoint ptr %num_rspq_elems to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %num_rspq_elems, align 2
  %arrayidx57 = getelementptr %struct.bfi_iocfc_cfg_s, ptr %2, i32 0, i32 14, i32 %i.0144
  %102 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 2)
  store i16 %101, ptr %arrayidx57, align 1
  %inc = add nuw nsw i32 %i.0144, 1
  %103 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %num_cqs, align 4
  %conv39 = zext i8 %104 to i32
  %cmp40 = icmp ult i32 %inc, %conv39
  br i1 %cmp40, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %__bfa_trc.exit.for.end_crit_edge
  %105 = ptrtoint ptr %iocfc1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %iocfc1, align 8
  %cmp58 = icmp eq ptr %106, @bfa_iocfc_sm_init_cfg_wait
  br i1 %cmp58, label %if.then60, label %for.end.do.body62_crit_edge

for.end.do.body62_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body62

if.then60:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %intr_attr = getelementptr inbounds %struct.bfi_iocfc_cfg_s, ptr %2, i32 0, i32 18
  %107 = ptrtoint ptr %intr_attr to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %intr_attr, align 1
  br label %do.body62

do.body62:                                        ; preds = %if.then60, %for.end.do.body62_crit_edge
  %108 = getelementptr inbounds %struct.bfi_iocfc_cfg_req_s, ptr %cfg_req, i32 0, i32 1, i32 0, i32 1
  %109 = getelementptr inbounds %struct.bfi_iocfc_cfg_req_s, ptr %cfg_req, i32 0, i32 1
  %110 = getelementptr inbounds %struct.bfi_mhdr_s, ptr %cfg_req, i32 0, i32 2
  %111 = getelementptr inbounds %struct.bfi_mhdr_s, ptr %cfg_req, i32 0, i32 1
  %112 = ptrtoint ptr %cfg_req to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 6, ptr %cfg_req, align 1
  %113 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %111, align 1
  %ioc = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 3
  %pci_func = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 3, i32 2, i32 1
  %114 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %pci_func, align 4
  %shl = shl i8 %115, 1
  %port_id = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 3, i32 19
  %116 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %port_id, align 8
  %or = or i8 %shl, %117
  %fn_lpu = getelementptr inbounds %struct.anon.3, ptr %110, i32 0, i32 1
  %118 = ptrtoint ptr %fn_lpu to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %or, ptr %fn_lpu, align 1
  %pa72 = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 14, i32 1
  %119 = ptrtoint ptr %pa72 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %pa72, align 8
  %conv.i138 = trunc i64 %120 to i32
  %121 = ptrtoint ptr %109 to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 %conv.i138, ptr %109, align 1
  %shr.i139 = lshr i64 %120, 32
  %conv1.i140 = trunc i64 %shr.i139 to i32
  %122 = ptrtoint ptr %108 to i32
  call void @__asan_storeN_noabort(i32 %122, i32 4)
  store i32 %conv1.i140, ptr %108, align 1
  call void @bfa_ioc_mbox_send(ptr noundef %ioc, ptr noundef nonnull %cfg_req, i32 noundef 12) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg_req) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @bfa_fcpim_get_throttle_cfg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_iocfc_disable_submod(ptr noundef %bfa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %submod_enabled = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 11
  %0 = ptrtoint ptr %submod_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %submod_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bfa_fcdiag_iocdisable(ptr noundef %bfa) #10
  tail call void @bfa_fcport_iocdisable(ptr noundef %bfa) #10
  tail call void @bfa_fcxp_iocdisable(ptr noundef %bfa) #10
  tail call void @bfa_lps_iocdisable(ptr noundef %bfa) #10
  tail call void @bfa_rport_iocdisable(ptr noundef %bfa) #10
  tail call void @bfa_fcp_iocdisable(ptr noundef %bfa) #10
  tail call void @bfa_dconf_iocdisable(ptr noundef %bfa) #10
  %2 = ptrtoint ptr %submod_enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %submod_enabled, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcdiag_iocdisable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcport_iocdisable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcxp_iocdisable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_lps_iocdisable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_rport_iocdisable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcp_iocdisable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_dconf_iocdisable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_init_cb(ptr nocapture noundef readonly %bfa_arg, i32 noundef %complete) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %complete)
  %tobool.not = icmp eq i32 %complete, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %bfa_arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa_arg, align 8
  %op_status = getelementptr inbounds %struct.bfa_s, ptr %bfa_arg, i32 0, i32 4, i32 13
  %2 = ptrtoint ptr %op_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op_status, align 8
  tail call void @bfa_cb_init(ptr noundef %1, i32 noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_cb_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_dconf_modinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_sm_disabled(ptr nocapture noundef %iocfc, i32 noundef %event) #0 align 64 {
entry:
  %ts.i21 = alloca %struct.timespec64, align 8
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa = getelementptr inbounds %struct.bfa_iocfc_s, ptr %iocfc, i32 0, i32 1
  %0 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa, align 4
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bfa_trc.exit_crit_edge

entry.__bfa_trc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %entry
  %conv = zext i32 %event to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 1
  %9 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 605, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 3
  %10 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %11 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %12 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %15, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %16 = trunc i64 %13 to i32
  %17 = mul i32 %16, 1000000
  %conv8.i = add i32 %17, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 2
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %19 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %20, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %22)
  %cmp.i = icmp eq i32 %and.i, %22
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %20, 2
  %and17.i = and i32 %add16.i, 4095
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and17.i, ptr %3, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %entry.__bfa_trc.exit_crit_edge
  %24 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %event, label %do.body5 [
    i32 3, label %do.body
    i32 4, label %do.body2
  ]

do.body:                                          ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_iocfc_sm_dconf_write, ptr %iocfc, align 8
  %26 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bfa, align 4
  call void @bfa_dconf_modexit(ptr noundef %27) #10
  br label %sw.epilog

do.body2:                                         ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfa_iocfc_sm_enabling, ptr %iocfc, align 8
  %29 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bfa, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_s, ptr %30, i32 0, i32 3
  call void @bfa_ioc_enable(ptr noundef %ioc.i) #10
  br label %sw.epilog

do.body5:                                         ; preds = %__bfa_trc.exit
  %31 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bfa, align 4
  %trcmod7 = getelementptr inbounds %struct.bfa_s, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %trcmod7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %trcmod7, align 8
  %stopped.i22 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %stopped.i22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stopped.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i23 = icmp eq i32 %36, 0
  br i1 %tobool.not.i23, label %if.end.i35, label %do.body5.__bfa_trc.exit39_crit_edge

do.body5.__bfa_trc.exit39_crit_edge:              ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit39

if.end.i35:                                       ; preds = %do.body5
  %or = or i32 %event, -559087616
  %conv8 = zext i32 %or to i64
  %tail1.i24 = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %tail1.i24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tail1.i24, align 4
  %arrayidx.i25 = getelementptr %struct.bfa_trc_mod_s, ptr %34, i32 0, i32 6, i32 %38
  %39 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1025, ptr %arrayidx.i25, align 8
  %line5.i26 = getelementptr %struct.bfa_trc_mod_s, ptr %34, i32 0, i32 6, i32 %38, i32 1
  %40 = ptrtoint ptr %line5.i26 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 615, ptr %line5.i26, align 2
  %data6.i27 = getelementptr %struct.bfa_trc_mod_s, ptr %34, i32 0, i32 6, i32 %38, i32 3
  %41 = ptrtoint ptr %data6.i27 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv8, ptr %data6.i27, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i21) #10
  %42 = call ptr @memset(ptr %ts.i21, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i21) #10
  %43 = ptrtoint ptr %ts.i21 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %ts.i21, align 8
  %tv_nsec.i28 = getelementptr inbounds %struct.timespec64, ptr %ts.i21, i32 0, i32 1
  %45 = ptrtoint ptr %tv_nsec.i28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tv_nsec.i28, align 8
  %div.i29 = sdiv i32 %46, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i21) #10
  %47 = trunc i64 %44 to i32
  %48 = mul i32 %47, 1000000
  %conv8.i30 = add i32 %48, %div.i29
  %timestamp.i31 = getelementptr %struct.bfa_trc_mod_s, ptr %34, i32 0, i32 6, i32 %38, i32 2
  %49 = ptrtoint ptr %timestamp.i31 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv8.i30, ptr %timestamp.i31, align 4
  %50 = ptrtoint ptr %tail1.i24 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tail1.i24, align 4
  %add10.i32 = add i32 %51, 1
  %and.i33 = and i32 %add10.i32, 4095
  store i32 %and.i33, ptr %tail1.i24, align 4
  %52 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %34, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i33, i32 %53)
  %cmp.i34 = icmp eq i32 %and.i33, %53
  br i1 %cmp.i34, label %if.then14.i38, label %if.end.i35.__bfa_trc.exit39_crit_edge

if.end.i35.__bfa_trc.exit39_crit_edge:            ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit39

if.then14.i38:                                    ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i36 = add i32 %51, 2
  %and17.i37 = and i32 %add16.i36, 4095
  %54 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and17.i37, ptr %34, align 8
  br label %__bfa_trc.exit39

__bfa_trc.exit39:                                 ; preds = %if.then14.i38, %if.end.i35.__bfa_trc.exit39_crit_edge, %do.body5.__bfa_trc.exit39_crit_edge
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 615, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %__bfa_trc.exit39, %do.body2, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_sm_enabling(ptr nocapture noundef %iocfc, i32 noundef %event) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa = getelementptr inbounds %struct.bfa_iocfc_s, ptr %iocfc, i32 0, i32 1
  %0 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa, align 4
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bfa_trc.exit_crit_edge

entry.__bfa_trc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.end.i:                                         ; preds = %entry
  %conv = zext i32 %event to i64
  %tail1.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail1.i, align 4
  %arrayidx.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1025, ptr %arrayidx.i, align 8
  %line5.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 1
  %9 = ptrtoint ptr %line5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 490, ptr %line5.i, align 2
  %data6.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 3
  %10 = ptrtoint ptr %data6.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %data6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %11 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #10
  %12 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %15, 1000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %16 = trunc i64 %13 to i32
  %17 = mul i32 %16, 1000000
  %conv8.i = add i32 %17, %div.i
  %timestamp.i = getelementptr %struct.bfa_trc_mod_s, ptr %3, i32 0, i32 6, i32 %7, i32 2
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv8.i, ptr %timestamp.i, align 4
  %19 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail1.i, align 4
  %add10.i = add i32 %20, 1
  %and.i = and i32 %add10.i, 4095
  store i32 %and.i, ptr %tail1.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %22)
  %cmp.i = icmp eq i32 %and.i, %22
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.__bfa_trc.exit_crit_edge

if.end.i.__bfa_trc.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bfa_trc.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add16.i = add i32 %20, 2
  %and17.i = and i32 %add16.i, 4095
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and17.i, ptr %3, align 8
  br label %__bfa_trc.exit

__bfa_trc.exit:                                   ; preds = %if.then14.i, %if.end.i.__bfa_trc.exit_crit_edge, %entry.__bfa_trc.exit_crit_edge
  %24 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %event, label %do.body36 [
    i32 6, label %do.body
    i32 5, label %do.body2
    i32 3, label %do.body6
    i32 8, label %do.body10
  ]

do.body:                                          ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_iocfc_sm_cfg_wait, ptr %iocfc, align 8
  %26 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bfa, align 4
  call fastcc void @bfa_iocfc_send_cfg(ptr noundef %27) #10
  br label %sw.epilog

do.body2:                                         ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfa_iocfc_sm_disabling, ptr %iocfc, align 8
  %29 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bfa, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_s, ptr %30, i32 0, i32 3
  call void @bfa_ioc_disable(ptr noundef %ioc.i) #10
  br label %sw.epilog

do.body6:                                         ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @bfa_iocfc_sm_dconf_write, ptr %iocfc, align 8
  %32 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bfa, align 4
  call void @bfa_dconf_modexit(ptr noundef %33) #10
  br label %sw.epilog

do.body10:                                        ; preds = %__bfa_trc.exit
  %34 = ptrtoint ptr %iocfc to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @bfa_iocfc_sm_failed, ptr %iocfc, align 8
  %35 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bfa, align 4
  %intr_enabled.i.i = getelementptr inbounds %struct.bfa_s, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %intr_enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %intr_enabled.i.i, align 8
  %hw_isr_mode_set.i.i = getelementptr inbounds %struct.bfa_s, ptr %36, i32 0, i32 4, i32 23, i32 7
  %38 = ptrtoint ptr %hw_isr_mode_set.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_isr_mode_set.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %do.body10.bfa_iocfc_sm_failed_entry.exit_crit_edge, label %if.then.i.i

do.body10.bfa_iocfc_sm_failed_entry.exit_crit_edge: ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_iocfc_sm_failed_entry.exit

if.then.i.i:                                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  call void %39(ptr noundef %36, i32 noundef 0) #10
  br label %bfa_iocfc_sm_failed_entry.exit

bfa_iocfc_sm_failed_entry.exit:                   ; preds = %if.then.i.i, %do.body10.bfa_iocfc_sm_failed_entry.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !96
  call void @arm_heavy_mb() #10
  %intr_mask.i.i = getelementptr inbounds %struct.bfa_s, ptr %36, i32 0, i32 4, i32 22, i32 1
  %40 = ptrtoint ptr %intr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %intr_mask.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 -1) #10, !srcloc !88
  %hw_msix_uninstall.i.i = getelementptr inbounds %struct.bfa_s, ptr %36, i32 0, i32 4, i32 23, i32 6
  %42 = ptrtoint ptr %hw_msix_uninstall.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_msix_uninstall.i.i, align 8
  call void %43(ptr noundef %36) #10
  %44 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bfa, align 4
  call fastcc void @bfa_iocfc_disable_submod(ptr noundef %45) #10
  %46 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bfa, align 4
  %cb_reqd = getelementptr inbounds %struct.bfa_s, ptr %47, i32 0, i32 4, i32 12
  %48 = ptrtoint ptr %cb_reqd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cb_reqd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp = icmp eq i32 %49, 0
  br i1 %cmp, label %bfa_iocfc_sm_failed_entry.exit.sw.epilog_crit_edge, label %if.end

bfa_iocfc_sm_failed_entry.exit.sw.epilog_crit_edge: ; preds = %bfa_iocfc_sm_failed_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end:                                           ; preds = %bfa_iocfc_sm_failed_entry.exit
  %op_status = getelementptr inbounds %struct.bfa_s, ptr %47, i32 0, i32 4, i32 13
  %50 = ptrtoint ptr %op_status to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %op_status, align 8
  %51 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bfa, align 4
  %cbfn = getelementptr inbounds %struct.bfa_s, ptr %52, i32 0, i32 4, i32 9, i32 1
  %53 = ptrtoint ptr %cbfn to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @bfa_iocfc_enable_cb, ptr %cbfn, align 8
  %54 = load ptr, ptr %bfa, align 4
  %cbarg = getelementptr inbounds %struct.bfa_s, ptr %54, i32 0, i32 4, i32 9, i32 5
  %55 = ptrtoint ptr %cbarg to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %cbarg, align 8
  %56 = load ptr, ptr %bfa, align 4
  %pre_rmv = getelementptr inbounds %struct.bfa_s, ptr %56, i32 0, i32 4, i32 9, i32 3
  %57 = ptrtoint ptr %pre_rmv to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %pre_rmv, align 8
  %58 = load ptr, ptr %bfa, align 4
  %en_hcb_qe30 = getelementptr inbounds %struct.bfa_s, ptr %58, i32 0, i32 4, i32 9
  %comp_q = getelementptr inbounds %struct.bfa_s, ptr %58, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.bfa_s, ptr %58, i32 0, i32 7, i32 1
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %en_hcb_qe30, ptr noundef %60, ptr noundef %comp_q) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %en_hcb_qe30, ptr %prev.i, align 4
  %62 = ptrtoint ptr %en_hcb_qe30 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %comp_q, ptr %en_hcb_qe30, align 4
  %prev3.i.i = getelementptr inbounds %struct.bfa_s, ptr %58, i32 0, i32 4, i32 9, i32 0, i32 1
  %63 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %en_hcb_qe30, ptr %60, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %65 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bfa, align 4
  %cb_reqd35 = getelementptr inbounds %struct.bfa_s, ptr %66, i32 0, i32 4, i32 12
  %67 = ptrtoint ptr %cb_reqd35 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %cb_reqd35, align 4
  br label %sw.epilog

do.body36:                                        ; preds = %__bfa_trc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bfa, align 4
  %trcmod38 = getelementptr inbounds %struct.bfa_s, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %trcmod38 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %trcmod38, align 8
  %or = or i32 %event, -559087616
  %conv39 = zext i32 %or to i64
  call void @__bfa_trc(ptr noundef %71, i32 noundef 1025, i32 noundef 517, i64 noundef %conv39)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 517, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body36, %list_add_tail.exit, %bfa_iocfc_sm_failed_entry.exit.sw.epilog_crit_edge, %do.body6, %do.body2, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_disable_cb(ptr nocapture noundef readonly %bfa_arg, i32 noundef %compl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %compl)
  %tobool.not = icmp eq i32 %compl, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %bfa_arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa_arg, align 8
  %disable_comp = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 13
  tail call void @complete(ptr noundef %disable_comp) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocfc_stop_cb(ptr nocapture noundef readonly %bfa_arg, i32 noundef %compl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %compl)
  %tobool.not = icmp eq i32 %compl, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %bfa_arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfa_arg, align 8
  %comp = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 10
  tail call void @complete(ptr noundef %comp) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcxp_res_recfg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_uf_res_recfg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_rport_res_recfg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcp_res_recfg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_tskim_res_recfg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_port_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_port_mem_claim(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ablk_attach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ablk_memclaim(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_cee_attach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_cee_mem_claim(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_sfp_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_sfp_memclaim(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_flash_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_flash_memclaim(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_diag_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcport_beacon(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_diag_memclaim(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_phy_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_phy_memclaim(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fru_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fru_memclaim(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 895, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 1670, i32 8}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 1679, i32 8}
!6 = !{ptr @bfa_get_pciids.__pciids, !7, !"__pciids", i1 false, i1 false}
!7 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 1945, i32 28}
!8 = !{ptr @bfa_iocfc_cbfn, !9, !"bfa_iocfc_cbfn", i1 false, i1 false}
!9 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 241, i32 30}
!10 = !{ptr @bfa_isrs, !11, !"bfa_isrs", i1 false, i1 false}
!11 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 20, i32 24}
!12 = distinct !{null, !13, !"__trc_fileno", i1 false, i1 false}
!13 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 15, i32 1}
!14 = !{ptr @bfa_mbox_isrs, !15, !"bfa_mbox_isrs", i1 false, i1 false}
!15 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 57, i32 31}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 263, i32 3}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @bfa_iocfc_sm_stopped._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @bfa_iocfc_sm_stopped._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 296, i32 3}
!23 = !{ptr @bfa_iocfc_sm_initing._entry, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @bfa_iocfc_sm_initing._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 329, i32 3}
!27 = !{ptr @bfa_iocfc_sm_dconf_read._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @bfa_iocfc_sm_dconf_read._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 362, i32 3}
!31 = !{ptr @bfa_iocfc_sm_init_cfg_wait._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @bfa_iocfc_sm_init_cfg_wait._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 394, i32 3}
!35 = !{ptr @bfa_iocfc_sm_init_cfg_done._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @bfa_iocfc_sm_init_cfg_done._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 645, i32 3}
!39 = !{ptr @bfa_iocfc_sm_failed._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @bfa_iocfc_sm_failed._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 444, i32 3}
!43 = !{ptr @bfa_iocfc_sm_dconf_write._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @bfa_iocfc_sm_dconf_write._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 562, i32 3}
!47 = !{ptr @bfa_iocfc_sm_cfg_wait._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @bfa_iocfc_sm_cfg_wait._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 587, i32 3}
!51 = !{ptr @bfa_iocfc_sm_disabling._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @bfa_iocfc_sm_disabling._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 615, i32 3}
!55 = !{ptr @bfa_iocfc_sm_disabled._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @bfa_iocfc_sm_disabled._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 517, i32 3}
!59 = !{ptr @bfa_iocfc_sm_enabling._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @bfa_iocfc_sm_enabling._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 476, i32 3}
!63 = !{ptr @bfa_iocfc_sm_stopping._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @bfa_iocfc_sm_stopping._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 683, i32 3}
!67 = !{ptr @bfa_iocfc_sm_init_failed._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @bfa_iocfc_sm_init_failed._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/bfa/bfa_core.c", i32 422, i32 3}
!71 = !{ptr @bfa_iocfc_sm_operational._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @bfa_iocfc_sm_operational._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 5039459}
!83 = !{i64 2156263995}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{i64 2156270033}
!86 = !{i64 2156271335}
!87 = !{i64 2156271575}
!88 = !{i64 5039041}
!89 = !{i64 2156272341}
!90 = !{i64 2156272581}
!91 = !{i64 2156273025}
!92 = !{i64 2156264599}
!93 = !{i64 2156264853}
!94 = !{i64 2156267332}
!95 = !{i64 2156267752}
!96 = !{i64 2156268474}
!97 = !{i64 2156284657}
!98 = !{!"branch_weights", i32 2000, i32 1}
