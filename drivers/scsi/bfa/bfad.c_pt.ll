; ModuleID = '/llk/IR_all_yes/drivers/scsi/bfa/bfad.c_pt.bc'
source_filename = "../drivers/scsi/bfa/bfad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bfad_hal_comp = type { i32, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.bfad_s = type { ptr, %struct.list_head, %struct.bfa_s, %struct.bfa_fcs_s, ptr, ptr, %struct.bfa_pcidev_s, %struct.bfa_ioc_pci_attr_s, ptr, ptr, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i32, %struct.bfad_port_s, %struct.bfa_meminfo_s, %struct.bfa_iocfc_cfg_s, i32, i32, %struct.spinlock, ptr, %struct.bfad_cfg_param_s, [22 x %struct.bfad_msix_s], i32, [64 x i8], [64 x i8], %struct.timer_list, i32, ptr, ptr, %struct.bfa_plog_s, i32, %union.bfad_tmp_buf, %struct.fc_host_statistics, %struct.list_head, ptr, i32, [5 x ptr], %struct.list_head, %struct.list_head, [512 x %struct.bfa_aen_entry_s], %struct.spinlock, %struct.list_head }
%struct.bfa_s = type { ptr, ptr, ptr, %struct.bfa_ioc_s, %struct.bfa_iocfc_s, %struct.bfa_timer_mod_s, %struct.bfa_modules_s, %struct.list_head, i32, [4 x %struct.list_head], i32, %struct.bfa_msix_s, i32, i32 }
%struct.bfa_ioc_s = type { ptr, ptr, %struct.bfa_pcidev_s, ptr, %struct.bfa_timer_s, %struct.bfa_timer_s, %struct.bfa_timer_s, i32, %struct.list_head, ptr, i32, i32, i32, %struct.bfa_ioc_regs_s, ptr, %struct.bfa_ioc_drv_stats_s, i32, i32, i32, i8, %struct.bfa_dma_s, ptr, ptr, %struct.bfa_ioc_mbox_mod_s, ptr, %struct.bfa_iocpf_s, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.bfa_timer_s = type { %struct.list_head, ptr, ptr, i32 }
%struct.bfa_ioc_regs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bfa_ioc_drv_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_dma_s = type { ptr, i64 }
%struct.bfa_ioc_mbox_mod_s = type { %struct.list_head, i32, [35 x %struct.anon.86] }
%struct.anon.86 = type { ptr, ptr }
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
%struct.bfi_diag_dport_scn_s = type { %struct.bfi_mhdr_s, i8, [3 x i8], %union.anon.90 }
%struct.bfi_mhdr_s = type { i8, i8, %union.anon.87 }
%union.anon.87 = type { i16 }
%union.anon.90 = type { %struct.bfi_diag_dport_scn_teststart_s }
%struct.bfi_diag_dport_scn_teststart_s = type { i64, i64, i8, i8, [2 x i8], i32 }
%struct.bfa_diag_dport_result_s = type { i64, i64, i64, i64, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, [4 x %struct.bfa_diag_dport_subtest_result_s] }
%struct.bfa_diag_dport_subtest_result_s = type { i8, [7 x i8], i64 }
%struct.bfa_fcport_s = type <{ ptr, ptr, i64, i64, i32, i32, i32, [3 x i8], i8, i8, %struct.fc_alpabm_s, %struct.bfa_port_cfg_s, [3 x i8], i32, %struct.bfa_qos_attr_s, %struct.bfa_qos_vc_attr_s, %struct.bfa_reqq_wait_s, %struct.bfa_reqq_wait_s, %struct.bfa_reqq_wait_s, ptr, ptr, %union.anon.91, ptr, %struct.bfa_fcport_ln_s, %struct.bfa_cb_qe_s, %struct.bfa_timer_s, i32, ptr, i64, ptr, i32, %struct.list_head, %struct.list_head, i32, [4 x i8], i64, i32, i32, i32, [4 x i8], %struct.bfa_fcport_trunk_s, i16, [6 x i8], %struct.bfa_mem_dma_s, i32, %struct.bfa_bbcr_attr_s, i32, [4 x i8] }>
%struct.fc_alpabm_s = type { [16 x i8] }
%struct.bfa_port_cfg_s = type { i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, %struct.bfa_qos_bw_s }
%struct.bfa_qos_bw_s = type { i8, i8, i8, i8 }
%struct.bfa_qos_attr_s = type { i8, [3 x i8], i32, %struct.bfa_qos_bw_s, %struct.bfa_qos_bw_s }
%struct.bfa_qos_vc_attr_s = type { i16, i16, i32, [16 x %struct.bfa_qos_vc_info_s] }
%struct.bfa_qos_vc_info_s = type { i8, i8, i8, i8 }
%union.anon.91 = type { %union.bfi_fcport_i2h_msg_u }
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
%struct.bfa_pcidev_s = type { i32, i8, i16, i16, ptr }
%struct.bfa_ioc_pci_attr_s = type { i16, i16, i16, i16, i32, i32, [8 x i8] }
%struct.bfad_port_s = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.bfa_meminfo_s = type { %struct.bfa_mem_dma_s, %struct.bfa_mem_kva_s }
%struct.bfa_iocfc_cfg_s = type { %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_drvcfg_s }
%struct.bfa_iocfc_fwcfg_s = type { i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, [6 x i8] }
%struct.bfa_iocfc_drvcfg_s = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i16, i32 }
%struct.bfad_cfg_param_s = type { i32, i32, i32, i32, i32 }
%struct.bfad_msix_s = type { ptr, %struct.msix_entry, [32 x i8] }
%struct.msix_entry = type { i32, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.bfa_plog_s = type { [8 x i8], i8, [7 x i8], i32, i16, i16, [256 x %struct.bfa_plog_rec_s] }
%struct.bfa_plog_rec_s = type { i64, i8, i8, i8, i8, i8, i8, i16, %union.anon.83 }
%union.anon.83 = type { [8 x i32] }
%union.bfad_tmp_buf = type { [256 x i64] }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bfa_aen_entry_s = type { %struct.list_head, i32, i32, %union.bfa_aen_data_u, i64, i64, i32, i32 }
%union.bfa_aen_data_u = type { %struct.bfa_rport_aen_data_s }
%struct.bfa_rport_aen_data_s = type { i16, [3 x i16], i64, i64, i64, %union.anon.97 }
%union.anon.97 = type { %struct.bfa_rport_qos_attr_s }
%struct.bfa_rport_qos_attr_s = type { i8, [3 x i8], i32 }
%struct.bfad_vf_s = type { %struct.bfa_fcs_fabric_s, %struct.bfad_port_s, ptr }
%struct.bfad_vport_s = type { %struct.bfad_port_s, %struct.bfa_fcs_vport_s, ptr, %struct.list_head }
%struct.bfa_fcs_vport_s = type { %struct.list_head, ptr, %struct.bfa_fcs_lport_s, %struct.bfa_timer_s, ptr, %struct.bfa_vport_stats_s, ptr, i32 }
%struct.bfa_vport_stats_s = type { %struct.bfa_lport_stats_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.96, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%union.anon.96 = type { ptr }
%struct.bfad_im_s = type { ptr, ptr, [20 x i8], %struct.work_struct }
%struct.fc_vport_identifiers = type { i64, i64, i32, i8, i32, [64 x i8] }
%struct.bfad_im_port_s = type { ptr, ptr, %struct.work_struct, i32, i16, i16, %struct.list_head, ptr, %struct.list_head, ptr }
%struct.bfa_trc_mod_s = type { i32, i32, i32, i32, i32, [3 x i32], [4096 x %struct.bfa_trc_s] }
%struct.bfa_trc_s = type { i16, i16, i32, %union.anon.84 }
%union.anon.84 = type { i64 }
%struct.firmware = type { i32, ptr, ptr }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bfad_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@bfad_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bfad_mutex, i64 52), ptr getelementptr (i8, ptr @bfad_mutex, i64 52) }, ptr @bfad_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bfad_mutex\00", [21 x i8] zeroinitializer }, align 32
@bfad_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @bfad_list, ptr @bfad_list }, [24 x i8] zeroinitializer }, align 32
@rport_del_timeout = dso_local global { i32, [28 x i8] } { i32 90, [28 x i8] zeroinitializer }, align 32
@bfa_lun_queue_depth = dso_local global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@bfa_io_max_sge = dso_local global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@bfa_log_level = dso_local global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@ioc_auto_recover = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@bfa_linkup_delay = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@fdmi_enable = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@bfa_debugfs_enable = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@msix_disable_cb = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@msix_disable_ct = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@max_xfer_size = dso_local global { i32, [28 x i8] } { i32 32767, [28 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware312 = internal constant [30 x i8] c"bfa.firmware=cbfw-3.2.5.1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware313 = internal constant [30 x i8] c"bfa.firmware=ctfw-3.2.5.1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware314 = internal constant [31 x i8] c"bfa.firmware=ct2fw-3.2.5.1.bin\00", section ".modinfo", align 1
@__param_str_os_name = internal constant [12 x i8] c"bfa.os_name\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@os_name = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_os_name = internal constant %struct.kernel_param { ptr @__param_str_os_name, ptr null, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @os_name } }, section "__param", align 4
@__UNIQUE_ID_os_nametype315 = internal constant [27 x i8] c"bfa.parmtype=os_name:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_os_name316 = internal constant [49 x i8] c"bfa.parm=os_name:OS name of the hba host machine\00", section ".modinfo", align 1
@__param_str_os_patch = internal constant [13 x i8] c"bfa.os_patch\00", align 1
@os_patch = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_os_patch = internal constant %struct.kernel_param { ptr @__param_str_os_patch, ptr null, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @os_patch } }, section "__param", align 4
@__UNIQUE_ID_os_patchtype317 = internal constant [28 x i8] c"bfa.parmtype=os_patch:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_os_patch318 = internal constant [57 x i8] c"bfa.parm=os_patch:OS patch level of the hba host machine\00", section ".modinfo", align 1
@__param_str_host_name = internal constant [14 x i8] c"bfa.host_name\00", align 1
@host_name = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_host_name = internal constant %struct.kernel_param { ptr @__param_str_host_name, ptr null, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @host_name } }, section "__param", align 4
@__UNIQUE_ID_host_nametype319 = internal constant [29 x i8] c"bfa.parmtype=host_name:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_host_name320 = internal constant [52 x i8] c"bfa.parm=host_name:Hostname of the hba host machine\00", section ".modinfo", align 1
@__param_str_num_rports = internal constant [15 x i8] c"bfa.num_rports\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@num_rports = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_num_rports = internal constant %struct.kernel_param { ptr @__param_str_num_rports, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @num_rports } }, section "__param", align 4
@__UNIQUE_ID_num_rportstype321 = internal constant [28 x i8] c"bfa.parmtype=num_rports:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_rports322 = internal constant [93 x i8] c"bfa.parm=num_rports:Max number of rports supported per port (physical/logical), default=1024\00", section ".modinfo", align 1
@__param_str_num_ios = internal constant [12 x i8] c"bfa.num_ios\00", align 1
@num_ios = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_num_ios = internal constant %struct.kernel_param { ptr @__param_str_num_ios, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @num_ios } }, section "__param", align 4
@__UNIQUE_ID_num_iostype323 = internal constant [25 x i8] c"bfa.parmtype=num_ios:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_ios324 = internal constant [59 x i8] c"bfa.parm=num_ios:Max number of ioim requests, default=2000\00", section ".modinfo", align 1
@__param_str_num_tms = internal constant [12 x i8] c"bfa.num_tms\00", align 1
@num_tms = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_num_tms = internal constant %struct.kernel_param { ptr @__param_str_num_tms, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @num_tms } }, section "__param", align 4
@__UNIQUE_ID_num_tmstype325 = internal constant [25 x i8] c"bfa.parmtype=num_tms:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_tms326 = internal constant [61 x i8] c"bfa.parm=num_tms:Max number of task im requests, default=128\00", section ".modinfo", align 1
@__param_str_num_fcxps = internal constant [14 x i8] c"bfa.num_fcxps\00", align 1
@num_fcxps = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_num_fcxps = internal constant %struct.kernel_param { ptr @__param_str_num_fcxps, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @num_fcxps } }, section "__param", align 4
@__UNIQUE_ID_num_fcxpstype327 = internal constant [27 x i8] c"bfa.parmtype=num_fcxps:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_fcxps328 = internal constant [59 x i8] c"bfa.parm=num_fcxps:Max number of fcxp requests, default=64\00", section ".modinfo", align 1
@__param_str_num_ufbufs = internal constant [15 x i8] c"bfa.num_ufbufs\00", align 1
@num_ufbufs = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_num_ufbufs = internal constant %struct.kernel_param { ptr @__param_str_num_ufbufs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @num_ufbufs } }, section "__param", align 4
@__UNIQUE_ID_num_ufbufstype329 = internal constant [28 x i8] c"bfa.parmtype=num_ufbufs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_ufbufs330 = internal constant [72 x i8] c"bfa.parm=num_ufbufs:Max number of unsolicited frame buffers, default=64\00", section ".modinfo", align 1
@__param_str_reqq_size = internal constant [14 x i8] c"bfa.reqq_size\00", align 1
@reqq_size = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_reqq_size = internal constant %struct.kernel_param { ptr @__param_str_reqq_size, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @reqq_size } }, section "__param", align 4
@__UNIQUE_ID_reqq_sizetype331 = internal constant [27 x i8] c"bfa.parmtype=reqq_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_reqq_size332 = internal constant [69 x i8] c"bfa.parm=reqq_size:Max number of request queue elements, default=256\00", section ".modinfo", align 1
@__param_str_rspq_size = internal constant [14 x i8] c"bfa.rspq_size\00", align 1
@rspq_size = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rspq_size = internal constant %struct.kernel_param { ptr @__param_str_rspq_size, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @rspq_size } }, section "__param", align 4
@__UNIQUE_ID_rspq_sizetype333 = internal constant [27 x i8] c"bfa.parmtype=rspq_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rspq_size334 = internal constant [69 x i8] c"bfa.parm=rspq_size:Max number of response queue elements, default=64\00", section ".modinfo", align 1
@__param_str_num_sgpgs = internal constant [14 x i8] c"bfa.num_sgpgs\00", align 1
@num_sgpgs = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_num_sgpgs = internal constant %struct.kernel_param { ptr @__param_str_num_sgpgs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @num_sgpgs } }, section "__param", align 4
@__UNIQUE_ID_num_sgpgstype335 = internal constant [27 x i8] c"bfa.parmtype=num_sgpgs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_sgpgs336 = internal constant [64 x i8] c"bfa.parm=num_sgpgs:Number of scatter/gather pages, default=2048\00", section ".modinfo", align 1
@__param_str_rport_del_timeout = internal constant [22 x i8] c"bfa.rport_del_timeout\00", align 1
@__param_rport_del_timeout = internal constant %struct.kernel_param { ptr @__param_str_rport_del_timeout, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @rport_del_timeout } }, section "__param", align 4
@__UNIQUE_ID_rport_del_timeouttype337 = internal constant [35 x i8] c"bfa.parmtype=rport_del_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rport_del_timeout338 = internal constant [76 x i8] c"bfa.parm=rport_del_timeout:Rport delete timeout, default=90 secs, Range[>0]\00", section ".modinfo", align 1
@__param_str_bfa_lun_queue_depth = internal constant [24 x i8] c"bfa.bfa_lun_queue_depth\00", align 1
@__param_bfa_lun_queue_depth = internal constant %struct.kernel_param { ptr @__param_str_bfa_lun_queue_depth, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @bfa_lun_queue_depth } }, section "__param", align 4
@__UNIQUE_ID_bfa_lun_queue_depthtype339 = internal constant [37 x i8] c"bfa.parmtype=bfa_lun_queue_depth:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bfa_lun_queue_depth340 = internal constant [68 x i8] c"bfa.parm=bfa_lun_queue_depth:Lun queue depth, default=32, Range[>0]\00", section ".modinfo", align 1
@__param_str_bfa_io_max_sge = internal constant [19 x i8] c"bfa.bfa_io_max_sge\00", align 1
@__param_bfa_io_max_sge = internal constant %struct.kernel_param { ptr @__param_str_bfa_io_max_sge, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @bfa_io_max_sge } }, section "__param", align 4
@__UNIQUE_ID_bfa_io_max_sgetype341 = internal constant [32 x i8] c"bfa.parmtype=bfa_io_max_sge:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bfa_io_max_sge342 = internal constant [68 x i8] c"bfa.parm=bfa_io_max_sge:Max io scatter/gather elements, default=255\00", section ".modinfo", align 1
@__param_str_bfa_log_level = internal constant [18 x i8] c"bfa.bfa_log_level\00", align 1
@__param_bfa_log_level = internal constant %struct.kernel_param { ptr @__param_str_bfa_log_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @bfa_log_level } }, section "__param", align 4
@__UNIQUE_ID_bfa_log_leveltype343 = internal constant [31 x i8] c"bfa.parmtype=bfa_log_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bfa_log_level344 = internal constant [95 x i8] c"bfa.parm=bfa_log_level:Driver log level, default=3, Range[Critical:1|Error:2|Warning:3|Info:4]\00", section ".modinfo", align 1
@__param_str_ioc_auto_recover = internal constant [21 x i8] c"bfa.ioc_auto_recover\00", align 1
@__param_ioc_auto_recover = internal constant %struct.kernel_param { ptr @__param_str_ioc_auto_recover, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ioc_auto_recover } }, section "__param", align 4
@__UNIQUE_ID_ioc_auto_recovertype345 = internal constant [34 x i8] c"bfa.parmtype=ioc_auto_recover:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ioc_auto_recover346 = internal constant [74 x i8] c"bfa.parm=ioc_auto_recover:IOC auto recovery, default=1, Range[off:0|on:1]\00", section ".modinfo", align 1
@__param_str_bfa_linkup_delay = internal constant [21 x i8] c"bfa.bfa_linkup_delay\00", align 1
@__param_bfa_linkup_delay = internal constant %struct.kernel_param { ptr @__param_str_bfa_linkup_delay, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @bfa_linkup_delay } }, section "__param", align 4
@__UNIQUE_ID_bfa_linkup_delaytype347 = internal constant [34 x i8] c"bfa.parmtype=bfa_linkup_delay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bfa_linkup_delay348 = internal constant [140 x i8] c"bfa.parm=bfa_linkup_delay:Link up delay, default=30 secs for boot port. Otherwise 10 secs in RHEL4 & 0 for [RHEL5, SLES10, ESX40] Range[>0]\00", section ".modinfo", align 1
@__param_str_msix_disable_cb = internal constant [20 x i8] c"bfa.msix_disable_cb\00", align 1
@__param_msix_disable_cb = internal constant %struct.kernel_param { ptr @__param_str_msix_disable_cb, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @msix_disable_cb } }, section "__param", align 4
@__UNIQUE_ID_msix_disable_cbtype349 = internal constant [33 x i8] c"bfa.parmtype=msix_disable_cb:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msix_disable_cb350 = internal constant [127 x i8] c"bfa.parm=msix_disable_cb:Disable Message Signaled Interrupts for QLogic-415/425/815/825 cards, default=0 Range[false:0|true:1]\00", section ".modinfo", align 1
@__param_str_msix_disable_ct = internal constant [20 x i8] c"bfa.msix_disable_ct\00", align 1
@__param_msix_disable_ct = internal constant %struct.kernel_param { ptr @__param_str_msix_disable_ct, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @msix_disable_ct } }, section "__param", align 4
@__UNIQUE_ID_msix_disable_cttype351 = internal constant [33 x i8] c"bfa.parmtype=msix_disable_ct:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msix_disable_ct352 = internal constant [152 x i8] c"bfa.parm=msix_disable_ct:Disable Message Signaled Interrupts if possible for QLogic-1010/1020/804/1007/902/1741 cards, default=0, Range[false:0|true:1]\00", section ".modinfo", align 1
@__param_str_fdmi_enable = internal constant [16 x i8] c"bfa.fdmi_enable\00", align 1
@__param_fdmi_enable = internal constant %struct.kernel_param { ptr @__param_str_fdmi_enable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @fdmi_enable } }, section "__param", align 4
@__UNIQUE_ID_fdmi_enabletype353 = internal constant [29 x i8] c"bfa.parmtype=fdmi_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fdmi_enable354 = internal constant [81 x i8] c"bfa.parm=fdmi_enable:Enables fdmi registration, default=1, Range[false:0|true:1]\00", section ".modinfo", align 1
@__param_str_pcie_max_read_reqsz = internal constant [24 x i8] c"bfa.pcie_max_read_reqsz\00", align 1
@pcie_max_read_reqsz = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pcie_max_read_reqsz = internal constant %struct.kernel_param { ptr @__param_str_pcie_max_read_reqsz, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @pcie_max_read_reqsz } }, section "__param", align 4
@__UNIQUE_ID_pcie_max_read_reqsztype355 = internal constant [37 x i8] c"bfa.parmtype=pcie_max_read_reqsz:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pcie_max_read_reqsz356 = internal constant [123 x i8] c"bfa.parm=pcie_max_read_reqsz:PCIe max read request size, default=0 (use system setting), Range[128|256|512|1024|2048|4096]\00", section ".modinfo", align 1
@__param_str_bfa_debugfs_enable = internal constant [23 x i8] c"bfa.bfa_debugfs_enable\00", align 1
@__param_bfa_debugfs_enable = internal constant %struct.kernel_param { ptr @__param_str_bfa_debugfs_enable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @bfa_debugfs_enable } }, section "__param", align 4
@__UNIQUE_ID_bfa_debugfs_enabletype357 = internal constant [36 x i8] c"bfa.parmtype=bfa_debugfs_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bfa_debugfs_enable358 = internal constant [86 x i8] c"bfa.parm=bfa_debugfs_enable:Enables debugfs feature, default=1, Range[false:0|true:1]\00", section ".modinfo", align 1
@__param_str_max_xfer_size = internal constant [18 x i8] c"bfa.max_xfer_size\00", align 1
@__param_max_xfer_size = internal constant %struct.kernel_param { ptr @__param_str_max_xfer_size, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @max_xfer_size } }, section "__param", align 4
@__UNIQUE_ID_max_xfer_sizetype359 = internal constant [31 x i8] c"bfa.parmtype=max_xfer_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_xfer_size360 = internal constant [75 x i8] c"bfa.parm=max_xfer_size:default=32MB, Range[64k|128k|256k|512k|1024k|2048k]\00", section ".modinfo", align 1
@__param_str_max_rport_logins = internal constant [21 x i8] c"bfa.max_rport_logins\00", align 1
@max_rport_logins = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_max_rport_logins = internal constant %struct.kernel_param { ptr @__param_str_max_rport_logins, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @max_rport_logins } }, section "__param", align 4
@__UNIQUE_ID_max_rport_loginstype361 = internal constant [34 x i8] c"bfa.parmtype=max_rport_logins:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_rport_logins362 = internal constant [121 x i8] c"bfa.parm=max_rport_logins:Max number of logins to initiator and target rports on a port (physical/logical), default=1024\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bfad_init_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&bfad->hal_tmo)\00", [47 x i8] zeroinitializer }, align 32
@bfad_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013pci_enable_device fail %p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bfad_pci_init\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/scsi/bfa/bfad.c\00", [40 x i8] zeroinitializer }, align 32
@bfad_pci_init._entry_ptr = internal global ptr @bfad_pci_init._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bfa\00", [28 x i8] zeroinitializer }, align 32
@bfad_pci_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.5, i32 737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013dma_set_mask_and_coherent fail %p\0A\00", [59 x i8] zeroinitializer }, align 32
@bfad_pci_init._entry_ptr.9 = internal global ptr @bfad_pci_init._entry.7, section ".printk_index", align 4
@bfad_pci_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013Fail to map bar0\0A\00", [44 x i8] zeroinitializer }, align 32
@bfad_pci_init._entry_ptr.12 = internal global ptr @bfad_pci_init._entry.10, section ".printk_index", align 4
@bfad_pci_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014BFA[%s]: pcie_max_read_request_size is %d, reset to %d\0A\00", [38 x i8] zeroinitializer }, align 32
@bfad_pci_init._entry_ptr.15 = internal global ptr @bfad_pci_init._entry.13, section ".printk_index", align 4
@bfad_pci_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014BFA[%s]: invalid pcie_max_read_request_size %d ignored\0A\00", [38 x i8] zeroinitializer }, align 32
@bfad_pci_init._entry_ptr.18 = internal global ptr @bfad_pci_init._entry.16, section ".printk_index", align 4
@bfad_drv_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014bfad%d bfad_hal_mem_alloc failure\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bfad_drv_init\00", [18 x i8] zeroinitializer }, align 32
@bfad_drv_init._entry_ptr = internal global ptr @bfad_drv_init._entry, section ".printk_index", align 4
@bfad_drv_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.5, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\014Not enough memory to attach all QLogic BR-series HBA ports. System may need more memory.\0A\00", [36 x i8] zeroinitializer }, align 32
@bfad_drv_init._entry_ptr.23 = internal global ptr @bfad_drv_init._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Driver Attach\00", [18 x i8] zeroinitializer }, align 32
@supported_fc4s = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"3.2.25.1\00", [23 x i8] zeroinitializer }, align 32
@bfad_start_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014bfad_im_probe failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bfad_start_ops\00", [17 x i8] zeroinitializer }, align 32
@bfad_start_ops._entry_ptr = internal global ptr @bfad_start_ops._entry, section ".printk_index", align 4
@bfad_start_ops._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.5, i32 1039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014bfad%d: failed to create pbc vport %s\0A\00", [55 x i8] zeroinitializer }, align 32
@bfad_start_ops._entry_ptr.30 = internal global ptr @bfad_start_ops._entry.28, section ".printk_index", align 4
@bfad_start_ops._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.5, i32 1057, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bfa device claimed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bfad_start_ops._entry_ptr.35 = internal global ptr @bfad_start_ops._entry.31, section ".printk_index", align 4
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bfa-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@msix_name_cb = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], [44 x i8] zeroinitializer }, align 32
@msix_name_ct = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.72, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], [60 x i8] zeroinitializer }, align 32
@bfad_setup_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 1222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014bfa %s: trying one msix vector failed to allocate %d[%d]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bfad_setup_intr\00", [16 x i8] zeroinitializer }, align 32
@bfad_setup_intr._entry_ptr = internal global ptr @bfad_setup_intr._entry, section ".printk_index", align 4
@bfad_setup_intr._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.5, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014bfad%d: pci_enable_msix_exact failed (%d), use line based.\0A\00", [34 x i8] zeroinitializer }, align 32
@bfad_setup_intr._entry_ptr.41 = internal global ptr @bfad_setup_intr._entry.39, section ".printk_index", align 4
@bfad_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 1306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014Error alloc trace buffer!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bfad_pci_probe\00", [17 x i8] zeroinitializer }, align 32
@bfad_pci_probe._entry_ptr = internal global ptr @bfad_pci_probe._entry, section ".printk_index", align 4
@bfad_inst = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bfad_pci_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.5, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014bfad_pci_init failure!\0A\00", [38 x i8] zeroinitializer }, align 32
@bfad_pci_probe._entry_ptr.46 = internal global ptr @bfad_pci_probe._entry.44, section ".printk_index", align 4
@bfad_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&bfad->bfad_lock\00", [47 x i8] zeroinitializer }, align 32
@bfad_pci_probe.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&bfad->bfad_aen_spinlock\00", [39 x i8] zeroinitializer }, align 32
@bfad_id_table = dso_local global { [7 x %struct.pci_device_id], [32 x i8] } { [7 x %struct.pci_device_id] [%struct.pci_device_id { i32 5719, i32 19, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5719, i32 23, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5719, i32 20, i32 -1, i32 -1, i32 787456, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 5719, i32 33, i32 -1, i32 -1, i32 787456, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 5719, i32 34, i32 -1, i32 -1, i32 787456, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 5719, i32 35, i32 -1, i32 -1, i32 787456, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@bfad_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.6, ptr @bfad_id_table, ptr @bfad_pci_probe, ptr @bfad_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfad_err_handler, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_bfa__363_1798_bfad_init6 = internal global ptr @bfad_init, section ".initcall6.init", align 4
@__exitcall_bfad_exit = internal global ptr @bfad_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file364 = internal constant [30 x i8] c"bfa.file=drivers/scsi/bfa/bfa\00", section ".modinfo", align 1
@__UNIQUE_ID_license365 = internal constant [16 x i8] c"bfa.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description366 = internal constant [64 x i8] c"bfa.description=QLogic BR-series Fibre Channel HBA Driver fcpim\00", section ".modinfo", align 1
@__UNIQUE_ID_author367 = internal constant [30 x i8] c"bfa.author=QLogic Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_version368 = internal constant [21 x i8] c"bfa.version=3.2.25.1\00", section ".modinfo", align 1
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.6, ptr @.str.25 }, section "__modver", align 4
@bfi_image_cb_size = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@bfi_image_ct_size = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@bfi_image_ct2_size = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@bfi_image_cb = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@bfi_image_ct = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@bfi_image_ct2 = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@bfad_sm_initializing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.5, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Assertion failure: %s:%d: %d\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bfad_sm_initializing\00", [43 x i8] zeroinitializer }, align 32
@bfad_sm_initializing._entry_ptr = internal global ptr @bfad_sm_initializing._entry, section ".printk_index", align 4
@bfad_sm_operational._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.54, ptr @.str.5, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bfad_sm_operational\00", [44 x i8] zeroinitializer }, align 32
@bfad_sm_operational._entry_ptr = internal global ptr @bfad_sm_operational._entry, section ".printk_index", align 4
@bfad_sm_fcs_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.55, ptr @.str.5, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bfad_sm_fcs_exit\00", [47 x i8] zeroinitializer }, align 32
@bfad_sm_fcs_exit._entry_ptr = internal global ptr @bfad_sm_fcs_exit._entry, section ".printk_index", align 4
@bfad_sm_stopping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.56, ptr @.str.5, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bfad_sm_stopping\00", [47 x i8] zeroinitializer }, align 32
@bfad_sm_stopping._entry_ptr = internal global ptr @bfad_sm_stopping._entry, section ".printk_index", align 4
@bfad_sm_failed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.57, ptr @.str.5, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bfad_sm_failed\00", [17 x i8] zeroinitializer }, align 32
@bfad_sm_failed._entry_ptr = internal global ptr @bfad_sm_failed._entry, section ".printk_index", align 4
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\00", [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpe0\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpe1\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpe2\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpe3\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rme0\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rme1\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rme2\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rme3\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eemc\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"elpu0\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"elpu1\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"epss\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mlpu\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bfad_worker\00", [20 x i8] zeroinitializer }, align 32
@bfad_sm_uninit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.5, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016bfad[%d]: Kernel thread creation failed!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bfad_sm_uninit\00", [17 x i8] zeroinitializer }, align 32
@bfad_sm_uninit._entry_ptr = internal global ptr @bfad_sm_uninit._entry, section ".printk_index", align 4
@bfad_sm_uninit._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.76, ptr @.str.5, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bfad_sm_uninit._entry_ptr.78 = internal global ptr @bfad_sm_uninit._entry.77, section ".printk_index", align 4
@bfad_sm_created._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.5, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014bfad%d: bfad_setup_intr failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bfad_sm_created\00", [16 x i8] zeroinitializer }, align 32
@bfad_sm_created._entry_ptr = internal global ptr @bfad_sm_created._entry, section ".printk_index", align 4
@bfad_sm_created._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.5, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: install_msix failed, bfad%d\0A\00", [61 x i8] zeroinitializer }, align 32
@bfad_sm_created._entry_ptr.83 = internal global ptr @bfad_sm_created._entry.81, section ".printk_index", align 4
@bfad_sm_created._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.5, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014bfa %s: bfa init failed\0A\00", [37 x i8] zeroinitializer }, align 32
@bfad_sm_created._entry_ptr.86 = internal global ptr @bfad_sm_created._entry.84, section ".printk_index", align 4
@bfad_sm_created._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.80, ptr @.str.5, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bfad_sm_created._entry_ptr.88 = internal global ptr @bfad_sm_created._entry.87, section ".printk_index", align 4
@bfad_err_handler = internal global { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @bfad_pci_error_detected, ptr @bfad_pci_mmio_enabled, ptr @bfad_pci_slot_reset, ptr null, ptr null, ptr @bfad_pci_resume }, [40 x i8] zeroinitializer }, align 32
@bfad_pci_error_detected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.5, i32 1440, ptr @.str.91, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error detected state: %d - flags: 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bfad_pci_error_detected\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@bfad_pci_error_detected._entry_ptr = internal global ptr @bfad_pci_error_detected._entry, section ".printk_index", align 4
@bfad_pci_mmio_enabled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.5, i32 1582, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mmio_enabled\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bfad_pci_mmio_enabled\00", [42 x i8] zeroinitializer }, align 32
@bfad_pci_mmio_enabled._entry_ptr = internal global ptr @bfad_pci_mmio_enabled._entry, section ".printk_index", align 4
@bfad_pci_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.5, i32 1533, ptr @.str.91, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bfad_pci_slot_reset flags: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bfad_pci_slot_reset\00", [44 x i8] zeroinitializer }, align 32
@bfad_pci_slot_reset._entry_ptr = internal global ptr @bfad_pci_slot_reset._entry, section ".printk_index", align 4
@bfad_pci_slot_reset._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.5, i32 1537, ptr @.str.91, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot re-enable PCI device after reset.\0A\00", [54 x i8] zeroinitializer }, align 32
@bfad_pci_slot_reset._entry_ptr.98 = internal global ptr @bfad_pci_slot_reset._entry.96, section ".printk_index", align 4
@bfad_pci_slot_reset._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.5, i32 1551, ptr @.str.91, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"slot_reset failed ... got another PCI error !\0A\00", [49 x i8] zeroinitializer }, align 32
@bfad_pci_slot_reset._entry_ptr.101 = internal global ptr @bfad_pci_slot_reset._entry.99, section ".printk_index", align 4
@bfad_pci_slot_reset._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.95, ptr @.str.5, i32 1567, ptr @.str.104, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"slot_reset completed  flags: 0x%x!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bfad_pci_slot_reset._entry_ptr.105 = internal global ptr @bfad_pci_slot_reset._entry.102, section ".printk_index", align 4
@restart_bfa._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.5, i32 1499, ptr @.str.104, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: bfad_setup_intr failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"restart_bfa\00", [20 x i8] zeroinitializer }, align 32
@restart_bfa._entry_ptr = internal global ptr @restart_bfa._entry, section ".printk_index", align 4
@restart_bfa._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.5, i32 1513, ptr @.str.104, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: install_msix failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@restart_bfa._entry_ptr.110 = internal global ptr @restart_bfa._entry.108, section ".printk_index", align 4
@bfad_pci_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.5, i32 1607, ptr @.str.104, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"resume\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bfad_pci_resume\00", [16 x i8] zeroinitializer }, align 32
@bfad_pci_resume._entry_ptr = internal global ptr @bfad_pci_resume._entry, section ".printk_index", align 4
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ct2fw-3.2.5.1.bin\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ctfw-3.2.5.1.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cbfw-3.2.5.1.bin\00", [47 x i8] zeroinitializer }, align 32
@bfad_read_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.5, i32 1746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\011Can't locate firmware %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bfad_read_firmware\00", [45 x i8] zeroinitializer }, align 32
@bfad_read_firmware._entry_ptr = internal global ptr @bfad_read_firmware._entry, section ".printk_index", align 4
@bfad_read_firmware._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.5, i32 1754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\011Fail to allocate buffer for fw image size=%x!\0A\00", [47 x i8] zeroinitializer }, align 32
@bfad_read_firmware._entry_ptr.120 = internal global ptr @bfad_read_firmware._entry.118, section ".printk_index", align 4
@bfad_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.5, i32 1695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016QLogic BR-series BFA FC/FCOE SCSI driver - version: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bfad_init\00", [22 x i8] zeroinitializer }, align 32
@bfad_init._entry_ptr = internal global ptr @bfad_init._entry, section ".printk_index", align 4
@bfad_init._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.5, i32 1703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014bfad_im_module_init failure\0A\00", [33 x i8] zeroinitializer }, align 32
@bfad_init._entry_ptr.125 = internal global ptr @bfad_init._entry.123, section ".printk_index", align 4
@bfa_auto_recover = external dso_local local_unnamed_addr global i32, align 4
@bfad_init._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.122, ptr @.str.5, i32 1716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014pci_register_driver failure\0A\00", [33 x i8] zeroinitializer }, align 32
@bfad_init._entry_ptr.128 = internal global ptr @bfad_init._entry.126, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.129 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 9]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 16, i64 19, i64 23]
@__sancov_gen_cov_switch_values.131 = internal global [8 x i64] [i64 6, i64 16, i64 19, i64 20, i64 23, i64 33, i64 34, i64 35]
@__sancov_gen_cov_switch_values.132 = internal global [6 x i64] [i64 4, i64 16, i64 20, i64 33, i64 34, i64 35]
@__sancov_gen_cov_switch_values.133 = internal global [8 x i64] [i64 6, i64 16, i64 19, i64 20, i64 23, i64 33, i64 34, i64 35]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.136 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.140 = private unnamed_addr constant [11 x i8] c"bfad_mutex\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 32, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant [10 x i8] c"bfad_list\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 33, i32 1 }
@___asan_gen_.149 = private unnamed_addr constant [18 x i8] c"rport_del_timeout\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 42, i32 6 }
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c"bfa_lun_queue_depth\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 43, i32 6 }
@___asan_gen_.155 = private unnamed_addr constant [15 x i8] c"bfa_io_max_sge\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 44, i32 6 }
@___asan_gen_.158 = private unnamed_addr constant [14 x i8] c"bfa_log_level\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 45, i32 6 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"ioc_auto_recover\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 46, i32 6 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"bfa_linkup_delay\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 47, i32 6 }
@___asan_gen_.167 = private unnamed_addr constant [12 x i8] c"fdmi_enable\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 48, i32 6 }
@___asan_gen_.170 = private unnamed_addr constant [19 x i8] c"bfa_debugfs_enable\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 50, i32 6 }
@___asan_gen_.173 = private unnamed_addr constant [16 x i8] c"msix_disable_cb\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 51, i32 6 }
@___asan_gen_.176 = private unnamed_addr constant [16 x i8] c"msix_disable_ct\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 51, i32 27 }
@___asan_gen_.179 = private unnamed_addr constant [14 x i8] c"max_xfer_size\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 52, i32 6 }
@___asan_gen_.182 = private unnamed_addr constant [8 x i8] c"os_name\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 38, i32 20 }
@___asan_gen_.185 = private unnamed_addr constant [9 x i8] c"os_patch\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 38, i32 30 }
@___asan_gen_.188 = private unnamed_addr constant [10 x i8] c"host_name\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 38, i32 8 }
@___asan_gen_.191 = private unnamed_addr constant [11 x i8] c"num_rports\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 39, i32 6 }
@___asan_gen_.194 = private unnamed_addr constant [8 x i8] c"num_ios\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 39, i32 18 }
@___asan_gen_.197 = private unnamed_addr constant [8 x i8] c"num_tms\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 39, i32 27 }
@___asan_gen_.200 = private unnamed_addr constant [10 x i8] c"num_fcxps\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 40, i32 6 }
@___asan_gen_.203 = private unnamed_addr constant [11 x i8] c"num_ufbufs\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 40, i32 17 }
@___asan_gen_.206 = private unnamed_addr constant [10 x i8] c"reqq_size\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 41, i32 6 }
@___asan_gen_.209 = private unnamed_addr constant [10 x i8] c"rspq_size\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 41, i32 17 }
@___asan_gen_.212 = private unnamed_addr constant [10 x i8] c"num_sgpgs\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 41, i32 28 }
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c"pcie_max_read_reqsz\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 49, i32 6 }
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"max_rport_logins\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 53, i32 12 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 713, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 725, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 729, i32 32 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 737, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 748, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 774, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 780, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 822, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 824, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 833, i32 11 }
@___asan_gen_.284 = private unnamed_addr constant [15 x i8] c"supported_fc4s\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 37, i32 6 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 973, i32 31 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1011, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1038, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1057, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1168, i32 35 }
@___asan_gen_.320 = private unnamed_addr constant [13 x i8] c"msix_name_cb\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 73, i32 20 }
@___asan_gen_.323 = private unnamed_addr constant [13 x i8] c"msix_name_ct\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 68, i32 20 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1220, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1229, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1306, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant [10 x i8] c"bfad_inst\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 35, i32 12 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1328, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1341, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1342, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [14 x i8] c"bfad_id_table\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1617, i32 22 }
@___asan_gen_.374 = private unnamed_addr constant [16 x i8] c"bfad_pci_driver\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1678, i32 26 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1803, i32 1 }
@___asan_gen_.380 = private unnamed_addr constant [18 x i8] c"bfi_image_cb_size\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 56, i32 5 }
@___asan_gen_.383 = private unnamed_addr constant [18 x i8] c"bfi_image_ct_size\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 56, i32 24 }
@___asan_gen_.386 = private unnamed_addr constant [19 x i8] c"bfi_image_ct2_size\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 56, i32 43 }
@___asan_gen_.389 = private unnamed_addr constant [13 x i8] c"bfi_image_cb\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 57, i32 6 }
@___asan_gen_.392 = private unnamed_addr constant [13 x i8] c"bfi_image_ct\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 57, i32 21 }
@___asan_gen_.395 = private unnamed_addr constant [14 x i8] c"bfi_image_ct2\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 57, i32 36 }
@___asan_gen_.398 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 87, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 303, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 350, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 366, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 386, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 334, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant [29 x i8] c"../drivers/scsi/bfa/bfa_cs.h\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 296, i32 19 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 74, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 74, i32 10 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 74, i32 18 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 74, i32 26 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 75, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 75, i32 10 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 75, i32 18 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 75, i32 26 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 76, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 76, i32 10 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 76, i32 19 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 76, i32 28 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 76, i32 36 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 69, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 170, i32 20 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 173, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 185, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 208, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 221, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 232, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 264, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant [17 x i8] c"bfad_err_handler\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1671, i32 34 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1438, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1582, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1532, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1536, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1550, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1566, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1498, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1512, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1607, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1770, i32 26 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1775, i32 25 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1780, i32 25 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1746, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1753, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1694, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1703, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.644 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.645 = private constant [27 x i8] c"../drivers/scsi/bfa/bfad.c\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1716, i32 3 }
@llvm.compiler.used = appending global [293 x ptr] [ptr @__UNIQUE_ID_author367, ptr @__UNIQUE_ID_bfa_debugfs_enable358, ptr @__UNIQUE_ID_bfa_debugfs_enabletype357, ptr @__UNIQUE_ID_bfa_io_max_sge342, ptr @__UNIQUE_ID_bfa_io_max_sgetype341, ptr @__UNIQUE_ID_bfa_linkup_delay348, ptr @__UNIQUE_ID_bfa_linkup_delaytype347, ptr @__UNIQUE_ID_bfa_log_level344, ptr @__UNIQUE_ID_bfa_log_leveltype343, ptr @__UNIQUE_ID_bfa_lun_queue_depth340, ptr @__UNIQUE_ID_bfa_lun_queue_depthtype339, ptr @__UNIQUE_ID_description366, ptr @__UNIQUE_ID_fdmi_enable354, ptr @__UNIQUE_ID_fdmi_enabletype353, ptr @__UNIQUE_ID_file364, ptr @__UNIQUE_ID_firmware312, ptr @__UNIQUE_ID_firmware313, ptr @__UNIQUE_ID_firmware314, ptr @__UNIQUE_ID_host_name320, ptr @__UNIQUE_ID_host_nametype319, ptr @__UNIQUE_ID_ioc_auto_recover346, ptr @__UNIQUE_ID_ioc_auto_recovertype345, ptr @__UNIQUE_ID_license365, ptr @__UNIQUE_ID_max_rport_logins362, ptr @__UNIQUE_ID_max_rport_loginstype361, ptr @__UNIQUE_ID_max_xfer_size360, ptr @__UNIQUE_ID_max_xfer_sizetype359, ptr @__UNIQUE_ID_msix_disable_cb350, ptr @__UNIQUE_ID_msix_disable_cbtype349, ptr @__UNIQUE_ID_msix_disable_ct352, ptr @__UNIQUE_ID_msix_disable_cttype351, ptr @__UNIQUE_ID_num_fcxps328, ptr @__UNIQUE_ID_num_fcxpstype327, ptr @__UNIQUE_ID_num_ios324, ptr @__UNIQUE_ID_num_iostype323, ptr @__UNIQUE_ID_num_rports322, ptr @__UNIQUE_ID_num_rportstype321, ptr @__UNIQUE_ID_num_sgpgs336, ptr @__UNIQUE_ID_num_sgpgstype335, ptr @__UNIQUE_ID_num_tms326, ptr @__UNIQUE_ID_num_tmstype325, ptr @__UNIQUE_ID_num_ufbufs330, ptr @__UNIQUE_ID_num_ufbufstype329, ptr @__UNIQUE_ID_os_name316, ptr @__UNIQUE_ID_os_nametype315, ptr @__UNIQUE_ID_os_patch318, ptr @__UNIQUE_ID_os_patchtype317, ptr @__UNIQUE_ID_pcie_max_read_reqsz356, ptr @__UNIQUE_ID_pcie_max_read_reqsztype355, ptr @__UNIQUE_ID_reqq_size332, ptr @__UNIQUE_ID_reqq_sizetype331, ptr @__UNIQUE_ID_rport_del_timeout338, ptr @__UNIQUE_ID_rport_del_timeouttype337, ptr @__UNIQUE_ID_rspq_size334, ptr @__UNIQUE_ID_rspq_sizetype333, ptr @__UNIQUE_ID_version368, ptr @__exitcall_bfad_exit, ptr @__initcall__kmod_bfa__363_1798_bfad_init6, ptr @__modver_attr, ptr @__param_bfa_debugfs_enable, ptr @__param_bfa_io_max_sge, ptr @__param_bfa_linkup_delay, ptr @__param_bfa_log_level, ptr @__param_bfa_lun_queue_depth, ptr @__param_fdmi_enable, ptr @__param_host_name, ptr @__param_ioc_auto_recover, ptr @__param_max_rport_logins, ptr @__param_max_xfer_size, ptr @__param_msix_disable_cb, ptr @__param_msix_disable_ct, ptr @__param_num_fcxps, ptr @__param_num_ios, ptr @__param_num_rports, ptr @__param_num_sgpgs, ptr @__param_num_tms, ptr @__param_num_ufbufs, ptr @__param_os_name, ptr @__param_os_patch, ptr @__param_pcie_max_read_reqsz, ptr @__param_reqq_size, ptr @__param_rport_del_timeout, ptr @__param_rspq_size, ptr @bfad_drv_init._entry, ptr @bfad_drv_init._entry.21, ptr @bfad_drv_init._entry_ptr, ptr @bfad_drv_init._entry_ptr.23, ptr @bfad_exit, ptr @bfad_init._entry, ptr @bfad_init._entry.123, ptr @bfad_init._entry.126, ptr @bfad_init._entry_ptr, ptr @bfad_init._entry_ptr.125, ptr @bfad_init._entry_ptr.128, ptr @bfad_pci_error_detected._entry, ptr @bfad_pci_error_detected._entry_ptr, ptr @bfad_pci_init._entry, ptr @bfad_pci_init._entry.10, ptr @bfad_pci_init._entry.13, ptr @bfad_pci_init._entry.16, ptr @bfad_pci_init._entry.7, ptr @bfad_pci_init._entry_ptr, ptr @bfad_pci_init._entry_ptr.12, ptr @bfad_pci_init._entry_ptr.15, ptr @bfad_pci_init._entry_ptr.18, ptr @bfad_pci_init._entry_ptr.9, ptr @bfad_pci_mmio_enabled._entry, ptr @bfad_pci_mmio_enabled._entry_ptr, ptr @bfad_pci_probe._entry, ptr @bfad_pci_probe._entry.44, ptr @bfad_pci_probe._entry_ptr, ptr @bfad_pci_probe._entry_ptr.46, ptr @bfad_pci_resume._entry, ptr @bfad_pci_resume._entry_ptr, ptr @bfad_pci_slot_reset._entry, ptr @bfad_pci_slot_reset._entry.102, ptr @bfad_pci_slot_reset._entry.96, ptr @bfad_pci_slot_reset._entry.99, ptr @bfad_pci_slot_reset._entry_ptr, ptr @bfad_pci_slot_reset._entry_ptr.101, ptr @bfad_pci_slot_reset._entry_ptr.105, ptr @bfad_pci_slot_reset._entry_ptr.98, ptr @bfad_read_firmware._entry, ptr @bfad_read_firmware._entry.118, ptr @bfad_read_firmware._entry_ptr, ptr @bfad_read_firmware._entry_ptr.120, ptr @bfad_setup_intr._entry, ptr @bfad_setup_intr._entry.39, ptr @bfad_setup_intr._entry_ptr, ptr @bfad_setup_intr._entry_ptr.41, ptr @bfad_sm_created._entry, ptr @bfad_sm_created._entry.81, ptr @bfad_sm_created._entry.84, ptr @bfad_sm_created._entry.87, ptr @bfad_sm_created._entry_ptr, ptr @bfad_sm_created._entry_ptr.83, ptr @bfad_sm_created._entry_ptr.86, ptr @bfad_sm_created._entry_ptr.88, ptr @bfad_sm_failed._entry, ptr @bfad_sm_failed._entry_ptr, ptr @bfad_sm_fcs_exit._entry, ptr @bfad_sm_fcs_exit._entry_ptr, ptr @bfad_sm_initializing._entry, ptr @bfad_sm_initializing._entry_ptr, ptr @bfad_sm_operational._entry, ptr @bfad_sm_operational._entry_ptr, ptr @bfad_sm_stopping._entry, ptr @bfad_sm_stopping._entry_ptr, ptr @bfad_sm_uninit._entry, ptr @bfad_sm_uninit._entry.77, ptr @bfad_sm_uninit._entry_ptr, ptr @bfad_sm_uninit._entry_ptr.78, ptr @bfad_start_ops._entry, ptr @bfad_start_ops._entry.28, ptr @bfad_start_ops._entry.31, ptr @bfad_start_ops._entry_ptr, ptr @bfad_start_ops._entry_ptr.30, ptr @bfad_start_ops._entry_ptr.35, ptr @restart_bfa._entry, ptr @restart_bfa._entry.108, ptr @restart_bfa._entry_ptr, ptr @restart_bfa._entry_ptr.110, ptr @.str, ptr @bfad_mutex, ptr @.str.1, ptr @bfad_list, ptr @rport_del_timeout, ptr @bfa_lun_queue_depth, ptr @bfa_io_max_sge, ptr @bfa_log_level, ptr @ioc_auto_recover, ptr @bfa_linkup_delay, ptr @fdmi_enable, ptr @bfa_debugfs_enable, ptr @msix_disable_cb, ptr @msix_disable_ct, ptr @max_xfer_size, ptr @os_name, ptr @os_patch, ptr @host_name, ptr @num_rports, ptr @num_ios, ptr @num_tms, ptr @num_fcxps, ptr @num_ufbufs, ptr @reqq_size, ptr @rspq_size, ptr @num_sgpgs, ptr @pcie_max_read_reqsz, ptr @max_rport_logins, ptr @bfad_init_timer.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @supported_fc4s, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @msix_name_cb, ptr @msix_name_ct, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @bfad_inst, ptr @.str.45, ptr @bfad_pci_probe.__key, ptr @.str.47, ptr @bfad_pci_probe.__key.48, ptr @.str.49, ptr @bfad_id_table, ptr @bfad_pci_driver, ptr @.str.50, ptr @bfi_image_cb_size, ptr @bfi_image_ct_size, ptr @bfi_image_ct2_size, ptr @bfi_image_cb, ptr @bfi_image_ct, ptr @bfi_image_ct2, ptr @init_completion.__key, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @bfad_err_handler, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.127], section "llvm.metadata"
@0 = internal global [170 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rport_del_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_lun_queue_depth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_io_max_sge to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_log_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioc_auto_recover to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_linkup_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdmi_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_debugfs_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msix_disable_cb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msix_disable_ct to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_xfer_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @os_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @os_patch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_rports to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_ios to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_tms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_fcxps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_ufbufs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reqq_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspq_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_sgpgs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_max_read_reqsz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_rport_logins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_init_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_pci_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_pci_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_pci_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_pci_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_drv_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_drv_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_fc4s to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_start_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_start_ops._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_start_ops._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msix_name_cb to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msix_name_ct to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_setup_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_setup_intr._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_inst to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_pci_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_pci_probe.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_id_table to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfi_image_cb_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfi_image_ct_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfi_image_ct2_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfi_image_cb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfi_image_ct to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfi_image_ct2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_sm_initializing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_sm_operational._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_sm_fcs_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_sm_stopping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_sm_failed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_sm_uninit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_sm_uninit._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_sm_created._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_sm_created._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_sm_created._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_sm_created._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_pci_error_detected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_pci_mmio_enabled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_pci_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_pci_slot_reset._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_pci_slot_reset._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_pci_slot_reset._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @restart_bfa._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @restart_bfa._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_pci_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_read_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_read_firmware._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_init._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_init._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_hcb_comp(ptr noundef %arg, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %status, ptr %arg, align 4
  %comp = getelementptr inbounds %struct.bfad_hal_comp, ptr %arg, i32 0, i32 1
  tail call void @complete(ptr noundef %comp) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_init(ptr noundef %drv, i32 noundef %init_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %init_status)
  %cmp = icmp eq i32 %init_status, 0
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %bfad_flags = getelementptr inbounds %struct.bfad_s, ptr %drv, i32 0, i32 19
  %0 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bfad_flags, align 4
  %or = or i32 %1, 2
  store i32 %or, ptr %bfad_flags, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %and4 = and i32 %or, -257
  %2 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and4, ptr %bfad_flags, align 4
  %bfad_tsk = getelementptr inbounds %struct.bfad_s, ptr %drv, i32 0, i32 21
  %3 = ptrtoint ptr %bfad_tsk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bfad_tsk, align 4
  %call = tail call i32 @wake_up_process(ptr noundef %4) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %comp = getelementptr inbounds %struct.bfad_s, ptr %drv, i32 0, i32 10
  tail call void @complete(ptr noundef %comp) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bfa_fcb_lport_new(ptr noundef %bfad, ptr noundef %port, i32 noundef %roles, ptr noundef %vf_drv, ptr noundef %vp_drv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vp_drv, null
  %tobool1.not = icmp eq ptr %vf_drv, null
  %or.cond = and i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pport = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 15
  %pvb_type = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 15, i32 6
  %0 = ptrtoint ptr %pvb_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pvb_type, align 4
  br label %if.end17

if.else:                                          ; preds = %entry
  %tobool.not.not = xor i1 %tobool.not, true
  %or.cond42 = or i1 %tobool1.not, %tobool.not.not
  br i1 %or.cond42, label %if.else7, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %base_port = getelementptr inbounds %struct.bfad_vf_s, ptr %vf_drv, i32 0, i32 1
  %pvb_type6 = getelementptr inbounds %struct.bfad_vf_s, ptr %vf_drv, i32 0, i32 1, i32 6
  %1 = ptrtoint ptr %pvb_type6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %pvb_type6, align 4
  br label %if.end17

if.else7:                                         ; preds = %if.else
  %or.cond44 = and i1 %tobool1.not, %tobool.not.not
  %pvb_type12 = getelementptr inbounds %struct.bfad_port_s, ptr %vp_drv, i32 0, i32 6
  br i1 %or.cond44, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %pvb_type12 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %pvb_type12, align 4
  br label %if.end17

if.else13:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %pvb_type12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %pvb_type12, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else13, %if.then11, %if.then5, %if.then
  %port_drv.0 = phi ptr [ %vp_drv, %if.else13 ], [ %vp_drv, %if.then11 ], [ %base_port, %if.then5 ], [ %pport, %if.then ]
  %fcs_port = getelementptr inbounds %struct.bfad_port_s, ptr %port_drv.0, i32 0, i32 2
  %4 = ptrtoint ptr %fcs_port to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %port, ptr %fcs_port, align 4
  %roles18 = getelementptr inbounds %struct.bfad_port_s, ptr %port_drv.0, i32 0, i32 3
  %5 = ptrtoint ptr %roles18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %roles, ptr %roles18, align 4
  %and = and i32 %roles, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end17.if.end23_crit_edge, label %if.then20

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then20:                                        ; preds = %if.end17
  %call = tail call i32 @bfad_im_port_new(ptr noundef %bfad, ptr noundef %port_drv.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.then20.if.end23_crit_edge, label %if.then21

if.then20.if.end23_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then21:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bfad_im_port_delete(ptr noundef %bfad, ptr noundef %port_drv.0) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then20.if.end23_crit_edge, %if.end17.if.end23_crit_edge
  %port_drv.1 = phi ptr [ null, %if.then21 ], [ %port_drv.0, %if.then20.if.end23_crit_edge ], [ %port_drv.0, %if.end17.if.end23_crit_edge ]
  ret ptr %port_drv.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfad_im_port_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfad_im_port_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_fcb_rport_alloc(ptr nocapture noundef readnone %bfad, ptr nocapture noundef writeonly %rport, ptr nocapture noundef writeonly %rport_drv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 784) #14
  %1 = ptrtoint ptr %rport_drv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %rport_drv, align 4
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.ext_crit_edge, label %if.end

entry.ext_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %rport to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %rport, align 4
  br label %ext

ext:                                              ; preds = %if.end, %entry.ext_crit_edge
  %rc.0 = phi i32 [ 0, %if.end ], [ 3, %entry.ext_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcb_pbc_vport_create(ptr noundef %bfad, [4 x i32] %pbc_vport.coerce) local_unnamed_addr #0 align 64 {
entry:
  %port_cfg = alloca %struct.bfa_lport_cfg_s, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %port_cfg) #11
  %0 = getelementptr inbounds i8, ptr %port_cfg, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 288)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 1448) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 30
  %3 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trcmod, align 8
  tail call void @__bfa_trc(ptr noundef %4, i32 noundef 3073, i32 noundef 501, i64 noundef 0) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pbc_vport.coerce.fca.3.extract = extractvalue [4 x i32] %pbc_vport.coerce, 3
  %pbc_vport.coerce.fca.2.extract = extractvalue [4 x i32] %pbc_vport.coerce, 2
  %pbc_vport.coerce.fca.1.extract = extractvalue [4 x i32] %pbc_vport.coerce, 1
  %pbc_vport.coerce.fca.0.extract = extractvalue [4 x i32] %pbc_vport.coerce, 0
  %bfad1 = getelementptr inbounds %struct.bfad_port_s, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %bfad1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bfad, ptr %bfad1, align 8
  %roles = getelementptr inbounds %struct.bfa_lport_cfg_s, ptr %port_cfg, i32 0, i32 4
  %6 = ptrtoint ptr %roles to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %roles, align 8
  %pbc_vport.sroa.2.0.insert.ext = zext i32 %pbc_vport.coerce.fca.1.extract to i64
  %pbc_vport.sroa.0.0.insert.ext = zext i32 %pbc_vport.coerce.fca.0.extract to i64
  %pbc_vport.sroa.0.0.insert.shift = shl nuw i64 %pbc_vport.sroa.0.0.insert.ext, 32
  %pbc_vport.sroa.0.0.insert.insert = or i64 %pbc_vport.sroa.0.0.insert.shift, %pbc_vport.sroa.2.0.insert.ext
  %7 = ptrtoint ptr %port_cfg to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %pbc_vport.sroa.0.0.insert.insert, ptr %port_cfg, align 8
  %pbc_vport.sroa.5.8.insert.ext = zext i32 %pbc_vport.coerce.fca.3.extract to i64
  %pbc_vport.sroa.3.8.insert.ext = zext i32 %pbc_vport.coerce.fca.2.extract to i64
  %pbc_vport.sroa.3.8.insert.shift = shl nuw i64 %pbc_vport.sroa.3.8.insert.ext, 32
  %pbc_vport.sroa.3.8.insert.insert = or i64 %pbc_vport.sroa.3.8.insert.shift, %pbc_vport.sroa.5.8.insert.ext
  %nwwn = getelementptr inbounds %struct.bfa_lport_cfg_s, ptr %port_cfg, i32 0, i32 1
  %8 = ptrtoint ptr %nwwn to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %pbc_vport.sroa.3.8.insert.insert, ptr %nwwn, align 8
  %preboot_vp = getelementptr inbounds %struct.bfa_lport_cfg_s, ptr %port_cfg, i32 0, i32 6
  %9 = ptrtoint ptr %preboot_vp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %preboot_vp, align 8
  %fcs_vport = getelementptr inbounds %struct.bfad_vport_s, ptr %call7.i.i, i32 0, i32 1
  %bfa_fcs = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 3
  %call2 = call i32 @bfa_fcs_pbc_vport_create(ptr noundef %fcs_vport, ptr noundef %bfa_fcs, i16 noundef zeroext 0, ptr noundef nonnull %port_cfg, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod4 = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 30
  %10 = ptrtoint ptr %trcmod4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod4, align 8
  call void @__bfa_trc(ptr noundef %11, i32 noundef 3073, i32 noundef 515, i64 noundef 0) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %list_entry = getelementptr inbounds %struct.bfad_vport_s, ptr %call7.i.i, i32 0, i32 3
  %pbc_vport_list = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 35
  %prev.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 35, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list_entry, ptr noundef %13, ptr noundef %pbc_vport_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list_entry, ptr %prev.i, align 4
  %15 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pbc_vport_list, ptr %list_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.bfad_vport_s, ptr %call7.i.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 8
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list_entry, ptr %13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end5.cleanup_crit_edge, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %port_cfg) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bfa_trc(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcs_pbc_vport_create(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_hal_mem_release(ptr noundef %bfad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %meminfo = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 16
  %kva_info2 = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %kva_info2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %km_qe.030 = load ptr, ptr %kva_info2, align 4
  %cmp.i.not31 = icmp eq ptr %km_qe.030, %kva_info2
  br i1 %cmp.i.not31, label %entry.for.cond7.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond7.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.body.for.cond7.preheader_crit_edge, %entry.for.cond7.preheader_crit_edge
  %1 = ptrtoint ptr %meminfo to i32
  call void @__asan_load4_noabort(i32 %1)
  %dm_qe.033 = load ptr, ptr %meminfo, align 4
  %cmp.i28.not34 = icmp eq ptr %dm_qe.033, %meminfo
  br i1 %cmp.i28.not34, label %for.cond7.preheader.for.end16_crit_edge, label %for.body12.lr.ph

for.cond7.preheader.for.end16_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

for.body12.lr.ph:                                 ; preds = %for.cond7.preheader
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  br label %for.body12

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %km_qe.032 = phi ptr [ %km_qe.0, %for.body.for.body_crit_edge ], [ %km_qe.030, %entry.for.body_crit_edge ]
  %kva = getelementptr inbounds %struct.bfa_mem_kva_s, ptr %km_qe.032, i32 0, i32 2
  %2 = ptrtoint ptr %kva to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kva, align 4
  tail call void @vfree(ptr noundef %3) #11
  %4 = ptrtoint ptr %km_qe.032 to i32
  call void @__asan_load4_noabort(i32 %4)
  %km_qe.0 = load ptr, ptr %km_qe.032, align 4
  %cmp.i.not = icmp eq ptr %km_qe.0, %kva_info2
  br i1 %cmp.i.not, label %for.body.for.cond7.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.cond7.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond7.preheader

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body12.lr.ph
  %dm_qe.035 = phi ptr [ %dm_qe.033, %for.body12.lr.ph ], [ %dm_qe.0, %for.body12.for.body12_crit_edge ]
  %5 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %mem_len = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035, i32 0, i32 1
  %7 = ptrtoint ptr %mem_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mem_len, align 8
  %kva13 = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035, i32 0, i32 2
  %9 = ptrtoint ptr %kva13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kva13, align 4
  %dma = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035, i32 0, i32 3
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %dma, align 8
  %conv = trunc i64 %12 to i32
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %8, ptr noundef %10, i32 noundef %conv, i32 noundef 0) #11
  %13 = ptrtoint ptr %dm_qe.035 to i32
  call void @__asan_load4_noabort(i32 %13)
  %dm_qe.0 = load ptr, ptr %dm_qe.035, align 4
  %cmp.i28.not = icmp eq ptr %dm_qe.0, %meminfo
  br i1 %cmp.i28.not, label %for.body12.for.end16_crit_edge, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12

for.body12.for.end16_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

for.end16:                                        ; preds = %for.body12.for.end16_crit_edge, %for.cond7.preheader.for.end16_crit_edge
  %14 = call ptr @memset(ptr %meminfo, i32 0, i32 64)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bfad_update_hal_cfg(ptr nocapture noundef %bfa_cfg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @num_rports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %0 to i16
  %num_rports = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %bfa_cfg, i32 0, i32 2
  %1 = ptrtoint ptr %num_rports to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %num_rports, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = load i32, ptr @num_ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv4 = trunc i32 %2 to i16
  %num_ioim_reqs = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %bfa_cfg, i32 0, i32 3
  %3 = ptrtoint ptr %num_ioim_reqs to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv4, ptr %num_ioim_reqs, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %4 = load i32, ptr @num_tms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp7 = icmp sgt i32 %4, 0
  br i1 %cmp7, label %if.then9, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %conv10 = trunc i32 %4 to i16
  %num_tskim_reqs = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %bfa_cfg, i32 0, i32 4
  %5 = ptrtoint ptr %num_tskim_reqs to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv10, ptr %num_tskim_reqs, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6.if.end12_crit_edge
  %6 = load i32, ptr @num_fcxps, align 4
  %7 = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %7)
  %8 = icmp ult i32 %7, 256
  br i1 %8, label %if.then17, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %conv18 = trunc i32 %6 to i16
  %num_fcxp_reqs = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %bfa_cfg, i32 0, i32 6
  %9 = ptrtoint ptr %num_fcxp_reqs to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv18, ptr %num_fcxp_reqs, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end12.if.end20_crit_edge
  %10 = load i32, ptr @num_ufbufs, align 4
  %11 = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %11)
  %12 = icmp ult i32 %11, 256
  br i1 %12, label %if.then26, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %conv27 = trunc i32 %10 to i16
  %num_uf_bufs = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %bfa_cfg, i32 0, i32 7
  %13 = ptrtoint ptr %num_uf_bufs to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv27, ptr %num_uf_bufs, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end20.if.end29_crit_edge
  %14 = load i32, ptr @reqq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp30 = icmp sgt i32 %14, 0
  br i1 %cmp30, label %if.then32, label %if.end29.if.end34_crit_edge

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %conv33 = trunc i32 %14 to i16
  %drvcfg = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %bfa_cfg, i32 0, i32 1
  %15 = ptrtoint ptr %drvcfg to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv33, ptr %drvcfg, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29.if.end34_crit_edge
  %16 = load i32, ptr @rspq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp35 = icmp sgt i32 %16, 0
  br i1 %cmp35, label %if.then37, label %if.end34.if.end40_crit_edge

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %conv38 = trunc i32 %16 to i16
  %num_rspq_elems = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %bfa_cfg, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %num_rspq_elems to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv38, ptr %num_rspq_elems, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end34.if.end40_crit_edge
  %18 = load i32, ptr @num_sgpgs, align 4
  %19 = add i32 %18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %19)
  %20 = icmp ult i32 %19, 8192
  br i1 %20, label %if.then46, label %if.end40.if.end49_crit_edge

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %conv47 = trunc i32 %18 to i16
  %num_sgpgs = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %bfa_cfg, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %num_sgpgs to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv47, ptr %num_sgpgs, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end40.if.end49_crit_edge
  %num_rports51 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %bfa_cfg, i32 0, i32 2
  %22 = ptrtoint ptr %num_rports51 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_rports51, align 4
  %conv52 = zext i16 %23 to i32
  store i32 %conv52, ptr @num_rports, align 4
  %num_ioim_reqs54 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %bfa_cfg, i32 0, i32 3
  %24 = ptrtoint ptr %num_ioim_reqs54 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_ioim_reqs54, align 2
  %conv55 = zext i16 %25 to i32
  store i32 %conv55, ptr @num_ios, align 4
  %num_tskim_reqs57 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %bfa_cfg, i32 0, i32 4
  %26 = ptrtoint ptr %num_tskim_reqs57 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_tskim_reqs57, align 4
  %conv58 = zext i16 %27 to i32
  store i32 %conv58, ptr @num_tms, align 4
  %num_fcxp_reqs60 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %bfa_cfg, i32 0, i32 6
  %28 = ptrtoint ptr %num_fcxp_reqs60 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_fcxp_reqs60, align 4
  %conv61 = zext i16 %29 to i32
  store i32 %conv61, ptr @num_fcxps, align 4
  %num_uf_bufs63 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, ptr %bfa_cfg, i32 0, i32 7
  %30 = ptrtoint ptr %num_uf_bufs63 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_uf_bufs63, align 2
  %conv64 = zext i16 %31 to i32
  store i32 %conv64, ptr @num_ufbufs, align 4
  %drvcfg65 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %bfa_cfg, i32 0, i32 1
  %32 = ptrtoint ptr %drvcfg65 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %drvcfg65, align 4
  %conv67 = zext i16 %33 to i32
  store i32 %conv67, ptr @reqq_size, align 4
  %num_rspq_elems69 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %bfa_cfg, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %num_rspq_elems69 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %num_rspq_elems69, align 2
  %conv70 = zext i16 %35 to i32
  store i32 %conv70, ptr @rspq_size, align 4
  %num_sgpgs72 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, ptr %bfa_cfg, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %num_sgpgs72 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_sgpgs72, align 4
  %conv73 = zext i16 %37 to i32
  store i32 %conv73, ptr @num_sgpgs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_hal_mem_alloc(ptr noundef %bfad) local_unnamed_addr #0 align 64 {
entry:
  %phys_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %meminfo = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys_addr) #11
  %0 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %phys_addr, align 4, !annotation !491
  %ioc_cfg = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17
  tail call void @bfa_cfg_get_default(ptr noundef %ioc_cfg) #11
  %1 = load i32, ptr @num_rports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp sgt i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = trunc i32 %1 to i16
  %num_rports.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17, i32 0, i32 2
  %2 = ptrtoint ptr %num_rports.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv.i, ptr %num_rports.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %3 = load i32, ptr @num_ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.i = icmp sgt i32 %3, 0
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv4.i = trunc i32 %3 to i16
  %num_ioim_reqs.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17, i32 0, i32 3
  %4 = ptrtoint ptr %num_ioim_reqs.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv4.i, ptr %num_ioim_reqs.i, align 2
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %5 = load i32, ptr @num_tms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7.i = icmp sgt i32 %5, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.end6.i.if.end12.i_crit_edge

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv10.i = trunc i32 %5 to i16
  %num_tskim_reqs.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17, i32 0, i32 4
  %6 = ptrtoint ptr %num_tskim_reqs.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv10.i, ptr %num_tskim_reqs.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end12.i_crit_edge
  %7 = load i32, ptr @num_fcxps, align 4
  %8 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %8)
  %9 = icmp ult i32 %8, 256
  br i1 %9, label %if.then17.i, label %if.end12.i.if.end20.i_crit_edge

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv18.i = trunc i32 %7 to i16
  %num_fcxp_reqs.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17, i32 0, i32 6
  %10 = ptrtoint ptr %num_fcxp_reqs.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv18.i, ptr %num_fcxp_reqs.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end12.i.if.end20.i_crit_edge
  %11 = load i32, ptr @num_ufbufs, align 4
  %12 = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %12)
  %13 = icmp ult i32 %12, 256
  br i1 %13, label %if.then26.i, label %if.end20.i.if.end29.i_crit_edge

if.end20.i.if.end29.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

if.then26.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv27.i = trunc i32 %11 to i16
  %num_uf_bufs.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17, i32 0, i32 7
  %14 = ptrtoint ptr %num_uf_bufs.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv27.i, ptr %num_uf_bufs.i, align 2
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %if.end20.i.if.end29.i_crit_edge
  %15 = load i32, ptr @reqq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp30.i = icmp sgt i32 %15, 0
  br i1 %cmp30.i, label %if.then32.i, label %if.end29.i.if.end34.i_crit_edge

if.end29.i.if.end34.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv33.i = trunc i32 %15 to i16
  %drvcfg.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17, i32 1
  %16 = ptrtoint ptr %drvcfg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv33.i, ptr %drvcfg.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end29.i.if.end34.i_crit_edge
  %17 = load i32, ptr @rspq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp35.i = icmp sgt i32 %17, 0
  br i1 %cmp35.i, label %if.then37.i, label %if.end34.i.if.end40.i_crit_edge

if.end34.i.if.end40.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv38.i = trunc i32 %17 to i16
  %num_rspq_elems.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17, i32 1, i32 1
  %18 = ptrtoint ptr %num_rspq_elems.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv38.i, ptr %num_rspq_elems.i, align 2
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then37.i, %if.end34.i.if.end40.i_crit_edge
  %19 = load i32, ptr @num_sgpgs, align 4
  %20 = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %20)
  %21 = icmp ult i32 %20, 8192
  br i1 %21, label %if.then46.i, label %if.end40.i.bfad_update_hal_cfg.exit_crit_edge

if.end40.i.bfad_update_hal_cfg.exit_crit_edge:    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_update_hal_cfg.exit

if.then46.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv47.i = trunc i32 %19 to i16
  %num_sgpgs.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17, i32 1, i32 2
  %22 = ptrtoint ptr %num_sgpgs.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv47.i, ptr %num_sgpgs.i, align 4
  br label %bfad_update_hal_cfg.exit

bfad_update_hal_cfg.exit:                         ; preds = %if.then46.i, %if.end40.i.bfad_update_hal_cfg.exit_crit_edge
  %num_rports51.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17, i32 0, i32 2
  %23 = ptrtoint ptr %num_rports51.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_rports51.i, align 4
  %conv52.i = zext i16 %24 to i32
  store i32 %conv52.i, ptr @num_rports, align 4
  %num_ioim_reqs54.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17, i32 0, i32 3
  %25 = ptrtoint ptr %num_ioim_reqs54.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_ioim_reqs54.i, align 2
  %conv55.i = zext i16 %26 to i32
  store i32 %conv55.i, ptr @num_ios, align 4
  %num_tskim_reqs57.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17, i32 0, i32 4
  %27 = ptrtoint ptr %num_tskim_reqs57.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %num_tskim_reqs57.i, align 4
  %conv58.i = zext i16 %28 to i32
  store i32 %conv58.i, ptr @num_tms, align 4
  %num_fcxp_reqs60.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17, i32 0, i32 6
  %29 = ptrtoint ptr %num_fcxp_reqs60.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_fcxp_reqs60.i, align 4
  %conv61.i = zext i16 %30 to i32
  store i32 %conv61.i, ptr @num_fcxps, align 4
  %num_uf_bufs63.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17, i32 0, i32 7
  %31 = ptrtoint ptr %num_uf_bufs63.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_uf_bufs63.i, align 2
  %conv64.i = zext i16 %32 to i32
  store i32 %conv64.i, ptr @num_ufbufs, align 4
  %drvcfg65.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17, i32 1
  %33 = ptrtoint ptr %drvcfg65.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %drvcfg65.i, align 4
  %conv67.i = zext i16 %34 to i32
  store i32 %conv67.i, ptr @reqq_size, align 4
  %num_rspq_elems69.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17, i32 1, i32 1
  %35 = ptrtoint ptr %num_rspq_elems69.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %num_rspq_elems69.i, align 2
  %conv70.i = zext i16 %36 to i32
  store i32 %conv70.i, ptr @rspq_size, align 4
  %num_sgpgs72.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17, i32 1, i32 2
  %37 = ptrtoint ptr %num_sgpgs72.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %num_sgpgs72.i, align 4
  %conv73.i = zext i16 %38 to i32
  store i32 %conv73.i, ptr @num_sgpgs, align 4
  %ioc_queue_depth = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 22, i32 1
  %39 = ptrtoint ptr %ioc_queue_depth to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv55.i, ptr %ioc_queue_depth, align 4
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 2
  tail call void @bfa_cfg_get_meminfo(ptr noundef %ioc_cfg, ptr noundef %meminfo, ptr noundef %bfa) #11
  %kva_info5 = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 16, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %bfad_update_hal_cfg.exit
  %km_qe.0.in = phi ptr [ %kva_info5, %bfad_update_hal_cfg.exit ], [ %km_qe.0, %for.body.for.cond_crit_edge ]
  %40 = ptrtoint ptr %km_qe.0.in to i32
  call void @__asan_load4_noabort(i32 %40)
  %km_qe.0 = load ptr, ptr %km_qe.0.in, align 4
  %cmp.i57.not = icmp eq ptr %km_qe.0, %kva_info5
  br i1 %cmp.i57.not, label %for.cond13.preheader, label %for.body

for.cond13.preheader:                             ; preds = %for.cond
  %41 = ptrtoint ptr %meminfo to i32
  call void @__asan_load4_noabort(i32 %41)
  %dm_qe.086 = load ptr, ptr %meminfo, align 4
  %cmp.i60.not87 = icmp eq ptr %dm_qe.086, %meminfo
  br i1 %cmp.i60.not87, label %for.cond13.preheader.ext_crit_edge, label %for.body18.lr.ph

for.cond13.preheader.ext_crit_edge:               ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext

for.body18.lr.ph:                                 ; preds = %for.cond13.preheader
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  br label %for.body18

for.body:                                         ; preds = %for.cond
  %mem_len = getelementptr inbounds %struct.bfa_mem_kva_s, ptr %km_qe.0, i32 0, i32 1
  %42 = ptrtoint ptr %mem_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mem_len, align 4
  %call7 = tail call noalias ptr @vzalloc(i32 noundef %43) #15
  %kva = getelementptr inbounds %struct.bfa_mem_kva_s, ptr %km_qe.0, i32 0, i32 2
  %44 = ptrtoint ptr %kva to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7, ptr %kva, align 4
  %cmp = icmp eq ptr %call7, null
  br i1 %cmp, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then:                                          ; preds = %for.body
  %45 = ptrtoint ptr %kva_info5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %km_qe.030.i = load ptr, ptr %kva_info5, align 4
  %cmp.i.not31.i = icmp eq ptr %km_qe.030.i, %kva_info5
  br i1 %cmp.i.not31.i, label %if.then.for.cond7.preheader.i_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.for.cond7.preheader.i_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond7.preheader.i

for.cond7.preheader.i:                            ; preds = %for.body.i.for.cond7.preheader.i_crit_edge, %if.then.for.cond7.preheader.i_crit_edge
  %46 = ptrtoint ptr %meminfo to i32
  call void @__asan_load4_noabort(i32 %46)
  %dm_qe.033.i = load ptr, ptr %meminfo, align 4
  %cmp.i28.not34.i = icmp eq ptr %dm_qe.033.i, %meminfo
  br i1 %cmp.i28.not34.i, label %for.cond7.preheader.i.bfad_hal_mem_release.exit_crit_edge, label %for.body12.lr.ph.i

for.cond7.preheader.i.bfad_hal_mem_release.exit_crit_edge: ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_hal_mem_release.exit

for.body12.lr.ph.i:                               ; preds = %for.cond7.preheader.i
  %pcidev.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  br label %for.body12.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %km_qe.032.i = phi ptr [ %km_qe.0.i, %for.body.i.for.body.i_crit_edge ], [ %km_qe.030.i, %if.then.for.body.i_crit_edge ]
  %kva.i = getelementptr inbounds %struct.bfa_mem_kva_s, ptr %km_qe.032.i, i32 0, i32 2
  %47 = ptrtoint ptr %kva.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %kva.i, align 4
  tail call void @vfree(ptr noundef %48) #11
  %49 = ptrtoint ptr %km_qe.032.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %km_qe.0.i = load ptr, ptr %km_qe.032.i, align 4
  %cmp.i.not.i = icmp eq ptr %km_qe.0.i, %kva_info5
  br i1 %cmp.i.not.i, label %for.body.i.for.cond7.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.cond7.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond7.preheader.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %dm_qe.035.i = phi ptr [ %dm_qe.033.i, %for.body12.lr.ph.i ], [ %dm_qe.0.i, %for.body12.i.for.body12.i_crit_edge ]
  %50 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcidev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %mem_len.i = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035.i, i32 0, i32 1
  %52 = ptrtoint ptr %mem_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mem_len.i, align 8
  %kva13.i = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035.i, i32 0, i32 2
  %54 = ptrtoint ptr %kva13.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %kva13.i, align 4
  %dma.i = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035.i, i32 0, i32 3
  %56 = ptrtoint ptr %dma.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %dma.i, align 8
  %conv.i59 = trunc i64 %57 to i32
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %53, ptr noundef %55, i32 noundef %conv.i59, i32 noundef 0) #11
  %58 = ptrtoint ptr %dm_qe.035.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %dm_qe.0.i = load ptr, ptr %dm_qe.035.i, align 4
  %cmp.i28.not.i = icmp eq ptr %dm_qe.0.i, %meminfo
  br i1 %cmp.i28.not.i, label %for.body12.i.bfad_hal_mem_release.exit_crit_edge, label %for.body12.i.for.body12.i_crit_edge

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12.i

for.body12.i.bfad_hal_mem_release.exit_crit_edge: ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_hal_mem_release.exit

bfad_hal_mem_release.exit:                        ; preds = %for.body12.i.bfad_hal_mem_release.exit_crit_edge, %for.cond7.preheader.i.bfad_hal_mem_release.exit_crit_edge
  %59 = call ptr @memset(ptr %meminfo, i32 0, i32 64)
  br label %ext

for.body18:                                       ; preds = %if.end26.for.body18_crit_edge, %for.body18.lr.ph
  %dm_qe.088 = phi ptr [ %dm_qe.086, %for.body18.lr.ph ], [ %dm_qe.0, %if.end26.for.body18_crit_edge ]
  %60 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %mem_len19 = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.088, i32 0, i32 1
  %62 = ptrtoint ptr %mem_len19 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mem_len19, align 8
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %63, ptr noundef nonnull %phys_addr, i32 noundef 3264, i32 noundef 0) #11
  %kva21 = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.088, i32 0, i32 2
  %64 = ptrtoint ptr %kva21 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i, ptr %kva21, align 4
  %cmp23 = icmp eq ptr %call.i, null
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.body18
  %65 = ptrtoint ptr %kva_info5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %km_qe.030.i64 = load ptr, ptr %kva_info5, align 4
  %cmp.i.not31.i65 = icmp eq ptr %km_qe.030.i64, %kva_info5
  br i1 %cmp.i.not31.i65, label %if.then25.for.cond7.preheader.i68_crit_edge, label %if.then25.for.body.i75_crit_edge

if.then25.for.body.i75_crit_edge:                 ; preds = %if.then25
  br label %for.body.i75

if.then25.for.cond7.preheader.i68_crit_edge:      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond7.preheader.i68

for.cond7.preheader.i68:                          ; preds = %for.body.i75.for.cond7.preheader.i68_crit_edge, %if.then25.for.cond7.preheader.i68_crit_edge
  %66 = ptrtoint ptr %meminfo to i32
  call void @__asan_load4_noabort(i32 %66)
  %dm_qe.033.i66 = load ptr, ptr %meminfo, align 4
  %cmp.i28.not34.i67 = icmp eq ptr %dm_qe.033.i66, %meminfo
  br i1 %cmp.i28.not34.i67, label %for.cond7.preheader.i68.bfad_hal_mem_release.exit85_crit_edge, label %for.cond7.preheader.i68.for.body12.i84_crit_edge

for.cond7.preheader.i68.for.body12.i84_crit_edge: ; preds = %for.cond7.preheader.i68
  br label %for.body12.i84

for.cond7.preheader.i68.bfad_hal_mem_release.exit85_crit_edge: ; preds = %for.cond7.preheader.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_hal_mem_release.exit85

for.body.i75:                                     ; preds = %for.body.i75.for.body.i75_crit_edge, %if.then25.for.body.i75_crit_edge
  %km_qe.032.i71 = phi ptr [ %km_qe.0.i73, %for.body.i75.for.body.i75_crit_edge ], [ %km_qe.030.i64, %if.then25.for.body.i75_crit_edge ]
  %kva.i72 = getelementptr inbounds %struct.bfa_mem_kva_s, ptr %km_qe.032.i71, i32 0, i32 2
  %67 = ptrtoint ptr %kva.i72 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %kva.i72, align 4
  call void @vfree(ptr noundef %68) #11
  %69 = ptrtoint ptr %km_qe.032.i71 to i32
  call void @__asan_load4_noabort(i32 %69)
  %km_qe.0.i73 = load ptr, ptr %km_qe.032.i71, align 4
  %cmp.i.not.i74 = icmp eq ptr %km_qe.0.i73, %kva_info5
  br i1 %cmp.i.not.i74, label %for.body.i75.for.cond7.preheader.i68_crit_edge, label %for.body.i75.for.body.i75_crit_edge

for.body.i75.for.body.i75_crit_edge:              ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i75

for.body.i75.for.cond7.preheader.i68_crit_edge:   ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond7.preheader.i68

for.body12.i84:                                   ; preds = %for.body12.i84.for.body12.i84_crit_edge, %for.cond7.preheader.i68.for.body12.i84_crit_edge
  %dm_qe.035.i76 = phi ptr [ %dm_qe.0.i82, %for.body12.i84.for.body12.i84_crit_edge ], [ %dm_qe.033.i66, %for.cond7.preheader.i68.for.body12.i84_crit_edge ]
  %70 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pcidev, align 8
  %dev.i77 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %mem_len.i78 = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035.i76, i32 0, i32 1
  %72 = ptrtoint ptr %mem_len.i78 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mem_len.i78, align 8
  %kva13.i79 = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035.i76, i32 0, i32 2
  %74 = ptrtoint ptr %kva13.i79 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %kva13.i79, align 4
  %dma.i80 = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035.i76, i32 0, i32 3
  %76 = ptrtoint ptr %dma.i80 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %dma.i80, align 8
  %conv.i81 = trunc i64 %77 to i32
  call void @dma_free_attrs(ptr noundef %dev.i77, i32 noundef %73, ptr noundef %75, i32 noundef %conv.i81, i32 noundef 0) #11
  %78 = ptrtoint ptr %dm_qe.035.i76 to i32
  call void @__asan_load4_noabort(i32 %78)
  %dm_qe.0.i82 = load ptr, ptr %dm_qe.035.i76, align 4
  %cmp.i28.not.i83 = icmp eq ptr %dm_qe.0.i82, %meminfo
  br i1 %cmp.i28.not.i83, label %for.body12.i84.bfad_hal_mem_release.exit85_crit_edge, label %for.body12.i84.for.body12.i84_crit_edge

for.body12.i84.for.body12.i84_crit_edge:          ; preds = %for.body12.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12.i84

for.body12.i84.bfad_hal_mem_release.exit85_crit_edge: ; preds = %for.body12.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_hal_mem_release.exit85

bfad_hal_mem_release.exit85:                      ; preds = %for.body12.i84.bfad_hal_mem_release.exit85_crit_edge, %for.cond7.preheader.i68.bfad_hal_mem_release.exit85_crit_edge
  %79 = call ptr @memset(ptr %meminfo, i32 0, i32 64)
  br label %ext

if.end26:                                         ; preds = %for.body18
  %80 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %phys_addr, align 4
  %conv27 = zext i32 %81 to i64
  %dma = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.088, i32 0, i32 3
  %82 = ptrtoint ptr %dma to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %conv27, ptr %dma, align 8
  %83 = ptrtoint ptr %mem_len19 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mem_len19, align 8
  %85 = call ptr @memset(ptr %call.i, i32 0, i32 %84)
  %86 = ptrtoint ptr %dm_qe.088 to i32
  call void @__asan_load4_noabort(i32 %86)
  %dm_qe.0 = load ptr, ptr %dm_qe.088, align 4
  %cmp.i60.not = icmp eq ptr %dm_qe.0, %meminfo
  br i1 %cmp.i60.not, label %if.end26.ext_crit_edge, label %if.end26.for.body18_crit_edge

if.end26.for.body18_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body18

if.end26.ext_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext

ext:                                              ; preds = %if.end26.ext_crit_edge, %bfad_hal_mem_release.exit85, %bfad_hal_mem_release.exit, %for.cond13.preheader.ext_crit_edge
  %rc.0 = phi i32 [ 3, %bfad_hal_mem_release.exit ], [ 3, %bfad_hal_mem_release.exit85 ], [ 0, %for.cond13.preheader.ext_crit_edge ], [ 0, %if.end26.ext_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys_addr) #11
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_cfg_get_default(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_cfg_get_meminfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_vport_create(ptr noundef %bfad, i16 noundef zeroext %vf_id, ptr noundef %port_cfg, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %fcomp = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fcomp) #11
  %0 = call ptr @memset(ptr %fcomp, i32 255, i32 56)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1448) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bfad1 = getelementptr inbounds %struct.bfad_port_s, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %bfad1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %bfad, ptr %bfad1, align 8
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 20
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %fcs_vport = getelementptr inbounds %struct.bfad_vport_s, ptr %call7.i.i, i32 0, i32 1
  %bfa_fcs = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 3
  %call7 = tail call i32 @bfa_fcs_vport_create(ptr noundef %fcs_vport, ptr noundef %bfa_fcs, i16 noundef zeroext %vf_id, ptr noundef %port_cfg, ptr noundef nonnull %call7.i.i) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp9.not = icmp eq i32 %call7, 0
  br i1 %cmp9.not, label %if.end12, label %if.end.ext_free_vport_crit_edge

if.end.ext_free_vport_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext_free_vport

if.end12:                                         ; preds = %if.end
  %roles = getelementptr inbounds %struct.bfa_lport_cfg_s, ptr %port_cfg, i32 0, i32 4
  %3 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %roles, align 8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end12.do.body23_crit_edge, label %if.then14

if.end12.do.body23_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body23

if.then14:                                        ; preds = %if.end12
  %im_port = getelementptr inbounds %struct.bfad_port_s, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %im_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %im_port, align 8
  %call16 = tail call i32 @bfad_im_scsi_host_alloc(ptr noundef %bfad, ptr noundef %6, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.then14.do.body23_crit_edge, label %do.body40

if.then14.do.body23_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body23

do.body23:                                        ; preds = %if.then14.do.body23_crit_edge, %if.end12.do.body23_crit_edge
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %call37 = tail call i32 @bfa_fcs_vport_start(ptr noundef %fcs_vport) #11
  %list_entry = getelementptr inbounds %struct.bfad_vport_s, ptr %call7.i.i, i32 0, i32 3
  %vport_list = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 43
  %prev.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 43, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_entry, ptr noundef %8, ptr noundef %vport_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.body23.list_add_tail.exit_crit_edge

do.body23.list_add_tail.exit_crit_edge:           ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list_entry, ptr %prev.i, align 4
  %10 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vport_list, ptr %list_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.bfad_vport_s, ptr %call7.i.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 8
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list_entry, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body23.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call31) #11
  br label %cleanup

do.body40:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %comp_del = getelementptr inbounds %struct.bfad_vport_s, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %comp_del to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %fcomp, ptr %comp_del, align 8
  %14 = ptrtoint ptr %fcomp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %fcomp, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %fcomp, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #11
  %call55 = call i32 @bfa_fcs_vport_delete(ptr noundef %fcs_vport) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call48) #11
  %15 = ptrtoint ptr %comp_del to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %comp_del, align 8
  call void @wait_for_completion(ptr noundef %16) #11
  br label %ext_free_vport

ext_free_vport:                                   ; preds = %do.body40, %if.end.ext_free_vport_crit_edge
  %rc.0 = phi i32 [ %call7, %if.end.ext_free_vport_crit_edge ], [ %call16, %do.body40 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %ext_free_vport, %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ %rc.0, %ext_free_vport ], [ 3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fcomp) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcs_vport_create(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfad_im_scsi_host_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcs_vport_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcs_vport_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_bfa_tmo(ptr noundef %t) #0 align 64 {
entry:
  %doneq = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %doneq) #11
  %0 = ptrtoint ptr %doneq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %doneq, align 4, !annotation !491
  %1 = getelementptr inbounds %struct.list_head, ptr %doneq, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !491
  %bfad_lock = getelementptr i8, ptr %t, i32 -1168
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %bfa = getelementptr i8, ptr %t, i32 -9816
  %timer_mod = getelementptr i8, ptr %t, i32 -7976
  tail call void @bfa_timer_beat(ptr noundef %timer_mod) #11
  call void @bfa_comp_deq(ptr noundef %bfa, ptr noundef nonnull %doneq) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call3) #11
  %3 = ptrtoint ptr %doneq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %doneq, align 4
  %cmp.i.not = icmp eq ptr %4, %doneq
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @bfa_comp_process(ptr noundef %bfa, ptr noundef nonnull %doneq) #11
  %call19 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  call void @bfa_comp_free(ptr noundef %bfa, ptr noundef nonnull %doneq) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call19) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %5, 20
  %call27 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %doneq) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_timer_beat(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_comp_deq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_comp_process(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_comp_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_init_timer(ptr noundef %bfad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_tmo = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 27
  tail call void @init_timer_key(ptr noundef %hal_tmo, ptr noundef nonnull @bfad_bfa_tmo, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @bfad_init_timer.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 20
  %call2 = tail call i32 @mod_timer(ptr noundef %hal_tmo, i32 noundef %add) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_pci_init(ptr noundef %pdev, ptr nocapture noundef %bfad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %pdev) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_disable_device_crit_edge

if.end.out_disable_device_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_device

if.end5:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %pdev) #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end14, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %pdev) #16
  br label %out_release_region

if.end14:                                         ; preds = %if.end5
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #11
  %call15 = tail call i32 @pci_enable_pcie_error_reporting(ptr noundef %pdev) #11
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end14.cond.end_crit_edge, label %cond.false

if.end14.cond.end_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  %sub = add i32 %1, 1
  %add = sub i32 %sub, %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end14.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end14.cond.end_crit_edge ]
  %call21 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef %cond) #11
  %pci_bar0_kva = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 8
  %4 = ptrtoint ptr %pci_bar0_kva to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call21, ptr %pci_bar0_kva, align 8
  %end24 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %5 = ptrtoint ptr %end24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp25 = icmp eq i32 %6, 0
  br i1 %cmp25, label %cond.end.cond.end36_crit_edge, label %cond.false27

cond.end.cond.end36_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end36

cond.false27:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx23 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %7 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx23, align 8
  %sub34 = add i32 %6, 1
  %add35 = sub i32 %sub34, %8
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false27, %cond.end.cond.end36_crit_edge
  %cond37 = phi i32 [ %add35, %cond.false27 ], [ 0, %cond.end.cond.end36_crit_edge ]
  %call38 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 2, i32 noundef %cond37) #11
  %pci_bar2_kva = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 9
  %9 = ptrtoint ptr %pci_bar2_kva to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call38, ptr %pci_bar2_kva, align 4
  %10 = ptrtoint ptr %pci_bar0_kva to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_bar0_kva, align 8
  %cmp40 = icmp eq ptr %11, null
  br i1 %cmp40, label %do.end44, label %if.end47

do.end44:                                         ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #13
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #16
  br label %out_release_region

if.end47:                                         ; preds = %cond.end36
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %12 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %13, 3
  %and = and i32 %shr, 31
  %hal_pcidev = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 6
  %14 = ptrtoint ptr %hal_pcidev to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %hal_pcidev, align 8
  %15 = load i32, ptr %devfn, align 4
  %16 = trunc i32 %15 to i8
  %conv = and i8 %16, 7
  %pci_func = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %pci_func to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %pci_func, align 4
  %pci_bar_kva = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 6, i32 4
  %18 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %11, ptr %pci_bar_kva, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device, align 2
  %device_id = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 6, i32 2
  %21 = ptrtoint ptr %device_id to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %device_id, align 2
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %22 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %subsystem_device, align 2
  %ssid = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 6, i32 3
  %24 = ptrtoint ptr %ssid to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %ssid, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %25 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end47.pci_name.exit_crit_edge

if.end47.pci_name.exit_crit_edge:                 ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end47.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %28, %if.end.i.i ], [ %26, %if.end47.pci_name.exit_crit_edge ]
  %pci_name = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 5
  %29 = ptrtoint ptr %pci_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i.i, ptr %pci_name, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %30 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vendor, align 8
  %pci_attr = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 7
  %32 = ptrtoint ptr %pci_attr to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %pci_attr, align 8
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %device, align 2
  %device_id58 = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %device_id58 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %device_id58, align 2
  %36 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %subsystem_device, align 2
  %ssid61 = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 7, i32 2
  %38 = ptrtoint ptr %ssid61 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %ssid61, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %39 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %subsystem_vendor, align 4
  %ssvid = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 7, i32 3
  %41 = ptrtoint ptr %ssvid to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %ssvid, align 2
  %42 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %devfn, align 4
  %and64 = and i32 %43, 7
  %pcifn = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 7, i32 4
  %44 = ptrtoint ptr %pcifn to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and64, ptr %pcifn, align 8
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %45 = ptrtoint ptr %pcidev to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %pdev, ptr %pcidev, align 8
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 19
  %46 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.i.not = icmp eq i8 %47, 0
  br i1 %tobool.i.not, label %pci_name.exit.if.end94_crit_edge, label %land.lhs.true

pci_name.exit.if.end94_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

land.lhs.true:                                    ; preds = %pci_name.exit
  %48 = load i32, ptr @pcie_max_read_reqsz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool68.not = icmp eq i32 %48, 0
  br i1 %tobool68.not, label %land.lhs.true.if.end94_crit_edge, label %if.then69

land.lhs.true.if.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then69:                                        ; preds = %land.lhs.true
  %49 = add i32 %48, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3969, i32 %49)
  %50 = icmp ult i32 %49, 3969
  %51 = tail call i32 @llvm.ctpop.i32(i32 %48) #11, !range !492
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp1.i = icmp ult i32 %51, 2
  %or.cond147 = and i1 %50, %cmp1.i
  br i1 %or.cond147, label %if.then78, label %do.end89

if.then78:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  %call79 = tail call i32 @pcie_get_readrq(ptr noundef %pdev) #11
  %52 = ptrtoint ptr %pci_name to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pci_name, align 4
  %54 = load i32, ptr @pcie_max_read_reqsz, align 4
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %53, i32 noundef %call79, i32 noundef %54) #16
  %55 = load i32, ptr @pcie_max_read_reqsz, align 4
  %call86 = tail call i32 @pcie_set_readrq(ptr noundef %pdev, i32 noundef %55) #11
  br label %if.end94

do.end89:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %retval.0.i.i, i32 noundef %48) #16
  br label %if.end94

if.end94:                                         ; preds = %do.end89, %if.then78, %land.lhs.true.if.end94_crit_edge, %pci_name.exit.if.end94_crit_edge
  %call95 = tail call i32 @pci_save_state(ptr noundef %pdev) #11
  br label %cleanup

out_release_region:                               ; preds = %do.end44, %if.then8
  tail call void @pci_release_regions(ptr noundef %pdev) #11
  br label %out_disable_device

out_disable_device:                               ; preds = %out_release_region, %if.end.out_disable_device_crit_edge
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  br label %cleanup

cleanup:                                          ; preds = %out_disable_device, %if.end94, %do.end
  %retval.0 = phi i32 [ 0, %if.end94 ], [ -19, %out_disable_device ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_pcie_error_reporting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_readrq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_pci_uninit(ptr noundef %pdev, ptr nocapture noundef readonly %bfad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_bar0_kva = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 8
  %0 = ptrtoint ptr %pci_bar0_kva to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_bar0_kva, align 8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %1) #11
  %pci_bar2_kva = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 9
  %2 = ptrtoint ptr %pci_bar2_kva to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_bar2_kva, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %3) #11
  tail call void @pci_release_regions(ptr noundef %pdev) #11
  %call = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pdev) #11
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_pcie_error_reporting(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_drv_init(ptr noundef %bfad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @rport_del_timeout, align 4
  %cfg_data = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 22
  %1 = ptrtoint ptr %cfg_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %cfg_data, align 8
  %2 = load i32, ptr @bfa_lun_queue_depth, align 4
  %lun_queue_depth = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 22, i32 2
  %3 = ptrtoint ptr %lun_queue_depth to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %lun_queue_depth, align 8
  %4 = load i32, ptr @bfa_io_max_sge, align 4
  %io_max_sge = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 22, i32 3
  %5 = ptrtoint ptr %io_max_sge to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %io_max_sge, align 4
  %binding_method = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 22, i32 4
  %6 = ptrtoint ptr %binding_method to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %binding_method, align 8
  %call = tail call i32 @bfad_hal_mem_alloc(ptr noundef %bfad)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %inst_no = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 18
  %7 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inst_no, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %8) #16
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 30
  %9 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trcmod, align 8
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 2
  %trcmod10 = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %trcmod10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %trcmod10, align 8
  %plog_buf = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 31
  %plog = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %plog to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %plog_buf, ptr %plog, align 4
  tail call void @bfa_plog_init(ptr noundef %plog_buf) #11
  tail call void @bfa_plog_str(ptr noundef %plog_buf, i32 noundef 2, i32 noundef 16, i16 noundef zeroext 0, ptr noundef nonnull @.str.24) #11
  %ioc_cfg = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 17
  %meminfo = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 16
  %hal_pcidev = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 6
  tail call void @bfa_attach(ptr noundef %bfa, ptr noundef %bfad, ptr noundef %ioc_cfg, ptr noundef %meminfo, ptr noundef %hal_pcidev) #11
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 20
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %13 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trcmod, align 8
  %bfa_fcs = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 3
  %trcmod26 = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %trcmod26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %trcmod26, align 8
  tail call void @bfa_fcs_attach(ptr noundef %bfa_fcs, ptr noundef %bfa, ptr noundef %bfad, i32 noundef 0) #11
  %16 = load i32, ptr @fdmi_enable, align 4
  %fdmi_enabled = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 3, i32 4
  %17 = ptrtoint ptr %fdmi_enabled to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fdmi_enabled, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call20) #11
  %bfad_flags = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 19
  %18 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bfad_flags, align 4
  %or = or i32 %19, 4
  store i32 %or, ptr %bfad_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_plog_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_plog_str(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_drv_uninit(ptr noundef %bfad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %comp = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 10
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #11
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 2
  tail call void @bfa_iocfc_stop(ptr noundef %bfa) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call2) #11
  tail call void @wait_for_completion(ptr noundef %comp) #11
  %hal_tmo = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 27
  %call7 = tail call i32 @del_timer_sync(ptr noundef %hal_tmo) #11
  tail call void @bfa_isr_disable(ptr noundef %bfa) #11
  tail call void @bfa_detach(ptr noundef %bfa) #11
  %bfad_flags.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 19
  %1 = ptrtoint ptr %bfad_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bfad_flags.i, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  %nvec.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 24
  %3 = ptrtoint ptr %nvec.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nvec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp23.i = icmp sgt i32 %4, 0
  br i1 %cmp23.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bfad_s, ptr %bfad, i32 0, i32 23, i32 %i.024.i
  %msix.i = getelementptr %struct.bfad_s, ptr %bfad, i32 0, i32 23, i32 %i.024.i, i32 1
  %5 = ptrtoint ptr %msix.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msix.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %6, ptr noundef %arrayidx.i) #11
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %7 = ptrtoint ptr %nvec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nvec.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %8
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %pcidev.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %9 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcidev.i, align 8
  tail call void @pci_disable_msix(ptr noundef %10) #11
  %11 = ptrtoint ptr %bfad_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bfad_flags.i, align 4
  %and4.i = and i32 %12, -2
  store i32 %and4.i, ptr %bfad_flags.i, align 4
  br label %bfad_remove_intr.exit

if.else.i:                                        ; preds = %entry
  %and6.i = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else.i.bfad_remove_intr.exit_crit_edge, label %if.then8.i

if.else.i.bfad_remove_intr.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_remove_intr.exit

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev9.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %13 = ptrtoint ptr %pcidev9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcidev9.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 46
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  %call10.i = tail call ptr @free_irq(i32 noundef %16, ptr noundef %bfad) #11
  br label %bfad_remove_intr.exit

bfad_remove_intr.exit:                            ; preds = %if.then8.i, %if.else.i.bfad_remove_intr.exit_crit_edge, %for.end.i
  %meminfo.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 16
  %kva_info2.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 16, i32 1
  %17 = ptrtoint ptr %kva_info2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %km_qe.030.i = load ptr, ptr %kva_info2.i, align 4
  %cmp.i.not31.i = icmp eq ptr %km_qe.030.i, %kva_info2.i
  br i1 %cmp.i.not31.i, label %bfad_remove_intr.exit.for.cond7.preheader.i_crit_edge, label %bfad_remove_intr.exit.for.body.i21_crit_edge

bfad_remove_intr.exit.for.body.i21_crit_edge:     ; preds = %bfad_remove_intr.exit
  br label %for.body.i21

bfad_remove_intr.exit.for.cond7.preheader.i_crit_edge: ; preds = %bfad_remove_intr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond7.preheader.i

for.cond7.preheader.i:                            ; preds = %for.body.i21.for.cond7.preheader.i_crit_edge, %bfad_remove_intr.exit.for.cond7.preheader.i_crit_edge
  %18 = ptrtoint ptr %meminfo.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %dm_qe.033.i = load ptr, ptr %meminfo.i, align 4
  %cmp.i28.not34.i = icmp eq ptr %dm_qe.033.i, %meminfo.i
  br i1 %cmp.i28.not34.i, label %for.cond7.preheader.i.bfad_hal_mem_release.exit_crit_edge, label %for.body12.lr.ph.i

for.cond7.preheader.i.bfad_hal_mem_release.exit_crit_edge: ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_hal_mem_release.exit

for.body12.lr.ph.i:                               ; preds = %for.cond7.preheader.i
  %pcidev.i20 = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  br label %for.body12.i

for.body.i21:                                     ; preds = %for.body.i21.for.body.i21_crit_edge, %bfad_remove_intr.exit.for.body.i21_crit_edge
  %km_qe.032.i = phi ptr [ %km_qe.0.i, %for.body.i21.for.body.i21_crit_edge ], [ %km_qe.030.i, %bfad_remove_intr.exit.for.body.i21_crit_edge ]
  %kva.i = getelementptr inbounds %struct.bfa_mem_kva_s, ptr %km_qe.032.i, i32 0, i32 2
  %19 = ptrtoint ptr %kva.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %kva.i, align 4
  tail call void @vfree(ptr noundef %20) #11
  %21 = ptrtoint ptr %km_qe.032.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %km_qe.0.i = load ptr, ptr %km_qe.032.i, align 4
  %cmp.i.not.i = icmp eq ptr %km_qe.0.i, %kva_info2.i
  br i1 %cmp.i.not.i, label %for.body.i21.for.cond7.preheader.i_crit_edge, label %for.body.i21.for.body.i21_crit_edge

for.body.i21.for.body.i21_crit_edge:              ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i21

for.body.i21.for.cond7.preheader.i_crit_edge:     ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond7.preheader.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %dm_qe.035.i = phi ptr [ %dm_qe.033.i, %for.body12.lr.ph.i ], [ %dm_qe.0.i, %for.body12.i.for.body12.i_crit_edge ]
  %22 = ptrtoint ptr %pcidev.i20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcidev.i20, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %mem_len.i = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035.i, i32 0, i32 1
  %24 = ptrtoint ptr %mem_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mem_len.i, align 8
  %kva13.i = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035.i, i32 0, i32 2
  %26 = ptrtoint ptr %kva13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %kva13.i, align 4
  %dma.i = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035.i, i32 0, i32 3
  %28 = ptrtoint ptr %dma.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dma.i, align 8
  %conv.i = trunc i64 %29 to i32
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %25, ptr noundef %27, i32 noundef %conv.i, i32 noundef 0) #11
  %30 = ptrtoint ptr %dm_qe.035.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %dm_qe.0.i = load ptr, ptr %dm_qe.035.i, align 4
  %cmp.i28.not.i = icmp eq ptr %dm_qe.0.i, %meminfo.i
  br i1 %cmp.i28.not.i, label %for.body12.i.bfad_hal_mem_release.exit_crit_edge, label %for.body12.i.for.body12.i_crit_edge

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12.i

for.body12.i.bfad_hal_mem_release.exit_crit_edge: ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_hal_mem_release.exit

bfad_hal_mem_release.exit:                        ; preds = %for.body12.i.bfad_hal_mem_release.exit_crit_edge, %for.cond7.preheader.i.bfad_hal_mem_release.exit_crit_edge
  %31 = call ptr @memset(ptr %meminfo.i, i32 0, i32 64)
  %32 = ptrtoint ptr %bfad_flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bfad_flags.i, align 4
  %and = and i32 %33, -5
  store i32 %and, ptr %bfad_flags.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_iocfc_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_isr_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_remove_intr(ptr noundef %bfad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bfad_flags = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 19
  %0 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bfad_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %nvec = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 24
  %2 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nvec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23 = icmp sgt i32 %3, 0
  br i1 %cmp23, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bfad_s, ptr %bfad, i32 0, i32 23, i32 %i.024
  %msix = getelementptr %struct.bfad_s, ptr %bfad, i32 0, i32 23, i32 %i.024, i32 1
  %4 = ptrtoint ptr %msix to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msix, align 4
  %call = tail call ptr @free_irq(i32 noundef %5, ptr noundef %arrayidx) #11
  %inc = add nuw nsw i32 %i.024, 1
  %6 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nvec, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %8 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev, align 8
  tail call void @pci_disable_msix(ptr noundef %9) #11
  %10 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bfad_flags, align 4
  %and4 = and i32 %11, -2
  store i32 %and4, ptr %bfad_flags, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  %and6 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else.if.end11_crit_edge, label %if.then8

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev9 = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %12 = ptrtoint ptr %pcidev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcidev9, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call10 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %bfad) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.else.if.end11_crit_edge, %for.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_drv_start(ptr noundef %bfad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 2
  tail call void @bfa_iocfc_start(ptr noundef %bfa) #11
  %bfa_fcs = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 3
  tail call void @bfa_fcs_pbc_vport_init(ptr noundef %bfa_fcs) #11
  tail call void @bfa_fcs_fabric_modstart(ptr noundef %bfa_fcs) #11
  %bfad_flags = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 19
  %0 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bfad_flags, align 4
  %or = or i32 %1, 16
  store i32 %or, ptr %bfad_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call2) #11
  %im = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 29
  %2 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %im, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %drv_workq = getelementptr inbounds %struct.bfad_im_s, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %drv_workq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_workq, align 4
  tail call void @flush_workqueue(ptr noundef %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_iocfc_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_pbc_vport_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_fabric_modstart(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_fcs_stop(ptr noundef %bfad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %comp = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 10
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #11
  %flags5 = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 15, i32 4
  %1 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags5, align 4
  %or = or i32 %2, 1
  store i32 %or, ptr %flags5, align 4
  %bfa_fcs = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 3
  tail call void @bfa_fcs_exit(ptr noundef %bfa_fcs) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call2) #11
  tail call void @wait_for_completion(ptr noundef %comp) #11
  %3 = ptrtoint ptr %bfad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bfad, align 8
  tail call void %4(ptr noundef %bfad, i32 noundef 7) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_stop(ptr noundef %bfad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %comp = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 10
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #11
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 2
  tail call void @bfa_iocfc_stop(ptr noundef %bfa) #11
  %bfad_flags = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 19
  %1 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bfad_flags, align 4
  %and = and i32 %2, -17
  store i32 %and, ptr %bfad_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call2) #11
  tail call void @wait_for_completion(ptr noundef %comp) #11
  %3 = ptrtoint ptr %bfad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bfad, align 8
  tail call void %4(ptr noundef %bfad, i32 noundef 8) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_cfg_pport(ptr noundef %bfad, i32 noundef %role) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @supported_fc4s, align 4
  %1 = and i32 %role, 1
  %2 = and i32 %1, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %.not.not = icmp eq i32 %2, 0
  br i1 %.not.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %entry
  %im_port = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 15, i32 7
  %3 = ptrtoint ptr %im_port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %im_port, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %if.then
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %5 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call = tail call i32 @bfad_im_scsi_host_alloc(ptr noundef %bfad, ptr noundef nonnull %4, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6.not = icmp eq i32 %call, 0
  br i1 %cmp6.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %roles = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 15, i32 3
  %7 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %roles, align 4
  %or = or i32 %8, 1
  store i32 %or, ptr %roles, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %entry.if.end10_crit_edge
  %bfad_flags = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 19
  %9 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bfad_flags, align 4
  %or11 = or i32 %10, 8
  store i32 %or11, ptr %bfad_flags, align 4
  br label %out

out:                                              ; preds = %if.end10, %if.end.out_crit_edge, %if.then.out_crit_edge
  %rc.1 = phi i32 [ %call, %if.end.out_crit_edge ], [ 0, %if.end10 ], [ 1, %if.then.out_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_uncfg_pport(ptr noundef %bfad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @supported_fc4s, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %roles = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 15, i32 3
  %1 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %roles, align 4
  %and1 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %im_port = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 15, i32 7
  %3 = ptrtoint ptr %im_port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %im_port, align 4
  tail call void @bfad_im_scsi_host_free(ptr noundef %bfad, ptr noundef %4) #11
  %5 = ptrtoint ptr %im_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %im_port, align 4
  tail call void @bfad_im_port_clean(ptr noundef %6) #11
  %7 = ptrtoint ptr %im_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %im_port, align 4
  tail call void @kfree(ptr noundef %8) #11
  %9 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %roles, align 4
  %and10 = and i32 %10, -2
  store i32 %and10, ptr %roles, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %bfad_flags = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 19
  %11 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bfad_flags, align 4
  %and11 = and i32 %12, -9
  store i32 %and11, ptr %bfad_flags, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfad_im_scsi_host_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfad_im_port_clean(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_start_ops(ptr noundef %bfad) local_unnamed_addr #0 align 64 {
entry:
  %driver_info = alloca %struct.bfa_fcs_driver_info_s, align 1
  %vid = alloca %struct.fc_vport_identifiers, align 8
  %pwwn_buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %driver_info) #11
  %0 = load i32, ptr @max_xfer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %0)
  %cmp = icmp slt i32 %0, 64
  br i1 %cmp, label %entry.if.end4.sink.split_crit_edge, label %if.end

entry.if.end4.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %0)
  %cmp2 = icmp ugt i32 %0, 32767
  br i1 %cmp2, label %if.end.if.end4.sink.split_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.end.if.end4.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.sink.split

if.end4.sink.split:                               ; preds = %if.end.if.end4.sink.split_crit_edge, %entry.if.end4.sink.split_crit_edge
  %.sink = phi i32 [ 64, %entry.if.end4.sink.split_crit_edge ], [ 32767, %if.end.if.end4.sink.split_crit_edge ]
  store i32 %.sink, ptr @max_xfer_size, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end4.sink.split, %if.end.if.end4_crit_edge
  %1 = call ptr @memset(ptr %driver_info, i32 0, i32 320)
  %call = call i32 @strlcpy(ptr noundef nonnull %driver_info, ptr noundef nonnull @.str.25, i32 noundef 64) #11
  %2 = load ptr, ptr @host_name, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end4.if.end8_crit_edge, label %if.then5

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %host_machine_name = getelementptr inbounds %struct.bfa_fcs_driver_info_s, ptr %driver_info, i32 0, i32 1
  %call7 = call i32 @strlcpy(ptr noundef %host_machine_name, ptr noundef nonnull %2, i32 noundef 64) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end4.if.end8_crit_edge
  %3 = load ptr, ptr @os_name, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end8.if.end13_crit_edge, label %if.then10

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %host_os_name = getelementptr inbounds %struct.bfa_fcs_driver_info_s, ptr %driver_info, i32 0, i32 2
  %call12 = call i32 @strlcpy(ptr noundef %host_os_name, ptr noundef nonnull %3, i32 noundef 64) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %4 = load ptr, ptr @os_patch, align 4
  %tobool14.not = icmp eq ptr %4, null
  br i1 %tobool14.not, label %if.end13.if.end18_crit_edge, label %if.then15

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %host_os_patch = getelementptr inbounds %struct.bfa_fcs_driver_info_s, ptr %driver_info, i32 0, i32 3
  %call17 = call i32 @strlcpy(ptr noundef %host_os_patch, ptr noundef nonnull %4, i32 noundef 64) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  %os_device_name = getelementptr inbounds %struct.bfa_fcs_driver_info_s, ptr %driver_info, i32 0, i32 4
  %pci_name = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 5
  %5 = ptrtoint ptr %pci_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_name, align 4
  %call20 = call i32 @strlcpy(ptr noundef %os_device_name, ptr noundef %6, i32 noundef 64) #11
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 20
  %call24 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %bfa_fcs = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 3
  call void @bfa_fcs_driver_info_init(ptr noundef %bfa_fcs, ptr noundef nonnull %driver_info) #11
  %bfad_flags = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 19
  %7 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bfad_flags, align 4
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  call void @bfa_fcs_update_cfg(ptr noundef %bfa_fcs) #11
  br label %if.end31

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  call void @bfa_fcs_init(ptr noundef %bfa_fcs) #11
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then28
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call24) #11
  %9 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bfad_flags, align 4
  %and34 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end31.if.end42_crit_edge

if.end31.if.end42_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then36:                                        ; preds = %if.end31
  %11 = load i32, ptr @supported_fc4s, align 4
  %12 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %.not.not.i = icmp eq i32 %12, 0
  br i1 %.not.not.i, label %if.then36.bfad_cfg_pport.exit_crit_edge, label %if.then.i

if.then36.bfad_cfg_pport.exit_crit_edge:          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_cfg_pport.exit

if.then.i:                                        ; preds = %if.then36
  %im_port.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 15, i32 7
  %13 = ptrtoint ptr %im_port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %im_port.i, align 4
  %cmp.i = icmp eq ptr %14, null
  br i1 %cmp.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %pcidev.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %15 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcidev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %call.i = call i32 @bfad_im_scsi_host_alloc(ptr noundef %bfad, ptr noundef nonnull %14, ptr noundef %dev.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp6.not.i, label %if.end8.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %roles.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 15, i32 3
  %17 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %roles.i, align 4
  %or.i = or i32 %18, 1
  store i32 %or.i, ptr %roles.i, align 4
  br label %bfad_cfg_pport.exit

bfad_cfg_pport.exit:                              ; preds = %if.end8.i, %if.then36.bfad_cfg_pport.exit_crit_edge
  %19 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bfad_flags, align 4
  %or11.i = or i32 %20, 8
  store i32 %or11.i, ptr %bfad_flags, align 4
  br label %if.end42

if.end42:                                         ; preds = %bfad_cfg_pport.exit, %if.end31.if.end42_crit_edge
  %im_port = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 15, i32 7
  %21 = ptrtoint ptr %im_port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %im_port, align 4
  call void @bfad_fc_host_init(ptr noundef %22) #11
  %call43 = call i32 @bfad_im_probe(ptr noundef %bfad) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %if.else57, label %do.end49

do.end49:                                         ; preds = %if.end42
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #16
  %23 = ptrtoint ptr %bfad to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bfad, align 8
  %cmp52 = icmp eq ptr %24, @bfad_sm_initializing
  br i1 %cmp52, label %if.then54, label %do.end49.cleanup_crit_edge

do.end49.cleanup_crit_edge:                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then54:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %bfad to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bfad_sm_failed, ptr %bfad, align 8
  br label %cleanup

if.else57:                                        ; preds = %if.end42
  %26 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bfad_flags, align 4
  %or = or i32 %27, 512
  store i32 %or, ptr %bfad_flags, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %bfa.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 2
  call void @bfa_iocfc_start(ptr noundef %bfa.i) #11
  call void @bfa_fcs_pbc_vport_init(ptr noundef %bfa_fcs) #11
  call void @bfa_fcs_fabric_modstart(ptr noundef %bfa_fcs) #11
  %28 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bfad_flags, align 4
  %or.i147 = or i32 %29, 16
  store i32 %or.i147, ptr %bfad_flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call2.i) #11
  %im.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 29
  %30 = ptrtoint ptr %im.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %im.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.else57.bfad_drv_start.exit_crit_edge, label %if.then.i148

if.else57.bfad_drv_start.exit_crit_edge:          ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_drv_start.exit

if.then.i148:                                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #13
  %drv_workq.i = getelementptr inbounds %struct.bfad_im_s, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %drv_workq.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drv_workq.i, align 4
  call void @flush_workqueue(ptr noundef %33) #11
  br label %bfad_drv_start.exit

bfad_drv_start.exit:                              ; preds = %if.then.i148, %if.else57.bfad_drv_start.exit_crit_edge
  %pbc_vport_list = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 35
  %34 = ptrtoint ptr %pbc_vport_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pbc_vport_list, align 8
  %cmp67.not156 = icmp eq ptr %35, %pbc_vport_list
  br i1 %cmp67.not156, label %bfad_drv_start.exit.for.end_crit_edge, label %for.body.lr.ph

bfad_drv_start.exit.for.end_crit_edge:            ; preds = %bfad_drv_start.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %bfad_drv_start.exit
  %roles = getelementptr inbounds %struct.fc_vport_identifiers, ptr %vid, i32 0, i32 2
  %vport_type = getelementptr inbounds %struct.fc_vport_identifiers, ptr %vid, i32 0, i32 4
  %port_name = getelementptr inbounds %struct.fc_vport_identifiers, ptr %vid, i32 0, i32 1
  %inst_no = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in157 = phi ptr [ %35, %for.body.lr.ph ], [ %.pn160, %list_del.exit.for.body_crit_edge ]
  %vport.0159 = getelementptr i8, ptr %.pn.in157, i32 -1436
  %36 = ptrtoint ptr %.pn.in157 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn160 = load ptr, ptr %.pn.in157, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %vid) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pwwn_buf) #11
  %37 = call ptr @memset(ptr %pwwn_buf, i32 255, i32 32)
  %38 = call ptr @memset(ptr %vid, i32 0, i32 96)
  %39 = ptrtoint ptr %roles to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %roles, align 8
  %40 = ptrtoint ptr %vport_type to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 7, ptr %vport_type, align 8
  %port_cfg = getelementptr i8, ptr %.pn.in157, i32 -1364
  %nwwn = getelementptr i8, ptr %.pn.in157, i32 -1356
  %41 = ptrtoint ptr %nwwn to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %nwwn, align 1
  %43 = ptrtoint ptr %vid to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %vid, align 8
  %44 = ptrtoint ptr %port_cfg to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %port_cfg, align 1
  %46 = ptrtoint ptr %port_name to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %port_name, align 8
  %47 = ptrtoint ptr %im_port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %im_port, align 4
  %shost = getelementptr inbounds %struct.bfad_im_port_s, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %shost, align 4
  %call76 = call ptr @fc_vport_create(ptr noundef %50, i32 noundef 0, ptr noundef nonnull %vid) #11
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %if.then78, label %for.body.if.end87_crit_edge

for.body.if.end87_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then78:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %port_name, align 8
  %w.sroa.0.0.extract.shift.i = lshr i64 %52, 56
  %w.sroa.0.0.extract.trunc.i = trunc i64 %w.sroa.0.0.extract.shift.i to i32
  %w.sroa.5.0.extract.shift.i = lshr i64 %52, 48
  %w.sroa.5.0.extract.trunc.i = trunc i64 %w.sroa.5.0.extract.shift.i to i32
  %w.sroa.6.0.extract.shift.i = lshr i64 %52, 40
  %w.sroa.6.0.extract.trunc.i = trunc i64 %w.sroa.6.0.extract.shift.i to i32
  %w.sroa.7.0.extract.shift.i = lshr i64 %52, 32
  %w.sroa.7.0.extract.trunc.i = trunc i64 %w.sroa.7.0.extract.shift.i to i32
  %53 = trunc i64 %52 to i32
  %54 = lshr i32 %53, 24
  %55 = lshr i32 %53, 16
  %56 = lshr i32 %53, 8
  %conv2.i = and i32 %w.sroa.5.0.extract.trunc.i, 255
  %conv4.i = and i32 %w.sroa.6.0.extract.trunc.i, 255
  %conv6.i = and i32 %w.sroa.7.0.extract.trunc.i, 255
  %conv10.i = and i32 %55, 255
  %conv12.i = and i32 %56, 255
  %conv14.i = and i32 %53, 255
  %call.i150 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %pwwn_buf, ptr noundef nonnull @.str.58, i32 noundef %w.sroa.0.0.extract.trunc.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %54, i32 noundef %conv10.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #11
  %57 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %inst_no, align 8
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %58, ptr noundef nonnull %pwwn_buf) #16
  br label %if.end87

if.end87:                                         ; preds = %if.then78, %for.body.if.end87_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in157) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end87.list_del.exit_crit_edge

if.end87.list_del.exit_crit_edge:                 ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in157, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i, align 4
  %61 = ptrtoint ptr %.pn.in157 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %.pn.in157, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end87.list_del.exit_crit_edge
  %65 = ptrtoint ptr %.pn.in157 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in157, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in157, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %vport.0159) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pwwn_buf) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %vid) #11
  %cmp67.not = icmp eq ptr %.pn160, %pbc_vport_list
  br i1 %cmp67.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %bfad_drv_start.exit.for.end_crit_edge
  %67 = load i32, ptr @bfa_linkup_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp94 = icmp slt i32 %67, 0
  br i1 %cmp94, label %if.then96, label %if.else98

if.then96:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call97 = call i32 @bfad_get_linkup_delay(ptr noundef %bfad) #11
  store i32 %call97, ptr @bfa_linkup_delay, align 4
  call void @bfad_rport_online_wait(ptr noundef %bfad) #11
  store i32 -1, ptr @bfa_linkup_delay, align 4
  br label %do.body100

if.else98:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @bfad_rport_online_wait(ptr noundef %bfad) #11
  br label %do.body100

do.body100:                                       ; preds = %if.else98, %if.then96
  %68 = load i32, ptr @bfa_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %68)
  %cmp101 = icmp eq i32 %68, 4
  br i1 %cmp101, label %do.end106, label %do.body100.cleanup_crit_edge

do.body100.cleanup_crit_edge:                     ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end106:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %69 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.33, ptr noundef %dev, ptr noundef nonnull @.str.32) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end106, %do.body100.cleanup_crit_edge, %if.then54, %do.end49.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then54 ], [ 1, %do.end49.cleanup_crit_edge ], [ 0, %do.end106 ], [ 0, %do.body100.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %if.then.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %driver_info) #11
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_driver_info_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_update_cfg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfad_fc_host_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfad_im_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_sm_initializing(ptr noundef %bfad, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 30
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %1, i32 noundef 3073, i32 noundef 274, i64 noundef %conv) #11
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %do.body35 [
    i32 4, label %sw.bb
    i32 6, label %sw.bb13
    i32 5, label %sw.bb33
  ]

sw.bb:                                            ; preds = %entry
  %bfad_tsk = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 21
  %3 = ptrtoint ptr %bfad_tsk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bfad_tsk, align 4
  %call = tail call i32 @kthread_stop(ptr noundef %4) #11
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 20
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %5 = ptrtoint ptr %bfad_tsk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %bfad_tsk, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call4) #11
  %call9 = tail call i32 @bfad_start_ops(ptr noundef %bfad)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %bfad to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bfad_sm_failed, ptr %bfad, align 8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %bfad to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bfad_sm_operational, ptr %bfad, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %bfad to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bfad_sm_uninit, ptr %bfad, align 8
  %bfad_tsk15 = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 21
  %9 = ptrtoint ptr %bfad_tsk15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bfad_tsk15, align 4
  %call16 = tail call i32 @kthread_stop(ptr noundef %10) #11
  %bfad_lock24 = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 20
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock24) #11
  %11 = ptrtoint ptr %bfad_tsk15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bfad_tsk15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock24, i32 noundef %call26) #11
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %bfad to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @bfad_sm_failed, ptr %bfad, align 8
  br label %sw.epilog

do.body35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trcmod, align 8
  %or = or i32 %event, -559087616
  %conv37 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %14, i32 noundef 3073, i32 noundef 303, i64 noundef %conv37) #11
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5, i32 noundef 303, i32 noundef %event) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body35, %sw.bb33, %sw.bb13, %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_sm_failed(ptr noundef %bfad, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 30
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %1, i32 noundef 3073, i32 noundef 312, i64 noundef %conv) #11
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %event, label %do.body [
    i32 4, label %sw.bb
    i32 9, label %sw.bb2
    i32 8, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @bfad_start_ops(ptr noundef %bfad)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %bfad to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bfad_sm_operational, ptr %bfad, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %bfad to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bfad_sm_fcs_exit, ptr %bfad, align 8
  %5 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trcmod, align 8
  tail call void @__bfa_trc(ptr noundef %6, i32 noundef 3073, i32 noundef 357, i64 noundef 7) #11
  %7 = ptrtoint ptr %bfad to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bfad_sm_stopping, ptr %bfad, align 8
  %bfad_lock.i.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 20
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i.i) #11
  %comp.i.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 10
  %8 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %comp.i.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #11
  %bfa.i.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 2
  tail call void @bfa_iocfc_stop(ptr noundef %bfa.i.i) #11
  %bfad_flags.i.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 19
  %9 = ptrtoint ptr %bfad_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bfad_flags.i.i, align 4
  %and.i.i = and i32 %10, -17
  store i32 %and.i.i, ptr %bfad_flags.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i.i, i32 noundef %call2.i.i) #11
  tail call void @wait_for_completion(ptr noundef %comp.i.i) #11
  %11 = ptrtoint ptr %bfad to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bfad, align 8
  tail call void %12(ptr noundef %bfad, i32 noundef 8) #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %13 = ptrtoint ptr %bfad to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bfad_sm_uninit, ptr %bfad, align 8
  %bfad_flags.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 19
  %14 = ptrtoint ptr %bfad_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bfad_flags.i, align 4
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %sw.bb5
  %nvec.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 24
  %16 = ptrtoint ptr %nvec.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nvec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp23.i = icmp sgt i32 %17, 0
  br i1 %cmp23.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bfad_s, ptr %bfad, i32 0, i32 23, i32 %i.024.i
  %msix.i = getelementptr %struct.bfad_s, ptr %bfad, i32 0, i32 23, i32 %i.024.i, i32 1
  %18 = ptrtoint ptr %msix.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msix.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %19, ptr noundef %arrayidx.i) #11
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %20 = ptrtoint ptr %nvec.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nvec.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %21
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %pcidev.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %22 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcidev.i, align 8
  tail call void @pci_disable_msix(ptr noundef %23) #11
  %24 = ptrtoint ptr %bfad_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bfad_flags.i, align 4
  %and4.i = and i32 %25, -2
  store i32 %and4.i, ptr %bfad_flags.i, align 4
  br label %bfad_remove_intr.exit

if.else.i:                                        ; preds = %sw.bb5
  %and6.i = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else.i.bfad_remove_intr.exit_crit_edge, label %if.then8.i

if.else.i.bfad_remove_intr.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_remove_intr.exit

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev9.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %26 = ptrtoint ptr %pcidev9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcidev9.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 46
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.i, align 4
  %call10.i = tail call ptr @free_irq(i32 noundef %29, ptr noundef %bfad) #11
  br label %bfad_remove_intr.exit

bfad_remove_intr.exit:                            ; preds = %if.then8.i, %if.else.i.bfad_remove_intr.exit_crit_edge, %for.end.i
  %hal_tmo = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 27
  %call7 = tail call i32 @del_timer_sync(ptr noundef %hal_tmo) #11
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trcmod, align 8
  %or = or i32 %event, -559087616
  %conv9 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %31, i32 noundef 3073, i32 noundef 334, i64 noundef %conv9) #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5, i32 noundef 334, i32 noundef %event) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %bfad_remove_intr.exit, %sw.bb2, %if.end, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_vport_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfad_get_linkup_delay(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfad_rport_online_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_worker(ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @kthread_should_stop() #11
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 8
  tail call void %1(ptr noundef %ptr, i32 noundef 4) #11
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %ptr, i32 0, i32 20
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %bfad_tsk = getelementptr inbounds %struct.bfad_s, ptr %ptr, i32 0, i32 21
  %2 = ptrtoint ptr %bfad_tsk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bfad_tsk, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_intx(i32 %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %doneq = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %doneq) #11
  %0 = ptrtoint ptr %doneq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %doneq, align 4, !annotation !491
  %1 = getelementptr inbounds %struct.list_head, ptr %doneq, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !491
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %dev_id, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %dev_id, i32 0, i32 2
  %call5 = tail call i32 @bfa_intx(ptr noundef %bfa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @bfa_comp_deq(ptr noundef %bfa, ptr noundef nonnull %doneq) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call2) #11
  %3 = ptrtoint ptr %doneq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %doneq, align 4
  %cmp.i.not = icmp eq ptr %4, %doneq
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.then11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @bfa_comp_process(ptr noundef %bfa, ptr noundef nonnull %doneq) #11
  %call22 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  call void @bfa_comp_free(ptr noundef %bfa, ptr noundef nonnull %doneq) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call22) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then11 ], [ 1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %doneq) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_intx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_install_msix_handler(ptr noundef %bfad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nvec = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 24
  %0 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nvec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp69 = icmp sgt i32 %1, 0
  br i1 %cmp69, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %pci_name = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 5
  %device_id = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 6, i32 2
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 30
  br label %for.body

for.body:                                         ; preds = %for.inc37.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc38, %for.inc37.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bfad_s, ptr %bfad, i32 0, i32 23, i32 %i.070
  %name = getelementptr %struct.bfad_s, ptr %bfad, i32 0, i32 23, i32 %i.070, i32 2
  %2 = ptrtoint ptr %pci_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_name, align 4
  %4 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device_id, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.130)
  switch i16 %5, label %cond.false [
    i16 19, label %for.body.cond.true_crit_edge
    i16 23, label %for.body.cond.true_crit_edge78
  ]

for.body.cond.true_crit_edge78:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true

for.body.cond.true_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true

cond.true:                                        ; preds = %for.body.cond.true_crit_edge, %for.body.cond.true_crit_edge78
  %arrayidx8 = getelementptr [13 x ptr], ptr @msix_name_cb, i32 0, i32 %i.070
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9 = getelementptr [9 x ptr], ptr @msix_name_ct, i32 0, i32 %i.070
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %arrayidx8, %cond.true ], [ %arrayidx9, %cond.false ]
  %7 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond = load ptr, ptr %cond.in, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.36, ptr noundef %3, ptr noundef %cond)
  %msix = getelementptr %struct.bfad_s, ptr %bfad, i32 0, i32 23, i32 %i.070, i32 1
  %8 = ptrtoint ptr %msix to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msix, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @bfad_msix, ptr noundef null, i32 noundef 0, ptr noundef %name, ptr noundef %arrayidx) #11
  %10 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod, align 8
  %conv19 = zext i32 %i.070 to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 3073, i32 noundef 1176, i64 noundef %conv19) #11
  %12 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trcmod, align 8
  %14 = ptrtoint ptr %msix to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msix, align 4
  %conv25 = zext i32 %15 to i64
  tail call void @__bfa_trc(ptr noundef %13, i32 noundef 3073, i32 noundef 1177, i64 noundef %conv25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.inc37, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.070)
  %cmp2771.not = icmp eq i32 %i.070, 0
  br i1 %cmp2771.not, label %for.cond26.preheader.for.end_crit_edge, label %for.cond26.preheader.for.body29_crit_edge

for.cond26.preheader.for.body29_crit_edge:        ; preds = %for.cond26.preheader
  br label %for.body29

for.cond26.preheader.for.end_crit_edge:           ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.cond26.preheader.for.body29_crit_edge
  %j.072 = phi i32 [ %inc, %for.body29.for.body29_crit_edge ], [ 0, %for.cond26.preheader.for.body29_crit_edge ]
  %arrayidx31 = getelementptr %struct.bfad_s, ptr %bfad, i32 0, i32 23, i32 %j.072
  %msix32 = getelementptr %struct.bfad_s, ptr %bfad, i32 0, i32 23, i32 %j.072, i32 1
  %16 = ptrtoint ptr %msix32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msix32, align 4
  %call36 = tail call ptr @free_irq(i32 noundef %17, ptr noundef %arrayidx31) #11
  %inc = add nuw nsw i32 %j.072, 1
  %exitcond.not = icmp eq i32 %inc, %i.070
  br i1 %exitcond.not, label %for.body29.for.end_crit_edge, label %for.body29.for.body29_crit_edge

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body29

for.body29.for.end_crit_edge:                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body29.for.end_crit_edge, %for.cond26.preheader.for.end_crit_edge
  %bfad_flags = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 19
  %18 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bfad_flags, align 4
  %and = and i32 %19, -2
  store i32 %and, ptr %bfad_flags, align 4
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %20 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcidev, align 8
  tail call void @pci_disable_msix(ptr noundef %21) #11
  br label %cleanup

for.inc37:                                        ; preds = %cond.end
  %inc38 = add nuw nsw i32 %i.070, 1
  %22 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nvec, align 4
  %cmp = icmp slt i32 %inc38, %23
  br i1 %cmp, label %for.inc37.for.body_crit_edge, label %for.inc37.cleanup_crit_edge

for.inc37.cleanup_crit_edge:                      ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc37.for.body_crit_edge:                     ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc37.cleanup_crit_edge, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_msix(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  %doneq = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %doneq) #11
  %2 = ptrtoint ptr %doneq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %doneq, align 4, !annotation !491
  %3 = getelementptr inbounds %struct.list_head, ptr %doneq, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !491
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 20
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 2
  %entry7 = getelementptr inbounds %struct.bfad_msix_s, ptr %dev_id, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %entry7 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %entry7, align 4
  %idxprom = zext i16 %6 to i32
  %arrayidx = getelementptr %struct.bfad_s, ptr %1, i32 0, i32 2, i32 11, i32 1, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call void %8(ptr noundef %bfa, i32 noundef %idxprom) #11
  call void @bfa_comp_deq(ptr noundef %bfa, ptr noundef nonnull %doneq) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call3) #11
  %9 = ptrtoint ptr %doneq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %doneq, align 4
  %cmp.i.not = icmp eq ptr %10, %doneq
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @bfa_comp_process(ptr noundef %bfa, ptr noundef nonnull %doneq) #11
  %call25 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  call void @bfa_comp_free(ptr noundef %bfa, ptr noundef nonnull %doneq) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call25) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %doneq) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_setup_intr(ptr noundef %bfad) local_unnamed_addr #0 align 64 {
entry:
  %mask = alloca i32, align 4
  %num_bit = alloca i32, align 4
  %max_bit = alloca i32, align 4
  %msix_entries = alloca [22 x %struct.msix_entry], align 4
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #11
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_bit) #11
  %1 = ptrtoint ptr %num_bit to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %num_bit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_bit) #11
  %2 = ptrtoint ptr %max_bit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %max_bit, align 4
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %msix_entries) #11
  %3 = call ptr @memset(ptr %msix_entries, i32 255, i32 176)
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %4 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcidev, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #11
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %reg, align 2, !annotation !491
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 2
  %hw_msix_getvecs = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 2, i32 4, i32 23, i32 8
  %7 = ptrtoint ptr %hw_msix_getvecs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_msix_getvecs, align 8
  call void %8(ptr noundef %bfa, ptr noundef nonnull %mask, ptr noundef nonnull %num_bit, ptr noundef nonnull %max_bit) #11
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  %nvec.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 24
  %11 = ptrtoint ptr %nvec.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %nvec.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %match.03.i = phi i32 [ 1, %entry ], [ %shl.i, %if.end.i.for.body.i_crit_edge ]
  %i.01.i = phi i32 [ 0, %entry ], [ %inc12.i, %if.end.i.for.body.i_crit_edge ]
  %and.i = and i32 %match.03.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = trunc i32 %i.01.i to i16
  %12 = ptrtoint ptr %nvec.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nvec.i, align 4
  %entry2.i = getelementptr %struct.bfad_s, ptr %bfad, i32 0, i32 23, i32 %13, i32 1, i32 1
  %14 = ptrtoint ptr %entry2.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %entry2.i, align 4
  %15 = load i32, ptr %nvec.i, align 4
  %arrayidx5.i = getelementptr %struct.bfad_s, ptr %bfad, i32 0, i32 23, i32 %15
  %16 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %bfad, ptr %arrayidx5.i, align 4
  %17 = load i32, ptr %nvec.i, align 4
  %entry10.i = getelementptr %struct.msix_entry, ptr %msix_entries, i32 %17, i32 1
  %18 = ptrtoint ptr %entry10.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %entry10.i, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %nvec.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %shl.i = shl i32 %match.03.i, 1
  %inc12.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc12.i, 22
  br i1 %exitcond.not.i, label %bfad_init_msix_entry.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

bfad_init_msix_entry.exit:                        ; preds = %if.end.i
  %device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device, align 2
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.131)
  switch i16 %20, label %bfad_init_msix_entry.exit.line_based_crit_edge [
    i16 20, label %bfad_init_msix_entry.exit.land.lhs.true_crit_edge
    i16 33, label %bfad_init_msix_entry.exit.land.lhs.true_crit_edge159
    i16 34, label %bfad_init_msix_entry.exit.land.lhs.true_crit_edge160
    i16 35, label %bfad_init_msix_entry.exit.land.lhs.true_crit_edge161
    i16 19, label %bfad_init_msix_entry.exit.land.lhs.true27_crit_edge
    i16 23, label %bfad_init_msix_entry.exit.land.lhs.true27_crit_edge162
  ]

bfad_init_msix_entry.exit.land.lhs.true27_crit_edge162: ; preds = %bfad_init_msix_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true27

bfad_init_msix_entry.exit.land.lhs.true27_crit_edge: ; preds = %bfad_init_msix_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true27

bfad_init_msix_entry.exit.land.lhs.true_crit_edge161: ; preds = %bfad_init_msix_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

bfad_init_msix_entry.exit.land.lhs.true_crit_edge160: ; preds = %bfad_init_msix_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

bfad_init_msix_entry.exit.land.lhs.true_crit_edge159: ; preds = %bfad_init_msix_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

bfad_init_msix_entry.exit.land.lhs.true_crit_edge: ; preds = %bfad_init_msix_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

bfad_init_msix_entry.exit.line_based_crit_edge:   ; preds = %bfad_init_msix_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_based

land.lhs.true:                                    ; preds = %bfad_init_msix_entry.exit.land.lhs.true_crit_edge, %bfad_init_msix_entry.exit.land.lhs.true_crit_edge159, %bfad_init_msix_entry.exit.land.lhs.true_crit_edge160, %bfad_init_msix_entry.exit.land.lhs.true_crit_edge161
  %22 = load i32, ptr @msix_disable_ct, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false17

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false17:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %20)
  %cond = icmp eq i16 %20, 23
  br i1 %cond, label %lor.lhs.false17.land.lhs.true27_crit_edge, label %lor.lhs.false17.line_based_crit_edge

lor.lhs.false17.line_based_crit_edge:             ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_based

lor.lhs.false17.land.lhs.true27_crit_edge:        ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true27

land.lhs.true27:                                  ; preds = %lor.lhs.false17.land.lhs.true27_crit_edge, %bfad_init_msix_entry.exit.land.lhs.true27_crit_edge, %bfad_init_msix_entry.exit.land.lhs.true27_crit_edge162
  %23 = load i32, ptr @msix_disable_cb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool28.not = icmp eq i32 %23, 0
  br i1 %tobool28.not, label %land.lhs.true27.if.then_crit_edge, label %land.lhs.true27.line_based_crit_edge

land.lhs.true27.line_based_crit_edge:             ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %line_based

land.lhs.true27.if.then_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %land.lhs.true27.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %24 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcidev, align 8
  %26 = ptrtoint ptr %nvec.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nvec.i, align 4
  %call.i = call i32 @pci_enable_msix_range(ptr noundef %25, ptr noundef nonnull %msix_entries, i32 noundef %27, i32 noundef %27) #11
  %28 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %28)
  %cmp31 = icmp eq i32 %28, -28
  br i1 %cmp31, label %land.lhs.true33, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true33:                                  ; preds = %if.then
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %device, align 2
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.132)
  switch i16 %30, label %land.lhs.true33.do.end64_crit_edge [
    i16 20, label %land.lhs.true33.do.end_crit_edge
    i16 33, label %land.lhs.true33.do.end_crit_edge163
    i16 34, label %land.lhs.true33.do.end_crit_edge164
    i16 35, label %land.lhs.true33.do.end_crit_edge165
  ]

land.lhs.true33.do.end_crit_edge165:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true33.do.end_crit_edge164:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true33.do.end_crit_edge163:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true33.do.end_crit_edge:                 ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true33.do.end64_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64

do.end:                                           ; preds = %land.lhs.true33.do.end_crit_edge, %land.lhs.true33.do.end_crit_edge163, %land.lhs.true33.do.end_crit_edge164, %land.lhs.true33.do.end_crit_edge165
  %pci_name = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 5
  %32 = ptrtoint ptr %pci_name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci_name, align 4
  %34 = ptrtoint ptr %nvec.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nvec.i, align 4
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %33, i32 noundef %35, i32 noundef -28) #16
  %36 = ptrtoint ptr %nvec.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %nvec.i, align 4
  %37 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcidev, align 8
  %call.i145 = call i32 @pci_enable_msix_range(ptr noundef %38, ptr noundef nonnull %msix_entries, i32 noundef 1, i32 noundef 1) #11
  %39 = call i32 @llvm.smin.i32(i32 %call.i145, i32 0) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %error.0 = phi i32 [ %39, %do.end ], [ %28, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool60.not = icmp eq i32 %error.0, 0
  br i1 %tobool60.not, label %if.end67, label %if.end.do.end64_crit_edge

if.end.do.end64_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64

do.end64:                                         ; preds = %if.end.do.end64_crit_edge, %land.lhs.true33.do.end64_crit_edge
  %error.0149 = phi i32 [ %error.0, %if.end.do.end64_crit_edge ], [ -28, %land.lhs.true33.do.end64_crit_edge ]
  %inst_no = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 18
  %40 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %inst_no, align 8
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %41, i32 noundef %error.0149) #16
  br label %line_based

if.end67:                                         ; preds = %if.end
  %call68 = call i32 @pci_read_config_word(ptr noundef %5, i32 noundef 4, ptr noundef nonnull %reg) #11
  %42 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %reg, align 2
  %44 = and i16 %43, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool70.not = icmp eq i16 %44, 0
  br i1 %tobool70.not, label %if.then71, label %if.end67.if.end75_crit_edge

if.end67.if.end75_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i16 %43, 1024
  %call74 = call i32 @pci_write_config_word(ptr noundef %5, i32 noundef 4, i16 noundef zeroext %or) #11
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %if.end67.if.end75_crit_edge
  %45 = ptrtoint ptr %nvec.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nvec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp77150.not = icmp eq i32 %46, 0
  br i1 %cmp77150.not, label %if.end75.for.end_crit_edge, label %for.body.lr.ph

if.end75.for.end_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end75
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 30
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0151 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %47 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %trcmod, align 8
  %arrayidx = getelementptr [22 x %struct.msix_entry], ptr %msix_entries, i32 0, i32 %i.0151
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  %conv79 = zext i32 %50 to i64
  call void @__bfa_trc(ptr noundef %48, i32 noundef 3073, i32 noundef 1245, i64 noundef %conv79) #11
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx, align 4
  %msix = getelementptr %struct.bfad_s, ptr %bfad, i32 0, i32 23, i32 %i.0151, i32 1
  %53 = ptrtoint ptr %msix to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %msix, align 4
  %inc = add nuw i32 %i.0151, 1
  %54 = ptrtoint ptr %nvec.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nvec.i, align 4
  %cmp77 = icmp ult i32 %inc, %55
  br i1 %cmp77, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end75.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %if.end75.for.end_crit_edge ], [ %55, %for.body.for.end_crit_edge ]
  %hw_msix_init = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 2, i32 4, i32 23, i32 3
  %56 = ptrtoint ptr %hw_msix_init to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_msix_init, align 4
  call void %57(ptr noundef %bfa, i32 noundef %.lcssa) #11
  br label %cleanup.sink.split

line_based:                                       ; preds = %do.end64, %land.lhs.true27.line_based_crit_edge, %lor.lhs.false17.line_based_crit_edge, %bfad_init_msix_entry.exit.line_based_crit_edge
  %58 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pcidev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 46
  %60 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq, align 4
  %call.i146 = call i32 @request_threaded_irq(i32 noundef %61, ptr noundef nonnull @bfad_intx, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.6, ptr noundef %bfad) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool93.not = icmp eq i32 %call.i146, 0
  br i1 %tobool93.not, label %line_based.cleanup.sink.split_crit_edge, label %line_based.cleanup_crit_edge

line_based.cleanup_crit_edge:                     ; preds = %line_based
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

line_based.cleanup.sink.split_crit_edge:          ; preds = %line_based
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %line_based.cleanup.sink.split_crit_edge, %for.end
  %.sink154 = phi i32 [ 1, %for.end ], [ 1024, %line_based.cleanup.sink.split_crit_edge ]
  %bfad_flags = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 19
  %62 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bfad_flags, align 4
  %or97 = or i32 %63, %.sink154
  store i32 %or97, ptr %bfad_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %line_based.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i146, %line_based.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #11
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %msix_entries) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_bit) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_bit) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_pci_probe(ptr noundef %pdev, ptr nocapture readnone %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %1)
  %cmp = icmp eq i16 %1, 23
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %2 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devfn, align 4
  %and = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3.not = icmp eq i32 %and, 0
  br i1 %cmp3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65584, i32 noundef 3520, i32 noundef 5) #15
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call1.i.i.i106 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65568, i32 noundef 3520, i32 noundef 5) #15
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 30
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i.i.i106, ptr %trcmod, align 32
  %tobool9.not = icmp eq ptr %call1.i.i.i106, null
  br i1 %tobool9.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #16
  br label %out_alloc_trace_failure

if.end12:                                         ; preds = %if.end6
  %stopped.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %call1.i.i.i106, i32 0, i32 3
  %5 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %stopped.i, align 4
  %tail.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %call1.i.i.i106, i32 0, i32 1
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tail.i, align 4
  %7 = ptrtoint ptr %call1.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %call1.i.i.i106, align 4096
  %ntrc.i = getelementptr inbounds %struct.bfa_trc_mod_s, ptr %call1.i.i.i106, i32 0, i32 2
  %8 = ptrtoint ptr %ntrc.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4096, ptr %ntrc.i, align 8
  %9 = load i32, ptr @bfad_inst, align 4
  %conv15 = sext i32 %9 to i64
  tail call void @__bfa_trc(ptr noundef nonnull %call1.i.i.i106, i32 noundef 3073, i32 noundef 1313, i64 noundef %conv15) #11
  %free_aen_q = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 39
  %10 = ptrtoint ptr %free_aen_q to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %free_aen_q, ptr %free_aen_q, align 4
  %prev.i = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 39, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %free_aen_q, ptr %prev.i, align 8
  %active_aen_q = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 40
  %12 = ptrtoint ptr %active_aen_q to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %active_aen_q, ptr %active_aen_q, align 4
  %prev.i107 = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 40, i32 1
  %13 = ptrtoint ptr %prev.i107 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %active_aen_q, ptr %prev.i107, align 16
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end12
  %i.0120 = phi i32 [ 0, %if.end12 ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 41, i32 %i.0120
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %15, ptr noundef %free_aen_q) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx, ptr %prev.i, align 8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %free_aen_q, ptr %arrayidx, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %arrayidx, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device, align 2
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.133)
  switch i16 %21, label %for.end.if.then21_crit_edge [
    i16 34, label %for.end.if.then.i_crit_edge
    i16 35, label %for.end.if.then.i_crit_edge121
    i16 20, label %for.end.if.then18.i_crit_edge
    i16 33, label %for.end.if.then18.i_crit_edge122
    i16 19, label %for.end.if.then33.i_crit_edge
    i16 23, label %for.end.if.then33.i_crit_edge123
  ]

for.end.if.then33.i_crit_edge123:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33.i

for.end.if.then33.i_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33.i

for.end.if.then18.i_crit_edge122:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

for.end.if.then18.i_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

for.end.if.then.i_crit_edge121:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.end.if.then.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.end.if.then21_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

if.then.i:                                        ; preds = %for.end.if.then.i_crit_edge, %for.end.if.then.i_crit_edge121
  %23 = load i32, ptr @bfi_image_ct2_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp6.i = icmp eq i32 %23, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.then.i.bfad_load_fwimg.exit_crit_edge

if.then.i.bfad_load_fwimg.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_load_fwimg.exit

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @bfad_read_firmware(ptr noundef %pdev, ptr noundef nonnull @bfi_image_ct2, ptr noundef nonnull @bfi_image_ct2_size, ptr noundef nonnull @.str.113) #11
  br label %bfad_load_fwimg.exit

if.then18.i:                                      ; preds = %for.end.if.then18.i_crit_edge, %for.end.if.then18.i_crit_edge122
  %24 = load i32, ptr @bfi_image_ct_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp19.i = icmp eq i32 %24, 0
  br i1 %cmp19.i, label %if.then21.i, label %if.then18.i.bfad_load_fwimg.exit_crit_edge

if.then18.i.bfad_load_fwimg.exit_crit_edge:       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_load_fwimg.exit

if.then21.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @bfad_read_firmware(ptr noundef %pdev, ptr noundef nonnull @bfi_image_ct, ptr noundef nonnull @bfi_image_ct_size, ptr noundef nonnull @.str.114) #11
  br label %bfad_load_fwimg.exit

if.then33.i:                                      ; preds = %for.end.if.then33.i_crit_edge, %for.end.if.then33.i_crit_edge123
  %25 = load i32, ptr @bfi_image_cb_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp34.i = icmp eq i32 %25, 0
  br i1 %cmp34.i, label %if.then36.i, label %if.then33.i.bfad_load_fwimg.exit_crit_edge

if.then33.i.bfad_load_fwimg.exit_crit_edge:       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_load_fwimg.exit

if.then36.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @bfad_read_firmware(ptr noundef %pdev, ptr noundef nonnull @bfi_image_cb, ptr noundef nonnull @bfi_image_cb_size, ptr noundef nonnull @.str.115) #11
  br label %bfad_load_fwimg.exit

bfad_load_fwimg.exit:                             ; preds = %if.then36.i, %if.then33.i.bfad_load_fwimg.exit_crit_edge, %if.then21.i, %if.then18.i.bfad_load_fwimg.exit_crit_edge, %if.then8.i, %if.then.i.bfad_load_fwimg.exit_crit_edge
  %bfi_image_cb.sink.i = phi ptr [ @bfi_image_ct2, %if.then8.i ], [ @bfi_image_ct2, %if.then.i.bfad_load_fwimg.exit_crit_edge ], [ @bfi_image_ct, %if.then21.i ], [ @bfi_image_ct, %if.then18.i.bfad_load_fwimg.exit_crit_edge ], [ @bfi_image_cb, %if.then36.i ], [ @bfi_image_cb, %if.then33.i.bfad_load_fwimg.exit_crit_edge ]
  %26 = ptrtoint ptr %bfi_image_cb.sink.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bfi_image_cb.sink.i, align 4
  %tobool20.not = icmp eq ptr %27, null
  br i1 %tobool20.not, label %bfad_load_fwimg.exit.if.then21_crit_edge, label %if.end23

bfad_load_fwimg.exit.if.then21_crit_edge:         ; preds = %bfad_load_fwimg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

if.then21:                                        ; preds = %bfad_load_fwimg.exit.if.then21_crit_edge, %for.end.if.then21_crit_edge
  %28 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trcmod, align 32
  tail call void @kfree(ptr noundef %29) #11
  br label %out_alloc_trace_failure

if.end23:                                         ; preds = %bfad_load_fwimg.exit
  %call24 = tail call i32 @bfad_pci_init(ptr noundef %pdev, ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #16
  br label %out_pci_init_failure

if.end32:                                         ; preds = %if.end23
  tail call void @mutex_lock_nested(ptr noundef nonnull @bfad_mutex, i32 noundef 0) #11
  %30 = load i32, ptr @bfad_inst, align 4
  %inc33 = add i32 %30, 1
  store i32 %inc33, ptr @bfad_inst, align 4
  %inst_no = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 18
  %31 = ptrtoint ptr %inst_no to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %inst_no, align 16
  %list_entry = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 1
  %32 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @bfad_list, i32 0, i32 1), align 4
  %call.i.i109 = tail call zeroext i1 @__list_add_valid(ptr noundef %list_entry, ptr noundef %32, ptr noundef nonnull @bfad_list) #11
  br i1 %call.i.i109, label %if.end.i.i111, label %if.end32.list_add_tail.exit112_crit_edge

if.end32.list_add_tail.exit112_crit_edge:         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit112

if.end.i.i111:                                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %list_entry, ptr getelementptr inbounds (%struct.list_head, ptr @bfad_list, i32 0, i32 1), align 4
  %33 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bfad_list, ptr %list_entry, align 4
  %prev3.i.i110 = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev3.i.i110 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %prev3.i.i110, align 8
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %list_entry, ptr %32, align 4
  br label %list_add_tail.exit112

list_add_tail.exit112:                            ; preds = %if.end.i.i111, %if.end32.list_add_tail.exit112_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bfad_mutex) #11
  %36 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @bfad_sm_uninit, ptr %call1.i.i.i, align 4096
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %bfad_lock, ptr noundef nonnull @.str.47, ptr noundef nonnull @bfad_pci_probe.__key, i16 noundef signext 3) #11
  %bfad_aen_spinlock = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 42
  tail call void @__raw_spin_lock_init(ptr noundef %bfad_aen_spinlock, ptr noundef nonnull @.str.49, ptr noundef nonnull @bfad_pci_probe.__key.48, i16 noundef signext 3) #11
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call1.i.i.i, ptr %driver_data.i.i, align 4
  %ref_count = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 32
  %38 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ref_count, align 64
  %pport = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 15
  %bfad42 = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 15, i32 1
  %39 = ptrtoint ptr %bfad42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call1.i.i.i, ptr %bfad42, align 4
  %pbc_vport_list = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 35
  %40 = ptrtoint ptr %pbc_vport_list to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %pbc_vport_list, ptr %pbc_vport_list, align 64
  %prev.i113 = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 35, i32 1
  %41 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %pbc_vport_list, ptr %prev.i113, align 4
  %vport_list = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 43
  %42 = ptrtoint ptr %vport_list to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %vport_list, ptr %vport_list, align 4
  %prev.i114 = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 43, i32 1
  %43 = ptrtoint ptr %prev.i114 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %vport_list, ptr %prev.i114, align 8
  %44 = load i32, ptr @bfa_debugfs_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool43.not = icmp eq i32 %44, 0
  br i1 %tobool43.not, label %list_add_tail.exit112.if.end46_crit_edge, label %if.then44

list_add_tail.exit112.if.end46_crit_edge:         ; preds = %list_add_tail.exit112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then44:                                        ; preds = %list_add_tail.exit112
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bfad_debugfs_init(ptr noundef %pport) #11
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %list_add_tail.exit112.if.end46_crit_edge
  %call47 = tail call i32 @bfad_drv_init(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %if.end51, label %if.end46.out_drv_init_failure_crit_edge

if.end46.out_drv_init_failure_crit_edge:          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drv_init_failure

if.end51:                                         ; preds = %if.end46
  %45 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call1.i.i.i, align 4096
  tail call void %46(ptr noundef nonnull %call1.i.i.i, i32 noundef 1) #11
  %47 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call1.i.i.i, align 4096
  %cmp54 = icmp eq ptr %48, @bfad_sm_uninit
  br i1 %cmp54, label %out_bfad_sm_failure, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_bfad_sm_failure:                              ; preds = %if.end51
  %meminfo.i = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 16
  %kva_info2.i = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 16, i32 1
  %49 = ptrtoint ptr %kva_info2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %km_qe.030.i = load ptr, ptr %kva_info2.i, align 128
  %cmp.i.not31.i = icmp eq ptr %km_qe.030.i, %kva_info2.i
  br i1 %cmp.i.not31.i, label %out_bfad_sm_failure.for.cond7.preheader.i_crit_edge, label %out_bfad_sm_failure.for.body.i_crit_edge

out_bfad_sm_failure.for.body.i_crit_edge:         ; preds = %out_bfad_sm_failure
  br label %for.body.i

out_bfad_sm_failure.for.cond7.preheader.i_crit_edge: ; preds = %out_bfad_sm_failure
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond7.preheader.i

for.cond7.preheader.i:                            ; preds = %for.body.i.for.cond7.preheader.i_crit_edge, %out_bfad_sm_failure.for.cond7.preheader.i_crit_edge
  %50 = ptrtoint ptr %meminfo.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %dm_qe.033.i = load ptr, ptr %meminfo.i, align 8
  %cmp.i28.not34.i = icmp eq ptr %dm_qe.033.i, %meminfo.i
  br i1 %cmp.i28.not34.i, label %for.cond7.preheader.i.bfad_hal_mem_release.exit_crit_edge, label %for.body12.lr.ph.i

for.cond7.preheader.i.bfad_hal_mem_release.exit_crit_edge: ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_hal_mem_release.exit

for.body12.lr.ph.i:                               ; preds = %for.cond7.preheader.i
  %pcidev.i = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 4
  br label %for.body12.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %out_bfad_sm_failure.for.body.i_crit_edge
  %km_qe.032.i = phi ptr [ %km_qe.0.i, %for.body.i.for.body.i_crit_edge ], [ %km_qe.030.i, %out_bfad_sm_failure.for.body.i_crit_edge ]
  %kva.i = getelementptr inbounds %struct.bfa_mem_kva_s, ptr %km_qe.032.i, i32 0, i32 2
  %51 = ptrtoint ptr %kva.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %kva.i, align 4
  tail call void @vfree(ptr noundef %52) #11
  %53 = ptrtoint ptr %km_qe.032.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %km_qe.0.i = load ptr, ptr %km_qe.032.i, align 4
  %cmp.i.not.i = icmp eq ptr %km_qe.0.i, %kva_info2.i
  br i1 %cmp.i.not.i, label %for.body.i.for.cond7.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.cond7.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond7.preheader.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %dm_qe.035.i = phi ptr [ %dm_qe.033.i, %for.body12.lr.ph.i ], [ %dm_qe.0.i, %for.body12.i.for.body12.i_crit_edge ]
  %54 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pcidev.i, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %mem_len.i = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035.i, i32 0, i32 1
  %56 = ptrtoint ptr %mem_len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mem_len.i, align 8
  %kva13.i = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035.i, i32 0, i32 2
  %58 = ptrtoint ptr %kva13.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %kva13.i, align 4
  %dma.i = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035.i, i32 0, i32 3
  %60 = ptrtoint ptr %dma.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %dma.i, align 8
  %conv.i = trunc i64 %61 to i32
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %57, ptr noundef %59, i32 noundef %conv.i, i32 noundef 0) #11
  %62 = ptrtoint ptr %dm_qe.035.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %dm_qe.0.i = load ptr, ptr %dm_qe.035.i, align 4
  %cmp.i28.not.i = icmp eq ptr %dm_qe.0.i, %meminfo.i
  br i1 %cmp.i28.not.i, label %for.body12.i.bfad_hal_mem_release.exit_crit_edge, label %for.body12.i.for.body12.i_crit_edge

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12.i

for.body12.i.bfad_hal_mem_release.exit_crit_edge: ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_hal_mem_release.exit

bfad_hal_mem_release.exit:                        ; preds = %for.body12.i.bfad_hal_mem_release.exit_crit_edge, %for.cond7.preheader.i.bfad_hal_mem_release.exit_crit_edge
  %63 = call ptr @memset(ptr %meminfo.i, i32 0, i32 64)
  br label %out_drv_init_failure

out_drv_init_failure:                             ; preds = %bfad_hal_mem_release.exit, %if.end46.out_drv_init_failure_crit_edge
  %regdata = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 36
  %64 = ptrtoint ptr %regdata to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regdata, align 8
  tail call void @kfree(ptr noundef %65) #11
  tail call void @bfad_debugfs_exit(ptr noundef %pport) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @bfad_mutex, i32 noundef 0) #11
  %66 = load i32, ptr @bfad_inst, align 4
  %dec = add i32 %66, -1
  store i32 %dec, ptr @bfad_inst, align 4
  %call.i.i115 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_entry) #11
  br i1 %call.i.i115, label %if.end.i.i116, label %out_drv_init_failure.list_del.exit_crit_edge

out_drv_init_failure.list_del.exit_crit_edge:     ; preds = %out_drv_init_failure
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i116:                                    ; preds = %out_drv_init_failure
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i, align 8
  %69 = ptrtoint ptr %list_entry to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev1.i.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %70, ptr %68, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i116, %out_drv_init_failure.list_del.exit_crit_edge
  %73 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 256 to ptr), ptr %list_entry, align 4
  %prev.i117 = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 1, i32 1
  %74 = ptrtoint ptr %prev.i117 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i117, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @bfad_mutex) #11
  %pci_bar0_kva.i = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 8
  %75 = ptrtoint ptr %pci_bar0_kva.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pci_bar0_kva.i, align 64
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %76) #11
  %pci_bar2_kva.i = getelementptr inbounds %struct.bfad_s, ptr %call1.i.i.i, i32 0, i32 9
  %77 = ptrtoint ptr %pci_bar2_kva.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pci_bar2_kva.i, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %78) #11
  tail call void @pci_release_regions(ptr noundef %pdev) #11
  %call.i = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pdev) #11
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  br label %out_pci_init_failure

out_pci_init_failure:                             ; preds = %list_del.exit, %do.end29
  %error.0 = phi i32 [ %call24, %do.end29 ], [ -19, %list_del.exit ]
  %79 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %trcmod, align 32
  tail call void @kfree(ptr noundef %80) #11
  br label %out_alloc_trace_failure

out_alloc_trace_failure:                          ; preds = %out_pci_init_failure, %if.then21, %do.end
  %error.1 = phi i32 [ %error.0, %out_pci_init_failure ], [ -19, %if.then21 ], [ -12, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out_alloc_trace_failure, %if.end51.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ], [ %error.1, %out_alloc_trace_failure ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_sm_uninit(ptr noundef %bfad, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 30
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %1, i32 noundef 3073, i32 noundef 165, i64 noundef %conv) #11
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %event, label %do.body6 [
    i32 1, label %sw.bb
    i32 9, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %bfad to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bfad_sm_created, ptr %bfad, align 8
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @bfad_worker, ptr noundef %bfad, i32 noundef -1, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #11
  %bfad_tsk = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 21
  %4 = ptrtoint ptr %bfad_tsk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %bfad_tsk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %inst_no = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 18
  %5 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inst_no, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %6) #16
  %7 = ptrtoint ptr %bfad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bfad, align 8
  tail call void %8(ptr noundef %bfad, i32 noundef 2) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb.if.end_crit_edge
  %9 = ptrtoint ptr %bfad to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bfad, align 8
  tail call void %10(ptr noundef %bfad, i32 noundef 3) #11
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trcmod, align 8
  %or = or i32 %event, -559087616
  %conv8 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %12, i32 noundef 3073, i32 noundef 185, i64 noundef %conv8) #11
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5, i32 noundef 185, i32 noundef %event) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body6, %if.end, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfad_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfad_debugfs_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_pci_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  %inst_no = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inst_no, align 8
  %conv = zext i32 %5 to i64
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 3073, i32 noundef 1394, i64 noundef %conv) #11
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 20
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %bfad_tsk = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %bfad_tsk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bfad_tsk, align 4
  %cmp7.not = icmp eq ptr %7, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call4) #11
  br i1 %cmp7.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %bfad_tsk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bfad_tsk, align 4
  %call11 = tail call i32 @kthread_stop(ptr noundef %9) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void %11(ptr noundef %1, i32 noundef 9) #11
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 2
  tail call void @bfa_detach(ptr noundef %bfa) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call22) #11
  %meminfo.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 16
  %kva_info2.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 16, i32 1
  %12 = ptrtoint ptr %kva_info2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %km_qe.030.i = load ptr, ptr %kva_info2.i, align 4
  %cmp.i.not31.i = icmp eq ptr %km_qe.030.i, %kva_info2.i
  br i1 %cmp.i.not31.i, label %if.end.for.cond7.preheader.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.cond7.preheader.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond7.preheader.i

for.cond7.preheader.i:                            ; preds = %for.body.i.for.cond7.preheader.i_crit_edge, %if.end.for.cond7.preheader.i_crit_edge
  %13 = ptrtoint ptr %meminfo.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %dm_qe.033.i = load ptr, ptr %meminfo.i, align 4
  %cmp.i28.not34.i = icmp eq ptr %dm_qe.033.i, %meminfo.i
  br i1 %cmp.i28.not34.i, label %for.cond7.preheader.i.bfad_hal_mem_release.exit_crit_edge, label %for.body12.lr.ph.i

for.cond7.preheader.i.bfad_hal_mem_release.exit_crit_edge: ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_hal_mem_release.exit

for.body12.lr.ph.i:                               ; preds = %for.cond7.preheader.i
  %pcidev.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 4
  br label %for.body12.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %km_qe.032.i = phi ptr [ %km_qe.0.i, %for.body.i.for.body.i_crit_edge ], [ %km_qe.030.i, %if.end.for.body.i_crit_edge ]
  %kva.i = getelementptr inbounds %struct.bfa_mem_kva_s, ptr %km_qe.032.i, i32 0, i32 2
  %14 = ptrtoint ptr %kva.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kva.i, align 4
  tail call void @vfree(ptr noundef %15) #11
  %16 = ptrtoint ptr %km_qe.032.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %km_qe.0.i = load ptr, ptr %km_qe.032.i, align 4
  %cmp.i.not.i = icmp eq ptr %km_qe.0.i, %kva_info2.i
  br i1 %cmp.i.not.i, label %for.body.i.for.cond7.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.cond7.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond7.preheader.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %dm_qe.035.i = phi ptr [ %dm_qe.033.i, %for.body12.lr.ph.i ], [ %dm_qe.0.i, %for.body12.i.for.body12.i_crit_edge ]
  %17 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcidev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %mem_len.i = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035.i, i32 0, i32 1
  %19 = ptrtoint ptr %mem_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mem_len.i, align 8
  %kva13.i = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035.i, i32 0, i32 2
  %21 = ptrtoint ptr %kva13.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %kva13.i, align 4
  %dma.i = getelementptr inbounds %struct.bfa_mem_dma_s, ptr %dm_qe.035.i, i32 0, i32 3
  %23 = ptrtoint ptr %dma.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %dma.i, align 8
  %conv.i = trunc i64 %24 to i32
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %20, ptr noundef %22, i32 noundef %conv.i, i32 noundef 0) #11
  %25 = ptrtoint ptr %dm_qe.035.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %dm_qe.0.i = load ptr, ptr %dm_qe.035.i, align 4
  %cmp.i28.not.i = icmp eq ptr %dm_qe.0.i, %meminfo.i
  br i1 %cmp.i28.not.i, label %for.body12.i.bfad_hal_mem_release.exit_crit_edge, label %for.body12.i.for.body12.i_crit_edge

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12.i

for.body12.i.bfad_hal_mem_release.exit_crit_edge: ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_hal_mem_release.exit

bfad_hal_mem_release.exit:                        ; preds = %for.body12.i.bfad_hal_mem_release.exit_crit_edge, %for.cond7.preheader.i.bfad_hal_mem_release.exit_crit_edge
  %26 = call ptr @memset(ptr %meminfo.i, i32 0, i32 64)
  %regdata = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 36
  %27 = ptrtoint ptr %regdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regdata, align 8
  tail call void @kfree(ptr noundef %28) #11
  %pport = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 15
  tail call void @bfad_debugfs_exit(ptr noundef %pport) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @bfad_mutex, i32 noundef 0) #11
  %29 = load i32, ptr @bfad_inst, align 4
  %dec = add i32 %29, -1
  store i32 %dec, ptr @bfad_inst, align 4
  %list_entry = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_entry) #11
  br i1 %call.i.i, label %if.end.i.i, label %bfad_hal_mem_release.exit.list_del.exit_crit_edge

bfad_hal_mem_release.exit.list_del.exit_crit_edge: ; preds = %bfad_hal_mem_release.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %bfad_hal_mem_release.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %list_entry to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %bfad_hal_mem_release.exit.list_del.exit_crit_edge
  %36 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %list_entry, align 4
  %prev.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @bfad_mutex) #11
  %pci_bar0_kva.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 8
  %38 = ptrtoint ptr %pci_bar0_kva.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pci_bar0_kva.i, align 8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %39) #11
  %pci_bar2_kva.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 9
  %40 = ptrtoint ptr %pci_bar2_kva.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci_bar2_kva.i, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %41) #11
  tail call void @pci_release_regions(ptr noundef %pdev) #11
  %call.i = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pdev) #11
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  %42 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %trcmod, align 8
  tail call void @kfree(ptr noundef %43) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bfad_exit() #8 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @bfad_pci_driver) #11
  tail call void @bfad_im_module_exit() #11
  %0 = load i32, ptr @bfi_image_ct2_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %1 = load ptr, ptr @bfi_image_ct2, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vfree(ptr noundef nonnull %1) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %2 = load i32, ptr @bfi_image_ct_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not.i = icmp eq i32 %2, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6.i_crit_edge, label %land.lhs.true3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

land.lhs.true3.i:                                 ; preds = %if.end.i
  %3 = load ptr, ptr @bfi_image_ct, align 4
  %tobool4.not.i = icmp eq ptr %3, null
  br i1 %tobool4.not.i, label %land.lhs.true3.i.if.end6.i_crit_edge, label %if.then5.i

land.lhs.true3.i.if.end6.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then5.i:                                       ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vfree(ptr noundef nonnull %3) #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %land.lhs.true3.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %4 = load i32, ptr @bfi_image_cb_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not.i = icmp eq i32 %4, 0
  br i1 %tobool7.not.i, label %if.end6.i.bfad_free_fwimg.exit_crit_edge, label %land.lhs.true8.i

if.end6.i.bfad_free_fwimg.exit_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_free_fwimg.exit

land.lhs.true8.i:                                 ; preds = %if.end6.i
  %5 = load ptr, ptr @bfi_image_cb, align 4
  %tobool9.not.i = icmp eq ptr %5, null
  br i1 %tobool9.not.i, label %land.lhs.true8.i.bfad_free_fwimg.exit_crit_edge, label %if.then10.i

land.lhs.true8.i.bfad_free_fwimg.exit_crit_edge:  ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_free_fwimg.exit

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vfree(ptr noundef nonnull %5) #11
  br label %bfad_free_fwimg.exit

bfad_free_fwimg.exit:                             ; preds = %if.then10.i, %land.lhs.true8.i.bfad_free_fwimg.exit_crit_edge, %if.end6.i.bfad_free_fwimg.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfad_im_module_exit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_init() #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.25) #16
  %call1 = tail call i32 @bfad_im_module_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end8, label %entry.ext_crit_edge

entry.ext_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext

if.end8:                                          ; preds = %entry
  %0 = load i32, ptr @supported_fc4s, align 4
  %or = or i32 %0, 1
  store i32 %or, ptr @supported_fc4s, align 4
  %1 = load i32, ptr @ioc_auto_recover, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @bfa_auto_recover to i32))
  store i32 %1, ptr @bfa_auto_recover, align 4
  %2 = load i32, ptr @rport_del_timeout, align 4
  %conv = trunc i32 %2 to i8
  tail call void @bfa_fcs_rport_set_del_timeout(i8 noundef zeroext %conv) #11
  %3 = load i32, ptr @max_rport_logins, align 4
  tail call void @bfa_fcs_rport_set_max_logins(i32 noundef %3) #11
  %call9 = tail call i32 @__pci_register_driver(ptr noundef nonnull @bfad_pci_driver, ptr noundef null, ptr noundef nonnull @.str.6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end8.ext_crit_edge

if.end8.ext_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

ext:                                              ; preds = %if.end8.ext_crit_edge, %entry.ext_crit_edge
  %.str.127.sink = phi ptr [ @.str.124, %entry.ext_crit_edge ], [ @.str.127, %if.end8.ext_crit_edge ]
  %error.0 = phi i32 [ -12, %entry.ext_crit_edge ], [ %call9, %if.end8.ext_crit_edge ]
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.127.sink) #16
  tail call void @bfad_im_module_exit() #11
  br label %cleanup

cleanup:                                          ; preds = %ext, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %ext ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_sm_operational(ptr noundef %bfad, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 30
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %1, i32 noundef 3073, i32 noundef 341, i64 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %event)
  %cond = icmp eq i32 %event, 9
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %bfad to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bfad_sm_fcs_exit, ptr %bfad, align 8
  %bfad_lock.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 20
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i) #11
  %comp.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 10
  %3 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %comp.i, align 4
  %wait.i.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #11
  %flags5.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 15, i32 4
  %4 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags5.i, align 4
  %or.i = or i32 %5, 1
  store i32 %or.i, ptr %flags5.i, align 4
  %bfa_fcs.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 3
  tail call void @bfa_fcs_exit(ptr noundef %bfa_fcs.i) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i, i32 noundef %call2.i) #11
  tail call void @wait_for_completion(ptr noundef %comp.i) #11
  %6 = ptrtoint ptr %bfad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bfad, align 8
  tail call void %7(ptr noundef %bfad, i32 noundef 7) #11
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod, align 8
  %or = or i32 %event, -559087616
  %conv2 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 3073, i32 noundef 350, i64 noundef %conv2) #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5, i32 noundef 350, i32 noundef %event) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_sm_fcs_exit(ptr noundef %bfad, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 30
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %1, i32 noundef 3073, i32 noundef 357, i64 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %event)
  %cond = icmp eq i32 %event, 7
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %bfad to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bfad_sm_stopping, ptr %bfad, align 8
  %bfad_lock.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 20
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i) #11
  %comp.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 10
  %3 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %comp.i, align 4
  %wait.i.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #11
  %bfa.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 2
  tail call void @bfa_iocfc_stop(ptr noundef %bfa.i) #11
  %bfad_flags.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 19
  %4 = ptrtoint ptr %bfad_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bfad_flags.i, align 4
  %and.i = and i32 %5, -17
  store i32 %and.i, ptr %bfad_flags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i, i32 noundef %call2.i) #11
  tail call void @wait_for_completion(ptr noundef %comp.i) #11
  %6 = ptrtoint ptr %bfad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bfad, align 8
  tail call void %7(ptr noundef %bfad, i32 noundef 8) #11
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod, align 8
  %or = or i32 %event, -559087616
  %conv2 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 3073, i32 noundef 366, i64 noundef %conv2) #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5, i32 noundef 366, i32 noundef %event) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_sm_stopping(ptr noundef %bfad, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 30
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %1, i32 noundef 3073, i32 noundef 373, i64 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %event)
  %cond = icmp eq i32 %event, 8
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %bfad to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bfad_sm_uninit, ptr %bfad, align 8
  %bfad_flags.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 19
  %3 = ptrtoint ptr %bfad_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bfad_flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %sw.bb
  %nvec.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 24
  %5 = ptrtoint ptr %nvec.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nvec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp23.i = icmp sgt i32 %6, 0
  br i1 %cmp23.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bfad_s, ptr %bfad, i32 0, i32 23, i32 %i.024.i
  %msix.i = getelementptr %struct.bfad_s, ptr %bfad, i32 0, i32 23, i32 %i.024.i, i32 1
  %7 = ptrtoint ptr %msix.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msix.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %8, ptr noundef %arrayidx.i) #11
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %9 = ptrtoint ptr %nvec.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nvec.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %10
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %pcidev.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %11 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcidev.i, align 8
  tail call void @pci_disable_msix(ptr noundef %12) #11
  %13 = ptrtoint ptr %bfad_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bfad_flags.i, align 4
  %and4.i = and i32 %14, -2
  store i32 %and4.i, ptr %bfad_flags.i, align 4
  br label %bfad_remove_intr.exit

if.else.i:                                        ; preds = %sw.bb
  %and6.i = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else.i.bfad_remove_intr.exit_crit_edge, label %if.then8.i

if.else.i.bfad_remove_intr.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_remove_intr.exit

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev9.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %15 = ptrtoint ptr %pcidev9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcidev9.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 46
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq.i, align 4
  %call10.i = tail call ptr @free_irq(i32 noundef %18, ptr noundef %bfad) #11
  br label %bfad_remove_intr.exit

bfad_remove_intr.exit:                            ; preds = %if.then8.i, %if.else.i.bfad_remove_intr.exit_crit_edge, %for.end.i
  %hal_tmo = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 27
  %call = tail call i32 @del_timer_sync(ptr noundef %hal_tmo) #11
  tail call void @bfad_im_probe_undo(ptr noundef %bfad) #11
  %19 = ptrtoint ptr %bfad_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bfad_flags.i, align 4
  %and = and i32 %20, -513
  store i32 %and, ptr %bfad_flags.i, align 4
  %21 = load i32, ptr @supported_fc4s, align 4
  %and.i16 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %tobool.not.i17 = icmp eq i32 %and.i16, 0
  br i1 %tobool.not.i17, label %bfad_remove_intr.exit.bfad_uncfg_pport.exit_crit_edge, label %land.lhs.true.i

bfad_remove_intr.exit.bfad_uncfg_pport.exit_crit_edge: ; preds = %bfad_remove_intr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_uncfg_pport.exit

land.lhs.true.i:                                  ; preds = %bfad_remove_intr.exit
  %roles.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 15, i32 3
  %22 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %roles.i, align 4
  %and1.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.bfad_uncfg_pport.exit_crit_edge, label %if.then.i

land.lhs.true.i.bfad_uncfg_pport.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_uncfg_pport.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %im_port.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 15, i32 7
  %24 = ptrtoint ptr %im_port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %im_port.i, align 4
  tail call void @bfad_im_scsi_host_free(ptr noundef %bfad, ptr noundef %25) #11
  %26 = ptrtoint ptr %im_port.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %im_port.i, align 4
  tail call void @bfad_im_port_clean(ptr noundef %27) #11
  %28 = ptrtoint ptr %im_port.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %im_port.i, align 4
  tail call void @kfree(ptr noundef %29) #11
  %30 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %roles.i, align 4
  %and10.i = and i32 %31, -2
  store i32 %and10.i, ptr %roles.i, align 4
  br label %bfad_uncfg_pport.exit

bfad_uncfg_pport.exit:                            ; preds = %if.then.i, %land.lhs.true.i.bfad_uncfg_pport.exit_crit_edge, %bfad_remove_intr.exit.bfad_uncfg_pport.exit_crit_edge
  %32 = ptrtoint ptr %bfad_flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bfad_flags.i, align 4
  %and11.i = and i32 %33, -9
  store i32 %and11.i, ptr %bfad_flags.i, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %trcmod, align 8
  %or = or i32 %event, -559087616
  %conv2 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %35, i32 noundef 3073, i32 noundef 386, i64 noundef %conv2) #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5, i32 noundef 386, i32 noundef %event) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %bfad_uncfg_pport.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfad_im_probe_undo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_sm_created(ptr noundef %bfad, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 30
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %event to i64
  tail call void @__bfa_trc(ptr noundef %1, i32 noundef 3073, i32 noundef 198, i64 noundef %conv) #11
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %event, label %do.body82 [
    i32 3, label %sw.bb
    i32 2, label %sw.bb80
  ]

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %bfad to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bfad_sm_initializing, ptr %bfad, align 8
  %comp = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 10
  %4 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #11
  %call = tail call i32 @bfad_setup_intr(ptr noundef %bfad)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body4, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %inst_no = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 18
  %5 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inst_no, align 8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %6) #16
  %7 = ptrtoint ptr %bfad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bfad, align 8
  tail call void %8(ptr noundef %bfad, i32 noundef 6) #11
  br label %sw.epilog

do.body4:                                         ; preds = %sw.bb
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 20
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 2
  tail call void @bfa_iocfc_init(ptr noundef %bfa) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call8) #11
  %bfad_flags = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 19
  %9 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bfad_flags, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.body4.if.end24_crit_edge, label %land.lhs.true

do.body4.if.end24_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true:                                    ; preds = %do.body4
  %call15 = tail call i32 @bfad_install_msix_handler(ptr noundef %bfad)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end24_crit_edge, label %do.end20

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

do.end20:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %inst_no22 = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 18
  %11 = ptrtoint ptr %inst_no22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %inst_no22, align 8
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80, i32 noundef %12) #16
  br label %if.end24

if.end24:                                         ; preds = %do.end20, %land.lhs.true.if.end24_crit_edge, %do.body4.if.end24_crit_edge
  %hal_tmo.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 27
  tail call void @init_timer_key(ptr noundef %hal_tmo.i, ptr noundef nonnull @bfad_bfa_tmo, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @bfad_init_timer.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %13, 20
  %call2.i = tail call i32 @mod_timer(ptr noundef %hal_tmo.i, i32 noundef %add.i) #11
  tail call void @wait_for_completion(ptr noundef %comp) #11
  %14 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bfad_flags, align 4
  %and27 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.end33, label %if.then29

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %bfad to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bfad, align 8
  tail call void %17(ptr noundef %bfad, i32 noundef 4) #11
  br label %sw.epilog

do.end33:                                         ; preds = %if.end24
  %pci_name = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 5
  %18 = ptrtoint ptr %pci_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_name, align 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %19) #16
  %call45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %bfa_fcs = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 3
  tail call void @bfa_fcs_init(ptr noundef %bfa_fcs) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call45) #11
  %20 = load i32, ptr @supported_fc4s, align 4
  %21 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %.not.not.i = icmp eq i32 %21, 0
  br i1 %.not.not.i, label %do.end33.if.end75_crit_edge, label %if.then.i

do.end33.if.end75_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then.i:                                        ; preds = %do.end33
  %im_port.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 15, i32 7
  %22 = ptrtoint ptr %im_port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %im_port.i, align 4
  %cmp.i = icmp eq ptr %23, null
  br i1 %cmp.i, label %if.then.i.if.then54_crit_edge, label %if.end.i

if.then.i.if.then54_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then54

if.end.i:                                         ; preds = %if.then.i
  %pcidev.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %24 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcidev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %call.i = tail call i32 @bfad_im_scsi_host_alloc(ptr noundef %bfad, ptr noundef nonnull %23, ptr noundef %dev.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp6.not.i, label %if.end8.i, label %if.end.i.if.then54_crit_edge

if.end.i.if.then54_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then54

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %roles.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 15, i32 3
  %26 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %roles.i, align 4
  %or.i = or i32 %27, 1
  store i32 %or.i, ptr %roles.i, align 4
  br label %if.end75

if.then54:                                        ; preds = %if.end.i.if.then54_crit_edge, %if.then.i.if.then54_crit_edge
  %28 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %comp, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #11
  %call65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %flags70 = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 15, i32 4
  %29 = ptrtoint ptr %flags70 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags70, align 4
  %or = or i32 %30, 1
  store i32 %or, ptr %flags70, align 4
  tail call void @bfa_fcs_exit(ptr noundef %bfa_fcs) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call65) #11
  tail call void @wait_for_completion(ptr noundef %comp) #11
  %31 = ptrtoint ptr %bfad to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bfad, align 8
  tail call void %32(ptr noundef %bfad, i32 noundef 6) #11
  br label %sw.epilog

if.end75:                                         ; preds = %if.end8.i, %do.end33.if.end75_crit_edge
  %33 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bfad_flags, align 4
  %or77 = or i32 %34, 264
  store i32 %or77, ptr %bfad_flags, align 4
  %35 = ptrtoint ptr %bfad to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bfad, align 8
  tail call void %36(ptr noundef %bfad, i32 noundef 5) #11
  br label %sw.epilog

sw.bb80:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %bfad to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @bfad_sm_uninit, ptr %bfad, align 8
  br label %sw.epilog

do.body82:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trcmod, align 8
  %or84 = or i32 %event, -559087616
  %conv85 = zext i32 %or84 to i64
  tail call void @__bfa_trc(ptr noundef %39, i32 noundef 3073, i32 noundef 264, i64 noundef %conv85) #11
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5, i32 noundef 264, i32 noundef %event) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body82, %sw.bb80, %if.end75, %if.then54, %if.then29, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_iocfc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_pci_error_detected(ptr noundef %pdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %bfad_flags = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bfad_flags, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.91, ptr noundef %dev, ptr noundef nonnull @.str.89, i32 noundef %state, i32 noundef %3) #16
  %4 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %state, label %do.end57 [
    i32 1, label %do.body2
    i32 2, label %sw.bb12
    i32 3, label %do.body36
  ]

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 20
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %5 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bfad_flags, align 4
  %and = and i32 %6, -2049
  store i32 %and, ptr %bfad_flags, align 4
  %ioc = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 2, i32 3
  tail call void @bfa_ioc_suspend(ptr noundef %ioc) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call4) #11
  %hal_tmo = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 27
  %call11 = tail call i32 @del_timer_sync(ptr noundef %hal_tmo) #11
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %comp = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock20 = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 20
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock20) #11
  %8 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bfad_flags, align 4
  %or = or i32 %9, 2048
  store i32 %or, ptr %bfad_flags, align 4
  %ioc29 = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 2, i32 3
  tail call void @bfa_ioc_suspend(ptr noundef %ioc29) #11
  %bfa_fcs = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 3
  tail call void @bfa_fcs_stop(ptr noundef %bfa_fcs) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock20, i32 noundef %call22) #11
  tail call void @wait_for_completion(ptr noundef %comp) #11
  %10 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bfad_flags, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %sw.bb12
  %nvec.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 24
  %12 = ptrtoint ptr %nvec.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nvec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp23.i = icmp sgt i32 %13, 0
  br i1 %cmp23.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bfad_s, ptr %1, i32 0, i32 23, i32 %i.024.i
  %msix.i = getelementptr %struct.bfad_s, ptr %1, i32 0, i32 23, i32 %i.024.i, i32 1
  %14 = ptrtoint ptr %msix.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msix.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %15, ptr noundef %arrayidx.i) #11
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %16 = ptrtoint ptr %nvec.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nvec.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %17
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %pcidev.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcidev.i, align 8
  tail call void @pci_disable_msix(ptr noundef %19) #11
  %20 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bfad_flags, align 4
  %and4.i = and i32 %21, -2
  store i32 %and4.i, ptr %bfad_flags, align 4
  br label %bfad_remove_intr.exit

if.else.i:                                        ; preds = %sw.bb12
  %and6.i = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else.i.bfad_remove_intr.exit_crit_edge, label %if.then8.i

if.else.i.bfad_remove_intr.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_remove_intr.exit

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev9.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %pcidev9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcidev9.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 46
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq.i, align 4
  %call10.i = tail call ptr @free_irq(i32 noundef %25, ptr noundef %1) #11
  br label %bfad_remove_intr.exit

bfad_remove_intr.exit:                            ; preds = %if.then8.i, %if.else.i.bfad_remove_intr.exit_crit_edge, %for.end.i
  %hal_tmo32 = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 27
  %call33 = tail call i32 @del_timer_sync(ptr noundef %hal_tmo32) #11
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  br label %sw.epilog

do.body36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bfad_lock42 = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 20
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock42) #11
  %26 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bfad_flags, align 4
  %or50 = or i32 %27, 6144
  store i32 %or50, ptr %bfad_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock42, i32 noundef %call44) #11
  br label %sw.epilog

do.end57:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1482, i32 noundef 9, ptr noundef null) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end57, %do.body36, %bfad_remove_intr.exit, %do.body2
  %ret.0 = phi i32 [ 1, %do.end57 ], [ 4, %do.body36 ], [ 3, %bfad_remove_intr.exit ], [ 2, %do.body2 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_pci_mmio_enabled(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.33, ptr noundef %dev, ptr noundef nonnull @.str.92) #16
  %ioc = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 2, i32 3
  tail call void @bfa_ioc_debug_save_ftrc(ptr noundef %ioc) #11
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 20
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %comp = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #11
  %bfa_fcs = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 3
  tail call void @bfa_fcs_stop(ptr noundef %bfa_fcs) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call4) #11
  tail call void @wait_for_completion(ptr noundef %comp) #11
  %bfad_flags.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %bfad_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bfad_flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  %nvec.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %nvec.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nvec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp23.i = icmp sgt i32 %6, 0
  br i1 %cmp23.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bfad_s, ptr %1, i32 0, i32 23, i32 %i.024.i
  %msix.i = getelementptr %struct.bfad_s, ptr %1, i32 0, i32 23, i32 %i.024.i, i32 1
  %7 = ptrtoint ptr %msix.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msix.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %8, ptr noundef %arrayidx.i) #11
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %9 = ptrtoint ptr %nvec.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nvec.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %10
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %pcidev.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcidev.i, align 8
  tail call void @pci_disable_msix(ptr noundef %12) #11
  %13 = ptrtoint ptr %bfad_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bfad_flags.i, align 4
  %and4.i = and i32 %14, -2
  store i32 %and4.i, ptr %bfad_flags.i, align 4
  br label %bfad_remove_intr.exit

if.else.i:                                        ; preds = %entry
  %and6.i = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else.i.bfad_remove_intr.exit_crit_edge, label %if.then8.i

if.else.i.bfad_remove_intr.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bfad_remove_intr.exit

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev9.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %pcidev9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcidev9.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 46
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq.i, align 4
  %call10.i = tail call ptr @free_irq(i32 noundef %18, ptr noundef %1) #11
  br label %bfad_remove_intr.exit

bfad_remove_intr.exit:                            ; preds = %if.then8.i, %if.else.i.bfad_remove_intr.exit_crit_edge, %for.end.i
  %hal_tmo = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 27
  %call11 = tail call i32 @del_timer_sync(ptr noundef %hal_tmo) #11
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  ret i32 3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_pci_slot_reset(ptr noundef %pdev) #0 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #11
  %2 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %byte, align 1, !annotation !491
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %bfad_flags = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bfad_flags, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.91, ptr noundef %dev, ptr noundef nonnull @.str.94, i32 noundef %4) #16
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end4

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.91, ptr noundef %dev, ptr noundef nonnull @.str.97) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_restore_state(ptr noundef %pdev) #11
  %call6 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 104, ptr noundef nonnull %byte) #11
  %5 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %byte, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp = icmp eq i8 %6, -1
  br i1 %cmp, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.91, ptr noundef %dev, ptr noundef nonnull @.str.100) #16
  br label %out_disable_device

if.end13:                                         ; preds = %if.end
  %call14 = call i32 @pci_save_state(ptr noundef %pdev) #11
  call void @pci_set_master(ptr noundef %pdev) #11
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcidev, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call.i = call i32 @dma_set_mask(ptr noundef %dev15, i64 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end19, label %if.end13.out_disable_device_crit_edge

if.end13.out_disable_device_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_device

if.end19:                                         ; preds = %if.end13
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev15, i64 noundef -1) #11
  %9 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcidev, align 8
  %bfa.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 2
  %ioc_cfg.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 17
  %meminfo.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 16
  %hal_pcidev.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 6
  call void @bfa_attach(ptr noundef %bfa.i, ptr noundef %1, ptr noundef %ioc_cfg.i, ptr noundef %meminfo.i, ptr noundef %hal_pcidev.i) #11
  %call.i47 = call i32 @bfad_setup_intr(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool.not.i = icmp eq i32 %call.i47, 0
  br i1 %tobool.not.i, label %if.end.i, label %restart_bfa.exit

if.end.i:                                         ; preds = %if.end19
  %comp.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %comp.i, align 4
  %wait.i.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 10, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #11
  %bfad_lock.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 20
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i) #11
  call void @bfa_iocfc_init(ptr noundef %bfa.i) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i, i32 noundef %call4.i) #11
  %12 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bfad_flags, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %if.end.i.if.end20.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call12.i = call i32 @bfad_install_msix_handler(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end20.i_crit_edge, label %do.end17.i

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

do.end17.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev18.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %pci_name19.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %pci_name19.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_name19.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.104, ptr noundef %dev18.i, ptr noundef nonnull @.str.109, ptr noundef %15) #16
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end17.i, %land.lhs.true.i.if.end20.i_crit_edge, %if.end.i.if.end20.i_crit_edge
  %hal_tmo.i.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 27
  call void @init_timer_key(ptr noundef %hal_tmo.i.i, ptr noundef nonnull @bfad_bfa_tmo, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @bfad_init_timer.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %16, 20
  %call2.i.i = call i32 @mod_timer(ptr noundef %hal_tmo.i.i, i32 noundef %add.i.i) #11
  call void @wait_for_completion(ptr noundef %comp.i) #11
  %call2.i43.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i) #11
  call void @bfa_iocfc_start(ptr noundef %bfa.i) #11
  %bfa_fcs.i.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 3
  call void @bfa_fcs_pbc_vport_init(ptr noundef %bfa_fcs.i.i) #11
  call void @bfa_fcs_fabric_modstart(ptr noundef %bfa_fcs.i.i) #11
  %17 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bfad_flags, align 4
  %or.i.i = or i32 %18, 16
  store i32 %or.i.i, ptr %bfad_flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i, i32 noundef %call2.i43.i) #11
  %im.i.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 29
  %19 = ptrtoint ptr %im.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %im.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end20.i.if.end24_crit_edge, label %if.then.i.i

if.end20.i.if.end24_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then.i.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  %drv_workq.i.i = getelementptr inbounds %struct.bfad_im_s, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %drv_workq.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drv_workq.i.i, align 4
  call void @flush_workqueue(ptr noundef %22) #11
  br label %if.end24

restart_bfa.exit:                                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %pci_name.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %pci_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_name.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.104, ptr noundef %dev.i, ptr noundef nonnull @.str.106, ptr noundef %24) #16
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  call void %26(ptr noundef %1, i32 noundef 6) #11
  br label %out_disable_device

if.end24:                                         ; preds = %if.then.i.i, %if.end20.i.if.end24_crit_edge
  %call25 = call i32 @pci_enable_pcie_error_reporting(ptr noundef %pdev) #11
  %27 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bfad_flags, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.104, ptr noundef %dev, ptr noundef nonnull @.str.103, i32 noundef %28) #16
  br label %cleanup

out_disable_device:                               ; preds = %restart_bfa.exit, %if.end13.out_disable_device_crit_edge, %do.end11
  call void @pci_disable_device(ptr noundef %pdev) #11
  br label %cleanup

cleanup:                                          ; preds = %out_disable_device, %if.end24, %do.end4
  %retval.0 = phi i32 [ 4, %do.end4 ], [ 4, %out_disable_device ], [ 5, %if.end24 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_pci_resume(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.104, ptr noundef %dev, ptr noundef nonnull @.str.111) #16
  tail call void @bfad_rport_online_wait(ptr noundef %1) #11
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 20
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #11
  %bfad_flags = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bfad_flags, align 4
  %and = and i32 %3, -2049
  store i32 %and, ptr %bfad_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_debug_save_ftrc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfad_read_firmware(ptr noundef %pdev, ptr nocapture noundef writeonly %bfi_image, ptr nocapture noundef writeonly %bfi_image_size, ptr noundef %fw_name) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #11
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !491
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %fw_name, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %fw_name) #16
  %1 = ptrtoint ptr %bfi_image to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %bfi_image, align 4
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call2 = call noalias ptr @vmalloc(i32 noundef %5) #15
  %6 = ptrtoint ptr %bfi_image to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %bfi_image, align 4
  %cmp = icmp eq ptr %call2, null
  %7 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw, align 4
  br i1 %cmp, label %do.end6, label %if.end10

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i32 noundef %10) #16
  br label %out

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.firmware, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %8, align 4
  %15 = call ptr @memcpy(ptr %call2, ptr %12, i32 %14)
  %16 = load i32, ptr %8, align 4
  %div17 = lshr i32 %16, 2
  %17 = ptrtoint ptr %bfi_image_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div17, ptr %bfi_image_size, align 4
  br label %out

out:                                              ; preds = %if.end10, %do.end6, %do.end
  %18 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %19) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfad_im_module_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_rport_set_del_timeout(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_rport_set_max_logins(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 170)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 170)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !39, !41, !42, !44, !46, !47, !49, !51, !52, !54, !56, !57, !59, !61, !62, !64, !66, !67, !69, !71, !72, !74, !76, !77, !79, !81, !82, !84, !86, !87, !89, !91, !92, !94, !96, !97, !99, !101, !102, !104, !106, !107, !109, !111, !112, !114, !116, !117, !119, !121, !122, !124, !126, !127, !129, !131, !132, !134, !136, !137, !139, !141, !142, !144, !146, !147, !149, !151, !152, !154, !156, !157, !159, !160, !161, !162, !163, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !192, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !207, !208, !209, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !234, !235, !237, !239, !241, !243, !244, !246, !248, !250, !251, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !318, !320, !322, !323, !325, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !381, !383, !384, !385, !386, !388, !389, !391, !392, !393, !394, !396, !397, !398, !400, !401, !402, !404, !405, !407, !409, !411, !412, !413, !414, !415, !417, !418, !419, !420, !422, !423, !424, !425, !427, !428, !429, !431, !432, !433, !435, !436, !437, !438, !440, !441, !442, !443, !445, !446, !447, !449, !450, !451, !452, !454, !456, !458, !460, !461, !462, !463, !465, !466, !467, !469, !470, !471, !472, !474, !475, !476, !478, !479, !480}
!llvm.module.flags = !{!482, !483, !484, !485, !486, !487, !488, !489}
!llvm.ident = !{!490}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bfa/bfad.c", i32 32, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @bfad_mutex, !1, !"bfad_mutex", i1 false, i1 false}
!4 = !{ptr @bfad_list, !5, !"bfad_list", i1 false, i1 false}
!5 = !{!"../drivers/scsi/bfa/bfad.c", i32 33, i32 1}
!6 = !{ptr @rport_del_timeout, !7, !"rport_del_timeout", i1 false, i1 false}
!7 = !{!"../drivers/scsi/bfa/bfad.c", i32 42, i32 6}
!8 = !{ptr @bfa_lun_queue_depth, !9, !"bfa_lun_queue_depth", i1 false, i1 false}
!9 = !{!"../drivers/scsi/bfa/bfad.c", i32 43, i32 6}
!10 = !{ptr @bfa_io_max_sge, !11, !"bfa_io_max_sge", i1 false, i1 false}
!11 = !{!"../drivers/scsi/bfa/bfad.c", i32 44, i32 6}
!12 = !{ptr @bfa_log_level, !13, !"bfa_log_level", i1 false, i1 false}
!13 = !{!"../drivers/scsi/bfa/bfad.c", i32 45, i32 6}
!14 = !{ptr @ioc_auto_recover, !15, !"ioc_auto_recover", i1 false, i1 false}
!15 = !{!"../drivers/scsi/bfa/bfad.c", i32 46, i32 6}
!16 = !{ptr @bfa_linkup_delay, !17, !"bfa_linkup_delay", i1 false, i1 false}
!17 = !{!"../drivers/scsi/bfa/bfad.c", i32 47, i32 6}
!18 = !{ptr @fdmi_enable, !19, !"fdmi_enable", i1 false, i1 false}
!19 = !{!"../drivers/scsi/bfa/bfad.c", i32 48, i32 6}
!20 = !{ptr @bfa_debugfs_enable, !21, !"bfa_debugfs_enable", i1 false, i1 false}
!21 = !{!"../drivers/scsi/bfa/bfad.c", i32 50, i32 6}
!22 = !{ptr @msix_disable_cb, !23, !"msix_disable_cb", i1 false, i1 false}
!23 = !{!"../drivers/scsi/bfa/bfad.c", i32 51, i32 6}
!24 = !{ptr @msix_disable_ct, !25, !"msix_disable_ct", i1 false, i1 false}
!25 = !{!"../drivers/scsi/bfa/bfad.c", i32 51, i32 27}
!26 = !{ptr @max_xfer_size, !27, !"max_xfer_size", i1 false, i1 false}
!27 = !{!"../drivers/scsi/bfa/bfad.c", i32 52, i32 6}
!28 = !{ptr @__UNIQUE_ID_firmware312, !29, !"__UNIQUE_ID_firmware312", i1 false, i1 false}
!29 = !{!"../drivers/scsi/bfa/bfad.c", i32 78, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware313, !31, !"__UNIQUE_ID_firmware313", i1 false, i1 false}
!31 = !{!"../drivers/scsi/bfa/bfad.c", i32 79, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware314, !33, !"__UNIQUE_ID_firmware314", i1 false, i1 false}
!33 = !{!"../drivers/scsi/bfa/bfad.c", i32 80, i32 1}
!34 = !{ptr @__param_os_name, !35, !"__param_os_name", i1 false, i1 false}
!35 = !{!"../drivers/scsi/bfa/bfad.c", i32 82, i32 1}
!36 = !{ptr @__UNIQUE_ID_os_nametype315, !35, !"__UNIQUE_ID_os_nametype315", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_os_name316, !38, !"__UNIQUE_ID_os_name316", i1 false, i1 false}
!38 = !{!"../drivers/scsi/bfa/bfad.c", i32 83, i32 1}
!39 = !{ptr @__param_os_patch, !40, !"__param_os_patch", i1 false, i1 false}
!40 = !{!"../drivers/scsi/bfa/bfad.c", i32 84, i32 1}
!41 = !{ptr @__UNIQUE_ID_os_patchtype317, !40, !"__UNIQUE_ID_os_patchtype317", i1 false, i1 false}
!42 = !{ptr @__UNIQUE_ID_os_patch318, !43, !"__UNIQUE_ID_os_patch318", i1 false, i1 false}
!43 = !{!"../drivers/scsi/bfa/bfad.c", i32 85, i32 1}
!44 = !{ptr @__param_host_name, !45, !"__param_host_name", i1 false, i1 false}
!45 = !{!"../drivers/scsi/bfa/bfad.c", i32 86, i32 1}
!46 = !{ptr @__UNIQUE_ID_host_nametype319, !45, !"__UNIQUE_ID_host_nametype319", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_host_name320, !48, !"__UNIQUE_ID_host_name320", i1 false, i1 false}
!48 = !{!"../drivers/scsi/bfa/bfad.c", i32 87, i32 1}
!49 = !{ptr @__param_num_rports, !50, !"__param_num_rports", i1 false, i1 false}
!50 = !{!"../drivers/scsi/bfa/bfad.c", i32 88, i32 1}
!51 = !{ptr @__UNIQUE_ID_num_rportstype321, !50, !"__UNIQUE_ID_num_rportstype321", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_num_rports322, !53, !"__UNIQUE_ID_num_rports322", i1 false, i1 false}
!53 = !{!"../drivers/scsi/bfa/bfad.c", i32 89, i32 1}
!54 = !{ptr @__param_num_ios, !55, !"__param_num_ios", i1 false, i1 false}
!55 = !{!"../drivers/scsi/bfa/bfad.c", i32 91, i32 1}
!56 = !{ptr @__UNIQUE_ID_num_iostype323, !55, !"__UNIQUE_ID_num_iostype323", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_num_ios324, !58, !"__UNIQUE_ID_num_ios324", i1 false, i1 false}
!58 = !{!"../drivers/scsi/bfa/bfad.c", i32 92, i32 1}
!59 = !{ptr @__param_num_tms, !60, !"__param_num_tms", i1 false, i1 false}
!60 = !{!"../drivers/scsi/bfa/bfad.c", i32 93, i32 1}
!61 = !{ptr @__UNIQUE_ID_num_tmstype325, !60, !"__UNIQUE_ID_num_tmstype325", i1 false, i1 false}
!62 = !{ptr @__UNIQUE_ID_num_tms326, !63, !"__UNIQUE_ID_num_tms326", i1 false, i1 false}
!63 = !{!"../drivers/scsi/bfa/bfad.c", i32 94, i32 1}
!64 = !{ptr @__param_num_fcxps, !65, !"__param_num_fcxps", i1 false, i1 false}
!65 = !{!"../drivers/scsi/bfa/bfad.c", i32 95, i32 1}
!66 = !{ptr @__UNIQUE_ID_num_fcxpstype327, !65, !"__UNIQUE_ID_num_fcxpstype327", i1 false, i1 false}
!67 = !{ptr @__UNIQUE_ID_num_fcxps328, !68, !"__UNIQUE_ID_num_fcxps328", i1 false, i1 false}
!68 = !{!"../drivers/scsi/bfa/bfad.c", i32 96, i32 1}
!69 = !{ptr @__param_num_ufbufs, !70, !"__param_num_ufbufs", i1 false, i1 false}
!70 = !{!"../drivers/scsi/bfa/bfad.c", i32 97, i32 1}
!71 = !{ptr @__UNIQUE_ID_num_ufbufstype329, !70, !"__UNIQUE_ID_num_ufbufstype329", i1 false, i1 false}
!72 = !{ptr @__UNIQUE_ID_num_ufbufs330, !73, !"__UNIQUE_ID_num_ufbufs330", i1 false, i1 false}
!73 = !{!"../drivers/scsi/bfa/bfad.c", i32 98, i32 1}
!74 = !{ptr @__param_reqq_size, !75, !"__param_reqq_size", i1 false, i1 false}
!75 = !{!"../drivers/scsi/bfa/bfad.c", i32 100, i32 1}
!76 = !{ptr @__UNIQUE_ID_reqq_sizetype331, !75, !"__UNIQUE_ID_reqq_sizetype331", i1 false, i1 false}
!77 = !{ptr @__UNIQUE_ID_reqq_size332, !78, !"__UNIQUE_ID_reqq_size332", i1 false, i1 false}
!78 = !{!"../drivers/scsi/bfa/bfad.c", i32 101, i32 1}
!79 = !{ptr @__param_rspq_size, !80, !"__param_rspq_size", i1 false, i1 false}
!80 = !{!"../drivers/scsi/bfa/bfad.c", i32 103, i32 1}
!81 = !{ptr @__UNIQUE_ID_rspq_sizetype333, !80, !"__UNIQUE_ID_rspq_sizetype333", i1 false, i1 false}
!82 = !{ptr @__UNIQUE_ID_rspq_size334, !83, !"__UNIQUE_ID_rspq_size334", i1 false, i1 false}
!83 = !{!"../drivers/scsi/bfa/bfad.c", i32 104, i32 1}
!84 = !{ptr @__param_num_sgpgs, !85, !"__param_num_sgpgs", i1 false, i1 false}
!85 = !{!"../drivers/scsi/bfa/bfad.c", i32 106, i32 1}
!86 = !{ptr @__UNIQUE_ID_num_sgpgstype335, !85, !"__UNIQUE_ID_num_sgpgstype335", i1 false, i1 false}
!87 = !{ptr @__UNIQUE_ID_num_sgpgs336, !88, !"__UNIQUE_ID_num_sgpgs336", i1 false, i1 false}
!88 = !{!"../drivers/scsi/bfa/bfad.c", i32 107, i32 1}
!89 = !{ptr @__param_rport_del_timeout, !90, !"__param_rport_del_timeout", i1 false, i1 false}
!90 = !{!"../drivers/scsi/bfa/bfad.c", i32 108, i32 1}
!91 = !{ptr @__UNIQUE_ID_rport_del_timeouttype337, !90, !"__UNIQUE_ID_rport_del_timeouttype337", i1 false, i1 false}
!92 = !{ptr @__UNIQUE_ID_rport_del_timeout338, !93, !"__UNIQUE_ID_rport_del_timeout338", i1 false, i1 false}
!93 = !{!"../drivers/scsi/bfa/bfad.c", i32 109, i32 1}
!94 = !{ptr @__param_bfa_lun_queue_depth, !95, !"__param_bfa_lun_queue_depth", i1 false, i1 false}
!95 = !{!"../drivers/scsi/bfa/bfad.c", i32 111, i32 1}
!96 = !{ptr @__UNIQUE_ID_bfa_lun_queue_depthtype339, !95, !"__UNIQUE_ID_bfa_lun_queue_depthtype339", i1 false, i1 false}
!97 = !{ptr @__UNIQUE_ID_bfa_lun_queue_depth340, !98, !"__UNIQUE_ID_bfa_lun_queue_depth340", i1 false, i1 false}
!98 = !{!"../drivers/scsi/bfa/bfad.c", i32 112, i32 1}
!99 = !{ptr @__param_bfa_io_max_sge, !100, !"__param_bfa_io_max_sge", i1 false, i1 false}
!100 = !{!"../drivers/scsi/bfa/bfad.c", i32 113, i32 1}
!101 = !{ptr @__UNIQUE_ID_bfa_io_max_sgetype341, !100, !"__UNIQUE_ID_bfa_io_max_sgetype341", i1 false, i1 false}
!102 = !{ptr @__UNIQUE_ID_bfa_io_max_sge342, !103, !"__UNIQUE_ID_bfa_io_max_sge342", i1 false, i1 false}
!103 = !{!"../drivers/scsi/bfa/bfad.c", i32 114, i32 1}
!104 = !{ptr @__param_bfa_log_level, !105, !"__param_bfa_log_level", i1 false, i1 false}
!105 = !{!"../drivers/scsi/bfa/bfad.c", i32 115, i32 1}
!106 = !{ptr @__UNIQUE_ID_bfa_log_leveltype343, !105, !"__UNIQUE_ID_bfa_log_leveltype343", i1 false, i1 false}
!107 = !{ptr @__UNIQUE_ID_bfa_log_level344, !108, !"__UNIQUE_ID_bfa_log_level344", i1 false, i1 false}
!108 = !{!"../drivers/scsi/bfa/bfad.c", i32 116, i32 1}
!109 = !{ptr @__param_ioc_auto_recover, !110, !"__param_ioc_auto_recover", i1 false, i1 false}
!110 = !{!"../drivers/scsi/bfa/bfad.c", i32 118, i32 1}
!111 = !{ptr @__UNIQUE_ID_ioc_auto_recovertype345, !110, !"__UNIQUE_ID_ioc_auto_recovertype345", i1 false, i1 false}
!112 = !{ptr @__UNIQUE_ID_ioc_auto_recover346, !113, !"__UNIQUE_ID_ioc_auto_recover346", i1 false, i1 false}
!113 = !{!"../drivers/scsi/bfa/bfad.c", i32 119, i32 1}
!114 = !{ptr @__param_bfa_linkup_delay, !115, !"__param_bfa_linkup_delay", i1 false, i1 false}
!115 = !{!"../drivers/scsi/bfa/bfad.c", i32 121, i32 1}
!116 = !{ptr @__UNIQUE_ID_bfa_linkup_delaytype347, !115, !"__UNIQUE_ID_bfa_linkup_delaytype347", i1 false, i1 false}
!117 = !{ptr @__UNIQUE_ID_bfa_linkup_delay348, !118, !"__UNIQUE_ID_bfa_linkup_delay348", i1 false, i1 false}
!118 = !{!"../drivers/scsi/bfa/bfad.c", i32 122, i32 1}
!119 = !{ptr @__param_msix_disable_cb, !120, !"__param_msix_disable_cb", i1 false, i1 false}
!120 = !{!"../drivers/scsi/bfa/bfad.c", i32 125, i32 1}
!121 = !{ptr @__UNIQUE_ID_msix_disable_cbtype349, !120, !"__UNIQUE_ID_msix_disable_cbtype349", i1 false, i1 false}
!122 = !{ptr @__UNIQUE_ID_msix_disable_cb350, !123, !"__UNIQUE_ID_msix_disable_cb350", i1 false, i1 false}
!123 = !{!"../drivers/scsi/bfa/bfad.c", i32 126, i32 1}
!124 = !{ptr @__param_msix_disable_ct, !125, !"__param_msix_disable_ct", i1 false, i1 false}
!125 = !{!"../drivers/scsi/bfa/bfad.c", i32 127, i32 1}
!126 = !{ptr @__UNIQUE_ID_msix_disable_cttype351, !125, !"__UNIQUE_ID_msix_disable_cttype351", i1 false, i1 false}
!127 = !{ptr @__UNIQUE_ID_msix_disable_ct352, !128, !"__UNIQUE_ID_msix_disable_ct352", i1 false, i1 false}
!128 = !{!"../drivers/scsi/bfa/bfad.c", i32 128, i32 1}
!129 = !{ptr @__param_fdmi_enable, !130, !"__param_fdmi_enable", i1 false, i1 false}
!130 = !{!"../drivers/scsi/bfa/bfad.c", i32 129, i32 1}
!131 = !{ptr @__UNIQUE_ID_fdmi_enabletype353, !130, !"__UNIQUE_ID_fdmi_enabletype353", i1 false, i1 false}
!132 = !{ptr @__UNIQUE_ID_fdmi_enable354, !133, !"__UNIQUE_ID_fdmi_enable354", i1 false, i1 false}
!133 = !{!"../drivers/scsi/bfa/bfad.c", i32 130, i32 1}
!134 = !{ptr @__param_pcie_max_read_reqsz, !135, !"__param_pcie_max_read_reqsz", i1 false, i1 false}
!135 = !{!"../drivers/scsi/bfa/bfad.c", i32 132, i32 1}
!136 = !{ptr @__UNIQUE_ID_pcie_max_read_reqsztype355, !135, !"__UNIQUE_ID_pcie_max_read_reqsztype355", i1 false, i1 false}
!137 = !{ptr @__UNIQUE_ID_pcie_max_read_reqsz356, !138, !"__UNIQUE_ID_pcie_max_read_reqsz356", i1 false, i1 false}
!138 = !{!"../drivers/scsi/bfa/bfad.c", i32 133, i32 1}
!139 = !{ptr @__param_bfa_debugfs_enable, !140, !"__param_bfa_debugfs_enable", i1 false, i1 false}
!140 = !{!"../drivers/scsi/bfa/bfad.c", i32 135, i32 1}
!141 = !{ptr @__UNIQUE_ID_bfa_debugfs_enabletype357, !140, !"__UNIQUE_ID_bfa_debugfs_enabletype357", i1 false, i1 false}
!142 = !{ptr @__UNIQUE_ID_bfa_debugfs_enable358, !143, !"__UNIQUE_ID_bfa_debugfs_enable358", i1 false, i1 false}
!143 = !{!"../drivers/scsi/bfa/bfad.c", i32 136, i32 1}
!144 = !{ptr @__param_max_xfer_size, !145, !"__param_max_xfer_size", i1 false, i1 false}
!145 = !{!"../drivers/scsi/bfa/bfad.c", i32 138, i32 1}
!146 = !{ptr @__UNIQUE_ID_max_xfer_sizetype359, !145, !"__UNIQUE_ID_max_xfer_sizetype359", i1 false, i1 false}
!147 = !{ptr @__UNIQUE_ID_max_xfer_size360, !148, !"__UNIQUE_ID_max_xfer_size360", i1 false, i1 false}
!148 = !{!"../drivers/scsi/bfa/bfad.c", i32 139, i32 1}
!149 = !{ptr @__param_max_rport_logins, !150, !"__param_max_rport_logins", i1 false, i1 false}
!150 = !{!"../drivers/scsi/bfa/bfad.c", i32 141, i32 1}
!151 = !{ptr @__UNIQUE_ID_max_rport_loginstype361, !150, !"__UNIQUE_ID_max_rport_loginstype361", i1 false, i1 false}
!152 = !{ptr @__UNIQUE_ID_max_rport_logins362, !153, !"__UNIQUE_ID_max_rport_logins362", i1 false, i1 false}
!153 = !{!"../drivers/scsi/bfa/bfad.c", i32 142, i32 1}
!154 = !{ptr @bfad_init_timer.__key, !155, !"__key", i1 false, i1 false}
!155 = !{!"../drivers/scsi/bfa/bfad.c", i32 713, i32 2}
!156 = !{ptr @.str.2, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.3, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/bfa/bfad.c", i32 725, i32 3}
!159 = !{ptr @.str.4, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.5, !158, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @bfad_pci_init._entry, !158, !"_entry", i1 false, i1 false}
!162 = !{ptr @bfad_pci_init._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.6, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/bfa/bfad.c", i32 729, i32 32}
!165 = !{ptr @.str.8, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/bfa/bfad.c", i32 737, i32 3}
!167 = !{ptr @bfad_pci_init._entry.7, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @bfad_pci_init._entry_ptr.9, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.11, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/bfa/bfad.c", i32 748, i32 3}
!171 = !{ptr @bfad_pci_init._entry.10, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @bfad_pci_init._entry_ptr.12, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.14, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/bfa/bfad.c", i32 774, i32 4}
!175 = !{ptr @bfad_pci_init._entry.13, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @bfad_pci_init._entry_ptr.15, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.17, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/bfa/bfad.c", i32 780, i32 4}
!179 = !{ptr @bfad_pci_init._entry.16, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @bfad_pci_init._entry_ptr.18, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.19, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/bfa/bfad.c", i32 822, i32 3}
!183 = !{ptr @.str.20, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @bfad_drv_init._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @bfad_drv_init._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.22, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/bfa/bfad.c", i32 824, i32 3}
!188 = !{ptr @bfad_drv_init._entry.21, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @bfad_drv_init._entry_ptr.23, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.24, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/bfa/bfad.c", i32 833, i32 11}
!192 = !{ptr @.str.25, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/bfa/bfad.c", i32 973, i32 31}
!194 = !{ptr @.str.26, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/bfa/bfad.c", i32 1011, i32 3}
!196 = !{ptr @.str.27, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @bfad_start_ops._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @bfad_start_ops._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.29, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/bfa/bfad.c", i32 1038, i32 4}
!201 = !{ptr @bfad_start_ops._entry.28, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @bfad_start_ops._entry_ptr.30, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.32, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/bfa/bfad.c", i32 1057, i32 2}
!205 = !{ptr @.str.33, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.34, !204, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @bfad_start_ops._entry.31, !204, !"_entry", i1 false, i1 false}
!208 = !{ptr @bfad_start_ops._entry_ptr.35, !204, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.36, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/bfa/bfad.c", i32 1168, i32 35}
!211 = !{ptr @.str.37, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/bfa/bfad.c", i32 1220, i32 4}
!213 = !{ptr @.str.38, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @bfad_setup_intr._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @bfad_setup_intr._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.40, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/bfa/bfad.c", i32 1229, i32 4}
!218 = !{ptr @bfad_setup_intr._entry.39, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @bfad_setup_intr._entry_ptr.41, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.42, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/bfa/bfad.c", i32 1306, i32 3}
!222 = !{ptr @.str.43, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @bfad_pci_probe._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @bfad_pci_probe._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.45, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/bfa/bfad.c", i32 1328, i32 3}
!227 = !{ptr @bfad_pci_probe._entry.44, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @bfad_pci_probe._entry_ptr.46, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @bfad_pci_probe.__key, !230, !"__key", i1 false, i1 false}
!230 = !{!"../drivers/scsi/bfa/bfad.c", i32 1341, i32 2}
!231 = !{ptr @.str.47, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @bfad_pci_probe.__key.48, !233, !"__key", i1 false, i1 false}
!233 = !{!"../drivers/scsi/bfa/bfad.c", i32 1342, i32 2}
!234 = !{ptr @.str.49, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @bfad_id_table, !236, !"bfad_id_table", i1 false, i1 false}
!236 = !{!"../drivers/scsi/bfa/bfad.c", i32 1617, i32 22}
!237 = !{ptr @__initcall__kmod_bfa__363_1798_bfad_init6, !238, !"__initcall__kmod_bfa__363_1798_bfad_init6", i1 false, i1 false}
!238 = !{!"../drivers/scsi/bfa/bfad.c", i32 1798, i32 1}
!239 = !{ptr @__exitcall_bfad_exit, !240, !"__exitcall_bfad_exit", i1 false, i1 false}
!240 = !{!"../drivers/scsi/bfa/bfad.c", i32 1799, i32 1}
!241 = !{ptr @__UNIQUE_ID_file364, !242, !"__UNIQUE_ID_file364", i1 false, i1 false}
!242 = !{!"../drivers/scsi/bfa/bfad.c", i32 1800, i32 1}
!243 = !{ptr @__UNIQUE_ID_license365, !242, !"__UNIQUE_ID_license365", i1 false, i1 false}
!244 = !{ptr @__UNIQUE_ID_description366, !245, !"__UNIQUE_ID_description366", i1 false, i1 false}
!245 = !{!"../drivers/scsi/bfa/bfad.c", i32 1801, i32 1}
!246 = !{ptr @__UNIQUE_ID_author367, !247, !"__UNIQUE_ID_author367", i1 false, i1 false}
!247 = !{!"../drivers/scsi/bfa/bfad.c", i32 1802, i32 1}
!248 = !{ptr @__UNIQUE_ID_version368, !249, !"__UNIQUE_ID_version368", i1 false, i1 false}
!249 = !{!"../drivers/scsi/bfa/bfad.c", i32 1803, i32 1}
!250 = !{ptr @.str.50, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @__modver_attr, !249, !"__modver_attr", i1 false, i1 false}
!252 = !{ptr @bfad_inst, !253, !"bfad_inst", i1 false, i1 false}
!253 = !{!"../drivers/scsi/bfa/bfad.c", i32 35, i32 12}
!254 = !{ptr @supported_fc4s, !255, !"supported_fc4s", i1 false, i1 false}
!255 = !{!"../drivers/scsi/bfa/bfad.c", i32 37, i32 6}
!256 = !{ptr @host_name, !257, !"host_name", i1 false, i1 false}
!257 = !{!"../drivers/scsi/bfa/bfad.c", i32 38, i32 8}
!258 = !{ptr @os_name, !259, !"os_name", i1 false, i1 false}
!259 = !{!"../drivers/scsi/bfa/bfad.c", i32 38, i32 20}
!260 = !{ptr @os_patch, !261, !"os_patch", i1 false, i1 false}
!261 = !{!"../drivers/scsi/bfa/bfad.c", i32 38, i32 30}
!262 = !{ptr @num_rports, !263, !"num_rports", i1 false, i1 false}
!263 = !{!"../drivers/scsi/bfa/bfad.c", i32 39, i32 6}
!264 = !{ptr @num_ios, !265, !"num_ios", i1 false, i1 false}
!265 = !{!"../drivers/scsi/bfa/bfad.c", i32 39, i32 18}
!266 = !{ptr @num_tms, !267, !"num_tms", i1 false, i1 false}
!267 = !{!"../drivers/scsi/bfa/bfad.c", i32 39, i32 27}
!268 = !{ptr @num_fcxps, !269, !"num_fcxps", i1 false, i1 false}
!269 = !{!"../drivers/scsi/bfa/bfad.c", i32 40, i32 6}
!270 = !{ptr @num_ufbufs, !271, !"num_ufbufs", i1 false, i1 false}
!271 = !{!"../drivers/scsi/bfa/bfad.c", i32 40, i32 17}
!272 = !{ptr @reqq_size, !273, !"reqq_size", i1 false, i1 false}
!273 = !{!"../drivers/scsi/bfa/bfad.c", i32 41, i32 6}
!274 = !{ptr @rspq_size, !275, !"rspq_size", i1 false, i1 false}
!275 = !{!"../drivers/scsi/bfa/bfad.c", i32 41, i32 17}
!276 = !{ptr @num_sgpgs, !277, !"num_sgpgs", i1 false, i1 false}
!277 = !{!"../drivers/scsi/bfa/bfad.c", i32 41, i32 28}
!278 = !{ptr @pcie_max_read_reqsz, !279, !"pcie_max_read_reqsz", i1 false, i1 false}
!279 = !{!"../drivers/scsi/bfa/bfad.c", i32 49, i32 6}
!280 = !{ptr @bfi_image_cb_size, !281, !"bfi_image_cb_size", i1 false, i1 false}
!281 = !{!"../drivers/scsi/bfa/bfad.c", i32 56, i32 5}
!282 = !{ptr @bfi_image_ct_size, !283, !"bfi_image_ct_size", i1 false, i1 false}
!283 = !{!"../drivers/scsi/bfa/bfad.c", i32 56, i32 24}
!284 = !{ptr @bfi_image_ct2_size, !285, !"bfi_image_ct2_size", i1 false, i1 false}
!285 = !{!"../drivers/scsi/bfa/bfad.c", i32 56, i32 43}
!286 = !{ptr @bfi_image_cb, !287, !"bfi_image_cb", i1 false, i1 false}
!287 = !{!"../drivers/scsi/bfa/bfad.c", i32 57, i32 6}
!288 = !{ptr @bfi_image_ct, !289, !"bfi_image_ct", i1 false, i1 false}
!289 = !{!"../drivers/scsi/bfa/bfad.c", i32 57, i32 21}
!290 = !{ptr @bfi_image_ct2, !291, !"bfi_image_ct2", i1 false, i1 false}
!291 = !{!"../drivers/scsi/bfa/bfad.c", i32 57, i32 36}
!292 = !{ptr @__param_str_os_name, !35, !"__param_str_os_name", i1 false, i1 false}
!293 = !{ptr @__param_str_os_patch, !40, !"__param_str_os_patch", i1 false, i1 false}
!294 = !{ptr @__param_str_host_name, !45, !"__param_str_host_name", i1 false, i1 false}
!295 = !{ptr @__param_str_num_rports, !50, !"__param_str_num_rports", i1 false, i1 false}
!296 = !{ptr @__param_str_num_ios, !55, !"__param_str_num_ios", i1 false, i1 false}
!297 = !{ptr @__param_str_num_tms, !60, !"__param_str_num_tms", i1 false, i1 false}
!298 = !{ptr @__param_str_num_fcxps, !65, !"__param_str_num_fcxps", i1 false, i1 false}
!299 = !{ptr @__param_str_num_ufbufs, !70, !"__param_str_num_ufbufs", i1 false, i1 false}
!300 = !{ptr @__param_str_reqq_size, !75, !"__param_str_reqq_size", i1 false, i1 false}
!301 = !{ptr @__param_str_rspq_size, !80, !"__param_str_rspq_size", i1 false, i1 false}
!302 = !{ptr @__param_str_num_sgpgs, !85, !"__param_str_num_sgpgs", i1 false, i1 false}
!303 = !{ptr @__param_str_rport_del_timeout, !90, !"__param_str_rport_del_timeout", i1 false, i1 false}
!304 = !{ptr @__param_str_bfa_lun_queue_depth, !95, !"__param_str_bfa_lun_queue_depth", i1 false, i1 false}
!305 = !{ptr @__param_str_bfa_io_max_sge, !100, !"__param_str_bfa_io_max_sge", i1 false, i1 false}
!306 = !{ptr @__param_str_bfa_log_level, !105, !"__param_str_bfa_log_level", i1 false, i1 false}
!307 = !{ptr @__param_str_ioc_auto_recover, !110, !"__param_str_ioc_auto_recover", i1 false, i1 false}
!308 = !{ptr @__param_str_bfa_linkup_delay, !115, !"__param_str_bfa_linkup_delay", i1 false, i1 false}
!309 = !{ptr @__param_str_msix_disable_cb, !120, !"__param_str_msix_disable_cb", i1 false, i1 false}
!310 = !{ptr @__param_str_msix_disable_ct, !125, !"__param_str_msix_disable_ct", i1 false, i1 false}
!311 = !{ptr @__param_str_fdmi_enable, !130, !"__param_str_fdmi_enable", i1 false, i1 false}
!312 = !{ptr @__param_str_pcie_max_read_reqsz, !135, !"__param_str_pcie_max_read_reqsz", i1 false, i1 false}
!313 = !{ptr @__param_str_bfa_debugfs_enable, !140, !"__param_str_bfa_debugfs_enable", i1 false, i1 false}
!314 = !{ptr @__param_str_max_xfer_size, !145, !"__param_str_max_xfer_size", i1 false, i1 false}
!315 = !{ptr @__param_str_max_rport_logins, !150, !"__param_str_max_rport_logins", i1 false, i1 false}
!316 = !{ptr @max_rport_logins, !317, !"max_rport_logins", i1 false, i1 false}
!317 = !{!"../drivers/scsi/bfa/bfad.c", i32 53, i32 12}
!318 = distinct !{null, !319, !"__trc_fileno", i1 false, i1 false}
!319 = !{!"../drivers/scsi/bfa/bfad.c", i32 31, i32 1}
!320 = !{ptr @init_completion.__key, !321, !"__key", i1 false, i1 false}
!321 = !{!"../include/linux/completion.h", i32 87, i32 2}
!322 = !{ptr @.str.51, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @.str.52, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/bfa/bfad.c", i32 303, i32 3}
!325 = !{ptr @.str.53, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @bfad_sm_initializing._entry, !324, !"_entry", i1 false, i1 false}
!327 = !{ptr @bfad_sm_initializing._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.54, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/scsi/bfa/bfad.c", i32 350, i32 3}
!330 = !{ptr @bfad_sm_operational._entry, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @bfad_sm_operational._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.55, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/bfa/bfad.c", i32 366, i32 3}
!334 = !{ptr @bfad_sm_fcs_exit._entry, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @bfad_sm_fcs_exit._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.56, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/scsi/bfa/bfad.c", i32 386, i32 3}
!338 = !{ptr @bfad_sm_stopping._entry, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @bfad_sm_stopping._entry_ptr, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.57, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/bfa/bfad.c", i32 334, i32 3}
!342 = !{ptr @bfad_sm_failed._entry, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @bfad_sm_failed._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.58, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/bfa/bfa_cs.h", i32 296, i32 19}
!346 = !{ptr @.str.59, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/scsi/bfa/bfad.c", i32 74, i32 2}
!348 = !{ptr @.str.60, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/bfa/bfad.c", i32 74, i32 10}
!350 = !{ptr @.str.61, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/scsi/bfa/bfad.c", i32 74, i32 18}
!352 = !{ptr @.str.62, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/scsi/bfa/bfad.c", i32 74, i32 26}
!354 = !{ptr @.str.63, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/scsi/bfa/bfad.c", i32 75, i32 2}
!356 = !{ptr @.str.64, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/scsi/bfa/bfad.c", i32 75, i32 10}
!358 = !{ptr @.str.65, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/scsi/bfa/bfad.c", i32 75, i32 18}
!360 = !{ptr @.str.66, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/scsi/bfa/bfad.c", i32 75, i32 26}
!362 = !{ptr @.str.67, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/scsi/bfa/bfad.c", i32 76, i32 2}
!364 = !{ptr @.str.68, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/scsi/bfa/bfad.c", i32 76, i32 10}
!366 = !{ptr @.str.69, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/scsi/bfa/bfad.c", i32 76, i32 19}
!368 = !{ptr @.str.70, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/scsi/bfa/bfad.c", i32 76, i32 28}
!370 = !{ptr @.str.71, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/scsi/bfa/bfad.c", i32 76, i32 36}
!372 = !{ptr @msix_name_cb, !373, !"msix_name_cb", i1 false, i1 false}
!373 = !{!"../drivers/scsi/bfa/bfad.c", i32 73, i32 20}
!374 = !{ptr @.str.72, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/scsi/bfa/bfad.c", i32 69, i32 2}
!376 = !{ptr @msix_name_ct, !377, !"msix_name_ct", i1 false, i1 false}
!377 = !{!"../drivers/scsi/bfa/bfad.c", i32 68, i32 20}
!378 = !{ptr @.str.73, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/scsi/bfa/bfad.c", i32 170, i32 20}
!380 = !{ptr @.str.74, !379, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @.str.75, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/scsi/bfa/bfad.c", i32 173, i32 4}
!383 = !{ptr @.str.76, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @bfad_sm_uninit._entry, !382, !"_entry", i1 false, i1 false}
!385 = !{ptr @bfad_sm_uninit._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @bfad_sm_uninit._entry.77, !387, !"_entry", i1 false, i1 false}
!387 = !{!"../drivers/scsi/bfa/bfad.c", i32 185, i32 3}
!388 = !{ptr @bfad_sm_uninit._entry_ptr.78, !387, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.79, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/scsi/bfa/bfad.c", i32 208, i32 4}
!391 = !{ptr @.str.80, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @bfad_sm_created._entry, !390, !"_entry", i1 false, i1 false}
!393 = !{ptr @bfad_sm_created._entry_ptr, !390, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.82, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/scsi/bfa/bfad.c", i32 221, i32 4}
!396 = !{ptr @bfad_sm_created._entry.81, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @bfad_sm_created._entry_ptr.83, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.85, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/scsi/bfa/bfad.c", i32 232, i32 4}
!400 = !{ptr @bfad_sm_created._entry.84, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @bfad_sm_created._entry_ptr.86, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @bfad_sm_created._entry.87, !403, !"_entry", i1 false, i1 false}
!403 = !{!"../drivers/scsi/bfa/bfad.c", i32 264, i32 3}
!404 = !{ptr @bfad_sm_created._entry_ptr.88, !403, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @bfad_pci_driver, !406, !"bfad_pci_driver", i1 false, i1 false}
!406 = !{!"../drivers/scsi/bfa/bfad.c", i32 1678, i32 26}
!407 = !{ptr @bfad_err_handler, !408, !"bfad_err_handler", i1 false, i1 false}
!408 = !{!"../drivers/scsi/bfa/bfad.c", i32 1671, i32 34}
!409 = !{ptr @.str.89, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/scsi/bfa/bfad.c", i32 1438, i32 2}
!411 = !{ptr @.str.90, !410, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @.str.91, !410, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @bfad_pci_error_detected._entry, !410, !"_entry", i1 false, i1 false}
!414 = !{ptr @bfad_pci_error_detected._entry_ptr, !410, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.92, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/scsi/bfa/bfad.c", i32 1582, i32 2}
!417 = !{ptr @.str.93, !416, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @bfad_pci_mmio_enabled._entry, !416, !"_entry", i1 false, i1 false}
!419 = !{ptr @bfad_pci_mmio_enabled._entry_ptr, !416, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.94, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/scsi/bfa/bfad.c", i32 1532, i32 2}
!422 = !{ptr @.str.95, !421, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @bfad_pci_slot_reset._entry, !421, !"_entry", i1 false, i1 false}
!424 = !{ptr @bfad_pci_slot_reset._entry_ptr, !421, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.97, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/scsi/bfa/bfad.c", i32 1536, i32 3}
!427 = !{ptr @bfad_pci_slot_reset._entry.96, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @bfad_pci_slot_reset._entry_ptr.98, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.100, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/scsi/bfa/bfad.c", i32 1550, i32 3}
!431 = !{ptr @bfad_pci_slot_reset._entry.99, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @bfad_pci_slot_reset._entry_ptr.101, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.103, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/scsi/bfa/bfad.c", i32 1566, i32 2}
!435 = !{ptr @.str.104, !434, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @bfad_pci_slot_reset._entry.102, !434, !"_entry", i1 false, i1 false}
!437 = !{ptr @bfad_pci_slot_reset._entry_ptr.105, !434, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.106, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/scsi/bfa/bfad.c", i32 1498, i32 3}
!440 = !{ptr @.str.107, !439, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @restart_bfa._entry, !439, !"_entry", i1 false, i1 false}
!442 = !{ptr @restart_bfa._entry_ptr, !439, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.109, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/scsi/bfa/bfad.c", i32 1512, i32 3}
!445 = !{ptr @restart_bfa._entry.108, !444, !"_entry", i1 false, i1 false}
!446 = !{ptr @restart_bfa._entry_ptr.110, !444, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.111, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/scsi/bfa/bfad.c", i32 1607, i32 2}
!449 = !{ptr @.str.112, !448, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @bfad_pci_resume._entry, !448, !"_entry", i1 false, i1 false}
!451 = !{ptr @bfad_pci_resume._entry_ptr, !448, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.113, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/scsi/bfa/bfad.c", i32 1770, i32 26}
!454 = !{ptr @.str.114, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/scsi/bfa/bfad.c", i32 1775, i32 25}
!456 = !{ptr @.str.115, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/scsi/bfa/bfad.c", i32 1780, i32 25}
!458 = !{ptr @.str.116, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/scsi/bfa/bfad.c", i32 1746, i32 3}
!460 = !{ptr @.str.117, !459, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @bfad_read_firmware._entry, !459, !"_entry", i1 false, i1 false}
!462 = !{ptr @bfad_read_firmware._entry_ptr, !459, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.119, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/scsi/bfa/bfad.c", i32 1753, i32 3}
!465 = !{ptr @bfad_read_firmware._entry.118, !464, !"_entry", i1 false, i1 false}
!466 = !{ptr @bfad_read_firmware._entry_ptr.120, !464, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.121, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/scsi/bfa/bfad.c", i32 1694, i32 2}
!469 = !{ptr @.str.122, !468, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @bfad_init._entry, !468, !"_entry", i1 false, i1 false}
!471 = !{ptr @bfad_init._entry_ptr, !468, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @.str.124, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/scsi/bfa/bfad.c", i32 1703, i32 3}
!474 = !{ptr @bfad_init._entry.123, !473, !"_entry", i1 false, i1 false}
!475 = !{ptr @bfad_init._entry_ptr.125, !473, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.127, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/scsi/bfa/bfad.c", i32 1716, i32 3}
!478 = !{ptr @bfad_init._entry.126, !477, !"_entry", i1 false, i1 false}
!479 = !{ptr @bfad_init._entry_ptr.128, !477, !"_entry_ptr", i1 false, i1 false}
!480 = distinct !{null, !481, !"num_sgpgs_parm", i1 false, i1 false}
!481 = !{!"../drivers/scsi/bfa/bfad.c", i32 36, i32 17}
!482 = !{i32 1, !"wchar_size", i32 2}
!483 = !{i32 1, !"min_enum_size", i32 4}
!484 = !{i32 8, !"branch-target-enforcement", i32 0}
!485 = !{i32 8, !"sign-return-address", i32 0}
!486 = !{i32 8, !"sign-return-address-all", i32 0}
!487 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!488 = !{i32 7, !"uwtable", i32 1}
!489 = !{i32 7, !"frame-pointer", i32 2}
!490 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!491 = !{!"auto-init"}
!492 = !{i32 0, i32 33}
