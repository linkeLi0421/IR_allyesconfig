; ModuleID = '/llk/IR_all_yes/drivers/scsi/bfa/bfad_im.c_pt.bc'
source_filename = "../drivers/scsi/bfa/bfad_im.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.fc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.execute_work = type { %struct.work_struct }
%struct.bfad_itnim_s = type { %struct.list_head, %struct.bfa_fcs_itnim_s, %struct.work_struct, i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i32, i32 }
%struct.bfa_fcs_itnim_s = type { ptr, ptr, ptr, ptr, %struct.bfa_timer_s, ptr, i32, i32, i32, i32, i32, %struct.bfa_fcxp_wqe_s, ptr, %struct.bfa_itnim_stats_s }
%struct.bfa_itnim_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fc_rport_identifiers = type { i64, i64, i32, i32 }
%struct.bfa_fcs_rport_s = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i64, i64, %struct.bfa_rport_symname_s, ptr, %struct.bfa_timer_s, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.bfa_fcxp_wqe_s, %struct.bfa_rport_stats_s, i32, %struct.bfa_fcs_rpf_s, i32 }
%struct.bfa_rport_symname_s = type { [255 x i8] }
%struct.bfa_rport_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bfa_rport_hal_stats_s }
%struct.bfa_rport_hal_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_fcs_rpf_s = type { ptr, ptr, %struct.bfa_timer_s, ptr, %struct.bfa_fcxp_wqe_s, i32, i32, i32 }
%struct.bfad_im_port_s = type { ptr, ptr, %struct.work_struct, i32, i16, i16, %struct.list_head, ptr, %struct.list_head, ptr }
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.96, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.96 = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.bfad_im_s = type { ptr, ptr, [20 x i8], %struct.work_struct }
%struct.bfa_ioim_s = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, ptr, %struct.list_head, %struct.bfa_cb_qe_s, ptr, ptr, i8, i8, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.75, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.56 }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.75 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.scsi_lun = type { [8 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.bfa_itnim_s = type { %struct.list_head, ptr, ptr, ptr, ptr, %struct.bfi_mhdr_s, i8, i8, %struct.bfa_cb_qe_s, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.bfa_wc_s, %struct.bfa_timer_s, %struct.bfa_reqq_wait_s, ptr, %struct.bfa_itnim_iostats_s, %struct.bfa_itnim_ioprofile_s }
%struct.bfa_itnim_iostats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32] }
%struct.bfa_itnim_ioprofile_s = type { i32, i32, i32, i32, [14 x i32], %struct.bfa_itnim_latency_s }
%struct.bfa_itnim_latency_s = type { [14 x i32], [14 x i32], [14 x i32], [14 x i32] }
%struct.bfa_dconf_s = type { %struct.bfa_dconf_hdr_s, %struct.bfa_lunmask_cfg_s, %struct.bfa_throttle_cfg_s }
%struct.bfa_dconf_hdr_s = type { i32, i32 }
%struct.bfa_lunmask_cfg_s = type { i32, i32, [16 x %struct.bfa_lun_mask_s] }
%struct.bfa_lun_mask_s = type { i64, i64, %struct.scsi_lun, i8, [3 x i8], i16, i8, i8 }
%struct.bfa_throttle_cfg_s = type { i16, i16, i32 }
%struct.bfa_rport_s = type { %struct.list_head, ptr, ptr, ptr, i16, i16, i8, [3 x i8], %struct.bfa_rport_info_s, %struct.bfa_reqq_wait_s, %struct.bfa_cb_qe_s, %struct.bfa_rport_hal_stats_s, %struct.bfa_rport_qos_attr_s, %union.a }
%struct.bfa_rport_info_s = type <{ i16, [2 x i8], i64, i8, i8, i16, i32 }>
%union.a = type { i32 }
%struct.bfa_ioc_attr_s = type { i32, i32, %struct.bfa_adapter_attr_s, %struct.bfa_ioc_driver_attr_s, %struct.bfa_ioc_pci_attr_s, i8, i8, i8, i8, i8, [3 x i8] }
%struct.bfa_adapter_attr_s = type { [8 x i8], [12 x i8], i32, [16 x i8], [128 x i8], i64, [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.bfa_mfg_vpd_s, %struct.mac_s, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, [16 x i8] }
%struct.bfa_mfg_vpd_s = type { i8, [3 x i8], i8, i8, i8, i8, [512 x i8] }
%struct.mac_s = type { [6 x i8] }
%struct.bfa_ioc_driver_attr_s = type { [16 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8] }
%struct.fc_host_attrs = type { i64, i64, i64, i32, [32 x i8], i32, i32, i16, i32, i32, i32, i32, [64 x i8], [64 x i8], [256 x i8], [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [8 x i8], [256 x i8], i32, i32, i32, [32 x i8], i32, i64, [256 x i8], [256 x i8], i32, %struct.fc_fpin_stats, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i16, [20 x i8], ptr, [20 x i8], ptr, ptr, i8 }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bfad_im_port_index.xa_lock\00", [37 x i8] zeroinitializer }, align 32
@bfad_im_port_index = dso_local global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@bfa_lun_queue_depth = external dso_local local_unnamed_addr global i32, align 4
@bfa_fcb_itnim_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(*itnim_drv)->itnim_work)\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/scsi/bfa/bfad_im.c\00", [37 x i8] zeroinitializer }, align 32
@bfa_log_level = external dso_local local_unnamed_addr global i32, align 4
@bfa_fcb_itnim_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 476, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ITNIM FREE scsi%d: FCID: %s WWPN: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bfa_fcb_itnim_free\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bfa_fcb_itnim_free._entry_ptr = internal global ptr @bfa_fcb_itnim_free._entry, section ".printk_index", align 4
@bfad_mutex = external dso_local global %struct.mutex, align 4
@bfad_im_scsi_host_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014idr_alloc failure\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bfad_im_scsi_host_alloc\00", [40 x i8] zeroinitializer }, align 32
@bfad_im_scsi_host_alloc._entry_ptr = internal global ptr @bfad_im_scsi_host_alloc._entry, section ".printk_index", align 4
@bfad_im_scsi_transport_template = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@bfad_im_scsi_vport_transport_template = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@bfad_im_scsi_host_alloc._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014scsi_add_host failure %d\0A\00", [36 x i8] zeroinitializer }, align 32
@bfad_im_scsi_host_alloc._entry_ptr.11 = internal global ptr @bfad_im_scsi_host_alloc._entry.9, section ".printk_index", align 4
@bfad_im_scsi_host_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 595, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Free scsi%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bfad_im_scsi_host_free\00", [41 x i8] zeroinitializer }, align 32
@bfad_im_scsi_host_free._entry_ptr = internal global ptr @bfad_im_scsi_host_free._entry, section ".printk_index", align 4
@bfad_im_port_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&im_port->port_delete_work)\00", [50 x i8] zeroinitializer }, align 32
@bfad_im_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&im->aen_im_notify_work)\00", [53 x i8] zeroinitializer }, align 32
@bfad_im_scsi_host_template = dso_local global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @bfad_im_queuecommand, ptr null, ptr null, ptr @.str.18, ptr @bfad_im_info, ptr null, ptr null, ptr null, ptr @bfad_im_abort_handler, ptr @bfad_im_reset_lun_handler, ptr @bfad_im_reset_target_handler, ptr null, ptr null, ptr @bfad_im_slave_alloc, ptr @bfad_im_slave_configure, ptr @bfad_im_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fc_eh_timed_out, ptr null, ptr null, ptr null, ptr null, i32 0, i32 -1, i16 128, i16 0, i32 65535, i32 0, i32 0, i32 0, i16 3, i8 0, i32 0, i8 0, i32 0, ptr @bfad_im_host_groups, ptr null, i64 5719, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@bfad_im_vport_template = dso_local global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @bfad_im_queuecommand, ptr null, ptr null, ptr @.str.18, ptr @bfad_im_info, ptr null, ptr null, ptr null, ptr @bfad_im_abort_handler, ptr @bfad_im_reset_lun_handler, ptr @bfad_im_reset_target_handler, ptr null, ptr null, ptr @bfad_im_slave_alloc, ptr @bfad_im_slave_configure, ptr @bfad_im_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fc_eh_timed_out, ptr null, ptr null, ptr null, ptr null, i32 0, i32 -1, i16 128, i16 0, i32 65535, i32 0, i32 0, i32 0, i16 3, i8 0, i32 0, i8 0, i32 0, ptr @bfad_im_vport_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@max_xfer_size = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bfad_wq_%d\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bfa\00", [28 x i8] zeroinitializer }, align 32
@bfad_im_host_groups = external dso_local global [0 x ptr], align 4
@bfad_im_vport_groups = external dso_local global [0 x ptr], align 4
@bfad_im_fc_function_template = external dso_local global %struct.fc_function_template, align 4
@bfad_im_vport_fc_function_template = external dso_local global %struct.fc_function_template, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@supported_fc4s = external dso_local local_unnamed_addr global i32, align 4
@bfa_linkup_delay = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%02x:%02x:%02x\00", [17 x i8] zeroinitializer }, align 32
@bfad_im_info.bfa_buf = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"QLogic BR-series FC/FCOE Adapter, hwpath: %s driver: %s\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"3.2.25.1\00", [23 x i8] zeroinitializer }, align 32
@bfad_im_abort_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 216, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"scsi%d: abort cmnd %p iotag %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bfad_im_abort_handler\00", [42 x i8] zeroinitializer }, align 32
@bfad_im_abort_handler._entry_ptr = internal global ptr @bfad_im_abort_handler._entry, section ".printk_index", align 4
@bfad_im_abort_handler._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 233, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"scsi%d: complete abort 0x%p iotag 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@bfad_im_abort_handler._entry_ptr.29 = internal global ptr @bfad_im_abort_handler._entry.27, section ".printk_index", align 4
@bfad_im_reset_lun_handler.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"&wq\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@bfad_im_reset_lun_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 318, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"LUN reset, fail to allocate tskim\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bfad_im_reset_lun_handler\00", [38 x i8] zeroinitializer }, align 32
@bfad_im_reset_lun_handler._entry_ptr = internal global ptr @bfad_im_reset_lun_handler._entry, section ".printk_index", align 4
@bfad_im_reset_lun_handler._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 340, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lun reset, bfa_itnim is NULL\0A\00", [34 x i8] zeroinitializer }, align 32
@bfad_im_reset_lun_handler._entry_ptr.36 = internal global ptr @bfad_im_reset_lun_handler._entry.34, section ".printk_index", align 4
@bfad_im_reset_lun_handler._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 356, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LUN reset failure, status: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@bfad_im_reset_lun_handler._entry_ptr.39 = internal global ptr @bfad_im_reset_lun_handler._entry.37, section ".printk_index", align 4
@bfad_im_reset_target_handler.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bfad_im_reset_target_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 397, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"target reset failure, status: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bfad_im_reset_target_handler\00", [35 x i8] zeroinitializer }, align 32
@bfad_im_reset_target_handler._entry_ptr = internal global ptr @bfad_im_reset_target_handler._entry, section ".printk_index", align 4
@bfad_im_target_reset_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 252, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"target reset, fail to allocate tskim\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bfad_im_target_reset_send\00", [38 x i8] zeroinitializer }, align 32
@bfad_im_target_reset_send._entry_ptr = internal global ptr @bfad_im_target_reset_send._entry, section ".printk_index", align 4
@bfad_im_target_reset_send._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 272, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"target reset, bfa_itnim is NULL\0A\00", [63 x i8] zeroinitializer }, align 32
@bfad_im_target_reset_send._entry_ptr.46 = internal global ptr @bfad_im_target_reset_send._entry.44, section ".printk_index", align 4
@bfad_im_itnim_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 1137, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ITNIM ONLINE Target: %d:0:%d FCID: %s WWPN: %s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bfad_im_itnim_work_handler\00", [37 x i8] zeroinitializer }, align 32
@bfad_im_itnim_work_handler._entry_ptr = internal global ptr @bfad_im_itnim_work_handler._entry, section ".printk_index", align 4
@bfad_im_itnim_work_handler._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 1142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: itnim %llx is already in online state\0A\00", [51 x i8] zeroinitializer }, align 32
@bfad_im_itnim_work_handler._entry_ptr.51 = internal global ptr @bfad_im_itnim_work_handler._entry.49, section ".printk_index", align 4
@bfad_im_itnim_work_handler._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 1170, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ITNIM OFFLINE Target: %d:0:%d FCID: %s WWPN: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@bfad_im_itnim_work_handler._entry_ptr.54 = internal global ptr @bfad_im_itnim_work_handler._entry.52, section ".printk_index", align 4
@bfad_im_queuecommand_lck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014bfad%d, queuecommand %p %x failed, BFA stopped\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bfad_im_queuecommand_lck\00", [39 x i8] zeroinitializer }, align 32
@bfad_im_queuecommand_lck._entry_ptr = internal global ptr @bfad_im_queuecommand_lck._entry, section ".printk_index", align 4
@bfad_im_queuecommand_lck._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\014hal_io failure\0A\00", [46 x i8] zeroinitializer }, align 32
@bfad_im_queuecommand_lck._entry_ptr.59 = internal global ptr @bfad_im_queuecommand_lck._entry.57, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 8]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 11]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 11]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 3, i64 6]
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"bfad_im_port_index\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 23, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 440, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 459, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 473, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 545, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [32 x i8] c"bfad_im_scsi_transport_template\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 24, i32 33 }
@___asan_gen_.107 = private unnamed_addr constant [38 x i8] c"bfad_im_scsi_vport_transport_template\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 25, i32 33 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 573, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 594, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 634, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 713, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [27 x i8] c"bfad_im_scsi_host_template\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 795, i32 27 }
@___asan_gen_.140 = private unnamed_addr constant [23 x i8] c"bfad_im_vport_template\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 817, i32 27 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 771, i32 46 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 773, i32 18 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 797, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 296, i32 19 }
@___asan_gen_.156 = private unnamed_addr constant [29 x i8] c"../drivers/scsi/bfa/bfa_cs.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 310, i32 20 }
@___asan_gen_.158 = private unnamed_addr constant [8 x i8] c"bfa_buf\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 171, i32 18 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 178, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 179, i32 19 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 214, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 231, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 301, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 317, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 339, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 355, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 378, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 395, i32 5 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 251, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 271, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1132, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1139, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1165, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1238, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.273 = private constant [30 x i8] c"../drivers/scsi/bfa/bfad_im.c\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1255, i32 3 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @bfa_fcb_itnim_free._entry, ptr @bfa_fcb_itnim_free._entry_ptr, ptr @bfad_im_abort_handler._entry, ptr @bfad_im_abort_handler._entry.27, ptr @bfad_im_abort_handler._entry_ptr, ptr @bfad_im_abort_handler._entry_ptr.29, ptr @bfad_im_itnim_work_handler._entry, ptr @bfad_im_itnim_work_handler._entry.49, ptr @bfad_im_itnim_work_handler._entry.52, ptr @bfad_im_itnim_work_handler._entry_ptr, ptr @bfad_im_itnim_work_handler._entry_ptr.51, ptr @bfad_im_itnim_work_handler._entry_ptr.54, ptr @bfad_im_queuecommand_lck._entry, ptr @bfad_im_queuecommand_lck._entry.57, ptr @bfad_im_queuecommand_lck._entry_ptr, ptr @bfad_im_queuecommand_lck._entry_ptr.59, ptr @bfad_im_reset_lun_handler._entry, ptr @bfad_im_reset_lun_handler._entry.34, ptr @bfad_im_reset_lun_handler._entry.37, ptr @bfad_im_reset_lun_handler._entry_ptr, ptr @bfad_im_reset_lun_handler._entry_ptr.36, ptr @bfad_im_reset_lun_handler._entry_ptr.39, ptr @bfad_im_reset_target_handler._entry, ptr @bfad_im_reset_target_handler._entry_ptr, ptr @bfad_im_scsi_host_alloc._entry, ptr @bfad_im_scsi_host_alloc._entry.9, ptr @bfad_im_scsi_host_alloc._entry_ptr, ptr @bfad_im_scsi_host_alloc._entry_ptr.11, ptr @bfad_im_scsi_host_free._entry, ptr @bfad_im_scsi_host_free._entry_ptr, ptr @bfad_im_target_reset_send._entry, ptr @bfad_im_target_reset_send._entry.44, ptr @bfad_im_target_reset_send._entry_ptr, ptr @bfad_im_target_reset_send._entry_ptr.46, ptr @.str, ptr @bfad_im_port_index, ptr @bfa_fcb_itnim_alloc.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @bfad_im_scsi_transport_template, ptr @bfad_im_scsi_vport_transport_template, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @bfad_im_port_new.__key, ptr @.str.14, ptr @bfad_im_probe.__key, ptr @.str.15, ptr @bfad_im_scsi_host_template, ptr @bfad_im_vport_template, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @bfad_im_info.bfa_buf, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @bfad_im_reset_lun_handler.__key, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @bfad_im_reset_target_handler.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_port_index to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcb_itnim_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_fcb_itnim_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_scsi_host_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_scsi_transport_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_scsi_vport_transport_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_scsi_host_alloc._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_scsi_host_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_port_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_scsi_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_vport_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_info.bfa_buf to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_abort_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_abort_handler._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_reset_lun_handler.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_reset_lun_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_reset_lun_handler._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_reset_lun_handler._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_reset_target_handler.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_reset_target_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_target_reset_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_target_reset_send._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_itnim_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_itnim_work_handler._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_itnim_work_handler._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_queuecommand_lck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_queuecommand_lck._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_ioim_done(ptr nocapture noundef readonly %drv, ptr noundef %dio, i32 noundef %io_status, i8 noundef zeroext %scsi_status, i32 noundef %sns_len, ptr nocapture noundef readonly %sns_info, i32 noundef %residue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %io_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %io_status, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %entry.sw.epilog_crit_edge
    i32 8, label %sw.bb27
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %drv, i32 0, i32 30
  %1 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %trcmod, align 8
  %conv = zext i8 %scsi_status to i64
  tail call void @__bfa_trc(ptr noundef %2, i32 noundef 3074, i32 noundef 45, i64 noundef %conv) #13
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %dio, i32 0, i32 5
  %3 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %resid_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sns_len)
  %cmp = icmp sgt i32 %sns_len, 0
  br i1 %cmp, label %if.then, label %sw.bb.if.end7_crit_edge

sw.bb.if.end7_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %conv3115 = zext i32 %sns_len to i64
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 3074, i32 noundef 49, i64 noundef %conv3115) #13
  %6 = tail call i32 @llvm.smin.i32(i32 %sns_len, i32 96)
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %dio, i32 0, i32 21
  %7 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sense_buffer, align 4
  %9 = call ptr @memcpy(ptr %8, ptr %sns_info, i32 %6)
  br label %if.end7

if.end7:                                          ; preds = %if.then, %sw.bb.if.end7_crit_edge
  %sns_len.addr.0 = phi i32 [ 1, %if.then ], [ %sns_len, %sw.bb.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %residue)
  %cmp8 = icmp sgt i32 %residue, 0
  br i1 %cmp8, label %if.then10, label %if.end7.if.end22_crit_edge

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then10:                                        ; preds = %if.end7
  %10 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod, align 8
  %conv12116 = zext i32 %residue to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 3074, i32 noundef 56, i64 noundef %conv12116) #13
  %12 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %residue, ptr %resid_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sns_len.addr.0)
  %tobool.not = icmp eq i32 %sns_len.addr.0, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %scsi_status)
  %cmp14 = icmp eq i8 %scsi_status, 0
  %or.cond = and i1 %cmp14, %tobool.not
  br i1 %or.cond, label %land.lhs.true16, label %if.then10.if.end22_crit_edge

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

land.lhs.true16:                                  ; preds = %if.then10
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %dio, i32 0, i32 17, i32 1
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 4
  %sub = sub i32 %14, %residue
  %underflow = getelementptr inbounds %struct.scsi_cmnd, ptr %dio, i32 0, i32 19
  %15 = ptrtoint ptr %underflow to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %underflow, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %16)
  %cmp17 = icmp ult i32 %sub, %16
  br i1 %cmp17, label %if.then19, label %land.lhs.true16.if.end22_crit_edge

land.lhs.true16.if.end22_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then19:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trcmod, align 8
  tail call void @__bfa_trc(ptr noundef %18, i32 noundef 3074, i32 noundef 61, i64 noundef 0) #13
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %land.lhs.true16.if.end22_crit_edge, %if.then10.if.end22_crit_edge, %if.end7.if.end22_crit_edge
  %host_status.0 = phi i32 [ 0, %if.then10.if.end22_crit_edge ], [ 458752, %if.then19 ], [ 0, %land.lhs.true16.if.end22_crit_edge ], [ 0, %if.end7.if.end22_crit_edge ]
  %conv24 = zext i8 %scsi_status to i32
  %or = or i32 %host_status.0, %conv24
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %if.end22, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 458752, %sw.default ], [ 917504, %sw.bb27 ], [ %or, %if.end22 ], [ 196608, %entry.sw.epilog_crit_edge ]
  %result29 = getelementptr inbounds %struct.scsi_cmnd, ptr %dio, i32 0, i32 24
  %19 = ptrtoint ptr %result29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %result29, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %dio, i32 0, i32 1
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %cmp30.not = icmp eq ptr %23, null
  br i1 %cmp30.not, label %sw.epilog.if.end33_crit_edge, label %if.then32

sw.epilog.if.end33_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then32:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @scsi_dma_unmap(ptr noundef %dio) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %sw.epilog.if.end33_crit_edge
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %dio, i32 0, i32 23
  %24 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %host_scribble, align 4
  %trcmod34 = getelementptr inbounds %struct.bfad_s, ptr %drv, i32 0, i32 30
  %25 = ptrtoint ptr %trcmod34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trcmod34, align 8
  %result35 = getelementptr inbounds %struct.scsi_cmnd, ptr %dio, i32 0, i32 24
  %27 = ptrtoint ptr %result35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %result35, align 4
  %conv36 = sext i32 %28 to i64
  tail call void @__bfa_trc(ptr noundef %26, i32 noundef 3074, i32 noundef 84, i64 noundef %conv36) #13
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %30, i32 0, i32 21
  %31 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hostdata, align 8
  %tobool38.not = icmp eq ptr %32, null
  br i1 %tobool38.not, label %if.end33.if.end61_crit_edge, label %if.then39

if.end33.if.end61_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then39:                                        ; preds = %if.end33
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %result35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %result35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool42.not = icmp ne i32 %36, 0
  %tobool44.not = icmp eq ptr %34, null
  %or.cond99 = select i1 %tobool42.not, i1 true, i1 %tobool44.not
  br i1 %or.cond99, label %if.else, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.then39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_lun_queue_depth to i32))
  %37 = load i32, ptr @bfa_lun_queue_depth, align 4
  %queue_depth = getelementptr inbounds %struct.scsi_device, ptr %30, i32 0, i32 9
  %38 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %queue_depth, align 4
  %conv47 = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv47)
  %cmp48 = icmp sgt i32 %37, %conv47
  br i1 %cmp48, label %if.then50, label %land.lhs.true45.if.end61_crit_edge

land.lhs.true45.if.end61_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then50:                                        ; preds = %land.lhs.true45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %last_ramp_up_time.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %34, i32 0, i32 13
  %41 = ptrtoint ptr %last_ramp_up_time.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %last_ramp_up_time.i, align 4
  %sub.i = sub i32 %40, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 12000
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then50.if.end61_crit_edge

if.then50.if.end61_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

land.lhs.true.i:                                  ; preds = %if.then50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %last_queue_full_time.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %34, i32 0, i32 14
  %44 = ptrtoint ptr %last_queue_full_time.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %last_queue_full_time.i, align 4
  %sub1.i = sub i32 %43, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %sub1.i)
  %cmp2.i = icmp ugt i32 %sub1.i, 12000
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.if.end61_crit_edge

land.lhs.true.i.if.end61_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then.i:                                        ; preds = %land.lhs.true.i
  %46 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %30, align 8
  %call.i = tail call ptr @__scsi_iterate_devices(ptr noundef %47, ptr noundef null) #13
  %tobool.not27.i = icmp eq ptr %call.i, null
  br i1 %tobool.not27.i, label %if.then.i.if.end61_crit_edge, label %for.body.lr.ph.i

if.then.i.if.end61_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %id6.i = getelementptr inbounds %struct.scsi_device, ptr %30, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tmp_sdev.028.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call16.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_lun_queue_depth to i32))
  %48 = load i32, ptr @bfa_lun_queue_depth, align 4
  %queue_depth.i = getelementptr inbounds %struct.scsi_device, ptr %tmp_sdev.028.i, i32 0, i32 9
  %49 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %queue_depth.i, align 4
  %conv.i = zext i16 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %conv.i)
  %cmp3.i = icmp sgt i32 %48, %conv.i
  br i1 %cmp3.i, label %if.then5.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then5.i:                                       ; preds = %for.body.i
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %tmp_sdev.028.i, i32 0, i32 16
  %51 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id.i, align 8
  %53 = ptrtoint ptr %id6.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %id6.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp7.not.i = icmp eq i32 %52, %54
  br i1 %cmp7.not.i, label %if.end.i, label %if.then5.i.for.inc.i_crit_edge

if.then5.i.for.inc.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = add nuw nsw i32 %conv.i, 1
  %call12.i = tail call i32 @scsi_change_queue_depth(ptr noundef nonnull %tmp_sdev.028.i, i32 noundef %add.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %56 = ptrtoint ptr %last_ramp_up_time.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %last_ramp_up_time.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %if.then5.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %57 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %30, align 8
  %call16.i = tail call ptr @__scsi_iterate_devices(ptr noundef %58, ptr noundef nonnull %tmp_sdev.028.i) #13
  %tobool.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.end61_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end61_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.else:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %36)
  %cmp53 = icmp ne i32 %36, 40
  %or.cond100 = select i1 %cmp53, i1 true, i1 %tobool44.not
  br i1 %or.cond100, label %if.else.if.end61_crit_edge, label %if.then57

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then57:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %last_queue_full_time.i102 = getelementptr inbounds %struct.bfad_itnim_s, ptr %34, i32 0, i32 14
  %60 = ptrtoint ptr %last_queue_full_time.i102 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %last_queue_full_time.i102, align 4
  %61 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %30, align 8
  %call.i103 = tail call ptr @__scsi_iterate_devices(ptr noundef %62, ptr noundef null) #13
  %tobool.not11.i = icmp eq ptr %call.i103, null
  br i1 %tobool.not11.i, label %if.then57.if.end61_crit_edge, label %for.body.lr.ph.i104

if.then57.if.end61_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

for.body.lr.ph.i104:                              ; preds = %if.then57
  %id1.i = getelementptr inbounds %struct.scsi_device, ptr %30, i32 0, i32 16
  br label %for.body.i106

for.body.i106:                                    ; preds = %for.inc.i112.for.body.i106_crit_edge, %for.body.lr.ph.i104
  %tmp_sdev.012.i = phi ptr [ %call.i103, %for.body.lr.ph.i104 ], [ %call4.i, %for.inc.i112.for.body.i106_crit_edge ]
  %id.i105 = getelementptr inbounds %struct.scsi_device, ptr %tmp_sdev.012.i, i32 0, i32 16
  %63 = ptrtoint ptr %id.i105 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id.i105, align 8
  %65 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %id1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp.not.i = icmp eq i32 %64, %66
  br i1 %cmp.not.i, label %if.end.i110, label %for.body.i106.for.inc.i112_crit_edge

for.body.i106.for.inc.i112_crit_edge:             ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i112

if.end.i110:                                      ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #15
  %queue_depth.i107 = getelementptr inbounds %struct.scsi_device, ptr %tmp_sdev.012.i, i32 0, i32 9
  %67 = ptrtoint ptr %queue_depth.i107 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %queue_depth.i107, align 4
  %conv.i108 = zext i16 %68 to i32
  %sub.i109 = add nsw i32 %conv.i108, -1
  %call2.i = tail call i32 @scsi_track_queue_full(ptr noundef nonnull %tmp_sdev.012.i, i32 noundef %sub.i109) #13
  br label %for.inc.i112

for.inc.i112:                                     ; preds = %if.end.i110, %for.body.i106.for.inc.i112_crit_edge
  %69 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %30, align 8
  %call4.i = tail call ptr @__scsi_iterate_devices(ptr noundef %70, ptr noundef nonnull %tmp_sdev.012.i) #13
  %tobool.not.i111 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i111, label %for.inc.i112.if.end61_crit_edge, label %for.inc.i112.for.body.i106_crit_edge

for.inc.i112.for.body.i106_crit_edge:             ; preds = %for.inc.i112
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i106

for.inc.i112.if.end61_crit_edge:                  ; preds = %for.inc.i112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.end61:                                         ; preds = %for.inc.i112.if.end61_crit_edge, %if.then57.if.end61_crit_edge, %if.else.if.end61_crit_edge, %for.inc.i.if.end61_crit_edge, %if.then.i.if.end61_crit_edge, %land.lhs.true.i.if.end61_crit_edge, %if.then50.if.end61_crit_edge, %land.lhs.true45.if.end61_crit_edge, %if.end33.if.end61_crit_edge
  tail call void @scsi_done(ptr noundef %dio) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bfa_trc(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_ramp_up_qdepth(ptr nocapture noundef %itnim, ptr nocapture noundef readonly %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %last_ramp_up_time = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim, i32 0, i32 13
  %1 = ptrtoint ptr %last_ramp_up_time to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_ramp_up_time, align 4
  %sub = sub i32 %0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %sub)
  %cmp = icmp ugt i32 %sub, 12000
  br i1 %cmp, label %land.lhs.true, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %last_queue_full_time = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim, i32 0, i32 14
  %4 = ptrtoint ptr %last_queue_full_time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_queue_full_time, align 4
  %sub1 = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %sub1)
  %cmp2 = icmp ugt i32 %sub1, 12000
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 8
  %call = tail call ptr @__scsi_iterate_devices(ptr noundef %7, ptr noundef null) #13
  %tobool.not27 = icmp eq ptr %call, null
  br i1 %tobool.not27, label %if.then.if.end17_crit_edge, label %for.body.lr.ph

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

for.body.lr.ph:                                   ; preds = %if.then
  %id6 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tmp_sdev.028 = phi ptr [ %call, %for.body.lr.ph ], [ %call16, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_lun_queue_depth to i32))
  %8 = load i32, ptr @bfa_lun_queue_depth, align 4
  %queue_depth = getelementptr inbounds %struct.scsi_device, ptr %tmp_sdev.028, i32 0, i32 9
  %9 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %queue_depth, align 4
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp3 = icmp sgt i32 %8, %conv
  br i1 %cmp3, label %if.then5, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then5:                                         ; preds = %for.body
  %id = getelementptr inbounds %struct.scsi_device, ptr %tmp_sdev.028, i32 0, i32 16
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 8
  %13 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp7.not = icmp eq i32 %12, %14
  br i1 %cmp7.not, label %if.end, label %if.then5.for.inc_crit_edge

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %add = add nuw nsw i32 %conv, 1
  %call12 = tail call i32 @scsi_change_queue_depth(ptr noundef nonnull %tmp_sdev.028, i32 noundef %add) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %16 = ptrtoint ptr %last_ramp_up_time to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %last_ramp_up_time, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdev, align 8
  %call16 = tail call ptr @__scsi_iterate_devices(ptr noundef %18, ptr noundef nonnull %tmp_sdev.028) #13
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %for.inc.if.end17_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.if.end17_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.end17:                                         ; preds = %for.inc.if.end17_crit_edge, %if.then.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_handle_qfull(ptr nocapture noundef writeonly %itnim, ptr nocapture noundef readonly %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %last_queue_full_time = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim, i32 0, i32 14
  %1 = ptrtoint ptr %last_queue_full_time to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %last_queue_full_time, align 4
  %2 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev, align 8
  %call = tail call ptr @__scsi_iterate_devices(ptr noundef %3, ptr noundef null) #13
  %tobool.not11 = icmp eq ptr %call, null
  br i1 %tobool.not11, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %id1 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tmp_sdev.012 = phi ptr [ %call, %for.body.lr.ph ], [ %call4, %for.inc.for.body_crit_edge ]
  %id = getelementptr inbounds %struct.scsi_device, ptr %tmp_sdev.012, i32 0, i32 16
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %queue_depth = getelementptr inbounds %struct.scsi_device, ptr %tmp_sdev.012, i32 0, i32 9
  %8 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %queue_depth, align 4
  %conv = zext i16 %9 to i32
  %sub = add nsw i32 %conv, -1
  %call2 = tail call i32 @scsi_track_queue_full(ptr noundef nonnull %tmp_sdev.012, i32 noundef %sub) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 8
  %call4 = tail call ptr @__scsi_iterate_devices(ptr noundef %11, ptr noundef nonnull %tmp_sdev.012) #13
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_ioim_good_comp(ptr nocapture noundef readnone %drv, ptr noundef %dio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %dio, i32 0, i32 24
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %result, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %dio, i32 0, i32 1
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @scsi_dma_unmap(ptr noundef %dio) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %dio, i32 0, i32 23
  %5 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %host_scribble, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_lun_queue_depth to i32))
  %6 = load i32, ptr @bfa_lun_queue_depth, align 4
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %queue_depth = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %queue_depth, align 4
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp2 = icmp sgt i32 %6, %conv
  br i1 %cmp2, label %if.then4, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then4:                                         ; preds = %if.end
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 21
  %11 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hostdata, align 8
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.then4.if.end13_crit_edge, label %if.then6

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then6:                                         ; preds = %if.then4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %if.then6.if.end13_crit_edge, label %if.then9

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then9:                                         ; preds = %if.then6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %last_ramp_up_time.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %14, i32 0, i32 13
  %16 = ptrtoint ptr %last_ramp_up_time.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_ramp_up_time.i, align 4
  %sub.i = sub i32 %15, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 12000
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then9.if.end13_crit_edge

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

land.lhs.true.i:                                  ; preds = %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %last_queue_full_time.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %14, i32 0, i32 14
  %19 = ptrtoint ptr %last_queue_full_time.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_queue_full_time.i, align 4
  %sub1.i = sub i32 %18, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %sub1.i)
  %cmp2.i = icmp ugt i32 %sub1.i, 12000
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.if.end13_crit_edge

land.lhs.true.i.if.end13_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then.i:                                        ; preds = %land.lhs.true.i
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %8, align 8
  %call.i = tail call ptr @__scsi_iterate_devices(ptr noundef %22, ptr noundef null) #13
  %tobool.not27.i = icmp eq ptr %call.i, null
  br i1 %tobool.not27.i, label %if.then.i.if.end13_crit_edge, label %for.body.lr.ph.i

if.then.i.if.end13_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %id6.i = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tmp_sdev.028.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call16.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_lun_queue_depth to i32))
  %23 = load i32, ptr @bfa_lun_queue_depth, align 4
  %queue_depth.i = getelementptr inbounds %struct.scsi_device, ptr %tmp_sdev.028.i, i32 0, i32 9
  %24 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %queue_depth.i, align 4
  %conv.i = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv.i)
  %cmp3.i = icmp sgt i32 %23, %conv.i
  br i1 %cmp3.i, label %if.then5.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then5.i:                                       ; preds = %for.body.i
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %tmp_sdev.028.i, i32 0, i32 16
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id.i, align 8
  %28 = ptrtoint ptr %id6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id6.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp7.not.i = icmp eq i32 %27, %29
  br i1 %cmp7.not.i, label %if.end.i, label %if.then5.i.for.inc.i_crit_edge

if.then5.i.for.inc.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = add nuw nsw i32 %conv.i, 1
  %call12.i = tail call i32 @scsi_change_queue_depth(ptr noundef nonnull %tmp_sdev.028.i, i32 noundef %add.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %31 = ptrtoint ptr %last_ramp_up_time.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %last_ramp_up_time.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %if.then5.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %32 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %8, align 8
  %call16.i = tail call ptr @__scsi_iterate_devices(ptr noundef %33, ptr noundef nonnull %tmp_sdev.028.i) #13
  %tobool.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.end13_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end13_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.end13:                                         ; preds = %for.inc.i.if.end13_crit_edge, %if.then.i.if.end13_crit_edge, %land.lhs.true.i.if.end13_crit_edge, %if.then9.if.end13_crit_edge, %if.then6.if.end13_crit_edge, %if.then4.if.end13_crit_edge, %if.end.if.end13_crit_edge
  tail call void @scsi_done(ptr noundef %dio) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_ioim_abort(ptr nocapture noundef readonly %drv, ptr noundef %dio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %dio, i32 0, i32 24
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 458752, ptr %result, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %dio, i32 0, i32 1
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @scsi_dma_unmap(ptr noundef %dio) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %drv, i32 0, i32 30
  %5 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trcmod, align 8
  %7 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %result, align 4
  %conv = sext i32 %8 to i64
  tail call void @__bfa_trc(ptr noundef %6, i32 noundef 3074, i32 noundef 142, i64 noundef %conv) #13
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %dio, i32 0, i32 23
  %9 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %host_scribble, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_cb_tskim_done(ptr nocapture noundef readnone %bfad, ptr noundef %dtsk, i32 noundef %tsk_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %tsk_status, 1
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %dtsk, i32 0, i32 22
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %dtsk, i32 0, i32 22, i32 5
  %0 = ptrtoint ptr %Status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %Status, align 4
  %or = or i32 %1, %shl
  store volatile i32 %or, ptr %Status, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %Status) #13
  %2 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %SCp, align 4
  store ptr null, ptr %SCp, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__wake_up(ptr noundef nonnull %3, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_fcb_itnim_alloc(ptr nocapture noundef %bfad, ptr nocapture noundef writeonly %itnim, ptr nocapture noundef %itnim_drv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 256) #16
  %1 = ptrtoint ptr %itnim_drv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %itnim_drv, align 4
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %im = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 29
  %2 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %im, align 4
  %im1 = getelementptr inbounds %struct.bfad_itnim_s, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %im1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %im1, align 4
  %fcs_itnim = getelementptr inbounds %struct.bfad_itnim_s, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %itnim to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fcs_itnim, ptr %itnim, align 4
  %6 = ptrtoint ptr %itnim_drv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %itnim_drv, align 4
  %state = getelementptr inbounds %struct.bfad_itnim_s, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state, align 4
  %9 = load ptr, ptr %itnim_drv, align 4
  %itnim_work = getelementptr inbounds %struct.bfad_itnim_s, ptr %9, i32 0, i32 2
  tail call void @__init_work(ptr noundef %itnim_work, i32 noundef 0) #13
  %10 = ptrtoint ptr %itnim_drv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %itnim_drv, align 4
  %itnim_work2 = getelementptr inbounds %struct.bfad_itnim_s, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %itnim_work2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %itnim_work2, align 4
  %13 = load ptr, ptr %itnim_drv, align 4
  %lockdep_map = getelementptr inbounds %struct.bfad_itnim_s, ptr %13, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @bfa_fcb_itnim_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %14 = ptrtoint ptr %itnim_drv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %itnim_drv, align 4
  %entry5 = getelementptr inbounds %struct.bfad_itnim_s, ptr %15, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %15, i32 0, i32 2, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry5, ptr %prev.i, align 4
  %18 = load ptr, ptr %itnim_drv, align 4
  %func = getelementptr inbounds %struct.bfad_itnim_s, ptr %18, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bfad_im_itnim_work_handler, ptr %func, align 4
  %bfad_flags = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 19
  %20 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bfad_flags, align 4
  %or = or i32 %21, 64
  store i32 %or, ptr %bfad_flags, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_im_itnim_work_handler(ptr noundef %work) #0 align 64 {
entry:
  %rport_ids.i = alloca %struct.fc_rport_identifiers, align 8
  %wwpn_str = alloca [32 x i8], align 1
  %fcid_str = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -168
  %im1 = getelementptr i8, ptr %work, i32 52
  %0 = ptrtoint ptr %im1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %im1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wwpn_str) #13
  %4 = call ptr @memset(ptr %wwpn_str, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fcid_str) #13
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 20
  %5 = call ptr @memset(ptr %fcid_str, i32 255, i32 16)
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %im_port8 = getelementptr i8, ptr %work, i32 56
  %6 = ptrtoint ptr %im_port8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %im_port8, align 4
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 30
  %8 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trcmod, align 8
  %state = getelementptr i8, ptr %work, i32 48
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %conv9 = zext i32 %11 to i64
  tail call void @__bfa_trc(ptr noundef %9, i32 noundef 3074, i32 noundef 1119, i64 noundef %conv9) #13
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %13, label %do.end149 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb51
    i32 5, label %sw.bb106
  ]

sw.bb:                                            ; preds = %entry
  %fc_rport11 = getelementptr i8, ptr %work, i32 64
  %15 = ptrtoint ptr %fc_rport11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fc_rport11, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.then, label %do.end45

if.then:                                          ; preds = %sw.bb
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call5) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rport_ids.i) #13
  %17 = getelementptr inbounds %struct.fc_rport_identifiers, ptr %rport_ids.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.fc_rport_identifiers, ptr %rport_ids.i, i32 0, i32 2
  %19 = getelementptr inbounds %struct.fc_rport_identifiers, ptr %rport_ids.i, i32 0, i32 3
  %rport.i.i = getelementptr i8, ptr %work, i32 -156
  %20 = ptrtoint ptr %rport.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rport.i.i, align 4
  %nwwn.i.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %nwwn.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %nwwn.i.i, align 8
  %24 = ptrtoint ptr %rport_ids.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %rport_ids.i, align 8
  %pwwn.i.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %21, i32 0, i32 12
  %25 = ptrtoint ptr %pwwn.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pwwn.i.i, align 8
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %17, align 8
  %pid.i.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %21, i32 0, i32 4
  %28 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid.i.i, align 4
  %30 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %18, align 8
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %19, align 4
  %shost.i = getelementptr inbounds %struct.bfad_im_port_s, ptr %7, i32 0, i32 7
  %32 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %shost.i, align 4
  %call5.i = call ptr @fc_remote_port_add(ptr noundef %33, i32 noundef 0, ptr noundef nonnull %rport_ids.i) #13
  %34 = ptrtoint ptr %fc_rport11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call5.i, ptr %fc_rport11, align 4
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.then.bfad_im_fc_rport_add.exit_crit_edge, label %if.end.i

if.then.bfad_im_fc_rport_add.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfad_im_fc_rport_add.exit

if.end.i:                                         ; preds = %if.then
  %35 = ptrtoint ptr %rport.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rport.i.i, align 4
  %maxfrsize.i.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %maxfrsize.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %maxfrsize.i.i, align 4
  %conv.i.i = zext i16 %38 to i32
  %39 = ptrtoint ptr %call5.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv.i.i, ptr %call5.i, align 8
  %40 = load ptr, ptr %rport.i.i, align 4
  %fc_cos.i.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %fc_cos.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fc_cos.i.i, align 8
  %supported_classes.i = getelementptr inbounds %struct.fc_rport, ptr %call5.i, i32 0, i32 1
  %43 = ptrtoint ptr %supported_classes.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %supported_classes.i, align 4
  %dd_data.i = getelementptr inbounds %struct.fc_rport, ptr %call5.i, i32 0, i32 11
  %44 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dd_data.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr, ptr %45, align 4
  %47 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %19, align 4
  %or.i = or i32 %48, 1
  store i32 %or.i, ptr %19, align 4
  call void @fc_remote_port_rolechg(ptr noundef nonnull %call5.i, i32 noundef %or.i) #13
  %scsi_target_id.i = getelementptr inbounds %struct.fc_rport, ptr %call5.i, i32 0, i32 9
  %49 = ptrtoint ptr %scsi_target_id.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %scsi_target_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %50)
  %cmp19.i = icmp ult i32 %50, 1024
  br i1 %cmp19.i, label %if.then20.i, label %if.end.i.if.end22.i_crit_edge

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = trunc i32 %50 to i16
  %scsi_tgt_id.i = getelementptr i8, ptr %work, i32 72
  %51 = ptrtoint ptr %scsi_tgt_id.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i, ptr %scsi_tgt_id.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.end.i.if.end22.i_crit_edge
  %channel.i = getelementptr inbounds %struct.fc_rport, ptr %call5.i, i32 0, i32 12
  %52 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %channel.i, align 8
  %conv23.i = trunc i32 %53 to i16
  %channel24.i = getelementptr i8, ptr %work, i32 74
  %54 = ptrtoint ptr %channel24.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv23.i, ptr %channel24.i, align 2
  br label %bfad_im_fc_rport_add.exit

bfad_im_fc_rport_add.exit:                        ; preds = %if.end22.i, %if.then.bfad_im_fc_rport_add.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rport_ids.i) #13
  %call22 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %55 = ptrtoint ptr %rport.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rport.i.i, align 4
  %pwwn.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %56, i32 0, i32 12
  %57 = ptrtoint ptr %pwwn.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %pwwn.i, align 8
  %pid.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %56, i32 0, i32 4
  %59 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pid.i, align 4
  %w.sroa.0.0.extract.shift.i = lshr i64 %58, 56
  %w.sroa.0.0.extract.trunc.i = trunc i64 %w.sroa.0.0.extract.shift.i to i32
  %w.sroa.5.0.extract.shift.i = lshr i64 %58, 48
  %w.sroa.5.0.extract.trunc.i = trunc i64 %w.sroa.5.0.extract.shift.i to i32
  %w.sroa.6.0.extract.shift.i = lshr i64 %58, 40
  %w.sroa.6.0.extract.trunc.i = trunc i64 %w.sroa.6.0.extract.shift.i to i32
  %w.sroa.7.0.extract.shift.i = lshr i64 %58, 32
  %w.sroa.7.0.extract.trunc.i = trunc i64 %w.sroa.7.0.extract.shift.i to i32
  %61 = trunc i64 %58 to i32
  %62 = lshr i32 %61, 24
  %63 = lshr i32 %61, 16
  %64 = lshr i32 %61, 8
  %conv2.i = and i32 %w.sroa.5.0.extract.trunc.i, 255
  %conv4.i = and i32 %w.sroa.6.0.extract.trunc.i, 255
  %conv6.i = and i32 %w.sroa.7.0.extract.trunc.i, 255
  %conv10.i = and i32 %63, 255
  %conv12.i = and i32 %64, 255
  %conv14.i = and i32 %61, 255
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %wwpn_str, ptr noundef nonnull @.str.21, i32 noundef %w.sroa.0.0.extract.trunc.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %62, i32 noundef %conv10.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #13
  %f.sroa.4.0.extract.shift.i = lshr i32 %60, 16
  %f.sroa.5.0.extract.shift.i = lshr i32 %60, 8
  %conv.i217 = and i32 %f.sroa.4.0.extract.shift.i, 255
  %conv2.i218 = and i32 %f.sroa.5.0.extract.shift.i, 255
  %conv4.i219 = and i32 %60, 255
  %call.i220 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fcid_str, ptr noundef nonnull @.str.22, i32 noundef %conv.i217, i32 noundef %conv2.i218, i32 noundef %conv4.i219) #13
  %itnim_mapped_list = getelementptr inbounds %struct.bfad_im_port_s, ptr %7, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.bfad_im_port_s, ptr %7, i32 0, i32 8, i32 1
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef %66, ptr noundef %itnim_mapped_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %bfad_im_fc_rport_add.exit.list_add_tail.exit_crit_edge

bfad_im_fc_rport_add.exit.list_add_tail.exit_crit_edge: ; preds = %bfad_im_fc_rport_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %bfad_im_fc_rport_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr, ptr %prev.i, align 4
  %68 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %itnim_mapped_list, ptr %add.ptr, align 4
  %prev3.i.i = getelementptr i8, ptr %work, i32 -164
  %69 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %add.ptr, ptr %66, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %bfad_im_fc_rport_add.exit.list_add_tail.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_log_level to i32))
  %71 = load i32, ptr @bfa_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %71)
  %cmp32 = icmp eq i32 %71, 4
  br i1 %cmp32, label %do.end37, label %list_add_tail.exit.sw.epilog_crit_edge

list_add_tail.exit.sw.epilog_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end37:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 4
  %72 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %74 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %shost.i, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %75, i32 0, i32 17
  %76 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %host_no, align 4
  %scsi_tgt_id = getelementptr i8, ptr %work, i32 72
  %78 = ptrtoint ptr %scsi_tgt_id to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %scsi_tgt_id, align 4
  %conv38 = zext i16 %79 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %77, i32 noundef %conv38, ptr noundef nonnull %fcid_str, ptr noundef nonnull %wwpn_str) #17
  br label %sw.epilog

do.end45:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %rport.i221 = getelementptr i8, ptr %work, i32 -156
  %80 = ptrtoint ptr %rport.i221 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rport.i221, align 4
  %pwwn.i222 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %pwwn.i222 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %pwwn.i222, align 8
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i64 noundef %83) #17
  br label %sw.epilog

sw.bb51:                                          ; preds = %entry
  %84 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 3, ptr %state, align 4
  %fc_rport53 = getelementptr i8, ptr %work, i32 64
  %85 = ptrtoint ptr %fc_rport53 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fc_rport53, align 4
  %tobool54.not = icmp eq ptr %86, null
  br i1 %tobool54.not, label %sw.bb51.sw.epilog_crit_edge, label %if.then55

sw.bb51.sw.epilog_crit_edge:                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then55:                                        ; preds = %sw.bb51
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %86, i32 0, i32 11
  %87 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dd_data, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %88, align 4
  %90 = ptrtoint ptr %fc_rport53 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %fc_rport53, align 4
  %port = getelementptr inbounds %struct.bfad_im_port_s, ptr %7, i32 0, i32 1
  %91 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %port, align 4
  %flags59 = getelementptr inbounds %struct.bfad_port_s, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags59, align 4
  %and = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60.not = icmp eq i32 %and, 0
  br i1 %tobool60.not, label %if.then61, label %if.then55.if.end79_crit_edge

if.then55.if.end79_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then61:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call5) #13
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 2
  %call63 = tail call zeroext i16 @bfa_fcpim_path_tov_get(ptr noundef %bfa) #13
  %conv64 = zext i16 %call63 to i32
  %add = add nuw nsw i32 %conv64, 1
  %dev_loss_tmo = getelementptr inbounds %struct.fc_rport, ptr %86, i32 0, i32 2
  %95 = ptrtoint ptr %dev_loss_tmo to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add, ptr %dev_loss_tmo, align 8
  tail call void @fc_remote_port_delete(ptr noundef nonnull %86) #13
  %call74 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  br label %if.end79

if.end79:                                         ; preds = %if.then61, %if.then55.if.end79_crit_edge
  %flags.0 = phi i32 [ %call5, %if.then55.if.end79_crit_edge ], [ %call74, %if.then61 ]
  %rport.i223 = getelementptr i8, ptr %work, i32 -156
  %96 = ptrtoint ptr %rport.i223 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rport.i223, align 4
  %pwwn.i224 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %97, i32 0, i32 12
  %98 = ptrtoint ptr %pwwn.i224 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %pwwn.i224, align 8
  %pid.i226 = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %97, i32 0, i32 4
  %100 = ptrtoint ptr %pid.i226 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pid.i226, align 4
  %w.sroa.0.0.extract.shift.i227 = lshr i64 %99, 56
  %w.sroa.0.0.extract.trunc.i228 = trunc i64 %w.sroa.0.0.extract.shift.i227 to i32
  %w.sroa.5.0.extract.shift.i229 = lshr i64 %99, 48
  %w.sroa.5.0.extract.trunc.i230 = trunc i64 %w.sroa.5.0.extract.shift.i229 to i32
  %w.sroa.6.0.extract.shift.i231 = lshr i64 %99, 40
  %w.sroa.6.0.extract.trunc.i232 = trunc i64 %w.sroa.6.0.extract.shift.i231 to i32
  %w.sroa.7.0.extract.shift.i233 = lshr i64 %99, 32
  %w.sroa.7.0.extract.trunc.i234 = trunc i64 %w.sroa.7.0.extract.shift.i233 to i32
  %102 = trunc i64 %99 to i32
  %103 = lshr i32 %102, 24
  %104 = lshr i32 %102, 16
  %105 = lshr i32 %102, 8
  %conv2.i235 = and i32 %w.sroa.5.0.extract.trunc.i230, 255
  %conv4.i236 = and i32 %w.sroa.6.0.extract.trunc.i232, 255
  %conv6.i237 = and i32 %w.sroa.7.0.extract.trunc.i234, 255
  %conv10.i238 = and i32 %104, 255
  %conv12.i239 = and i32 %105, 255
  %conv14.i240 = and i32 %102, 255
  %call.i241 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %wwpn_str, ptr noundef nonnull @.str.21, i32 noundef %w.sroa.0.0.extract.trunc.i228, i32 noundef %conv2.i235, i32 noundef %conv4.i236, i32 noundef %conv6.i237, i32 noundef %103, i32 noundef %conv10.i238, i32 noundef %conv12.i239, i32 noundef %conv14.i240) #13
  %f.sroa.4.0.extract.shift.i242 = lshr i32 %101, 16
  %f.sroa.5.0.extract.shift.i243 = lshr i32 %101, 8
  %conv.i244 = and i32 %f.sroa.4.0.extract.shift.i242, 255
  %conv2.i245 = and i32 %f.sroa.5.0.extract.shift.i243, 255
  %conv4.i246 = and i32 %101, 255
  %call.i247 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fcid_str, ptr noundef nonnull @.str.22, i32 noundef %conv.i244, i32 noundef %conv2.i245, i32 noundef %conv4.i246) #13
  %call.i.i248 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #13
  br i1 %call.i.i248, label %if.end.i.i249, label %if.end79.list_del.exit_crit_edge

if.end79.list_del.exit_crit_edge:                 ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i249:                                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr i8, ptr %work, i32 -164
  %106 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i.i, align 4
  %108 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev1.i.i.i, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %109, ptr %107, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i249, %if.end79.list_del.exit_crit_edge
  %112 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i250 = getelementptr i8, ptr %work, i32 -164
  %113 = ptrtoint ptr %prev.i250 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i250, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_log_level to i32))
  %114 = load i32, ptr @bfa_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %114)
  %cmp88 = icmp eq i32 %114, 4
  br i1 %cmp88, label %do.end93, label %list_del.exit.sw.epilog_crit_edge

list_del.exit.sw.epilog_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end93:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %pcidev94 = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 4
  %115 = ptrtoint ptr %pcidev94 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pcidev94, align 8
  %dev95 = getelementptr inbounds %struct.pci_dev, ptr %116, i32 0, i32 44
  %shost96 = getelementptr inbounds %struct.bfad_im_port_s, ptr %7, i32 0, i32 7
  %117 = ptrtoint ptr %shost96 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %shost96, align 4
  %host_no97 = getelementptr inbounds %struct.Scsi_Host, ptr %118, i32 0, i32 17
  %119 = ptrtoint ptr %host_no97 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %host_no97, align 4
  %scsi_tgt_id98 = getelementptr i8, ptr %work, i32 72
  %121 = ptrtoint ptr %scsi_tgt_id98 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %scsi_tgt_id98, align 4
  %conv99 = zext i16 %122 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev95, ptr noundef nonnull @.str.53, i32 noundef %120, i32 noundef %conv99, ptr noundef nonnull %fcid_str, ptr noundef nonnull %wwpn_str) #17
  br label %sw.epilog

sw.bb106:                                         ; preds = %entry
  %fc_rport107 = getelementptr i8, ptr %work, i32 64
  %123 = ptrtoint ptr %fc_rport107 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %fc_rport107, align 4
  %tobool108.not = icmp eq ptr %124, null
  br i1 %tobool108.not, label %sw.bb106.if.end141_crit_edge, label %if.then109

sw.bb106.if.end141_crit_edge:                     ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

if.then109:                                       ; preds = %sw.bb106
  %dd_data111 = getelementptr inbounds %struct.fc_rport, ptr %124, i32 0, i32 11
  %125 = ptrtoint ptr %dd_data111 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dd_data111, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %126, align 4
  %128 = ptrtoint ptr %fc_rport107 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %fc_rport107, align 4
  %port114 = getelementptr inbounds %struct.bfad_im_port_s, ptr %7, i32 0, i32 1
  %129 = ptrtoint ptr %port114 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %port114, align 4
  %flags115 = getelementptr inbounds %struct.bfad_port_s, ptr %130, i32 0, i32 4
  %131 = ptrtoint ptr %flags115 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %flags115, align 4
  %and116 = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.then118, label %if.then109.if.end139_crit_edge

if.then109.if.end139_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139

if.then118:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call5) #13
  %bfa120 = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 2
  %call121 = tail call zeroext i16 @bfa_fcpim_path_tov_get(ptr noundef %bfa120) #13
  %conv122 = zext i16 %call121 to i32
  %add123 = add nuw nsw i32 %conv122, 1
  %dev_loss_tmo124 = getelementptr inbounds %struct.fc_rport, ptr %124, i32 0, i32 2
  %133 = ptrtoint ptr %dev_loss_tmo124 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %add123, ptr %dev_loss_tmo124, align 8
  tail call void @fc_remote_port_delete(ptr noundef nonnull %124) #13
  %call134 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  br label %if.end139

if.end139:                                        ; preds = %if.then118, %if.then109.if.end139_crit_edge
  %flags.1 = phi i32 [ %call5, %if.then109.if.end139_crit_edge ], [ %call134, %if.then118 ]
  %call.i.i251 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #13
  br i1 %call.i.i251, label %if.end.i.i254, label %if.end139.list_del.exit256_crit_edge

if.end139.list_del.exit256_crit_edge:             ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit256

if.end.i.i254:                                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i252 = getelementptr i8, ptr %work, i32 -164
  %134 = ptrtoint ptr %prev.i.i252 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i.i252, align 4
  %136 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i253 = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %prev1.i.i.i253 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev1.i.i.i253, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %137, ptr %135, align 4
  br label %list_del.exit256

list_del.exit256:                                 ; preds = %if.end.i.i254, %if.end139.list_del.exit256_crit_edge
  %140 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i255 = getelementptr i8, ptr %work, i32 -164
  %141 = ptrtoint ptr %prev.i255 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i255, align 4
  br label %if.end141

if.end141:                                        ; preds = %list_del.exit256, %sw.bb106.if.end141_crit_edge
  %flags.2 = phi i32 [ %flags.1, %list_del.exit256 ], [ %call5, %sw.bb106.if.end141_crit_edge ]
  tail call void @kfree(ptr noundef %add.ptr) #13
  br label %sw.epilog

do.end149:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1192, i32 noundef 9, ptr noundef null) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end149, %if.end141, %do.end93, %list_del.exit.sw.epilog_crit_edge, %sw.bb51.sw.epilog_crit_edge, %do.end45, %do.end37, %list_add_tail.exit.sw.epilog_crit_edge
  %flags.3 = phi i32 [ %call5, %do.end149 ], [ %flags.2, %if.end141 ], [ %flags.0, %do.end93 ], [ %flags.0, %list_del.exit.sw.epilog_crit_edge ], [ %call5, %sw.bb51.sw.epilog_crit_edge ], [ %call5, %do.end45 ], [ %call22, %do.end37 ], [ %call22, %list_add_tail.exit.sw.epilog_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %flags.3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fcid_str) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wwpn_str) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcb_itnim_free(ptr nocapture noundef readonly %bfad, ptr noundef %itnim_drv) local_unnamed_addr #0 align 64 {
entry:
  %wwpn_str = alloca [32 x i8], align 1
  %fcid_str = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wwpn_str) #13
  %0 = call ptr @memset(ptr %wwpn_str, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fcid_str) #13
  %im1 = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 5
  %1 = call ptr @memset(ptr %fcid_str, i32 255, i32 16)
  %2 = ptrtoint ptr %im1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %im1, align 4
  %state = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !143

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 459, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %queue_work = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 12
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp21 = icmp ne i32 %7, 2
  %spec.store.select = zext i1 %cmp21 to i16
  %8 = ptrtoint ptr %queue_work to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %spec.store.select, ptr %queue_work, align 4
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %state, align 4
  %rport.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rport.i, align 4
  %port.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port.i, align 8
  %bfad_port.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %bfad_port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bfad_port.i, align 8
  %im_port = getelementptr inbounds %struct.bfad_port_s, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %im_port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %im_port, align 4
  %im_port26 = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 6
  %18 = ptrtoint ptr %im_port26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %im_port26, align 4
  %pwwn.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %11, i32 0, i32 12
  %19 = ptrtoint ptr %pwwn.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %pwwn.i, align 8
  %pid.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %11, i32 0, i32 4
  %21 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid.i, align 4
  %w.sroa.0.0.extract.shift.i = lshr i64 %20, 56
  %w.sroa.0.0.extract.trunc.i = trunc i64 %w.sroa.0.0.extract.shift.i to i32
  %w.sroa.5.0.extract.shift.i = lshr i64 %20, 48
  %w.sroa.5.0.extract.trunc.i = trunc i64 %w.sroa.5.0.extract.shift.i to i32
  %w.sroa.6.0.extract.shift.i = lshr i64 %20, 40
  %w.sroa.6.0.extract.trunc.i = trunc i64 %w.sroa.6.0.extract.shift.i to i32
  %w.sroa.7.0.extract.shift.i = lshr i64 %20, 32
  %w.sroa.7.0.extract.trunc.i = trunc i64 %w.sroa.7.0.extract.shift.i to i32
  %23 = trunc i64 %20 to i32
  %24 = lshr i32 %23, 24
  %25 = lshr i32 %23, 16
  %26 = lshr i32 %23, 8
  %conv2.i = and i32 %w.sroa.5.0.extract.trunc.i, 255
  %conv4.i = and i32 %w.sroa.6.0.extract.trunc.i, 255
  %conv6.i = and i32 %w.sroa.7.0.extract.trunc.i, 255
  %conv10.i = and i32 %25, 255
  %conv12.i = and i32 %26, 255
  %conv14.i = and i32 %23, 255
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %wwpn_str, ptr noundef nonnull @.str.21, i32 noundef %w.sroa.0.0.extract.trunc.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %24, i32 noundef %conv10.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #13
  %f.sroa.4.0.extract.shift.i = lshr i32 %22, 16
  %f.sroa.5.0.extract.shift.i = lshr i32 %22, 8
  %conv.i = and i32 %f.sroa.4.0.extract.shift.i, 255
  %conv2.i64 = and i32 %f.sroa.5.0.extract.shift.i, 255
  %conv4.i65 = and i32 %22, 255
  %call.i66 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fcid_str, ptr noundef nonnull @.str.22, i32 noundef %conv.i, i32 noundef %conv2.i64, i32 noundef %conv4.i65) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_log_level to i32))
  %27 = load i32, ptr @bfa_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp33 = icmp eq i32 %27, 4
  br i1 %cmp33, label %do.end37, label %if.end.do.end43_crit_edge

if.end.do.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end43

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %28 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %im_port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %im_port, align 4
  %shost = getelementptr inbounds %struct.bfad_im_port_s, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %shost, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %host_no, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %35, ptr noundef nonnull %fcid_str, ptr noundef nonnull %wwpn_str) #17
  br label %do.end43

do.end43:                                         ; preds = %do.end37, %if.end.do.end43_crit_edge
  %36 = ptrtoint ptr %queue_work to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %queue_work, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool45.not = icmp eq i16 %37, 0
  br i1 %tobool45.not, label %do.end43.if.end48_crit_edge, label %if.then46

do.end43.if.end48_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then46:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #15
  %drv_workq = getelementptr inbounds %struct.bfad_im_s, ptr %3, i32 0, i32 1
  %38 = ptrtoint ptr %drv_workq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %drv_workq, align 4
  %itnim_work = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 2
  %call.i67 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %itnim_work) #13
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %do.end43.if.end48_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fcid_str) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wwpn_str) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcb_itnim_online(ptr noundef %itnim_drv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %im1 = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 5
  %0 = ptrtoint ptr %im1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %im1, align 4
  %bfa_itnim.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bfa_itnim.i, align 4
  %bfa_itnim = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 9
  %4 = ptrtoint ptr %bfa_itnim to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %bfa_itnim, align 4
  %rport.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rport.i, align 4
  %port.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port.i, align 8
  %bfad_port.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %bfad_port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bfad_port.i, align 8
  %state = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %state, align 4
  %queue_work = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 12
  %12 = ptrtoint ptr %queue_work to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %queue_work, align 4
  %im_port = getelementptr inbounds %struct.bfad_port_s, ptr %10, i32 0, i32 7
  %13 = ptrtoint ptr %im_port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %im_port, align 4
  %im_port4 = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 6
  %15 = ptrtoint ptr %im_port4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %im_port4, align 4
  %drv_workq = getelementptr inbounds %struct.bfad_im_s, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %drv_workq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drv_workq, align 4
  %itnim_work = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %itnim_work) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_fcb_itnim_offline(ptr noundef %itnim_drv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %im1 = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 5
  %0 = ptrtoint ptr %im1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %im1, align 4
  %rport.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rport.i, align 4
  %port.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port.i, align 8
  %bfad_port.i = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %bfad_port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bfad_port.i, align 8
  %bfad2 = getelementptr inbounds %struct.bfad_port_s, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bfad2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bfad2, align 4
  %flags = getelementptr inbounds %struct.bfad_s, ptr %9, i32 0, i32 15, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %flags3 = getelementptr inbounds %struct.bfad_port_s, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags3, align 4
  %and4 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %state = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 4
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %state, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %im_port = getelementptr inbounds %struct.bfad_port_s, ptr %7, i32 0, i32 7
  %15 = ptrtoint ptr %im_port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %im_port, align 4
  %im_port6 = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 6
  %17 = ptrtoint ptr %im_port6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %im_port6, align 4
  %state7 = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 4
  %18 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %state7, align 4
  %queue_work = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 12
  %19 = ptrtoint ptr %queue_work to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %queue_work, align 4
  %drv_workq = getelementptr inbounds %struct.bfad_im_s, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %drv_workq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %drv_workq, align 4
  %itnim_work = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim_drv, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %itnim_work) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_im_scsi_host_alloc(ptr nocapture noundef readonly %bfad, ptr noundef %im_port, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bfad_mutex, i32 noundef 0) #13
  %call = tail call i32 @idr_alloc(ptr noundef nonnull @bfad_im_port_index, ptr noundef %im_port, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @bfad_mutex) #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %idr_id = getelementptr inbounds %struct.bfad_im_port_s, ptr %im_port, i32 0, i32 3
  %0 = ptrtoint ptr %idr_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %idr_id, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @bfad_mutex) #13
  %port.i = getelementptr inbounds %struct.bfad_im_port_s, ptr %im_port, i32 0, i32 1
  %1 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port.i, align 4
  %pvb_type.i = getelementptr inbounds %struct.bfad_port_s, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %pvb_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pvb_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_xfer_size to i32))
  %5 = load i32, ptr @max_xfer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %5)
  %cmp1.not.i = icmp eq i32 %5, 32767
  br i1 %cmp1.not.i, label %if.end.bfad_scsi_host_alloc.exit_crit_edge, label %if.then2.i

if.end.bfad_scsi_host_alloc.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfad_scsi_host_alloc.exit

if.then2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i = shl i32 %5, 1
  %max_sectors.i = select i1 %cmp.i, ptr getelementptr inbounds (%struct.scsi_host_template, ptr @bfad_im_scsi_host_template, i32 0, i32 38), ptr getelementptr inbounds (%struct.scsi_host_template, ptr @bfad_im_vport_template, i32 0, i32 38)
  %6 = ptrtoint ptr %max_sectors.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl.i, ptr %max_sectors.i, align 4
  br label %bfad_scsi_host_alloc.exit

bfad_scsi_host_alloc.exit:                        ; preds = %if.then2.i, %if.end.bfad_scsi_host_alloc.exit_crit_edge
  %bfad_im_scsi_host_template.bfad_im_vport_template.i = select i1 %cmp.i, ptr @bfad_im_scsi_host_template, ptr @bfad_im_vport_template
  %io_max_sge.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 22, i32 3
  %7 = ptrtoint ptr %io_max_sge.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_max_sge.i, align 4
  %conv.i = trunc i32 %8 to i16
  %sg_tablesize.i = select i1 %cmp.i, ptr getelementptr inbounds (%struct.scsi_host_template, ptr @bfad_im_scsi_host_template, i32 0, i32 36), ptr getelementptr inbounds (%struct.scsi_host_template, ptr @bfad_im_vport_template, i32 0, i32 36)
  %9 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %sg_tablesize.i, align 8
  %call.i = tail call ptr @scsi_host_alloc(ptr noundef nonnull %bfad_im_scsi_host_template.bfad_im_vport_template.i, i32 noundef 4) #13
  %shost = getelementptr inbounds %struct.bfad_im_port_s, ptr %im_port, i32 0, i32 7
  %10 = ptrtoint ptr %shost to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %shost, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %bfad_scsi_host_alloc.exit.out_free_idr_crit_edge, label %if.end5

bfad_scsi_host_alloc.exit.out_free_idr_crit_edge: ; preds = %bfad_scsi_host_alloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_idr

if.end5:                                          ; preds = %bfad_scsi_host_alloc.exit
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 53
  %11 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %im_port, ptr %hostdata.i, align 4
  %12 = ptrtoint ptr %idr_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idr_id, align 4
  %14 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shost, align 4
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 23
  %16 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %unique_id, align 8
  %17 = load ptr, ptr %shost, align 4
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %this_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %this_id, align 8
  %19 = load ptr, ptr %shost, align 4
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 21
  %20 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1024, ptr %max_id, align 4
  %21 = load ptr, ptr %shost, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 22
  %22 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 16384, ptr %max_lun, align 8
  %23 = load ptr, ptr %shost, align 4
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 24
  %24 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 16, ptr %max_cmd_len, align 4
  %ioc_queue_depth = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 22, i32 1
  %25 = ptrtoint ptr %ioc_queue_depth to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ioc_queue_depth, align 4
  %27 = load ptr, ptr %shost, align 4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %27, i32 0, i32 26
  %28 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %can_queue, align 4
  %29 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port.i, align 4
  %pvb_type = getelementptr inbounds %struct.bfad_port_s, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %pvb_type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pvb_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp15 = icmp eq i32 %32, 0
  %bfad_im_scsi_transport_template.val = load ptr, ptr @bfad_im_scsi_transport_template, align 4
  %bfad_im_scsi_vport_transport_template.val = load ptr, ptr @bfad_im_scsi_vport_transport_template, align 4
  %33 = select i1 %cmp15, ptr %bfad_im_scsi_transport_template.val, ptr %bfad_im_scsi_vport_transport_template.val
  %34 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %shost, align 4
  %transportt19 = getelementptr inbounds %struct.Scsi_Host, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %transportt19 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %transportt19, align 4
  %37 = load ptr, ptr %shost, align 4
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %38 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcidev, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %call23 = tail call i32 @scsi_add_host_with_dma(ptr noundef %37, ptr noundef %dev, ptr noundef %dev22) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end5.cleanup_crit_edge, label %do.end28

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end28:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call23) #17
  %40 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %shost, align 4
  tail call void @scsi_host_put(ptr noundef %41) #13
  %42 = ptrtoint ptr %shost to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %shost, align 4
  br label %out_free_idr

out_free_idr:                                     ; preds = %do.end28, %bfad_scsi_host_alloc.exit.out_free_idr_crit_edge
  %error.0 = phi i32 [ %call23, %do.end28 ], [ 1, %bfad_scsi_host_alloc.exit.out_free_idr_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @bfad_mutex, i32 noundef 0) #13
  %43 = ptrtoint ptr %idr_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %idr_id, align 4
  %call35 = tail call ptr @idr_remove(ptr noundef nonnull @bfad_im_port_index, i32 noundef %44) #13
  tail call void @mutex_unlock(ptr noundef nonnull @bfad_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %out_free_idr, %if.end5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end5.cleanup_crit_edge ], [ %call, %if.then ], [ %error.0, %out_free_idr ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bfad_scsi_host_alloc(ptr nocapture noundef readonly %im_port, ptr nocapture noundef readonly %bfad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.bfad_im_port_s, ptr %im_port, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %pvb_type = getelementptr inbounds %struct.bfad_port_s, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pvb_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pvb_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_xfer_size to i32))
  %4 = load i32, ptr @max_xfer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %4)
  %cmp1.not = icmp eq i32 %4, 32767
  br i1 %cmp1.not, label %entry.if.end3_crit_edge, label %if.then2

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %shl = shl i32 %4, 1
  %max_sectors = select i1 %cmp, ptr getelementptr inbounds (%struct.scsi_host_template, ptr @bfad_im_scsi_host_template, i32 0, i32 38), ptr getelementptr inbounds (%struct.scsi_host_template, ptr @bfad_im_vport_template, i32 0, i32 38)
  %5 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl, ptr %max_sectors, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %entry.if.end3_crit_edge
  %bfad_im_scsi_host_template.bfad_im_vport_template = select i1 %cmp, ptr @bfad_im_scsi_host_template, ptr @bfad_im_vport_template
  %io_max_sge = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 22, i32 3
  %6 = ptrtoint ptr %io_max_sge to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_max_sge, align 4
  %conv = trunc i32 %7 to i16
  %sg_tablesize = select i1 %cmp, ptr getelementptr inbounds (%struct.scsi_host_template, ptr @bfad_im_scsi_host_template, i32 0, i32 36), ptr getelementptr inbounds (%struct.scsi_host_template, ptr @bfad_im_vport_template, i32 0, i32 36)
  %8 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %sg_tablesize, align 8
  %call = tail call ptr @scsi_host_alloc(ptr noundef nonnull %bfad_im_scsi_host_template.bfad_im_vport_template, i32 noundef 4) #13
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_im_scsi_host_free(ptr nocapture noundef readonly %bfad, ptr nocapture noundef readonly %im_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 30
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 8
  %inst_no = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 18
  %2 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inst_no, align 8
  %conv = zext i32 %3 to i64
  tail call void @__bfa_trc(ptr noundef %1, i32 noundef 3074, i32 noundef 593, i64 noundef %conv) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_log_level to i32))
  %4 = load i32, ptr @bfa_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 4
  %5 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %shost = getelementptr inbounds %struct.bfad_im_port_s, ptr %im_port, i32 0, i32 7
  %7 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shost, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %host_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %10) #17
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %shost4 = getelementptr inbounds %struct.bfad_im_port_s, ptr %im_port, i32 0, i32 7
  %11 = ptrtoint ptr %shost4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shost4, align 4
  tail call void @fc_remove_host(ptr noundef %12) #13
  %13 = ptrtoint ptr %shost4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shost4, align 4
  tail call void @scsi_remove_host(ptr noundef %14) #13
  %15 = ptrtoint ptr %shost4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shost4, align 4
  tail call void @scsi_host_put(ptr noundef %16) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @bfad_mutex, i32 noundef 0) #13
  %idr_id = getelementptr inbounds %struct.bfad_im_port_s, ptr %im_port, i32 0, i32 3
  %17 = ptrtoint ptr %idr_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idr_id, align 4
  %call = tail call ptr @idr_remove(ptr noundef nonnull @bfad_im_port_index, i32 noundef %18) #13
  tail call void @mutex_unlock(ptr noundef nonnull @bfad_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_im_port_new(ptr noundef %bfad, ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 84) #16
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.ext_crit_edge, label %if.end

entry.ext_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ext

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %im_port1 = getelementptr inbounds %struct.bfad_port_s, ptr %port, i32 0, i32 7
  %1 = ptrtoint ptr %im_port1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %im_port1, align 4
  %port2 = getelementptr inbounds %struct.bfad_im_port_s, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %port, ptr %port2, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bfad, ptr %call7.i.i, align 8
  %port_delete_work = getelementptr inbounds %struct.bfad_im_port_s, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %port_delete_work, i32 noundef 0) #13
  %4 = ptrtoint ptr %port_delete_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %port_delete_work, align 8
  %lockdep_map = getelementptr inbounds %struct.bfad_im_port_s, ptr %call7.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @bfad_im_port_new.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry7 = getelementptr inbounds %struct.bfad_im_port_s, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.bfad_im_port_s, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry7, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.bfad_im_port_s, ptr %call7.i.i, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bfad_im_port_delete_handler, ptr %func, align 4
  %itnim_mapped_list = getelementptr inbounds %struct.bfad_im_port_s, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %itnim_mapped_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %itnim_mapped_list, ptr %itnim_mapped_list, align 8
  %prev.i20 = getelementptr inbounds %struct.bfad_im_port_s, ptr %call7.i.i, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %prev.i20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %itnim_mapped_list, ptr %prev.i20, align 4
  %binding_list = getelementptr inbounds %struct.bfad_im_port_s, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %binding_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %binding_list, ptr %binding_list, align 4
  %prev.i21 = getelementptr inbounds %struct.bfad_im_port_s, ptr %call7.i.i, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %binding_list, ptr %prev.i21, align 8
  br label %ext

ext:                                              ; preds = %if.end, %entry.ext_crit_edge
  %rc.0 = phi i32 [ 0, %if.end ], [ 3, %entry.ext_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_im_port_delete_handler(ptr nocapture noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %pvb_type = getelementptr inbounds %struct.bfad_port_s, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pvb_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pvb_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr i8, ptr %work, i32 50
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %6 = or i16 %5, 1
  store i16 %6, ptr %flags, align 2
  %fc_vport = getelementptr i8, ptr %work, i32 72
  %7 = ptrtoint ptr %fc_vport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fc_vport, align 4
  %call = tail call i32 @fc_vport_terminate(ptr noundef %8) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_im_port_delete(ptr nocapture noundef readonly %bfad, ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %im_port1 = getelementptr inbounds %struct.bfad_port_s, ptr %port, i32 0, i32 7
  %0 = ptrtoint ptr %im_port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %im_port1, align 4
  %im = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 29
  %2 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %im, align 4
  %drv_workq = getelementptr inbounds %struct.bfad_im_s, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %drv_workq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_workq, align 4
  %port_delete_work = getelementptr inbounds %struct.bfad_im_port_s, ptr %1, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %port_delete_work) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_im_port_clean(ptr noundef %im_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %im_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %im_port, align 4
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 20
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %binding_list = getelementptr inbounds %struct.bfad_im_port_s, ptr %im_port, i32 0, i32 6
  %2 = ptrtoint ptr %binding_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %binding_list, align 4
  %cmp13.not57 = icmp eq ptr %3, %binding_list
  br i1 %cmp13.not57, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %bp.058 = phi ptr [ %bp_new.0, %list_del.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %bp.058 to i32
  call void @__asan_load4_noabort(i32 %4)
  %bp_new.0 = load ptr, ptr %bp.058, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bp.058) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %bp.058, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %bp.058 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bp.058, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %bp.058 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %bp.058, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %bp.058, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %bp.058) #13
  %cmp13.not = icmp eq ptr %bp_new.0, %binding_list
  br i1 %cmp13.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %itnim_mapped_list = getelementptr inbounds %struct.bfad_im_port_s, ptr %im_port, i32 0, i32 8
  %13 = ptrtoint ptr %itnim_mapped_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %itnim_mapped_list, align 4
  %cmp.i.not = icmp eq ptr %14, %itnim_mapped_list
  br i1 %cmp.i.not, label %for.end.if.end_crit_edge, label %do.end34, !prof !144

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end34:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 666, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end34, %for.end.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_im_probe(ptr noundef %bfad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #16
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %im1 = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 29
  %1 = ptrtoint ptr %im1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %im1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %bfad, ptr %call7.i.i, align 8
  %trcmod.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 30
  %3 = ptrtoint ptr %trcmod.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trcmod.i, align 8
  tail call void @__bfa_trc(ptr noundef %4, i32 noundef 3074, i32 noundef 770, i64 noundef 0) #13
  %drv_workq_name.i = getelementptr inbounds %struct.bfad_im_s, ptr %call7.i.i, i32 0, i32 2
  %inst_no.i = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 18
  %5 = ptrtoint ptr %inst_no.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inst_no.i, align 8
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %drv_workq_name.i, i32 noundef 20, ptr noundef nonnull @.str.16, i32 noundef %6) #13
  %call4.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.17, i32 noundef 917514, i32 noundef 1, ptr noundef %drv_workq_name.i) #13
  %drv_workq.i = getelementptr inbounds %struct.bfad_im_s, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %drv_workq.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4.i, ptr %drv_workq.i, align 4
  %tobool.not.i.not = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i.not, label %if.then5, label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %aen_im_notify_work = getelementptr inbounds %struct.bfad_im_s, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %aen_im_notify_work, i32 noundef 0) #13
  %8 = ptrtoint ptr %aen_im_notify_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %aen_im_notify_work, align 4
  %lockdep_map = getelementptr inbounds %struct.bfad_im_s, ptr %call7.i.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @bfad_im_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry10 = getelementptr inbounds %struct.bfad_im_s, ptr %call7.i.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry10, ptr %entry10, align 8
  %prev.i = getelementptr inbounds %struct.bfad_im_s, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bfad_im_s, ptr %call7.i.i, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bfad_aen_im_notify_handler, ptr %func, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then5 ], [ 0, %do.body ], [ 3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_thread_workq(ptr nocapture noundef readonly %bfad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %im1 = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 29
  %0 = ptrtoint ptr %im1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %im1, align 4
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 30
  %2 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trcmod, align 8
  tail call void @__bfa_trc(ptr noundef %3, i32 noundef 3074, i32 noundef 770, i64 noundef 0) #13
  %drv_workq_name = getelementptr inbounds %struct.bfad_im_s, ptr %1, i32 0, i32 2
  %inst_no = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 18
  %4 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inst_no, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %drv_workq_name, i32 noundef 20, ptr noundef nonnull @.str.16, i32 noundef %5)
  %call4 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.17, i32 noundef 917514, i32 noundef 1, ptr noundef %drv_workq_name) #13
  %drv_workq = getelementptr inbounds %struct.bfad_im_s, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %drv_workq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %drv_workq, align 4
  %tobool.not = icmp eq ptr %call4, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_aen_im_notify_handler(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -28
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %im_port = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 15, i32 7
  %2 = ptrtoint ptr %im_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %im_port, align 4
  %shost2 = getelementptr inbounds %struct.bfad_im_port_s, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %shost2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost2, align 4
  %active_aen_q = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 40
  %6 = ptrtoint ptr %active_aen_q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %active_aen_q, align 4
  %cmp.i.not55 = icmp eq ptr %7, %active_aen_q
  br i1 %cmp.i.not55, label %entry.while.end_crit_edge, label %do.body3.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.body3.lr.ph:                                   ; preds = %entry
  %bfad_aen_spinlock = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 42
  %free_aen_q = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 39
  %prev.i = getelementptr inbounds %struct.bfad_s, ptr %1, i32 0, i32 39, i32 1
  br label %do.body3

do.body3:                                         ; preds = %list_add_tail.exit.do.body3_crit_edge, %do.body3.lr.ph
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_aen_spinlock) #13
  %8 = ptrtoint ptr %active_aen_q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %active_aen_q, align 4
  %cmp.i53.not = icmp eq ptr %9, %active_aen_q
  br i1 %cmp.i53.not, label %do.body3.do.end20_crit_edge, label %if.then

do.body3.do.end20_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end20

if.then:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %prev = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %active_aen_q, ptr %prev, align 4
  %13 = load ptr, ptr %9, align 4
  %14 = ptrtoint ptr %active_aen_q to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %active_aen_q, align 4
  br label %do.end20

do.end20:                                         ; preds = %if.then, %do.body3.do.end20_crit_edge
  %aen_entry.0 = phi ptr [ %9, %if.then ], [ null, %do.body3.do.end20_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_aen_spinlock, i32 noundef %call6) #13
  %add.ptr22 = getelementptr i8, ptr %aen_entry.0, i32 8
  %call23 = tail call i32 @fc_get_event_number() #13
  tail call void @fc_host_post_vendor_event(ptr noundef %5, i32 noundef %call23, i32 noundef 72, ptr noundef %add.ptr22, i64 noundef 72057594037933655) #13
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_aen_spinlock) #13
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %aen_entry.0, ptr noundef %16, ptr noundef %free_aen_q) #13
  br i1 %call.i.i, label %if.end.i.i, label %do.end20.list_add_tail.exit_crit_edge

do.end20.list_add_tail.exit_crit_edge:            ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %aen_entry.0, ptr %prev.i, align 4
  %18 = ptrtoint ptr %aen_entry.0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %free_aen_q, ptr %aen_entry.0, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %aen_entry.0, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %aen_entry.0, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end20.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_aen_spinlock, i32 noundef %call33) #13
  %21 = ptrtoint ptr %active_aen_q to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %active_aen_q, align 4
  %cmp.i.not = icmp eq ptr %22, %active_aen_q
  br i1 %cmp.i.not, label %list_add_tail.exit.while.end_crit_edge, label %list_add_tail.exit.do.body3_crit_edge

list_add_tail.exit.do.body3_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3

list_add_tail.exit.while.end_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %list_add_tail.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_im_probe_undo(ptr nocapture noundef %bfad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %im = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 29
  %0 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %im, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %drv_workq.i = getelementptr inbounds %struct.bfad_im_s, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drv_workq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_workq.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.bfad_destroy_workq.exit_crit_edge, label %if.then.i

land.lhs.true.i.bfad_destroy_workq.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfad_destroy_workq.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @flush_workqueue(ptr noundef nonnull %3) #13
  %4 = ptrtoint ptr %drv_workq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_workq.i, align 4
  tail call void @destroy_workqueue(ptr noundef %5) #13
  %6 = ptrtoint ptr %drv_workq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %drv_workq.i, align 4
  br label %bfad_destroy_workq.exit

bfad_destroy_workq.exit:                          ; preds = %if.then.i, %land.lhs.true.i.bfad_destroy_workq.exit_crit_edge
  %7 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %im, align 4
  tail call void @kfree(ptr noundef %8) #13
  %9 = ptrtoint ptr %im to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %im, align 4
  br label %if.end

if.end:                                           ; preds = %bfad_destroy_workq.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_destroy_workq(ptr noundef %im) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %im, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %drv_workq = getelementptr inbounds %struct.bfad_im_s, ptr %im, i32 0, i32 1
  %0 = ptrtoint ptr %drv_workq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_workq, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @flush_workqueue(ptr noundef nonnull %1) #13
  %2 = ptrtoint ptr %drv_workq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_workq, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #13
  %4 = ptrtoint ptr %drv_workq to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %drv_workq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_scsi_host_free(ptr nocapture noundef readonly %bfad, ptr noundef %im_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.bfad_im_port_s, ptr %im_port, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %im = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 29
  %3 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %im, align 4
  %drv_workq = getelementptr inbounds %struct.bfad_im_s, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %drv_workq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv_workq, align 4
  tail call void @flush_workqueue(ptr noundef %6) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %im_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %im_port, align 4
  tail call void @bfad_im_scsi_host_free(ptr noundef %8, ptr noundef %im_port)
  tail call void @bfad_im_port_clean(ptr noundef %im_port)
  tail call void @kfree(ptr noundef %im_port) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_queuecommand(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #13
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hostdata.i, align 8
  %8 = inttoptr i32 %7 to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %hostdata3.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 21
  %11 = ptrtoint ptr %hostdata3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hostdata3.i, align 8
  %parent.i.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 55, i32 1
  %13 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i.i, align 8
  %parent.i = getelementptr i8, ptr %14, i32 136
  %15 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i, align 8
  %call5.i = tail call i32 @scsi_is_fc_rport(ptr noundef %16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %entry.cond.end.i_crit_edge, label %cond.true.i

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device.i, align 4
  %parent.i112.i = getelementptr inbounds %struct.scsi_device, ptr %18, i32 0, i32 55, i32 1
  %19 = ptrtoint ptr %parent.i112.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i112.i, align 8
  %parent9.i = getelementptr i8, ptr %20, i32 136
  %21 = ptrtoint ptr %parent9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent9.i, align 8
  %add.ptr.i = getelementptr i8, ptr %22, i32 -240
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %entry.cond.end.i_crit_edge
  %cond.i = phi ptr [ %add.ptr.i, %cond.true.i ], [ null, %entry.cond.end.i_crit_edge ]
  %port_state.i.i = getelementptr inbounds %struct.fc_rport, ptr %cond.i, i32 0, i32 8
  %23 = ptrtoint ptr %port_state.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port_state.i.i, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %24, label %cond.end.i.if.then.i_crit_edge [
    i32 2, label %cond.end.i.sw.bb.i.i_crit_edge
    i32 11, label %cond.end.i.sw.bb.i.i_crit_edge8
    i32 4, label %sw.bb6.i.i
  ]

cond.end.i.sw.bb.i.i_crit_edge8:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i.i

cond.end.i.sw.bb.i.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i.i

cond.end.i.if.then.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

sw.bb.i.i:                                        ; preds = %cond.end.i.sw.bb.i.i_crit_edge, %cond.end.i.sw.bb.i.i_crit_edge8
  %roles.i.i = getelementptr inbounds %struct.fc_rport, ptr %cond.i, i32 0, i32 7
  %26 = ptrtoint ptr %roles.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %roles.i.i, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end.i

if.else.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %flags.i.i = getelementptr inbounds %struct.fc_rport, ptr %cond.i, i32 0, i32 14
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags.i.i, align 8
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool2.not.i.i = icmp eq i8 %30, 0
  %..i.i = select i1 %tobool2.not.i.i, i32 65536, i32 786432
  br label %if.then.i

sw.bb6.i.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %flags7.i.i = getelementptr inbounds %struct.fc_rport, ptr %cond.i, i32 0, i32 14
  %31 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flags7.i.i, align 8
  %33 = and i8 %32, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool10.not.i.i = icmp eq i8 %33, 0
  %.17.i.i = select i1 %tobool10.not.i.i, i32 786432, i32 983040
  br label %if.then.i

if.then.i:                                        ; preds = %sw.bb6.i.i, %if.else.i.i, %cond.end.i.if.then.i_crit_edge
  %result.0.i.ph.i = phi i32 [ 65536, %cond.end.i.if.then.i_crit_edge ], [ %.17.i.i, %sw.bb6.i.i ], [ %..i.i, %if.else.i.i ]
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %34 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %result.0.i.ph.i, ptr %result.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #13
  br label %bfad_im_queuecommand_lck.exit

if.end.i:                                         ; preds = %sw.bb.i.i
  %bfad_flags.i = getelementptr inbounds %struct.bfad_s, ptr %10, i32 0, i32 19
  %35 = ptrtoint ptr %bfad_flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bfad_flags.i, align 4
  %and.i = and i32 %36, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %if.end21.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %and15.i = and i32 %36, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %spec.select.i = select i1 %tobool16.not.i, i32 851968, i32 65536
  %37 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.select.i, ptr %37, align 4
  tail call void @scsi_done(ptr noundef %cmd) #13
  br label %bfad_im_queuecommand_lck.exit

if.end21.i:                                       ; preds = %if.end.i
  %call22.i = tail call i32 @scsi_dma_map(ptr noundef %cmd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp.i = icmp slt i32 %call22.i, 0
  br i1 %cmp.i, label %if.end21.i.bfad_im_queuecommand_lck.exit_crit_edge, label %do.body25.i

if.end21.i.bfad_im_queuecommand_lck.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfad_im_queuecommand_lck.exit

do.body25.i:                                      ; preds = %if.end21.i
  %bfad_lock.i = getelementptr inbounds %struct.bfad_s, ptr %10, i32 0, i32 20
  %call29.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock.i) #13
  %39 = ptrtoint ptr %bfad_flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bfad_flags.i, align 4
  %and33.i = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %do.end38.i, label %if.end45.i

do.end38.i:                                       ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #15
  %inst_no.i = getelementptr inbounds %struct.bfad_s, ptr %10, i32 0, i32 18
  %41 = ptrtoint ptr %inst_no.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %inst_no.i, align 8
  %cmnd40.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %43 = ptrtoint ptr %cmnd40.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cmnd40.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  %conv42.i = zext i8 %46 to i32
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %42, ptr noundef %cmd, i32 noundef %conv42.i) #17
  br label %out_fail_cmd.i

if.end45.i:                                       ; preds = %do.body25.i
  %47 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %12, align 4
  %tobool47.not.i = icmp eq ptr %48, null
  br i1 %tobool47.not.i, label %if.end45.i.out_fail_cmd.i_crit_edge, label %if.end50.i

if.end45.i.out_fail_cmd.i_crit_edge:              ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fail_cmd.i

if.end50.i:                                       ; preds = %if.end45.i
  %bfa.i = getelementptr inbounds %struct.bfad_s, ptr %10, i32 0, i32 2
  %bfa_itnim.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bfa_itnim.i, align 4
  %conv51.i = trunc i32 %call22.i to i16
  %call52.i = tail call ptr @bfa_ioim_alloc(ptr noundef %bfa.i, ptr noundef %cmd, ptr noundef %50, i16 noundef zeroext %conv51.i) #13
  %tobool53.not.i = icmp eq ptr %call52.i, null
  br i1 %tobool53.not.i, label %do.end57.i, label %if.end61.i

do.end57.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i, i32 noundef %call29.i) #13
  tail call void @scsi_dma_unmap(ptr noundef %cmd) #13
  br label %bfad_im_queuecommand_lck.exit

if.end61.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  %host_scribble.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 23
  %51 = ptrtoint ptr %host_scribble.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call52.i, ptr %host_scribble.i, align 4
  tail call void @bfa_ioim_start(ptr noundef nonnull %call52.i) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i, i32 noundef %call29.i) #13
  br label %bfad_im_queuecommand_lck.exit

out_fail_cmd.i:                                   ; preds = %if.end45.i.out_fail_cmd.i_crit_edge, %do.end38.i
  %.sink.i = phi i32 [ 65536, %do.end38.i ], [ 786432, %if.end45.i.out_fail_cmd.i_crit_edge ]
  %result49.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %52 = ptrtoint ptr %result49.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.sink.i, ptr %result49.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock.i, i32 noundef %call29.i) #13
  tail call void @scsi_dma_unmap(ptr noundef %cmd) #13
  tail call void @scsi_done(ptr noundef %cmd) #13
  br label %bfad_im_queuecommand_lck.exit

bfad_im_queuecommand_lck.exit:                    ; preds = %out_fail_cmd.i, %if.end61.i, %do.end57.i, %if.end21.i.bfad_im_queuecommand_lck.exit_crit_edge, %if.then13.i, %if.then.i
  %retval.0.i = phi i32 [ 0, %if.then.i ], [ 0, %if.then13.i ], [ 0, %if.end61.i ], [ 4181, %do.end57.i ], [ 0, %out_fail_cmd.i ], [ 4181, %if.end21.i.bfad_im_queuecommand_lck.exit_crit_edge ]
  %53 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %call2) #13
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal nonnull ptr @bfad_im_info(ptr nocapture noundef readonly %shost) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hostdata, align 8
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = call ptr @memset(ptr @bfad_im_info.bfa_buf, i32 0, i32 256)
  %pci_name = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 5
  %6 = ptrtoint ptr %pci_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_name, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @bfad_im_info.bfa_buf, i32 noundef 256, ptr noundef nonnull @.str.23, ptr noundef %7, ptr noundef nonnull @.str.24)
  ret ptr @bfad_im_info.bfa_buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_abort_handler(ptr noundef %cmnd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hostdata, align 8
  %6 = inttoptr i32 %5 to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %8, i32 0, i32 20
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 23
  %9 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host_scribble, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %dio = getelementptr inbounds %struct.bfa_ioim_s, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %dio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dio, align 8
  %cmp6.not = icmp eq ptr %12, %cmnd
  br i1 %cmp6.not, label %if.end9, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end9:                                          ; preds = %if.end
  %trcmod = getelementptr inbounds %struct.bfad_s, ptr %8, i32 0, i32 30
  %13 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trcmod, align 8
  %iotag = getelementptr inbounds %struct.bfa_ioim_s, ptr %10, i32 0, i32 6
  %15 = ptrtoint ptr %iotag to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %iotag, align 4
  %conv10 = zext i16 %16 to i64
  tail call void @__bfa_trc(ptr noundef %14, i32 noundef 3074, i32 noundef 213, i64 noundef %conv10) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_log_level to i32))
  %17 = load i32, ptr @bfa_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp12 = icmp eq i32 %17, 4
  br i1 %cmp12, label %do.end17, label %if.end9.do.end23_crit_edge

if.end9.do.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %8, i32 0, i32 4
  %18 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %shost18 = getelementptr inbounds %struct.bfad_im_port_s, ptr %6, i32 0, i32 7
  %20 = ptrtoint ptr %shost18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shost18, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %host_no, align 4
  %24 = ptrtoint ptr %iotag to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %iotag, align 4
  %conv20 = zext i16 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %23, ptr noundef %cmnd, i32 noundef %conv20) #17
  br label %do.end23

do.end23:                                         ; preds = %do.end17, %if.end9.do.end23_crit_edge
  %call24 = tail call i32 @bfa_ioim_abort(ptr noundef nonnull %10) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call3) #13
  %26 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host_scribble, align 4
  %cmp27154 = icmp eq ptr %27, %10
  br i1 %cmp27154, label %do.end23.__here_crit_edge, label %do.end23.while.end_crit_edge

do.end23.while.end_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end23.__here_crit_edge:                        ; preds = %do.end23
  br label %__here

__here:                                           ; preds = %__here.__here_crit_edge, %do.end23.__here_crit_edge
  %timeout.0155 = phi i32 [ %spec.select, %__here.__here_crit_edge ], [ 10, %do.end23.__here_crit_edge ]
  %28 = tail call i32 @llvm.read_register.i32(metadata !133) #13
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 212
  %32 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 ptrtoint (ptr blockaddress(@bfad_im_abort_handler, %__here) to i32), ptr %task_state_change, align 4
  %33 = load ptr, ptr %task, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 2, ptr %33, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !145
  %call97 = tail call i32 @schedule_timeout(i32 noundef %timeout.0155) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %timeout.0155)
  %cmp98 = icmp ult i32 %timeout.0155, 400
  %mul = zext i1 %cmp98 to i32
  %spec.select = shl i32 %timeout.0155, %mul
  %35 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %host_scribble, align 4
  %cmp27 = icmp eq ptr %36, %10
  br i1 %cmp27, label %__here.__here_crit_edge, label %__here.while.end_crit_edge

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

__here.__here_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

while.end:                                        ; preds = %__here.while.end_crit_edge, %do.end23.while.end_crit_edge
  tail call void @scsi_done(ptr noundef %cmnd) #13
  %37 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trcmod, align 8
  %39 = ptrtoint ptr %iotag to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %iotag, align 4
  %conv104 = zext i16 %40 to i64
  tail call void @__bfa_trc(ptr noundef %38, i32 noundef 3074, i32 noundef 230, i64 noundef %conv104) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_log_level to i32))
  %41 = load i32, ptr @bfa_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp106 = icmp eq i32 %41, 4
  br i1 %cmp106, label %do.end111, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end111:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %pcidev112 = getelementptr inbounds %struct.bfad_s, ptr %8, i32 0, i32 4
  %42 = ptrtoint ptr %pcidev112 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcidev112, align 8
  %dev113 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %shost114 = getelementptr inbounds %struct.bfad_im_port_s, ptr %6, i32 0, i32 7
  %44 = ptrtoint ptr %shost114 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %shost114, align 4
  %host_no115 = getelementptr inbounds %struct.Scsi_Host, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %host_no115 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %host_no115, align 4
  %48 = ptrtoint ptr %iotag to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %iotag, align 4
  %conv117 = zext i16 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev113, ptr noundef nonnull @.str.28, i32 noundef %47, ptr noundef %cmnd, i32 noundef %conv117) #17
  br label %cleanup

out:                                              ; preds = %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ 8194, %entry.out_crit_edge ], [ 8195, %if.end.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call3) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end111, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ 8194, %do.end111 ], [ 8194, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_reset_lun_handler(ptr noundef %cmnd) #0 align 64 {
entry:
  %wq = alloca %struct.wait_queue_head, align 4
  %scsilun = alloca %struct.scsi_lun, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hostdata, align 8
  %6 = inttoptr i32 %5 to ptr
  %hostdata2 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 21
  %7 = ptrtoint ptr %hostdata2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hostdata2, align 8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %wq) #13
  %11 = call ptr @memset(ptr %wq, i32 255, i32 52)
  call void @__init_waitqueue_head(ptr noundef nonnull %wq, ptr noundef nonnull @.str.30, ptr noundef nonnull @bfad_im_reset_lun_handler.__key) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %scsilun) #13
  %12 = getelementptr inbounds [8 x i8], ptr %scsilun, i32 0, i32 4
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %10, i32 0, i32 20
  %13 = ptrtoint ptr %scsilun to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %scsilun, align 8
  %call6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %8, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call6) #13
  br label %out

if.end:                                           ; preds = %entry
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %10, i32 0, i32 2
  %call13 = call ptr @bfa_tskim_alloc(ptr noundef %bfa, ptr noundef %cmnd) #13
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.body16, label %if.end30

do.body16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %10, i32 0, i32 4
  %16 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.31, ptr noundef %dev, ptr noundef nonnull @.str.32) #17
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call6) #13
  br label %out

if.end30:                                         ; preds = %if.end
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 23
  %18 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %host_scribble, align 4
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22
  %19 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %wq, ptr %SCp, align 4
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 5
  %20 = ptrtoint ptr %Status to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %Status, align 4
  %bfa_itnim.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %15, i32 0, i32 1, i32 5
  %21 = ptrtoint ptr %bfa_itnim.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bfa_itnim.i, align 4
  %cmp33 = icmp eq ptr %22, null
  br i1 %cmp33, label %if.then35, label %if.end53

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  call void @bfa_tskim_free(ptr noundef nonnull %call13) #13
  %pcidev47 = getelementptr inbounds %struct.bfad_s, ptr %10, i32 0, i32 4
  %23 = ptrtoint ptr %pcidev47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcidev47, align 8
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.31, ptr noundef %dev48, ptr noundef nonnull @.str.35) #17
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call6) #13
  br label %out

if.end53:                                         ; preds = %if.end30
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %26, i32 0, i32 18
  %27 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %lun, align 8
  call void @int_to_scsilun(i64 noundef %28, ptr noundef nonnull %scsilun) #13
  %29 = ptrtoint ptr %scsilun to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.0.load = load i32, ptr %scsilun, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %.fca.0.load, 0
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.fca.1.load = load i32, ptr %12, align 4
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  call void @bfa_tskim_start(ptr noundef nonnull %call13, ptr noundef nonnull %22, [2 x i32] %.fca.1.insert, i32 noundef 16, i8 noundef zeroext 60) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call6) #13
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 351) #13
  %31 = ptrtoint ptr %Status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %Status, align 4
  %and1.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool66.not = icmp eq i32 %and1.i, 0
  br i1 %tobool66.not, label %if.end68, label %if.end53.do.end78_crit_edge

if.end53.do.end78_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end78

if.end68:                                         ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %33 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %call69141 = call i32 @prepare_to_wait_event(ptr noundef nonnull %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %34 = ptrtoint ptr %Status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %Status, align 4
  %and1.i138142 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i138142)
  %tobool73.not143 = icmp eq i32 %and1.i138142, 0
  br i1 %tobool73.not143, label %if.end68.cleanup_crit_edge, label %if.end68.for.end_crit_edge

if.end68.for.end_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end68.cleanup_crit_edge
  call void @schedule() #13
  %call69 = call i32 @prepare_to_wait_event(ptr noundef nonnull %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %36 = ptrtoint ptr %Status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %Status, align 4
  %and1.i138 = and i32 %37, 1
  %tobool73.not = icmp eq i32 %and1.i138, 0
  br i1 %tobool73.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end68.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull %wq, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.end78

do.end78:                                         ; preds = %for.end, %if.end53.do.end78_crit_edge
  %38 = ptrtoint ptr %Status to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %Status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp81.not = icmp ult i32 %39, 2
  br i1 %cmp81.not, label %do.end78.out_crit_edge, label %do.body84

do.end78.out_crit_edge:                           ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body84:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #15
  %shr = ashr i32 %39, 1
  %pcidev95 = getelementptr inbounds %struct.bfad_s, ptr %10, i32 0, i32 4
  %40 = ptrtoint ptr %pcidev95 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcidev95, align 8
  %dev96 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.31, ptr noundef %dev96, ptr noundef nonnull @.str.38, i32 noundef %shr) #17
  br label %out

out:                                              ; preds = %do.body84, %do.end78.out_crit_edge, %if.then35, %do.body16, %if.then
  %rc.0 = phi i32 [ 8195, %if.then35 ], [ 8195, %do.body84 ], [ 8194, %do.end78.out_crit_edge ], [ 8195, %do.body16 ], [ 8195, %if.then ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scsilun) #13
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wq) #13
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_reset_target_handler(ptr noundef %cmnd) #0 align 64 {
entry:
  %wq = alloca %struct.wait_queue_head, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 55, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %6 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hostdata, align 8
  %8 = inttoptr i32 %7 to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %wq) #13
  %11 = call ptr @memset(ptr %wq, i32 255, i32 52)
  call void @__init_waitqueue_head(ptr noundef nonnull %wq, ptr noundef nonnull @.str.30, ptr noundef nonnull @bfad_im_reset_target_handler.__key) #13
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %10, i32 0, i32 20
  %call6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %id = getelementptr i8, ptr %5, i32 936
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 8
  %itnim_mapped_list.i = getelementptr inbounds %struct.bfad_im_port_s, ptr %8, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %itnim.0.in.i = phi ptr [ %itnim_mapped_list.i, %entry ], [ %itnim.0.i, %for.body.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %itnim.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %itnim.0.i = load ptr, ptr %itnim.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %itnim.0.i, %itnim_mapped_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end72_crit_edge, label %for.body.i

for.cond.i.if.end72_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

for.body.i:                                       ; preds = %for.cond.i
  %scsi_tgt_id.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim.0.i, i32 0, i32 10
  %15 = ptrtoint ptr %scsi_tgt_id.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %scsi_tgt_id.i, align 4
  %conv.i = zext i16 %16 to i32
  %cmp2.i = icmp eq i32 %13, %conv.i
  br i1 %cmp2.i, label %bfad_get_itnim.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

bfad_get_itnim.exit:                              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %itnim.0.i, null
  br i1 %tobool.not, label %bfad_get_itnim.exit.if.end72_crit_edge, label %if.then

bfad_get_itnim.exit.if.end72_crit_edge:           ; preds = %bfad_get_itnim.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.then:                                          ; preds = %bfad_get_itnim.exit
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22
  %17 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %wq, ptr %SCp, align 4
  %bfa.i = getelementptr inbounds %struct.bfad_s, ptr %10, i32 0, i32 2
  %call.i = call ptr @bfa_tskim_alloc(ptr noundef %bfa.i, ptr noundef %cmnd) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %pcidev.i = getelementptr inbounds %struct.bfad_s, ptr %10, i32 0, i32 4
  %18 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcidev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.31, ptr noundef %dev.i, ptr noundef nonnull @.str.42) #17
  br label %if.end72

if.end7.i:                                        ; preds = %if.then
  %host_scribble.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 23
  %20 = ptrtoint ptr %host_scribble.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %host_scribble.i, align 4
  %Status.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 5
  %21 = ptrtoint ptr %Status.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %Status.i, align 4
  %bfa_itnim.i.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim.0.i, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %bfa_itnim.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bfa_itnim.i.i, align 4
  %cmp9.i = icmp eq ptr %23, null
  br i1 %cmp9.i, label %if.then11.i, label %if.then15

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @bfa_tskim_free(ptr noundef nonnull %call.i) #13
  %pcidev23.i = getelementptr inbounds %struct.bfad_s, ptr %10, i32 0, i32 4
  %24 = ptrtoint ptr %pcidev23.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcidev23.i, align 8
  %dev24.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.31, ptr noundef %dev24.i, ptr noundef nonnull @.str.45) #17
  br label %if.end72

if.then15:                                        ; preds = %if.end7.i
  call void @bfa_tskim_start(ptr noundef nonnull %call.i, ptr noundef nonnull %23, [2 x i32] zeroinitializer, i32 noundef 32, i8 noundef zeroext 60) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call6) #13
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 390) #13
  %26 = ptrtoint ptr %Status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %Status.i, align 4
  %and1.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool26.not = icmp eq i32 %and1.i, 0
  br i1 %tobool26.not, label %if.end, label %if.then15.do.body39_crit_edge

if.then15.do.body39_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body39

if.end:                                           ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %28 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %call28107 = call i32 @prepare_to_wait_event(ptr noundef nonnull %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %29 = ptrtoint ptr %Status.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %Status.i, align 4
  %and1.i99108 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i99108)
  %tobool32.not109 = icmp eq i32 %and1.i99108, 0
  br i1 %tobool32.not109, label %if.end.cleanup_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #13
  %call28 = call i32 @prepare_to_wait_event(ptr noundef nonnull %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %31 = ptrtoint ptr %Status.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %Status.i, align 4
  %and1.i99 = and i32 %32, 1
  %tobool32.not = icmp eq i32 %and1.i99, 0
  br i1 %tobool32.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull %wq, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.body39

do.body39:                                        ; preds = %for.end, %if.then15.do.body39_crit_edge
  %call47 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %33 = ptrtoint ptr %Status.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %Status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp54.not = icmp ult i32 %34, 2
  br i1 %cmp54.not, label %do.body39.if.end72_crit_edge, label %do.body57

do.body39.if.end72_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

do.body57:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #15
  %shr = ashr i32 %34, 1
  %pcidev = getelementptr inbounds %struct.bfad_s, ptr %10, i32 0, i32 4
  %35 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.31, ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %shr) #17
  br label %if.end72

if.end72:                                         ; preds = %do.body57, %do.body39.if.end72_crit_edge, %if.then11.i, %do.body.i, %bfad_get_itnim.exit.if.end72_crit_edge, %for.cond.i.if.end72_crit_edge
  %rtn.0 = phi i32 [ 8195, %do.body57 ], [ 8195, %bfad_get_itnim.exit.if.end72_crit_edge ], [ 8194, %do.body39.if.end72_crit_edge ], [ 8195, %if.then11.i ], [ 8195, %do.body.i ], [ 8195, %for.cond.i.if.end72_crit_edge ]
  %flags.0 = phi i32 [ %call47, %do.body57 ], [ %call6, %bfad_get_itnim.exit.if.end72_crit_edge ], [ %call47, %do.body39.if.end72_crit_edge ], [ %call6, %if.then11.i ], [ %call6, %do.body.i ], [ %call6, %for.cond.i.if.end72_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %flags.0) #13
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wq) #13
  ret i32 %rtn.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_slave_alloc(ptr nocapture noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call1 = tail call i32 @scsi_is_fc_rport(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.end:                                         ; preds = %entry
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %parent4 = getelementptr i8, ptr %5, i32 136
  %6 = ptrtoint ptr %parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent4, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 -240
  %tobool5.not = icmp eq ptr %add.ptr, null
  br i1 %tobool5.not, label %cond.end.cleanup_crit_edge, label %lor.lhs.false

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end
  %port_state.i = getelementptr i8, ptr %7, i32 -40
  %8 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_state.i, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %9, label %lor.lhs.false.cleanup_crit_edge [
    i32 2, label %lor.lhs.false.sw.bb.i_crit_edge
    i32 11, label %lor.lhs.false.sw.bb.i_crit_edge56
  ]

lor.lhs.false.sw.bb.i_crit_edge56:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

lor.lhs.false.sw.bb.i_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i:                                          ; preds = %lor.lhs.false.sw.bb.i_crit_edge, %lor.lhs.false.sw.bb.i_crit_edge56
  %roles.i = getelementptr i8, ptr %7, i32 -44
  %11 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %roles.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.cleanup_crit_edge, label %if.end

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sw.bb.i
  %dd_data = getelementptr i8, ptr %7, i32 -28
  %13 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dd_data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %bfa_itnim = getelementptr inbounds %struct.bfad_itnim_s, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %bfa_itnim to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bfa_itnim, align 4
  %bfa8 = getelementptr inbounds %struct.bfa_itnim_s, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bfa8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bfa8, align 4
  %min_cfg = getelementptr inbounds %struct.bfa_s, ptr %20, i32 0, i32 6, i32 15, i32 3
  %21 = ptrtoint ptr %min_cfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %min_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool9.not = icmp eq i32 %22, 0
  br i1 %tobool9.not, label %cond.end20, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

cond.end20:                                       ; preds = %if.end
  %dconf = getelementptr inbounds %struct.bfa_s, ptr %20, i32 0, i32 6, i32 15, i32 8
  %23 = ptrtoint ptr %dconf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dconf, align 8
  %lun_mask = getelementptr inbounds %struct.bfa_dconf_s, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %lun_mask to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %lun_mask, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %phi.cmp = icmp eq i32 %26, 1
  br i1 %phi.cmp, label %if.then24, label %cond.end20.done_crit_edge

cond.end20.done_crit_edge:                        ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then24:                                        ; preds = %cond.end20
  %lun = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %27 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %cmp25 = icmp eq i64 %28, 0
  br i1 %cmp25, label %if.then26, label %cond.end14.i

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %sdev_bflags = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 39
  %29 = ptrtoint ptr %sdev_bflags to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %sdev_bflags, align 8
  %or = or i64 %30, 262208
  store i64 %or, ptr %sdev_bflags, align 8
  br label %done

cond.end14.i:                                     ; preds = %if.then24
  %rport4.i = getelementptr inbounds %struct.bfa_itnim_s, ptr %18, i32 0, i32 3
  %31 = ptrtoint ptr %rport4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rport4.i, align 4
  %lun_list13.i = getelementptr inbounds %struct.bfa_dconf_s, ptr %24, i32 0, i32 1, i32 2
  %rport_tag.i = getelementptr inbounds %struct.bfa_rport_s, ptr %32, i32 0, i32 5
  %lp_tag31.i = getelementptr inbounds %struct.bfa_rport_s, ptr %32, i32 0, i32 8, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %cond.end14.i
  %i.048.i = phi i32 [ 0, %cond.end14.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %state.i = getelementptr %struct.bfa_lun_mask_s, ptr %lun_list13.i, i32 %i.048.i, i32 7
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp16.i = icmp eq i8 %34, 1
  br i1 %cmp16.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %lun.i = getelementptr %struct.bfa_lun_mask_s, ptr %lun_list13.i, i32 %i.048.i, i32 2
  %call.i = tail call i64 @scsilun_to_int(ptr noundef %lun.i) #13
  %35 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %36)
  %cmp20.i = icmp eq i64 %call.i, %36
  br i1 %cmp20.i, label %land.lhs.true22.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true22.i:                                ; preds = %land.lhs.true.i
  %rp_tag.i = getelementptr %struct.bfa_lun_mask_s, ptr %lun_list13.i, i32 %i.048.i, i32 5
  %37 = ptrtoint ptr %rp_tag.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %rp_tag.i, align 1
  %39 = ptrtoint ptr %rport_tag.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %rport_tag.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %40)
  %cmp26.i = icmp eq i16 %38, %40
  br i1 %cmp26.i, label %land.lhs.true28.i, label %land.lhs.true22.i.for.inc.i_crit_edge

land.lhs.true22.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true28.i:                                ; preds = %land.lhs.true22.i
  %lp_tag.i = getelementptr %struct.bfa_lun_mask_s, ptr %lun_list13.i, i32 %i.048.i, i32 6
  %41 = ptrtoint ptr %lp_tag.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %lp_tag.i, align 1
  %43 = ptrtoint ptr %lp_tag31.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %bf.load.i = load i64, ptr %lp_tag31.i, align 4
  %bf.lshr.i = lshr i64 %bf.load.i, 32
  %44 = trunc i64 %bf.lshr.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %44)
  %cmp34.i = icmp eq i8 %42, %44
  br i1 %cmp34.i, label %land.lhs.true28.i.done_crit_edge, label %land.lhs.true28.i.for.inc.i_crit_edge

land.lhs.true28.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true28.i.done_crit_edge:                 ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

for.inc.i:                                        ; preds = %land.lhs.true28.i.for.inc.i_crit_edge, %land.lhs.true22.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

done:                                             ; preds = %land.lhs.true28.i.done_crit_edge, %if.then26, %cond.end20.done_crit_edge, %if.end.done_crit_edge
  %45 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dd_data, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %47 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %hostdata, align 8
  br label %cleanup

cleanup:                                          ; preds = %done, %for.inc.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %done ], [ -6, %cond.end.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ -6, %sw.bb.i.cleanup_crit_edge ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_slave_configure(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_lun_queue_depth to i32))
  %0 = load i32, ptr @bfa_lun_queue_depth, align 4
  %call = tail call i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef %0) #13
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @bfad_im_slave_destroy(ptr nocapture noundef writeonly %sdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %hostdata, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_eh_timed_out(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_im_module_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @fc_attach_transport(ptr noundef nonnull @bfad_im_fc_function_template) #13
  store ptr %call, ptr @bfad_im_scsi_transport_template, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @fc_attach_transport(ptr noundef nonnull @bfad_im_vport_fc_function_template) #13
  store ptr %call1, ptr @bfad_im_scsi_vport_transport_template, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr @bfad_im_scsi_transport_template, align 4
  tail call void @fc_release_transport(ptr noundef %0) #13
  br label %return

return:                                           ; preds = %if.then3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 3, %if.then3 ], [ 3, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_attach_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_release_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_im_module_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @bfad_im_scsi_transport_template, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @fc_release_transport(ptr noundef nonnull %0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load ptr, ptr @bfad_im_scsi_vport_transport_template, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @fc_release_transport(ptr noundef nonnull %1) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  tail call void @idr_destroy(ptr noundef nonnull @bfad_im_port_index) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__scsi_iterate_devices(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_track_queue_full(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bfad_get_itnim(ptr noundef readonly %im_port, i32 noundef %id) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %itnim_mapped_list = getelementptr inbounds %struct.bfad_im_port_s, ptr %im_port, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %itnim.0.in = phi ptr [ %itnim_mapped_list, %entry ], [ %itnim.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %itnim.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %itnim.0 = load ptr, ptr %itnim.0.in, align 4
  %cmp.not = icmp eq ptr %itnim.0, %itnim_mapped_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %scsi_tgt_id = getelementptr inbounds %struct.bfad_itnim_s, ptr %itnim.0, i32 0, i32 10
  %1 = ptrtoint ptr %scsi_tgt_id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %scsi_tgt_id, align 4
  %conv = zext i16 %2 to i32
  %cmp2 = icmp eq i32 %conv, %id
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %itnim.0, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_im_supported_speeds(ptr noundef %bfa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1624) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ioc = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3
  tail call void @bfa_ioc_get_attr(ptr noundef %ioc, ptr noundef nonnull %call7.i.i) #13
  %max_speed = getelementptr inbounds %struct.bfa_ioc_attr_s, ptr %call7.i.i, i32 0, i32 2, i32 14
  %1 = ptrtoint ptr %max_speed to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %max_speed, align 1
  %3 = add i8 %2, -4
  %4 = tail call i8 @llvm.fshl.i8(i8 %3, i8 %3, i8 7)
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %4, label %if.end35.fold.split [
    i8 6, label %if.end.if.end35_crit_edge
    i8 2, label %if.then8
    i8 0, label %if.then22
    i8 3, label %if.then30
  ]

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %is_mezz = getelementptr inbounds %struct.bfa_ioc_attr_s, ptr %call7.i.i, i32 0, i32 2, i32 21
  %6 = ptrtoint ptr %is_mezz to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_mezz, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  %. = select i1 %tobool10.not, i32 26, i32 27
  br label %if.end35

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.end35.fold.split:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.end35:                                         ; preds = %if.end35.fold.split, %if.then30, %if.then22, %if.then8, %if.end.if.end35_crit_edge
  %supported_speed.0 = phi i32 [ 11, %if.then22 ], [ 4, %if.then30 ], [ 58, %if.end.if.end35_crit_edge ], [ %., %if.then8 ], [ 0, %if.end35.fold.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %supported_speed.0, %if.end35 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_get_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_fc_host_init(ptr nocapture noundef readonly %im_port) local_unnamed_addr #0 align 64 {
entry:
  %symname = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shost = getelementptr inbounds %struct.bfad_im_port_s, ptr %im_port, i32 0, i32 7
  %0 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost, align 4
  %2 = ptrtoint ptr %im_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %im_port, align 4
  %port2 = getelementptr inbounds %struct.bfad_im_port_s, ptr %im_port, i32 0, i32 1
  %4 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port2, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %symname) #13
  %6 = call ptr @memset(ptr %symname, i32 255, i32 128)
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 2
  %fcs_port = getelementptr inbounds %struct.bfad_port_s, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %fcs_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fcs_port, align 4
  %nwwn = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %8, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %nwwn to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %nwwn, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 51
  %11 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shost_data, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %10, ptr %12, align 8
  %14 = load ptr, ptr %fcs_port, align 4
  %port_cfg5 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %port_cfg5 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %port_cfg5, align 8
  %17 = load ptr, ptr %shost_data, align 8
  %port_name = getelementptr inbounds %struct.fc_host_attrs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %port_name to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %16, ptr %port_name, align 8
  %call = tail call i32 @bfa_lps_get_max_vport(ptr noundef %bfa) #13
  %conv = trunc i32 %call to i16
  %19 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %shost_data, align 8
  %max_npiv_vports = getelementptr inbounds %struct.fc_host_attrs, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %max_npiv_vports to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv, ptr %max_npiv_vports, align 4
  %22 = load ptr, ptr %shost_data, align 8
  %supported_classes = getelementptr inbounds %struct.fc_host_attrs, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %supported_classes to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %supported_classes, align 8
  %24 = load ptr, ptr %shost_data, align 8
  %supported_fc4s = getelementptr inbounds %struct.fc_host_attrs, ptr %24, i32 0, i32 4
  %25 = call ptr @memset(ptr %supported_fc4s, i32 0, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @supported_fc4s to i32))
  %26 = load i32, ptr @supported_fc4s, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %shost_data, align 8
  %arrayidx = getelementptr %struct.fc_host_attrs, ptr %28, i32 0, i32 4, i32 2
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %arrayidx, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %30 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shost_data, align 8
  %arrayidx15 = getelementptr %struct.fc_host_attrs, ptr %31, i32 0, i32 4, i32 7
  %32 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %arrayidx15, align 1
  %sym_name = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 3, i32 8, i32 3, i32 3, i32 2
  %call20 = call i32 @strlcpy(ptr noundef nonnull %symname, ptr noundef %sym_name, i32 noundef 128) #13
  %33 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %shost_data, align 8
  %symbolic_name = getelementptr inbounds %struct.fc_host_attrs, ptr %34, i32 0, i32 28
  %strcpy = call ptr @strcpy(ptr noundef %symbolic_name, ptr noundef nonnull %symname) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 1624) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.bfad_im_supported_speeds.exit_crit_edge, label %if.end.i

if.end.bfad_im_supported_speeds.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfad_im_supported_speeds.exit

if.end.i:                                         ; preds = %if.end
  %ioc.i = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 2, i32 3
  call void @bfa_ioc_get_attr(ptr noundef %ioc.i, ptr noundef nonnull %call7.i.i.i) #13
  %max_speed.i = getelementptr inbounds %struct.bfa_ioc_attr_s, ptr %call7.i.i.i, i32 0, i32 2, i32 14
  %36 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %max_speed.i, align 1
  %38 = add i8 %37, -4
  %39 = call i8 @llvm.fshl.i8(i8 %38, i8 %38, i8 7) #13
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %39, label %if.end35.fold.split.i [
    i8 6, label %if.end.i.if.end35.i_crit_edge
    i8 2, label %if.then8.i
    i8 0, label %if.then22.i
    i8 3, label %if.then30.i
  ]

if.end.i.if.end35.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %is_mezz.i = getelementptr inbounds %struct.bfa_ioc_attr_s, ptr %call7.i.i.i, i32 0, i32 2, i32 21
  %41 = ptrtoint ptr %is_mezz.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_mezz.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool10.not.i = icmp eq i8 %42, 0
  %..i = select i1 %tobool10.not.i, i32 26, i32 27
  br label %if.end35.i

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i

if.then30.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i

if.end35.fold.split.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end35.fold.split.i, %if.then30.i, %if.then22.i, %if.then8.i, %if.end.i.if.end35.i_crit_edge
  %supported_speed.0.i = phi i32 [ 11, %if.then22.i ], [ 4, %if.then30.i ], [ 58, %if.end.i.if.end35.i_crit_edge ], [ %..i, %if.then8.i ], [ 0, %if.end35.fold.split.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %bfad_im_supported_speeds.exit

bfad_im_supported_speeds.exit:                    ; preds = %if.end35.i, %if.end.bfad_im_supported_speeds.exit_crit_edge
  %retval.0.i = phi i32 [ %supported_speed.0.i, %if.end35.i ], [ 0, %if.end.bfad_im_supported_speeds.exit_crit_edge ]
  %43 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %shost_data, align 8
  %supported_speeds = getelementptr inbounds %struct.fc_host_attrs, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %supported_speeds to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %retval.0.i, ptr %supported_speeds, align 4
  %maxfrsize = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 2, i32 6, i32 1, i32 11, i32 6
  %46 = ptrtoint ptr %maxfrsize to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %maxfrsize, align 1
  %conv28 = zext i16 %47 to i32
  %48 = load ptr, ptr %shost_data, align 8
  %maxframe_size = getelementptr inbounds %struct.fc_host_attrs, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %maxframe_size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv28, ptr %maxframe_size, align 8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %symname) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_lps_get_max_vport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfad_rport_online_wait(ptr nocapture noundef readonly %bfad) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bfad_flags = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 19
  %0 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bfad_flags, align 4
  %and268 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and268)
  %tobool.not269 = icmp eq i32 %and268, 0
  br i1 %tobool.not269, label %entry.land.rhs_crit_edge, label %entry.if.then67_crit_edge

entry.if.then67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then67

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %__here.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.0270 = phi i32 [ %inc, %__here.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_linkup_delay to i32))
  %2 = load i32, ptr @bfa_linkup_delay, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0270, i32 %2)
  %cmp = icmp slt i32 %i.0270, %2
  br i1 %cmp, label %__here, label %land.rhs.if.end248_crit_edge

land.rhs.if.end248_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end248

__here:                                           ; preds = %land.rhs
  %3 = tail call i32 @llvm.read_register.i32(metadata !133) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 212
  %7 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 ptrtoint (ptr blockaddress(@bfad_rport_online_wait, %__here) to i32), ptr %task_state_change, align 4
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 2, ptr %8, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !146
  %call63 = tail call i32 @schedule_timeout(i32 noundef 100) #13
  %inc = add nuw nsw i32 %i.0270, 1
  %10 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bfad_flags, align 4
  %and = and i32 %11, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %__here.land.rhs_crit_edge, label %__here.if.then67_crit_edge

__here.if.then67_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then67

__here.land.rhs_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.then67:                                        ; preds = %__here.if.then67_crit_edge, %entry.if.then67_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfa_linkup_delay to i32))
  %12 = load i32, ptr @bfa_linkup_delay, align 4
  %13 = tail call i32 @llvm.smin.i32(i32 %12, i32 10)
  %14 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bfad_flags, align 4
  %and71271 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71271)
  %tobool72.not272 = icmp eq i32 %and71271, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp74273 = icmp sgt i32 %12, 0
  %or.cond274 = select i1 %tobool72.not272, i1 %cmp74273, i1 false
  br i1 %or.cond274, label %if.then67.__here127_crit_edge, label %if.then67.for.end160_crit_edge

if.then67.for.end160_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end160

if.then67.__here127_crit_edge:                    ; preds = %if.then67
  br label %__here127

__here127:                                        ; preds = %__here127.__here127_crit_edge, %if.then67.__here127_crit_edge
  %i.1275 = phi i32 [ %inc159, %__here127.__here127_crit_edge ], [ 0, %if.then67.__here127_crit_edge ]
  %16 = tail call i32 @llvm.read_register.i32(metadata !133) #13
  %and.i265 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i265 to ptr
  %task130 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task130 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task130, align 8
  %task_state_change131 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 212
  %20 = ptrtoint ptr %task_state_change131 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 ptrtoint (ptr blockaddress(@bfad_rport_online_wait, %__here127) to i32), ptr %task_state_change131, align 4
  %21 = load ptr, ptr %task130, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 2, ptr %21, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !147
  %call157 = tail call i32 @schedule_timeout(i32 noundef 100) #13
  %inc159 = add nuw nsw i32 %i.1275, 1
  %23 = ptrtoint ptr %bfad_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bfad_flags, align 4
  %and71 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc159, i32 %13)
  %cmp74 = icmp slt i32 %inc159, %13
  %or.cond = select i1 %tobool72.not, i1 %cmp74, i1 false
  br i1 %or.cond, label %__here127.__here127_crit_edge, label %__here127.for.end160_crit_edge

__here127.for.end160_crit_edge:                   ; preds = %__here127
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end160

__here127.__here127_crit_edge:                    ; preds = %__here127
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here127

for.end160:                                       ; preds = %__here127.for.end160_crit_edge, %if.then67.for.end160_crit_edge
  %tobool72.not.lcssa = phi i1 [ %tobool72.not272, %if.then67.for.end160_crit_edge ], [ %tobool72.not, %__here127.for.end160_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp161 = icmp slt i32 %12, 1
  %brmerge = select i1 %cmp161, i1 true, i1 %tobool72.not.lcssa
  br i1 %brmerge, label %for.end160.if.end248_crit_edge, label %__here216

for.end160.if.end248_crit_edge:                   ; preds = %for.end160
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end248

__here216:                                        ; preds = %for.end160
  call void @__sanitizer_cov_trace_pc() #15
  %25 = tail call i32 @llvm.read_register.i32(metadata !133) #13
  %and.i266 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i266 to ptr
  %task219 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task219 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task219, align 8
  %task_state_change220 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 212
  %29 = ptrtoint ptr %task_state_change220 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 ptrtoint (ptr blockaddress(@bfad_rport_online_wait, %__here216) to i32), ptr %task_state_change220, align 4
  %30 = load ptr, ptr %task219, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 2, ptr %30, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !148
  %mul = mul i32 %13, 100
  %call246 = tail call i32 @schedule_timeout(i32 noundef %mul) #13
  br label %if.end248

if.end248:                                        ; preds = %__here216, %for.end160.if.end248_crit_edge, %land.rhs.if.end248_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfad_get_linkup_delay(ptr noundef %bfad) local_unnamed_addr #0 align 64 {
entry:
  %nwwns = alloca i8, align 1
  %wwns = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nwwns) #13
  %0 = ptrtoint ptr %nwwns to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %nwwns, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wwns) #13
  %1 = call ptr @memset(ptr %wwns, i32 255, i32 64)
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %bfad, i32 0, i32 2
  call void @bfa_iocfc_get_bootwwns(ptr noundef %bfa, ptr noundef nonnull %nwwns, ptr noundef nonnull %wwns) #13
  %2 = ptrtoint ptr %nwwns to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nwwns, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  %. = select i1 %cmp.not, i32 0, i32 30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wwns) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nwwns) #13
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_iocfc_get_bootwwns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_vport_terminate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_host_post_vendor_event(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_get_event_number() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioim_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_tskim_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_tskim_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_tskim_start(ptr noundef, ptr noundef, [2 x i32], i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_fc_rport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @scsilun_to_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @bfa_fcpim_path_tov_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_remote_port_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_remote_port_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_remote_port_rolechg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_ioim_alloc(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioim_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !76, !77, !78, !80, !81, !83, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132}
!llvm.named.register.sp = !{!133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 23, i32 1}
!2 = !{ptr @bfad_im_port_index, !1, !"bfad_im_port_index", i1 false, i1 false}
!3 = !{ptr @bfa_fcb_itnim_alloc.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 440, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 459, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 473, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @bfa_fcb_itnim_free._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @bfa_fcb_itnim_free._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 545, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @bfad_im_scsi_host_alloc._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @bfad_im_scsi_host_alloc._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 573, i32 3}
!22 = !{ptr @bfad_im_scsi_host_alloc._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @bfad_im_scsi_host_alloc._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 594, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @bfad_im_scsi_host_free._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @bfad_im_scsi_host_free._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @bfad_im_port_new.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 634, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @bfad_im_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 713, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 771, i32 46}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 773, i32 18}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 797, i32 10}
!41 = !{ptr @bfad_im_scsi_host_template, !42, !"bfad_im_scsi_host_template", i1 false, i1 false}
!42 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 795, i32 27}
!43 = !{ptr @bfad_im_vport_template, !44, !"bfad_im_vport_template", i1 false, i1 false}
!44 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 817, i32 27}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 1286, i32 3}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 1295, i32 4}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 1300, i32 4}
!51 = !{ptr @bfad_im_scsi_transport_template, !52, !"bfad_im_scsi_transport_template", i1 false, i1 false}
!52 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 24, i32 33}
!53 = !{ptr @bfad_im_scsi_vport_transport_template, !54, !"bfad_im_scsi_vport_transport_template", i1 false, i1 false}
!54 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 25, i32 33}
!55 = distinct !{null, !56, !"__trc_fileno", i1 false, i1 false}
!56 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 21, i32 1}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/bfa/bfa_cs.h", i32 296, i32 19}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/bfa/bfa_cs.h", i32 310, i32 20}
!61 = !{ptr @bfad_im_info.bfa_buf, !62, !"bfa_buf", i1 false, i1 false}
!62 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 171, i32 18}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 178, i32 3}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 179, i32 19}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 214, i32 2}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @bfad_im_abort_handler._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @bfad_im_abort_handler._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 223, i32 3}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 231, i32 2}
!76 = !{ptr @bfad_im_abort_handler._entry.27, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @bfad_im_abort_handler._entry_ptr.29, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @bfad_im_reset_lun_handler.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 301, i32 2}
!80 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 317, i32 3}
!83 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @bfad_im_reset_lun_handler._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @bfad_im_reset_lun_handler._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 339, i32 3}
!89 = !{ptr @bfad_im_reset_lun_handler._entry.34, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @bfad_im_reset_lun_handler._entry_ptr.36, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 355, i32 3}
!93 = !{ptr @bfad_im_reset_lun_handler._entry.37, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @bfad_im_reset_lun_handler._entry_ptr.39, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @bfad_im_reset_target_handler.__key, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 378, i32 2}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 395, i32 5}
!99 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @bfad_im_reset_target_handler._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @bfad_im_reset_target_handler._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 251, i32 3}
!104 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @bfad_im_target_reset_send._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @bfad_im_target_reset_send._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 271, i32 3}
!109 = !{ptr @bfad_im_target_reset_send._entry.44, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @bfad_im_target_reset_send._entry_ptr.46, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 1132, i32 4}
!113 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @bfad_im_itnim_work_handler._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @bfad_im_itnim_work_handler._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 1139, i32 4}
!118 = !{ptr @bfad_im_itnim_work_handler._entry.49, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @bfad_im_itnim_work_handler._entry_ptr.51, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 1165, i32 4}
!122 = !{ptr @bfad_im_itnim_work_handler._entry.52, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @bfad_im_itnim_work_handler._entry_ptr.54, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 1238, i32 3}
!126 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @bfad_im_queuecommand_lck._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @bfad_im_queuecommand_lck._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/bfa/bfad_im.c", i32 1255, i32 3}
!131 = !{ptr @bfad_im_queuecommand_lck._entry.57, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @bfad_im_queuecommand_lck._entry_ptr.59, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{!"sp"}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{!"branch_weights", i32 1, i32 2000}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{i64 2156197089}
!146 = !{i64 2156263076}
!147 = !{i64 2156267844}
!148 = !{i64 2156272601}
