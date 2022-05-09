; ModuleID = '/llk/IR_all_yes/drivers/scsi/bfa/bfad_attr.c_pt.bc'
source_filename = "../drivers/scsi/bfa/bfad_attr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bfad_itnim_s = type { %struct.list_head, %struct.bfa_fcs_itnim_s, %struct.work_struct, i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i32, i32 }
%struct.bfa_fcs_itnim_s = type { ptr, ptr, ptr, ptr, %struct.bfa_timer_s, ptr, i32, i32, i32, i32, i32, %struct.bfa_fcxp_wqe_s, ptr, %struct.bfa_itnim_stats_s }
%struct.bfa_timer_s = type { %struct.list_head, ptr, ptr, i32 }
%struct.bfa_fcxp_wqe_s = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.bfa_itnim_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfad_s = type { ptr, %struct.list_head, %struct.bfa_s, %struct.bfa_fcs_s, ptr, ptr, %struct.bfa_pcidev_s, %struct.bfa_ioc_pci_attr_s, ptr, ptr, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i32, %struct.bfad_port_s, %struct.bfa_meminfo_s, %struct.bfa_iocfc_cfg_s, i32, i32, %struct.spinlock, ptr, %struct.bfad_cfg_param_s, [22 x %struct.bfad_msix_s], i32, [64 x i8], [64 x i8], %struct.timer_list, i32, ptr, ptr, %struct.bfa_plog_s, i32, %union.bfad_tmp_buf, %struct.fc_host_statistics, %struct.list_head, ptr, i32, [5 x ptr], %struct.list_head, %struct.list_head, [512 x %struct.bfa_aen_entry_s], %struct.spinlock, %struct.list_head }
%struct.bfa_s = type { ptr, ptr, ptr, %struct.bfa_ioc_s, %struct.bfa_iocfc_s, %struct.bfa_timer_mod_s, %struct.bfa_modules_s, %struct.list_head, i32, [4 x %struct.list_head], i32, %struct.bfa_msix_s, i32, i32 }
%struct.bfa_ioc_s = type { ptr, ptr, %struct.bfa_pcidev_s, ptr, %struct.bfa_timer_s, %struct.bfa_timer_s, %struct.bfa_timer_s, i32, %struct.list_head, ptr, i32, i32, i32, %struct.bfa_ioc_regs_s, ptr, %struct.bfa_ioc_drv_stats_s, i32, i32, i32, i8, %struct.bfa_dma_s, ptr, ptr, %struct.bfa_ioc_mbox_mod_s, ptr, %struct.bfa_iocpf_s, i32, i32, i32, i32, i32, i8, i8, i32 }
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
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.bfa_fcs_rport_s = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i64, i64, %struct.bfa_rport_symname_s, ptr, %struct.bfa_timer_s, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.bfa_fcxp_wqe_s, %struct.bfa_rport_stats_s, i32, %struct.bfa_fcs_rpf_s, i32 }
%struct.bfa_rport_symname_s = type { [255 x i8] }
%struct.bfa_rport_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bfa_rport_hal_stats_s }
%struct.bfa_rport_hal_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_fcs_rpf_s = type { ptr, ptr, %struct.bfa_timer_s, ptr, %struct.bfa_fcxp_wqe_s, i32, i32, i32 }
%struct.bfad_im_port_s = type { ptr, ptr, %struct.work_struct, i32, i16, i16, %struct.list_head, ptr, %struct.list_head, ptr }
%struct.fc_host_attrs = type { i64, i64, i64, i32, [32 x i8], i32, i32, i16, i32, i32, i32, i32, [64 x i8], [64 x i8], [256 x i8], [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [8 x i8], [256 x i8], i32, i32, i32, [32 x i8], i32, i64, [256 x i8], [256 x i8], i32, %struct.fc_fpin_stats, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i16, [20 x i8], ptr, [20 x i8], ptr, ptr, i8 }
%struct.bfa_lport_attr_s = type { i32, i32, %struct.bfa_lport_cfg_s, i32, i32, i64, [16 x i8], %struct.mac_s, i16 }
%struct.mac_s = type { [6 x i8] }
%struct.bfa_port_attr_s = type { i64, i64, i64, i64, i32, i32, %struct.fc_symname_s, i32, i32, %struct.bfa_port_cfg_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, [2 x i8] }
%struct.fc_symname_s = type { [256 x i8] }
%struct.bfad_hal_comp = type { i32, %struct.completion }
%struct.bfa_port_fc_stats_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_vport = type { i32, i32, i64, i64, i32, i32, i32, [64 x i8], ptr, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.work_struct }
%struct.bfa_fcs_vport_s = type { %struct.list_head, ptr, %struct.bfa_fcs_lport_s, %struct.bfa_timer_s, ptr, %struct.bfa_vport_stats_s, ptr, i32 }
%struct.bfa_vport_stats_s = type { %struct.bfa_lport_stats_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfad_vport_s = type { %struct.bfad_port_s, %struct.bfa_fcs_vport_s, ptr, %struct.list_head }
%struct.bfi_ioc_attr_s = type { i64, i64, %struct.mac_s, i8, i8, i64, i64, %struct.mac_s, i16, %struct.mac_s, i16, [12 x i8], i8, i8, i8, i8, i32, i16, i8, i8, [64 x i8], [64 x i8], %struct.bfa_mfg_vpd_s, i32, i8, i8, i16, [16 x i8] }
%struct.bfa_mfg_vpd_s = type { i8, [3 x i8], i8, i8, i8, i8, [512 x i8] }

@bfad_im_fc_function_template = dso_local global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 } { ptr null, ptr @bfad_im_set_rport_loss_tmo, ptr @bfad_im_get_starget_node_name, ptr @bfad_im_get_starget_port_name, ptr @bfad_im_get_starget_port_id, ptr @bfad_im_get_host_port_id, ptr @bfad_im_get_host_port_type, ptr @bfad_im_get_host_port_state, ptr @bfad_im_get_host_active_fc4s, ptr @bfad_im_get_host_speed, ptr @bfad_im_get_host_fabric_name, ptr null, ptr null, ptr @bfad_im_get_stats, ptr @bfad_im_reset_stats, ptr @bfad_im_issue_fc_host_lip, ptr null, ptr null, ptr @bfad_im_vport_set_symbolic_name, ptr @bfad_im_vport_create, ptr @bfad_im_vport_disable, ptr @bfad_im_vport_delete, ptr @bfad_im_bsg_request, ptr @bfad_im_bsg_timeout, i32 4, i32 0, i32 0, i8 -1, i8 120, i8 7, i8 -16 }, [48 x i8] zeroinitializer }, align 32
@bfad_im_vport_fc_function_template = dso_local global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 } { ptr null, ptr @bfad_im_set_rport_loss_tmo, ptr @bfad_im_get_starget_node_name, ptr @bfad_im_get_starget_port_name, ptr @bfad_im_get_starget_port_id, ptr @bfad_im_get_host_port_id, ptr @bfad_im_get_host_port_type, ptr @bfad_im_get_host_port_state, ptr @bfad_im_get_host_active_fc4s, ptr @bfad_im_get_host_speed, ptr @bfad_im_get_host_fabric_name, ptr null, ptr null, ptr @bfad_im_get_stats, ptr @bfad_im_reset_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4, i32 0, i32 0, i8 -1, i8 120, i8 7, i8 -16 }, [48 x i8] zeroinitializer }, align 32
@bfad_im_host_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bfad_im_host_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@bfad_im_host_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bfad_im_host_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@bfad_im_vport_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bfad_im_vport_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@bfad_im_vport_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bfad_im_vport_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@supported_fc4s = external dso_local local_unnamed_addr global i32, align 4
@bfad_im_host_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dev_attr_serial_number, ptr @dev_attr_model, ptr @dev_attr_model_description, ptr @dev_attr_node_name, ptr @dev_attr_symbolic_name, ptr @dev_attr_hardware_version, ptr @dev_attr_driver_version, ptr @dev_attr_option_rom_version, ptr @dev_attr_firmware_version, ptr @dev_attr_number_of_ports, ptr @dev_attr_driver_name, ptr @dev_attr_number_of_discovered_ports, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_serial_number = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bfad_im_serial_num_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_model = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bfad_im_model_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_model_description = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bfad_im_model_desc_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_node_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bfad_im_node_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_symbolic_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bfad_im_symbolic_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hardware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bfad_im_hw_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_driver_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bfad_im_drv_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_option_rom_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bfad_im_optionrom_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_firmware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bfad_im_fw_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_number_of_ports = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bfad_im_num_of_ports_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_driver_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bfad_im_drv_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_number_of_discovered_ports = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bfad_im_num_of_discovered_ports_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_number\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"model_description\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"QLogic-425\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"QLogic BR-series 4Gbps PCIe dual port FC HBA\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"QLogic-825\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"QLogic BR-series 8Gbps PCIe dual port FC HBA\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"QLogic-42B\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"QLogic BR-series 4Gbps PCIe dual port FC HBA for HP\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"QLogic-82B\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"QLogic BR-series 8Gbps PCIe dual port FC HBA for HP\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"QLogic-1010\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"QLogic BR-series 10Gbps single port CNA\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"QLogic-1020\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"QLogic BR-series 10Gbps dual port CNA\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"QLogic-1007\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"QLogic BR-series 10Gbps CNA for IBM Blade Center\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"QLogic-415\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"QLogic BR-series 4Gbps PCIe single port FC HBA\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"QLogic-815\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"QLogic BR-series 8Gbps PCIe single port FC HBA\00", [49 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"QLogic-41B\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"QLogic BR-series 4Gbps PCIe single port FC HBA for HP\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"QLogic-81B\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"QLogic BR-series 8Gbps PCIe single port FC HBA for HP\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"QLogic-804\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"QLogic BR-series 8Gbps FC HBA for HP Bladesystem C-class\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"QLogic-1741\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"QLogic BR-series 10Gbps CNA for Dell M-Series Blade Servers\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"QLogic-1860\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"QLogic BR-series 16Gbps PCIe single port FC HBA\00", [48 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"QLogic BR-series 16Gbps PCIe dual port FC HBA\00", [50 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"QLogic-1867\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"QLogic BR-series 16Gbps PCIe single port FC HBA for IBM\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"QLogic BR-series 16Gbps PCIe dual port FC HBA for IBM\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Invalid Model\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"node_name\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"symbolic_name\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hardware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"driver_version\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"3.2.25.1\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"option_rom_version\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"number_of_ports\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"driver_name\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bfa\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"number_of_discovered_ports\00", [37 x i8] zeroinitializer }, align 32
@bfad_im_vport_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dev_attr_serial_number, ptr @dev_attr_model, ptr @dev_attr_model_description, ptr @dev_attr_node_name, ptr @dev_attr_symbolic_name, ptr @dev_attr_hardware_version, ptr @dev_attr_driver_version, ptr @dev_attr_option_rom_version, ptr @dev_attr_firmware_version, ptr @dev_attr_number_of_ports, ptr @dev_attr_driver_name, ptr @dev_attr_number_of_discovered_ports, ptr null], [44 x i8] zeroinitializer }, align 32
@switch.table.bfad_im_get_host_port_state = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 7, i32 2, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 20, i64 21]
@__sancov_gen_cov_switch_values.52 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 10, i64 16]
@__sancov_gen_cov_switch_values.53 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 21, i64 22, i64 46, i64 57]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.56 = private unnamed_addr constant [29 x i8] c"bfad_im_fc_function_template\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 593, i32 29 }
@___asan_gen_.59 = private unnamed_addr constant [35 x i8] c"bfad_im_vport_fc_function_template\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 650, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"bfad_im_host_attr_group\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 975, i32 37 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"bfad_im_host_groups\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 979, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant [25 x i8] c"bfad_im_vport_attr_group\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1000, i32 37 }
@___asan_gen_.71 = private unnamed_addr constant [21 x i8] c"bfad_im_vport_groups\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1004, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 87, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [19 x i8] c"bfad_im_host_attrs\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 959, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant [23 x i8] c"dev_attr_serial_number\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"dev_attr_model\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [27 x i8] c"dev_attr_model_description\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"dev_attr_node_name\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [23 x i8] c"dev_attr_symbolic_name\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [26 x i8] c"dev_attr_hardware_version\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [24 x i8] c"dev_attr_driver_version\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [28 x i8] c"dev_attr_option_rom_version\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [26 x i8] c"dev_attr_firmware_version\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [25 x i8] c"dev_attr_number_of_ports\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [21 x i8] c"dev_attr_driver_name\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [36 x i8] c"dev_attr_number_of_discovered_ports\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 937, i32 17 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 714, i32 34 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 939, i32 17 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 940, i32 17 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 745, i32 21 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 747, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 748, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 750, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 751, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 753, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 754, i32 26 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 756, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 757, i32 26 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 759, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 760, i32 26 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 762, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 763, i32 26 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 765, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 766, i32 26 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 768, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 769, i32 26 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 771, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 772, i32 26 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 774, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 775, i32 26 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 777, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 778, i32 26 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 780, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 781, i32 26 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 783, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 784, i32 25 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 790, i32 5 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 796, i32 5 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 797, i32 28 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 800, i32 5 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 803, i32 5 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 806, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 942, i32 17 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 822, i32 34 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 943, i32 17 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 945, i32 17 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 947, i32 17 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 860, i32 42 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 949, i32 17 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 951, i32 17 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 953, i32 17 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 900, i32 34 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 955, i32 17 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 908, i32 42 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 956, i32 17 }
@___asan_gen_.269 = private unnamed_addr constant [20 x i8] c"bfad_im_vport_attrs\00", align 1
@___asan_gen_.270 = private constant [32 x i8] c"../drivers/scsi/bfa/bfad_attr.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 984, i32 26 }
@___asan_gen_.272 = private unnamed_addr constant [41 x i8] c"switch.table.bfad_im_get_host_port_state\00", align 1
@llvm.compiler.used = appending global [73 x ptr] [ptr @bfad_im_fc_function_template, ptr @bfad_im_vport_fc_function_template, ptr @bfad_im_host_attr_group, ptr @bfad_im_host_groups, ptr @bfad_im_vport_attr_group, ptr @bfad_im_vport_groups, ptr @init_completion.__key, ptr @.str, ptr @bfad_im_host_attrs, ptr @dev_attr_serial_number, ptr @dev_attr_model, ptr @dev_attr_model_description, ptr @dev_attr_node_name, ptr @dev_attr_symbolic_name, ptr @dev_attr_hardware_version, ptr @dev_attr_driver_version, ptr @dev_attr_option_rom_version, ptr @dev_attr_firmware_version, ptr @dev_attr_number_of_ports, ptr @dev_attr_driver_name, ptr @dev_attr_number_of_discovered_ports, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @bfad_im_vport_attrs, ptr @switch.table.bfad_im_get_host_port_state], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_fc_function_template to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_vport_fc_function_template to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_host_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_host_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_vport_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_vport_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_host_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_serial_number to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_model to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_model_description to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_node_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_symbolic_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hardware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_driver_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_option_rom_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_number_of_ports to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_driver_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_number_of_discovered_ports to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfad_im_vport_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bfad_im_get_host_port_state to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_im_set_rport_loss_tmo(ptr nocapture noundef %rport, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %rport, i32 0, i32 11
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %im = getelementptr inbounds %struct.bfad_itnim_s, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %im, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %7, i32 0, i32 2
  %call = tail call zeroext i16 @bfa_fcpim_path_tov_get(ptr noundef %bfa) #13
  %conv = zext i16 %call to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %timeout)
  %cmp = icmp ugt i32 %conv, %timeout
  %add = add nuw nsw i32 %conv, 1
  %spec.select = select i1 %cmp, i32 %add, i32 %timeout
  %dev_loss_tmo = getelementptr inbounds %struct.fc_rport, ptr %rport, i32 0, i32 2
  %8 = ptrtoint ptr %dev_loss_tmo to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %dev_loss_tmo, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_im_get_starget_node_name(ptr nocapture noundef %starget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hostdata, align 8
  %6 = inttoptr i32 %5 to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %8, i32 0, i32 20
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  %call7 = tail call ptr @bfad_get_itnim(ptr noundef %6, i32 noundef %10) #13
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %dev_to_shost.exit.if.end_crit_edge, label %if.then

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  %rport.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %call7, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rport.i, align 4
  %nwwn.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %nwwn.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %nwwn.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %dev_to_shost.exit.if.end_crit_edge
  %node_name.0 = phi i64 [ %14, %if.then ], [ 0, %dev_to_shost.exit.if.end_crit_edge ]
  %starget_data = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 15
  %15 = ptrtoint ptr %starget_data to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %node_name.0, ptr %starget_data, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_im_get_starget_port_name(ptr nocapture noundef %starget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hostdata, align 8
  %6 = inttoptr i32 %5 to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %8, i32 0, i32 20
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  %call7 = tail call ptr @bfad_get_itnim(ptr noundef %6, i32 noundef %10) #13
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %dev_to_shost.exit.if.end_crit_edge, label %if.then

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  %rport.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %call7, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rport.i, align 4
  %pwwn.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %pwwn.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %pwwn.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %dev_to_shost.exit.if.end_crit_edge
  %port_name.0 = phi i64 [ %14, %if.then ], [ 0, %dev_to_shost.exit.if.end_crit_edge ]
  %port_name9 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1
  %15 = ptrtoint ptr %port_name9 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %port_name.0, ptr %port_name9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_im_get_starget_port_id(ptr nocapture noundef %starget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hostdata, align 8
  %6 = inttoptr i32 %5 to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %8, i32 0, i32 20
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  %call7 = tail call ptr @bfad_get_itnim(ptr noundef %6, i32 noundef %10) #13
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %dev_to_shost.exit.if.end_crit_edge, label %if.then

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  %rport.i = getelementptr inbounds %struct.bfad_itnim_s, ptr %call7, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rport.i, align 4
  %pid.i = getelementptr inbounds %struct.bfa_fcs_rport_s, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %dev_to_shost.exit.if.end_crit_edge
  %fc_id.0 = phi i32 [ %14, %if.then ], [ -1, %dev_to_shost.exit.if.end_crit_edge ]
  %port_id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %15 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %fc_id.0, ptr %port_id, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call4) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bfad_im_get_host_port_id(ptr nocapture noundef readonly %shost) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hostdata, align 8
  %2 = inttoptr i32 %1 to ptr
  %port1 = getelementptr inbounds %struct.bfad_im_port_s, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port1, align 4
  %fcs_port = getelementptr inbounds %struct.bfad_port_s, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %fcs_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fcs_port, align 4
  %pid = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %pid to i32
  call void @__asan_loadN_noabort(i32 %7, i32 3)
  %bf.load = load i24, ptr %pid, align 4
  %bf.cast = zext i24 %bf.load to i32
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %8 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost_data, align 8
  %port_id = getelementptr inbounds %struct.fc_host_attrs, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bf.cast, ptr %port_id, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_im_get_host_port_type(ptr nocapture noundef readonly %shost) #0 align 64 {
entry:
  %port_attr = alloca %struct.bfa_lport_attr_s, align 8
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
  call void @llvm.lifetime.start.p0(i64 352, ptr nonnull %port_attr) #13
  %5 = call ptr @memset(ptr %port_attr, i32 255, i32 352)
  %bport = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 3, i32 8, i32 3
  call void @bfa_fcs_lport_get_attr(ptr noundef %bport, ptr noundef nonnull %port_attr) #13
  %port_type = getelementptr inbounds %struct.bfa_lport_attr_s, ptr %port_attr, i32 0, i32 3
  %6 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_type, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %sw.default [
    i32 5, label %entry.sw.epilog_crit_edge
    i32 6, label %sw.bb3
    i32 21, label %sw.bb6
    i32 20, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb6, %sw.bb3, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 0, %sw.default ], [ 5, %sw.bb9 ], [ 6, %sw.bb6 ], [ 4, %sw.bb3 ], [ 3, %entry.sw.epilog_crit_edge ]
  %shost_data12 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %9 = ptrtoint ptr %shost_data12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shost_data12, align 8
  %port_type13 = getelementptr inbounds %struct.fc_host_attrs, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %port_type13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %port_type13, align 4
  call void @llvm.lifetime.end.p0(i64 352, ptr nonnull %port_attr) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_im_get_host_port_state(ptr nocapture noundef readonly %shost) #0 align 64 {
entry:
  %attr = alloca %struct.bfa_port_attr_s, align 8
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
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %attr) #13
  %5 = call ptr @memset(ptr %attr, i32 255, i32 376)
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 2
  call void @bfa_fcport_get_attr(ptr noundef %bfa, ptr noundef nonnull %attr) #13
  %port_state = getelementptr inbounds %struct.bfa_port_attr_s, ptr %attr, i32 0, i32 10
  %6 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_state, align 8
  %switch.tableidx = add i32 %7, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 8
  br i1 %8, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.bfad_im_get_host_port_state, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.sw.epilog_crit_edge ]
  %shost_data10 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %10 = ptrtoint ptr %shost_data10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shost_data10, align 8
  %port_state11 = getelementptr inbounds %struct.fc_host_attrs, ptr %11, i32 0, i32 24
  %12 = ptrtoint ptr %port_state11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %port_state11, align 8
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %attr) #13
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bfad_im_get_host_active_fc4s(ptr nocapture noundef readonly %shost) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hostdata, align 8
  %2 = inttoptr i32 %1 to ptr
  %port1 = getelementptr inbounds %struct.bfad_im_port_s, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port1, align 4
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %5 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shost_data, align 8
  %active_fc4s = getelementptr inbounds %struct.fc_host_attrs, ptr %6, i32 0, i32 25
  %7 = call ptr @memset(ptr %active_fc4s, i32 0, i32 32)
  %supported_fc4s = getelementptr inbounds %struct.bfad_port_s, ptr %4, i32 0, i32 5
  %8 = ptrtoint ptr %supported_fc4s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %supported_fc4s, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shost_data, align 8
  %arrayidx4 = getelementptr %struct.fc_host_attrs, ptr %11, i32 0, i32 25, i32 2
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %arrayidx4, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shost_data, align 8
  %arrayidx7 = getelementptr %struct.fc_host_attrs, ptr %14, i32 0, i32 25, i32 7
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx7, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_im_get_host_speed(ptr nocapture noundef readonly %shost) #0 align 64 {
entry:
  %attr = alloca %struct.bfa_port_attr_s, align 8
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
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %attr) #13
  %5 = call ptr @memset(ptr %attr, i32 255, i32 376)
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 2
  call void @bfa_fcport_get_attr(ptr noundef %bfa, ptr noundef nonnull %attr) #13
  %speed = getelementptr inbounds %struct.bfa_port_attr_s, ptr %attr, i32 0, i32 11
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %7, label %sw.default [
    i32 10, label %entry.sw.epilog_crit_edge
    i32 16, label %sw.bb3
    i32 8, label %sw.bb6
    i32 4, label %sw.bb9
    i32 2, label %sw.bb12
    i32 1, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb3, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 0, %sw.default ], [ %7, %sw.bb15 ], [ %7, %sw.bb12 ], [ 8, %sw.bb9 ], [ 16, %sw.bb6 ], [ 32, %sw.bb3 ], [ 4, %entry.sw.epilog_crit_edge ]
  %shost_data18 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %9 = ptrtoint ptr %shost_data18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shost_data18, align 8
  %speed19 = getelementptr inbounds %struct.fc_host_attrs, ptr %10, i32 0, i32 26
  %11 = ptrtoint ptr %speed19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %speed19, align 4
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %attr) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bfad_im_get_host_fabric_name(ptr nocapture noundef readonly %shost) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hostdata, align 8
  %2 = inttoptr i32 %1 to ptr
  %port1 = getelementptr inbounds %struct.bfad_im_port_s, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port1, align 4
  %fcs_port = getelementptr inbounds %struct.bfad_port_s, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %fcs_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fcs_port, align 4
  %fabric = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %fabric to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fabric, align 4
  %fabric_name = getelementptr inbounds %struct.bfa_fcs_fabric_s, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fabric_name, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %11 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shost_data, align 8
  %fabric_name2 = getelementptr inbounds %struct.fc_host_attrs, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %fabric_name2 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %10, ptr %fabric_name2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bfad_im_get_stats(ptr nocapture noundef readonly %shost) #0 align 64 {
entry:
  %fcomp = alloca %struct.bfad_hal_comp, align 4
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
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp) #13
  %5 = call ptr @memset(ptr %fcomp, i32 255, i32 60)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 336) #16
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_stats = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 34
  %comp = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp, i32 0, i32 1
  %7 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #13
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 20
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %8 = call ptr @memset(ptr %link_stats, i32 0, i32 248)
  %port = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 2, i32 6, i32 8
  %call8 = call i32 @bfa_port_get_stats(ptr noundef %port, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp10.not = icmp eq i32 %call8, 0
  br i1 %cmp10.not, label %if.end13, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @wait_for_completion(ptr noundef %comp) #13
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %call7.i.i, align 8
  %11 = ptrtoint ptr %link_stats to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %link_stats, align 8
  %tx_frames = getelementptr inbounds %struct.bfa_port_fc_stats_s, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_frames, align 8
  %tx_frames15 = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 34, i32 1
  %14 = ptrtoint ptr %tx_frames15 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %tx_frames15, align 8
  %tx_words = getelementptr inbounds %struct.bfa_port_fc_stats_s, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %tx_words to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tx_words, align 8
  %tx_words16 = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 34, i32 2
  %17 = ptrtoint ptr %tx_words16 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %tx_words16, align 8
  %rx_frames = getelementptr inbounds %struct.bfa_port_fc_stats_s, ptr %call7.i.i, i32 0, i32 11
  %18 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_frames, align 8
  %rx_frames17 = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 34, i32 3
  %20 = ptrtoint ptr %rx_frames17 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %rx_frames17, align 8
  %rx_words = getelementptr inbounds %struct.bfa_port_fc_stats_s, ptr %call7.i.i, i32 0, i32 12
  %21 = ptrtoint ptr %rx_words to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %rx_words, align 8
  %rx_words18 = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 34, i32 4
  %23 = ptrtoint ptr %rx_words18 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %rx_words18, align 8
  %lip_count = getelementptr inbounds %struct.bfa_port_fc_stats_s, ptr %call7.i.i, i32 0, i32 13
  %24 = ptrtoint ptr %lip_count to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %lip_count, align 8
  %lip_count19 = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 34, i32 5
  %26 = ptrtoint ptr %lip_count19 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %lip_count19, align 8
  %nos_count = getelementptr inbounds %struct.bfa_port_fc_stats_s, ptr %call7.i.i, i32 0, i32 17
  %27 = ptrtoint ptr %nos_count to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %nos_count, align 8
  %nos_count20 = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 34, i32 6
  %29 = ptrtoint ptr %nos_count20 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %nos_count20, align 8
  %error_frames = getelementptr inbounds %struct.bfa_port_fc_stats_s, ptr %call7.i.i, i32 0, i32 26
  %30 = ptrtoint ptr %error_frames to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %error_frames, align 8
  %error_frames21 = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 34, i32 7
  %32 = ptrtoint ptr %error_frames21 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %error_frames21, align 8
  %dropped_frames = getelementptr inbounds %struct.bfa_port_fc_stats_s, ptr %call7.i.i, i32 0, i32 27
  %33 = ptrtoint ptr %dropped_frames to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %dropped_frames, align 8
  %dumped_frames = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 34, i32 8
  %35 = ptrtoint ptr %dumped_frames to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %dumped_frames, align 8
  %link_failures = getelementptr inbounds %struct.bfa_port_fc_stats_s, ptr %call7.i.i, i32 0, i32 28
  %36 = ptrtoint ptr %link_failures to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %link_failures, align 8
  %link_failure_count = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 34, i32 9
  %38 = ptrtoint ptr %link_failure_count to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %link_failure_count, align 8
  %loss_of_syncs = getelementptr inbounds %struct.bfa_port_fc_stats_s, ptr %call7.i.i, i32 0, i32 29
  %39 = ptrtoint ptr %loss_of_syncs to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %loss_of_syncs, align 8
  %loss_of_sync_count = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 34, i32 10
  %41 = ptrtoint ptr %loss_of_sync_count to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %loss_of_sync_count, align 8
  %loss_of_signals = getelementptr inbounds %struct.bfa_port_fc_stats_s, ptr %call7.i.i, i32 0, i32 30
  %42 = ptrtoint ptr %loss_of_signals to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %loss_of_signals, align 8
  %loss_of_signal_count = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 34, i32 11
  %44 = ptrtoint ptr %loss_of_signal_count to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %loss_of_signal_count, align 8
  %primseq_errs = getelementptr inbounds %struct.bfa_port_fc_stats_s, ptr %call7.i.i, i32 0, i32 31
  %45 = ptrtoint ptr %primseq_errs to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %primseq_errs, align 8
  %prim_seq_protocol_err_count = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 34, i32 12
  %47 = ptrtoint ptr %prim_seq_protocol_err_count to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %prim_seq_protocol_err_count, align 8
  %invalid_crcs = getelementptr inbounds %struct.bfa_port_fc_stats_s, ptr %call7.i.i, i32 0, i32 21
  %48 = ptrtoint ptr %invalid_crcs to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %invalid_crcs, align 8
  %invalid_crc_count = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 34, i32 14
  %50 = ptrtoint ptr %invalid_crc_count to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %invalid_crc_count, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end13, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ %link_stats, %if.end13 ], [ null, %if.end.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_im_reset_stats(ptr nocapture noundef readonly %shost) #0 align 64 {
entry:
  %fcomp = alloca %struct.bfad_hal_comp, align 4
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
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp) #13
  %5 = call ptr @memset(ptr %fcomp, i32 255, i32 60)
  %comp = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp, i32 0, i32 1
  %6 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #13
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 20
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %port = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 2, i32 6, i32 8
  %call6 = call i32 @bfa_port_clear_stats(ptr noundef %port, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp8.not = icmp eq i32 %call6, 0
  br i1 %cmp8.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @wait_for_completion(ptr noundef %comp) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_issue_fc_host_lip(ptr nocapture noundef readonly %shost) #0 align 64 {
entry:
  %fcomp = alloca %struct.bfad_hal_comp, align 4
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
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %fcomp) #13
  %5 = call ptr @memset(ptr %fcomp, i32 255, i32 60)
  %comp = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp, i32 0, i32 1
  %6 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.bfad_hal_comp, ptr %fcomp, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #13
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 20
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %port = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 2, i32 6, i32 8
  %call6 = call i32 @bfa_port_disable(ptr noundef %port, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp8.not = icmp eq i32 %call6, 0
  br i1 %cmp8.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @wait_for_completion(ptr noundef %comp) #13
  %7 = ptrtoint ptr %fcomp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fcomp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp12.not = icmp eq i32 %8, 0
  br i1 %cmp12.not, label %do.body17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body17:                                        ; preds = %if.end
  %call25 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %call33 = call i32 @bfa_port_enable(ptr noundef %port, ptr noundef nonnull @bfad_hcb_comp, ptr noundef nonnull %fcomp) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp35.not = icmp eq i32 %call33, 0
  br i1 %cmp35.not, label %if.end38, label %do.body17.cleanup_crit_edge

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end38:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #15
  call void @wait_for_completion(ptr noundef %comp) #13
  %9 = ptrtoint ptr %fcomp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fcomp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp41.not = icmp eq i32 %10, 0
  %. = select i1 %cmp41.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.body17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %do.body17.cleanup_crit_edge ], [ %., %if.end38 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %fcomp) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfad_im_vport_set_symbolic_name(ptr noundef %fc_vport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 8
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %im_port1 = getelementptr inbounds %struct.bfad_port_s, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %im_port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %im_port1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %shost = getelementptr inbounds %struct.bfad_im_port_s, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost, align 4
  %symbolic_name = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 7
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 51
  %8 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost_data, align 8
  %port_name = getelementptr inbounds %struct.fc_host_attrs, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %port_name, align 8
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 20
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %bfa_fcs = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 3
  %call9 = tail call ptr @bfa_fcs_vport_lookup(ptr noundef %bfa_fcs, i16 noundef zeroext 0, i64 noundef %11) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call6) #13
  %cmp11 = icmp eq ptr %call9, null
  br i1 %cmp11, label %entry.cleanup_crit_edge, label %do.body14

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body14:                                        ; preds = %entry
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %12 = ptrtoint ptr %symbolic_name to i32
  call void @__asan_load1_noabort(i32 %12)
  %char0 = load i8, ptr %symbolic_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp28.not = icmp eq i8 %char0, 0
  br i1 %cmp28.not, label %do.body14.if.end31_crit_edge, label %if.then30

do.body14.if.end31_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then30:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  %lport = getelementptr inbounds %struct.bfa_fcs_vport_s, ptr %call9, i32 0, i32 2
  tail call void @bfa_fcs_lport_set_symname(ptr noundef %lport, ptr noundef %symbolic_name) #13
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %do.body14.if.end31_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call22) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_vport_create(ptr noundef %fc_vport, i1 noundef zeroext %disable) #0 align 64 {
entry:
  %port_cfg = alloca %struct.bfa_lport_cfg_s, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %symbolic_name = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 7
  %shost1 = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 9
  %0 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hostdata, align 8
  %4 = inttoptr i32 %3 to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %port_cfg) #13
  %7 = getelementptr inbounds i8, ptr %port_cfg, i32 16
  %8 = call ptr @memset(ptr %7, i32 0, i32 288)
  %node_name = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 2
  %9 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %node_name, align 8
  %nwwn = getelementptr inbounds %struct.bfa_lport_cfg_s, ptr %port_cfg, i32 0, i32 1
  %11 = ptrtoint ptr %nwwn to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %nwwn, align 8
  %port_name = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 3
  %12 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %port_name, align 8
  %14 = ptrtoint ptr %port_cfg to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %port_cfg, align 8
  %15 = ptrtoint ptr %symbolic_name to i32
  call void @__asan_load1_noabort(i32 %15)
  %char0 = load i8, ptr %symbolic_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp.not = icmp eq i8 %char0, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sym_name = getelementptr inbounds %struct.bfa_lport_cfg_s, ptr %port_cfg, i32 0, i32 2
  %call3 = call ptr @strcpy(ptr noundef %sym_name, ptr noundef %symbolic_name) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %roles = getelementptr inbounds %struct.bfa_lport_cfg_s, ptr %port_cfg, i32 0, i32 4
  %16 = ptrtoint ptr %roles to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %roles, align 8
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %6, i32 0, i32 20
  %call7 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %pbc_vport_list = getelementptr inbounds %struct.bfad_s, ptr %6, i32 0, i32 35
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %pbc_vport_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %17 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp12.not = icmp eq ptr %.pn, %pbc_vport_list
  br i1 %cmp12.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %18 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %port_cfg, align 8
  %port_cfg15 = getelementptr i8, ptr %.pn, i32 -1364
  %20 = ptrtoint ptr %port_cfg15 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %port_cfg15, align 8
  %cmp17 = icmp eq i64 %19, %21
  br i1 %cmp17, label %if.then19, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %preboot_vp = getelementptr i8, ptr %.pn, i32 -1084
  %22 = ptrtoint ptr %preboot_vp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %preboot_vp, align 8
  %preboot_vp23 = getelementptr inbounds %struct.bfa_lport_cfg_s, ptr %port_cfg, i32 0, i32 6
  %24 = ptrtoint ptr %preboot_vp23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %preboot_vp23, align 8
  br label %for.end

for.end:                                          ; preds = %if.then19, %for.cond.for.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call7) #13
  %dev = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 14
  %call31 = call i32 @bfad_vport_create(ptr noundef %6, i16 noundef zeroext 0, ptr noundef nonnull %port_cfg, ptr noundef %dev) #13
  %25 = zext i32 %call31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call31, label %if.else122 [
    i32 0, label %if.then34
    i32 57, label %for.end.cleanup124_crit_edge
    i32 21, label %for.end.cleanup124_crit_edge180
    i32 22, label %if.then117
    i32 46, label %for.end.cleanup124_crit_edge181
  ]

for.end.cleanup124_crit_edge181:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup124

for.end.cleanup124_crit_edge180:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup124

for.end.cleanup124_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup124

if.then34:                                        ; preds = %for.end
  %call45 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %bfa_fcs = getelementptr inbounds %struct.bfad_s, ptr %6, i32 0, i32 3
  %26 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %port_cfg, align 8
  %call51 = call ptr @bfa_fcs_vport_lookup(ptr noundef %bfa_fcs, i16 noundef zeroext 0, i64 noundef %27) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call45) #13
  %cmp53 = icmp eq ptr %call51, null
  br i1 %cmp53, label %if.then34.cleanup124_crit_edge, label %if.end56

if.then34.cleanup124_crit_edge:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup124

if.end56:                                         ; preds = %if.then34
  %28 = ptrtoint ptr %fc_vport to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fc_vport, align 8
  %vport_last_state.i = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 1
  %30 = ptrtoint ptr %vport_last_state.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %vport_last_state.i, align 4
  store i32 1, ptr %fc_vport, align 8
  br i1 %disable, label %do.body59, label %if.end56.if.end74_crit_edge

if.end56.if.end74_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

do.body59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  %call67 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %call72 = call i32 @bfa_fcs_vport_stop(ptr noundef nonnull %call51) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call67) #13
  %31 = ptrtoint ptr %fc_vport to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fc_vport, align 8
  %33 = ptrtoint ptr %vport_last_state.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %vport_last_state.i, align 4
  store i32 2, ptr %fc_vport, align 8
  br label %if.end74

if.end74:                                         ; preds = %do.body59, %if.end56.if.end74_crit_edge
  %vport_drv = getelementptr inbounds %struct.bfa_fcs_vport_s, ptr %call51, i32 0, i32 4
  %34 = ptrtoint ptr %vport_drv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vport_drv, align 4
  %im_port75 = getelementptr inbounds %struct.bfad_port_s, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %im_port75 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %im_port75, align 8
  %shost76 = getelementptr inbounds %struct.bfad_im_port_s, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %shost76 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %shost76, align 4
  %40 = ptrtoint ptr %nwwn to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %nwwn, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %39, i32 0, i32 51
  %42 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %shost_data, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %41, ptr %43, align 8
  %45 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %port_cfg, align 8
  %47 = load ptr, ptr %shost_data, align 8
  %port_name83 = getelementptr inbounds %struct.fc_host_attrs, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %port_name83 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %46, ptr %port_name83, align 8
  %49 = load ptr, ptr %shost_data, align 8
  %supported_classes = getelementptr inbounds %struct.fc_host_attrs, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %supported_classes to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 8, ptr %supported_classes, align 8
  %51 = load ptr, ptr %shost_data, align 8
  %supported_fc4s = getelementptr inbounds %struct.fc_host_attrs, ptr %51, i32 0, i32 4
  %52 = call ptr @memset(ptr %supported_fc4s, i32 0, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @supported_fc4s to i32))
  %53 = load i32, ptr @supported_fc4s, align 4
  %and = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool87.not = icmp eq i32 %and, 0
  br i1 %tobool87.not, label %if.end74.if.end92_crit_edge, label %if.then88

if.end74.if.end92_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.then88:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %shost_data, align 8
  %arrayidx91 = getelementptr %struct.fc_host_attrs, ptr %55, i32 0, i32 4, i32 2
  %56 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %arrayidx91, align 2
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %if.end74.if.end92_crit_edge
  %57 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %shost_data, align 8
  %arrayidx95 = getelementptr %struct.fc_host_attrs, ptr %58, i32 0, i32 4, i32 7
  %59 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %arrayidx95, align 1
  %bfa = getelementptr inbounds %struct.bfad_s, ptr %6, i32 0, i32 2
  %call96 = call i32 @bfad_im_supported_speeds(ptr noundef %bfa) #13
  %60 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %shost_data, align 8
  %supported_speeds = getelementptr inbounds %struct.fc_host_attrs, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %supported_speeds to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call96, ptr %supported_speeds, align 4
  %call99 = call zeroext i16 @bfa_fcport_get_maxfrsize(ptr noundef %bfa) #13
  %conv100 = zext i16 %call99 to i32
  %63 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %shost_data, align 8
  %maxframe_size = getelementptr inbounds %struct.fc_host_attrs, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %maxframe_size to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv100, ptr %maxframe_size, align 8
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 8
  %66 = ptrtoint ptr %dd_data to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %35, ptr %dd_data, align 4
  %67 = ptrtoint ptr %im_port75 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %im_port75, align 8
  %fc_vport104 = getelementptr inbounds %struct.bfad_im_port_s, ptr %68, i32 0, i32 9
  %69 = ptrtoint ptr %fc_vport104 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %fc_vport, ptr %fc_vport104, align 4
  br label %cleanup124

if.then117:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup124

if.else122:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup124

cleanup124:                                       ; preds = %if.else122, %if.then117, %if.end92, %if.then34.cleanup124_crit_edge, %for.end.cleanup124_crit_edge, %for.end.cleanup124_crit_edge180, %for.end.cleanup124_crit_edge181
  %retval.1 = phi i32 [ -95, %if.then117 ], [ 9, %if.else122 ], [ -76, %for.end.cleanup124_crit_edge ], [ -76, %for.end.cleanup124_crit_edge180 ], [ -76, %for.end.cleanup124_crit_edge181 ], [ -76, %if.then34.cleanup124_crit_edge ], [ 0, %if.end92 ]
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %port_cfg) #13
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_vport_disable(ptr nocapture noundef %fc_vport, i1 noundef zeroext %disable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 8
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %bfad1 = getelementptr inbounds %struct.bfad_port_s, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bfad1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bfad1, align 8
  %im_port = getelementptr inbounds %struct.bfad_port_s, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %im_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %im_port, align 8
  %shost = getelementptr inbounds %struct.bfad_im_port_s, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost, align 4
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 51
  %8 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost_data, align 8
  %port_name = getelementptr inbounds %struct.fc_host_attrs, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %port_name, align 8
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 20
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %bfa_fcs = getelementptr inbounds %struct.bfad_s, ptr %3, i32 0, i32 3
  %call7 = tail call ptr @bfa_fcs_vport_lookup(ptr noundef %bfa_fcs, i16 noundef zeroext 0, i64 noundef %11) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call4) #13
  %cmp9 = icmp eq ptr %call7, null
  br i1 %cmp9, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %disable, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call i32 @bfa_fcs_vport_stop(ptr noundef nonnull %call7) #13
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = tail call i32 @bfa_fcs_vport_start(ptr noundef nonnull %call7) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then11
  %.sink = phi i32 [ 2, %if.then11 ], [ 1, %if.else ]
  %12 = ptrtoint ptr %fc_vport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fc_vport, align 8
  %vport_last_state.i = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 1
  %14 = ptrtoint ptr %vport_last_state.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %vport_last_state.i, align 4
  store i32 %.sink, ptr %fc_vport, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -76, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_vport_delete(ptr nocapture noundef readonly %fc_vport) #0 align 64 {
entry:
  %fcomp = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 8
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %im_port1 = getelementptr inbounds %struct.bfad_port_s, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %im_port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %im_port1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fcomp) #13
  %6 = getelementptr inbounds i8, ptr %fcomp, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 52)
  %flags3 = getelementptr inbounds %struct.bfad_im_port_s, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags3, align 2
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @bfad_scsi_host_free(ptr noundef %5, ptr noundef %3) #13
  %list_entry = getelementptr inbounds %struct.bfad_vport_s, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_entry) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.bfad_vport_s, ptr %1, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %list_entry to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %17 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %list_entry, align 4
  %prev.i = getelementptr inbounds %struct.bfad_vport_s, ptr %1, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %im_port1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %im_port1, align 8
  %shost = getelementptr inbounds %struct.bfad_im_port_s, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %shost, align 4
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %22, i32 0, i32 51
  %23 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %shost_data, align 8
  %port_name = getelementptr inbounds %struct.fc_host_attrs, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %port_name, align 8
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 20
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %bfa_fcs = getelementptr inbounds %struct.bfad_s, ptr %5, i32 0, i32 3
  %call11 = tail call ptr @bfa_fcs_vport_lookup(ptr noundef %bfa_fcs, i16 noundef zeroext 0, i64 noundef %26) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call8) #13
  %cmp13 = icmp eq ptr %call11, null
  br i1 %cmp13, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %flags18 = getelementptr inbounds %struct.bfad_port_s, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags18, align 4
  %or = or i32 %28, 1
  store i32 %or, ptr %flags18, align 4
  %comp_del = getelementptr inbounds %struct.bfad_vport_s, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %comp_del to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %fcomp, ptr %comp_del, align 8
  %30 = ptrtoint ptr %fcomp to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %fcomp, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %fcomp, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #13
  %call29 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %fcs_vport34 = getelementptr inbounds %struct.bfad_vport_s, ptr %1, i32 0, i32 1
  %call35 = call i32 @bfa_fcs_vport_delete(ptr noundef %fcs_vport34) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call29) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 154, i32 %call35)
  %cmp37 = icmp eq i32 %call35, 154
  br i1 %cmp37, label %if.then39, label %if.end44

if.then39:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags18, align 4
  %and42 = and i32 %32, -2
  store i32 %and42, ptr %flags18, align 4
  %33 = ptrtoint ptr %comp_del to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %comp_del, align 8
  br label %cleanup

if.end44:                                         ; preds = %if.end16
  %34 = ptrtoint ptr %comp_del to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %comp_del, align 8
  call void @wait_for_completion(ptr noundef %35) #13
  call void @bfad_scsi_host_free(ptr noundef %5, ptr noundef %3) #13
  %list_entry46 = getelementptr inbounds %struct.bfad_vport_s, ptr %1, i32 0, i32 3
  %call.i.i77 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list_entry46) #13
  br i1 %call.i.i77, label %if.end.i.i80, label %if.end44.list_del.exit82_crit_edge

if.end44.list_del.exit82_crit_edge:               ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit82

if.end.i.i80:                                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i78 = getelementptr inbounds %struct.bfad_vport_s, ptr %1, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %prev.i.i78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i78, align 4
  %38 = ptrtoint ptr %list_entry46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %list_entry46, align 4
  %prev1.i.i.i79 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i79, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit82

list_del.exit82:                                  ; preds = %if.end.i.i80, %if.end44.list_del.exit82_crit_edge
  %42 = ptrtoint ptr %list_entry46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %list_entry46, align 4
  %prev.i81 = getelementptr inbounds %struct.bfad_vport_s, ptr %1, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %prev.i81 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i81, align 4
  call void @kfree(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit82, %if.then39, %if.end.cleanup_crit_edge, %list_del.exit
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -1, %if.then39 ], [ 0, %list_del.exit82 ], [ -76, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fcomp) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfad_im_bsg_request(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfad_im_bsg_timeout(ptr noundef) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @bfa_fcpim_path_tov_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfad_get_itnim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_lport_get_attr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcport_get_attr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_port_get_stats(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfad_hcb_comp(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_port_clear_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_port_disable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_port_enable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_fcs_vport_lookup(ptr noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_lport_set_symname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfad_vport_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcs_vport_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfad_im_supported_speeds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @bfa_fcport_get_maxfrsize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcs_vport_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfad_scsi_host_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_fcs_vport_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_serial_num_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %serial_num = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hostdata, align 8
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %serial_num) #13
  %ioc = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 2, i32 3
  %5 = call ptr @memset(ptr %serial_num, i32 255, i32 12)
  call void @bfa_ioc_get_adapter_serial_num(ptr noundef %ioc, ptr noundef nonnull %serial_num) #13
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef nonnull %serial_num)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %serial_num) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_get_adapter_serial_num(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_model_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %model = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hostdata, align 8
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %model) #13
  %ioc = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 2, i32 3
  %5 = call ptr @memset(ptr %model, i32 255, i32 16)
  call void @bfa_ioc_get_adapter_model(ptr noundef %ioc, ptr noundef nonnull %model) #13
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef nonnull %model)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %model) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_get_adapter_model(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_model_desc_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %model = alloca [16 x i8], align 1
  %model_descr = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hostdata, align 8
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %model) #13
  %5 = call ptr @memset(ptr %model, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %model_descr) #13
  %6 = call ptr @memset(ptr %model_descr, i32 255, i32 128)
  %ioc = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 2, i32 3
  call void @bfa_ioc_get_adapter_model(ptr noundef %ioc, ptr noundef nonnull %model) #13
  %attr4 = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 2, i32 3, i32 21
  %7 = ptrtoint ptr %attr4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %attr4, align 8
  %adapter_prop = getelementptr inbounds %struct.bfi_ioc_attr_s, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %adapter_prop to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %adapter_prop, align 1
  %and = lshr i32 %10, 8
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %model, ptr noundef nonnull dereferenceable(11) @.str.5, i32 11) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %11 = call ptr @memcpy(ptr %model_descr, ptr @.str.6, i32 45)
  br label %if.end208

if.else:                                          ; preds = %entry
  %bcmp229 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %model, ptr noundef nonnull dereferenceable(11) @.str.7, i32 11) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp229)
  %tobool10.not = icmp eq i32 %bcmp229, 0
  br i1 %tobool10.not, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %12 = call ptr @memcpy(ptr %model_descr, ptr @.str.8, i32 45)
  br label %if.end208

if.else14:                                        ; preds = %if.else
  %bcmp230 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %model, ptr noundef nonnull dereferenceable(11) @.str.9, i32 11) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp230)
  %tobool17.not = icmp eq i32 %bcmp230, 0
  br i1 %tobool17.not, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #15
  %13 = call ptr @memcpy(ptr %model_descr, ptr @.str.10, i32 52)
  br label %if.end208

if.else21:                                        ; preds = %if.else14
  %bcmp231 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %model, ptr noundef nonnull dereferenceable(11) @.str.11, i32 11) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp231)
  %tobool24.not = icmp eq i32 %bcmp231, 0
  br i1 %tobool24.not, label %if.then25, label %if.else28

if.then25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #15
  %14 = call ptr @memcpy(ptr %model_descr, ptr @.str.12, i32 52)
  br label %if.end208

if.else28:                                        ; preds = %if.else21
  %bcmp232 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %model, ptr noundef nonnull dereferenceable(12) @.str.13, i32 12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp232)
  %tobool31.not = icmp eq i32 %bcmp232, 0
  br i1 %tobool31.not, label %if.then32, label %if.else35

if.then32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #15
  %15 = call ptr @memcpy(ptr %model_descr, ptr @.str.14, i32 40)
  br label %if.end208

if.else35:                                        ; preds = %if.else28
  %bcmp233 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %model, ptr noundef nonnull dereferenceable(12) @.str.15, i32 12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp233)
  %tobool38.not = icmp eq i32 %bcmp233, 0
  br i1 %tobool38.not, label %if.then39, label %if.else42

if.then39:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #15
  %16 = call ptr @memcpy(ptr %model_descr, ptr @.str.16, i32 38)
  br label %if.end208

if.else42:                                        ; preds = %if.else35
  %bcmp234 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %model, ptr noundef nonnull dereferenceable(12) @.str.17, i32 12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp234)
  %tobool45.not = icmp eq i32 %bcmp234, 0
  br i1 %tobool45.not, label %if.then46, label %if.else49

if.then46:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #15
  %17 = call ptr @memcpy(ptr %model_descr, ptr @.str.18, i32 49)
  br label %if.end208

if.else49:                                        ; preds = %if.else42
  %bcmp235 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %model, ptr noundef nonnull dereferenceable(11) @.str.19, i32 11) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp235)
  %tobool52.not = icmp eq i32 %bcmp235, 0
  br i1 %tobool52.not, label %if.then53, label %if.else56

if.then53:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #15
  %18 = call ptr @memcpy(ptr %model_descr, ptr @.str.20, i32 47)
  br label %if.end208

if.else56:                                        ; preds = %if.else49
  %bcmp236 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %model, ptr noundef nonnull dereferenceable(11) @.str.21, i32 11) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp236)
  %tobool59.not = icmp eq i32 %bcmp236, 0
  br i1 %tobool59.not, label %if.then60, label %if.else63

if.then60:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #15
  %19 = call ptr @memcpy(ptr %model_descr, ptr @.str.22, i32 47)
  br label %if.end208

if.else63:                                        ; preds = %if.else56
  %bcmp237 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %model, ptr noundef nonnull dereferenceable(11) @.str.23, i32 11) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp237)
  %tobool66.not = icmp eq i32 %bcmp237, 0
  br i1 %tobool66.not, label %if.then67, label %if.else70

if.then67:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #15
  %20 = call ptr @memcpy(ptr %model_descr, ptr @.str.24, i32 54)
  br label %if.end208

if.else70:                                        ; preds = %if.else63
  %bcmp238 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %model, ptr noundef nonnull dereferenceable(11) @.str.25, i32 11) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp238)
  %tobool73.not = icmp eq i32 %bcmp238, 0
  br i1 %tobool73.not, label %if.then74, label %if.else77

if.then74:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #15
  %21 = call ptr @memcpy(ptr %model_descr, ptr @.str.26, i32 54)
  br label %if.end208

if.else77:                                        ; preds = %if.else70
  %bcmp239 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %model, ptr noundef nonnull dereferenceable(11) @.str.27, i32 11) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp239)
  %tobool80.not = icmp eq i32 %bcmp239, 0
  br i1 %tobool80.not, label %if.then81, label %if.else84

if.then81:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #15
  %22 = call ptr @memcpy(ptr %model_descr, ptr @.str.28, i32 57)
  br label %if.end208

if.else84:                                        ; preds = %if.else77
  %bcmp240 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %model, ptr noundef nonnull dereferenceable(12) @.str.29, i32 12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp240)
  %tobool87.not = icmp eq i32 %bcmp240, 0
  br i1 %tobool87.not, label %if.then88, label %if.else91

if.then88:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #15
  %23 = call ptr @memcpy(ptr %model_descr, ptr @.str.30, i32 60)
  br label %if.end208

if.else91:                                        ; preds = %if.else84
  %call93 = call ptr @strstr(ptr noundef nonnull %model, ptr noundef nonnull @.str.31)
  %tobool94.not = icmp eq ptr %call93, null
  br i1 %tobool94.not, label %if.else155, label %if.then95

if.then95:                                        ; preds = %if.else91
  %trunc = trunc i32 %and to i8
  %24 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %trunc, label %if.then95.if.end208_crit_edge [
    i8 1, label %land.lhs.true
    i8 2, label %land.lhs.true124
  ]

if.then95.if.end208_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

land.lhs.true:                                    ; preds = %if.then95
  %call98 = call i32 @bfa_ioc_get_type(ptr noundef %ioc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call98)
  %cmp99 = icmp eq i32 %call98, 2
  br i1 %cmp99, label %land.lhs.true.if.then104_crit_edge, label %lor.lhs.false

land.lhs.true.if.then104_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then104

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call102 = call i32 @bfa_ioc_get_type(ptr noundef %ioc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call102)
  %cmp103 = icmp eq i32 %call102, 3
  br i1 %cmp103, label %lor.lhs.false.if.then104_crit_edge, label %land.lhs.true109.critedge

lor.lhs.false.if.then104_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then104

if.then104:                                       ; preds = %lor.lhs.false.if.then104_crit_edge, %land.lhs.true.if.then104_crit_edge
  %25 = call ptr @memcpy(ptr %model_descr, ptr @.str.14, i32 40)
  br label %if.end208

land.lhs.true109.critedge:                        ; preds = %lor.lhs.false
  %call112 = call i32 @bfa_ioc_get_type(ptr noundef %ioc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call112)
  %cmp113 = icmp eq i32 %call112, 2
  br i1 %cmp113, label %land.lhs.true109.critedge.if.end208_crit_edge, label %lor.lhs.false114

land.lhs.true109.critedge.if.end208_crit_edge:    ; preds = %land.lhs.true109.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

lor.lhs.false114:                                 ; preds = %land.lhs.true109.critedge
  %call117 = call i32 @bfa_ioc_get_type(ptr noundef %ioc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call117)
  %cmp118 = icmp eq i32 %call117, 3
  br i1 %cmp118, label %lor.lhs.false114.if.end208_crit_edge, label %if.then119

lor.lhs.false114.if.end208_crit_edge:             ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

if.then119:                                       ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #15
  %26 = call ptr @memcpy(ptr %model_descr, ptr @.str.32, i32 48)
  br label %if.end208

land.lhs.true124:                                 ; preds = %if.then95
  %call127 = call i32 @bfa_ioc_get_type(ptr noundef %ioc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call127)
  %cmp128 = icmp eq i32 %call127, 2
  br i1 %cmp128, label %land.lhs.true124.if.then134_crit_edge, label %lor.lhs.false129

land.lhs.true124.if.then134_crit_edge:            ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then134

lor.lhs.false129:                                 ; preds = %land.lhs.true124
  %call132 = call i32 @bfa_ioc_get_type(ptr noundef %ioc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call132)
  %cmp133 = icmp eq i32 %call132, 3
  br i1 %cmp133, label %lor.lhs.false129.if.then134_crit_edge, label %land.lhs.true139.critedge

lor.lhs.false129.if.then134_crit_edge:            ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then134

if.then134:                                       ; preds = %lor.lhs.false129.if.then134_crit_edge, %land.lhs.true124.if.then134_crit_edge
  %27 = call ptr @memcpy(ptr %model_descr, ptr @.str.16, i32 38)
  br label %if.end208

land.lhs.true139.critedge:                        ; preds = %lor.lhs.false129
  %call142 = call i32 @bfa_ioc_get_type(ptr noundef %ioc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call142)
  %cmp143 = icmp eq i32 %call142, 2
  br i1 %cmp143, label %land.lhs.true139.critedge.if.end208_crit_edge, label %lor.lhs.false144

land.lhs.true139.critedge.if.end208_crit_edge:    ; preds = %land.lhs.true139.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

lor.lhs.false144:                                 ; preds = %land.lhs.true139.critedge
  %call147 = call i32 @bfa_ioc_get_type(ptr noundef %ioc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call147)
  %cmp148 = icmp eq i32 %call147, 3
  br i1 %cmp148, label %lor.lhs.false144.if.end208_crit_edge, label %if.then149

lor.lhs.false144.if.end208_crit_edge:             ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

if.then149:                                       ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #15
  %28 = call ptr @memcpy(ptr %model_descr, ptr @.str.33, i32 46)
  br label %if.end208

if.else155:                                       ; preds = %if.else91
  %bcmp241 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %model, ptr noundef nonnull dereferenceable(12) @.str.34, i32 12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp241)
  %tobool158.not = icmp eq i32 %bcmp241, 0
  br i1 %tobool158.not, label %if.then159, label %if.else191

if.then159:                                       ; preds = %if.else155
  %trunc242 = trunc i32 %and to i8
  %29 = zext i8 %trunc242 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %trunc242, label %if.then159.if.end208_crit_edge [
    i8 1, label %land.lhs.true161
    i8 2, label %land.lhs.true176
  ]

if.then159.if.end208_crit_edge:                   ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

land.lhs.true161:                                 ; preds = %if.then159
  %call164 = call i32 @bfa_ioc_get_type(ptr noundef %ioc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call164)
  %cmp165 = icmp eq i32 %call164, 2
  br i1 %cmp165, label %land.lhs.true161.if.end208_crit_edge, label %lor.lhs.false166

land.lhs.true161.if.end208_crit_edge:             ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

lor.lhs.false166:                                 ; preds = %land.lhs.true161
  %call169 = call i32 @bfa_ioc_get_type(ptr noundef %ioc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call169)
  %cmp170 = icmp eq i32 %call169, 3
  br i1 %cmp170, label %lor.lhs.false166.if.end208_crit_edge, label %if.then171

lor.lhs.false166.if.end208_crit_edge:             ; preds = %lor.lhs.false166
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

if.then171:                                       ; preds = %lor.lhs.false166
  call void @__sanitizer_cov_trace_pc() #15
  %30 = call ptr @memcpy(ptr %model_descr, ptr @.str.35, i32 56)
  br label %if.end208

land.lhs.true176:                                 ; preds = %if.then159
  %call179 = call i32 @bfa_ioc_get_type(ptr noundef %ioc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call179)
  %cmp180 = icmp eq i32 %call179, 2
  br i1 %cmp180, label %land.lhs.true176.if.end208_crit_edge, label %lor.lhs.false181

land.lhs.true176.if.end208_crit_edge:             ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

lor.lhs.false181:                                 ; preds = %land.lhs.true176
  %call184 = call i32 @bfa_ioc_get_type(ptr noundef %ioc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call184)
  %cmp185 = icmp eq i32 %call184, 3
  br i1 %cmp185, label %lor.lhs.false181.if.end208_crit_edge, label %if.then186

lor.lhs.false181.if.end208_crit_edge:             ; preds = %lor.lhs.false181
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

if.then186:                                       ; preds = %lor.lhs.false181
  call void @__sanitizer_cov_trace_pc() #15
  %31 = call ptr @memcpy(ptr %model_descr, ptr @.str.36, i32 54)
  br label %if.end208

if.else191:                                       ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #15
  %32 = call ptr @memcpy(ptr %model_descr, ptr @.str.37, i32 14)
  br label %if.end208

if.end208:                                        ; preds = %if.else191, %if.then186, %lor.lhs.false181.if.end208_crit_edge, %land.lhs.true176.if.end208_crit_edge, %if.then171, %lor.lhs.false166.if.end208_crit_edge, %land.lhs.true161.if.end208_crit_edge, %if.then159.if.end208_crit_edge, %if.then149, %lor.lhs.false144.if.end208_crit_edge, %land.lhs.true139.critedge.if.end208_crit_edge, %if.then134, %if.then119, %lor.lhs.false114.if.end208_crit_edge, %land.lhs.true109.critedge.if.end208_crit_edge, %if.then104, %if.then95.if.end208_crit_edge, %if.then88, %if.then81, %if.then74, %if.then67, %if.then60, %if.then53, %if.then46, %if.then39, %if.then32, %if.then25, %if.then18, %if.then11, %if.then
  %call210 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef nonnull %model_descr)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %model_descr) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %model) #13
  ret i32 %call210
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioc_get_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_node_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hostdata, align 8
  %2 = inttoptr i32 %1 to ptr
  %port1 = getelementptr inbounds %struct.bfad_im_port_s, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port1, align 4
  %fcs_port = getelementptr inbounds %struct.bfad_port_s, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %fcs_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fcs_port, align 4
  %nwwn2 = getelementptr inbounds %struct.bfa_fcs_lport_s, ptr %6, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %nwwn2 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %nwwn2, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.39, i64 noundef %8)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_symbolic_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %port_attr = alloca %struct.bfa_lport_attr_s, align 8
  %symname = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hostdata, align 8
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 352, ptr nonnull %port_attr) #13
  %5 = call ptr @memset(ptr %port_attr, i32 255, i32 352)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %symname) #13
  %6 = call ptr @memset(ptr %symname, i32 255, i32 128)
  %bport = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 3, i32 8, i32 3
  call void @bfa_fcs_lport_get_attr(ptr noundef %bport, ptr noundef nonnull %port_attr) #13
  %sym_name = getelementptr inbounds %struct.bfa_lport_attr_s, ptr %port_attr, i32 0, i32 2, i32 2
  %call = call i32 @strlcpy(ptr noundef nonnull %symname, ptr noundef %sym_name, i32 noundef 128) #13
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef nonnull %symname)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %symname) #13
  call void @llvm.lifetime.end.p0(i64 352, ptr nonnull %port_attr) #13
  ret i32 %call5
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_hw_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %hw_ver = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hostdata, align 8
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hw_ver) #13
  %5 = call ptr @memset(ptr %hw_ver, i32 255, i32 64)
  %ioc = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 2, i32 3
  call void @bfa_ioc_get_pci_chip_rev(ptr noundef %ioc, ptr noundef nonnull %hw_ver) #13
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef nonnull %hw_ver)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hw_ver) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_get_pci_chip_rev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_drv_version_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.43)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_optionrom_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %optrom_ver = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hostdata, align 8
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %optrom_ver) #13
  %5 = call ptr @memset(ptr %optrom_ver, i32 255, i32 64)
  %ioc = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 2, i32 3
  call void @bfa_ioc_get_adapter_optrom_ver(ptr noundef %ioc, ptr noundef nonnull %optrom_ver) #13
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef nonnull %optrom_ver)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %optrom_ver) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_get_adapter_optrom_ver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_fw_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %fw_ver = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hostdata, align 8
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fw_ver) #13
  %5 = call ptr @memset(ptr %fw_ver, i32 255, i32 64)
  %ioc = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 2, i32 3
  call void @bfa_ioc_get_adapter_fw_ver(ptr noundef %ioc, ptr noundef nonnull %fw_ver) #13
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef nonnull %fw_ver)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fw_ver) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_get_adapter_fw_ver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_num_of_ports_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hostdata, align 8
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %attr2 = getelementptr inbounds %struct.bfad_s, ptr %4, i32 0, i32 2, i32 3, i32 21
  %5 = ptrtoint ptr %attr2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attr2, align 8
  %adapter_prop = getelementptr inbounds %struct.bfi_ioc_attr_s, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %adapter_prop to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %adapter_prop, align 1
  %and = lshr i32 %8, 8
  %shr = and i32 %and, 255
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.47, i32 noundef %shr)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_drv_name_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.49)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfad_im_num_of_discovered_ports_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %nrports = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hostdata, align 8
  %2 = inttoptr i32 %1 to ptr
  %port1 = getelementptr inbounds %struct.bfad_im_port_s, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port1, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nrports) #13
  %7 = ptrtoint ptr %nrports to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2048, ptr %nrports, align 4
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 2848, i32 noundef 3) #18
  %cmp = icmp eq ptr %call1.i.i.i.i, null
  br i1 %cmp, label %if.then, label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 5071450569674328576, ptr %buf, align 1
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bfad_lock = getelementptr inbounds %struct.bfad_s, ptr %6, i32 0, i32 20
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bfad_lock) #13
  %fcs_port = getelementptr inbounds %struct.bfad_port_s, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %fcs_port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fcs_port, align 4
  call void @bfa_fcs_lport_get_rport_quals(ptr noundef %10, ptr noundef nonnull %call1.i.i.i.i, ptr noundef nonnull %nrports) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bfad_lock, i32 noundef %call8) #13
  call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #13
  %11 = ptrtoint ptr %nrports to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nrports, align 4
  %call12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.47, i32 noundef %12)
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %if.then
  %retval.0 = phi i32 [ 7, %if.then ], [ %call12, %do.body4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrports) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_fcs_lport_get_rport_quals(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !97, !99, !100, !102, !103, !105, !106, !108, !110, !111, !113, !114, !116, !117, !119, !121, !122, !124, !126, !127, !129, !131}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @bfad_im_fc_function_template, !1, !"bfad_im_fc_function_template", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 593, i32 29}
!2 = !{ptr @bfad_im_vport_fc_function_template, !3, !"bfad_im_vport_fc_function_template", i1 false, i1 false}
!3 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 650, i32 29}
!4 = !{ptr @bfad_im_host_groups, !5, !"bfad_im_host_groups", i1 false, i1 false}
!5 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 979, i32 31}
!6 = !{ptr @bfad_im_vport_groups, !7, !"bfad_im_vport_groups", i1 false, i1 false}
!7 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 1004, i32 31}
!8 = !{ptr @init_completion.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../include/linux/completion.h", i32 87, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @bfad_im_host_attr_group, !12, !"bfad_im_host_attr_group", i1 false, i1 false}
!12 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 975, i32 37}
!13 = !{ptr @bfad_im_host_attrs, !14, !"bfad_im_host_attrs", i1 false, i1 false}
!14 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 959, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 937, i32 17}
!17 = !{ptr @dev_attr_serial_number, !16, !"dev_attr_serial_number", i1 false, i1 false}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 714, i32 34}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 939, i32 17}
!22 = !{ptr @dev_attr_model, !21, !"dev_attr_model", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 940, i32 17}
!25 = !{ptr @dev_attr_model_description, !24, !"dev_attr_model_description", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 745, i32 21}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 747, i32 4}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 748, i32 26}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 750, i32 4}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 751, i32 26}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 753, i32 4}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 754, i32 26}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 756, i32 4}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 757, i32 26}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 759, i32 4}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 760, i32 26}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 762, i32 4}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 763, i32 26}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 765, i32 4}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 766, i32 26}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 768, i32 4}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 769, i32 26}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 771, i32 4}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 772, i32 26}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 774, i32 4}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 775, i32 26}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 777, i32 4}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 778, i32 26}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 780, i32 4}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 781, i32 26}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 783, i32 4}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 784, i32 25}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 790, i32 5}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 796, i32 5}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 797, i32 28}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 800, i32 5}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 803, i32 5}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 806, i32 4}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 942, i32 17}
!94 = !{ptr @dev_attr_node_name, !93, !"dev_attr_node_name", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 822, i32 34}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 943, i32 17}
!99 = !{ptr @dev_attr_symbolic_name, !98, !"dev_attr_symbolic_name", i1 false, i1 false}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 945, i32 17}
!102 = !{ptr @dev_attr_hardware_version, !101, !"dev_attr_hardware_version", i1 false, i1 false}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 947, i32 17}
!105 = !{ptr @dev_attr_driver_version, !104, !"dev_attr_driver_version", i1 false, i1 false}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 860, i32 42}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 949, i32 17}
!110 = !{ptr @dev_attr_option_rom_version, !109, !"dev_attr_option_rom_version", i1 false, i1 false}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 951, i32 17}
!113 = !{ptr @dev_attr_firmware_version, !112, !"dev_attr_firmware_version", i1 false, i1 false}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 953, i32 17}
!116 = !{ptr @dev_attr_number_of_ports, !115, !"dev_attr_number_of_ports", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 900, i32 34}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 955, i32 17}
!121 = !{ptr @dev_attr_driver_name, !120, !"dev_attr_driver_name", i1 false, i1 false}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 908, i32 42}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 956, i32 17}
!126 = !{ptr @dev_attr_number_of_discovered_ports, !125, !"dev_attr_number_of_discovered_ports", i1 false, i1 false}
!127 = distinct !{null, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 927, i32 35}
!129 = !{ptr @bfad_im_vport_attr_group, !130, !"bfad_im_vport_attr_group", i1 false, i1 false}
!130 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 1000, i32 37}
!131 = !{ptr @bfad_im_vport_attrs, !132, !"bfad_im_vport_attrs", i1 false, i1 false}
!132 = !{!"../drivers/scsi/bfa/bfad_attr.c", i32 984, i32 26}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
