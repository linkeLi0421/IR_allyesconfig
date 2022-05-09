; ModuleID = '/llk/IR_all_yes/drivers/scsi/bfa/bfa_fcs.c_pt.bc'
source_filename = "../drivers/scsi/bfa/bfa_fcs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bfa_fcs_s = type { ptr, ptr, ptr, i32, i32, i32, i16, %struct.bfa_fcs_driver_info_s, %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_stats_s, %struct.bfa_wc_s, i32, i32 }
%struct.bfa_fcs_driver_info_s = type { [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8] }
%struct.bfa_fcs_fabric_s = type { %struct.list_head, ptr, ptr, %struct.bfa_fcs_lport_s, i32, i32, i8, i8, i8, i16, i16, i16, i16, %struct.list_head, %struct.list_head, ptr, %struct.bfa_timer_s, i64, i32, %struct.bfa_timer_s, %union.anon.90, %struct.bfa_wc_s, %struct.bfa_vf_stats_s, ptr, [16 x i8], %struct.bfa_wc_s }
%struct.bfa_fcs_lport_s = type { %struct.list_head, ptr, ptr, %struct.bfa_lport_cfg_s, %struct.bfa_timer_s, [3 x i8], i8, i16, %struct.list_head, ptr, %union.bfa_fcs_lport_topo_u, ptr, ptr, ptr, %struct.bfa_fcxp_wqe_s, %struct.bfa_lport_stats_s, %struct.bfa_wc_s }
%struct.bfa_lport_cfg_s = type { i64, i64, %struct.bfa_lport_symname_s, %struct.bfa_lport_symname_s, i32, i32, i32, [16 x i8], [4 x i8] }
%struct.bfa_lport_symname_s = type { [128 x i8] }
%union.bfa_fcs_lport_topo_u = type { %struct.bfa_fcs_lport_n2n_s, [320 x i8] }
%struct.bfa_fcs_lport_n2n_s = type { i32, i16, i64 }
%struct.bfa_fcxp_wqe_s = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.bfa_lport_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.bfa_timer_s = type { %struct.list_head, ptr, ptr, i32 }
%union.anon.90 = type { i16 }
%struct.bfa_vf_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_fcs_stats_s = type { %struct.anon.91 }
%struct.anon.91 = type { i32, i32, i32 }
%struct.bfa_wc_s = type { ptr, ptr, i32 }
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
%struct.bfi_ioc_attr_s = type { i64, i64, %struct.mac_s, i8, i8, i64, i64, %struct.mac_s, i16, %struct.mac_s, i16, [12 x i8], i8, i8, i8, i8, i32, i16, i8, i8, [64 x i8], [64 x i8], %struct.bfa_mfg_vpd_s, i32, i8, i8, i16, [16 x i8] }
%struct.mac_s = type { [6 x i8] }
%struct.bfa_mfg_vpd_s = type { i8, [3 x i8], i8, i8, i8, i8, [512 x i8] }
%struct.bfad_s = type { ptr, %struct.list_head, %struct.bfa_s, %struct.bfa_fcs_s, ptr, ptr, %struct.bfa_pcidev_s, %struct.bfa_ioc_pci_attr_s, ptr, ptr, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i32, %struct.bfad_port_s, %struct.bfa_meminfo_s, %struct.bfa_iocfc_cfg_s, i32, i32, %struct.spinlock, ptr, %struct.bfad_cfg_param_s, [22 x %struct.bfad_msix_s], i32, [64 x i8], [64 x i8], %struct.timer_list, i32, ptr, ptr, %struct.bfa_plog_s, i32, %union.bfad_tmp_buf, %struct.fc_host_statistics, %struct.list_head, ptr, i32, [5 x ptr], %struct.list_head, %struct.list_head, [512 x %struct.bfa_aen_entry_s], %struct.spinlock, %struct.list_head }
%struct.bfa_ioc_pci_attr_s = type { i16, i16, i16, i16, i32, i32, [8 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.bfi_pbc_vport_s = type { i64, i64 }
%struct.bfa_lps_s = type { %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i64, i64, i64, i64, %struct.mac_s, %struct.mac_s, %struct.bfa_reqq_wait_s, ptr, %struct.bfa_cb_qe_s, ptr, i32 }
%struct.bfa_fcs_vport_s = type { %struct.list_head, ptr, %struct.bfa_fcs_lport_s, %struct.bfa_timer_s, ptr, %struct.bfa_vport_stats_s, ptr, i32 }
%struct.bfa_vport_stats_s = type { %struct.bfa_lport_stats_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fchs_s = type { [12 x i8], i8, i8, i16, i16, i16, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.92, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.92 = type { ptr }
%struct.bfad_im_s = type { ptr, ptr, [20 x i8], %struct.work_struct }
%struct.bfa_uf_s = type { %struct.list_head, ptr, i16, i16, i16, i16, ptr, i16, i16, ptr, i64, %struct.bfa_cb_qe_s, [2 x %struct.bfa_sge_s] }
%struct.bfa_sge_s = type { i32, ptr }
%struct.fc_vft_s = type { i64 }

@bfa_fcs_fabric_sm_auth_failed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Assertion failure: %s:%d: %d\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bfa_fcs_fabric_sm_auth_failed\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/scsi/bfa/bfa_fcs.c\00", [37 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_sm_auth_failed._entry_ptr = internal global ptr @bfa_fcs_fabric_sm_auth_failed._entry, section ".printk_index", align 4
@bfa_fcs_fabric_sm_loopback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bfa_fcs_fabric_sm_loopback\00", [37 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_sm_loopback._entry_ptr = internal global ptr @bfa_fcs_fabric_sm_loopback._entry, section ".printk_index", align 4
@bfa_fcs_fabric_sm_online._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bfa_fcs_fabric_sm_online\00", [39 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_sm_online._entry_ptr = internal global ptr @bfa_fcs_fabric_sm_online._entry, section ".printk_index", align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" | \00", [28 x i8] zeroinitializer }, align 32
@bfa_log_level = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_set_fabric_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1415, ptr @.str.6, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Base port WWN = %s Fabric WWN = %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bfa_fcs_fabric_set_fabric_name\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_set_fabric_name._entry_ptr = internal global ptr @bfa_fcs_fabric_set_fabric_name._entry, section ".printk_index", align 4
@bfa_fcs_fabric_sm_linkdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.10, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bfa_fcs_fabric_sm_linkdown\00", [37 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_sm_linkdown._entry_ptr = internal global ptr @bfa_fcs_fabric_sm_linkdown._entry, section ".printk_index", align 4
@bfa_fcs_fabric_sm_flogi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.11, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bfa_fcs_fabric_sm_flogi\00", [40 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_sm_flogi._entry_ptr = internal global ptr @bfa_fcs_fabric_sm_flogi._entry, section ".printk_index", align 4
@bfa_fcs_fabric_sm_auth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.12, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bfa_fcs_fabric_sm_auth\00", [41 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_sm_auth._entry_ptr = internal global ptr @bfa_fcs_fabric_sm_auth._entry, section ".printk_index", align 4
@bfa_fcs_fabric_sm_evfp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.13, ptr @.str.2, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bfa_fcs_fabric_sm_evfp\00", [41 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_sm_evfp._entry_ptr = internal global ptr @bfa_fcs_fabric_sm_evfp._entry, section ".printk_index", align 4
@bfa_fcs_fabric_sm_isolated._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 640, ptr @.str.16, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"Port is isolated due to VF_ID mismatch. PWWN: %s Port VF_ID: %04x switch port VF_ID: %04x.\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bfa_fcs_fabric_sm_isolated\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_sm_isolated._entry_ptr = internal global ptr @bfa_fcs_fabric_sm_isolated._entry, section ".printk_index", align 4
@bfa_fcs_fabric_sm_flogi_retry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.17, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bfa_fcs_fabric_sm_flogi_retry\00", [34 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_sm_flogi_retry._entry_ptr = internal global ptr @bfa_fcs_fabric_sm_flogi_retry._entry, section ".printk_index", align 4
@bfa_fcs_fabric_sm_nofabric._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.18, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bfa_fcs_fabric_sm_nofabric\00", [37 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_sm_nofabric._entry_ptr = internal global ptr @bfa_fcs_fabric_sm_nofabric._entry, section ".printk_index", align 4
@bfa_fcs_fabric_sm_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.19, ptr @.str.2, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bfa_fcs_fabric_sm_cleanup\00", [38 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_sm_cleanup._entry_ptr = internal global ptr @bfa_fcs_fabric_sm_cleanup._entry, section ".printk_index", align 4
@bfa_fcs_fabric_sm_created._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.20, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bfa_fcs_fabric_sm_created\00", [38 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_sm_created._entry_ptr = internal global ptr @bfa_fcs_fabric_sm_created._entry, section ".printk_index", align 4
@bfa_fcs_fabric_sm_deleting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.21, ptr @.str.2, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bfa_fcs_fabric_sm_deleting\00", [37 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_sm_deleting._entry_ptr = internal global ptr @bfa_fcs_fabric_sm_deleting._entry, section ".printk_index", align 4
@bfa_fcs_fabric_sm_stopping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.22, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bfa_fcs_fabric_sm_stopping\00", [37 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_sm_stopping._entry_ptr = internal global ptr @bfa_fcs_fabric_sm_stopping._entry, section ".printk_index", align 4
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\00", [56 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_sm_uninit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.24, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bfa_fcs_fabric_sm_uninit\00", [39 x i8] zeroinitializer }, align 32
@bfa_fcs_fabric_sm_uninit._entry_ptr = internal global ptr @bfa_fcs_fabric_sm_uninit._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 4, i64 6, i64 15, i64 17]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 14]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 12, i64 13, i64 17]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 18]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 6, i64 29, i64 134]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.34 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 5, i64 6, i64 7, i64 15]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 18, i64 19]
@__sancov_gen_cov_switch_values.36 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 8, i64 12, i64 13]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 11]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 9]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 16]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 475, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 501, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 583, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 766, i32 38 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1413, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 316, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 379, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 449, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 607, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 636, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 409, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 537, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 733, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 269, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 667, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 704, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [29 x i8] c"../drivers/scsi/bfa/bfa_cs.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 296, i32 19 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private constant [30 x i8] c"../drivers/scsi/bfa/bfa_fcs.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 222, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @bfa_fcs_fabric_set_fabric_name._entry, ptr @bfa_fcs_fabric_set_fabric_name._entry_ptr, ptr @bfa_fcs_fabric_sm_auth._entry, ptr @bfa_fcs_fabric_sm_auth._entry_ptr, ptr @bfa_fcs_fabric_sm_auth_failed._entry, ptr @bfa_fcs_fabric_sm_auth_failed._entry_ptr, ptr @bfa_fcs_fabric_sm_cleanup._entry, ptr @bfa_fcs_fabric_sm_cleanup._entry_ptr, ptr @bfa_fcs_fabric_sm_created._entry, ptr @bfa_fcs_fabric_sm_created._entry_ptr, ptr @bfa_fcs_fabric_sm_deleting._entry, ptr @bfa_fcs_fabric_sm_deleting._entry_ptr, ptr @bfa_fcs_fabric_sm_evfp._entry, ptr @bfa_fcs_fabric_sm_evfp._entry_ptr, ptr @bfa_fcs_fabric_sm_flogi._entry, ptr @bfa_fcs_fabric_sm_flogi._entry_ptr, ptr @bfa_fcs_fabric_sm_flogi_retry._entry, ptr @bfa_fcs_fabric_sm_flogi_retry._entry_ptr, ptr @bfa_fcs_fabric_sm_isolated._entry, ptr @bfa_fcs_fabric_sm_isolated._entry_ptr, ptr @bfa_fcs_fabric_sm_linkdown._entry, ptr @bfa_fcs_fabric_sm_linkdown._entry_ptr, ptr @bfa_fcs_fabric_sm_loopback._entry, ptr @bfa_fcs_fabric_sm_loopback._entry_ptr, ptr @bfa_fcs_fabric_sm_nofabric._entry, ptr @bfa_fcs_fabric_sm_nofabric._entry_ptr, ptr @bfa_fcs_fabric_sm_online._entry, ptr @bfa_fcs_fabric_sm_online._entry_ptr, ptr @bfa_fcs_fabric_sm_stopping._entry, ptr @bfa_fcs_fabric_sm_stopping._entry_ptr, ptr @bfa_fcs_fabric_sm_uninit._entry, ptr @bfa_fcs_fabric_sm_uninit._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_fabric_sm_auth_failed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_fabric_sm_loopback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_fabric_sm_online._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_fabric_set_fabric_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_fabric_sm_linkdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_fabric_sm_flogi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_fabric_sm_auth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_fabric_sm_evfp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_fabric_sm_isolated._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_fabric_sm_flogi_retry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_fabric_sm_nofabric._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_fabric_sm_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_fabric_sm_created._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_fabric_sm_deleting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_fabric_sm_stopping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcs_fabric_sm_uninit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_init(ptr noundef %fcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fabric = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8
  %sm = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm, align 8
  tail call void %1(ptr noundef %fabric, i32 noundef 1) #9
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 42, i64 noundef 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bfa_trc(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bfa_fcs_update_cfg(ptr nocapture noundef %fcs) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port_cfg2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 3, i32 3
  %fcs3 = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %fcs3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs3, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %attr = getelementptr inbounds %struct.bfa_s, ptr %3, i32 0, i32 3, i32 21
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attr, align 8
  %nwwn = getelementptr inbounds %struct.bfi_ioc_attr_s, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %nwwn to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %nwwn, align 1
  %nwwn5 = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 3, i32 3, i32 1
  %8 = ptrtoint ptr %nwwn5 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %nwwn5, align 8
  %9 = load ptr, ptr %attr, align 8
  %pwwn = getelementptr inbounds %struct.bfi_ioc_attr_s, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %pwwn to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %pwwn, align 1
  %12 = ptrtoint ptr %port_cfg2 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %port_cfg2, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_stop(ptr noundef %fcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wc = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 10
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bfa_fcs_exit_comp, ptr %wc, align 4
  %wc_cbarg2.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %wc_cbarg2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fcs, ptr %wc_cbarg2.i, align 4
  %wc_count.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 10, i32 2
  %2 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %wc_count.i, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 2
  %3 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trcmod.i, align 8
  tail call void @__bfa_trc(ptr noundef %4, i32 noundef 2049, i32 noundef 1067, i64 noundef 0) #9
  %fabric1.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8
  %sm.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sm.i, align 8
  tail call void %6(ptr noundef %fabric1.i, i32 noundef 17) #9
  %7 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wc_count.i, align 4
  %dec.i.i = add i32 %8, -1
  store i32 %dec.i.i, ptr %wc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.bfa_wc_wait.exit_crit_edge

entry.bfa_wc_wait.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bfa_wc_wait.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wc, align 4
  %11 = ptrtoint ptr %wc_cbarg2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wc_cbarg2.i, align 4
  tail call void %10(ptr noundef %12) #9
  br label %bfa_wc_wait.exit

bfa_wc_wait.exit:                                 ; preds = %if.then.i.i, %entry.bfa_wc_wait.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_exit_comp(ptr nocapture noundef readonly %fcs_cbarg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bfad1 = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs_cbarg, i32 0, i32 1
  %0 = ptrtoint ptr %bfad1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfad1, align 4
  %comp = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 10
  tail call void @complete(ptr noundef %comp) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_fabric_modstop(ptr noundef %fcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 2
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 8
  tail call void @__bfa_trc(ptr noundef %1, i32 noundef 2049, i32 noundef 1067, i64 noundef 0) #9
  %fabric1 = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8
  %sm = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm, align 8
  tail call void %3(ptr noundef %fabric1, i32 noundef 17) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_pbc_vport_init(ptr nocapture noundef readonly %fcs) local_unnamed_addr #0 align 64 {
entry:
  %pbc_vports = alloca [16 x %struct.bfi_pbc_vport_s], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %pbc_vports) #9
  %0 = call ptr @memset(ptr %pbc_vports, i32 255, i32 256)
  %min_cfg = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 5
  %1 = ptrtoint ptr %min_cfg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %min_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fcs, align 8
  %call = call i32 @bfa_iocfc_get_pbc_vports(ptr noundef %4, ptr noundef nonnull %pbc_vports) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp sgt i32 %call, 0
  br i1 %cmp6, label %if.then.for.body_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %5 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fcs, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %arrayidx = getelementptr [16 x %struct.bfi_pbc_vport_s], ptr %pbc_vports, i32 0, i32 %i.07
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %.fca.0.load = load i32, ptr %arrayidx, align 1
  %.fca.0.insert = insertvalue [4 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [4 x i32], ptr %arrayidx, i32 0, i32 1
  %10 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 1
  %.fca.1.insert = insertvalue [4 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [4 x i32], ptr %arrayidx, i32 0, i32 2
  %11 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 1
  %.fca.2.insert = insertvalue [4 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [4 x i32], ptr %arrayidx, i32 0, i32 3
  %12 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 1
  %.fca.3.insert = insertvalue [4 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  call void @bfa_fcb_pbc_vport_create(ptr noundef %8, [4 x i32] %.fca.3.insert) #9
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %pbc_vports) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_iocfc_get_pbc_vports(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcb_pbc_vport_create(ptr noundef, [4 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_driver_info_init(ptr noundef %fcs, ptr nocapture noundef readonly %driver_info) local_unnamed_addr #0 align 64 {
entry:
  %model.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info1 = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 7
  %0 = call ptr @memcpy(ptr %driver_info1, ptr %driver_info, i32 320)
  %fabric = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8
  tail call void @bfa_fcs_fabric_psymb_init(ptr noundef %fabric)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %model.i) #9
  %1 = call ptr @memset(ptr %model.i, i32 0, i32 16)
  %fcs.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %fcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs.i, align 4
  %driver_info2.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %ioc.i = getelementptr inbounds %struct.bfa_s, ptr %5, i32 0, i32 3
  call void @bfa_ioc_get_adapter_model(ptr noundef %ioc.i, ptr noundef nonnull %model.i) #9
  %node_sym_name.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 3, i32 3, i32 3
  %call.i = call i32 @strlcpy(ptr noundef %node_sym_name.i, ptr noundef nonnull %model.i, i32 noundef 128) #9
  %call9.i = call i32 @strlcat(ptr noundef %node_sym_name.i, ptr noundef nonnull @.str.5, i32 noundef 128) #9
  %call14.i = call i32 @strlcat(ptr noundef %node_sym_name.i, ptr noundef %driver_info2.i, i32 noundef 128) #9
  %call18.i = call i32 @strlcat(ptr noundef %node_sym_name.i, ptr noundef nonnull @.str.5, i32 noundef 128) #9
  %host_machine_name.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 7, i32 1
  %call23.i = call i32 @strlcat(ptr noundef %node_sym_name.i, ptr noundef %host_machine_name.i, i32 noundef 128) #9
  %call27.i = call i32 @strlcat(ptr noundef %node_sym_name.i, ptr noundef nonnull @.str.5, i32 noundef 128) #9
  %arrayidx.i = getelementptr %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 3, i32 3, i32 3, i32 0, i32 127
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %model.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_fabric_psymb_init(ptr noundef %fabric) local_unnamed_addr #0 align 64 {
entry:
  %model = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %model) #9
  %0 = call ptr @memset(ptr %model, i32 0, i32 16)
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %1 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fcs, align 4
  %driver_info2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %ioc = getelementptr inbounds %struct.bfa_s, ptr %4, i32 0, i32 3
  call void @bfa_ioc_get_adapter_model(ptr noundef %ioc, ptr noundef nonnull %model) #9
  %sym_name = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3, i32 2
  %call = call i32 @strlcpy(ptr noundef %sym_name, ptr noundef nonnull %model, i32 noundef 128) #9
  %call9 = call i32 @strlcat(ptr noundef %sym_name, ptr noundef nonnull @.str.5, i32 noundef 128) #9
  %call14 = call i32 @strlcat(ptr noundef %sym_name, ptr noundef %driver_info2, i32 noundef 128) #9
  %call18 = call i32 @strlcat(ptr noundef %sym_name, ptr noundef nonnull @.str.5, i32 noundef 128) #9
  %host_machine_name = getelementptr inbounds %struct.bfa_fcs_s, ptr %2, i32 0, i32 7, i32 1
  %call23 = call i32 @strlcat(ptr noundef %sym_name, ptr noundef %host_machine_name, i32 noundef 128) #9
  %call27 = call i32 @strlcat(ptr noundef %sym_name, ptr noundef nonnull @.str.5, i32 noundef 128) #9
  %host_os_patch = getelementptr inbounds %struct.bfa_fcs_s, ptr %2, i32 0, i32 7, i32 3
  %5 = ptrtoint ptr %host_os_patch to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %host_os_patch, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  %host_os_name = getelementptr inbounds %struct.bfa_fcs_s, ptr %2, i32 0, i32 7, i32 2
  %call33 = call i32 @strlcat(ptr noundef %sym_name, ptr noundef %host_os_name, i32 noundef 128) #9
  %call37 = call i32 @strlcat(ptr noundef %sym_name, ptr noundef nonnull @.str.5, i32 noundef 128) #9
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = call i32 @strlcat(ptr noundef %sym_name, ptr noundef %host_os_patch, i32 noundef 128) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %arrayidx56 = getelementptr %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3, i32 2, i32 0, i32 127
  %7 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx56, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %model) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_fabric_nsymb_init(ptr noundef %fabric) local_unnamed_addr #0 align 64 {
entry:
  %model = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %model) #9
  %0 = call ptr @memset(ptr %model, i32 0, i32 16)
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %1 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fcs, align 4
  %driver_info2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %ioc = getelementptr inbounds %struct.bfa_s, ptr %4, i32 0, i32 3
  call void @bfa_ioc_get_adapter_model(ptr noundef %ioc, ptr noundef nonnull %model) #9
  %node_sym_name = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3, i32 3
  %call = call i32 @strlcpy(ptr noundef %node_sym_name, ptr noundef nonnull %model, i32 noundef 128) #9
  %call9 = call i32 @strlcat(ptr noundef %node_sym_name, ptr noundef nonnull @.str.5, i32 noundef 128) #9
  %call14 = call i32 @strlcat(ptr noundef %node_sym_name, ptr noundef %driver_info2, i32 noundef 128) #9
  %call18 = call i32 @strlcat(ptr noundef %node_sym_name, ptr noundef nonnull @.str.5, i32 noundef 128) #9
  %host_machine_name = getelementptr inbounds %struct.bfa_fcs_s, ptr %2, i32 0, i32 7, i32 1
  %call23 = call i32 @strlcat(ptr noundef %node_sym_name, ptr noundef %host_machine_name, i32 noundef 128) #9
  %call27 = call i32 @strlcat(ptr noundef %node_sym_name, ptr noundef nonnull @.str.5, i32 noundef 128) #9
  %arrayidx = getelementptr %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3, i32 3, i32 0, i32 127
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %model) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_exit(ptr noundef %fcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wc = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 10
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bfa_fcs_exit_comp, ptr %wc, align 4
  %wc_cbarg2.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %wc_cbarg2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fcs, ptr %wc_cbarg2.i, align 4
  %wc_count.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 10, i32 2
  %2 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %wc_count.i, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 2
  %3 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trcmod, align 8
  tail call void @__bfa_trc(ptr noundef %4, i32 noundef 2049, i32 noundef 126, i64 noundef 0) #9
  %fabric = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8
  %lps = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 23
  %5 = ptrtoint ptr %lps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lps, align 8
  tail call void @bfa_lps_delete(ptr noundef %6) #9
  %sm = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sm, align 8
  tail call void %8(ptr noundef %fabric, i32 noundef 2) #9
  %9 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wc_count.i, align 4
  %dec.i.i = add i32 %10, -1
  store i32 %dec.i.i, ptr %wc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.bfa_wc_wait.exit_crit_edge

entry.bfa_wc_wait.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bfa_wc_wait.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wc, align 4
  %13 = ptrtoint ptr %wc_cbarg2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wc_cbarg2.i, align 4
  tail call void %12(ptr noundef %14) #9
  br label %bfa_wc_wait.exit

bfa_wc_wait.exit:                                 ; preds = %if.then.i.i, %entry.bfa_wc_wait.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_lps_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_fabric_sm_auth_failed(ptr noundef %fabric, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 460, i64 noundef %5) #9
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2049, i32 noundef 461, i64 noundef %conv) #9
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %do.body [
    i32 3, label %sw.bb
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %11 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bfa_fcs_fabric_sm_linkdown, ptr %sm, align 8
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod.i, align 8
  %fabric_name.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 17
  %16 = ptrtoint ptr %fabric_name.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fabric_name.i, align 8
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2049, i32 noundef 974, i64 noundef %17) #9
  %fabric_offlines.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 22, i32 10
  %18 = ptrtoint ptr %fabric_offlines.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fabric_offlines.i, align 8
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %fabric_offlines.i, align 8
  %vport_q.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %20 = ptrtoint ptr %vport_q.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vport_q.i, align 4
  %cmp.i.not15.i = icmp eq ptr %21, %vport_q.i
  br i1 %cmp.i.not15.i, label %sw.bb.bfa_fcs_fabric_notify_offline.exit_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.bfa_fcs_fabric_notify_offline.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %bfa_fcs_fabric_notify_offline.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %qe.016.i = phi ptr [ %qen.0.i, %for.body.i.for.body.i_crit_edge ], [ %21, %sw.bb.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %qe.016.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %qen.0.i = load ptr, ptr %qe.016.i, align 4
  tail call void @bfa_fcs_vport_offline(ptr noundef %qe.016.i) #9
  %cmp.i.not.i = icmp eq ptr %qen.0.i, %vport_q.i
  br i1 %cmp.i.not.i, label %for.body.i.bfa_fcs_fabric_notify_offline.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.bfa_fcs_fabric_notify_offline.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bfa_fcs_fabric_notify_offline.exit

bfa_fcs_fabric_notify_offline.exit:               ; preds = %for.body.i.bfa_fcs_fabric_notify_offline.exit_crit_edge, %sw.bb.bfa_fcs_fabric_notify_offline.exit_crit_edge
  %bport.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3
  tail call void @bfa_fcs_lport_offline(ptr noundef %bport.i) #9
  %23 = ptrtoint ptr %fabric_name.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %fabric_name.i, align 8
  %fabric_ip_addr.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 24
  %24 = ptrtoint ptr %fabric_ip_addr.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %fabric_ip_addr.i, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %sm4 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %25 = ptrtoint ptr %sm4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_fcs_fabric_sm_deleting, ptr %sm4, align 8
  %vport_q.i20 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %26 = ptrtoint ptr %vport_q.i20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vport_q.i20, align 4
  %cmp.i.not10.i = icmp eq ptr %27, %vport_q.i20
  br i1 %cmp.i.not10.i, label %sw.bb3.for.end.i_crit_edge, label %sw.bb3.for.body.i23_crit_edge

sw.bb3.for.body.i23_crit_edge:                    ; preds = %sw.bb3
  br label %for.body.i23

sw.bb3.for.end.i_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i23:                                     ; preds = %for.body.i23.for.body.i23_crit_edge, %sw.bb3.for.body.i23_crit_edge
  %qe.011.i = phi ptr [ %qen.0.i21, %for.body.i23.for.body.i23_crit_edge ], [ %27, %sw.bb3.for.body.i23_crit_edge ]
  %28 = ptrtoint ptr %qe.011.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %qen.0.i21 = load ptr, ptr %qe.011.i, align 4
  tail call void @bfa_fcs_vport_fcs_delete(ptr noundef %qe.011.i) #9
  %cmp.i.not.i22 = icmp eq ptr %qen.0.i21, %vport_q.i20
  br i1 %cmp.i.not.i22, label %for.body.i23.for.end.i_crit_edge, label %for.body.i23.for.body.i23_crit_edge

for.body.i23.for.body.i23_crit_edge:              ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i23

for.body.i23.for.end.i_crit_edge:                 ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i23.for.end.i_crit_edge, %sw.bb3.for.end.i_crit_edge
  %bport.i24 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3
  tail call void @bfa_fcs_lport_delete(ptr noundef %bport.i24) #9
  %wc_count.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 2
  %29 = ptrtoint ptr %wc_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wc_count.i.i.i, align 4
  %dec.i.i.i = add i32 %30, -1
  store i32 %dec.i.i.i, ptr %wc_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.end.i.sw.epilog_crit_edge

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %wc.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21
  %31 = ptrtoint ptr %wc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wc.i, align 4
  %wc_cbarg.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 1
  %33 = ptrtoint ptr %wc_cbarg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wc_cbarg.i.i.i, align 4
  tail call void %32(ptr noundef %34) #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fcs, align 4
  %trcmod6 = getelementptr inbounds %struct.bfa_fcs_s, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %trcmod6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trcmod6, align 8
  %or = or i32 %event, -559087616
  %conv7 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %38, i32 noundef 2049, i32 noundef 475, i64 noundef %conv7) #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 475, i32 noundef %event) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %if.then.i.i.i, %for.end.i.sw.epilog_crit_edge, %bfa_fcs_fabric_notify_offline.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_fabric_sm_linkdown(ptr noundef %fabric, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %bport = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2049, i32 noundef 283, i64 noundef %7) #9
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod4, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2049, i32 noundef 284, i64 noundef %conv) #9
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %event, label %do.body36 [
    i32 4, label %sw.bb
    i32 6, label %entry.sw.epilog_crit_edge
    i32 15, label %entry.sw.epilog_crit_edge80
    i32 2, label %sw.bb32
    i32 17, label %sw.bb34
  ]

entry.sw.epilog_crit_edge80:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @bfa_fcport_get_topology(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %13 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bfa_fcs_fabric_sm_flogi, ptr %sm, align 8
  %14 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fcs, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %lps.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 23
  %18 = ptrtoint ptr %lps.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lps.i, align 8
  %call.i = tail call zeroext i16 @bfa_fcport_get_maxfrsize(ptr noundef %17) #9
  %20 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %port_cfg, align 8
  %nwwn.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3, i32 1
  %22 = ptrtoint ptr %nwwn.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %nwwn.i, align 8
  %auth_reqd.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 18
  %24 = ptrtoint ptr %auth_reqd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %auth_reqd.i, align 8
  tail call void @bfa_lps_flogi(ptr noundef %19, ptr noundef %fabric, i8 noundef zeroext 0, i16 noundef zeroext %call.i, i64 noundef %21, i64 noundef %23, i32 noundef %25) #9
  %stats.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 22
  %26 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %stats.i, align 8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %fab_type = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 4
  %28 = ptrtoint ptr %fab_type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %fab_type, align 8
  %call6 = tail call zeroext i8 @bfa_fcport_get_myalpa(ptr noundef %3) #9
  %pid = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 5
  %29 = zext i8 %call6 to i24
  %30 = ptrtoint ptr %pid to i32
  call void @__asan_storeN_noabort(i32 %30, i32 3)
  store i24 %29, ptr %pid, align 4
  %sm14 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %31 = ptrtoint ptr %sm14 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @bfa_fcs_fabric_sm_online, ptr %sm14, align 8
  %32 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fcs, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %call17 = tail call i32 @bfa_fcport_get_topology(ptr noundef %35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 5
  br i1 %cmp18, label %if.then20, label %if.else27

if.then20:                                        ; preds = %if.end
  %36 = ptrtoint ptr %fab_type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fab_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp22 = icmp eq i32 %37, 1
  %oper_type = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 5
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %oper_type to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 5, ptr %oper_type, align 4
  br label %do.end

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %oper_type to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 21, ptr %oper_type, align 4
  br label %do.end

if.else27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %oper_type28 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 5
  %40 = ptrtoint ptr %oper_type28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 6, ptr %oper_type28, align 4
  br label %do.end

do.end:                                           ; preds = %if.else27, %if.else, %if.then24
  tail call void @bfa_fcs_lport_online(ptr noundef %bport) #9
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  %sm33 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %41 = ptrtoint ptr %sm33 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bfa_fcs_fabric_sm_deleting, ptr %sm33, align 8
  %vport_q.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %42 = ptrtoint ptr %vport_q.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vport_q.i, align 4
  %cmp.i.not10.i = icmp eq ptr %43, %vport_q.i
  br i1 %cmp.i.not10.i, label %sw.bb32.for.end.i_crit_edge, label %sw.bb32.for.body.i_crit_edge

sw.bb32.for.body.i_crit_edge:                     ; preds = %sw.bb32
  br label %for.body.i

sw.bb32.for.end.i_crit_edge:                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb32.for.body.i_crit_edge
  %qe.011.i = phi ptr [ %qen.0.i, %for.body.i.for.body.i_crit_edge ], [ %43, %sw.bb32.for.body.i_crit_edge ]
  %44 = ptrtoint ptr %qe.011.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %qen.0.i = load ptr, ptr %qe.011.i, align 4
  tail call void @bfa_fcs_vport_fcs_delete(ptr noundef %qe.011.i) #9
  %cmp.i.not.i = icmp eq ptr %qen.0.i, %vport_q.i
  br i1 %cmp.i.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb32.for.end.i_crit_edge
  tail call void @bfa_fcs_lport_delete(ptr noundef %bport) #9
  %wc_count.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 2
  %45 = ptrtoint ptr %wc_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %wc_count.i.i.i, align 4
  %dec.i.i.i = add i32 %46, -1
  store i32 %dec.i.i.i, ptr %wc_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.end.i.sw.epilog_crit_edge

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %wc.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21
  %47 = ptrtoint ptr %wc.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wc.i, align 4
  %wc_cbarg.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 1
  %49 = ptrtoint ptr %wc_cbarg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wc_cbarg.i.i.i, align 4
  tail call void %48(ptr noundef %50) #9
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  %sm35 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %51 = ptrtoint ptr %sm35 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @bfa_fcs_fabric_sm_cleanup, ptr %sm35, align 8
  %stop_wc.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 25
  %52 = ptrtoint ptr %stop_wc.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @bfa_fcs_fabric_stop_comp, ptr %stop_wc.i, align 4
  %wc_cbarg2.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 25, i32 1
  %53 = ptrtoint ptr %wc_cbarg2.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %fabric, ptr %wc_cbarg2.i.i, align 4
  %wc_count.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 25, i32 2
  %54 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %wc_count.i.i, align 4
  %vport_q.i71 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %55 = ptrtoint ptr %vport_q.i71 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vport_q.i71, align 4
  %cmp.i.not20.i = icmp eq ptr %56, %vport_q.i71
  br i1 %cmp.i.not20.i, label %sw.bb34.for.end.i78_crit_edge, label %sw.bb34.for.body.i74_crit_edge

sw.bb34.for.body.i74_crit_edge:                   ; preds = %sw.bb34
  br label %for.body.i74

sw.bb34.for.end.i78_crit_edge:                    ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i78

for.body.i74:                                     ; preds = %for.body.i74.for.body.i74_crit_edge, %sw.bb34.for.body.i74_crit_edge
  %qe.021.i = phi ptr [ %qen.0.i72, %for.body.i74.for.body.i74_crit_edge ], [ %56, %sw.bb34.for.body.i74_crit_edge ]
  %57 = ptrtoint ptr %qe.021.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %qen.0.i72 = load ptr, ptr %qe.021.i, align 4
  %58 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %wc_count.i.i, align 4
  %inc.i.i = add i32 %59, 1
  store i32 %inc.i.i, ptr %wc_count.i.i, align 4
  tail call void @bfa_fcs_vport_fcs_stop(ptr noundef %qe.021.i) #9
  %cmp.i.not.i73 = icmp eq ptr %qen.0.i72, %vport_q.i71
  br i1 %cmp.i.not.i73, label %for.body.i74.for.end.i78_crit_edge, label %for.body.i74.for.body.i74_crit_edge

for.body.i74.for.body.i74_crit_edge:              ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i74

for.body.i74.for.end.i78_crit_edge:               ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i78

for.end.i78:                                      ; preds = %for.body.i74.for.end.i78_crit_edge, %sw.bb34.for.end.i78_crit_edge
  %60 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %wc_count.i.i, align 4
  %inc.i19.i = add i32 %61, 1
  store i32 %inc.i19.i, ptr %wc_count.i.i, align 4
  tail call void @bfa_fcs_lport_stop(ptr noundef %bport) #9
  %62 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %wc_count.i.i, align 4
  %dec.i.i.i76 = add i32 %63, -1
  store i32 %dec.i.i.i76, ptr %wc_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i76)
  %cmp.i.i.i77 = icmp eq i32 %dec.i.i.i76, 0
  br i1 %cmp.i.i.i77, label %if.then.i.i.i79, label %for.end.i78.sw.epilog_crit_edge

for.end.i78.sw.epilog_crit_edge:                  ; preds = %for.end.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i.i.i79:                                  ; preds = %for.end.i78
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %stop_wc.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %stop_wc.i, align 4
  %66 = ptrtoint ptr %wc_cbarg2.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wc_cbarg2.i.i, align 4
  tail call void %65(ptr noundef %67) #9
  br label %sw.epilog

do.body36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fcs, align 4
  %trcmod38 = getelementptr inbounds %struct.bfa_fcs_s, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %trcmod38 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %trcmod38, align 8
  %or = or i32 %event, -559087616
  %conv39 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %71, i32 noundef 2049, i32 noundef 316, i64 noundef %conv39) #9
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 316, i32 noundef %event) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body36, %if.then.i.i.i79, %for.end.i78.sw.epilog_crit_edge, %if.then.i.i.i, %for.end.i.sw.epilog_crit_edge, %do.end, %if.then, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge80
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_fabric_sm_deleting(ptr noundef %fabric, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 650, i64 noundef %5) #9
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2049, i32 noundef 651, i64 noundef %conv) #9
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %event, label %do.body [
    i32 14, label %sw.bb
    i32 4, label %entry.sw.epilog_crit_edge
    i32 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %11 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bfa_fcs_fabric_sm_uninit, ptr %sm, align 8
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %wc_count.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wc_count.i, align 4
  %dec.i = add i32 %15, -1
  store i32 %dec.i, ptr %wc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %wc = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 10
  %16 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wc, align 4
  %wc_cbarg.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %wc_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wc_cbarg.i, align 4
  tail call void %17(ptr noundef %19) #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %20 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fcs, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trcmod.i, align 8
  %fabric_name.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 17
  %24 = ptrtoint ptr %fabric_name.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %fabric_name.i, align 8
  tail call void @__bfa_trc(ptr noundef %23, i32 noundef 2049, i32 noundef 974, i64 noundef %25) #9
  %fabric_offlines.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 22, i32 10
  %26 = ptrtoint ptr %fabric_offlines.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fabric_offlines.i, align 8
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %fabric_offlines.i, align 8
  %vport_q.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %28 = ptrtoint ptr %vport_q.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vport_q.i, align 4
  %cmp.i.not15.i = icmp eq ptr %29, %vport_q.i
  br i1 %cmp.i.not15.i, label %sw.bb4.bfa_fcs_fabric_notify_offline.exit_crit_edge, label %sw.bb4.for.body.i_crit_edge

sw.bb4.for.body.i_crit_edge:                      ; preds = %sw.bb4
  br label %for.body.i

sw.bb4.bfa_fcs_fabric_notify_offline.exit_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %bfa_fcs_fabric_notify_offline.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb4.for.body.i_crit_edge
  %qe.016.i = phi ptr [ %qen.0.i, %for.body.i.for.body.i_crit_edge ], [ %29, %sw.bb4.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %qe.016.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %qen.0.i = load ptr, ptr %qe.016.i, align 4
  tail call void @bfa_fcs_vport_offline(ptr noundef %qe.016.i) #9
  %cmp.i.not.i = icmp eq ptr %qen.0.i, %vport_q.i
  br i1 %cmp.i.not.i, label %for.body.i.bfa_fcs_fabric_notify_offline.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.bfa_fcs_fabric_notify_offline.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bfa_fcs_fabric_notify_offline.exit

bfa_fcs_fabric_notify_offline.exit:               ; preds = %for.body.i.bfa_fcs_fabric_notify_offline.exit_crit_edge, %sw.bb4.bfa_fcs_fabric_notify_offline.exit_crit_edge
  %bport.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3
  tail call void @bfa_fcs_lport_offline(ptr noundef %bport.i) #9
  %31 = ptrtoint ptr %fabric_name.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %fabric_name.i, align 8
  %fabric_ip_addr.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 24
  %32 = ptrtoint ptr %fabric_ip_addr.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %fabric_ip_addr.i, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fcs, align 4
  %trcmod6 = getelementptr inbounds %struct.bfa_fcs_s, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %trcmod6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trcmod6, align 8
  %or = or i32 %event, -559087616
  %conv7 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %36, i32 noundef 2049, i32 noundef 667, i64 noundef %conv7) #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 667, i32 noundef %event) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %bfa_fcs_fabric_notify_offline.exit, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_fabric_sm_loopback(ptr noundef %fabric, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 486, i64 noundef %5) #9
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2049, i32 noundef 487, i64 noundef %conv) #9
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %event, label %do.body [
    i32 3, label %sw.bb
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %11 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bfa_fcs_fabric_sm_linkdown, ptr %sm, align 8
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trcmod.i, align 8
  %fabric_name.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 17
  %16 = ptrtoint ptr %fabric_name.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fabric_name.i, align 8
  tail call void @__bfa_trc(ptr noundef %15, i32 noundef 2049, i32 noundef 974, i64 noundef %17) #9
  %fabric_offlines.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 22, i32 10
  %18 = ptrtoint ptr %fabric_offlines.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fabric_offlines.i, align 8
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %fabric_offlines.i, align 8
  %vport_q.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %20 = ptrtoint ptr %vport_q.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vport_q.i, align 4
  %cmp.i.not15.i = icmp eq ptr %21, %vport_q.i
  br i1 %cmp.i.not15.i, label %sw.bb.bfa_fcs_fabric_notify_offline.exit_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.bfa_fcs_fabric_notify_offline.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %bfa_fcs_fabric_notify_offline.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %qe.016.i = phi ptr [ %qen.0.i, %for.body.i.for.body.i_crit_edge ], [ %21, %sw.bb.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %qe.016.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %qen.0.i = load ptr, ptr %qe.016.i, align 4
  tail call void @bfa_fcs_vport_offline(ptr noundef %qe.016.i) #9
  %cmp.i.not.i = icmp eq ptr %qen.0.i, %vport_q.i
  br i1 %cmp.i.not.i, label %for.body.i.bfa_fcs_fabric_notify_offline.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.bfa_fcs_fabric_notify_offline.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bfa_fcs_fabric_notify_offline.exit

bfa_fcs_fabric_notify_offline.exit:               ; preds = %for.body.i.bfa_fcs_fabric_notify_offline.exit_crit_edge, %sw.bb.bfa_fcs_fabric_notify_offline.exit_crit_edge
  %bport.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3
  tail call void @bfa_fcs_lport_offline(ptr noundef %bport.i) #9
  %23 = ptrtoint ptr %fabric_name.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %fabric_name.i, align 8
  %fabric_ip_addr.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 24
  %24 = ptrtoint ptr %fabric_ip_addr.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %fabric_ip_addr.i, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %sm4 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %25 = ptrtoint ptr %sm4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfa_fcs_fabric_sm_deleting, ptr %sm4, align 8
  %vport_q.i20 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %26 = ptrtoint ptr %vport_q.i20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vport_q.i20, align 4
  %cmp.i.not10.i = icmp eq ptr %27, %vport_q.i20
  br i1 %cmp.i.not10.i, label %sw.bb3.for.end.i_crit_edge, label %sw.bb3.for.body.i23_crit_edge

sw.bb3.for.body.i23_crit_edge:                    ; preds = %sw.bb3
  br label %for.body.i23

sw.bb3.for.end.i_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i23:                                     ; preds = %for.body.i23.for.body.i23_crit_edge, %sw.bb3.for.body.i23_crit_edge
  %qe.011.i = phi ptr [ %qen.0.i21, %for.body.i23.for.body.i23_crit_edge ], [ %27, %sw.bb3.for.body.i23_crit_edge ]
  %28 = ptrtoint ptr %qe.011.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %qen.0.i21 = load ptr, ptr %qe.011.i, align 4
  tail call void @bfa_fcs_vport_fcs_delete(ptr noundef %qe.011.i) #9
  %cmp.i.not.i22 = icmp eq ptr %qen.0.i21, %vport_q.i20
  br i1 %cmp.i.not.i22, label %for.body.i23.for.end.i_crit_edge, label %for.body.i23.for.body.i23_crit_edge

for.body.i23.for.body.i23_crit_edge:              ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i23

for.body.i23.for.end.i_crit_edge:                 ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i23.for.end.i_crit_edge, %sw.bb3.for.end.i_crit_edge
  %bport.i24 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3
  tail call void @bfa_fcs_lport_delete(ptr noundef %bport.i24) #9
  %wc_count.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 2
  %29 = ptrtoint ptr %wc_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wc_count.i.i.i, align 4
  %dec.i.i.i = add i32 %30, -1
  store i32 %dec.i.i.i, ptr %wc_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.end.i.sw.epilog_crit_edge

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %wc.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21
  %31 = ptrtoint ptr %wc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wc.i, align 4
  %wc_cbarg.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 1
  %33 = ptrtoint ptr %wc_cbarg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wc_cbarg.i.i.i, align 4
  tail call void %32(ptr noundef %34) #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fcs, align 4
  %trcmod6 = getelementptr inbounds %struct.bfa_fcs_s, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %trcmod6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trcmod6, align 8
  %or = or i32 %event, -559087616
  %conv7 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %38, i32 noundef 2049, i32 noundef 501, i64 noundef %conv7) #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 501, i32 noundef %event) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %if.then.i.i.i, %for.end.i.sw.epilog_crit_edge, %bfa_fcs_fabric_notify_offline.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_fabric_sm_online(ptr noundef %fabric, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %bport = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2049, i32 noundef 550, i64 noundef %7) #9
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod4, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2049, i32 noundef 551, i64 noundef %conv) #9
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %event, label %do.body [
    i32 3, label %sw.bb
    i32 2, label %sw.bb9
    i32 17, label %sw.bb11
    i32 12, label %sw.bb13
    i32 13, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %13 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bfa_fcs_fabric_sm_linkdown, ptr %sm, align 8
  %call = tail call i32 @bfa_fcport_get_topology(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bfa_fcs_lport_offline(ptr noundef %bport) #9
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %lps = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 23
  %14 = ptrtoint ptr %lps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lps, align 8
  %sm7 = getelementptr inbounds %struct.bfa_lps_s, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %sm7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sm7, align 4
  tail call void %17(ptr noundef %15, i32 noundef 6) #9
  %18 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fcs, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trcmod.i, align 8
  %fabric_name.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 17
  %22 = ptrtoint ptr %fabric_name.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %fabric_name.i, align 8
  tail call void @__bfa_trc(ptr noundef %21, i32 noundef 2049, i32 noundef 974, i64 noundef %23) #9
  %fabric_offlines.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 22, i32 10
  %24 = ptrtoint ptr %fabric_offlines.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fabric_offlines.i, align 8
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %fabric_offlines.i, align 8
  %vport_q.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %26 = ptrtoint ptr %vport_q.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vport_q.i, align 4
  %cmp.i.not15.i = icmp eq ptr %27, %vport_q.i
  br i1 %cmp.i.not15.i, label %if.else.bfa_fcs_fabric_notify_offline.exit_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.bfa_fcs_fabric_notify_offline.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %bfa_fcs_fabric_notify_offline.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %qe.016.i = phi ptr [ %qen.0.i, %for.body.i.for.body.i_crit_edge ], [ %27, %if.else.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %qe.016.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %qen.0.i = load ptr, ptr %qe.016.i, align 4
  tail call void @bfa_fcs_vport_offline(ptr noundef %qe.016.i) #9
  %cmp.i.not.i = icmp eq ptr %qen.0.i, %vport_q.i
  br i1 %cmp.i.not.i, label %for.body.i.bfa_fcs_fabric_notify_offline.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.bfa_fcs_fabric_notify_offline.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bfa_fcs_fabric_notify_offline.exit

bfa_fcs_fabric_notify_offline.exit:               ; preds = %for.body.i.bfa_fcs_fabric_notify_offline.exit_crit_edge, %if.else.bfa_fcs_fabric_notify_offline.exit_crit_edge
  tail call void @bfa_fcs_lport_offline(ptr noundef %bport) #9
  %29 = ptrtoint ptr %fabric_name.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %fabric_name.i, align 8
  %fabric_ip_addr.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 24
  %30 = ptrtoint ptr %fabric_ip_addr.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %fabric_ip_addr.i, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %sm10 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %31 = ptrtoint ptr %sm10 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @bfa_fcs_fabric_sm_deleting, ptr %sm10, align 8
  %vport_q.i44 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %32 = ptrtoint ptr %vport_q.i44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vport_q.i44, align 4
  %cmp.i.not10.i = icmp eq ptr %33, %vport_q.i44
  br i1 %cmp.i.not10.i, label %sw.bb9.for.end.i_crit_edge, label %sw.bb9.for.body.i47_crit_edge

sw.bb9.for.body.i47_crit_edge:                    ; preds = %sw.bb9
  br label %for.body.i47

sw.bb9.for.end.i_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i47:                                     ; preds = %for.body.i47.for.body.i47_crit_edge, %sw.bb9.for.body.i47_crit_edge
  %qe.011.i = phi ptr [ %qen.0.i45, %for.body.i47.for.body.i47_crit_edge ], [ %33, %sw.bb9.for.body.i47_crit_edge ]
  %34 = ptrtoint ptr %qe.011.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %qen.0.i45 = load ptr, ptr %qe.011.i, align 4
  tail call void @bfa_fcs_vport_fcs_delete(ptr noundef %qe.011.i) #9
  %cmp.i.not.i46 = icmp eq ptr %qen.0.i45, %vport_q.i44
  br i1 %cmp.i.not.i46, label %for.body.i47.for.end.i_crit_edge, label %for.body.i47.for.body.i47_crit_edge

for.body.i47.for.body.i47_crit_edge:              ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i47

for.body.i47.for.end.i_crit_edge:                 ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i47.for.end.i_crit_edge, %sw.bb9.for.end.i_crit_edge
  tail call void @bfa_fcs_lport_delete(ptr noundef %bport) #9
  %wc_count.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 2
  %35 = ptrtoint ptr %wc_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wc_count.i.i.i, align 4
  %dec.i.i.i = add i32 %36, -1
  store i32 %dec.i.i.i, ptr %wc_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.end.i.sw.epilog_crit_edge

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %wc.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21
  %37 = ptrtoint ptr %wc.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wc.i, align 4
  %wc_cbarg.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 1
  %39 = ptrtoint ptr %wc_cbarg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wc_cbarg.i.i.i, align 4
  tail call void %38(ptr noundef %40) #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %sm12 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %41 = ptrtoint ptr %sm12 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bfa_fcs_fabric_sm_stopping, ptr %sm12, align 8
  %stop_wc.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 25
  %42 = ptrtoint ptr %stop_wc.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @bfa_fcs_fabric_stop_comp, ptr %stop_wc.i, align 4
  %wc_cbarg2.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 25, i32 1
  %43 = ptrtoint ptr %wc_cbarg2.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %fabric, ptr %wc_cbarg2.i.i, align 4
  %wc_count.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 25, i32 2
  %44 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %wc_count.i.i, align 4
  %vport_q.i49 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %45 = ptrtoint ptr %vport_q.i49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vport_q.i49, align 4
  %cmp.i.not20.i = icmp eq ptr %46, %vport_q.i49
  br i1 %cmp.i.not20.i, label %sw.bb11.for.end.i56_crit_edge, label %sw.bb11.for.body.i52_crit_edge

sw.bb11.for.body.i52_crit_edge:                   ; preds = %sw.bb11
  br label %for.body.i52

sw.bb11.for.end.i56_crit_edge:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i56

for.body.i52:                                     ; preds = %for.body.i52.for.body.i52_crit_edge, %sw.bb11.for.body.i52_crit_edge
  %qe.021.i = phi ptr [ %qen.0.i50, %for.body.i52.for.body.i52_crit_edge ], [ %46, %sw.bb11.for.body.i52_crit_edge ]
  %47 = ptrtoint ptr %qe.021.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %qen.0.i50 = load ptr, ptr %qe.021.i, align 4
  %48 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %wc_count.i.i, align 4
  %inc.i.i = add i32 %49, 1
  store i32 %inc.i.i, ptr %wc_count.i.i, align 4
  tail call void @bfa_fcs_vport_fcs_stop(ptr noundef %qe.021.i) #9
  %cmp.i.not.i51 = icmp eq ptr %qen.0.i50, %vport_q.i49
  br i1 %cmp.i.not.i51, label %for.body.i52.for.end.i56_crit_edge, label %for.body.i52.for.body.i52_crit_edge

for.body.i52.for.body.i52_crit_edge:              ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i52

for.body.i52.for.end.i56_crit_edge:               ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i56

for.end.i56:                                      ; preds = %for.body.i52.for.end.i56_crit_edge, %sw.bb11.for.end.i56_crit_edge
  %50 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %wc_count.i.i, align 4
  %inc.i19.i = add i32 %51, 1
  store i32 %inc.i19.i, ptr %wc_count.i.i, align 4
  tail call void @bfa_fcs_lport_stop(ptr noundef %bport) #9
  %52 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wc_count.i.i, align 4
  %dec.i.i.i54 = add i32 %53, -1
  store i32 %dec.i.i.i54, ptr %wc_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i54)
  %cmp.i.i.i55 = icmp eq i32 %dec.i.i.i54, 0
  br i1 %cmp.i.i.i55, label %if.then.i.i.i57, label %for.end.i56.sw.epilog_crit_edge

for.end.i56.sw.epilog_crit_edge:                  ; preds = %for.end.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i.i.i57:                                  ; preds = %for.end.i56
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %stop_wc.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stop_wc.i, align 4
  %56 = ptrtoint ptr %wc_cbarg2.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wc_cbarg2.i.i, align 4
  tail call void %55(ptr noundef %57) #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sm14 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %58 = ptrtoint ptr %sm14 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @bfa_fcs_fabric_sm_auth_failed, ptr %sm14, align 8
  %lps15 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 23
  %59 = ptrtoint ptr %lps15 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lps15, align 8
  %sm16 = getelementptr inbounds %struct.bfa_lps_s, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %sm16 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sm16, align 4
  tail call void %62(ptr noundef %60, i32 noundef 6) #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fcs, align 4
  %trcmod19 = getelementptr inbounds %struct.bfa_fcs_s, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %trcmod19 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %trcmod19, align 8
  %or = or i32 %event, -559087616
  %conv20 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %66, i32 noundef 2049, i32 noundef 583, i64 noundef %conv20) #9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 583, i32 noundef %event) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb13, %if.then.i.i.i57, %for.end.i56.sw.epilog_crit_edge, %if.then.i.i.i, %for.end.i.sw.epilog_crit_edge, %bfa_fcs_fabric_notify_offline.exit, %if.then, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_get_topology(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_lport_offline(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_fabric_sm_stopping(ptr nocapture noundef %fabric, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2049, i32 noundef 680, i64 noundef %7) #9
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod4, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2049, i32 noundef 681, i64 noundef %conv) #9
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %event, label %do.body [
    i32 18, label %sw.bb
    i32 4, label %entry.sw.epilog_crit_edge
    i32 3, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @bfa_fcport_get_topology(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bfa_fcs_fabric_sm_created, ptr %sm, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @bfa_fcs_fabric_sm_cleanup, ptr %sm, align 8
  %lps = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 23
  %15 = ptrtoint ptr %lps to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lps, align 8
  %sm7 = getelementptr inbounds %struct.bfa_lps_s, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %sm7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sm7, align 4
  tail call void %18(ptr noundef %16, i32 noundef 2) #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %call10 = tail call i32 @bfa_fcport_get_topology(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 2
  %sm14 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  br i1 %cmp11, label %if.then13, label %if.else15

if.then13:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %sm14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bfa_fcs_fabric_sm_created, ptr %sm14, align 8
  br label %sw.epilog

if.else15:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %sm14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bfa_fcs_fabric_sm_cleanup, ptr %sm14, align 8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fcs, align 4
  %trcmod19 = getelementptr inbounds %struct.bfa_fcs_s, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %trcmod19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trcmod19, align 8
  %or = or i32 %event, -559087616
  %conv20 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %24, i32 noundef 2049, i32 noundef 704, i64 noundef %conv20) #9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 704, i32 noundef %event) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %if.else15, %if.then13, %if.else, %if.then, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_get_adapter_model(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_lps_flogi_comp(ptr nocapture noundef readnone %bfad, ptr noundef %uarg, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 858, i64 noundef %5) #9
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %status to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2049, i32 noundef 859, i64 noundef %conv) #9
  %10 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %status, label %sw.default19 [
    i32 0, label %sw.bb
    i32 134, label %sw.bb3
    i32 6, label %sw.bb6
    i32 29, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  %flogi_accepts = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 22, i32 3
  %11 = ptrtoint ptr %flogi_accepts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flogi_accepts, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %flogi_accepts, align 4
  %lps24 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 23
  %13 = ptrtoint ptr %lps24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lps24, align 8
  %pr_bbcred = getelementptr inbounds %struct.bfa_lps_s, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %pr_bbcred to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pr_bbcred, align 2
  %bb_credit = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 9
  %17 = ptrtoint ptr %bb_credit to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %bb_credit, align 4
  %18 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fcs, align 4
  %trcmod26 = getelementptr inbounds %struct.bfa_fcs_s, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %trcmod26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trcmod26, align 8
  %conv28 = zext i16 %16 to i64
  tail call void @__bfa_trc(ptr noundef %21, i32 noundef 2049, i32 noundef 902, i64 noundef %conv28) #9
  %22 = ptrtoint ptr %lps24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lps24, align 8
  %brcd_switch = getelementptr inbounds %struct.bfa_lps_s, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %brcd_switch to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %brcd_switch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flogi_acc_err = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 22, i32 2
  %26 = ptrtoint ptr %flogi_acc_err to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flogi_acc_err, align 8
  %inc5 = add i32 %27, 1
  store i32 %inc5, ptr %flogi_acc_err, align 8
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 1
  %28 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sm, align 8
  tail call void %29(ptr noundef %uarg, i32 noundef 6) #9
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %lps = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 23
  %30 = ptrtoint ptr %lps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lps, align 8
  %ext_status = getelementptr inbounds %struct.bfa_lps_s, ptr %31, i32 0, i32 30
  %32 = ptrtoint ptr %ext_status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ext_status, align 8
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %33, label %sw.bb6.sw.epilog_crit_edge [
    i32 0, label %sw.bb7
    i32 1, label %sw.bb11
  ]

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  %flogi_acc_err9 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 22, i32 2
  %35 = ptrtoint ptr %flogi_acc_err9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flogi_acc_err9, align 8
  %inc10 = add i32 %36, 1
  store i32 %inc10, ptr %flogi_acc_err9, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  %flogi_unknown_rsp = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 22, i32 5
  %37 = ptrtoint ptr %flogi_unknown_rsp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flogi_unknown_rsp, align 4
  %inc13 = add i32 %38, 1
  store i32 %inc13, ptr %flogi_unknown_rsp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb7, %sw.bb6.sw.epilog_crit_edge
  %sm14 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 1
  %39 = ptrtoint ptr %sm14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sm14, align 8
  tail call void %40(ptr noundef %uarg, i32 noundef 6) #9
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flogi_rejects = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 22, i32 4
  %41 = ptrtoint ptr %flogi_rejects to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flogi_rejects, align 8
  %inc17 = add i32 %42, 1
  store i32 %inc17, ptr %flogi_rejects, align 8
  %sm18 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 1
  %43 = ptrtoint ptr %sm18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sm18, align 8
  tail call void %44(ptr noundef %uarg, i32 noundef 6) #9
  br label %cleanup

sw.default19:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flogi_rsp_err = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 22, i32 1
  %45 = ptrtoint ptr %flogi_rsp_err to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flogi_rsp_err, align 4
  %inc21 = add i32 %46, 1
  store i32 %inc21, ptr %flogi_rsp_err, align 4
  %sm22 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 1
  %47 = ptrtoint ptr %sm22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sm22, align 8
  tail call void %48(ptr noundef %uarg, i32 noundef 6) #9
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %pr_nwwn = getelementptr inbounds %struct.bfa_lps_s, ptr %23, i32 0, i32 23
  %49 = ptrtoint ptr %pr_nwwn to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %pr_nwwn, align 8
  %fabric_name = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 17
  %51 = ptrtoint ptr %fabric_name to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %fabric_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %fport = getelementptr inbounds %struct.bfa_lps_s, ptr %23, i32 0, i32 12
  %52 = ptrtoint ptr %fport to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fport, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool32.not = icmp eq i32 %53, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lp_pid = getelementptr inbounds %struct.bfa_lps_s, ptr %23, i32 0, i32 7
  %54 = ptrtoint ptr %lp_pid to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lp_pid, align 4
  %pid = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 3, i32 5
  %56 = trunc i32 %55 to i24
  %57 = ptrtoint ptr %pid to i32
  call void @__asan_storeN_noabort(i32 %57, i32 3)
  store i24 %56, ptr %pid, align 4
  %npiv_en = getelementptr inbounds %struct.bfa_lps_s, ptr %23, i32 0, i32 11
  %58 = ptrtoint ptr %npiv_en to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %npiv_en, align 4
  %conv37 = trunc i32 %59 to i8
  %is_npiv = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 7
  %60 = ptrtoint ptr %is_npiv to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv37, ptr %is_npiv, align 1
  %auth_req = getelementptr inbounds %struct.bfa_lps_s, ptr %23, i32 0, i32 10
  %61 = ptrtoint ptr %auth_req to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %auth_req, align 8
  %conv39 = trunc i32 %62 to i8
  %is_auth = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 8
  %63 = ptrtoint ptr %is_auth to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv39, ptr %is_auth, align 2
  br label %if.end44

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pr_pwwn = getelementptr inbounds %struct.bfa_lps_s, ptr %23, i32 0, i32 22
  %64 = ptrtoint ptr %pr_pwwn to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %pr_pwwn, align 8
  %rem_port_wwn = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 3, i32 10, i32 0, i32 2
  %66 = ptrtoint ptr %rem_port_wwn to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %rem_port_wwn, align 8
  %fab_type = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 4
  %67 = ptrtoint ptr %fab_type to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %fab_type, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then33
  %.sink = phi i32 [ 7, %if.else ], [ 5, %if.then33 ]
  %sm43 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 1
  %68 = ptrtoint ptr %sm43 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sm43, align 8
  tail call void %69(ptr noundef %uarg, i32 noundef %.sink) #9
  %70 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fcs, align 4
  %trcmod46 = getelementptr inbounds %struct.bfa_fcs_s, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %trcmod46 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %trcmod46, align 8
  %pid48 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 3, i32 5
  %74 = ptrtoint ptr %pid48 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 3)
  %bf.load = load i24, ptr %pid48, align 4
  %conv49 = zext i24 %bf.load to i64
  tail call void @__bfa_trc(ptr noundef %73, i32 noundef 2049, i32 noundef 925, i64 noundef %conv49) #9
  %75 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fcs, align 4
  %trcmod51 = getelementptr inbounds %struct.bfa_fcs_s, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %trcmod51 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %trcmod51, align 8
  %is_npiv52 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 7
  %79 = ptrtoint ptr %is_npiv52 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %is_npiv52, align 1
  %conv53 = zext i8 %80 to i64
  tail call void @__bfa_trc(ptr noundef %78, i32 noundef 2049, i32 noundef 926, i64 noundef %conv53) #9
  %81 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fcs, align 4
  %trcmod55 = getelementptr inbounds %struct.bfa_fcs_s, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %trcmod55 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %trcmod55, align 8
  %is_auth56 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 8
  %85 = ptrtoint ptr %is_auth56 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %is_auth56, align 2
  %conv57 = zext i8 %86 to i64
  tail call void @__bfa_trc(ptr noundef %84, i32 noundef 2049, i32 noundef 927, i64 noundef %conv57) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %sw.default19, %sw.bb15, %sw.epilog, %sw.bb3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_fabric_modstart(ptr noundef %fcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 2
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 8
  tail call void @__bfa_trc(ptr noundef %1, i32 noundef 2049, i32 noundef 1080, i64 noundef 0) #9
  %fabric1 = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8
  %sm = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm, align 8
  tail call void %3(ptr noundef %fabric1, i32 noundef 16) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_fabric_link_up(ptr noundef %fabric) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 1092, i64 noundef %5) #9
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %6 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm, align 8
  tail call void %7(ptr noundef %fabric, i32 noundef 4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_fabric_link_down(ptr noundef %fabric) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 1102, i64 noundef %5) #9
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %6 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm, align 8
  tail call void %7(ptr noundef %fabric, i32 noundef 3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_fabric_addvport(ptr noundef %fabric, ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %vf_id = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 10
  %4 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vf_id, align 2
  %conv = zext i16 %5 to i64
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 1124, i64 noundef %conv) #9
  %vport_q = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %vport, ptr noundef %7, ptr noundef %vport_q) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vport, ptr %prev.i, align 4
  %9 = ptrtoint ptr %vport to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vport_q, ptr %vport, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %vport, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %vport, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %num_vports = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 11
  %12 = ptrtoint ptr %num_vports to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_vports, align 8
  %inc = add i16 %13, 1
  store i16 %inc, ptr %num_vports, align 8
  %wc_count.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 2
  %14 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wc_count.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %wc_count.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_fabric_delvport(ptr nocapture noundef %fabric, ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vport) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %vport, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %vport to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %vport, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %vport, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %num_vports = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 11
  %8 = ptrtoint ptr %num_vports to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_vports, align 8
  %dec = add i16 %9, -1
  store i16 %dec, ptr %num_vports, align 8
  %wc_count.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 2
  %10 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wc_count.i, align 4
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr %wc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %list_del.exit.bfa_wc_down.exit_crit_edge

list_del.exit.bfa_wc_down.exit_crit_edge:         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %bfa_wc_down.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %wc = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21
  %12 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wc, align 4
  %wc_cbarg.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 1
  %14 = ptrtoint ptr %wc_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wc_cbarg.i, align 4
  tail call void %13(ptr noundef %15) #9
  br label %bfa_wc_down.exit

bfa_wc_down.exit:                                 ; preds = %if.then.i, %list_del.exit.bfa_wc_down.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bfa_fcs_fabric_vport_lookup(ptr noundef readonly %fabric, i64 noundef %pwwn) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vport_q = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %qe.0.in = phi ptr [ %vport_q, %entry ], [ %qe.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %qe.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %qe.0 = load ptr, ptr %qe.0.in, align 4
  %cmp.i.not = icmp eq ptr %qe.0, %vport_q
  br i1 %cmp.i.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_vport_s, ptr %qe.0, i32 0, i32 2, i32 3
  %1 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %port_cfg, align 8
  %cmp = icmp eq i64 %2, %pwwn
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %qe.0, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @bfa_fcs_fabric_get_switch_oui(ptr nocapture noundef readonly %fabric) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lps = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 23
  %0 = ptrtoint ptr %lps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lps, align 8
  %pr_nwwn = getelementptr inbounds %struct.bfa_lps_s, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %pr_nwwn to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pr_nwwn, align 8
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 24
  %sh.diff = lshr i64 %3, 24
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl = and i32 %tr.sh.diff, 65280
  %or = or i32 %shl, %5
  %conv3 = trunc i32 %or to i16
  ret i16 %conv3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_fabric_uf_recv(ptr noundef %fabric, ptr noundef %fchs, i16 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  %fchs.i.i.i = alloca %struct.fchs_s, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %0, i32 12)
  %bf.load = load i96, ptr %fchs, align 1
  %bf.lshr = lshr i96 %bf.load, 64
  %1 = trunc i96 %bf.lshr to i32
  %bf.cast = and i32 %1, 16777215
  %add.ptr = getelementptr %struct.fchs_s, ptr %fchs, i32 1
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %2 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %conv = zext i16 %len to i64
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2049, i32 noundef 1203, i64 noundef %conv) #9
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %conv3 = zext i32 %bf.cast to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2049, i32 noundef 1204, i64 noundef %conv3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777214, i32 %bf.cast)
  %cmp = icmp eq i32 %bf.cast, 16777214
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %bf.load5 = load i32, ptr %add.ptr, align 1
  %bf.lshr6.mask = and i32 %bf.load5, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %bf.lshr6.mask)
  %cmp7 = icmp eq i32 %bf.lshr6.mask, 67108864
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %port_name = getelementptr %struct.fchs_s, ptr %fchs, i32 1, i32 6
  %11 = ptrtoint ptr %port_name to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %port_name, align 1
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %port_cfg, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp10 = icmp eq i64 %12, %14
  br i1 %cmp10, label %if.then, label %land.lhs.true9.if.end_crit_edge

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %15 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sm, align 8
  tail call void %16(ptr noundef %fabric, i32 noundef 15) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true9.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %17, i32 12)
  %bf.load12 = load i96, ptr %fchs, align 1
  %18 = and i96 %bf.load12, 309484991374600995015229440
  %cmp16 = icmp eq i96 %18, 309484972927856921305677824
  br i1 %cmp16, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end
  %19 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fcs, align 4
  %trcmod20 = getelementptr inbounds %struct.bfa_fcs_s, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %trcmod20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trcmod20, align 8
  tail call void @__bfa_trc(ptr noundef %22, i32 noundef 2049, i32 noundef 1222, i64 noundef %conv3) #9
  %23 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fcs, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trcmod.i, align 8
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %bf.load.i = load i32, ptr %add.ptr, align 1
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  %conv.i = zext i32 %bf.lshr.i to i64
  tail call void @__bfa_trc(ptr noundef %26, i32 noundef 2049, i32 noundef 1268, i64 noundef %conv.i) #9
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %bf.load1.i = load i32, ptr %add.ptr, align 1
  %bf.lshr2.mask.i = and i32 %bf.load1.i, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %bf.lshr2.mask.i)
  %cond.i = icmp eq i32 %bf.lshr2.mask.i, 67108864
  br i1 %cond.i, label %sw.bb.i, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then18
  %29 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fcs, align 4
  %trcmod.i.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %trcmod.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %trcmod.i.i, align 8
  %33 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %33, i32 12)
  %bf.load.i.i = load i96, ptr %fchs, align 1
  %bf.lshr.i.i = lshr i96 %bf.load.i.i, 32
  %34 = trunc i96 %bf.lshr.i.i to i32
  %bf.cast.i.i = and i32 %34, 16777215
  %conv.i.i = zext i32 %bf.cast.i.i to i64
  tail call void @__bfa_trc(ptr noundef %32, i32 noundef 2049, i32 noundef 1293, i64 noundef %conv.i.i) #9
  %flogi_rcvd.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 22, i32 7
  %35 = ptrtoint ptr %flogi_rcvd.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flogi_rcvd.i.i, align 4
  %inc.i.i = add i32 %36, 1
  store i32 %inc.i.i, ptr %flogi_rcvd.i.i, align 4
  %port_type.i.i = getelementptr %struct.fchs_s, ptr %fchs, i32 1, i32 0, i32 8
  %37 = ptrtoint ptr %port_type.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %bf.load2.i.i = load i16, ptr %port_type.i.i, align 1
  %38 = and i16 %bf.load2.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.i.i = icmp eq i16 %38, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fcs, align 4
  %trcmod7.i.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %trcmod7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %trcmod7.i.i, align 8
  %port_name.i.i = getelementptr %struct.fchs_s, ptr %fchs, i32 1, i32 6
  %43 = ptrtoint ptr %port_name.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %port_name.i.i, align 1
  tail call void @__bfa_trc(ptr noundef %42, i32 noundef 2049, i32 noundef 1303, i64 noundef %44) #9
  %flogi_rejected.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 22, i32 8
  %45 = ptrtoint ptr %flogi_rejected.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flogi_rejected.i.i, align 8
  %inc9.i.i = add i32 %46, 1
  store i32 %inc9.i.i, ptr %flogi_rejected.i.i, align 8
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb.i
  %bbcred.i.i = getelementptr %struct.fchs_s, ptr %fchs, i32 1, i32 0, i32 6
  %47 = ptrtoint ptr %bbcred.i.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %bbcred.i.i, align 1
  %bb_credit.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 9
  %49 = ptrtoint ptr %bb_credit.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %bb_credit.i.i, align 4
  %port_name11.i.i = getelementptr %struct.fchs_s, ptr %fchs, i32 1, i32 6
  %50 = ptrtoint ptr %port_name11.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %port_name11.i.i, align 1
  %rem_port_wwn.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 10, i32 0, i32 2
  %52 = ptrtoint ptr %rem_port_wwn.i.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %rem_port_wwn.i.i, align 8
  %ox_id.i.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %53 = ptrtoint ptr %ox_id.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %ox_id.i.i, align 1
  %reply_oxid.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 10, i32 0, i32 1
  %55 = ptrtoint ptr %reply_oxid.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %reply_oxid.i.i, align 4
  %56 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fcs, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fchs.i.i.i) #9
  %60 = call ptr @memset(ptr %fchs.i.i.i, i32 255, i32 24)
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %57, align 8
  %call.i.i.i = tail call ptr @bfa_fcxp_req_rsp_alloc(ptr noundef null, ptr noundef %62, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.bfa_fcs_fabric_send_flogi_acc.exit.i.i_crit_edge, label %if.end.i.i.i

if.end.i.i.bfa_fcs_fabric_send_flogi_acc.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bfa_fcs_fabric_send_flogi_acc.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %port_cfg.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %call5.i.i.i = tail call ptr @bfa_fcxp_get_reqbuf(ptr noundef nonnull %call.i.i.i) #9
  %63 = ptrtoint ptr %reply_oxid.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %reply_oxid.i.i, align 4
  %65 = ptrtoint ptr %port_cfg.i.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %port_cfg.i.i.i, align 8
  %nwwn.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3, i32 1
  %67 = ptrtoint ptr %nwwn.i.i.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %nwwn.i.i.i, align 8
  %call6.i.i.i = tail call zeroext i16 @bfa_fcport_get_maxfrsize(ptr noundef %59) #9
  %call7.i.i.i = tail call zeroext i8 @bfa_fcport_get_rx_bbcredit(ptr noundef %59) #9
  %conv.i.i.i = zext i8 %call7.i.i.i to i16
  %call8.i.i.i = call zeroext i16 @fc_flogi_acc_build(ptr noundef nonnull %fchs.i.i.i, ptr noundef %call5.i.i.i, i32 noundef 16777214, i16 noundef zeroext %64, i64 noundef %66, i64 noundef %68, i16 noundef zeroext %call6.i.i.i, i16 noundef zeroext %conv.i.i.i, i8 noundef zeroext 0) #9
  %vf_id.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 10
  %69 = ptrtoint ptr %vf_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %vf_id.i.i.i, align 2
  %lps.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 23
  %71 = ptrtoint ptr %lps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lps.i.i.i, align 8
  %bfa_tag.i.i.i = getelementptr inbounds %struct.bfa_lps_s, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %bfa_tag.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bfa_tag.i.i.i, align 8
  %conv9.i.i.i = zext i16 %call8.i.i.i to i32
  call void @bfa_fcxp_send(ptr noundef nonnull %call.i.i.i, ptr noundef null, i16 noundef zeroext %70, i8 noundef zeroext %74, i32 noundef 0, i32 noundef 8, i32 noundef %conv9.i.i.i, ptr noundef nonnull %fchs.i.i.i, ptr noundef nonnull @bfa_fcs_fabric_flogiacc_comp, ptr noundef %fabric, i32 noundef 2112, i8 noundef zeroext 0) #9
  br label %bfa_fcs_fabric_send_flogi_acc.exit.i.i

bfa_fcs_fabric_send_flogi_acc.exit.i.i:           ; preds = %if.end.i.i.i, %if.end.i.i.bfa_fcs_fabric_send_flogi_acc.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fchs.i.i.i) #9
  %sm.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %75 = ptrtoint ptr %sm.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sm.i.i, align 8
  call void %76(ptr noundef %fabric, i32 noundef 7) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %bport23 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3
  %pid24 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 5
  %77 = ptrtoint ptr %pid24 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 3)
  %bf.load25 = load i24, ptr %pid24, align 4
  %78 = trunc i96 %bf.lshr to i24
  %cmp27 = icmp eq i24 %bf.load25, %78
  br i1 %cmp27, label %if.then29, label %if.end50

if.then29:                                        ; preds = %if.end22
  %79 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fcs, align 4
  %trcmod31 = getelementptr inbounds %struct.bfa_fcs_s, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %trcmod31 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %trcmod31, align 8
  %83 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %bf.load32 = load i32, ptr %add.ptr, align 1
  %bf.lshr33 = lshr i32 %bf.load32, 24
  %conv34 = zext i32 %bf.lshr33 to i64
  tail call void @__bfa_trc(ptr noundef %82, i32 noundef 2049, i32 noundef 1231, i64 noundef %conv34) #9
  %84 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %bf.load35 = load i32, ptr %add.ptr, align 1
  %bf.lshr36.mask = and i32 %bf.load35, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1879048192, i32 %bf.lshr36.mask)
  %cmp37 = icmp eq i32 %bf.lshr36.mask, -1879048192
  %85 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fcs, align 4
  %trcmod41 = getelementptr inbounds %struct.bfa_fcs_s, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %trcmod41 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %trcmod41, align 8
  br i1 %cmp37, label %if.then39, label %if.end45

if.then39:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__bfa_trc(ptr noundef %88, i32 noundef 2049, i32 noundef 1233, i64 noundef 144) #9
  br label %cleanup

if.end45:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %fchs to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %fchs, align 1
  %conv48 = zext i8 %90 to i64
  tail call void @__bfa_trc(ptr noundef %88, i32 noundef 2049, i32 noundef 1237, i64 noundef %conv48) #9
  tail call void @bfa_fcs_lport_uf_recv(ptr noundef %bport23, ptr noundef %fchs, i16 noundef zeroext %len) #9
  br label %cleanup

if.end50:                                         ; preds = %if.end22
  %vport_q = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end50
  %qe.0.in = phi ptr [ %vport_q, %if.end50 ], [ %qe.0, %for.body.for.cond_crit_edge ]
  %91 = ptrtoint ptr %qe.0.in to i32
  call void @__asan_load4_noabort(i32 %91)
  %qe.0 = load ptr, ptr %qe.0.in, align 4
  %cmp.i.not = icmp eq ptr %qe.0, %vport_q
  br i1 %cmp.i.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %pid52 = getelementptr inbounds %struct.bfa_fcs_vport_s, ptr %qe.0, i32 0, i32 2, i32 5
  %92 = ptrtoint ptr %pid52 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 3)
  %bf.load53 = load i24, ptr %pid52, align 4
  %cmp55 = icmp eq i24 %bf.load53, %78
  br i1 %cmp55, label %if.then57, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then57:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %lport = getelementptr inbounds %struct.bfa_fcs_vport_s, ptr %qe.0, i32 0, i32 2
  tail call void @bfa_fcs_lport_uf_recv(ptr noundef %lport, ptr noundef %fchs, i16 noundef zeroext %len) #9
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %fab_type = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 4
  %93 = ptrtoint ptr %fab_type to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %fab_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp61 = icmp eq i32 %94, 1
  br i1 %cmp61, label %for.end.if.end65_crit_edge, label %if.then63

for.end.if.end65_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then63:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bfa_fcs_lport_uf_recv(ptr noundef %bport23, ptr noundef %fchs, i16 noundef zeroext %len) #9
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %for.end.if.end65_crit_edge
  %95 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fcs, align 4
  %trcmod67 = getelementptr inbounds %struct.bfa_fcs_s, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %trcmod67 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %trcmod67, align 8
  %99 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %99, i32 12)
  %bf.load68 = load i96, ptr %fchs, align 1
  %100 = trunc i96 %bf.load68 to i32
  %101 = lshr i32 %100, 24
  %conv72 = zext i32 %101 to i64
  tail call void @__bfa_trc(ptr noundef %98, i32 noundef 2049, i32 noundef 1256, i64 noundef %conv72) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then57, %if.end45, %if.then39, %bfa_fcs_fabric_send_flogi_acc.exit.i.i, %if.then.i.i, %if.then18.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_lport_uf_recv(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_fabric_set_fabric_name(ptr nocapture noundef %fabric, i64 noundef %fabric_name) local_unnamed_addr #0 align 64 {
entry:
  %ts.i.i = alloca %struct.timespec64, align 8
  %pwwn_ptr = alloca [32 x i8], align 1
  %fwwn_ptr = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %bfad1 = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bfad1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bfad1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pwwn_ptr) #9
  %4 = call ptr @memset(ptr %pwwn_ptr, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fwwn_ptr) #9
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %5 = call ptr @memset(ptr %fwwn_ptr, i32 255, i32 32)
  %6 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trcmod, align 8
  tail call void @__bfa_trc(ptr noundef %7, i32 noundef 2049, i32 noundef 1400, i64 noundef %fabric_name) #9
  %fabric_name3 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 17
  %8 = ptrtoint ptr %fabric_name3 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fabric_name3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp = icmp eq i64 %9, 0
  %10 = ptrtoint ptr %fabric_name3 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %fabric_name, ptr %fabric_name3, align 8
  br i1 %cmp, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.else:                                          ; preds = %entry
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %port_cfg, align 8
  %w.sroa.0.0.extract.shift.i = lshr i64 %12, 56
  %w.sroa.0.0.extract.trunc.i = trunc i64 %w.sroa.0.0.extract.shift.i to i32
  %w.sroa.5.0.extract.shift.i = lshr i64 %12, 48
  %w.sroa.5.0.extract.trunc.i = trunc i64 %w.sroa.5.0.extract.shift.i to i32
  %w.sroa.6.0.extract.shift.i = lshr i64 %12, 40
  %w.sroa.6.0.extract.trunc.i = trunc i64 %w.sroa.6.0.extract.shift.i to i32
  %w.sroa.7.0.extract.shift.i = lshr i64 %12, 32
  %w.sroa.7.0.extract.trunc.i = trunc i64 %w.sroa.7.0.extract.shift.i to i32
  %13 = trunc i64 %12 to i32
  %14 = lshr i32 %13, 24
  %15 = lshr i32 %13, 16
  %16 = lshr i32 %13, 8
  %conv2.i = and i32 %w.sroa.5.0.extract.trunc.i, 255
  %conv4.i = and i32 %w.sroa.6.0.extract.trunc.i, 255
  %conv6.i = and i32 %w.sroa.7.0.extract.trunc.i, 255
  %conv10.i = and i32 %15, 255
  %conv12.i = and i32 %16, 255
  %conv14.i = and i32 %13, 255
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %pwwn_ptr, ptr noundef nonnull @.str.23, i32 noundef %w.sroa.0.0.extract.trunc.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %14, i32 noundef %conv10.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #9
  %fabric8 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %fabric8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fabric8, align 4
  %fabric_name9 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %fabric_name9 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %fabric_name9, align 8
  %w.sroa.0.0.extract.shift.i30 = lshr i64 %20, 56
  %w.sroa.0.0.extract.trunc.i31 = trunc i64 %w.sroa.0.0.extract.shift.i30 to i32
  %w.sroa.5.0.extract.shift.i32 = lshr i64 %20, 48
  %w.sroa.5.0.extract.trunc.i33 = trunc i64 %w.sroa.5.0.extract.shift.i32 to i32
  %w.sroa.6.0.extract.shift.i34 = lshr i64 %20, 40
  %w.sroa.6.0.extract.trunc.i35 = trunc i64 %w.sroa.6.0.extract.shift.i34 to i32
  %w.sroa.7.0.extract.shift.i36 = lshr i64 %20, 32
  %w.sroa.7.0.extract.trunc.i37 = trunc i64 %w.sroa.7.0.extract.shift.i36 to i32
  %21 = trunc i64 %20 to i32
  %22 = lshr i32 %21, 24
  %23 = lshr i32 %21, 16
  %24 = lshr i32 %21, 8
  %conv2.i38 = and i32 %w.sroa.5.0.extract.trunc.i33, 255
  %conv4.i39 = and i32 %w.sroa.6.0.extract.trunc.i35, 255
  %conv6.i40 = and i32 %w.sroa.7.0.extract.trunc.i37, 255
  %conv10.i41 = and i32 %23, 255
  %conv12.i42 = and i32 %24, 255
  %conv14.i43 = and i32 %21, 255
  %call.i44 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fwwn_ptr, ptr noundef nonnull @.str.23, i32 noundef %w.sroa.0.0.extract.trunc.i31, i32 noundef %conv2.i38, i32 noundef %conv4.i39, i32 noundef %conv6.i40, i32 noundef %22, i32 noundef %conv10.i41, i32 noundef %conv12.i42, i32 noundef %conv14.i43) #9
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 4
  %25 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull %pwwn_ptr, ptr noundef nonnull %fwwn_ptr) #12
  %27 = ptrtoint ptr %fabric8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fabric8, align 4
  %fcs.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %fcs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fcs.i, align 4
  %bfad1.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %bfad1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bfad1.i, align 4
  %bfad_aen_spinlock.i = getelementptr inbounds %struct.bfad_s, ptr %32, i32 0, i32 42
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_aen_spinlock.i) #9
  %free_aen_q.i = getelementptr inbounds %struct.bfad_s, ptr %32, i32 0, i32 39
  %33 = ptrtoint ptr %free_aen_q.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %free_aen_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %34, %free_aen_q.i
  br i1 %cmp.i.not.i, label %if.else.if.then24.critedge.i_crit_edge, label %do.end16.i

if.else.if.then24.critedge.i_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24.critedge.i

do.end16.i:                                       ; preds = %if.else
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %free_aen_q.i, ptr %prev.i, align 4
  %38 = load ptr, ptr %34, align 4
  %39 = ptrtoint ptr %free_aen_q.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %free_aen_q.i, align 4
  %tobool17.not.i = icmp eq ptr %34, null
  br i1 %tobool17.not.i, label %do.end16.i.if.then24.critedge.i_crit_edge, label %if.then18.i

do.end16.i.if.then24.critedge.i_crit_edge:        ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24.critedge.i

if.then18.i:                                      ; preds = %do.end16.i
  %active_aen_q.i = getelementptr inbounds %struct.bfad_s, ptr %32, i32 0, i32 40
  %prev.i.i = getelementptr inbounds %struct.bfad_s, ptr %32, i32 0, i32 40, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %34, ptr noundef %41, ptr noundef %active_aen_q.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then18.i.list_add_tail.exit.i_crit_edge

if.then18.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %34, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %active_aen_q.i, ptr %34, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %34, ptr %41, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then18.i.list_add_tail.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_aen_spinlock.i, i32 noundef %call4.i) #9
  %46 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %port_cfg, align 8
  %aen_data.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %34, i32 0, i32 3
  %48 = ptrtoint ptr %aen_data.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %aen_data.i, align 8
  %49 = ptrtoint ptr %fabric8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fabric8, align 4
  %fabric_name.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %50, i32 0, i32 17
  %51 = ptrtoint ptr %fabric_name.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %fabric_name.i, align 8
  %fwwn.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %34, i32 0, i32 3, i32 0, i32 2
  %53 = ptrtoint ptr %fwwn.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %fwwn.i, align 8
  %fcs29.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 9
  %54 = ptrtoint ptr %fcs29.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fcs29.i, align 4
  %fcs_aen_seq.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %fcs_aen_seq.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fcs_aen_seq.i, align 8
  %inc.i = add i32 %57, 1
  store i32 %inc.i, ptr %fcs_aen_seq.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i.i) #9
  %58 = call ptr @memset(ptr %ts.i.i, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts.i.i) #9
  %59 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %ts.i.i, align 8
  %aen_tv_sec.i.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %34, i32 0, i32 4
  %61 = ptrtoint ptr %aen_tv_sec.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %aen_tv_sec.i.i, align 8
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tv_nsec.i.i, align 8
  %div.i.i = sdiv i32 %63, 1000
  %conv.i1.i = sext i32 %div.i.i to i64
  %aen_tv_usec.i.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %34, i32 0, i32 5
  %64 = ptrtoint ptr %aen_tv_usec.i.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv.i1.i, ptr %aen_tv_usec.i.i, align 8
  %inst_no.i.i = getelementptr inbounds %struct.bfad_s, ptr %32, i32 0, i32 18
  %65 = ptrtoint ptr %inst_no.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %inst_no.i.i, align 8
  %bfad_num.i.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %34, i32 0, i32 7
  %67 = ptrtoint ptr %bfad_num.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %bfad_num.i.i, align 4
  %seq_num.i.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %34, i32 0, i32 6
  %68 = ptrtoint ptr %seq_num.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %inc.i, ptr %seq_num.i.i, align 8
  %aen_category.i.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %34, i32 0, i32 1
  %69 = ptrtoint ptr %aen_category.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %aen_category.i.i, align 8
  %aen_type.i.i = getelementptr inbounds %struct.bfa_aen_entry_s, ptr %34, i32 0, i32 2
  %70 = ptrtoint ptr %aen_type.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 13, ptr %aen_type.i.i, align 4
  %bfad_flags.i.i = getelementptr inbounds %struct.bfad_s, ptr %32, i32 0, i32 19
  %71 = ptrtoint ptr %bfad_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bfad_flags.i.i, align 4
  %and.i.i = and i32 %72, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %list_add_tail.exit.i.bfad_im_post_vendor_event.exit.i_crit_edge, label %if.then.i.i

list_add_tail.exit.i.bfad_im_post_vendor_event.exit.i_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bfad_im_post_vendor_event.exit.i

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %im.i.i = getelementptr inbounds %struct.bfad_s, ptr %32, i32 0, i32 29
  %73 = ptrtoint ptr %im.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %im.i.i, align 4
  %drv_workq.i.i = getelementptr inbounds %struct.bfad_im_s, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %drv_workq.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %drv_workq.i.i, align 4
  %aen_im_notify_work.i.i = getelementptr inbounds %struct.bfad_im_s, ptr %74, i32 0, i32 3
  %call.i.i2.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %76, ptr noundef %aen_im_notify_work.i.i) #9
  br label %bfad_im_post_vendor_event.exit.i

bfad_im_post_vendor_event.exit.i:                 ; preds = %if.then.i.i, %list_add_tail.exit.i.bfad_im_post_vendor_event.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i.i) #9
  br label %if.end20

if.then24.critedge.i:                             ; preds = %do.end16.i.if.then24.critedge.i_crit_edge, %if.else.if.then24.critedge.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_aen_spinlock.i, i32 noundef %call4.i) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then24.critedge.i, %bfad_im_post_vendor_event.exit.i, %entry.if.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fwwn_ptr) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pwwn_ptr) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_lps_flogo_comp(ptr nocapture noundef readnone %bfad, ptr noundef %uarg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %uarg, i32 0, i32 1
  %0 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm, align 8
  tail call void %1(ptr noundef %uarg, i32 noundef 19) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bfa_fcs_vf_lookup(ptr noundef readonly %fcs, i16 noundef zeroext %vf_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 2
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 8
  %conv = zext i16 %vf_id to i64
  tail call void @__bfa_trc(ptr noundef %1, i32 noundef 2049, i32 noundef 1439, i64 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vf_id)
  %cmp = icmp eq i16 %vf_id, 0
  %fabric = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8
  %retval.0 = select i1 %cmp, ptr %fabric, ptr null
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_vf_get_ports(ptr noundef readonly %vf, ptr noundef writeonly %lpwwn, ptr nocapture noundef %nlports) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vf, null
  %cmp1 = icmp eq ptr %lpwwn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %0 = ptrtoint ptr %nlports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3 = icmp eq i32 %1, 0
  br i1 %cmp3, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %fcs4 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %vf, i32 0, i32 2
  %2 = ptrtoint ptr %fcs4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcs4, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %vf_id = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %vf, i32 0, i32 10
  %6 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vf_id, align 2
  %conv = zext i16 %7 to i64
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2049, i32 noundef 1468, i64 noundef %conv) #9
  %8 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod, align 8
  %10 = ptrtoint ptr %nlports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlports, align 4
  %conv6 = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2049, i32 noundef 1469, i64 noundef %conv6) #9
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %vf, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %port_cfg, align 8
  %14 = ptrtoint ptr %lpwwn to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %lpwwn, align 8
  %vport_q = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %vf, i32 0, i32 13
  %15 = ptrtoint ptr %vport_q to i32
  call void @__asan_load4_noabort(i32 %15)
  %qe.040 = load ptr, ptr %vport_q, align 4
  %cmp.i.not41 = icmp eq ptr %qe.040, %vport_q
  br i1 %cmp.i.not41, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %if.end.for.body_crit_edge
  %qe.043 = phi ptr [ %qe.0, %if.end11.for.body_crit_edge ], [ %qe.040, %if.end.for.body_crit_edge ]
  %i.042 = phi i32 [ %inc14, %if.end11.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %16 = ptrtoint ptr %nlports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nlports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.042, i32 %17)
  %cmp8.not = icmp slt i32 %i.042, %17
  br i1 %cmp8.not, label %if.end11, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end11:                                         ; preds = %for.body
  %port_cfg12 = getelementptr inbounds %struct.bfa_fcs_vport_s, ptr %qe.043, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %port_cfg12 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %port_cfg12, align 8
  %inc14 = add nuw nsw i32 %i.042, 1
  %arrayidx15 = getelementptr i64, ptr %lpwwn, i32 %i.042
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx15, align 8
  %21 = ptrtoint ptr %qe.043 to i32
  call void @__asan_load4_noabort(i32 %21)
  %qe.0 = load ptr, ptr %qe.043, align 4
  %cmp.i.not = icmp eq ptr %qe.0, %vport_q
  br i1 %cmp.i.not, label %if.end11.for.end_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 1, %if.end.for.end_crit_edge ], [ %i.042, %for.body.for.end_crit_edge ], [ %inc14, %if.end11.for.end_crit_edge ]
  %22 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trcmod, align 8
  %conv18 = zext i32 %i.0.lcssa to i64
  tail call void @__bfa_trc(ptr noundef %23, i32 noundef 2049, i32 noundef 1481, i64 noundef %conv18) #9
  %24 = ptrtoint ptr %nlports to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %i.0.lcssa, ptr %nlports, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcs_attach(ptr noundef %fcs, ptr noundef %bfa, ptr noundef %bfad, i32 noundef %min_cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fabric1 = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bfa, ptr %fcs, align 8
  %bfad3 = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 1
  %1 = ptrtoint ptr %bfad3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %bfad, ptr %bfad3, align 4
  %min_cfg4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 5
  %2 = ptrtoint ptr %min_cfg4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %min_cfg, ptr %min_cfg4, align 4
  %num_rport_logins = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 12
  %3 = ptrtoint ptr %num_rport_logins to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %num_rport_logins, align 4
  %fcs5 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 10
  %4 = ptrtoint ptr %fcs5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %fcs5, align 4
  tail call void @fcbuild_init() #9
  %5 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fcs, align 8
  tail call void @bfa_fcport_event_register(ptr noundef %6, ptr noundef nonnull @bfa_fcs_port_event_handler, ptr noundef %fcs) #9
  %7 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fcs, align 8
  tail call void @bfa_uf_recv_register(ptr noundef %8, ptr noundef nonnull @bfa_fcs_uf_recv, ptr noundef %fcs) #9
  %9 = call ptr @memset(ptr %fabric1, i32 0, i32 1224)
  %fcs8 = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %fcs8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fcs, ptr %fcs8, align 4
  %vport_q = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 13
  %11 = ptrtoint ptr %vport_q to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %vport_q, ptr %vport_q, align 4
  %prev.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 13, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %vport_q, ptr %prev.i, align 4
  %vf_q = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 14
  %13 = ptrtoint ptr %vf_q to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %vf_q, ptr %vf_q, align 4
  %prev.i56 = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 14, i32 1
  %14 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %vf_q, ptr %prev.i56, align 4
  %15 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fcs, align 8
  %call = tail call ptr @bfa_lps_alloc(ptr noundef %16) #9
  %lps = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 23
  %17 = ptrtoint ptr %lps to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %lps, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !86

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1605, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %wc = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 21
  %18 = ptrtoint ptr %wc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bfa_fcs_fabric_delete_comp, ptr %wc, align 4
  %wc_cbarg2.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 21, i32 1
  %19 = ptrtoint ptr %wc_cbarg2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %fabric1, ptr %wc_cbarg2.i, align 4
  %wc_count.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 21, i32 2
  %20 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %wc_count.i, align 4
  %sm = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @bfa_fcs_fabric_sm_uninit, ptr %sm, align 8
  %bport = getelementptr inbounds %struct.bfa_fcs_s, ptr %fcs, i32 0, i32 8, i32 3
  %22 = ptrtoint ptr %fcs8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fcs8, align 4
  tail call void @bfa_fcs_lport_attach(ptr noundef %bport, ptr noundef %23, i16 noundef zeroext 0, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcbuild_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcport_event_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_port_event_handler(ptr noundef %cbarg, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 2
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %1, i32 noundef 2049, i32 noundef 1493, i64 noundef %conv) #9
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %event, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fabric = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 8
  %fcs.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 8, i32 2
  %3 = ptrtoint ptr %fcs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fcs.i, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trcmod.i, align 8
  %port_cfg.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 8, i32 3, i32 3
  %7 = ptrtoint ptr %port_cfg.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %port_cfg.i, align 8
  tail call void @__bfa_trc(ptr noundef %6, i32 noundef 2049, i32 noundef 1092, i64 noundef %8) #9
  %sm.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sm.i, align 8
  tail call void %10(ptr noundef %fabric, i32 noundef 4) #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fabric2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 8
  %fcs.i21 = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 8, i32 2
  %11 = ptrtoint ptr %fcs.i21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fcs.i21, align 4
  %trcmod.i22 = getelementptr inbounds %struct.bfa_fcs_s, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %trcmod.i22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trcmod.i22, align 8
  %port_cfg.i23 = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 8, i32 3, i32 3
  %15 = ptrtoint ptr %port_cfg.i23 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %port_cfg.i23, align 8
  tail call void @__bfa_trc(ptr noundef %14, i32 noundef 2049, i32 noundef 1102, i64 noundef %16) #9
  %sm.i24 = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %sm.i24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sm.i24, align 8
  tail call void %18(ptr noundef %fabric2, i32 noundef 3) #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1505, i32 noundef 9, ptr noundef null) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_uf_recv_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_uf_recv(ptr noundef %cbarg, ptr noundef %uf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data_ptr.i = getelementptr inbounds %struct.bfa_uf_s, ptr %uf, i32 0, i32 6
  %0 = ptrtoint ptr %data_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_ptr.i, align 4
  %data_len.i = getelementptr inbounds %struct.bfa_uf_s, ptr %uf, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %data_len.i, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 12)
  %bf.load = load i96, ptr %1, align 1
  %5 = and i96 %bf.load, -309485009821345068724781056
  %6 = icmp eq i96 %5, 24758800785707605497982484480
  br i1 %6, label %if.then, label %if.else51

if.then:                                          ; preds = %entry
  %tagged = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 9, i32 0, i32 1
  %7 = ptrtoint ptr %tagged to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tagged, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %tagged, align 4
  %9 = ptrtoint ptr %data_ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data_ptr.i, align 4
  %port_vfid = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 6
  %11 = ptrtoint ptr %port_vfid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %port_vfid, align 8
  %conv = zext i16 %12 to i32
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %bf.load8 = load i64, ptr %10, align 1
  %bf.lshr9 = lshr i64 %bf.load8, 33
  %14 = trunc i64 %bf.lshr9 to i32
  %bf.cast11 = and i32 %14, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast11, i32 %conv)
  %cmp12 = icmp eq i32 %bf.cast11, %conv
  br i1 %cmp12, label %if.then.if.end_crit_edge, label %if.else

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %if.then
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 2
  %15 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trcmod.i, align 8
  %conv.i = zext i32 %bf.cast11 to i64
  tail call void @__bfa_trc(ptr noundef %16, i32 noundef 2049, i32 noundef 1439, i64 noundef %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast11)
  %cmp.i = icmp eq i32 %bf.cast11, 0
  br i1 %cmp.i, label %if.else.if.end_crit_edge, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %fabric.0 = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 8
  %tobool.not = icmp eq ptr %fabric.0, null
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %if.end43

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.else.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1546, i32 noundef 9, ptr noundef null) #9
  %vfid_unknown = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 9, i32 0, i32 2
  %17 = ptrtoint ptr %vfid_unknown to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vfid_unknown, align 8
  %inc42 = add i32 %18, 1
  store i32 %inc42, ptr %vfid_unknown, align 8
  br label %cleanup

if.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr %struct.fc_vft_s, ptr %10, i32 1
  %sub = add i16 %3, -8
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 2
  %19 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %trcmod, align 8
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %bf.load46 = load i64, ptr %10, align 1
  %bf.lshr47 = lshr i64 %bf.load46, 33
  %conv50 = and i64 %bf.lshr47, 4095
  tail call void @__bfa_trc(ptr noundef %20, i32 noundef 2049, i32 noundef 1558, i64 noundef %conv50) #9
  br label %if.end56

if.else51:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %stats52 = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 9
  %22 = ptrtoint ptr %stats52 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stats52, align 8
  %inc54 = add i32 %23, 1
  store i32 %inc54, ptr %stats52, align 8
  %fabric55 = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 8
  br label %if.end56

if.end56:                                         ; preds = %if.else51, %if.end43
  %fchs.0 = phi ptr [ %add.ptr, %if.end43 ], [ %1, %if.else51 ]
  %len.0 = phi i16 [ %sub, %if.end43 ], [ %3, %if.else51 ]
  %fabric.1 = phi ptr [ %fabric.0, %if.end43 ], [ %fabric55, %if.else51 ]
  %trcmod57 = getelementptr inbounds %struct.bfa_fcs_s, ptr %cbarg, i32 0, i32 2
  %24 = ptrtoint ptr %trcmod57 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trcmod57, align 8
  %26 = ptrtoint ptr %fchs.0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fchs.0, align 4
  %conv58 = zext i32 %27 to i64
  tail call void @__bfa_trc(ptr noundef %25, i32 noundef 2049, i32 noundef 1564, i64 noundef %conv58) #9
  %28 = ptrtoint ptr %trcmod57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trcmod57, align 8
  %arrayidx60 = getelementptr i32, ptr %fchs.0, i32 1
  %30 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx60, align 4
  %conv61 = zext i32 %31 to i64
  tail call void @__bfa_trc(ptr noundef %29, i32 noundef 2049, i32 noundef 1565, i64 noundef %conv61) #9
  %32 = ptrtoint ptr %trcmod57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %trcmod57, align 8
  %arrayidx63 = getelementptr i32, ptr %fchs.0, i32 2
  %34 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx63, align 4
  %conv64 = zext i32 %35 to i64
  tail call void @__bfa_trc(ptr noundef %33, i32 noundef 2049, i32 noundef 1566, i64 noundef %conv64) #9
  %36 = ptrtoint ptr %trcmod57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %trcmod57, align 8
  %arrayidx66 = getelementptr i32, ptr %fchs.0, i32 3
  %38 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx66, align 4
  %conv67 = zext i32 %39 to i64
  tail call void @__bfa_trc(ptr noundef %37, i32 noundef 2049, i32 noundef 1567, i64 noundef %conv67) #9
  %40 = ptrtoint ptr %trcmod57 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %trcmod57, align 8
  %arrayidx69 = getelementptr i32, ptr %fchs.0, i32 4
  %42 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx69, align 4
  %conv70 = zext i32 %43 to i64
  tail call void @__bfa_trc(ptr noundef %41, i32 noundef 2049, i32 noundef 1568, i64 noundef %conv70) #9
  %44 = ptrtoint ptr %trcmod57 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %trcmod57, align 8
  %arrayidx72 = getelementptr i32, ptr %fchs.0, i32 5
  %46 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx72, align 4
  %conv73 = zext i32 %47 to i64
  tail call void @__bfa_trc(ptr noundef %45, i32 noundef 2049, i32 noundef 1569, i64 noundef %conv73) #9
  %48 = ptrtoint ptr %trcmod57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %trcmod57, align 8
  %conv75 = zext i16 %len.0 to i64
  tail call void @__bfa_trc(ptr noundef %49, i32 noundef 2049, i32 noundef 1570, i64 noundef %conv75) #9
  tail call void @bfa_fcs_fabric_uf_recv(ptr noundef %fabric.1, ptr noundef %fchs.0, i16 noundef zeroext %len.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end
  tail call void @bfa_uf_free(ptr noundef %uf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_lps_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_fabric_delete_comp(ptr noundef %cbarg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %cbarg, i32 0, i32 1
  %0 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm, align 8
  tail call void %1(ptr noundef %cbarg, i32 noundef 14) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_fabric_sm_uninit(ptr noundef %fabric, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 207, i64 noundef %5) #9
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2049, i32 noundef 208, i64 noundef %conv) #9
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %event, label %do.body [
    i32 1, label %sw.bb
    i32 4, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge22
  ]

entry.sw.epilog_crit_edge22:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bport = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %11 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bfa_fcs_fabric_sm_created, ptr %sm, align 8
  %roles.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3, i32 4
  %12 = ptrtoint ptr %roles.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %roles.i, align 8
  %13 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fcs, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %attr.i = getelementptr inbounds %struct.bfa_s, ptr %16, i32 0, i32 3, i32 21
  %17 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attr.i, align 8
  %nwwn.i = getelementptr inbounds %struct.bfi_ioc_attr_s, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %nwwn.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %nwwn.i, align 1
  %nwwn2.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3, i32 1
  %21 = ptrtoint ptr %nwwn2.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %nwwn2.i, align 8
  %22 = load ptr, ptr %14, align 8
  %attr6.i = getelementptr inbounds %struct.bfa_s, ptr %22, i32 0, i32 3, i32 21
  %23 = ptrtoint ptr %attr6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %attr6.i, align 8
  %pwwn.i = getelementptr inbounds %struct.bfi_ioc_attr_s, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %pwwn.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %pwwn.i, align 1
  %27 = ptrtoint ptr %port_cfg to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %port_cfg, align 8
  tail call void @bfa_fcs_lport_init(ptr noundef %bport, ptr noundef %port_cfg) #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fcs, align 4
  %trcmod8 = getelementptr inbounds %struct.bfa_fcs_s, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %trcmod8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trcmod8, align 8
  %or = or i32 %event, -559087616
  %conv9 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %31, i32 noundef 2049, i32 noundef 222, i64 noundef %conv9) #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 222, i32 noundef %event) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_lport_attach(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_fabric_sm_flogi(ptr noundef %fabric, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 327, i64 noundef %5) #9
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2049, i32 noundef 328, i64 noundef %conv) #9
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %event, label %do.body48 [
    i32 5, label %sw.bb
    i32 6, label %sw.bb10
    i32 15, label %sw.bb14
    i32 7, label %sw.bb32
    i32 3, label %sw.bb38
    i32 2, label %sw.bb43
  ]

sw.bb:                                            ; preds = %entry
  %11 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fcs, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %bb_credit = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 9
  %15 = ptrtoint ptr %bb_credit to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bb_credit, align 4
  tail call void @bfa_fcport_set_tx_bbcredit(ptr noundef %14, i16 noundef zeroext %16) #9
  %fab_type = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 4
  %17 = ptrtoint ptr %fab_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %fab_type, align 8
  %auth_reqd = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 18
  %18 = ptrtoint ptr %auth_reqd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %auth_reqd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %sw.bb.if.else_crit_edge, label %land.lhs.true

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %is_auth = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 8
  %20 = ptrtoint ptr %is_auth to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_auth, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool5.not = icmp eq i8 %21, 0
  br i1 %tobool5.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %22 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @bfa_fcs_fabric_sm_auth, ptr %sm, align 8
  %23 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fcs, align 4
  %trcmod7 = getelementptr inbounds %struct.bfa_fcs_s, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %trcmod7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trcmod7, align 8
  tail call void @__bfa_trc(ptr noundef %26, i32 noundef 2049, i32 noundef 339, i64 noundef %conv) #9
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %sm9 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %27 = ptrtoint ptr %sm9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @bfa_fcs_fabric_sm_online, ptr %sm9, align 8
  tail call fastcc void @bfa_fcs_fabric_notify_online(ptr noundef %fabric)
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sm11 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %28 = ptrtoint ptr %sm11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bfa_fcs_fabric_sm_flogi_retry, ptr %sm11, align 8
  %29 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fcs, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %timer_mod = getelementptr inbounds %struct.bfa_s, ptr %32, i32 0, i32 5
  %delay_timer = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 19
  tail call void @bfa_timer_begin(ptr noundef %timer_mod, ptr noundef %delay_timer, ptr noundef nonnull @bfa_fcs_fabric_delay, ptr noundef %fabric, i32 noundef 2000) #9
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %sm15 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %33 = ptrtoint ptr %sm15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bfa_fcs_fabric_sm_loopback, ptr %sm15, align 8
  %lps = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 23
  %34 = ptrtoint ptr %lps to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lps, align 8
  %sm16 = getelementptr inbounds %struct.bfa_lps_s, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %sm16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sm16, align 4
  tail call void %37(ptr noundef %35, i32 noundef 6) #9
  %38 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fcs, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %call = tail call i32 @bfa_fcport_get_topology(ptr noundef %41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp = icmp eq i32 %call, 5
  br i1 %cmp, label %if.then21, label %if.else29

if.then21:                                        ; preds = %sw.bb14
  %fab_type22 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 4
  %42 = ptrtoint ptr %fab_type22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fab_type22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp23 = icmp eq i32 %43, 1
  %oper_type = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 5
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %oper_type to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 5, ptr %oper_type, align 4
  br label %sw.epilog

if.else26:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %oper_type to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 21, ptr %oper_type, align 4
  br label %sw.epilog

if.else29:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  %oper_type30 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 5
  %46 = ptrtoint ptr %oper_type30 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 6, ptr %oper_type30, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fab_type33 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 4
  %47 = ptrtoint ptr %fab_type33 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %fab_type33, align 8
  %48 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fcs, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %bb_credit36 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 9
  %52 = ptrtoint ptr %bb_credit36 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %bb_credit36, align 4
  tail call void @bfa_fcport_set_tx_bbcredit(ptr noundef %51, i16 noundef zeroext %53) #9
  tail call fastcc void @bfa_fcs_fabric_notify_online(ptr noundef %fabric)
  %sm37 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %54 = ptrtoint ptr %sm37 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @bfa_fcs_fabric_sm_nofabric, ptr %sm37, align 8
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sm39 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %55 = ptrtoint ptr %sm39 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @bfa_fcs_fabric_sm_linkdown, ptr %sm39, align 8
  %lps40 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 23
  %56 = ptrtoint ptr %lps40 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lps40, align 8
  %sm41 = getelementptr inbounds %struct.bfa_lps_s, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %sm41 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sm41, align 4
  tail call void %59(ptr noundef %57, i32 noundef 6) #9
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  %sm44 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %60 = ptrtoint ptr %sm44 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @bfa_fcs_fabric_sm_deleting, ptr %sm44, align 8
  %lps45 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 23
  %61 = ptrtoint ptr %lps45 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lps45, align 8
  %sm46 = getelementptr inbounds %struct.bfa_lps_s, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %sm46 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sm46, align 4
  tail call void %64(ptr noundef %62, i32 noundef 6) #9
  %vport_q.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %65 = ptrtoint ptr %vport_q.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vport_q.i, align 4
  %cmp.i.not10.i = icmp eq ptr %66, %vport_q.i
  br i1 %cmp.i.not10.i, label %sw.bb43.for.end.i_crit_edge, label %sw.bb43.for.body.i_crit_edge

sw.bb43.for.body.i_crit_edge:                     ; preds = %sw.bb43
  br label %for.body.i

sw.bb43.for.end.i_crit_edge:                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb43.for.body.i_crit_edge
  %qe.011.i = phi ptr [ %qen.0.i, %for.body.i.for.body.i_crit_edge ], [ %66, %sw.bb43.for.body.i_crit_edge ]
  %67 = ptrtoint ptr %qe.011.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %qen.0.i = load ptr, ptr %qe.011.i, align 4
  tail call void @bfa_fcs_vport_fcs_delete(ptr noundef %qe.011.i) #9
  %cmp.i.not.i = icmp eq ptr %qen.0.i, %vport_q.i
  br i1 %cmp.i.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb43.for.end.i_crit_edge
  %bport.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3
  tail call void @bfa_fcs_lport_delete(ptr noundef %bport.i) #9
  %wc_count.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 2
  %68 = ptrtoint ptr %wc_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %wc_count.i.i.i, align 4
  %dec.i.i.i = add i32 %69, -1
  store i32 %dec.i.i.i, ptr %wc_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.end.i.sw.epilog_crit_edge

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %wc.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21
  %70 = ptrtoint ptr %wc.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wc.i, align 4
  %wc_cbarg.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 1
  %72 = ptrtoint ptr %wc_cbarg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wc_cbarg.i.i.i, align 4
  tail call void %71(ptr noundef %73) #9
  br label %sw.epilog

do.body48:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fcs, align 4
  %trcmod50 = getelementptr inbounds %struct.bfa_fcs_s, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %trcmod50 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %trcmod50, align 8
  %or = or i32 %event, -559087616
  %conv51 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %77, i32 noundef 2049, i32 noundef 379, i64 noundef %conv51) #9
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 379, i32 noundef %event) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body48, %if.then.i.i.i, %for.end.i.sw.epilog_crit_edge, %sw.bb38, %sw.bb32, %if.else29, %if.else26, %if.then25, %sw.bb10, %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @bfa_fcport_get_myalpa(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_lport_online(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_fabric_sm_cleanup(ptr nocapture noundef %fabric, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 715, i64 noundef %5) #9
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2049, i32 noundef 716, i64 noundef %conv) #9
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %event, label %do.body [
    i32 18, label %entry.sw.bb_crit_edge
    i32 19, label %entry.sw.bb_crit_edge17
    i32 3, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge17
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %11 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bfa_fcs_fabric_sm_created, ptr %sm, align 8
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %wc_count.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wc_count.i, align 4
  %dec.i = add i32 %15, -1
  store i32 %dec.i, ptr %wc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %wc = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 10
  %16 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wc, align 4
  %wc_cbarg.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %13, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %wc_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wc_cbarg.i, align 4
  tail call void %17(ptr noundef %19) #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fcs, align 4
  %trcmod5 = getelementptr inbounds %struct.bfa_fcs_s, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %trcmod5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trcmod5, align 8
  %or = or i32 %event, -559087616
  %conv6 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %23, i32 noundef 2049, i32 noundef 733, i64 noundef %conv6) #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 733, i32 noundef %event) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcport_set_tx_bbcredit(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_fabric_sm_auth(ptr noundef %fabric, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 420, i64 noundef %5) #9
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2049, i32 noundef 421, i64 noundef %conv) #9
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %event, label %do.body [
    i32 12, label %sw.bb
    i32 13, label %sw.bb5
    i32 8, label %sw.bb7
    i32 3, label %sw.bb9
    i32 2, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %11 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bfa_fcs_fabric_sm_auth_failed, ptr %sm, align 8
  %lps = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 23
  %12 = ptrtoint ptr %lps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lps, align 8
  %sm3 = getelementptr inbounds %struct.bfa_lps_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %sm3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sm3, align 4
  tail call void %15(ptr noundef %13, i32 noundef 6) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sm6 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %16 = ptrtoint ptr %sm6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @bfa_fcs_fabric_sm_online, ptr %sm6, align 8
  tail call fastcc void @bfa_fcs_fabric_notify_online(ptr noundef %fabric)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sm8 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %17 = ptrtoint ptr %sm8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_fabric_sm_evfp, ptr %sm8, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sm10 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %18 = ptrtoint ptr %sm10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bfa_fcs_fabric_sm_linkdown, ptr %sm10, align 8
  %lps11 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 23
  %19 = ptrtoint ptr %lps11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lps11, align 8
  %sm12 = getelementptr inbounds %struct.bfa_lps_s, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %sm12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sm12, align 4
  tail call void %22(ptr noundef %20, i32 noundef 6) #9
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %sm15 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %23 = ptrtoint ptr %sm15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bfa_fcs_fabric_sm_deleting, ptr %sm15, align 8
  %vport_q.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %24 = ptrtoint ptr %vport_q.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vport_q.i, align 4
  %cmp.i.not10.i = icmp eq ptr %25, %vport_q.i
  br i1 %cmp.i.not10.i, label %sw.bb14.for.end.i_crit_edge, label %sw.bb14.for.body.i_crit_edge

sw.bb14.for.body.i_crit_edge:                     ; preds = %sw.bb14
  br label %for.body.i

sw.bb14.for.end.i_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb14.for.body.i_crit_edge
  %qe.011.i = phi ptr [ %qen.0.i, %for.body.i.for.body.i_crit_edge ], [ %25, %sw.bb14.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %qe.011.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %qen.0.i = load ptr, ptr %qe.011.i, align 4
  tail call void @bfa_fcs_vport_fcs_delete(ptr noundef %qe.011.i) #9
  %cmp.i.not.i = icmp eq ptr %qen.0.i, %vport_q.i
  br i1 %cmp.i.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb14.for.end.i_crit_edge
  %bport.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3
  tail call void @bfa_fcs_lport_delete(ptr noundef %bport.i) #9
  %wc_count.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 2
  %27 = ptrtoint ptr %wc_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wc_count.i.i.i, align 4
  %dec.i.i.i = add i32 %28, -1
  store i32 %dec.i.i.i, ptr %wc_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.end.i.sw.epilog_crit_edge

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %wc.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21
  %29 = ptrtoint ptr %wc.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wc.i, align 4
  %wc_cbarg.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 1
  %31 = ptrtoint ptr %wc_cbarg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wc_cbarg.i.i.i, align 4
  tail call void %30(ptr noundef %32) #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fcs, align 4
  %trcmod17 = getelementptr inbounds %struct.bfa_fcs_s, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %trcmod17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trcmod17, align 8
  %or = or i32 %event, -559087616
  %conv18 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %36, i32 noundef 2049, i32 noundef 449, i64 noundef %conv18) #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 449, i32 noundef %event) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %if.then.i.i.i, %for.end.i.sw.epilog_crit_edge, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_fcs_fabric_notify_online(ptr noundef %fabric) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %fabric_name = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 17
  %4 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %fabric_name, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 952, i64 noundef %5) #9
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %call = tail call i32 @bfa_fcport_get_topology(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp = icmp eq i32 %call, 5
  br i1 %cmp, label %if.then, label %if.else5

if.then:                                          ; preds = %entry
  %fab_type = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 4
  %10 = ptrtoint ptr %fab_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fab_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp2 = icmp eq i32 %11, 1
  %oper_type = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 5
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %oper_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %oper_type, align 4
  br label %do.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %oper_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 21, ptr %oper_type, align 4
  br label %do.end

if.else5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %oper_type6 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 5
  %14 = ptrtoint ptr %oper_type6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %oper_type6, align 4
  br label %do.end

do.end:                                           ; preds = %if.else5, %if.else, %if.then3
  %fabric_onlines = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 22, i32 9
  %15 = ptrtoint ptr %fabric_onlines to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fabric_onlines, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %fabric_onlines, align 4
  %bport = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3
  tail call void @bfa_fcs_lport_online(ptr noundef %bport) #9
  %vport_q = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %17 = ptrtoint ptr %vport_q to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vport_q, align 4
  %cmp.i.not25 = icmp eq ptr %18, %vport_q
  br i1 %cmp.i.not25, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %qe.026 = phi ptr [ %qen.0, %for.body.for.body_crit_edge ], [ %18, %do.end.for.body_crit_edge ]
  %19 = ptrtoint ptr %qe.026 to i32
  call void @__asan_load4_noabort(i32 %19)
  %qen.0 = load ptr, ptr %qe.026, align 4
  tail call void @bfa_fcs_vport_online(ptr noundef %qe.026) #9
  %cmp.i.not = icmp eq ptr %qen.0, %vport_q
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_fabric_sm_flogi_retry(ptr noundef %fabric, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 388, i64 noundef %5) #9
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2049, i32 noundef 389, i64 noundef %conv) #9
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %event, label %do.body [
    i32 11, label %sw.bb
    i32 3, label %sw.bb3
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %11 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bfa_fcs_fabric_sm_flogi, ptr %sm, align 8
  %12 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fcs, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %lps.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 23
  %16 = ptrtoint ptr %lps.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lps.i, align 8
  %call.i = tail call zeroext i16 @bfa_fcport_get_maxfrsize(ptr noundef %15) #9
  %18 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %port_cfg, align 8
  %nwwn.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3, i32 1
  %20 = ptrtoint ptr %nwwn.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %nwwn.i, align 8
  %auth_reqd.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 18
  %22 = ptrtoint ptr %auth_reqd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %auth_reqd.i, align 8
  tail call void @bfa_lps_flogi(ptr noundef %17, ptr noundef %fabric, i8 noundef zeroext 0, i16 noundef zeroext %call.i, i64 noundef %19, i64 noundef %21, i32 noundef %23) #9
  %stats.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 22
  %24 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %stats.i, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sm4 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %26 = ptrtoint ptr %sm4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bfa_fcs_fabric_sm_linkdown, ptr %sm4, align 8
  %delay_timer = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 19
  tail call void @bfa_timer_stop(ptr noundef %delay_timer) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %sm6 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %27 = ptrtoint ptr %sm6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @bfa_fcs_fabric_sm_deleting, ptr %sm6, align 8
  %delay_timer7 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 19
  tail call void @bfa_timer_stop(ptr noundef %delay_timer7) #9
  %vport_q.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %28 = ptrtoint ptr %vport_q.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vport_q.i, align 4
  %cmp.i.not10.i = icmp eq ptr %29, %vport_q.i
  br i1 %cmp.i.not10.i, label %sw.bb5.for.end.i_crit_edge, label %sw.bb5.for.body.i_crit_edge

sw.bb5.for.body.i_crit_edge:                      ; preds = %sw.bb5
  br label %for.body.i

sw.bb5.for.end.i_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb5.for.body.i_crit_edge
  %qe.011.i = phi ptr [ %qen.0.i, %for.body.i.for.body.i_crit_edge ], [ %29, %sw.bb5.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %qe.011.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %qen.0.i = load ptr, ptr %qe.011.i, align 4
  tail call void @bfa_fcs_vport_fcs_delete(ptr noundef %qe.011.i) #9
  %cmp.i.not.i = icmp eq ptr %qen.0.i, %vport_q.i
  br i1 %cmp.i.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb5.for.end.i_crit_edge
  %bport.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3
  tail call void @bfa_fcs_lport_delete(ptr noundef %bport.i) #9
  %wc_count.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 2
  %31 = ptrtoint ptr %wc_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wc_count.i.i.i, align 4
  %dec.i.i.i = add i32 %32, -1
  store i32 %dec.i.i.i, ptr %wc_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.end.i.sw.epilog_crit_edge

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %wc.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21
  %33 = ptrtoint ptr %wc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wc.i, align 4
  %wc_cbarg.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 1
  %35 = ptrtoint ptr %wc_cbarg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wc_cbarg.i.i.i, align 4
  tail call void %34(ptr noundef %36) #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fcs, align 4
  %trcmod9 = getelementptr inbounds %struct.bfa_fcs_s, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %trcmod9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %trcmod9, align 8
  %or = or i32 %event, -559087616
  %conv10 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %40, i32 noundef 2049, i32 noundef 409, i64 noundef %conv10) #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 409, i32 noundef %event) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %if.then.i.i.i, %for.end.i.sw.epilog_crit_edge, %sw.bb3, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_timer_begin(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_fabric_delay(ptr noundef %cbarg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %cbarg, i32 0, i32 1
  %0 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm, align 8
  tail call void %1(ptr noundef %cbarg, i32 noundef 11) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_fabric_sm_nofabric(ptr noundef %fabric, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 512, i64 noundef %5) #9
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2049, i32 noundef 513, i64 noundef %conv) #9
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %event, label %do.body [
    i32 3, label %sw.bb
    i32 2, label %sw.bb5
    i32 7, label %sw.bb7
    i32 6, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %11 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bfa_fcs_fabric_sm_linkdown, ptr %sm, align 8
  %lps = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 23
  %12 = ptrtoint ptr %lps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lps, align 8
  %sm3 = getelementptr inbounds %struct.bfa_lps_s, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %sm3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sm3, align 4
  tail call void %15(ptr noundef %13, i32 noundef 6) #9
  %16 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fcs, align 4
  %trcmod.i = getelementptr inbounds %struct.bfa_fcs_s, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trcmod.i, align 8
  %fabric_name.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 17
  %20 = ptrtoint ptr %fabric_name.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fabric_name.i, align 8
  tail call void @__bfa_trc(ptr noundef %19, i32 noundef 2049, i32 noundef 974, i64 noundef %21) #9
  %fabric_offlines.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 22, i32 10
  %22 = ptrtoint ptr %fabric_offlines.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fabric_offlines.i, align 8
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %fabric_offlines.i, align 8
  %vport_q.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %24 = ptrtoint ptr %vport_q.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vport_q.i, align 4
  %cmp.i.not15.i = icmp eq ptr %25, %vport_q.i
  br i1 %cmp.i.not15.i, label %sw.bb.bfa_fcs_fabric_notify_offline.exit_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.bfa_fcs_fabric_notify_offline.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %bfa_fcs_fabric_notify_offline.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %qe.016.i = phi ptr [ %qen.0.i, %for.body.i.for.body.i_crit_edge ], [ %25, %sw.bb.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %qe.016.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %qen.0.i = load ptr, ptr %qe.016.i, align 4
  tail call void @bfa_fcs_vport_offline(ptr noundef %qe.016.i) #9
  %cmp.i.not.i = icmp eq ptr %qen.0.i, %vport_q.i
  br i1 %cmp.i.not.i, label %for.body.i.bfa_fcs_fabric_notify_offline.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.bfa_fcs_fabric_notify_offline.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bfa_fcs_fabric_notify_offline.exit

bfa_fcs_fabric_notify_offline.exit:               ; preds = %for.body.i.bfa_fcs_fabric_notify_offline.exit_crit_edge, %sw.bb.bfa_fcs_fabric_notify_offline.exit_crit_edge
  %bport.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3
  tail call void @bfa_fcs_lport_offline(ptr noundef %bport.i) #9
  %27 = ptrtoint ptr %fabric_name.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %fabric_name.i, align 8
  %fabric_ip_addr.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 24
  %28 = ptrtoint ptr %fabric_ip_addr.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %fabric_ip_addr.i, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %sm6 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %29 = ptrtoint ptr %sm6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @bfa_fcs_fabric_sm_deleting, ptr %sm6, align 8
  %vport_q.i34 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %30 = ptrtoint ptr %vport_q.i34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vport_q.i34, align 4
  %cmp.i.not10.i = icmp eq ptr %31, %vport_q.i34
  br i1 %cmp.i.not10.i, label %sw.bb5.for.end.i_crit_edge, label %sw.bb5.for.body.i37_crit_edge

sw.bb5.for.body.i37_crit_edge:                    ; preds = %sw.bb5
  br label %for.body.i37

sw.bb5.for.end.i_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i37:                                     ; preds = %for.body.i37.for.body.i37_crit_edge, %sw.bb5.for.body.i37_crit_edge
  %qe.011.i = phi ptr [ %qen.0.i35, %for.body.i37.for.body.i37_crit_edge ], [ %31, %sw.bb5.for.body.i37_crit_edge ]
  %32 = ptrtoint ptr %qe.011.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %qen.0.i35 = load ptr, ptr %qe.011.i, align 4
  tail call void @bfa_fcs_vport_fcs_delete(ptr noundef %qe.011.i) #9
  %cmp.i.not.i36 = icmp eq ptr %qen.0.i35, %vport_q.i34
  br i1 %cmp.i.not.i36, label %for.body.i37.for.end.i_crit_edge, label %for.body.i37.for.body.i37_crit_edge

for.body.i37.for.body.i37_crit_edge:              ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i37

for.body.i37.for.end.i_crit_edge:                 ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i37.for.end.i_crit_edge, %sw.bb5.for.end.i_crit_edge
  %bport.i38 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3
  tail call void @bfa_fcs_lport_delete(ptr noundef %bport.i38) #9
  %wc_count.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 2
  %33 = ptrtoint ptr %wc_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wc_count.i.i.i, align 4
  %dec.i.i.i = add i32 %34, -1
  store i32 %dec.i.i.i, ptr %wc_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.end.i.sw.epilog_crit_edge

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %wc.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21
  %35 = ptrtoint ptr %wc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wc.i, align 4
  %wc_cbarg.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 1
  %37 = ptrtoint ptr %wc_cbarg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wc_cbarg.i.i.i, align 4
  tail call void %36(ptr noundef %38) #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fcs, align 4
  %trcmod9 = getelementptr inbounds %struct.bfa_fcs_s, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %trcmod9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %trcmod9, align 8
  %bb_credit = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 9
  %43 = ptrtoint ptr %bb_credit to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %bb_credit, align 4
  %conv10 = zext i16 %44 to i64
  tail call void @__bfa_trc(ptr noundef %42, i32 noundef 2049, i32 noundef 528, i64 noundef %conv10) #9
  %45 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fcs, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %49 = ptrtoint ptr %bb_credit to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %bb_credit, align 4
  tail call void @bfa_fcport_set_tx_bbcredit(ptr noundef %48, i16 noundef zeroext %50) #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fcs, align 4
  %trcmod14 = getelementptr inbounds %struct.bfa_fcs_s, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %trcmod14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %trcmod14, align 8
  %or = or i32 %event, -559087616
  %conv15 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %54, i32 noundef 2049, i32 noundef 537, i64 noundef %conv15) #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 537, i32 noundef %event) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb7, %if.then.i.i.i, %for.end.i.sw.epilog_crit_edge, %bfa_fcs_fabric_notify_offline.exit, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_fabric_sm_evfp(ptr nocapture noundef %fabric, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 594, i64 noundef %5) #9
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2049, i32 noundef 595, i64 noundef %conv) #9
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %event, label %do.body [
    i32 5, label %sw.bb
    i32 9, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %11 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bfa_fcs_fabric_sm_evfp_done, ptr %sm, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sm4 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %12 = ptrtoint ptr %sm4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @bfa_fcs_fabric_sm_isolated, ptr %sm4, align 8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fcs, align 4
  %trcmod6 = getelementptr inbounds %struct.bfa_fcs_s, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %trcmod6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trcmod6, align 8
  %or = or i32 %event, -559087616
  %conv7 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %16, i32 noundef 2049, i32 noundef 607, i64 noundef %conv7) #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 607, i32 noundef %event) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb3, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_fabric_sm_evfp_done(ptr nocapture noundef readonly %fabric, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 618, i64 noundef %5) #9
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcs, align 4
  %trcmod2 = getelementptr inbounds %struct.bfa_fcs_s, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trcmod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod2, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 2049, i32 noundef 619, i64 noundef %conv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_fabric_sm_isolated(ptr nocapture noundef readonly %fabric, i32 noundef %event) #0 align 64 {
entry:
  %pwwn_ptr = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %bfad1 = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bfad1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bfad1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pwwn_ptr) #9
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %4 = call ptr @memset(ptr %pwwn_ptr, i32 255, i32 32)
  %5 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trcmod, align 8
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %6, i32 noundef 2049, i32 noundef 632, i64 noundef %8) #9
  %9 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trcmod4, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %12, i32 noundef 2049, i32 noundef 633, i64 noundef %conv) #9
  %13 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %port_cfg, align 8
  %w.sroa.0.0.extract.shift.i = lshr i64 %14, 56
  %w.sroa.0.0.extract.trunc.i = trunc i64 %w.sroa.0.0.extract.shift.i to i32
  %w.sroa.5.0.extract.shift.i = lshr i64 %14, 48
  %w.sroa.5.0.extract.trunc.i = trunc i64 %w.sroa.5.0.extract.shift.i to i32
  %w.sroa.6.0.extract.shift.i = lshr i64 %14, 40
  %w.sroa.6.0.extract.trunc.i = trunc i64 %w.sroa.6.0.extract.shift.i to i32
  %w.sroa.7.0.extract.shift.i = lshr i64 %14, 32
  %w.sroa.7.0.extract.trunc.i = trunc i64 %w.sroa.7.0.extract.shift.i to i32
  %15 = trunc i64 %14 to i32
  %16 = lshr i32 %15, 24
  %17 = lshr i32 %15, 16
  %18 = lshr i32 %15, 8
  %conv2.i = and i32 %w.sroa.5.0.extract.trunc.i, 255
  %conv4.i = and i32 %w.sroa.6.0.extract.trunc.i, 255
  %conv6.i = and i32 %w.sroa.7.0.extract.trunc.i, 255
  %conv10.i = and i32 %17, 255
  %conv12.i = and i32 %18, 255
  %conv14.i = and i32 %15, 255
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %pwwn_ptr, ptr noundef nonnull @.str.23, i32 noundef %w.sroa.0.0.extract.trunc.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %16, i32 noundef %conv10.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_log_level to i32))
  %19 = load i32, ptr @bfa_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp = icmp eq i32 %19, 4
  br i1 %cmp, label %do.end, label %entry.do.end15_crit_edge

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fcs, align 4
  %port_vfid = getelementptr inbounds %struct.bfa_fcs_s, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %port_vfid to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %port_vfid, align 8
  %conv12 = zext i16 %25 to i32
  %event_arg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 20
  %26 = ptrtoint ptr %event_arg to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %event_arg, align 8
  %conv13 = zext i16 %27 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull %pwwn_ptr, i32 noundef %conv12, i32 noundef %conv13) #12
  br label %do.end15

do.end15:                                         ; preds = %do.end, %entry.do.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pwwn_ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_vport_online(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_timer_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_lps_flogi(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @bfa_fcport_get_maxfrsize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_fabric_sm_created(ptr noundef %fabric, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %bport = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3
  %port_cfg = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %port_cfg, align 8
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 2049, i32 noundef 235, i64 noundef %7) #9
  %8 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcs, align 4
  %trcmod4 = getelementptr inbounds %struct.bfa_fcs_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod4, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 2049, i32 noundef 236, i64 noundef %conv) #9
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %event, label %do.body41 [
    i32 16, label %sw.bb
    i32 4, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge76
    i32 2, label %sw.bb39
  ]

entry.sw.epilog_crit_edge76:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %13 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fcs, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %call = tail call i32 @bfa_fcport_is_linkup(ptr noundef %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %17 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_fcs_fabric_sm_linkdown, ptr %sm, align 8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %call7 = tail call i32 @bfa_fcport_get_topology(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call7)
  %cmp = icmp eq i32 %call7, 2
  br i1 %cmp, label %if.then9, label %if.else35

if.then9:                                         ; preds = %if.end
  %fab_type = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 4
  %18 = ptrtoint ptr %fab_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %fab_type, align 8
  %call10 = tail call zeroext i8 @bfa_fcport_get_myalpa(ptr noundef %3) #9
  %pid = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 5
  %19 = zext i8 %call10 to i24
  %20 = ptrtoint ptr %pid to i32
  call void @__asan_storeN_noabort(i32 %20, i32 3)
  store i24 %19, ptr %pid, align 4
  %sm18 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %21 = ptrtoint ptr %sm18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @bfa_fcs_fabric_sm_online, ptr %sm18, align 8
  %22 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fcs, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %call21 = tail call i32 @bfa_fcport_get_topology(ptr noundef %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 5
  br i1 %cmp22, label %if.then24, label %if.else31

if.then24:                                        ; preds = %if.then9
  %26 = ptrtoint ptr %fab_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fab_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp26 = icmp eq i32 %27, 1
  %oper_type = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 5
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %oper_type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 5, ptr %oper_type, align 4
  br label %do.end

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %oper_type to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 21, ptr %oper_type, align 4
  br label %do.end

if.else31:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %oper_type32 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 5
  %30 = ptrtoint ptr %oper_type32 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 6, ptr %oper_type32, align 4
  br label %do.end

do.end:                                           ; preds = %if.else31, %if.else, %if.then28
  tail call void @bfa_fcs_lport_online(ptr noundef %bport) #9
  br label %sw.epilog

if.else35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sm36 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %31 = ptrtoint ptr %sm36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @bfa_fcs_fabric_sm_flogi, ptr %sm36, align 8
  %32 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fcs, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %lps.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 23
  %36 = ptrtoint ptr %lps.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lps.i, align 8
  %call.i = tail call zeroext i16 @bfa_fcport_get_maxfrsize(ptr noundef %35) #9
  %38 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %port_cfg, align 8
  %nwwn.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 3, i32 3, i32 1
  %40 = ptrtoint ptr %nwwn.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %nwwn.i, align 8
  %auth_reqd.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 18
  %42 = ptrtoint ptr %auth_reqd.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %auth_reqd.i, align 8
  tail call void @bfa_lps_flogi(ptr noundef %37, ptr noundef %fabric, i8 noundef zeroext 0, i16 noundef zeroext %call.i, i64 noundef %39, i64 noundef %41, i32 noundef %43) #9
  %stats.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 22
  %44 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %45, 1
  store i32 %inc.i, ptr %stats.i, align 8
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  %sm40 = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 1
  %46 = ptrtoint ptr %sm40 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @bfa_fcs_fabric_sm_deleting, ptr %sm40, align 8
  %vport_q.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 13
  %47 = ptrtoint ptr %vport_q.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vport_q.i, align 4
  %cmp.i.not10.i = icmp eq ptr %48, %vport_q.i
  br i1 %cmp.i.not10.i, label %sw.bb39.for.end.i_crit_edge, label %sw.bb39.for.body.i_crit_edge

sw.bb39.for.body.i_crit_edge:                     ; preds = %sw.bb39
  br label %for.body.i

sw.bb39.for.end.i_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb39.for.body.i_crit_edge
  %qe.011.i = phi ptr [ %qen.0.i, %for.body.i.for.body.i_crit_edge ], [ %48, %sw.bb39.for.body.i_crit_edge ]
  %49 = ptrtoint ptr %qe.011.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %qen.0.i = load ptr, ptr %qe.011.i, align 4
  tail call void @bfa_fcs_vport_fcs_delete(ptr noundef %qe.011.i) #9
  %cmp.i.not.i = icmp eq ptr %qen.0.i, %vport_q.i
  br i1 %cmp.i.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb39.for.end.i_crit_edge
  tail call void @bfa_fcs_lport_delete(ptr noundef %bport) #9
  %wc_count.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 2
  %50 = ptrtoint ptr %wc_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %wc_count.i.i.i, align 4
  %dec.i.i.i = add i32 %51, -1
  store i32 %dec.i.i.i, ptr %wc_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.end.i.sw.epilog_crit_edge

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %wc.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21
  %52 = ptrtoint ptr %wc.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wc.i, align 4
  %wc_cbarg.i.i.i = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %fabric, i32 0, i32 21, i32 1
  %54 = ptrtoint ptr %wc_cbarg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wc_cbarg.i.i.i, align 4
  tail call void %53(ptr noundef %55) #9
  br label %sw.epilog

do.body41:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fcs, align 4
  %trcmod43 = getelementptr inbounds %struct.bfa_fcs_s, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %trcmod43 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %trcmod43, align 8
  %or = or i32 %event, -559087616
  %conv44 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %59, i32 noundef 2049, i32 noundef 269, i64 noundef %conv44) #9
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 269, i32 noundef %event) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body41, %if.then.i.i.i, %for.end.i.sw.epilog_crit_edge, %if.else35, %do.end, %if.then, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge76
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcport_is_linkup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_vport_offline(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_fabric_stop_comp(ptr noundef %cbarg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sm = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %cbarg, i32 0, i32 1
  %0 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm, align 8
  tail call void %1(ptr noundef %cbarg, i32 noundef 18) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_vport_fcs_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_lport_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_vport_fcs_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_lport_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcxp_req_rsp_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fc_flogi_acc_build(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i64 noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcxp_get_reqbuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @bfa_fcport_get_rx_bbcredit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcxp_send(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_fcs_fabric_flogiacc_comp(ptr nocapture noundef readnone %fcsarg, ptr nocapture noundef readnone %fcxp, ptr nocapture noundef readonly %cbarg, i32 noundef %status, i32 noundef %rsp_len, i32 noundef %resid_len, ptr nocapture noundef readnone %rspfchs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %cbarg, i32 0, i32 2
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %trcmod = getelementptr inbounds %struct.bfa_fcs_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %status to i64
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 2049, i32 noundef 1359, i64 noundef %conv) #9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_uf_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_lport_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 475, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bfa_fcs_fabric_sm_auth_failed._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bfa_fcs_fabric_sm_auth_failed._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 501, i32 3}
!8 = !{ptr @bfa_fcs_fabric_sm_loopback._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @bfa_fcs_fabric_sm_loopback._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 583, i32 3}
!12 = !{ptr @bfa_fcs_fabric_sm_online._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @bfa_fcs_fabric_sm_online._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 766, i32 38}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 1413, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @bfa_fcs_fabric_set_fabric_name._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @bfa_fcs_fabric_set_fabric_name._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !24, !"__trc_fileno", i1 false, i1 false}
!24 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 20, i32 1}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 316, i32 3}
!27 = !{ptr @bfa_fcs_fabric_sm_linkdown._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @bfa_fcs_fabric_sm_linkdown._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 379, i32 3}
!31 = !{ptr @bfa_fcs_fabric_sm_flogi._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @bfa_fcs_fabric_sm_flogi._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 449, i32 3}
!35 = !{ptr @bfa_fcs_fabric_sm_auth._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @bfa_fcs_fabric_sm_auth._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 607, i32 3}
!39 = !{ptr @bfa_fcs_fabric_sm_evfp._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @bfa_fcs_fabric_sm_evfp._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 636, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @bfa_fcs_fabric_sm_isolated._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @bfa_fcs_fabric_sm_isolated._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 409, i32 3}
!49 = !{ptr @bfa_fcs_fabric_sm_flogi_retry._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @bfa_fcs_fabric_sm_flogi_retry._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 537, i32 3}
!53 = !{ptr @bfa_fcs_fabric_sm_nofabric._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @bfa_fcs_fabric_sm_nofabric._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 733, i32 3}
!57 = !{ptr @bfa_fcs_fabric_sm_cleanup._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @bfa_fcs_fabric_sm_cleanup._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 269, i32 3}
!61 = !{ptr @bfa_fcs_fabric_sm_created._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @bfa_fcs_fabric_sm_created._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 667, i32 3}
!65 = !{ptr @bfa_fcs_fabric_sm_deleting._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @bfa_fcs_fabric_sm_deleting._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 704, i32 3}
!69 = !{ptr @bfa_fcs_fabric_sm_stopping._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @bfa_fcs_fabric_sm_stopping._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/bfa/bfa_cs.h", i32 296, i32 19}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/bfa/bfa_fcs.c", i32 222, i32 3}
!75 = !{ptr @bfa_fcs_fabric_sm_uninit._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @bfa_fcs_fabric_sm_uninit._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"branch_weights", i32 1, i32 2000}
